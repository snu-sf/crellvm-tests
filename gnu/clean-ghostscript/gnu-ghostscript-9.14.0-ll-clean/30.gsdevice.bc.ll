; ModuleID = './gsdevice.bc'
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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, {}*, i8* }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
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
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gs_parsed_file_name_s = type { %struct.gs_memory_s*, %struct.gx_io_device_s*, i8*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"gx_device_finalize(icc_profile)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"gx_device_finalize\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gx_device\00", align 1
@st_device = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1728, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"gx_device_forward\00", align 1
@st_device_forward = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1736, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_forward_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_forward_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"gx_device_null\00", align 1
@st_device_null = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1736, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_forward_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_forward_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@gs_dev_defaults = external constant i8*, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"gs_copydevice(stype)\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"gs_copydevice(device)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"gs_setdevice_no_init\00", align 1
@gs_null_device = external constant %struct.gx_device_null_s, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"gx_device_retain\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"gx_set_device_only\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%stdout\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%pipe\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"gx_device_delete_output_file(pfname)\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%stdout%\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"gx_device_open_output_file(pfname)\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%pipe%\00", align 1
@gp_fmode_wb = external constant [0 x i8], align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"**** Could not open the file %s .\0A\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@.str.18 = private unnamed_addr constant [5 x i8] c" #+-\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"diuoxX\00", align 1

; Function Attrs: nounwind uwtable
define void @gx_device_finalize(%struct.gs_memory_s* %cmem, i8* %vptr) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_s*
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !5
  %cmp = icmp ne %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %icc_struct1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 39
  %7 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct1, align 8, !tbaa !5
  %tobool = icmp ne %struct.cmm_dev_profile_s* %7, null
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
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %icc_struct5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 39
  %9 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct5, align 8, !tbaa !5
  %rc = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %9, i32 0, i32 14
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %10 = load i64, i64* %ref_count, align 8, !tbaa !19
  %add = add nsw i64 %10, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !19
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %icc_struct8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 39
  %12 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct8, align 8, !tbaa !5
  %rc9 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %12, i32 0, i32 14
  %ref_count10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 0
  %13 = load i64, i64* %ref_count10, align 8, !tbaa !19
  %tobool11 = icmp ne i64 %13, 0
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
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %icc_struct17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 39
  %15 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct17, align 8, !tbaa !5
  %rc18 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %15, i32 0, i32 14
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !21
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %icc_struct19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 39
  %18 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct19, align 8, !tbaa !5
  %rc20 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %18, i32 0, i32 14
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !22
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %icc_struct21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 39
  %21 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct21, align 8, !tbaa !5
  %22 = bitcast %struct.cmm_dev_profile_s* %21 to i8*
  call void %16(%struct.gs_memory_s* %19, i8* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0)) #5
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end.16
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %icc_struct24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 39
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %icc_struct24, align 8, !tbaa !5
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
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %finalize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 6
  %25 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize, align 8, !tbaa !23
  %tobool32 = icmp ne void (%struct.gx_device_s*)* %25, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %finalize34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 6
  %27 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize34, align 8, !tbaa !23
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  call void %27(%struct.gx_device_s* %28) #5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call i32 @gs_closedevice(%struct.gx_device_s* %29) #5
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %stype_is_dynamic = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 5
  %31 = load i32, i32* %stype_is_dynamic, align 4, !tbaa !24
  %tobool36 = icmp ne i32 %31, 0
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.35
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !25
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !26
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 4
  %36 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !29
  %37 = bitcast %struct.gs_memory_struct_type_s* %36 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %34, i8* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.35
  %38 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_closedevice(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !30
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 9
  %2 = load i32, i32* %is_open, align 4, !tbaa !31
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  %4 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !32
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct.gx_device_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !30
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 9
  store i32 0, i32* %is_open1, align 4, !tbaa !31
  %7 = load i32, i32* %code, align 4, !tbaa !30
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %9 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare void @gs_free_const_object(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gx_device_free_local(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 3
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to i8*
  call void @gx_device_finalize(%struct.gs_memory_s* %1, i8* %3) #5
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_forward_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !30
  store i32 %index, i32* %index.addr, align 4, !tbaa !30
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !30
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !33
  %call = call %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s* %5) #5
  %6 = bitcast %struct.gx_device_s* %call to i8*
  %7 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %7, i32 0, i32 0
  store i8* %6, i8** %ptr, align 8, !tbaa !35
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default
  %8 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %9
}

; Function Attrs: nounwind uwtable
define internal void @device_forward_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !30
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %3, i32 0, i32 43
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !33
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s* %4, %struct.gc_state_s* %5) #5
  %6 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %6, i32 0, i32 43
  store %struct.gx_device_s* %call, %struct.gx_device_s** %target1, align 8, !tbaa !33
  %7 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca %struct.gx_device_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %cmp1 = icmp eq %struct.gs_memory_s* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.gx_device_s* null, %struct.gx_device_s** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %3, %struct.gx_device_s** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %retval
  ret %struct.gx_device_s* %4
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s* %dev, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gx_device_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %cmp1 = icmp eq %struct.gs_memory_s* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %3, %struct.gx_device_s** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gc_state_s* %4 to %struct.gc_procs_common_s**
  %6 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %5, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %6, i32 0, i32 0
  %7 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !37
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %7(i8* %9, %struct.gc_state_s* %10) #5
  %11 = bitcast i8* %call to %struct.gx_device_s*
  store %struct.gx_device_s* %11, %struct.gx_device_s** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %retval
  ret %struct.gx_device_s* %12
}

; Function Attrs: nounwind uwtable
define void @gx_device_set_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %static_procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 1
  %1 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %static_procs, align 8, !tbaa !39
  %cmp = icmp ne %struct.gx_device_procs_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %static_procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 1
  %4 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %static_procs1, align 8, !tbaa !39
  %5 = bitcast %struct.gx_device_procs_s* %procs to i8*
  %6 = bitcast %struct.gx_device_procs_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 584, i32 8, i1 false), !tbaa.struct !40
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %static_procs2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 1
  store %struct.gx_device_procs_s* null, %struct.gx_device_procs_s** %static_procs2, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gs_flushpage(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %1) #5
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %sync_output = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 2
  %3 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %sync_output, align 8, !tbaa !41
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call1 = call i32 %3(%struct.gx_device_s* %4) #5
  %5 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 78
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !42
  ret %struct.gx_device_s* %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_copypage(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_output_page(%struct.gs_state_s* %0, i32 1, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_output_page(%struct.gs_state_s* %pgs, i32 %num_copies, i32 %flush) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !30
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !30
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %1) #5
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %2 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_gsave(%struct.gs_state_s* %4) #5
  store i32 %call1, i32* %code, align 4, !tbaa !30
  %5 = load i32, i32* %code, align 4, !tbaa !30
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_newpath(%struct.gs_state_s* %7) #5
  store i32 %call2, i32* %code, align 4, !tbaa !30
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call4 = call i32 @gs_moveto(%struct.gs_state_s* %8, double 0.000000e+00, double 0.000000e+00) #5
  store i32 %call4, i32* %code, align 4, !tbaa !30
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.13, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call7 = call i32 @gs_setgray(%struct.gs_state_s* %9, double 0.000000e+00) #5
  %cmp8 = icmp slt i32 %call7, 0
  %conv = zext i1 %cmp8 to i32
  store i32 %conv, i32* %code, align 4, !tbaa !30
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call10 = call i32 @gs_fill(%struct.gs_state_s* %10) #5
  store i32 %call10, i32* %code, align 4, !tbaa !30
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false, %if.end
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call14 = call i32 @gs_grestore(%struct.gs_state_s* %11) #5
  %12 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %lor.lhs.false.9
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call16 = call i32 @gs_grestore(%struct.gs_state_s* %13) #5
  store i32 %call16, i32* %code, align 4, !tbaa !30
  %14 = load i32, i32* %code, align 4, !tbaa !30
  %cmp17 = icmp slt i32 %14, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  %15 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.15
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %IgnoreNumCopies = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 30
  %17 = load i32, i32* %IgnoreNumCopies, align 4, !tbaa !57
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.20
  store i32 1, i32* %num_copies.addr, align 4, !tbaa !30
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.20
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %output_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 3
  %19 = load i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32)** %output_page, align 8, !tbaa !58
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %21 = load i32, i32* %num_copies.addr, align 4, !tbaa !30
  %22 = load i32, i32* %flush.addr, align 4, !tbaa !30
  %call23 = call i32 %19(%struct.gx_device_s* %20, i32 %21, i32 %22) #5
  store i32 %call23, i32* %code, align 4, !tbaa !30
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  %23 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.22
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs28, i32 0, i32 67
  %25 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !59
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call29 = call i32 %25(%struct.gx_device_s* %26, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call29, i32* %code, align 4, !tbaa !30
  %27 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %graydetection = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %27, i32 0, i32 6
  %28 = load i32, i32* %graydetection, align 4, !tbaa !60
  %tobool30 = icmp ne i32 %28, 0
  br i1 %tobool30, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.27
  %29 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %29, i32 0, i32 7
  %30 = load i32, i32* %pageneutralcolor, align 4, !tbaa !61
  %tobool31 = icmp ne i32 %30, 0
  br i1 %tobool31, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true
  %31 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %pageneutralcolor33 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %31, i32 0, i32 7
  store i32 1, i32* %pageneutralcolor33, align 4, !tbaa !61
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_link_cache = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %32, i32 0, i32 36
  %33 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_link_cache, align 8, !tbaa !62
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  call void @gsicc_mcm_begin_monitor(%struct.gsicc_link_cache_s* %33, %struct.gx_device_s* %34) #5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true, %if.end.27
  %35 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.26, %if.then.19, %if.then.13, %if.then
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare i32 @gs_gsave(%struct.gs_state_s*) #2

declare i32 @gs_newpath(%struct.gs_state_s*) #2

declare i32 @gs_moveto(%struct.gs_state_s*, double, double) #2

declare i32 @gs_setgray(%struct.gs_state_s*, double) #2

declare i32 @gs_fill(%struct.gs_state_s*) #2

declare i32 @gs_grestore(%struct.gs_state_s*) #2

declare void @gsicc_mcm_begin_monitor(%struct.gsicc_link_cache_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_finish_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !30
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !30
  %0 = load i32, i32* %num_copies.addr, align 4, !tbaa !30
  %conv = sext i32 %0 to i64
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 26
  %2 = load i64, i64* %PageCount, align 8, !tbaa !63
  %add = add nsw i64 %2, %conv
  store i64 %add, i64* %PageCount, align 8, !tbaa !63
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_copyscanlines(%struct.gx_device_s* %dev, i32 %start_y, i8* %data, i32 %size, i32* %plines_copied, i32* %pbytes_copied) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %start_y.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %plines_copied.addr = alloca i32*, align 8
  %pbytes_copied.addr = alloca i32*, align 8
  %line_size = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %dest = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %start_y, i32* %start_y.addr, align 4, !tbaa !30
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !30
  store i32* %plines_copied, i32** %plines_copied.addr, align 8, !tbaa !1
  store i32* %pbytes_copied, i32** %pbytes_copied.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %1, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !30
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !30
  %4 = load i32, i32* %line_size, align 4, !tbaa !30
  %div = udiv i32 %3, %4
  store i32 %div, i32* %count, align 4, !tbaa !30
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %7, i8** %dest, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !30
  %9 = load i32, i32* %count, align 4, !tbaa !30
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 12
  %12 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits, align 8, !tbaa !64
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load i32, i32* %start_y.addr, align 4, !tbaa !30
  %15 = load i32, i32* %i, align 4, !tbaa !30
  %add = add i32 %14, %15
  %16 = load i8*, i8** %dest, align 8, !tbaa !1
  %call1 = call i32 %12(%struct.gx_device_s* %13, i32 %add, i8* %16, i8** null) #5
  store i32 %call1, i32* %code, align 4, !tbaa !30
  %17 = load i32, i32* %code, align 4, !tbaa !30
  %cmp2 = icmp slt i32 %17, 0
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %start_y.addr, align 4, !tbaa !30
  %19 = load i32, i32* %i, align 4, !tbaa !30
  %add3 = add i32 %18, %19
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 14
  %21 = load i32, i32* %height, align 4, !tbaa !65
  %cmp4 = icmp eq i32 %add3, %21
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %22 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.end, %if.then.5
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.13 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i32, i32* %i, align 4, !tbaa !30
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !30
  %25 = load i32, i32* %line_size, align 4, !tbaa !30
  %26 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %27 = load i32*, i32** %plines_copied.addr, align 8, !tbaa !1
  %cmp7 = icmp ne i32* %27, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  %28 = load i32, i32* %i, align 4, !tbaa !30
  %29 = load i32*, i32** %plines_copied.addr, align 8, !tbaa !1
  store i32 %28, i32* %29, align 4, !tbaa !30
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  %30 = load i32*, i32** %pbytes_copied.addr, align 8, !tbaa !1
  %cmp10 = icmp ne i32* %30, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %31 = load i32, i32* %i, align 4, !tbaa !30
  %32 = load i32, i32* %line_size, align 4, !tbaa !30
  %mul = mul i32 %31, %32
  %33 = load i32*, i32** %pbytes_copied.addr, align 8, !tbaa !1
  store i32 %mul, i32* %33, align 4, !tbaa !30
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.13

cleanup.13:                                       ; preds = %if.end.12, %cleanup
  %34 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @gx_device_raster(%struct.gx_device_s* %dev, i32 %pad) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pad.addr = alloca i32, align 4
  %bits = alloca i64, align 8
  %raster = alloca i64, align 8
  %l2align = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %pad, i32* %pad.addr, align 4, !tbaa !30
  %0 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !66
  %conv = sext i32 %2 to i64
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %4 = load i16, i16* %depth, align 2, !tbaa !67
  %conv1 = zext i16 %4 to i64
  %mul = mul i64 %conv, %conv1
  store i64 %mul, i64* %bits, align 8, !tbaa !68
  %5 = bitcast i64* %raster to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %l2align to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 17
  %8 = load i32, i32* %is_planar, align 4, !tbaa !69
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 1
  %10 = load i32, i32* %num_components, align 4, !tbaa !70
  %conv3 = sext i32 %10 to i64
  %11 = load i64, i64* %bits, align 8, !tbaa !68
  %div = udiv i64 %11, %conv3
  store i64 %div, i64* %bits, align 8, !tbaa !68
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i64, i64* %bits, align 8, !tbaa !68
  %add = add i64 %12, 7
  %shr = lshr i64 %add, 3
  %conv4 = trunc i64 %shr to i32
  %conv5 = zext i32 %conv4 to i64
  store i64 %conv5, i64* %raster, align 8, !tbaa !68
  %13 = load i32, i32* %pad.addr, align 4, !tbaa !30
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %14 = load i64, i64* %raster, align 8, !tbaa !68
  %conv8 = trunc i64 %14 to i32
  store i32 %conv8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %pad10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 15
  %16 = load i32, i32* %pad10, align 4, !tbaa !71
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.9
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %pad13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 15
  %18 = load i32, i32* %pad13, align 4, !tbaa !71
  %conv14 = sext i32 %18 to i64
  %19 = load i64, i64* %raster, align 8, !tbaa !68
  %add15 = add i64 %19, %conv14
  store i64 %add15, i64* %raster, align 8, !tbaa !68
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.9
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 16
  %21 = load i32, i32* %log2_align_mod, align 4, !tbaa !72
  store i32 %21, i32* %l2align, align 4, !tbaa !30
  %22 = load i32, i32* %l2align, align 4, !tbaa !30
  %cmp17 = icmp slt i32 %22, 3
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 3, i32* %l2align, align 4, !tbaa !30
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %23 = load i64, i64* %bits, align 8, !tbaa !68
  %24 = load i32, i32* %l2align, align 4, !tbaa !30
  %shl = shl i32 8, %24
  %conv21 = sext i32 %shl to i64
  %add22 = add i64 %23, %conv21
  %sub = sub i64 %add22, 1
  %25 = load i32, i32* %l2align, align 4, !tbaa !30
  %add23 = add nsw i32 %25, 3
  %sh_prom = zext i32 %add23 to i64
  %shr24 = lshr i64 %sub, %sh_prom
  %26 = load i32, i32* %l2align, align 4, !tbaa !30
  %sh_prom25 = zext i32 %26 to i64
  %shl26 = shl i64 %shr24, %sh_prom25
  %conv27 = trunc i64 %shl26 to i32
  store i32 %conv27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.7
  %27 = bitcast i32* %l2align to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i64* %raster to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i8* @gs_devicename(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 2
  %1 = load i8*, i8** %dname, align 8, !tbaa !73
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @gs_deviceinitialmatrix(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 1
  %1 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !74
  %cmp = icmp eq void (%struct.gx_device_s*, %struct.gs_matrix_s*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_initial_matrix2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix2, align 8, !tbaa !74
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %get_initial_matrix4 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 1
  %4 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix4, align 8, !tbaa !74
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  call void %4(%struct.gx_device_s* %5, %struct.gs_matrix_s* %6) #5
  ret void
}

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gs_getdevice(i32 %index) #0 {
entry:
  %retval = alloca %struct.gx_device_s*, align 8
  %index.addr = alloca i32, align 4
  %list = alloca %struct.gx_device_s**, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %index, i32* %index.addr, align 4, !tbaa !30
  %0 = bitcast %struct.gx_device_s*** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %call = call i32 @gs_lib_device_list(%struct.gx_device_s*** %list, %struct.gs_memory_struct_type_s** null) #5
  store i32 %call, i32* %count, align 4, !tbaa !30
  %2 = load i32, i32* %index.addr, align 4, !tbaa !30
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %index.addr, align 4, !tbaa !30
  %4 = load i32, i32* %count, align 4, !tbaa !30
  %cmp1 = icmp sge i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.gx_device_s* null, %struct.gx_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %index.addr, align 4, !tbaa !30
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.gx_device_s**, %struct.gx_device_s*** %list, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %6, i64 %idxprom
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx, align 8, !tbaa !1
  store %struct.gx_device_s* %7, %struct.gx_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast %struct.gx_device_s*** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %retval
  ret %struct.gx_device_s* %10
}

declare i32 @gs_lib_device_list(%struct.gx_device_s***, %struct.gs_memory_struct_type_s**) #2

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gs_getdefaultdevice() #0 {
entry:
  %retval = alloca %struct.gx_device_s*, align 8
  %list = alloca %struct.gx_device_s**, align 8
  %count = alloca i32, align 4
  %name = alloca i8*, align 8
  %end = alloca i8*, align 8
  %fin = alloca i8*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.gx_device_s*** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %call = call i32 @gs_lib_device_list(%struct.gx_device_s*** %list, %struct.gs_memory_struct_type_s** null) #5
  store i32 %call, i32* %count, align 4, !tbaa !30
  %2 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %fin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i8*, i8** @gs_dev_defaults, align 8, !tbaa !1
  store i8* %6, i8** %name, align 8, !tbaa !1
  %7 = load i8*, i8** %name, align 8, !tbaa !1
  %8 = load i8*, i8** %name, align 8, !tbaa !1
  %call1 = call i64 @strlen(i8* %8) #6
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %call1
  store i8* %add.ptr, i8** %fin, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %9 = load i8*, i8** %name, align 8, !tbaa !1
  %10 = load i8*, i8** %fin, align 8, !tbaa !1
  %cmp = icmp ult i8* %9, %10
  br i1 %cmp, label %while.body, label %while.end.39

while.body:                                       ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.9, %while.body
  %11 = load i8*, i8** %name, align 8, !tbaa !1
  %12 = load i8*, i8** %fin, align 8, !tbaa !1
  %cmp3 = icmp ult i8* %11, %12
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.2
  %13 = load i8*, i8** %name, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !75
  %conv = sext i8 %14 to i32
  %cmp4 = icmp eq i32 %conv, 32
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %15 = load i8*, i8** %name, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !75
  %conv6 = sext i8 %16 to i32
  %cmp7 = icmp eq i32 %conv6, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %17 = phi i1 [ true, %land.rhs ], [ %cmp7, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.2
  %18 = phi i1 [ false, %while.cond.2 ], [ %17, %lor.end ]
  br i1 %18, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %land.end
  %19 = load i8*, i8** %name, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %name, align 8, !tbaa !1
  br label %while.cond.2

while.end:                                        ; preds = %land.end
  %20 = load i8*, i8** %name, align 8, !tbaa !1
  store i8* %20, i8** %end, align 8, !tbaa !1
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.21, %while.end
  %21 = load i8*, i8** %end, align 8, !tbaa !1
  %22 = load i8*, i8** %fin, align 8, !tbaa !1
  %cmp11 = icmp ult i8* %21, %22
  br i1 %cmp11, label %land.lhs.true, label %land.end.20

land.lhs.true:                                    ; preds = %while.cond.10
  %23 = load i8*, i8** %end, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !75
  %conv13 = sext i8 %24 to i32
  %cmp14 = icmp ne i32 %conv13, 32
  br i1 %cmp14, label %land.rhs.16, label %land.end.20

land.rhs.16:                                      ; preds = %land.lhs.true
  %25 = load i8*, i8** %end, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !75
  %conv17 = sext i8 %26 to i32
  %cmp18 = icmp ne i32 %conv17, 9
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.16, %land.lhs.true, %while.cond.10
  %27 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.10 ], [ %cmp18, %land.rhs.16 ]
  br i1 %27, label %while.body.21, label %while.end.23

while.body.21:                                    ; preds = %land.end.20
  %28 = load i8*, i8** %end, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr22, i8** %end, align 8, !tbaa !1
  br label %while.cond.10

while.end.23:                                     ; preds = %land.end.20
  store i32 0, i32* %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.23
  %29 = load i32, i32* %i, align 4, !tbaa !30
  %30 = load i32, i32* %count, align 4, !tbaa !30
  %cmp24 = icmp slt i32 %29, %30
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i8*, i8** %end, align 8, !tbaa !1
  %32 = load i8*, i8** %name, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %33 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.gx_device_s**, %struct.gx_device_s*** %list, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %34, i64 %idxprom
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 2
  %36 = load i8*, i8** %dname, align 8, !tbaa !73
  %call26 = call i64 @strlen(i8* %36) #6
  %cmp27 = icmp eq i64 %sub.ptr.sub, %call26
  br i1 %cmp27, label %if.then, label %if.end.38

if.then:                                          ; preds = %for.body
  %37 = load i8*, i8** %name, align 8, !tbaa !1
  %38 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom29 = sext i32 %38 to i64
  %39 = load %struct.gx_device_s**, %struct.gx_device_s*** %list, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %39, i64 %idxprom29
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx30, align 8, !tbaa !1
  %dname31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 2
  %41 = load i8*, i8** %dname31, align 8, !tbaa !73
  %42 = load i8*, i8** %end, align 8, !tbaa !1
  %43 = load i8*, i8** %name, align 8, !tbaa !1
  %sub.ptr.lhs.cast32 = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast33 = ptrtoint i8* %43 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %call35 = call i32 @memcmp(i8* %37, i8* %41, i64 %sub.ptr.sub34) #6
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %if.end, label %if.then.36

if.then.36:                                       ; preds = %if.then
  %44 = load i32, i32* %i, align 4, !tbaa !30
  %call37 = call %struct.gx_device_s* @gs_getdevice(i32 %44) #5
  store %struct.gx_device_s* %call37, %struct.gx_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %45 = load i32, i32* %i, align 4, !tbaa !30
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i8*, i8** %end, align 8, !tbaa !1
  store i8* %46, i8** %name, align 8, !tbaa !1
  br label %while.cond

while.end.39:                                     ; preds = %while.cond
  %call40 = call %struct.gx_device_s* @gs_getdevice(i32 0) #5
  store %struct.gx_device_s* %call40, %struct.gx_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.39, %if.then.36
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i8** %fin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i8** %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct.gx_device_s*** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %retval
  ret %struct.gx_device_s* %53
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gs_copydevice2(%struct.gx_device_s** %pnew_dev, %struct.gx_device_s* %dev, i32 %keep_open, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pnew_dev.addr = alloca %struct.gx_device_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %keep_open.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %new_dev = alloca %struct.gx_device_s*, align 8
  %std = alloca %struct.gs_memory_struct_type_s*, align 8
  %new_std = alloca %struct.gs_memory_struct_type_s*, align 8
  %a_std = alloca %struct.gs_memory_struct_type_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s** %pnew_dev, %struct.gx_device_s*** %pnew_dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %keep_open, i32* %keep_open.addr, align 4, !tbaa !30
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %new_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_memory_struct_type_s** %std to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 4
  %3 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !29
  store %struct.gs_memory_struct_type_s* %3, %struct.gs_memory_struct_type_s** %std, align 8, !tbaa !1
  %4 = bitcast %struct.gs_memory_struct_type_s** %new_std to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_memory_struct_type_s** %a_std to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.gs_memory_struct_type_s* null, %struct.gs_memory_struct_type_s** %a_std, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %stype_is_dynamic = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 5
  %8 = load i32, i32* %stype_is_dynamic, align 4, !tbaa !24
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !26
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !76
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !26
  %call = call i8* %11(%struct.gs_memory_s* %13, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #5
  %14 = bitcast i8* %call to %struct.gs_memory_struct_type_s*
  store %struct.gs_memory_struct_type_s* %14, %struct.gs_memory_struct_type_s** %a_std, align 8, !tbaa !1
  %15 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %a_std, align 8, !tbaa !1
  %tobool2 = icmp ne %struct.gs_memory_struct_type_s* %15, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %a_std, align 8, !tbaa !1
  %17 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %std, align 8, !tbaa !1
  %18 = bitcast %struct.gs_memory_struct_type_s* %16 to i8*
  %19 = bitcast %struct.gs_memory_struct_type_s* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 64, i32 8, i1 false), !tbaa.struct !77
  %20 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %a_std, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %20, %struct.gs_memory_struct_type_s** %new_std, align 8, !tbaa !1
  br label %if.end.16

if.else:                                          ; preds = %entry
  %21 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %std, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_memory_struct_type_s* %21, null
  br i1 %cmp, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %22 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %std, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %22, i32 0, i32 0
  %23 = load i32, i32* %ssize, align 4, !tbaa !78
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %params_size = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 0
  %25 = load i32, i32* %params_size, align 4, !tbaa !80
  %cmp4 = icmp eq i32 %23, %25
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  %26 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %std, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %26, %struct.gs_memory_struct_type_s** %new_std, align 8, !tbaa !1
  br label %if.end.15

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory7, align 8, !tbaa !26
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %alloc_bytes_immovable9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 0
  %29 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable9, align 8, !tbaa !76
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory10, align 8, !tbaa !26
  %call11 = call i8* %29(%struct.gs_memory_s* %31, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #5
  %32 = bitcast i8* %call11 to %struct.gs_memory_struct_type_s*
  store %struct.gs_memory_struct_type_s* %32, %struct.gs_memory_struct_type_s** %a_std, align 8, !tbaa !1
  %33 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %a_std, align 8, !tbaa !1
  %tobool12 = icmp ne %struct.gs_memory_struct_type_s* %33, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.else.6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.else.6
  %34 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %a_std, align 8, !tbaa !1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_make_struct_type(%struct.gs_memory_struct_type_s* %34, %struct.gx_device_s* %35) #5
  %36 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %a_std, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %36, %struct.gs_memory_struct_type_s** %new_std, align 8, !tbaa !1
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.5
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 9
  %38 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !81
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %40 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %new_std, align 8, !tbaa !1
  %call18 = call i8* %38(%struct.gs_memory_s* %39, %struct.gs_memory_struct_type_s* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #5
  %41 = bitcast i8* %call18 to %struct.gx_device_s*
  store %struct.gx_device_s* %41, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.gx_device_s* %42, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.16
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init(%struct.gx_device_s* %43, %struct.gx_device_s* %44, %struct.gs_memory_s* %45, i32 0) #5
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  call void @gx_device_set_procs(%struct.gx_device_s* %46) #5
  %47 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %new_std, align 8, !tbaa !1
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %stype22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 4
  store %struct.gs_memory_struct_type_s* %47, %struct.gs_memory_struct_type_s** %stype22, align 8, !tbaa !29
  %49 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %new_std, align 8, !tbaa !1
  %50 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %std, align 8, !tbaa !1
  %cmp23 = icmp ne %struct.gs_memory_struct_type_s* %49, %50
  %conv = zext i1 %cmp23 to i32
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %stype_is_dynamic24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 5
  store i32 %conv, i32* %stype_is_dynamic24, align 4, !tbaa !24
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 9
  %53 = load i32, i32* %is_open, align 4, !tbaa !31
  %tobool25 = icmp ne i32 %53, 0
  br i1 %tobool25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.21
  %54 = load i32, i32* %keep_open.addr, align 4, !tbaa !30
  %tobool26 = icmp ne i32 %54, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.21
  %55 = phi i1 [ false, %if.end.21 ], [ %tobool26, %land.rhs ]
  %land.ext = zext i1 %55 to i32
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %is_open27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 9
  store i32 %land.ext, i32* %is_open27, align 4, !tbaa !31
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %procs28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 42
  %finish_copydevice = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs28, i32 0, i32 43
  %58 = load i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)** %finish_copydevice, align 8, !tbaa !82
  %cmp29 = icmp eq i32 (%struct.gx_device_s*, %struct.gx_device_s*)* %58, null
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %land.end
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %procs32 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %59, i32 0, i32 42
  %finish_copydevice33 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs32, i32 0, i32 43
  store i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gx_device_s*)** %finish_copydevice33, align 8, !tbaa !82
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %land.end
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 42
  %finish_copydevice36 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs35, i32 0, i32 43
  %61 = load i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)** %finish_copydevice36, align 8, !tbaa !82
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call37 = call i32 %61(%struct.gx_device_s* %62, %struct.gx_device_s* %63) #5
  store i32 %call37, i32* %code, align 4, !tbaa !30
  %64 = load i32, i32* %code, align 4, !tbaa !30
  %cmp38 = icmp slt i32 %64, 0
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.34
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs41, i32 0, i32 2
  %66 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %69 = bitcast %struct.gx_device_s* %68 to i8*
  call void %66(%struct.gs_memory_s* %67, i8* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #5
  %70 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.34
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %72 = load %struct.gx_device_s**, %struct.gx_device_s*** %pnew_dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %71, %struct.gx_device_s** %72, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.40, %if.then.20, %if.then.13, %if.then.3
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast %struct.gs_memory_struct_type_s** %a_std to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.gs_memory_struct_type_s** %new_std to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.gs_memory_struct_type_s** %std to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast %struct.gx_device_s** %new_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal void @gx_device_make_struct_type(%struct.gs_memory_struct_type_s* %st, %struct.gx_device_s* %dev) #0 {
entry:
  %st.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %procs = alloca %struct.gx_device_procs_s*, align 8
  store %struct.gs_memory_struct_type_s* %st, %struct.gs_memory_struct_type_s** %st.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_procs_s** %procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %static_procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 1
  %2 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %static_procs, align 8, !tbaa !39
  store %struct.gx_device_procs_s* %2, %struct.gx_device_procs_s** %procs, align 8, !tbaa !1
  %3 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_procs_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  store %struct.gx_device_procs_s* %procs1, %struct.gx_device_procs_s** %procs, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 4
  %6 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !29
  %tobool = icmp ne %struct.gs_memory_struct_type_s* %6, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %st.addr, align 8, !tbaa !1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %stype3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 4
  %9 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype3, align 8, !tbaa !29
  %10 = bitcast %struct.gs_memory_struct_type_s* %7 to i8*
  %11 = bitcast %struct.gs_memory_struct_type_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 64, i32 8, i1 false), !tbaa.struct !77
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %12 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %procs, align 8, !tbaa !1
  %get_xfont_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %12, i32 0, i32 16
  %13 = load %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)** %get_xfont_procs, align 8, !tbaa !84
  %cmp4 = icmp eq %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* %13, @gx_forward_get_xfont_procs
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %14 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %st.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_memory_struct_type_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_forward to i8*), i64 64, i32 8, i1 false), !tbaa.struct !77
  br label %if.end.7

if.else.6:                                        ; preds = %if.else
  %16 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %st.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_memory_struct_type_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device to i8*), i64 64, i32 8, i1 false), !tbaa.struct !77
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %params_size = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 0
  %19 = load i32, i32* %params_size, align 4, !tbaa !80
  %20 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %st.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %20, i32 0, i32 0
  store i32 %19, i32* %ssize, align 4, !tbaa !78
  %21 = bitcast %struct.gx_device_procs_s** %procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_init(%struct.gx_device_s* %dev, %struct.gx_device_s* %proto, %struct.gs_memory_s* %mem, i32 %internal) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %proto.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %internal.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %proto, %struct.gx_device_s** %proto.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %internal, i32* %internal.addr, align 4, !tbaa !30
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_s* %0 to i8*
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %proto.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to i8*
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %proto.addr, align 8, !tbaa !1
  %params_size = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 0
  %5 = load i32, i32* %params_size, align 4, !tbaa !80
  %conv = sext i32 %5 to i64
  %call = call i8* @memcpy(i8* %1, i8* %3, i64 %conv) #7
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %8 = load i32, i32* %internal.addr, align 4, !tbaa !30
  %tobool = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %retained = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 8
  store i32 %lnot.ext, i32* %retained, align 4, !tbaa !85
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load i32, i32* %internal.addr, align 4, !tbaa !30
  %tobool1 = icmp ne i32 %10, 0
  %cond = select i1 %tobool1, i32 0, i32 1
  %conv2 = sext i32 %cond to i64
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 %conv2, i64* %ref_count, align 8, !tbaa !86
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 7
  %memory4 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3, i32 0, i32 1
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %memory4, align 8, !tbaa !87
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc5, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !88
  br label %do.body.6

do.body.6:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body.6
  br label %do.end.7

do.end.7:                                         ; preds = %do.end
  ret void
}

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_copydevice(%struct.gx_device_s** %pnew_dev, %struct.gx_device_s* %dev, %struct.gs_memory_s* %mem) #0 {
entry:
  %pnew_dev.addr = alloca %struct.gx_device_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_s** %pnew_dev, %struct.gx_device_s*** %pnew_dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s**, %struct.gx_device_s*** %pnew_dev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_copydevice2(%struct.gx_device_s** %0, %struct.gx_device_s* %1, i32 0, %struct.gs_memory_s* %2) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_opendevice(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 9
  %1 = load i32, i32* %is_open, align 4, !tbaa !31
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @check_device_separable(%struct.gx_device_s* %2) #5
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %3) #5
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %6 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !89
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gx_device_s* %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !30
  %8 = load i32, i32* %code, align 4, !tbaa !30
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 9
  store i32 1, i32* %is_open3, align 4, !tbaa !31
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.then.1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @check_device_separable(%struct.gx_device_s*) #2

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_imager_putdeviceparams(%struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gs_putdeviceparams(%struct.gx_device_s* %1, %struct.gs_param_list_s* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !30
  %3 = load i32, i32* %code, align 4, !tbaa !30
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_set_cmap_procs(%struct.gs_imager_state_s* %4, %struct.gx_device_s* %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %code, align 4, !tbaa !30
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %6
}

declare i32 @gs_putdeviceparams(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare void @gx_set_cmap_procs(%struct.gs_imager_state_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_state_putdeviceparams(%struct.gs_state_s* %pgs, %struct.gs_param_list_s* %plist) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 78
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !42
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gs_putdeviceparams(%struct.gx_device_s* %2, %struct.gs_param_list_s* %3) #5
  store i32 %call, i32* %code, align 4, !tbaa !30
  %4 = load i32, i32* %code, align 4, !tbaa !30
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gs_state_update_device(%struct.gs_state_s* %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %code, align 4, !tbaa !30
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @gs_state_update_device(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_state_s* %0 to %struct.gs_imager_state_s*
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 78
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !42
  call void @gx_set_cmap_procs(%struct.gs_imager_state_s* %1, %struct.gx_device_s* %3) #5
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %dev_color = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 2
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %dev_color, align 8, !tbaa !90
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_none, %struct.gx_device_color_type_s** %type, align 8, !tbaa !92
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setdevice(%struct.gs_state_s* %pgs, %struct.gx_device_s* %dev) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gs_setdevice_no_erase(%struct.gs_state_s* %1, %struct.gx_device_s* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !30
  %3 = load i32, i32* %code, align 4, !tbaa !30
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_erasepage(%struct.gs_state_s* %4) #5
  store i32 %call1, i32* %code, align 4, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %code, align 4, !tbaa !30
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gs_setdevice_no_erase(%struct.gs_state_s* %pgs, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %open_code = alloca i32, align 4
  %code = alloca i32, align 4
  %libctx = alloca %struct.gs_lib_ctx_s*, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  %dev_profile30 = alloca %struct.cmm_dev_profile_s*, align 8
  %odev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %open_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %open_code, align 4, !tbaa !30
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !99
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %4) #5
  store %struct.gs_lib_ctx_s* %call, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %io_device_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 18
  %6 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %io_device_table, align 8, !tbaa !100
  %cmp = icmp ne %struct.gx_io_device_s** %6, null
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 35
  %9 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !102
  %lab_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %9, i32 0, i32 4
  %10 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile, align 8, !tbaa !103
  %cmp1 = icmp eq %struct.cmm_profile_s* %10, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call3 = call i32 @gsicc_init_iccmanager(%struct.gs_state_s* %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %13 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !59
  %cmp4 = icmp ne i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %13, null
  br i1 %cmp4, label %if.then.5, label %if.end.24

if.then.5:                                        ; preds = %if.end
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile7 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 67
  %15 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile7, align 8, !tbaa !59
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call8 = call i32 %15(%struct.gx_device_s* %16, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call8, i32* %code, align 4, !tbaa !30
  %17 = load i32, i32* %code, align 4, !tbaa !30
  %cmp9 = icmp slt i32 %17, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.5
  %18 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.5
  %19 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.cmm_dev_profile_s* %19, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %20 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %20, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.cmm_profile_s* %21, null
  br i1 %cmp13, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.11
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call15 = call i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %22, i8* null, i32 0) #5
  store i32 %call15, i32* %code, align 4, !tbaa !30
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  %23 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.14
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call19 = call i32 @gsicc_set_device_profile_intent(%struct.gx_device_s* %24, i32 0, i32 0) #5
  store i32 %call19, i32* %code, align 4, !tbaa !30
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %25 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %lor.lhs.false
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.21, %if.then.17, %if.then.10
  %26 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.77 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.end.25:                                        ; preds = %cleanup.cont, %entry
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 9
  %28 = load i32, i32* %is_open, align 4, !tbaa !31
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.end.68, label %if.then.26

if.then.26:                                       ; preds = %if.end.25
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %29) #5
  %30 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %libctx, align 8, !tbaa !1
  %io_device_table27 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %30, i32 0, i32 18
  %31 = load %struct.gx_io_device_s**, %struct.gx_io_device_s*** %io_device_table27, align 8, !tbaa !100
  %cmp28 = icmp ne %struct.gx_io_device_s** %31, null
  br i1 %cmp28, label %if.then.29, label %if.end.56

if.then.29:                                       ; preds = %if.then.26
  %32 = bitcast %struct.cmm_dev_profile_s** %dev_profile30 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 42
  %get_profile32 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs31, i32 0, i32 67
  %34 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile32, align 8, !tbaa !59
  %cmp33 = icmp ne i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %34, null
  br i1 %cmp33, label %if.then.34, label %if.end.52

if.then.34:                                       ; preds = %if.then.29
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 42
  %get_profile36 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs35, i32 0, i32 67
  %36 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile36, align 8, !tbaa !59
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call37 = call i32 %36(%struct.gx_device_s* %37, %struct.cmm_dev_profile_s** %dev_profile30) #5
  store i32 %call37, i32* %code, align 4, !tbaa !30
  %38 = load i32, i32* %code, align 4, !tbaa !30
  %cmp38 = icmp slt i32 %38, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.34
  %39 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end.40:                                        ; preds = %if.then.34
  %40 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile30, align 8, !tbaa !1
  %cmp41 = icmp eq %struct.cmm_dev_profile_s* %40, null
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.end.40
  %41 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile30, align 8, !tbaa !1
  %device_profile43 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %41, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile43, i32 0, i64 0
  %42 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx44, align 8, !tbaa !1
  %cmp45 = icmp eq %struct.cmm_profile_s* %42, null
  br i1 %cmp45, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %lor.lhs.false.42, %if.end.40
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call47 = call i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %43, i8* null, i32 0) #5
  store i32 %call47, i32* %code, align 4, !tbaa !30
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.46
  %44 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end.50:                                        ; preds = %if.then.46
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %lor.lhs.false.42
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %if.end.52, %if.then.49, %if.then.39
  %45 = bitcast %struct.cmm_dev_profile_s** %dev_profile30 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %cleanup.dest.54 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.54, label %cleanup.77 [
    i32 0, label %cleanup.cont.55
  ]

cleanup.cont.55:                                  ; preds = %cleanup.53
  br label %if.end.56

if.end.56:                                        ; preds = %cleanup.cont.55, %if.then.26
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call57 = call i32 @gs_device_is_memory(%struct.gx_device_s* %46) #5
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.end.56
  %47 = bitcast %struct.gx_device_s** %odev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %48, i32 0, i32 78
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !42
  store %struct.gx_device_s* %49, %struct.gx_device_s** %odev, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.59
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %odev, align 8, !tbaa !1
  %cmp60 = icmp ne %struct.gx_device_s* %50, null
  br i1 %cmp60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %odev, align 8, !tbaa !1
  %call61 = call i32 @gs_device_is_memory(%struct.gx_device_s* %51) #5
  %tobool62 = icmp ne i32 %call61, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %52 = phi i1 [ false, %while.cond ], [ %tobool62, %land.rhs ]
  br i1 %52, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %odev, align 8, !tbaa !1
  %54 = bitcast %struct.gx_device_s* %53 to %struct.gx_device_memory_s*
  %target = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %54, i32 0, i32 43
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !105
  store %struct.gx_device_s* %55, %struct.gx_device_s** %odev, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %57 = bitcast %struct.gx_device_s* %56 to %struct.gx_device_forward_s*
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %odev, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %57, %struct.gx_device_s* %58) #5
  %59 = bitcast %struct.gx_device_s** %odev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  br label %if.end.63

if.end.63:                                        ; preds = %while.end, %if.end.56
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call64 = call i32 @gs_opendevice(%struct.gx_device_s* %60) #5
  store i32 %call64, i32* %open_code, align 4, !tbaa !30
  store i32 %call64, i32* %code, align 4, !tbaa !30
  %61 = load i32, i32* %code, align 4, !tbaa !30
  %cmp65 = icmp slt i32 %61, 0
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.63
  %62 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end.67:                                        ; preds = %if.end.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.25
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call69 = call i32 @gs_setdevice_no_init(%struct.gs_state_s* %63, %struct.gx_device_s* %64) #5
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %ctm_default_set = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %65, i32 0, i32 60
  store i32 0, i32* %ctm_default_set, align 4, !tbaa !114
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call70 = call i32 @gs_initmatrix(%struct.gs_state_s* %66) #5
  store i32 %call70, i32* %code, align 4, !tbaa !30
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then.75, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.end.68
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call73 = call i32 @gs_initclip(%struct.gs_state_s* %67) #5
  store i32 %call73, i32* %code, align 4, !tbaa !30
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.72, %if.end.68
  %68 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

if.end.76:                                        ; preds = %lor.lhs.false.72
  %69 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_cachedevice = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %69, i32 0, i32 74
  store i32 0, i32* %in_cachedevice, align 4, !tbaa !115
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %in_charpath = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %70, i32 0, i32 75
  store i32 0, i32* %in_charpath, align 4, !tbaa !116
  %71 = load i32, i32* %open_code, align 4, !tbaa !30
  store i32 %71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.77

cleanup.77:                                       ; preds = %if.end.76, %if.then.75, %if.then.66, %cleanup.53, %cleanup
  %72 = bitcast %struct.gs_lib_ctx_s** %libctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %open_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75
}

declare i32 @gs_erasepage(%struct.gs_state_s*) #2

declare %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s*) #2

declare i32 @gsicc_init_iccmanager(%struct.gs_state_s*) #2

declare i32 @gsicc_init_device_profile_struct(%struct.gx_device_s*, i8*, i32) #2

declare i32 @gsicc_set_device_profile_intent(%struct.gx_device_s*, i32, i32) #2

declare i32 @gs_device_is_memory(%struct.gx_device_s*) #2

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_setdevice_no_init(%struct.gs_state_s* %pgs, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 78
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !42
  %cmp = icmp ne %struct.gx_device_s* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 78
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %device1, align 8, !tbaa !42
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %4 = load i64, i64* %ref_count, align 8, !tbaa !86
  %cmp2 = icmp eq i64 %4, 1
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.9

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i32 0, i32 78
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %device4, align 8, !tbaa !42
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.gx_device_s* %6, %7
  br i1 %cmp5, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true.3
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i32 0, i32 78
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device6, align 8, !tbaa !42
  %call = call i32 @gs_closedevice(%struct.gx_device_s* %10) #5
  store i32 %call, i32* %code, align 4, !tbaa !30
  %11 = load i32, i32* %code, align 4, !tbaa !30
  %cmp7 = icmp slt i32 %11, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.8
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.9

if.end.9:                                         ; preds = %cleanup.cont, %land.lhs.true.3, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 78
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %device10, align 8, !tbaa !42
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp11 = icmp ne %struct.gx_device_s* %15, %16
  br i1 %cmp11, label %if.then.12, label %if.end.55

if.then.12:                                       ; preds = %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %17, null
  br i1 %tobool, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %do.body.13
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 7
  %ref_count17 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 0
  %19 = load i64, i64* %ref_count17, align 8, !tbaa !86
  %inc = add nsw i64 %19, 1
  store i64 %inc, i64* %ref_count17, align 8, !tbaa !86
  br label %do.body.18

do.body.18:                                       ; preds = %do.body.15
  br label %do.end

do.end:                                           ; preds = %do.body.18
  br label %do.end.19

do.end.19:                                        ; preds = %do.end
  br label %if.end.20

if.end.20:                                        ; preds = %do.end.19, %do.body.13
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 78
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %device23, align 8, !tbaa !42
  %tobool24 = icmp ne %struct.gx_device_s* %21, null
  br i1 %tobool24, label %if.then.25, label %if.end.52

if.then.25:                                       ; preds = %do.body.22
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.body.27
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device29 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 78
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %device29, align 8, !tbaa !42
  %rc30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 7
  %ref_count31 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc30, i32 0, i32 0
  %24 = load i64, i64* %ref_count31, align 8, !tbaa !86
  %add = add nsw i64 %24, -1
  store i64 %add, i64* %ref_count31, align 8, !tbaa !86
  br label %do.end.32

do.end.32:                                        ; preds = %do.end.28
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device33 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %25, i32 0, i32 78
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %device33, align 8, !tbaa !42
  %rc34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 7
  %ref_count35 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc34, i32 0, i32 0
  %27 = load i64, i64* %ref_count35, align 8, !tbaa !86
  %tobool36 = icmp ne i64 %27, 0
  br i1 %tobool36, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %do.end.32
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.39
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device41 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %28, i32 0, i32 78
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %device41, align 8, !tbaa !42
  %rc42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc42, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !88
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %31, i32 0, i32 78
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %device43, align 8, !tbaa !42
  %rc44 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 7
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc44, i32 0, i32 1
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !87
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device45 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 78
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %device45, align 8, !tbaa !42
  %36 = bitcast %struct.gx_device_s* %35 to i8*
  call void %30(%struct.gs_memory_s* %33, i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %do.end.46

do.end.46:                                        ; preds = %do.end.40
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  br label %do.end.48

do.end.48:                                        ; preds = %do.body.47
  br label %if.end.51

if.else:                                          ; preds = %do.end.32
  br label %do.body.49

do.body.49:                                       ; preds = %if.else
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.end.48
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %do.body.22
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device54 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %38, i32 0, i32 78
  store %struct.gx_device_s* %37, %struct.gx_device_s** %device54, align 8, !tbaa !42
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.53, %do.body
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  call void @gs_state_update_device(%struct.gs_state_s* %39) #5
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %overprint = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %40, i32 0, i32 21
  %41 = load i32, i32* %overprint, align 4, !tbaa !117
  %tobool57 = icmp ne i32 %41, 0
  br i1 %tobool57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.56
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call58 = call i32 @gs_do_set_overprint(%struct.gs_state_s* %42) #5
  br label %cond.end

cond.false:                                       ; preds = %do.end.56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call58, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %cleanup
  %43 = load i32, i32* %retval
  ret i32 %43

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gs_initmatrix(%struct.gs_state_s*) #2

declare i32 @gs_initclip(%struct.gs_state_s*) #2

declare i32 @gs_do_set_overprint(%struct.gs_state_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @gx_device_init_on_stack(%struct.gx_device_s* %dev, %struct.gx_device_s* %proto, %struct.gs_memory_s* %mem) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %proto.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %proto, %struct.gx_device_s** %proto.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_s* %0 to i8*
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %proto.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to i8*
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %proto.addr, align 8, !tbaa !1
  %params_size = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 0
  %5 = load i32, i32* %params_size, align 4, !tbaa !80
  %conv = sext i32 %5 to i64
  %call = call i8* @memcpy(i8* %1, i8* %3, i64 %conv) #7
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %retained = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 8
  store i32 0, i32* %retained, align 4, !tbaa !85
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %proto.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 15
  %10 = load i32, i32* %pad, align 4, !tbaa !71
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %pad1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 15
  store i32 %10, i32* %pad1, align 4, !tbaa !71
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %proto.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 16
  %13 = load i32, i32* %log2_align_mod, align 4, !tbaa !72
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 16
  store i32 %13, i32* %log2_align_mod2, align 4, !tbaa !72
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %proto.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 17
  %16 = load i32, i32* %is_planar, align 4, !tbaa !69
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_planar3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 17
  store i32 %16, i32* %is_planar3, align 4, !tbaa !69
  br label %do.body

do.body:                                          ; preds = %entry
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 0, i64* %ref_count, align 8, !tbaa !86
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 7
  %memory5 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc4, i32 0, i32 1
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %memory5, align 8, !tbaa !87
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !88
  br label %do.body.7

do.body.7:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body.7
  br label %do.end.8

do.end.8:                                         ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_make_null_device(%struct.gx_device_null_s* %dev_null, %struct.gx_device_s* %dev, %struct.gs_memory_s* %mem) #0 {
entry:
  %dev_null.addr = alloca %struct.gx_device_null_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %dn = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_null_s* %dev_null, %struct.gx_device_null_s** %dev_null.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_null_s* %0 to %struct.gx_device_s*
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init(%struct.gx_device_s* %1, %struct.gx_device_s* bitcast (%struct.gx_device_null_s* @gs_null_device to %struct.gx_device_s*), %struct.gs_memory_s* %2, i32 1) #5
  %3 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_null_s* %3 to %struct.gx_device_forward_s*
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %4, %struct.gx_device_s* %5) #5
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.gx_device_s** %dn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_device_null_s*, %struct.gx_device_null_s** %dev_null.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_null_s* %8 to %struct.gx_device_s*
  store %struct.gx_device_s* %9, %struct.gx_device_s** %dn, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dn, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_forward_get_color_mapping_procs, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !118
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dn, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 50
  store i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_forward_get_color_comp_index, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !119
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dn, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @gx_forward_encode_color, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !120
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dn, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !121
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dn, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs4, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_forward_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !59
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dn, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 68
  store void (%struct.gx_device_s*, i32)* @gx_forward_set_graphics_type_tag, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !122
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 40
  %17 = load i32, i32* %graphics_type_tag, align 4, !tbaa !123
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dn, align 8, !tbaa !1
  %graphics_type_tag6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 40
  store i32 %17, i32* %graphics_type_tag6, align 4, !tbaa !123
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dn, align 8, !tbaa !1
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_copy_color_params(%struct.gx_device_s* %19, %struct.gx_device_s* %20) #5
  %21 = bitcast %struct.gx_device_s** %dn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.gx_cm_color_map_procs_s* @gx_forward_get_color_mapping_procs(%struct.gx_device_s*) #2

declare i32 @gx_forward_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #2

declare i64 @gx_forward_encode_color(%struct.gx_device_s*, i16*) #2

declare i32 @gx_forward_decode_color(%struct.gx_device_s*, i64, i16*) #2

declare i32 @gx_forward_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #2

declare void @gx_forward_set_graphics_type_tag(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define void @gx_device_copy_color_params(%struct.gx_device_s* %dev, %struct.gx_device_s* %target) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %2 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %3 = bitcast %struct.gx_device_color_info_s* %color_info1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 720, i32 8, i1 false), !tbaa.struct !124
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cached_colors = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 12
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cached_colors2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 12
  %6 = bitcast %struct.gx_device_cached_colors_s* %cached_colors to i8*
  %7 = bitcast %struct.gx_device_cached_colors_s* %cached_colors2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false), !tbaa.struct !126
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_copy_color_procs(%struct.gx_device_s* %8, %struct.gx_device_s* %9) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_is_null_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %1 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !127
  %2 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** getelementptr inbounds (%struct.gx_device_null_s, %struct.gx_device_null_s* @gs_null_device, i32 0, i32 42, i32 24), align 8, !tbaa !128
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @gx_device_retain(%struct.gx_device_s* %dev, i32 %retained) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %retained.addr = alloca i32, align 4
  %delta = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %retained, i32* %retained.addr, align 4, !tbaa !30
  %0 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %retained.addr, align 4, !tbaa !30
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %retained1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 8
  %3 = load i32, i32* %retained1, align 4, !tbaa !85
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %delta, align 4, !tbaa !30
  %4 = load i32, i32* %delta, align 4, !tbaa !30
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %retained.addr, align 4, !tbaa !30
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %retained2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 8
  store i32 %5, i32* %retained2, align 4, !tbaa !85
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.gx_device_s* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.27

if.then.4:                                        ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.body.5
  br label %do.cond

do.cond:                                          ; preds = %do.body.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %delta, align 4, !tbaa !30
  %conv = sext i32 %8 to i64
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %10 = load i64, i64* %ref_count, align 8, !tbaa !86
  %add = add nsw i64 %10, %conv
  store i64 %add, i64* %ref_count, align 8, !tbaa !86
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 7
  %ref_count10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 0
  %12 = load i64, i64* %ref_count10, align 8, !tbaa !86
  %tobool11 = icmp ne i64 %12, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %do.end.8
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.13
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc17, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !88
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 7
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !87
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_s* %17 to i8*
  call void %14(%struct.gs_memory_s* %16, i8* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.end.16
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.body.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end

if.else:                                          ; preds = %do.end.8
  br label %do.body.24

do.body.24:                                       ; preds = %if.else
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  br label %if.end

if.end:                                           ; preds = %do.end.26, %do.end.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %do.body
  br label %do.cond.28

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %entry
  %19 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_nulldevice(%struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %ndev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 78
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !42
  %cmp = icmp eq %struct.gx_device_s* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device1 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 78
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %device1, align 8, !tbaa !42
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 2
  %4 = load i8*, i8** %dname, align 8, !tbaa !73
  %5 = load i8*, i8** getelementptr inbounds (%struct.gx_device_null_s, %struct.gx_device_null_s* @gs_null_device, i32 0, i32 2), align 8, !tbaa !130
  %cmp2 = icmp eq i8* %4, %5
  br i1 %cmp2, label %if.end.41, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = bitcast %struct.gx_device_s** %ndev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !99
  %call = call i32 @gs_copydevice(%struct.gx_device_s** %ndev, %struct.gx_device_s* bitcast (%struct.gx_device_null_s* @gs_null_device to %struct.gx_device_s*), %struct.gs_memory_s* %9) #5
  store i32 %call, i32* %code, align 4, !tbaa !30
  %10 = load i32, i32* %code, align 4, !tbaa !30
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 0, i64* %ref_count, align 8, !tbaa !86
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !99
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 7
  %memory7 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 1
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %memory7, align 8, !tbaa !87
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %rc8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc8, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !88
  br label %do.body.9

do.body.9:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.10

do.cond.10:                                       ; preds = %do.end
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 78
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %device12, align 8, !tbaa !42
  %cmp13 = icmp ne %struct.gx_device_s* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.38

if.then.14:                                       ; preds = %do.end.11
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %19, i32 0, i32 78
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %device15, align 8, !tbaa !42
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %21 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !59
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %22, i32 0, i32 78
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %device16, align 8, !tbaa !42
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 39
  %call17 = call i32 %21(%struct.gx_device_s* %23, %struct.cmm_dev_profile_s** %icc_struct) #5
  store i32 %call17, i32* %code, align 4, !tbaa !30
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.14
  %25 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.14
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %icc_struct22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 39
  %27 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct22, align 8, !tbaa !5
  %tobool = icmp ne %struct.cmm_dev_profile_s* %27, null
  br i1 %tobool, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %do.body.21
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %icc_struct25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 39
  %29 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct25, align 8, !tbaa !5
  %rc26 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %29, i32 0, i32 14
  %ref_count27 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc26, i32 0, i32 0
  %30 = load i64, i64* %ref_count27, align 8, !tbaa !19
  %inc = add nsw i64 %30, 1
  store i64 %inc, i64* %ref_count27, align 8, !tbaa !19
  br label %do.body.28

do.body.28:                                       ; preds = %do.body.24
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.end.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.body.21
  br label %do.cond.34

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %procs36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 42
  %get_profile37 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs36, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile37, align 8, !tbaa !59
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.35, %do.end.11
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %ndev, align 8, !tbaa !1
  %call39 = call i32 @gs_setdevice_no_erase(%struct.gs_state_s* %32, %struct.gx_device_s* %33) #5
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.19, %if.then.4
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.gx_device_s** %ndev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  br label %return

if.end.41:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %cleanup
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #2

; Function Attrs: nounwind uwtable
define void @gx_set_device_only(%struct.gs_state_s* %pgs, %struct.gx_device_s* %dev) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 78
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !42
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %1, %2
  br i1 %cmp, label %if.then, label %if.end.40

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %3, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body.1
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %5 = load i64, i64* %ref_count, align 8, !tbaa !86
  %inc = add nsw i64 %5, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !86
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.body.4
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  br label %if.end

if.end:                                           ; preds = %do.end.5, %do.body.1
  br label %do.end.6

do.end.6:                                         ; preds = %if.end
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 78
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %device8, align 8, !tbaa !42
  %tobool9 = icmp ne %struct.gx_device_s* %7, null
  br i1 %tobool9, label %if.then.10, label %if.end.37

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 78
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %device14, align 8, !tbaa !42
  %rc15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 7
  %ref_count16 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc15, i32 0, i32 0
  %10 = load i64, i64* %ref_count16, align 8, !tbaa !86
  %add = add nsw i64 %10, -1
  store i64 %add, i64* %ref_count16, align 8, !tbaa !86
  br label %do.end.17

do.end.17:                                        ; preds = %do.end.13
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %11, i32 0, i32 78
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %device18, align 8, !tbaa !42
  %rc19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 7
  %ref_count20 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc19, i32 0, i32 0
  %13 = load i64, i64* %ref_count20, align 8, !tbaa !86
  %tobool21 = icmp ne i64 %13, 0
  br i1 %tobool21, label %if.else, label %if.then.22

if.then.22:                                       ; preds = %do.end.17
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.body.24
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device26 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %14, i32 0, i32 78
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %device26, align 8, !tbaa !42
  %rc27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc27, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !88
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device28 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 78
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %device28, align 8, !tbaa !42
  %rc29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 7
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc29, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !87
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 78
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %device30, align 8, !tbaa !42
  %22 = bitcast %struct.gx_device_s* %21 to i8*
  call void %16(%struct.gs_memory_s* %19, i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %do.end.31

do.end.31:                                        ; preds = %do.end.25
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.body.32
  br label %if.end.36

if.else:                                          ; preds = %do.end.17
  br label %do.body.34

do.body.34:                                       ; preds = %if.else
  br label %do.end.35

do.end.35:                                        ; preds = %do.body.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %do.end.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %do.body.7
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device39 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %24, i32 0, i32 78
  store %struct.gx_device_s* %23, %struct.gx_device_s** %device39, align 8, !tbaa !42
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.38, %do.body
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_device_raster_chunky(%struct.gx_device_s* %dev, i32 %pad) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pad.addr = alloca i32, align 4
  %bits = alloca i64, align 8
  %raster = alloca i64, align 8
  %l2align = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %pad, i32* %pad.addr, align 4, !tbaa !30
  %0 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !66
  %conv = sext i32 %2 to i64
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %4 = load i16, i16* %depth, align 2, !tbaa !67
  %conv1 = zext i16 %4 to i64
  %mul = mul i64 %conv, %conv1
  store i64 %mul, i64* %bits, align 8, !tbaa !68
  %5 = bitcast i64* %raster to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %l2align to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i64, i64* %bits, align 8, !tbaa !68
  %add = add i64 %7, 7
  %shr = lshr i64 %add, 3
  %conv2 = trunc i64 %shr to i32
  %conv3 = zext i32 %conv2 to i64
  store i64 %conv3, i64* %raster, align 8, !tbaa !68
  %8 = load i32, i32* %pad.addr, align 4, !tbaa !30
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load i64, i64* %raster, align 8, !tbaa !68
  %conv4 = trunc i64 %9 to i32
  store i32 %conv4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %pad5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 15
  %11 = load i32, i32* %pad5, align 4, !tbaa !71
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %pad8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 15
  %13 = load i32, i32* %pad8, align 4, !tbaa !71
  %conv9 = sext i32 %13 to i64
  %14 = load i64, i64* %raster, align 8, !tbaa !68
  %add10 = add i64 %14, %conv9
  store i64 %add10, i64* %raster, align 8, !tbaa !68
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 16
  %16 = load i32, i32* %log2_align_mod, align 4, !tbaa !72
  store i32 %16, i32* %l2align, align 4, !tbaa !30
  %17 = load i32, i32* %l2align, align 4, !tbaa !30
  %cmp12 = icmp slt i32 %17, 3
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i32 3, i32* %l2align, align 4, !tbaa !30
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %18 = load i64, i64* %bits, align 8, !tbaa !68
  %19 = load i32, i32* %l2align, align 4, !tbaa !30
  %shl = shl i32 8, %19
  %conv16 = sext i32 %shl to i64
  %add17 = add i64 %18, %conv16
  %sub = sub i64 %add17, 1
  %20 = load i32, i32* %l2align, align 4, !tbaa !30
  %add18 = add nsw i32 %20, 3
  %sh_prom = zext i32 %add18 to i64
  %shr19 = lshr i64 %sub, %sh_prom
  %21 = load i32, i32* %l2align, align 4, !tbaa !30
  %sh_prom20 = zext i32 %21 to i64
  %shl21 = shl i64 %shr19, %sh_prom20
  %conv22 = trunc i64 %shl21 to i32
  store i32 %conv22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then
  %22 = bitcast i32* %l2align to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i64* %raster to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @gx_device_raster_plane(%struct.gx_device_s* %dev, %struct.gx_render_plane_s* %render_plane) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %render_plane.addr = alloca %struct.gx_render_plane_s*, align 8
  %bpc = alloca i64, align 8
  %bits = alloca i64, align 8
  %raster = alloca i64, align 8
  %l2align = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_render_plane_s* %render_plane, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %0 = bitcast i64* %bpc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_render_plane_s* %1, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %2, i32 0, i32 2
  %3 = load i32, i32* %index, align 4, !tbaa !131
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %render_plane.addr, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %4, i32 0, i32 0
  %5 = load i32, i32* %depth, align 4, !tbaa !133
  br label %cond.end.6

cond.false:                                       ; preds = %land.lhs.true, %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %7 = load i16, i16* %depth1, align 2, !tbaa !67
  %conv = zext i16 %7 to i32
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 17
  %9 = load i32, i32* %is_planar, align 4, !tbaa !69
  %tobool2 = icmp ne i32 %9, 0
  br i1 %tobool2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.false
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 1
  %11 = load i32, i32* %num_components, align 4, !tbaa !70
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.3
  %cond = phi i32 [ %11, %cond.true.3 ], [ 1, %cond.false.5 ]
  %div = sdiv i32 %conv, %cond
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ %5, %cond.true ], [ %div, %cond.end ]
  %conv8 = sext i32 %cond7 to i64
  store i64 %conv8, i64* %bpc, align 8, !tbaa !68
  %12 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 13
  %14 = load i32, i32* %width, align 4, !tbaa !66
  %conv9 = sext i32 %14 to i64
  %15 = load i64, i64* %bpc, align 8, !tbaa !68
  %mul = mul i64 %conv9, %15
  store i64 %mul, i64* %bits, align 8, !tbaa !68
  %16 = bitcast i64* %raster to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %l2align to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i64, i64* %bits, align 8, !tbaa !68
  %add = add i64 %18, 7
  %shr = lshr i64 %add, 3
  %conv10 = trunc i64 %shr to i32
  %conv11 = zext i32 %conv10 to i64
  store i64 %conv11, i64* %raster, align 8, !tbaa !68
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 15
  %20 = load i32, i32* %pad, align 4, !tbaa !71
  %cmp12 = icmp sgt i32 %20, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.6
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %pad14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 15
  %22 = load i32, i32* %pad14, align 4, !tbaa !71
  %conv15 = sext i32 %22 to i64
  %23 = load i64, i64* %raster, align 8, !tbaa !68
  %add16 = add i64 %23, %conv15
  store i64 %add16, i64* %raster, align 8, !tbaa !68
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.6
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 16
  %25 = load i32, i32* %log2_align_mod, align 4, !tbaa !72
  store i32 %25, i32* %l2align, align 4, !tbaa !30
  %26 = load i32, i32* %l2align, align 4, !tbaa !30
  %cmp17 = icmp slt i32 %26, 3
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  store i32 3, i32* %l2align, align 4, !tbaa !30
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end
  %27 = load i64, i64* %bits, align 8, !tbaa !68
  %28 = load i32, i32* %l2align, align 4, !tbaa !30
  %shl = shl i32 8, %28
  %conv21 = sext i32 %shl to i64
  %add22 = add i64 %27, %conv21
  %sub = sub i64 %add22, 1
  %29 = load i32, i32* %l2align, align 4, !tbaa !30
  %add23 = add nsw i32 %29, 3
  %sh_prom = zext i32 %add23 to i64
  %shr24 = lshr i64 %sub, %sh_prom
  %30 = load i32, i32* %l2align, align 4, !tbaa !30
  %sh_prom25 = zext i32 %30 to i64
  %shl26 = shl i64 %shr24, %sh_prom25
  %conv27 = trunc i64 %shl26 to i32
  %31 = bitcast i32* %l2align to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i64* %raster to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i64* %bpc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  ret i32 %conv27
}

; Function Attrs: nounwind uwtable
define i32 @gx_device_adjust_resolution(%struct.gx_device_s* %dev, i32 %actual_width, i32 %actual_height, i32 %fit) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %actual_width.addr = alloca i32, align 4
  %actual_height.addr = alloca i32, align 4
  %fit.addr = alloca i32, align 4
  %width_ratio = alloca double, align 8
  %height_ratio = alloca double, align 8
  %ratio = alloca double, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %actual_width, i32* %actual_width.addr, align 4, !tbaa !30
  store i32 %actual_height, i32* %actual_height.addr, align 4, !tbaa !30
  store i32 %fit, i32* %fit.addr, align 4, !tbaa !30
  %0 = bitcast double* %width_ratio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %actual_width.addr, align 4, !tbaa !30
  %conv = sitofp i32 %1 to double
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4, !tbaa !66
  %conv1 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv1
  store double %div, double* %width_ratio, align 8, !tbaa !134
  %4 = bitcast double* %height_ratio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %actual_height.addr, align 4, !tbaa !30
  %conv2 = sitofp i32 %5 to double
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 14
  %7 = load i32, i32* %height, align 4, !tbaa !65
  %conv3 = sitofp i32 %7 to double
  %div4 = fdiv double %conv2, %conv3
  store double %div4, double* %height_ratio, align 8, !tbaa !134
  %8 = bitcast double* %ratio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %fit.addr, align 4, !tbaa !30
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %cond.true, label %cond.false.7

cond.true:                                        ; preds = %entry
  %10 = load double, double* %width_ratio, align 8, !tbaa !134
  %11 = load double, double* %height_ratio, align 8, !tbaa !134
  %cmp = fcmp olt double %10, %11
  br i1 %cmp, label %cond.true.6, label %cond.false

cond.true.6:                                      ; preds = %cond.true
  %12 = load double, double* %width_ratio, align 8, !tbaa !134
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %13 = load double, double* %height_ratio, align 8, !tbaa !134
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.6
  %cond = phi double [ %12, %cond.true.6 ], [ %13, %cond.false ]
  br label %cond.end.14

cond.false.7:                                     ; preds = %entry
  %14 = load double, double* %width_ratio, align 8, !tbaa !134
  %15 = load double, double* %height_ratio, align 8, !tbaa !134
  %cmp8 = fcmp ogt double %14, %15
  br i1 %cmp8, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false.7
  %16 = load double, double* %width_ratio, align 8, !tbaa !134
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.false.7
  %17 = load double, double* %height_ratio, align 8, !tbaa !134
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi double [ %16, %cond.true.10 ], [ %17, %cond.false.11 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end.12, %cond.end
  %cond15 = phi double [ %cond, %cond.end ], [ %cond13, %cond.end.12 ]
  store double %cond15, double* %ratio, align 8, !tbaa !134
  %18 = load double, double* %ratio, align 8, !tbaa !134
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %20 = load float, float* %arrayidx, align 4, !tbaa !135
  %conv16 = fpext float %20 to double
  %mul = fmul double %conv16, %18
  %conv17 = fptrunc double %mul to float
  store float %conv17, float* %arrayidx, align 4, !tbaa !135
  %21 = load double, double* %ratio, align 8, !tbaa !134
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 22
  %arrayidx19 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution18, i32 0, i64 1
  %23 = load float, float* %arrayidx19, align 4, !tbaa !135
  %conv20 = fpext float %23 to double
  %mul21 = fmul double %conv20, %21
  %conv22 = fptrunc double %mul21 to float
  store float %conv22, float* %arrayidx19, align 4, !tbaa !135
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load i32, i32* %actual_width.addr, align 4, !tbaa !30
  %26 = load i32, i32* %actual_height.addr, align 4, !tbaa !30
  call void @gx_device_set_width_height(%struct.gx_device_s* %24, i32 %25, i32 %26) #5
  %27 = bitcast double* %ratio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast double* %height_ratio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast double* %width_ratio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gx_device_set_width_height(%struct.gx_device_s* %dev, i32 %width, i32 %height) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !30
  store i32 %height, i32* %height.addr, align 4, !tbaa !30
  %0 = load i32, i32* %width.addr, align 4, !tbaa !30
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  store i32 %0, i32* %width1, align 4, !tbaa !66
  %2 = load i32, i32* %height.addr, align 4, !tbaa !30
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 14
  store i32 %2, i32* %height2, align 4, !tbaa !65
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_set_media_from_hwsize(%struct.gx_device_s* %4) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_set_margins(%struct.gx_device_s* %dev, float* %margins, i32 %move_origin) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %margins.addr = alloca float*, align 8
  %move_origin.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store float* %margins, float** %margins.addr, align 8, !tbaa !1
  store i32 %move_origin, i32* %move_origin.addr, align 4, !tbaa !30
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !30
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %margins.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4, !tbaa !135
  %conv = fpext float %4 to double
  %mul = fmul double %conv, 7.200000e+01
  %conv1 = fptrunc double %mul to float
  %5 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 25
  %arrayidx3 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 %idxprom2
  store float %conv1, float* %arrayidx3, align 4, !tbaa !135
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !30
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %move_origin.addr, align 4, !tbaa !30
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load float*, float** %margins.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float, float* %9, i64 0
  %10 = load float, float* %arrayidx4, align 4, !tbaa !135
  %sub = fsub float -0.000000e+00, %10
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MarginsHWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 23
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution, i32 0, i64 0
  %12 = load float, float* %arrayidx5, align 4, !tbaa !135
  %mul6 = fmul float %sub, %12
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %Margins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 24
  %arrayidx7 = getelementptr inbounds [2 x float], [2 x float]* %Margins, i32 0, i64 0
  store float %mul6, float* %arrayidx7, align 4, !tbaa !135
  %14 = load float*, float** %margins.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %14, i64 3
  %15 = load float, float* %arrayidx8, align 4, !tbaa !135
  %sub9 = fsub float -0.000000e+00, %15
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MarginsHWResolution10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 23
  %arrayidx11 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution10, i32 0, i64 1
  %17 = load float, float* %arrayidx11, align 4, !tbaa !135
  %mul12 = fmul float %sub9, %17
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %Margins13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 24
  %arrayidx14 = getelementptr inbounds [2 x float], [2 x float]* %Margins13, i32 0, i64 1
  store float %mul12, float* %arrayidx14, align 4, !tbaa !135
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_device_set_media_from_hwsize(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rot = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 18
  %2 = load i32, i32* %LeadingEdge, align 4, !tbaa !136
  %and = and i32 %2, 1
  store i32 %and, i32* %rot, align 4, !tbaa !30
  %3 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 13
  %5 = load i32, i32* %width, align 4, !tbaa !66
  %conv = sitofp i32 %5 to double
  %mul = fmul double %conv, 7.200000e+01
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %7 = load float, float* %arrayidx, align 4, !tbaa !135
  %conv1 = fpext float %7 to double
  %div = fdiv double %mul, %conv1
  store double %div, double* %x, align 8, !tbaa !134
  %8 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 14
  %10 = load i32, i32* %height, align 4, !tbaa !65
  %conv2 = sitofp i32 %10 to double
  %mul3 = fmul double %conv2, 7.200000e+01
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 22
  %arrayidx5 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution4, i32 0, i64 1
  %12 = load float, float* %arrayidx5, align 4, !tbaa !135
  %conv6 = fpext float %12 to double
  %div7 = fdiv double %mul3, %conv6
  store double %div7, double* %y, align 8, !tbaa !134
  %13 = load i32, i32* %rot, align 4, !tbaa !30
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load double, double* %x, align 8, !tbaa !134
  %conv8 = fptrunc double %14 to float
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 19
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 1
  store float %conv8, float* %arrayidx9, align 4, !tbaa !135
  %16 = load double, double* %y, align 8, !tbaa !134
  %conv10 = fptrunc double %16 to float
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 19
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize11, i32 0, i64 0
  store float %conv10, float* %arrayidx12, align 4, !tbaa !135
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load double, double* %x, align 8, !tbaa !134
  %conv13 = fptrunc double %18 to float
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 19
  %arrayidx15 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize14, i32 0, i64 0
  store float %conv13, float* %arrayidx15, align 4, !tbaa !135
  %20 = load double, double* %y, align 8, !tbaa !134
  %conv16 = fptrunc double %20 to float
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 19
  %arrayidx18 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize17, i32 0, i64 1
  store float %conv16, float* %arrayidx18, align 4, !tbaa !135
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = bitcast double* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %rot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_set_resolution(%struct.gx_device_s* %dev, double %x_dpi, double %y_dpi) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x_dpi.addr = alloca double, align 8
  %y_dpi.addr = alloca double, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store double %x_dpi, double* %x_dpi.addr, align 8, !tbaa !134
  store double %y_dpi, double* %y_dpi.addr, align 8, !tbaa !134
  %0 = load double, double* %x_dpi.addr, align 8, !tbaa !134
  %conv = fptrunc double %0 to float
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  store float %conv, float* %arrayidx, align 4, !tbaa !135
  %2 = load double, double* %y_dpi.addr, align 8, !tbaa !134
  %conv1 = fptrunc double %2 to float
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution2, i32 0, i64 1
  store float %conv1, float* %arrayidx3, align 4, !tbaa !135
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_set_hwsize_from_media(%struct.gx_device_s* %4) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_device_set_hwsize_from_media(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rot = alloca i32, align 4
  %rot_media_x = alloca double, align 8
  %rot_media_y = alloca double, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 18
  %2 = load i32, i32* %LeadingEdge, align 4, !tbaa !136
  %and = and i32 %2, 1
  store i32 %and, i32* %rot, align 4, !tbaa !30
  %3 = bitcast double* %rot_media_x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %rot, align 4, !tbaa !30
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 1
  %6 = load float, float* %arrayidx, align 4, !tbaa !135
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 0
  %8 = load float, float* %arrayidx2, align 4, !tbaa !135
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %6, %cond.true ], [ %8, %cond.false ]
  %conv = fpext float %cond to double
  store double %conv, double* %rot_media_x, align 8, !tbaa !134
  %9 = bitcast double* %rot_media_y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %rot, align 4, !tbaa !30
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 19
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize5, i32 0, i64 0
  %12 = load float, float* %arrayidx6, align 4, !tbaa !135
  br label %cond.end.10

cond.false.7:                                     ; preds = %cond.end
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 19
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize8, i32 0, i64 1
  %14 = load float, float* %arrayidx9, align 4, !tbaa !135
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.7, %cond.true.4
  %cond11 = phi float [ %12, %cond.true.4 ], [ %14, %cond.false.7 ]
  %conv12 = fpext float %cond11 to double
  store double %conv12, double* %rot_media_y, align 8, !tbaa !134
  %15 = load double, double* %rot_media_x, align 8, !tbaa !134
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 22
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %17 = load float, float* %arrayidx13, align 4, !tbaa !135
  %conv14 = fpext float %17 to double
  %mul = fmul double %15, %conv14
  %div = fdiv double %mul, 7.200000e+01
  %add = fadd double %div, 5.000000e-01
  %conv15 = fptosi double %add to i32
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 13
  store i32 %conv15, i32* %width, align 4, !tbaa !66
  %19 = load double, double* %rot_media_y, align 8, !tbaa !134
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 22
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution16, i32 0, i64 1
  %21 = load float, float* %arrayidx17, align 4, !tbaa !135
  %conv18 = fpext float %21 to double
  %mul19 = fmul double %19, %conv18
  %div20 = fdiv double %mul19, 7.200000e+01
  %add21 = fadd double %div20, 5.000000e-01
  %conv22 = fptosi double %add21 to i32
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 14
  store i32 %conv22, i32* %height, align 4, !tbaa !65
  %23 = bitcast double* %rot_media_y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast double* %rot_media_x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %rot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_set_media_size(%struct.gx_device_s* %dev, double %media_width, double %media_height) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %media_width.addr = alloca double, align 8
  %media_height.addr = alloca double, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store double %media_width, double* %media_width.addr, align 8, !tbaa !134
  store double %media_height, double* %media_height.addr, align 8, !tbaa !134
  %0 = load double, double* %media_width.addr, align 8, !tbaa !134
  %conv = fptrunc double %0 to float
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  store float %conv, float* %arrayidx, align 4, !tbaa !135
  %2 = load double, double* %media_height.addr, align 8, !tbaa !134
  %conv1 = fptrunc double %2 to float
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 19
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize2, i32 0, i64 1
  store float %conv1, float* %arrayidx3, align 4, !tbaa !135
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_set_hwsize_from_media(%struct.gx_device_s* %4) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_copy_color_procs(%struct.gx_device_s* %dev, %struct.gx_device_s* %target) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %from_cmyk = alloca i64 (%struct.gx_device_s*, i16*)*, align 8
  %from_rgb = alloca i64 (%struct.gx_device_s*, i16*)*, align 8
  %to_rgb = alloca i32 (%struct.gx_device_s*, i64, i16*)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %0 = bitcast i64 (%struct.gx_device_s*, i16*)** %from_cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 15
  %2 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !137
  store i64 (%struct.gx_device_s*, i16*)* %2, i64 (%struct.gx_device_s*, i16*)** %from_cmyk, align 8, !tbaa !1
  %3 = bitcast i64 (%struct.gx_device_s*, i16*)** %from_rgb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 5
  %5 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !138
  store i64 (%struct.gx_device_s*, i16*)* %5, i64 (%struct.gx_device_s*, i16*)** %from_rgb, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, i64, i16*)** %to_rgb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 6
  %8 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !139
  store i32 (%struct.gx_device_s*, i64, i16*)* %8, i32 (%struct.gx_device_s*, i64, i16*)** %to_rgb, align 8, !tbaa !1
  %9 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %from_cmyk, align 8, !tbaa !1
  %cmp = icmp eq i64 (%struct.gx_device_s*, i16*)* %9, @gx_forward_map_cmyk_color
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %from_cmyk, align 8, !tbaa !1
  %cmp3 = icmp eq i64 (%struct.gx_device_s*, i16*)* %10, @cmyk_1bit_map_cmyk_color
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %11 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %from_cmyk, align 8, !tbaa !1
  %cmp5 = icmp eq i64 (%struct.gx_device_s*, i16*)* %11, @cmyk_8bit_map_cmyk_color
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %map_cmyk_color7 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 15
  %13 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color7, align 8, !tbaa !137
  store i64 (%struct.gx_device_s*, i16*)* %13, i64 (%struct.gx_device_s*, i16*)** %from_cmyk, align 8, !tbaa !1
  %14 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %from_cmyk, align 8, !tbaa !1
  %cmp8 = icmp eq i64 (%struct.gx_device_s*, i16*)* %14, @cmyk_1bit_map_cmyk_color
  br i1 %cmp8, label %cond.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.then
  %15 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %from_cmyk, align 8, !tbaa !1
  %cmp10 = icmp eq i64 (%struct.gx_device_s*, i16*)* %15, @cmyk_8bit_map_cmyk_color
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.9, %if.then
  %16 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %from_cmyk, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 (%struct.gx_device_s*, i16*)* [ %16, %cond.true ], [ @gx_forward_map_cmyk_color, %cond.false ]
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 42
  %map_cmyk_color12 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs11, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* %cond, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color12, align 8, !tbaa !137
  br label %if.end

if.end:                                           ; preds = %cond.end, %lor.lhs.false.4
  %18 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %from_rgb, align 8, !tbaa !1
  %cmp13 = icmp eq i64 (%struct.gx_device_s*, i16*)* %18, @gx_forward_map_rgb_color
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.end
  %19 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %from_rgb, align 8, !tbaa !1
  %cmp15 = icmp eq i64 (%struct.gx_device_s*, i16*)* %19, @gx_default_rgb_map_rgb_color
  br i1 %cmp15, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %lor.lhs.false.14, %if.end
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 42
  %map_rgb_color18 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs17, i32 0, i32 5
  %21 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color18, align 8, !tbaa !138
  store i64 (%struct.gx_device_s*, i16*)* %21, i64 (%struct.gx_device_s*, i16*)** %from_rgb, align 8, !tbaa !1
  %22 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %from_rgb, align 8, !tbaa !1
  %cmp19 = icmp eq i64 (%struct.gx_device_s*, i16*)* %22, @gx_default_rgb_map_rgb_color
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.then.16
  %23 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %from_rgb, align 8, !tbaa !1
  br label %cond.end.22

cond.false.21:                                    ; preds = %if.then.16
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi i64 (%struct.gx_device_s*, i16*)* [ %23, %cond.true.20 ], [ @gx_forward_map_rgb_color, %cond.false.21 ]
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %map_rgb_color25 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs24, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* %cond23, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color25, align 8, !tbaa !138
  br label %if.end.26

if.end.26:                                        ; preds = %cond.end.22, %lor.lhs.false.14
  %25 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %to_rgb, align 8, !tbaa !1
  %cmp27 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %25, @gx_forward_map_color_rgb
  br i1 %cmp27, label %if.then.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.end.26
  %26 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %to_rgb, align 8, !tbaa !1
  %cmp29 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %26, @cmyk_1bit_map_color_rgb
  br i1 %cmp29, label %if.then.32, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.28
  %27 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %to_rgb, align 8, !tbaa !1
  %cmp31 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %27, @cmyk_8bit_map_color_rgb
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.28, %if.end.26
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 42
  %map_color_rgb34 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs33, i32 0, i32 6
  %29 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb34, align 8, !tbaa !139
  store i32 (%struct.gx_device_s*, i64, i16*)* %29, i32 (%struct.gx_device_s*, i64, i16*)** %to_rgb, align 8, !tbaa !1
  %30 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %to_rgb, align 8, !tbaa !1
  %cmp35 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %30, @cmyk_1bit_map_color_rgb
  br i1 %cmp35, label %cond.true.38, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.then.32
  %31 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %to_rgb, align 8, !tbaa !1
  %cmp37 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %31, @cmyk_8bit_map_color_rgb
  br i1 %cmp37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %lor.lhs.false.36, %if.then.32
  %32 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %to_rgb, align 8, !tbaa !1
  br label %cond.end.40

cond.false.39:                                    ; preds = %lor.lhs.false.36
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi i32 (%struct.gx_device_s*, i64, i16*)* [ %32, %cond.true.38 ], [ @gx_forward_map_color_rgb, %cond.false.39 ]
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 42
  %map_color_rgb43 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs42, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* %cond41, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb43, align 8, !tbaa !139
  br label %if.end.44

if.end.44:                                        ; preds = %cond.end.40, %lor.lhs.false.30
  %34 = bitcast i32 (%struct.gx_device_s*, i64, i16*)** %to_rgb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i64 (%struct.gx_device_s*, i16*)** %from_rgb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i64 (%struct.gx_device_s*, i16*)** %from_cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  ret void
}

declare i64 @gx_forward_map_cmyk_color(%struct.gx_device_s*, i16*) #2

declare i64 @cmyk_1bit_map_cmyk_color(%struct.gx_device_s*, i16*) #2

declare i64 @cmyk_8bit_map_cmyk_color(%struct.gx_device_s*, i16*) #2

declare i64 @gx_forward_map_rgb_color(%struct.gx_device_s*, i16*) #2

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #2

declare i32 @gx_forward_map_color_rgb(%struct.gx_device_s*, i64, i16*) #2

declare i32 @cmyk_1bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #2

declare i32 @cmyk_8bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #2

; Function Attrs: nounwind uwtable
define void @gx_device_copy_params(%struct.gx_device_s* %dev, %struct.gx_device_s* %target) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 13
  %1 = load i32, i32* %width, align 4, !tbaa !66
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 13
  store i32 %1, i32* %width1, align 4, !tbaa !66
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 14
  %4 = load i32, i32* %height, align 4, !tbaa !65
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 14
  store i32 %4, i32* %height2, align 4, !tbaa !65
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 19
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i32 0
  %7 = bitcast float* %arraydecay to i8*
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %MediaSize3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 19
  %arraydecay4 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize3, i32 0, i32 0
  %9 = bitcast float* %arraydecay4 to i8*
  %call = call i8* @memcpy(i8* %7, i8* %9, i64 8) #7
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ImagingBBox = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 20
  %arraydecay5 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox, i32 0, i32 0
  %11 = bitcast float* %arraydecay5 to i8*
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %ImagingBBox6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 20
  %arraydecay7 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox6, i32 0, i32 0
  %13 = bitcast float* %arraydecay7 to i8*
  %call8 = call i8* @memcpy(i8* %11, i8* %13, i64 16) #7
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %ImagingBBox_set = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 21
  %15 = load i32, i32* %ImagingBBox_set, align 4, !tbaa !140
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ImagingBBox_set9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 21
  store i32 %15, i32* %ImagingBBox_set9, align 4, !tbaa !140
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 22
  %arraydecay10 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i32 0
  %18 = bitcast float* %arraydecay10 to i8*
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %HWResolution11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 22
  %arraydecay12 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution11, i32 0, i32 0
  %20 = bitcast float* %arraydecay12 to i8*
  %call13 = call i8* @memcpy(i8* %18, i8* %20, i64 8) #7
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MarginsHWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 23
  %arraydecay14 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution, i32 0, i32 0
  %22 = bitcast float* %arraydecay14 to i8*
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %MarginsHWResolution15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 23
  %arraydecay16 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution15, i32 0, i32 0
  %24 = bitcast float* %arraydecay16 to i8*
  %call17 = call i8* @memcpy(i8* %22, i8* %24, i64 8) #7
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %Margins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 24
  %arraydecay18 = getelementptr inbounds [2 x float], [2 x float]* %Margins, i32 0, i32 0
  %26 = bitcast float* %arraydecay18 to i8*
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %Margins19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 24
  %arraydecay20 = getelementptr inbounds [2 x float], [2 x float]* %Margins19, i32 0, i32 0
  %28 = bitcast float* %arraydecay20 to i8*
  %call21 = call i8* @memcpy(i8* %26, i8* %28, i64 8) #7
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 25
  %arraydecay22 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i32 0
  %30 = bitcast float* %arraydecay22 to i8*
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %HWMargins23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 25
  %arraydecay24 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins23, i32 0, i32 0
  %32 = bitcast float* %arraydecay24 to i8*
  %call25 = call i8* @memcpy(i8* %30, i8* %32, i64 16) #7
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 26
  %34 = load i64, i64* %PageCount, align 8, !tbaa !63
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 26
  store i64 %34, i64* %PageCount26, align 8, !tbaa !63
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %MaxPatternBitmap = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 36
  %37 = load i32, i32* %MaxPatternBitmap, align 4, !tbaa !141
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MaxPatternBitmap27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 36
  store i32 %37, i32* %MaxPatternBitmap27, align 4, !tbaa !141
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_copy_color_params(%struct.gx_device_s* %39, %struct.gx_device_s* %40) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_parse_output_file_name(%struct.gs_parsed_file_name_s* %pfn, i8** %pfmt, i8* %fname, i32 %fnlen, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_parsed_file_name_s*, align 8
  %pfmt.addr = alloca i8**, align 8
  %fname.addr = alloca i8*, align 8
  %fnlen.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_parsed_file_name_s* %pfn, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  store i8** %pfmt, i8*** %pfmt.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %fnlen, i32* %fnlen.addr, align 4, !tbaa !30
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8**, i8*** %pfmt.addr, align 8, !tbaa !1
  store i8* null, i8** %1, align 8, !tbaa !1
  %2 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %2, i32 0, i32 0
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %memory1, align 8, !tbaa !142
  %3 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %3, i32 0, i32 1
  store %struct.gx_io_device_s* null, %struct.gx_io_device_s** %iodev, align 8, !tbaa !144
  %4 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname2 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %4, i32 0, i32 2
  store i8* null, i8** %fname2, align 8, !tbaa !145
  %5 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %5, i32 0, i32 3
  store i32 0, i32* %len, align 4, !tbaa !146
  %6 = load i32, i32* %fnlen.addr, align 4, !tbaa !30
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %9 = load i32, i32* %fnlen.addr, align 4, !tbaa !30
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s* %7, i8* %8, i32 %9, %struct.gs_memory_s* %10) #5
  store i32 %call, i32* %code, align 4, !tbaa !30
  %11 = load i32, i32* %code, align 4, !tbaa !30
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %if.then.4, label %if.end.16

if.then.4:                                        ; preds = %if.end
  %12 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !75
  %conv = sext i8 %13 to i32
  %cmp5 = icmp eq i32 %conv, 37
  br i1 %cmp5, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.then.4
  %14 = load i32, i32* %fnlen.addr, align 4, !tbaa !30
  %15 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len8 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %15, i32 0, i32 3
  store i32 %14, i32* %len8, align 4, !tbaa !146
  %16 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %17 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname9 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %17, i32 0, i32 2
  store i8* %16, i8** %fname9, align 8, !tbaa !145
  %18 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %19 = load i8**, i8*** %pfmt.addr, align 8, !tbaa !1
  %call10 = call i32 @gx_parse_output_format(%struct.gs_parsed_file_name_s* %18, i8** %19) #5
  store i32 %call10, i32* %code, align 4, !tbaa !30
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.then.4
  %20 = load i32, i32* %code, align 4, !tbaa !30
  %cmp12 = icmp slt i32 %20, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %21 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %22 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev17 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %22, i32 0, i32 1
  %23 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev17, align 8, !tbaa !144
  %tobool = icmp ne %struct.gx_io_device_s* %23, null
  br i1 %tobool, label %if.end.50, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  %24 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len19 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %24, i32 0, i32 3
  %25 = load i32, i32* %len19, align 4, !tbaa !146
  %cmp20 = icmp eq i32 %25, 1
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.18
  %26 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname22 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %26, i32 0, i32 2
  %27 = load i8*, i8** %fname22, align 8, !tbaa !145
  %arrayidx23 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx23, align 1, !tbaa !75
  %conv24 = sext i8 %28 to i32
  %cmp25 = icmp eq i32 %conv24, 45
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call28 = call %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 7) #5
  %30 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev29 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %30, i32 0, i32 1
  store %struct.gx_io_device_s* %call28, %struct.gx_io_device_s** %iodev29, align 8, !tbaa !144
  %31 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname30 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %31, i32 0, i32 2
  store i8* null, i8** %fname30, align 8, !tbaa !145
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true, %if.then.18
  %32 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname31 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %32, i32 0, i32 2
  %33 = load i8*, i8** %fname31, align 8, !tbaa !145
  %arrayidx32 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx32, align 1, !tbaa !75
  %conv33 = sext i8 %34 to i32
  %cmp34 = icmp eq i32 %conv33, 124
  br i1 %cmp34, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %if.else
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call37 = call %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 5) #5
  %36 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev38 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %36, i32 0, i32 1
  store %struct.gx_io_device_s* %call37, %struct.gx_io_device_s** %iodev38, align 8, !tbaa !144
  %37 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname39 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %37, i32 0, i32 2
  %38 = load i8*, i8** %fname39, align 8, !tbaa !145
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %fname39, align 8, !tbaa !145
  %39 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len40 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %39, i32 0, i32 3
  %40 = load i32, i32* %len40, align 4, !tbaa !146
  %dec = add i32 %40, -1
  store i32 %dec, i32* %len40, align 4, !tbaa !146
  br label %if.end.44

if.else.41:                                       ; preds = %if.else
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call42 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %41, i32 0) #5
  %42 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev43 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %42, i32 0, i32 1
  store %struct.gx_io_device_s* %call42, %struct.gx_io_device_s** %iodev43, align 8, !tbaa !144
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.36
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.27
  %43 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev46 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %43, i32 0, i32 1
  %44 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev46, align 8, !tbaa !144
  %tobool47 = icmp ne %struct.gx_io_device_s* %44, null
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.45
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.end.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.16
  %45 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname51 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %45, i32 0, i32 2
  %46 = load i8*, i8** %fname51, align 8, !tbaa !145
  %tobool52 = icmp ne i8* %46, null
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.end.50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.end.50
  %47 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %48 = load i8**, i8*** %pfmt.addr, align 8, !tbaa !1
  %call55 = call i32 @gx_parse_output_format(%struct.gs_parsed_file_name_s* %47, i8** %48) #5
  store i32 %call55, i32* %code, align 4, !tbaa !30
  %49 = load i32, i32* %code, align 4, !tbaa !30
  %cmp56 = icmp slt i32 %49, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  %50 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.54
  %51 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %iodev60 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %51, i32 0, i32 1
  %52 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev60, align 8, !tbaa !144
  %dname = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %52, i32 0, i32 0
  %53 = load i8*, i8** %dname, align 8, !tbaa !147
  %call61 = call i64 @strlen(i8* %53) #6
  %54 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len62 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %54, i32 0, i32 3
  %55 = load i32, i32* %len62, align 4, !tbaa !146
  %conv63 = zext i32 %55 to i64
  %add = add i64 %call61, %conv63
  %56 = load i32, i32* %code, align 4, !tbaa !30
  %conv64 = sext i32 %56 to i64
  %add65 = add i64 %add, %conv64
  %cmp66 = icmp uge i64 %add65, 4096
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.59
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %if.end.59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.69, %if.then.68, %if.then.58, %if.then.53, %if.then.48, %if.then.14, %if.then
  %57 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = load i32, i32* %retval
  ret i32 %58
}

declare i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s*, i8*, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_parse_output_format(%struct.gs_parsed_file_name_s* %pfn, i8** %pfmt) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_parsed_file_name_s*, align 8
  %pfmt.addr = alloca i8**, align 8
  %have_format = alloca i32, align 4
  %field = alloca i32, align 4
  %width = alloca [2 x i32], align 4
  %int_width = alloca i32, align 4
  %w = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_parsed_file_name_s* %pfn, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  store i8** %pfmt, i8*** %pfmt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %have_format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %have_format, align 4, !tbaa !30
  %1 = bitcast i32* %field to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [2 x i32]* %width to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %int_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 12, i32* %int_width, align 4, !tbaa !30
  %4 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %w, align 4, !tbaa !30
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %width, i32 0, i64 1
  store i32 0, i32* %arrayidx, align 4, !tbaa !30
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %width, i32 0, i64 0
  store i32 0, i32* %arrayidx1, align 4, !tbaa !30
  store i32 0, i32* %i, align 4, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !30
  %7 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %7, i32 0, i32 3
  %8 = load i32, i32* %len, align 4, !tbaa !146
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end.134

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %fname, align 8, !tbaa !145
  %arrayidx2 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx2, align 1, !tbaa !75
  %conv = sext i8 %12 to i32
  %cmp3 = icmp eq i32 %conv, 37
  br i1 %cmp3, label %if.then, label %if.end.132

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !30
  %add = add i32 %13, 1
  %14 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len5 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %14, i32 0, i32 3
  %15 = load i32, i32* %len5, align 4, !tbaa !146
  %cmp6 = icmp ult i32 %add, %15
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %16 = load i32, i32* %i, align 4, !tbaa !30
  %add8 = add i32 %16, 1
  %idxprom9 = zext i32 %add8 to i64
  %17 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname10 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %17, i32 0, i32 2
  %18 = load i8*, i8** %fname10, align 8, !tbaa !145
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 %idxprom9
  %19 = load i8, i8* %arrayidx11, align 1, !tbaa !75
  %conv12 = sext i8 %19 to i32
  %cmp13 = icmp eq i32 %conv12, 37
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true
  %20 = load i32, i32* %i, align 4, !tbaa !30
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !30
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %if.then
  %21 = load i32, i32* %have_format, align 4, !tbaa !30
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  store i32 1, i32* %have_format, align 4, !tbaa !30
  store i32 -1, i32* %field, align 4, !tbaa !30
  br label %for.cond.18

for.cond.18:                                      ; preds = %if.then.102, %if.then.89, %if.then.69, %if.then.43, %if.end.17
  %22 = load i32, i32* %i, align 4, !tbaa !30
  %inc19 = add i32 %22, 1
  store i32 %inc19, i32* %i, align 4, !tbaa !30
  %23 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %len20 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %23, i32 0, i32 3
  %24 = load i32, i32* %len20, align 4, !tbaa !146
  %cmp21 = icmp eq i32 %inc19, %24
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %for.cond.18
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %for.cond.18
  %25 = load i32, i32* %field, align 4, !tbaa !30
  switch i32 %25, label %sw.default [
    i32 -1, label %sw.bb
    i32 2, label %sw.bb.94
    i32 3, label %sw.bb.104
  ]

sw.bb:                                            ; preds = %if.else
  br i1 false, label %land.lhs.true.24, label %cond.false

land.lhs.true.24:                                 ; preds = %sw.bb
  br i1 true, label %cond.false, label %land.lhs.true.25

land.lhs.true.25:                                 ; preds = %land.lhs.true.24
  %26 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom26 = zext i32 %26 to i64
  %27 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname27 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %27, i32 0, i32 2
  %28 = load i8*, i8** %fname27, align 8, !tbaa !145
  %arrayidx28 = getelementptr inbounds i8, i8* %28, i64 %idxprom26
  %29 = load i8, i8* %arrayidx28, align 1, !tbaa !75
  %conv29 = sext i8 %29 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.25
  %30 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom32 = zext i32 %30 to i64
  %31 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname33 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %31, i32 0, i32 2
  %32 = load i8*, i8** %fname33, align 8, !tbaa !145
  %arrayidx34 = getelementptr inbounds i8, i8* %32, i64 %idxprom32
  %33 = load i8, i8* %arrayidx34, align 1, !tbaa !75
  %conv35 = sext i8 %33 to i32
  %call = call i8* @__rawmemchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %conv35) #5
  %tobool36 = icmp ne i8* %call, null
  br i1 %tobool36, label %if.then.43, label %if.else.44

cond.false:                                       ; preds = %land.lhs.true.25, %land.lhs.true.24, %sw.bb
  %34 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom37 = zext i32 %34 to i64
  %35 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname38 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %35, i32 0, i32 2
  %36 = load i8*, i8** %fname38, align 8, !tbaa !145
  %arrayidx39 = getelementptr inbounds i8, i8* %36, i64 %idxprom37
  %37 = load i8, i8* %arrayidx39, align 1, !tbaa !75
  %conv40 = sext i8 %37 to i32
  %call41 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %conv40) #7
  %tobool42 = icmp ne i8* %call41, null
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %cond.false, %cond.true
  br label %for.cond.18

if.else.44:                                       ; preds = %cond.false, %cond.true
  %38 = load i32, i32* %field, align 4, !tbaa !30
  %inc45 = add nsw i32 %38, 1
  store i32 %inc45, i32* %field, align 4, !tbaa !30
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44
  br label %sw.default

sw.default:                                       ; preds = %if.else, %if.end.46
  br i1 false, label %land.lhs.true.47, label %cond.false.62

land.lhs.true.47:                                 ; preds = %sw.default
  br i1 true, label %cond.false.62, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %land.lhs.true.47
  %39 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom49 = zext i32 %39 to i64
  %40 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname50 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %40, i32 0, i32 2
  %41 = load i8*, i8** %fname50, align 8, !tbaa !145
  %arrayidx51 = getelementptr inbounds i8, i8* %41, i64 %idxprom49
  %42 = load i8, i8* %arrayidx51, align 1, !tbaa !75
  %conv52 = sext i8 %42 to i32
  %cmp53 = icmp eq i32 %conv52, 0
  br i1 %cmp53, label %cond.true.55, label %cond.false.62

cond.true.55:                                     ; preds = %land.lhs.true.48
  %43 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom56 = zext i32 %43 to i64
  %44 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname57 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %44, i32 0, i32 2
  %45 = load i8*, i8** %fname57, align 8, !tbaa !145
  %arrayidx58 = getelementptr inbounds i8, i8* %45, i64 %idxprom56
  %46 = load i8, i8* %arrayidx58, align 1, !tbaa !75
  %conv59 = sext i8 %46 to i32
  %call60 = call i8* @__rawmemchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 %conv59) #5
  %tobool61 = icmp ne i8* %call60, null
  br i1 %tobool61, label %if.then.69, label %if.else.79

cond.false.62:                                    ; preds = %land.lhs.true.48, %land.lhs.true.47, %sw.default
  %47 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom63 = zext i32 %47 to i64
  %48 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname64 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %48, i32 0, i32 2
  %49 = load i8*, i8** %fname64, align 8, !tbaa !145
  %arrayidx65 = getelementptr inbounds i8, i8* %49, i64 %idxprom63
  %50 = load i8, i8* %arrayidx65, align 1, !tbaa !75
  %conv66 = sext i8 %50 to i32
  %call67 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 %conv66) #7
  %tobool68 = icmp ne i8* %call67, null
  br i1 %tobool68, label %if.then.69, label %if.else.79

if.then.69:                                       ; preds = %cond.false.62, %cond.true.55
  %51 = load i32, i32* %field, align 4, !tbaa !30
  %idxprom70 = sext i32 %51 to i64
  %arrayidx71 = getelementptr inbounds [2 x i32], [2 x i32]* %width, i32 0, i64 %idxprom70
  %52 = load i32, i32* %arrayidx71, align 4, !tbaa !30
  %mul = mul nsw i32 %52, 10
  %53 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom72 = zext i32 %53 to i64
  %54 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname73 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %54, i32 0, i32 2
  %55 = load i8*, i8** %fname73, align 8, !tbaa !145
  %arrayidx74 = getelementptr inbounds i8, i8* %55, i64 %idxprom72
  %56 = load i8, i8* %arrayidx74, align 1, !tbaa !75
  %conv75 = sext i8 %56 to i32
  %add76 = add nsw i32 %mul, %conv75
  %sub = sub nsw i32 %add76, 48
  %57 = load i32, i32* %field, align 4, !tbaa !30
  %idxprom77 = sext i32 %57 to i64
  %arrayidx78 = getelementptr inbounds [2 x i32], [2 x i32]* %width, i32 0, i64 %idxprom77
  store i32 %sub, i32* %arrayidx78, align 4, !tbaa !30
  br label %for.cond.18

if.else.79:                                       ; preds = %cond.false.62, %cond.true.55
  %58 = load i32, i32* %field, align 4, !tbaa !30
  %cmp80 = icmp eq i32 0, %58
  br i1 %cmp80, label %land.lhs.true.82, label %if.else.91

land.lhs.true.82:                                 ; preds = %if.else.79
  %59 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom83 = zext i32 %59 to i64
  %60 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname84 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %60, i32 0, i32 2
  %61 = load i8*, i8** %fname84, align 8, !tbaa !145
  %arrayidx85 = getelementptr inbounds i8, i8* %61, i64 %idxprom83
  %62 = load i8, i8* %arrayidx85, align 1, !tbaa !75
  %conv86 = sext i8 %62 to i32
  %cmp87 = icmp eq i32 46, %conv86
  br i1 %cmp87, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %land.lhs.true.82
  %63 = load i32, i32* %field, align 4, !tbaa !30
  %inc90 = add nsw i32 %63, 1
  store i32 %inc90, i32* %field, align 4, !tbaa !30
  br label %for.cond.18

if.else.91:                                       ; preds = %land.lhs.true.82, %if.else.79
  store i32 2, i32* %field, align 4, !tbaa !30
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.91
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92
  br label %sw.bb.94

sw.bb.94:                                         ; preds = %if.else, %if.end.93
  %64 = load i32, i32* %field, align 4, !tbaa !30
  %inc95 = add nsw i32 %64, 1
  store i32 %inc95, i32* %field, align 4, !tbaa !30
  %65 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom96 = zext i32 %65 to i64
  %66 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname97 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %66, i32 0, i32 2
  %67 = load i8*, i8** %fname97, align 8, !tbaa !145
  %arrayidx98 = getelementptr inbounds i8, i8* %67, i64 %idxprom96
  %68 = load i8, i8* %arrayidx98, align 1, !tbaa !75
  %conv99 = sext i8 %68 to i32
  %cmp100 = icmp eq i32 108, %conv99
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %sw.bb.94
  store i32 24, i32* %int_width, align 4, !tbaa !30
  br label %for.cond.18

if.end.103:                                       ; preds = %sw.bb.94
  br label %sw.bb.104

sw.bb.104:                                        ; preds = %if.else, %if.end.103
  br i1 false, label %land.lhs.true.105, label %cond.false.120

land.lhs.true.105:                                ; preds = %sw.bb.104
  br i1 true, label %cond.false.120, label %land.lhs.true.106

land.lhs.true.106:                                ; preds = %land.lhs.true.105
  %69 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom107 = zext i32 %69 to i64
  %70 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname108 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %70, i32 0, i32 2
  %71 = load i8*, i8** %fname108, align 8, !tbaa !145
  %arrayidx109 = getelementptr inbounds i8, i8* %71, i64 %idxprom107
  %72 = load i8, i8* %arrayidx109, align 1, !tbaa !75
  %conv110 = sext i8 %72 to i32
  %cmp111 = icmp eq i32 %conv110, 0
  br i1 %cmp111, label %cond.true.113, label %cond.false.120

cond.true.113:                                    ; preds = %land.lhs.true.106
  %73 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom114 = zext i32 %73 to i64
  %74 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname115 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %74, i32 0, i32 2
  %75 = load i8*, i8** %fname115, align 8, !tbaa !145
  %arrayidx116 = getelementptr inbounds i8, i8* %75, i64 %idxprom114
  %76 = load i8, i8* %arrayidx116, align 1, !tbaa !75
  %conv117 = sext i8 %76 to i32
  %call118 = call i8* @__rawmemchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 %conv117) #5
  %tobool119 = icmp ne i8* %call118, null
  br i1 %tobool119, label %if.then.127, label %if.else.131

cond.false.120:                                   ; preds = %land.lhs.true.106, %land.lhs.true.105, %sw.bb.104
  %77 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom121 = zext i32 %77 to i64
  %78 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname122 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %78, i32 0, i32 2
  %79 = load i8*, i8** %fname122, align 8, !tbaa !145
  %arrayidx123 = getelementptr inbounds i8, i8* %79, i64 %idxprom121
  %80 = load i8, i8* %arrayidx123, align 1, !tbaa !75
  %conv124 = sext i8 %80 to i32
  %call125 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 %conv124) #7
  %tobool126 = icmp ne i8* %call125, null
  br i1 %tobool126, label %if.then.127, label %if.else.131

if.then.127:                                      ; preds = %cond.false.120, %cond.true.113
  %81 = load i32, i32* %i, align 4, !tbaa !30
  %idxprom128 = zext i32 %81 to i64
  %82 = load %struct.gs_parsed_file_name_s*, %struct.gs_parsed_file_name_s** %pfn.addr, align 8, !tbaa !1
  %fname129 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %82, i32 0, i32 2
  %83 = load i8*, i8** %fname129, align 8, !tbaa !145
  %arrayidx130 = getelementptr inbounds i8, i8* %83, i64 %idxprom128
  %84 = load i8**, i8*** %pfmt.addr, align 8, !tbaa !1
  store i8* %arrayidx130, i8** %84, align 8, !tbaa !1
  br label %sw.epilog

if.else.131:                                      ; preds = %cond.false.120, %cond.true.113
  store i32 -22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then.127
  br label %for.end

for.end:                                          ; preds = %sw.epilog
  br label %if.end.132

if.end.132:                                       ; preds = %for.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.132, %if.then.15
  %85 = load i32, i32* %i, align 4, !tbaa !30
  %inc133 = add i32 %85, 1
  store i32 %inc133, i32* %i, align 4, !tbaa !30
  br label %for.cond

for.end.134:                                      ; preds = %for.cond
  %86 = load i32, i32* %have_format, align 4, !tbaa !30
  %tobool135 = icmp ne i32 %86, 0
  br i1 %tobool135, label %if.then.136, label %if.end.152

if.then.136:                                      ; preds = %for.end.134
  %arrayidx137 = getelementptr inbounds [2 x i32], [2 x i32]* %width, i32 0, i64 0
  %87 = load i32, i32* %arrayidx137, align 4, !tbaa !30
  %arrayidx138 = getelementptr inbounds [2 x i32], [2 x i32]* %width, i32 0, i64 1
  %88 = load i32, i32* %arrayidx138, align 4, !tbaa !30
  %cmp139 = icmp sgt i32 %87, %88
  br i1 %cmp139, label %cond.true.141, label %cond.false.143

cond.true.141:                                    ; preds = %if.then.136
  %arrayidx142 = getelementptr inbounds [2 x i32], [2 x i32]* %width, i32 0, i64 0
  %89 = load i32, i32* %arrayidx142, align 4, !tbaa !30
  br label %cond.end

cond.false.143:                                   ; preds = %if.then.136
  %arrayidx144 = getelementptr inbounds [2 x i32], [2 x i32]* %width, i32 0, i64 1
  %90 = load i32, i32* %arrayidx144, align 4, !tbaa !30
  br label %cond.end

cond.end:                                         ; preds = %cond.false.143, %cond.true.141
  %cond = phi i32 [ %89, %cond.true.141 ], [ %90, %cond.false.143 ]
  store i32 %cond, i32* %w, align 4, !tbaa !30
  %91 = load i32, i32* %w, align 4, !tbaa !30
  %92 = load i32, i32* %int_width, align 4, !tbaa !30
  %cmp145 = icmp sgt i32 %91, %92
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %cond.end
  %93 = load i32, i32* %w, align 4, !tbaa !30
  br label %cond.end.149

cond.false.148:                                   ; preds = %cond.end
  %94 = load i32, i32* %int_width, align 4, !tbaa !30
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.148, %cond.true.147
  %cond150 = phi i32 [ %93, %cond.true.147 ], [ %94, %cond.false.148 ]
  %add151 = add nsw i32 %cond150, 5
  store i32 %add151, i32* %w, align 4, !tbaa !30
  br label %if.end.152

if.end.152:                                       ; preds = %cond.end.149, %for.end.134
  %95 = load i32, i32* %w, align 4, !tbaa !30
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.152, %if.else.131, %if.then.23, %if.then.16
  %96 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %int_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast [2 x i32]* %width to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %field to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %have_format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = load i32, i32* %retval
  ret i32 %102
}

declare %struct.gx_io_device_s* @gs_findiodevice(%struct.gs_memory_s*, i8*, i32) #2

declare %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_outputfile_is_separate_pages(i8* %fname, %struct.gs_memory_s* %memory) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %fmt = alloca i8*, align 8
  %parsed = alloca %struct.gs_parsed_file_name_s, align 8
  %code = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call to i32
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call1 = call i32 @gx_parse_output_file_name(%struct.gs_parsed_file_name_s* %parsed, i8** %fmt, i8* %3, i32 %conv, %struct.gs_memory_s* %5) #5
  store i32 %call1, i32* %code, align 4, !tbaa !30
  %6 = load i32, i32* %code, align 4, !tbaa !30
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %7 = load i8*, i8** %fmt, align 8, !tbaa !1
  %cmp3 = icmp ne i8* %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.end(i64 32, i8* %10) #1
  %11 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @gx_device_delete_output_file(%struct.gx_device_s* %dev, i8* %fname) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %parsed = alloca %struct.gs_parsed_file_name_s, align 8
  %fmt = alloca i8*, align 8
  %pfname = alloca i8*, align 8
  %code = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %count1 = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %pfname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !150
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !25
  %call = call i8* %5(%struct.gs_memory_s* %7, i32 4096, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0)) #5
  store i8* %call, i8** %pfname, align 8, !tbaa !1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %pfname, align 8, !tbaa !1
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %code, align 4, !tbaa !30
  br label %done

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %11) #6
  %conv = trunc i64 %call2 to i32
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !25
  %call4 = call i32 @gx_parse_output_file_name(%struct.gs_parsed_file_name_s* %parsed, i8** %fmt, i8* %10, i32 %conv, %struct.gs_memory_s* %13) #5
  store i32 %call4, i32* %code, align 4, !tbaa !30
  %14 = load i32, i32* %code, align 4, !tbaa !30
  %cmp5 = icmp slt i32 %14, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %done

if.end.8:                                         ; preds = %if.end
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %15 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !144
  %tobool = icmp ne %struct.gx_io_device_s* %15, null
  br i1 %tobool, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.end.8
  %16 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.13 to i64)), i64 1), label %land.lhs.true.9, label %cond.false

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %call10 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #6
  store i64 %call10, i64* %__s2_len, align 8, !tbaa !68
  %18 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp11 = icmp ult i64 %18, 4
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.9
  %19 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %iodev14 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %20 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev14, align 8, !tbaa !144
  %dname = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %dname, align 8, !tbaa !147
  store i8* %21, i8** %__s1, align 8, !tbaa !1
  %22 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !75
  %conv16 = zext i8 %24 to i32
  %25 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), align 1, !tbaa !75
  %conv17 = zext i8 %25 to i32
  %sub = sub nsw i32 %conv16, %conv17
  store i32 %sub, i32* %__result, align 4, !tbaa !30
  %26 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp18 = icmp ugt i64 %26, 0
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.50

land.lhs.true.20:                                 ; preds = %cond.true
  %27 = load i32, i32* %__result, align 4, !tbaa !30
  %cmp21 = icmp eq i32 %27, 0
  br i1 %cmp21, label %if.then.23, label %if.end.50

if.then.23:                                       ; preds = %land.lhs.true.20
  %28 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx24, align 1, !tbaa !75
  %conv25 = zext i8 %29 to i32
  %30 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 1), align 1, !tbaa !75
  %conv26 = zext i8 %30 to i32
  %sub27 = sub nsw i32 %conv25, %conv26
  store i32 %sub27, i32* %__result, align 4, !tbaa !30
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp28 = icmp ugt i64 %31, 1
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.49

land.lhs.true.30:                                 ; preds = %if.then.23
  %32 = load i32, i32* %__result, align 4, !tbaa !30
  %cmp31 = icmp eq i32 %32, 0
  br i1 %cmp31, label %if.then.33, label %if.end.49

if.then.33:                                       ; preds = %land.lhs.true.30
  %33 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx34, align 1, !tbaa !75
  %conv35 = zext i8 %34 to i32
  %35 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 2), align 1, !tbaa !75
  %conv36 = zext i8 %35 to i32
  %sub37 = sub nsw i32 %conv35, %conv36
  store i32 %sub37, i32* %__result, align 4, !tbaa !30
  %36 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp38 = icmp ugt i64 %36, 2
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.48

land.lhs.true.40:                                 ; preds = %if.then.33
  %37 = load i32, i32* %__result, align 4, !tbaa !30
  %cmp41 = icmp eq i32 %37, 0
  br i1 %cmp41, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %land.lhs.true.40
  %38 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %38, i64 3
  %39 = load i8, i8* %arrayidx44, align 1, !tbaa !75
  %conv45 = zext i8 %39 to i32
  %40 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 3), align 1, !tbaa !75
  %conv46 = zext i8 %40 to i32
  %sub47 = sub nsw i32 %conv45, %conv46
  store i32 %sub47, i32* %__result, align 4, !tbaa !30
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %land.lhs.true.40, %if.then.33
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true.30, %if.then.23
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true.20, %cond.true
  %41 = load i32, i32* %__result, align 4, !tbaa !30
  store i32 %41, i32* %tmp51, !tbaa !30
  %42 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %tmp51, !tbaa !30
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.9, %land.lhs.true
  %iodev52 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %45 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev52, align 8, !tbaa !144
  %dname53 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %45, i32 0, i32 0
  %46 = load i8*, i8** %dname53, align 8, !tbaa !147
  %call54 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.50
  %cond = phi i32 [ %44, %if.end.50 ], [ %call54, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !30
  %47 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %tmp, !tbaa !30
  %tobool55 = icmp ne i32 %49, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %cond.end
  br label %done

if.end.57:                                        ; preds = %cond.end, %if.end.8
  %50 = load i8*, i8** %fmt, align 8, !tbaa !1
  %tobool58 = icmp ne i8* %50, null
  br i1 %tobool58, label %if.then.59, label %if.else.77

if.then.59:                                       ; preds = %if.end.57
  %51 = bitcast i64* %count1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 26
  %53 = load i64, i64* %PageCount, align 8, !tbaa !63
  %add = add nsw i64 %53, 1
  store i64 %add, i64* %count1, align 8, !tbaa !68
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.59
  %54 = load i8*, i8** %fmt, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !75
  %conv61 = sext i8 %55 to i32
  %cmp62 = icmp ne i32 %conv61, 108
  br i1 %cmp62, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %56 = load i8*, i8** %fmt, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !75
  %conv64 = sext i8 %57 to i32
  %cmp65 = icmp ne i32 %conv64, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %58 = phi i1 [ false, %while.cond ], [ %cmp65, %land.rhs ]
  br i1 %58, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %59 = load i8*, i8** %fmt, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %incdec.ptr, i8** %fmt, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %60 = load i8*, i8** %fmt, align 8, !tbaa !1
  %61 = load i8, i8* %60, align 1, !tbaa !75
  %conv67 = sext i8 %61 to i32
  %cmp68 = icmp eq i32 %conv67, 108
  br i1 %cmp68, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %while.end
  %62 = load i8*, i8** %pfname, align 8, !tbaa !1
  %fname71 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %63 = load i8*, i8** %fname71, align 8, !tbaa !145
  %64 = load i64, i64* %count1, align 8, !tbaa !68
  %call72 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %62, i8* %63, i64 %64) #5
  br label %if.end.76

if.else:                                          ; preds = %while.end
  %65 = load i8*, i8** %pfname, align 8, !tbaa !1
  %fname73 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %66 = load i8*, i8** %fname73, align 8, !tbaa !145
  %67 = load i64, i64* %count1, align 8, !tbaa !68
  %conv74 = trunc i64 %67 to i32
  %call75 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %65, i8* %66, i32 %conv74) #5
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.70
  %68 = bitcast i64* %count1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  br label %if.end.94

if.else.77:                                       ; preds = %if.end.57
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 3
  %69 = load i32, i32* %len, align 4, !tbaa !146
  %tobool78 = icmp ne i32 %69, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.91

land.lhs.true.79:                                 ; preds = %if.else.77
  br i1 false, label %cond.true.80, label %cond.false.84

cond.true.80:                                     ; preds = %land.lhs.true.79
  %fname81 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %70 = load i8*, i8** %fname81, align 8, !tbaa !145
  %call82 = call i8* @__rawmemchr(i8* %70, i32 37) #5
  %tobool83 = icmp ne i8* %call82, null
  br i1 %tobool83, label %if.then.88, label %if.else.91

cond.false.84:                                    ; preds = %land.lhs.true.79
  %fname85 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %71 = load i8*, i8** %fname85, align 8, !tbaa !145
  %call86 = call i8* @strchr(i8* %71, i32 37) #7
  %tobool87 = icmp ne i8* %call86, null
  br i1 %tobool87, label %if.then.88, label %if.else.91

if.then.88:                                       ; preds = %cond.false.84, %cond.true.80
  %72 = load i8*, i8** %pfname, align 8, !tbaa !1
  %fname89 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %73 = load i8*, i8** %fname89, align 8, !tbaa !145
  %call90 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %72, i8* %73) #5
  br label %if.end.93

if.else.91:                                       ; preds = %cond.false.84, %cond.true.80, %if.else.77
  %74 = load i8*, i8** %pfname, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 0, i8* %arrayidx92, align 1, !tbaa !75
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.88
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.76
  %75 = load i8*, i8** %pfname, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx95, align 1, !tbaa !75
  %tobool96 = icmp ne i8 %76, 0
  br i1 %tobool96, label %if.then.97, label %if.end.103

if.then.97:                                       ; preds = %if.end.94
  %77 = load i8*, i8** %pfname, align 8, !tbaa !1
  %fname98 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  store i8* %77, i8** %fname98, align 8, !tbaa !145
  %fname99 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %78 = load i8*, i8** %fname99, align 8, !tbaa !145
  %call100 = call i64 @strlen(i8* %78) #6
  %conv101 = trunc i64 %call100 to i32
  %len102 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 3
  store i32 %conv101, i32* %len102, align 4, !tbaa !146
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.97, %if.end.94
  %iodev104 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %79 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev104, align 8, !tbaa !144
  %tobool105 = icmp ne %struct.gx_io_device_s* %79, null
  br i1 %tobool105, label %if.then.106, label %if.else.112

if.then.106:                                      ; preds = %if.end.103
  %iodev107 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %80 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev107, align 8, !tbaa !144
  %procs108 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %80, i32 0, i32 2
  %delete_file = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs108, i32 0, i32 5
  %81 = load i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*)** %delete_file, align 8, !tbaa !151
  %iodev109 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %82 = bitcast %struct.gx_io_device_s** %iodev109 to %struct.gx_io_device_s*
  %fname110 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %83 = load i8*, i8** %fname110, align 8, !tbaa !145
  %call111 = call i32 %81(%struct.gx_io_device_s* %82, i8* %83) #5
  store i32 %call111, i32* %code, align 4, !tbaa !30
  br label %if.end.113

if.else.112:                                      ; preds = %if.end.103
  store i32 -9, i32* %code, align 4, !tbaa !30
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.then.106
  br label %done

done:                                             ; preds = %if.end.113, %if.then.56, %if.then.7, %if.then
  %84 = load i8*, i8** %pfname, align 8, !tbaa !1
  %cmp114 = icmp ne i8* %84, null
  br i1 %cmp114, label %if.then.116, label %if.end.120

if.then.116:                                      ; preds = %done
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory117, align 8, !tbaa !25
  %procs118 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs118, i32 0, i32 2
  %87 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory119 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 3
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory119, align 8, !tbaa !25
  %90 = load i8*, i8** %pfname, align 8, !tbaa !1
  call void %87(%struct.gs_memory_s* %89, i8* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0)) #5
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.116, %done
  %91 = load i32, i32* %code, align 4, !tbaa !30
  %92 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i8** %pfname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.end(i64 32, i8* %95) #1
  ret i32 %91
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare i8* @__rawmemchr(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define i32 @gx_device_open_output_file(%struct.gx_device_s* %dev, i8* %fname, i32 %binary, i32 %positionable, %struct._IO_FILE** %pfile) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %binary.addr = alloca i32, align 4
  %positionable.addr = alloca i32, align 4
  %pfile.addr = alloca %struct._IO_FILE**, align 8
  %parsed = alloca %struct.gs_parsed_file_name_s, align 8
  %fmt = alloca i8*, align 8
  %pfname = alloca i8*, align 8
  %code = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %__s1_len67 = alloca i64, align 8
  %__s2_len69 = alloca i64, align 8
  %tmp70 = alloca i32, align 4
  %__s177 = alloca i8*, align 8
  %__result81 = alloca i32, align 4
  %tmp119 = alloca i32, align 4
  %count1 = alloca i64, align 8
  %fmode = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store i32 %binary, i32* %binary.addr, align 4, !tbaa !30
  store i32 %positionable, i32* %positionable.addr, align 4, !tbaa !30
  store %struct._IO_FILE** %pfile, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %pfname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !150
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !25
  %call = call i8* %5(%struct.gs_memory_s* %7, i32 4096, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #5
  store i8* %call, i8** %pfname, align 8, !tbaa !1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %pfname, align 8, !tbaa !1
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %code, align 4, !tbaa !30
  br label %done

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %11) #6
  %conv = trunc i64 %call2 to i32
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !25
  %call4 = call i32 @gx_parse_output_file_name(%struct.gs_parsed_file_name_s* %parsed, i8** %fmt, i8* %10, i32 %conv, %struct.gs_memory_s* %13) #5
  store i32 %call4, i32* %code, align 4, !tbaa !30
  %14 = load i32, i32* %code, align 4, !tbaa !30
  %cmp5 = icmp slt i32 %14, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %done

if.end.8:                                         ; preds = %if.end
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %15 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !144
  %tobool = icmp ne %struct.gx_io_device_s* %15, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.8
  %16 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.13 to i64)), i64 1), label %land.lhs.true.9, label %cond.false

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %call10 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #6
  store i64 %call10, i64* %__s2_len, align 8, !tbaa !68
  %18 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp11 = icmp ult i64 %18, 4
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.9
  %19 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %iodev14 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %20 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev14, align 8, !tbaa !144
  %dname = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %dname, align 8, !tbaa !147
  store i8* %21, i8** %__s1, align 8, !tbaa !1
  %22 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !75
  %conv16 = zext i8 %24 to i32
  %25 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), align 1, !tbaa !75
  %conv17 = zext i8 %25 to i32
  %sub = sub nsw i32 %conv16, %conv17
  store i32 %sub, i32* %__result, align 4, !tbaa !30
  %26 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp18 = icmp ugt i64 %26, 0
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.50

land.lhs.true.20:                                 ; preds = %cond.true
  %27 = load i32, i32* %__result, align 4, !tbaa !30
  %cmp21 = icmp eq i32 %27, 0
  br i1 %cmp21, label %if.then.23, label %if.end.50

if.then.23:                                       ; preds = %land.lhs.true.20
  %28 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx24, align 1, !tbaa !75
  %conv25 = zext i8 %29 to i32
  %30 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 1), align 1, !tbaa !75
  %conv26 = zext i8 %30 to i32
  %sub27 = sub nsw i32 %conv25, %conv26
  store i32 %sub27, i32* %__result, align 4, !tbaa !30
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp28 = icmp ugt i64 %31, 1
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.49

land.lhs.true.30:                                 ; preds = %if.then.23
  %32 = load i32, i32* %__result, align 4, !tbaa !30
  %cmp31 = icmp eq i32 %32, 0
  br i1 %cmp31, label %if.then.33, label %if.end.49

if.then.33:                                       ; preds = %land.lhs.true.30
  %33 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx34, align 1, !tbaa !75
  %conv35 = zext i8 %34 to i32
  %35 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 2), align 1, !tbaa !75
  %conv36 = zext i8 %35 to i32
  %sub37 = sub nsw i32 %conv35, %conv36
  store i32 %sub37, i32* %__result, align 4, !tbaa !30
  %36 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp38 = icmp ugt i64 %36, 2
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.48

land.lhs.true.40:                                 ; preds = %if.then.33
  %37 = load i32, i32* %__result, align 4, !tbaa !30
  %cmp41 = icmp eq i32 %37, 0
  br i1 %cmp41, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %land.lhs.true.40
  %38 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %38, i64 3
  %39 = load i8, i8* %arrayidx44, align 1, !tbaa !75
  %conv45 = zext i8 %39 to i32
  %40 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 3), align 1, !tbaa !75
  %conv46 = zext i8 %40 to i32
  %sub47 = sub nsw i32 %conv45, %conv46
  store i32 %sub47, i32* %__result, align 4, !tbaa !30
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.43, %land.lhs.true.40, %if.then.33
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true.30, %if.then.23
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true.20, %cond.true
  %41 = load i32, i32* %__result, align 4, !tbaa !30
  store i32 %41, i32* %tmp51, !tbaa !30
  %42 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %tmp51, !tbaa !30
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.9, %land.lhs.true
  %iodev52 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %45 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev52, align 8, !tbaa !144
  %dname53 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %45, i32 0, i32 0
  %46 = load i8*, i8** %dname53, align 8, !tbaa !147
  %call54 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.50
  %cond = phi i32 [ %44, %if.end.50 ], [ %call54, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !30
  %47 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %tmp, !tbaa !30
  %tobool55 = icmp ne i32 %49, 0
  br i1 %tobool55, label %if.else, label %if.then.56

if.then.56:                                       ; preds = %cond.end
  %fname57 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %50 = load i8*, i8** %fname57, align 8, !tbaa !145
  %tobool58 = icmp ne i8* %50, null
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.then.56
  store i32 -22, i32* %code, align 4, !tbaa !30
  br label %done

if.end.60:                                        ; preds = %if.then.56
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory61 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory61, align 8, !tbaa !25
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 2
  %53 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !152
  %fstdout = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %53, i32 0, i32 2
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fstdout, align 8, !tbaa !153
  %55 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %54, %struct._IO_FILE** %55, align 8, !tbaa !1
  %56 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %56, align 8, !tbaa !1
  %call62 = call i32 @gp_setmode_binary(%struct._IO_FILE* %57, i32 1) #5
  store i32 %call62, i32* %code, align 4, !tbaa !30
  br label %done

if.else:                                          ; preds = %cond.end, %if.end.8
  %iodev63 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %58 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev63, align 8, !tbaa !144
  %tobool64 = icmp ne %struct.gx_io_device_s* %58, null
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.128

land.lhs.true.65:                                 ; preds = %if.else
  %59 = bitcast i64* %__s1_len67 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = bitcast i64* %__s2_len69 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.15 to i64)), i64 1), label %land.lhs.true.71, label %cond.false.120

land.lhs.true.71:                                 ; preds = %land.lhs.true.65
  %call72 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #6
  store i64 %call72, i64* %__s2_len69, align 8, !tbaa !68
  %61 = load i64, i64* %__s2_len69, align 8, !tbaa !68
  %cmp73 = icmp ult i64 %61, 4
  br i1 %cmp73, label %cond.true.75, label %cond.false.120

cond.true.75:                                     ; preds = %land.lhs.true.71
  %62 = bitcast i8** %__s177 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %iodev78 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %63 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev78, align 8, !tbaa !144
  %dname79 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %63, i32 0, i32 0
  %64 = load i8*, i8** %dname79, align 8, !tbaa !147
  store i8* %64, i8** %__s177, align 8, !tbaa !1
  %65 = bitcast i32* %__result81 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load i8*, i8** %__s177, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx82, align 1, !tbaa !75
  %conv83 = zext i8 %67 to i32
  %68 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), align 1, !tbaa !75
  %conv84 = zext i8 %68 to i32
  %sub85 = sub nsw i32 %conv83, %conv84
  store i32 %sub85, i32* %__result81, align 4, !tbaa !30
  %69 = load i64, i64* %__s2_len69, align 8, !tbaa !68
  %cmp86 = icmp ugt i64 %69, 0
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.118

land.lhs.true.88:                                 ; preds = %cond.true.75
  %70 = load i32, i32* %__result81, align 4, !tbaa !30
  %cmp89 = icmp eq i32 %70, 0
  br i1 %cmp89, label %if.then.91, label %if.end.118

if.then.91:                                       ; preds = %land.lhs.true.88
  %71 = load i8*, i8** %__s177, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i8, i8* %arrayidx92, align 1, !tbaa !75
  %conv93 = zext i8 %72 to i32
  %73 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i64 1), align 1, !tbaa !75
  %conv94 = zext i8 %73 to i32
  %sub95 = sub nsw i32 %conv93, %conv94
  store i32 %sub95, i32* %__result81, align 4, !tbaa !30
  %74 = load i64, i64* %__s2_len69, align 8, !tbaa !68
  %cmp96 = icmp ugt i64 %74, 1
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.117

land.lhs.true.98:                                 ; preds = %if.then.91
  %75 = load i32, i32* %__result81, align 4, !tbaa !30
  %cmp99 = icmp eq i32 %75, 0
  br i1 %cmp99, label %if.then.101, label %if.end.117

if.then.101:                                      ; preds = %land.lhs.true.98
  %76 = load i8*, i8** %__s177, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %76, i64 2
  %77 = load i8, i8* %arrayidx102, align 1, !tbaa !75
  %conv103 = zext i8 %77 to i32
  %78 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i64 2), align 1, !tbaa !75
  %conv104 = zext i8 %78 to i32
  %sub105 = sub nsw i32 %conv103, %conv104
  store i32 %sub105, i32* %__result81, align 4, !tbaa !30
  %79 = load i64, i64* %__s2_len69, align 8, !tbaa !68
  %cmp106 = icmp ugt i64 %79, 2
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.116

land.lhs.true.108:                                ; preds = %if.then.101
  %80 = load i32, i32* %__result81, align 4, !tbaa !30
  %cmp109 = icmp eq i32 %80, 0
  br i1 %cmp109, label %if.then.111, label %if.end.116

if.then.111:                                      ; preds = %land.lhs.true.108
  %81 = load i8*, i8** %__s177, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %81, i64 3
  %82 = load i8, i8* %arrayidx112, align 1, !tbaa !75
  %conv113 = zext i8 %82 to i32
  %83 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i64 3), align 1, !tbaa !75
  %conv114 = zext i8 %83 to i32
  %sub115 = sub nsw i32 %conv113, %conv114
  store i32 %sub115, i32* %__result81, align 4, !tbaa !30
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.111, %land.lhs.true.108, %if.then.101
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %land.lhs.true.98, %if.then.91
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %land.lhs.true.88, %cond.true.75
  %84 = load i32, i32* %__result81, align 4, !tbaa !30
  store i32 %84, i32* %tmp119, !tbaa !30
  %85 = bitcast i32* %__result81 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i8** %__s177 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = load i32, i32* %tmp119, !tbaa !30
  br label %cond.end.124

cond.false.120:                                   ; preds = %land.lhs.true.71, %land.lhs.true.65
  %iodev121 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %88 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev121, align 8, !tbaa !144
  %dname122 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %88, i32 0, i32 0
  %89 = load i8*, i8** %dname122, align 8, !tbaa !147
  %call123 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #7
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.120, %if.end.118
  %cond125 = phi i32 [ %87, %if.end.118 ], [ %call123, %cond.false.120 ]
  store i32 %cond125, i32* %tmp70, !tbaa !30
  %90 = bitcast i64* %__s2_len69 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i64* %__s1_len67 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = load i32, i32* %tmp70, !tbaa !30
  %tobool126 = icmp ne i32 %92, 0
  br i1 %tobool126, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %cond.end.124
  store i32 0, i32* %positionable.addr, align 4, !tbaa !30
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %cond.end.124, %if.else
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128
  %93 = load i8*, i8** %fmt, align 8, !tbaa !1
  %tobool130 = icmp ne i8* %93, null
  br i1 %tobool130, label %if.then.131, label %if.else.150

if.then.131:                                      ; preds = %if.end.129
  %94 = bitcast i64* %count1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %95, i32 0, i32 26
  %96 = load i64, i64* %PageCount, align 8, !tbaa !63
  %add = add nsw i64 %96, 1
  store i64 %add, i64* %count1, align 8, !tbaa !68
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.131
  %97 = load i8*, i8** %fmt, align 8, !tbaa !1
  %98 = load i8, i8* %97, align 1, !tbaa !75
  %conv133 = sext i8 %98 to i32
  %cmp134 = icmp ne i32 %conv133, 108
  br i1 %cmp134, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %99 = load i8*, i8** %fmt, align 8, !tbaa !1
  %100 = load i8, i8* %99, align 1, !tbaa !75
  %conv136 = sext i8 %100 to i32
  %cmp137 = icmp ne i32 %conv136, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %101 = phi i1 [ false, %while.cond ], [ %cmp137, %land.rhs ]
  br i1 %101, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %102 = load i8*, i8** %fmt, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %102, i32 -1
  store i8* %incdec.ptr, i8** %fmt, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %103 = load i8*, i8** %fmt, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !75
  %conv139 = sext i8 %104 to i32
  %cmp140 = icmp eq i32 %conv139, 108
  br i1 %cmp140, label %if.then.142, label %if.else.145

if.then.142:                                      ; preds = %while.end
  %105 = load i8*, i8** %pfname, align 8, !tbaa !1
  %fname143 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %106 = load i8*, i8** %fname143, align 8, !tbaa !145
  %107 = load i64, i64* %count1, align 8, !tbaa !68
  %call144 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %105, i8* %106, i64 %107) #5
  br label %if.end.149

if.else.145:                                      ; preds = %while.end
  %108 = load i8*, i8** %pfname, align 8, !tbaa !1
  %fname146 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %109 = load i8*, i8** %fname146, align 8, !tbaa !145
  %110 = load i64, i64* %count1, align 8, !tbaa !68
  %conv147 = trunc i64 %110 to i32
  %call148 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %108, i8* %109, i32 %conv147) #5
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.145, %if.then.142
  %111 = bitcast i64* %count1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  br label %if.end.167

if.else.150:                                      ; preds = %if.end.129
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 3
  %112 = load i32, i32* %len, align 4, !tbaa !146
  %tobool151 = icmp ne i32 %112, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.else.164

land.lhs.true.152:                                ; preds = %if.else.150
  br i1 false, label %cond.true.153, label %cond.false.157

cond.true.153:                                    ; preds = %land.lhs.true.152
  %fname154 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %113 = load i8*, i8** %fname154, align 8, !tbaa !145
  %call155 = call i8* @__rawmemchr(i8* %113, i32 37) #5
  %tobool156 = icmp ne i8* %call155, null
  br i1 %tobool156, label %if.then.161, label %if.else.164

cond.false.157:                                   ; preds = %land.lhs.true.152
  %fname158 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %114 = load i8*, i8** %fname158, align 8, !tbaa !145
  %call159 = call i8* @strchr(i8* %114, i32 37) #7
  %tobool160 = icmp ne i8* %call159, null
  br i1 %tobool160, label %if.then.161, label %if.else.164

if.then.161:                                      ; preds = %cond.false.157, %cond.true.153
  %115 = load i8*, i8** %pfname, align 8, !tbaa !1
  %fname162 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %116 = load i8*, i8** %fname162, align 8, !tbaa !145
  %call163 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %115, i8* %116) #5
  br label %if.end.166

if.else.164:                                      ; preds = %cond.false.157, %cond.true.153, %if.else.150
  %117 = load i8*, i8** %pfname, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 0, i8* %arrayidx165, align 1, !tbaa !75
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.164, %if.then.161
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.149
  %118 = load i8*, i8** %pfname, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i8, i8* %118, i64 0
  %119 = load i8, i8* %arrayidx168, align 1, !tbaa !75
  %tobool169 = icmp ne i8 %119, 0
  br i1 %tobool169, label %if.then.170, label %if.end.176

if.then.170:                                      ; preds = %if.end.167
  %120 = load i8*, i8** %pfname, align 8, !tbaa !1
  %fname171 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  store i8* %120, i8** %fname171, align 8, !tbaa !145
  %fname172 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %121 = load i8*, i8** %fname172, align 8, !tbaa !145
  %call173 = call i64 @strlen(i8* %121) #6
  %conv174 = trunc i64 %call173 to i32
  %len175 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 3
  store i32 %conv174, i32* %len175, align 4, !tbaa !146
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.170, %if.end.167
  %122 = load i32, i32* %positionable.addr, align 4, !tbaa !30
  %tobool177 = icmp ne i32 %122, 0
  br i1 %tobool177, label %if.then.186, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.176
  %iodev178 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %123 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev178, align 8, !tbaa !144
  %tobool179 = icmp ne %struct.gx_io_device_s* %123, null
  br i1 %tobool179, label %land.lhs.true.180, label %if.else.213

land.lhs.true.180:                                ; preds = %lor.lhs.false
  %iodev181 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %124 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev181, align 8, !tbaa !144
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory182 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %125, i32 0, i32 3
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory182, align 8, !tbaa !25
  %call183 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %126, i32 0) #5
  %cmp184 = icmp ne %struct.gx_io_device_s* %124, %call183
  br i1 %cmp184, label %if.then.186, label %if.else.213

if.then.186:                                      ; preds = %land.lhs.true.180, %if.end.176
  %127 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #1
  %fname188 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %128 = load i8*, i8** %fname188, align 8, !tbaa !145
  %tobool189 = icmp ne i8* %128, null
  br i1 %tobool189, label %if.end.191, label %if.then.190

if.then.190:                                      ; preds = %if.then.186
  store i32 -22, i32* %code, align 4, !tbaa !30
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.191:                                       ; preds = %if.then.186
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call192 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_wb, i32 0, i32 0)) #7
  %129 = load i32, i32* %positionable.addr, align 4, !tbaa !30
  %tobool193 = icmp ne i32 %129, 0
  br i1 %tobool193, label %if.then.194, label %if.end.197

if.then.194:                                      ; preds = %if.end.191
  %arraydecay195 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call196 = call i8* @strcat(i8* %arraydecay195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #7
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.194, %if.end.191
  %iodev198 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %130 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev198, align 8, !tbaa !144
  %procs199 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %130, i32 0, i32 2
  %gp_fopen = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs199, i32 0, i32 3
  %131 = load i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)** %gp_fopen, align 8, !tbaa !154
  %iodev200 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %132 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev200, align 8, !tbaa !144
  %fname201 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %133 = load i8*, i8** %fname201, align 8, !tbaa !145
  %arraydecay202 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %134 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  %call203 = call i32 %131(%struct.gx_io_device_s* %132, i8* %133, i8* %arraydecay202, %struct._IO_FILE** %134, i8* null, i32 0) #5
  store i32 %call203, i32* %code, align 4, !tbaa !30
  %135 = load i32, i32* %code, align 4, !tbaa !30
  %tobool204 = icmp ne i32 %135, 0
  br i1 %tobool204, label %if.then.205, label %if.end.212

if.then.205:                                      ; preds = %if.end.197
  %136 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory206 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %136, i32 0, i32 3
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory206, align 8, !tbaa !25
  %call207 = call i8* @gs_program_name() #5
  %call208 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %137, i8* %call207, i64 %call208) #5
  %138 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory209 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %138, i32 0, i32 3
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory209, align 8, !tbaa !25
  %fname210 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %140 = load i8*, i8** %fname210, align 8, !tbaa !145
  %call211 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i8* %140) #5
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.205, %if.end.197
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.190, %if.end.212
  %141 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.246 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.238

if.else.213:                                      ; preds = %land.lhs.true.180, %lor.lhs.false
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory214 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %142, i32 0, i32 3
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory214, align 8, !tbaa !25
  %144 = load i8*, i8** %pfname, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i8, i8* %144, i64 0
  %145 = load i8, i8* %arrayidx215, align 1, !tbaa !75
  %conv216 = sext i8 %145 to i32
  %tobool217 = icmp ne i32 %conv216, 0
  br i1 %tobool217, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %if.else.213
  %146 = load i8*, i8** %pfname, align 8, !tbaa !1
  br label %cond.end.220

cond.false.219:                                   ; preds = %if.else.213
  %147 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.219, %cond.true.218
  %cond221 = phi i8* [ %146, %cond.true.218 ], [ %147, %cond.false.219 ]
  %148 = load i32, i32* %binary.addr, align 4, !tbaa !30
  %call222 = call %struct._IO_FILE* @gp_open_printer(%struct.gs_memory_s* %143, i8* %cond221, i32 %148) #5
  %149 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %call222, %struct._IO_FILE** %149, align 8, !tbaa !1
  %150 = load %struct._IO_FILE**, %struct._IO_FILE*** %pfile.addr, align 8, !tbaa !1
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %150, align 8, !tbaa !1
  %tobool223 = icmp ne %struct._IO_FILE* %151, null
  br i1 %tobool223, label %if.end.237, label %if.then.224

if.then.224:                                      ; preds = %cond.end.220
  %152 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory225 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %152, i32 0, i32 3
  %153 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory225, align 8, !tbaa !25
  %call226 = call i8* @gs_program_name() #5
  %call227 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %153, i8* %call226, i64 %call227) #5
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory228 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %154, i32 0, i32 3
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory228, align 8, !tbaa !25
  %156 = load i8*, i8** %pfname, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i8, i8* %156, i64 0
  %157 = load i8, i8* %arrayidx229, align 1, !tbaa !75
  %conv230 = sext i8 %157 to i32
  %tobool231 = icmp ne i32 %conv230, 0
  br i1 %tobool231, label %cond.true.232, label %cond.false.233

cond.true.232:                                    ; preds = %if.then.224
  %158 = load i8*, i8** %pfname, align 8, !tbaa !1
  br label %cond.end.234

cond.false.233:                                   ; preds = %if.then.224
  %159 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.233, %cond.true.232
  %cond235 = phi i8* [ %158, %cond.true.232 ], [ %159, %cond.false.233 ]
  %call236 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i8* %cond235) #5
  store i32 -9, i32* %code, align 4, !tbaa !30
  br label %if.end.237

if.end.237:                                       ; preds = %cond.end.234, %cond.end.220
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %cleanup.cont
  br label %done

done:                                             ; preds = %if.end.238, %cleanup, %if.end.60, %if.then.59, %if.then.7, %if.then
  %160 = load i8*, i8** %pfname, align 8, !tbaa !1
  %cmp239 = icmp ne i8* %160, null
  br i1 %cmp239, label %if.then.241, label %if.end.245

if.then.241:                                      ; preds = %done
  %161 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory242 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %161, i32 0, i32 3
  %162 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory242, align 8, !tbaa !25
  %procs243 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %162, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs243, i32 0, i32 2
  %163 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !83
  %164 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory244 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %164, i32 0, i32 3
  %165 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory244, align 8, !tbaa !25
  %166 = load i8*, i8** %pfname, align 8, !tbaa !1
  call void %163(%struct.gs_memory_s* %165, i8* %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #5
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.241, %done
  %167 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %167, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.246

cleanup.246:                                      ; preds = %if.end.245, %cleanup
  %168 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i8** %pfname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.end(i64 32, i8* %171) #1
  %172 = load i32, i32* %retval
  ret i32 %172
}

declare i32 @gp_setmode_binary(%struct._IO_FILE*, i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare %struct._IO_FILE* @gp_open_printer(%struct.gs_memory_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_device_close_output_file(%struct.gx_device_s* %dev, i8* %fname, %struct._IO_FILE* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fname.addr = alloca i8*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %parsed = alloca %struct.gs_parsed_file_name_s, align 8
  %fmt = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call to i32
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !25
  %call1 = call i32 @gx_parse_output_file_name(%struct.gs_parsed_file_name_s* %parsed, i8** %fmt, i8* %3, i32 %conv, %struct.gs_memory_s* %6) #5
  store i32 %call1, i32* %code, align 4, !tbaa !30
  %7 = load i32, i32* %code, align 4, !tbaa !30
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !30
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %9 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !144
  %tobool = icmp ne %struct.gx_io_device_s* %9, null
  br i1 %tobool, label %if.then.3, label %if.end.62

if.then.3:                                        ; preds = %if.end
  %10 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.13 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.3
  %call4 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #6
  store i64 %call4, i64* %__s2_len, align 8, !tbaa !68
  %12 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp5 = icmp ult i64 %12, 4
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %13 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %iodev8 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %14 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev8, align 8, !tbaa !144
  %dname = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %dname, align 8, !tbaa !147
  store i8* %15, i8** %__s1, align 8, !tbaa !1
  %16 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !75
  %conv10 = zext i8 %18 to i32
  %19 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), align 1, !tbaa !75
  %conv11 = zext i8 %19 to i32
  %sub = sub nsw i32 %conv10, %conv11
  store i32 %sub, i32* %__result, align 4, !tbaa !30
  %20 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp12 = icmp ugt i64 %20, 0
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.44

land.lhs.true.14:                                 ; preds = %cond.true
  %21 = load i32, i32* %__result, align 4, !tbaa !30
  %cmp15 = icmp eq i32 %21, 0
  br i1 %cmp15, label %if.then.17, label %if.end.44

if.then.17:                                       ; preds = %land.lhs.true.14
  %22 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx18, align 1, !tbaa !75
  %conv19 = zext i8 %23 to i32
  %24 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 1), align 1, !tbaa !75
  %conv20 = zext i8 %24 to i32
  %sub21 = sub nsw i32 %conv19, %conv20
  store i32 %sub21, i32* %__result, align 4, !tbaa !30
  %25 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp22 = icmp ugt i64 %25, 1
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.43

land.lhs.true.24:                                 ; preds = %if.then.17
  %26 = load i32, i32* %__result, align 4, !tbaa !30
  %cmp25 = icmp eq i32 %26, 0
  br i1 %cmp25, label %if.then.27, label %if.end.43

if.then.27:                                       ; preds = %land.lhs.true.24
  %27 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 2
  %28 = load i8, i8* %arrayidx28, align 1, !tbaa !75
  %conv29 = zext i8 %28 to i32
  %29 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 2), align 1, !tbaa !75
  %conv30 = zext i8 %29 to i32
  %sub31 = sub nsw i32 %conv29, %conv30
  store i32 %sub31, i32* %__result, align 4, !tbaa !30
  %30 = load i64, i64* %__s2_len, align 8, !tbaa !68
  %cmp32 = icmp ugt i64 %30, 2
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.42

land.lhs.true.34:                                 ; preds = %if.then.27
  %31 = load i32, i32* %__result, align 4, !tbaa !30
  %cmp35 = icmp eq i32 %31, 0
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %land.lhs.true.34
  %32 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 3
  %33 = load i8, i8* %arrayidx38, align 1, !tbaa !75
  %conv39 = zext i8 %33 to i32
  %34 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i64 3), align 1, !tbaa !75
  %conv40 = zext i8 %34 to i32
  %sub41 = sub nsw i32 %conv39, %conv40
  store i32 %sub41, i32* %__result, align 4, !tbaa !30
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %land.lhs.true.34, %if.then.27
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true.24, %if.then.17
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true.14, %cond.true
  %35 = load i32, i32* %__result, align 4, !tbaa !30
  store i32 %35, i32* %tmp45, !tbaa !30
  %36 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %tmp45, !tbaa !30
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.3
  %iodev46 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %39 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev46, align 8, !tbaa !144
  %dname47 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %39, i32 0, i32 0
  %40 = load i8*, i8** %dname47, align 8, !tbaa !147
  %call48 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.44
  %cond = phi i32 [ %38, %if.end.44 ], [ %call48, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !30
  %41 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load i32, i32* %tmp, !tbaa !30
  %tobool49 = icmp ne i32 %43, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %cond.end
  %iodev52 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %44 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev52, align 8, !tbaa !144
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory53, align 8, !tbaa !25
  %call54 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %46, i32 0) #5
  %cmp55 = icmp ne %struct.gx_io_device_s* %44, %call54
  br i1 %cmp55, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.end.51
  %iodev58 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %47 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev58, align 8, !tbaa !144
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %47, i32 0, i32 2
  %fclose = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 4
  %48 = load i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)** %fclose, align 8, !tbaa !155
  %iodev59 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 1
  %49 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev59, align 8, !tbaa !144
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call60 = call i32 %48(%struct.gx_io_device_s* %49, %struct._IO_FILE* %50) #5
  store i32 %call60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.end.51
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !25
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %fname64 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %54 = load i8*, i8** %fname64, align 8, !tbaa !145
  %tobool65 = icmp ne i8* %54, null
  br i1 %tobool65, label %cond.true.66, label %cond.false.68

cond.true.66:                                     ; preds = %if.end.62
  %fname67 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %parsed, i32 0, i32 2
  %55 = load i8*, i8** %fname67, align 8, !tbaa !145
  br label %cond.end.69

cond.false.68:                                    ; preds = %if.end.62
  %56 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.66
  %cond70 = phi i8* [ %55, %cond.true.66 ], [ %56, %cond.false.68 ]
  call void @gp_close_printer(%struct.gs_memory_s* %52, %struct._IO_FILE* %53, i8* %cond70) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.69, %if.then.57, %if.then.50, %if.then
  %57 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i8** %fmt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.gs_parsed_file_name_s* %parsed to i8*
  call void @llvm.lifetime.end(i64 32, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare void @gp_close_printer(%struct.gs_memory_s*, %struct._IO_FILE*, i8*) #2

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !2, i64 1104}
!6 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
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
!19 = !{!20, !9, i64 200}
!20 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !2, i64 176, !7, i64 184, !2, i64 192, !8, i64 200}
!21 = !{!20, !2, i64 216}
!22 = !{!20, !2, i64 208}
!23 = !{!6, !2, i64 48}
!24 = !{!6, !7, i64 40}
!25 = !{!6, !2, i64 24}
!26 = !{!27, !2, i64 200}
!27 = !{!"gs_memory_s", !2, i64 0, !28, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!28 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!29 = !{!6, !2, i64 32}
!30 = !{!7, !7, i64 0}
!31 = !{!6, !7, i64 84}
!32 = !{!6, !2, i64 1176}
!33 = !{!34, !2, i64 1728}
!34 = !{!"gx_device_forward_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728}
!35 = !{!36, !2, i64 0}
!36 = !{!"enum_ptr_s", !2, i64 0, !7, i64 8}
!37 = !{!38, !2, i64 0}
!38 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!39 = !{!6, !2, i64 8}
!40 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !1, i64 208, i64 8, !1, i64 216, i64 8, !1, i64 224, i64 8, !1, i64 232, i64 8, !1, i64 240, i64 8, !1, i64 248, i64 8, !1, i64 256, i64 8, !1, i64 264, i64 8, !1, i64 272, i64 8, !1, i64 280, i64 8, !1, i64 288, i64 8, !1, i64 296, i64 8, !1, i64 304, i64 8, !1, i64 312, i64 8, !1, i64 320, i64 8, !1, i64 328, i64 8, !1, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 8, !1, i64 384, i64 8, !1, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 8, !1, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 8, !1, i64 440, i64 8, !1, i64 448, i64 8, !1, i64 456, i64 8, !1, i64 464, i64 8, !1, i64 472, i64 8, !1, i64 480, i64 8, !1, i64 488, i64 8, !1, i64 496, i64 8, !1, i64 504, i64 8, !1, i64 512, i64 8, !1, i64 520, i64 8, !1, i64 528, i64 8, !1, i64 536, i64 8, !1, i64 544, i64 8, !1, i64 552, i64 8, !1, i64 560, i64 8, !1, i64 568, i64 8, !1, i64 576, i64 8, !1}
!41 = !{!6, !2, i64 1160}
!42 = !{!43, !2, i64 1872}
!43 = !{!"gs_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !44, i64 24, !7, i64 128, !48, i64 132, !7, i64 168, !49, i64 176, !49, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !51, i64 224, !51, i64 228, !52, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !45, i64 296, !53, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !45, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !54, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !55, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !55, i64 1336, !2, i64 1616, !46, i64 1624, !7, i64 1648, !46, i64 1652, !7, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !9, i64 1712, !9, i64 1720, !2, i64 1728, !7, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !48, i64 1808, !7, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !7, i64 1864, !2, i64 1872, !2, i64 1880, !56, i64 1888}
!44 = !{!"gx_line_params_s", !45, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !7, i64 36, !46, i64 40, !47, i64 64}
!45 = !{!"float", !3, i64 0}
!46 = !{!"gs_matrix_s", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20}
!47 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !45, i64 12, !7, i64 16, !45, i64 20, !7, i64 24, !7, i64 28, !45, i64 32}
!48 = !{!"gs_matrix_fixed_s", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!49 = !{!"gs_point_s", !50, i64 0, !50, i64 8}
!50 = !{!"double", !3, i64 0}
!51 = !{!"gs_transparency_source_s", !45, i64 0}
!52 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!53 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!54 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!55 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !9, i64 16, !3, i64 24}
!56 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!57 = !{!6, !7, i64 952}
!58 = !{!6, !2, i64 1168}
!59 = !{!6, !2, i64 1680}
!60 = !{!20, !7, i64 156}
!61 = !{!20, !7, i64 160}
!62 = !{!43, !2, i64 344}
!63 = !{!6, !9, i64 928}
!64 = !{!6, !2, i64 1240}
!65 = !{!6, !7, i64 836}
!66 = !{!6, !7, i64 832}
!67 = !{!6, !11, i64 108}
!68 = !{!9, !9, i64 0}
!69 = !{!6, !7, i64 848}
!70 = !{!6, !7, i64 100}
!71 = !{!6, !7, i64 840}
!72 = !{!6, !7, i64 844}
!73 = !{!6, !2, i64 16}
!74 = !{!6, !2, i64 1152}
!75 = !{!3, !3, i64 0}
!76 = !{!27, !2, i64 8}
!77 = !{i64 0, i64 4, !30, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1}
!78 = !{!79, !7, i64 0}
!79 = !{!"gs_memory_struct_type_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!80 = !{!6, !7, i64 0}
!81 = !{!27, !2, i64 80}
!82 = !{!6, !2, i64 1488}
!83 = !{!27, !2, i64 24}
!84 = !{!18, !2, i64 128}
!85 = !{!6, !7, i64 80}
!86 = !{!6, !9, i64 56}
!87 = !{!6, !2, i64 64}
!88 = !{!6, !2, i64 72}
!89 = !{!6, !2, i64 1144}
!90 = !{!91, !2, i64 16}
!91 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!92 = !{!93, !2, i64 0}
!93 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !94, i64 352, !7, i64 360, !95, i64 368, !97, i64 632}
!94 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!95 = !{!"gs_client_color_s", !2, i64 0, !96, i64 8}
!96 = !{!"gs_paint_color_s", !3, i64 0}
!97 = !{!"_mask", !98, i64 0, !9, i64 8, !2, i64 16}
!98 = !{!"mp_", !7, i64 0, !7, i64 4}
!99 = !{!43, !2, i64 8}
!100 = !{!101, !2, i64 136}
!101 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !9, i64 104, !2, i64 112, !2, i64 120, !7, i64 128, !2, i64 136, !7, i64 144, !7, i64 148, !3, i64 152, !2, i64 168, !7, i64 176, !2, i64 184, !7, i64 192, !2, i64 200, !2, i64 208}
!102 = !{!43, !2, i64 336}
!103 = !{!104, !2, i64 32}
!104 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !7, i64 64, !2, i64 72, !2, i64 80, !8, i64 88}
!105 = !{!106, !2, i64 1728}
!106 = !{!"gx_device_memory_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !7, i64 1736, !2, i64 1744, !2, i64 1752, !7, i64 1760, !2, i64 1768, !7, i64 1776, !3, i64 1780, !46, i64 2548, !2, i64 2576, !107, i64 2584, !108, i64 2600, !109, i64 2624, !110, i64 2656, !111, i64 2680, !112, i64 2720, !113, i64 2736, !7, i64 2744, !7, i64 2748, !7, i64 2752, !7, i64 2756, !7, i64 2760, !9, i64 2768, !2, i64 2776, !7, i64 2784, !7, i64 2788}
!107 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!108 = !{!"_c24", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!109 = !{!"_c40", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!110 = !{!"_c48", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!111 = !{!"_c56", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!112 = !{!"_c64", !9, i64 0, !7, i64 8, !7, i64 12}
!113 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!114 = !{!43, !7, i64 1676}
!115 = !{!43, !3, i64 1848}
!116 = !{!43, !3, i64 1852}
!117 = !{!43, !7, i64 272}
!118 = !{!6, !2, i64 1536}
!119 = !{!6, !2, i64 1544}
!120 = !{!6, !2, i64 1552}
!121 = !{!6, !2, i64 1560}
!122 = !{!6, !2, i64 1688}
!123 = !{!6, !3, i64 1112}
!124 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !75, i64 12, i64 2, !125, i64 14, i64 1, !75, i64 16, i64 4, !30, i64 20, i64 4, !30, i64 24, i64 4, !30, i64 28, i64 4, !30, i64 32, i64 4, !30, i64 36, i64 4, !30, i64 40, i64 4, !75, i64 44, i64 64, !75, i64 108, i64 64, !75, i64 176, i64 512, !75, i64 688, i64 8, !1, i64 696, i64 4, !75, i64 704, i64 8, !68, i64 712, i64 4, !30}
!125 = !{!11, !11, i64 0}
!126 = !{i64 0, i64 8, !68, i64 8, i64 8, !68}
!127 = !{!6, !2, i64 1336}
!128 = !{!129, !2, i64 1336}
!129 = !{!"gx_device_null_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728}
!130 = !{!129, !2, i64 16}
!131 = !{!132, !7, i64 8}
!132 = !{!"gx_render_plane_s", !7, i64 0, !7, i64 4, !7, i64 8}
!133 = !{!132, !7, i64 0}
!134 = !{!50, !50, i64 0}
!135 = !{!45, !45, i64 0}
!136 = !{!6, !7, i64 852}
!137 = !{!6, !2, i64 1264}
!138 = !{!6, !2, i64 1184}
!139 = !{!6, !2, i64 1192}
!140 = !{!6, !7, i64 880}
!141 = !{!6, !7, i64 1052}
!142 = !{!143, !2, i64 0}
!143 = !{!"gs_parsed_file_name_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24}
!144 = !{!143, !2, i64 8}
!145 = !{!143, !2, i64 16}
!146 = !{!143, !7, i64 24}
!147 = !{!148, !2, i64 0}
!148 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !149, i64 16, !2, i64 120}
!149 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!150 = !{!27, !2, i64 64}
!151 = !{!148, !2, i64 56}
!152 = !{!27, !2, i64 192}
!153 = !{!101, !2, i64 16}
!154 = !{!148, !2, i64 40}
!155 = !{!148, !2, i64 48}
