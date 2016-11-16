; ModuleID = './zfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
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
%struct.gs_font_dir_s = type { %struct.gs_font_s*, %struct.gs_font_s*, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32, i32, i32, i8*, %struct.gs_memory_s*, %struct.ttfInterpreter_s*, %struct.gx_ttfMemory_s*, i32, %struct.gx_device_spot_analyzer_s*, i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)*, i64 }
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gx_xfont_s = type opaque
%struct.ttfFont_s = type opaque
%struct.gx_ttfReader_s = type opaque
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, {}*, i8* }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_fapi_server_s = type opaque
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
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
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
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.1 }
%union.anon.1 = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct.obj_header_s = type opaque
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.alloc_save_s = type opaque
%struct.gs_unicode_decoder_s = type { %struct.ref_s }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gc_procs_with_refs_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)*, i16* (i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)* }

@gs_c_min_std_encoding_glyph = external constant i64, align 8
@.str = private unnamed_addr constant [13 x i8] c"0currentfont\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"2makefont\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"2scalefont\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1setfont\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"0cachestatus\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"1setcachelimit\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"1setcacheparams\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"0currentcacheparams\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"1.registerfont\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"1.setupUnicodeDecoder\00", align 1
@zfont_op_defs = constant [11 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentfont }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmakefont }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zscalefont }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetfont }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcachestatus }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetcachelimit }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetcacheparams }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentcacheparams }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zregisterfont }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetupUnicodeDecoder }, %struct.op_def { i8* null, i32 (%struct.gs_context_state_s*)* @zfont_init }], align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"FID\00", align 1
@st_font_data = external constant %struct.gs_memory_struct_type_s, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"make_font(font_data)\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"make_font(matrices)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"ScaleMatrix\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"FontMatrix\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"OrigFont\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"FontInfo\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Notice\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"FamilyName\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"FullName\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"FSType\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@st_unicode_decoder = internal constant %struct.gs_memory_struct_type_s { i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* @unicode_decoder_clear_marks, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @unicode_decoder_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @unicode_decoder_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.23 = private unnamed_addr constant [22 x i8] c"setup_unicode_decoder\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"unicode_decoder\00", align 1
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.25 = private unnamed_addr constant [10 x i8] c"ifont_dir\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zfont_mark_glyph_name(%struct.gs_memory_s* %mem, i64 %glyph, i8* %ignore_data) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %glyph.addr = alloca i64, align 8
  %ignore_data.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !5
  store i8* %ignore_data, i8** %ignore_data.addr, align 8, !tbaa !1
  %0 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %1 = load i64, i64* @gs_c_min_std_encoding_glyph, align 8, !tbaa !5
  %cmp = icmp uge i64 %0, %1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %cmp1 = icmp eq i64 %2, 2147483647
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 2
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !7
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 16
  %5 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !10
  %6 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %conv = trunc i64 %6 to i32
  %call = call i32 @names_mark_index(%struct.name_table_s* %5, i32 %conv) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  ret i32 %cond
}

declare i32 @names_mark_index(%struct.name_table_s*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @zsetfont(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @font_param(%struct.ref_s* %5, %struct.gs_font_s** %pfont) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %6 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !26
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %call1 = call i32 @gs_setfont(%struct.gs_state_s* %8, %struct.gs_font_s* %9) #3
  store i32 %call1, i32* %code, align 4, !tbaa !25
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p5, align 8, !tbaa !13
  %13 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @font_param(%struct.ref_s* %pfdict, %struct.gs_font_s** %ppfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pfdict.addr = alloca %struct.ref_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %pid = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pfdict, %struct.ref_s** %pfdict.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.ref_s*, %struct.ref_s** %pfdict.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %pfdict.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %pfdict.addr, align 8, !tbaa !1
  %call2 = call i32 @dict_find_string(%struct.ref_s* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s** %pid) #3
  %cmp3 = icmp sle i32 %call2, 0
  br i1 %cmp3, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %pid, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %9 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx7, align 1, !tbaa !27
  %conv8 = zext i8 %10 to i32
  %cmp9 = icmp eq i32 %conv8, 10
  br i1 %cmp9, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %11 = load %struct.ref_s*, %struct.ref_s** %pid, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %12 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %13 = bitcast %struct.obj_header_s* %12 to %struct.gs_font_s*
  store %struct.gs_font_s* %13, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.gs_font_s* %14, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 8
  %16 = load i8*, i8** %client_data, align 8, !tbaa !28
  %17 = bitcast i8* %16 to %struct.font_data_s*
  store %struct.font_data_s* %17, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %18, i32 0, i32 2
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !35
  %20 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %20, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %pfdict.addr, align 8, !tbaa !1
  %call17 = call i32 @obj_eq(%struct.gs_memory_s* %19, %struct.ref_s* %dict, %struct.ref_s* %21) #3
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.16
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %23 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %22, %struct.gs_font_s** %23, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then.15, %if.then.11, %if.then
  %24 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast %struct.ref_s** %pid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32 @gs_setfont(%struct.gs_state_s*, %struct.gs_font_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentfont(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !26
  %call = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %11) #3
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call, i32 0, i32 8
  %12 = load i8*, i8** %client_data, align 8, !tbaa !28
  %13 = bitcast i8* %12 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %13, i32 0, i32 0
  %14 = bitcast %struct.ref_s* %9 to i8*
  %15 = bitcast %struct.ref_s* %dict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zmakefont(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %mat = alloca %struct.gs_matrix_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #2
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @read_matrix(%struct.gs_memory_s* %7, %struct.ref_s* %8, %struct.gs_matrix_s* %mat) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call i32 @make_font(%struct.gs_context_state_s* %10, %struct.gs_matrix_s* %mat) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %11) #2
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zscalefont(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %scale = alloca double, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #2
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %6, double* %scale) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load double, double* %scale, align 8, !tbaa !42
  %9 = load double, double* %scale, align 8, !tbaa !42
  %call1 = call i32 @gs_make_scaling(double %8, double %9, %struct.gs_matrix_s* %mat) #3
  store i32 %call1, i32* %code, align 4, !tbaa !25
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call5 = call i32 @make_font(%struct.gs_context_state_s* %11, %struct.gs_matrix_s* %mat) #3
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %12 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %12) #2
  %13 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zcachestatus(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %status = alloca [7 x i32], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [7 x i32]* %status to i8*
  call void @llvm.lifetime.start(i64 28, i8* %3) #2
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %6) #3
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !44
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %status, i32 0, i32 0
  call void @gs_cachestatus(%struct.gs_font_dir_s* %7, i32* %arraydecay) #3
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 7
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %10 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 7, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %12, %struct.ref_s** %p7, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -6
  %arraydecay9 = getelementptr inbounds [7 x i32], [7 x i32]* %status, i32 0, i32 0
  call void @make_uint_array(%struct.ref_s* %add.ptr8, i32* %arraydecay9, i32 7) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %15 = bitcast [7 x i32]* %status to i8*
  call void @llvm.lifetime.end(i64 28, i8* %15) #2
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcachelimit(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %8 = load i64, i64* %intval, align 8, !tbaa !5
  %cmp2 = icmp ugt i64 %8, 4294967295
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %call6 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %11) #3
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call6, i32 0, i32 22
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !44
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval8 = bitcast %union.v* %value7 to i64*
  %14 = load i64, i64* %intval8, align 8, !tbaa !5
  %conv9 = trunc i64 %14 to i32
  %call10 = call i32 @gs_setcacheupper(%struct.gs_font_dir_s* %12, i32 %conv9) #3
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack12 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p13, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcacheparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %params = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %opp = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [3 x i32]* %params to i8*
  call void @llvm.lifetime.start(i64 12, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast %struct.ref_s** %opp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %7, %struct.ref_s** %opp, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !25
  %cmp = icmp slt i32 %8, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %opp, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %11 to i32
  %cmp1 = icmp eq i32 %conv, 12
  %lnot = xor i1 %cmp1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %for.body
  %13 = load %struct.ref_s*, %struct.ref_s** %opp, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %14 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx5, align 1, !tbaa !27
  %conv6 = zext i8 %15 to i32
  %cmp7 = icmp eq i32 %conv6, 11
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %16 = load %struct.ref_s*, %struct.ref_s** %opp, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %16) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %17 = load %struct.ref_s*, %struct.ref_s** %opp, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %18 = load i64, i64* %intval, align 8, !tbaa !5
  %cmp9 = icmp ugt i64 %18, 4294967295
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.ref_s*, %struct.ref_s** %opp, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %intval14 = bitcast %union.v* %value13 to i64*
  %20 = load i64, i64* %intval14, align 8, !tbaa !5
  %conv15 = trunc i64 %20 to i32
  %21 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %params, i32 0, i64 %idxprom
  store i32 %conv15, i32* %arrayidx16, align 4, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %22 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  %23 = load %struct.ref_s*, %struct.ref_s** %opp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %opp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  %24 = load i32, i32* %i, align 4, !tbaa !25
  switch i32 %24, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.24
    i32 1, label %sw.bb.35
    i32 0, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %for.end
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 0
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !26
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %call17 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %29) #3
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call17, i32 0, i32 22
  %30 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !44
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %params, i32 0, i64 2
  %31 = load i32, i32* %arrayidx18, align 4, !tbaa !25
  %call19 = call i32 @gs_setcachesize(%struct.gs_state_s* %26, %struct.gs_font_dir_s* %30, i32 %31) #3
  store i32 %call19, i32* %code, align 4, !tbaa !25
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb
  %32 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %sw.bb
  br label %sw.bb.24

sw.bb.24:                                         ; preds = %for.end, %if.end.23
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current26 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory25, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current26, align 8, !tbaa !41
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %call27 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %35) #3
  %font_dir28 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call27, i32 0, i32 22
  %36 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir28, align 8, !tbaa !44
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %params, i32 0, i64 1
  %37 = load i32, i32* %arrayidx29, align 4, !tbaa !25
  %call30 = call i32 @gs_setcachelower(%struct.gs_font_dir_s* %36, i32 %37) #3
  store i32 %call30, i32* %code, align 4, !tbaa !25
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %sw.bb.24
  %38 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %sw.bb.24
  br label %sw.bb.35

sw.bb.35:                                         ; preds = %for.end, %if.end.34
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %current37 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory36, i32 0, i32 0
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current37, align 8, !tbaa !41
  %41 = bitcast %struct.gs_ref_memory_s* %40 to %struct.gs_memory_s*
  %call38 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %41) #3
  %font_dir39 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call38, i32 0, i32 22
  %42 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir39, align 8, !tbaa !44
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %params, i32 0, i64 0
  %43 = load i32, i32* %arrayidx40, align 4, !tbaa !25
  %call41 = call i32 @gs_setcacheupper(%struct.gs_font_dir_s* %42, i32 %43) #3
  store i32 %call41, i32* %code, align 4, !tbaa !25
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %sw.bb.35
  %44 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %sw.bb.35
  br label %sw.bb.46

sw.bb.46:                                         ; preds = %for.end, %if.end.45
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.46, %for.end
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call47 = call i32 @zcleartomark(%struct.gs_context_state_s* %45) #3
  store i32 %call47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.44, %if.then.33, %if.then.22, %if.then.11, %if.then
  %46 = bitcast %struct.ref_s** %opp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast [3 x i32]* %params to i8*
  call void @llvm.lifetime.end(i64 12, i8* %49) #2
  %50 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentcacheparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %params = alloca [3 x i32], align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [3 x i32]* %params to i8*
  call void @llvm.lifetime.start(i64 12, i8* %3) #2
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %6) #3
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !44
  %call1 = call i32 @gs_currentcachesize(%struct.gs_font_dir_s* %7) #3
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %params, i32 0, i64 0
  store i32 %call1, i32* %arrayidx, align 4, !tbaa !25
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !41
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %call4 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %10) #3
  %font_dir5 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call4, i32 0, i32 22
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir5, align 8, !tbaa !44
  %call6 = call i32 @gs_currentcachelower(%struct.gs_font_dir_s* %11) #3
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %params, i32 0, i64 1
  store i32 %call6, i32* %arrayidx7, align 4, !tbaa !25
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current9 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory8, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current9, align 8, !tbaa !41
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %call10 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %14) #3
  %font_dir11 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call10, i32 0, i32 22
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir11, align 8, !tbaa !44
  %call12 = call i32 @gs_currentcacheupper(%struct.gs_font_dir_s* %15) #3
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %params, i32 0, i64 2
  store i32 %call12, i32* %arrayidx13, align 4, !tbaa !25
  br label %do.body

do.body:                                          ; preds = %entry
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 2
  %18 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !36
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 7
  store i32 4, i32* %requested, align 4, !tbaa !37
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  store %struct.ref_s* %20, %struct.ref_s** %p20, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -3
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3072, i16* %type_attrs, align 2, !tbaa !45
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -2
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %params, i32 0, i32 0
  call void @make_uint_array(%struct.ref_s* %add.ptr22, i32* %arraydecay, i32 3) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %24 = bitcast [3 x i32]* %params to i8*
  call void @llvm.lifetime.end(i64 12, i8* %24) #2
  %25 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @zregisterfont(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @font_param(%struct.ref_s* %5, %struct.gs_font_s** %pfont) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %6 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %is_resource = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 4
  store i32 1, i32* %is_resource, align 4, !tbaa !46
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p3, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetupUnicodeDecoder(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %7) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @setup_unicode_decoder(%struct.gs_context_state_s* %8, %struct.ref_s* %9) #3
  store i32 %call2, i32* %code, align 4, !tbaa !25
  %10 = load i32, i32* %code, align 4, !tbaa !25
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack8 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack7, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack8, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p9, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p9, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zfont_init(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !47
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !41
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !48
  %call = call %struct.gs_font_dir_s* @gs_font_dir_alloc2(%struct.gs_memory_s* %3, %struct.gs_memory_s* %7) #3
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current4, align 8, !tbaa !41
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %call5 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %10) #3
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call5, i32 0, i32 22
  store %struct.gs_font_dir_s* %call, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !44
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  %current7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current7, align 8, !tbaa !41
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %call8 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %13) #3
  %font_dir9 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call8, i32 0, i32 22
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir9, align 8, !tbaa !44
  %cmp = icmp eq %struct.gs_font_dir_s* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current11 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory10, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current11, align 8, !tbaa !41
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %call12 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %17) #3
  %font_dir13 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call12, i32 0, i32 22
  %18 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir13, align 8, !tbaa !44
  %ccache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %18, i32 0, i32 5
  %mark_glyph = getelementptr inbounds %struct.char_cache_s, %struct.char_cache_s* %ccache, i32 0, i32 13
  %mark_glyph14 = bitcast {}** %mark_glyph to i32 (%struct.gs_memory_s*, i64, i8*)**
  store i32 (%struct.gs_memory_s*, i64, i8*)* @zfont_mark_glyph_name, i32 (%struct.gs_memory_s*, i64, i8*)** %mark_glyph14, align 8, !tbaa !49
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current16 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory15, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current16, align 8, !tbaa !41
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %call17 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %21) #3
  %font_dir18 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call17, i32 0, i32 22
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir18, align 8, !tbaa !44
  %global_glyph_code = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %22, i32 0, i32 16
  store i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)* @zfont_global_glyph_code, i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)** %global_glyph_code, align 8, !tbaa !53
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current20 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory19, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current20, align 8, !tbaa !41
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current22 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current22, align 8, !tbaa !41
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %call23 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %28) #3
  %font_dir24 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call23, i32 0, i32 22
  %29 = bitcast %struct.gs_font_dir_s** %font_dir24 to i8**
  %call25 = call i32 @gs_register_struct_root(%struct.gs_memory_s* %25, %struct.gs_gc_root_s* null, i8** %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)) #3
  store i32 %call25, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @check_type_failed(%struct.ref_s*) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #1

declare i32 @obj_eq(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #1

; Function Attrs: nounwind uwtable
define i32 @add_FID(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %fp, %struct.gs_font_s* %pfont, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %fp.addr = alloca %struct.ref_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %fid = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %fp, %struct.ref_s** %fp.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %fid to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to i8*
  %3 = bitcast i8* %2 to %struct.obj_header_s*
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fid, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  store %struct.obj_header_s* %3, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call = call i32 @imemory_space(%struct.gs_ref_memory_s* %4) #3
  %or = or i32 96, %call
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call1 = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %5) #3
  %or2 = or i32 %or, %call1
  %add = add i32 2560, %or2
  %conv = trunc i32 %add to i16
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fid, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !45
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_context_state_s* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %fp.addr, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 24
  %call3 = call i32 @dict_put_string(%struct.ref_s* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s* %fid, %struct.dict_stack_s* %dict_stack) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %fp.addr, align 8, !tbaa !1
  %call4 = call i32 @dict_put_string(%struct.ref_s* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s* %fid, %struct.dict_stack_s* null) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %call4, %cond.false ]
  %10 = bitcast %struct.ref_s* %fid to i8*
  call void @llvm.lifetime.end(i64 16, i8* %10) #2
  ret i32 %cond
}

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #1

declare i32 @imemory_new_mask(%struct.gs_ref_memory_s*) #1

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zbase_make_font(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %oldfont, %struct.gs_matrix_s* %pmat, %struct.gs_font_s** %ppfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %oldfont.addr = alloca %struct.gs_font_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %oldfont, %struct.gs_font_s** %oldfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %oldfont.addr, align 8, !tbaa !1
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %4 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %call = call i32 @gs_base_make_font(%struct.gs_font_dir_s* %1, %struct.gs_font_s* %2, %struct.gs_matrix_s* %3, %struct.gs_font_s** %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %5 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %oldfont.addr, align 8, !tbaa !1
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %10 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %call1 = call i32 @zdefault_make_font(%struct.gs_font_dir_s* %7, %struct.gs_font_s* %8, %struct.gs_matrix_s* %9, %struct.gs_font_s** %10) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_base_make_font(%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**) #1

; Function Attrs: nounwind uwtable
define i32 @zdefault_make_font(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %oldfont, %struct.gs_matrix_s* %pmat, %struct.gs_font_s** %ppfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %oldfont.addr = alloca %struct.gs_font_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %newfont = alloca %struct.gs_font_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %fp = alloca %struct.ref_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  %newdict = alloca %struct.ref_s, align 8
  %newmat = alloca %struct.ref_s, align 8
  %scalemat = alloca %struct.ref_s, align 8
  %dlen = alloca i32, align 4
  %mlen = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %scale = alloca %struct.gs_matrix_s, align 4
  %prev_scale = alloca %struct.gs_matrix_s, align 4
  %ppsm = alloca %struct.ref_s*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %oldfont, %struct.gs_font_s** %oldfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s** %newfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %1, align 8, !tbaa !1
  store %struct.gs_font_s* %2, %struct.gs_font_s** %newfont, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 2
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !35
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = bitcast %struct.gs_memory_s* %7 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %8, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %9 = bitcast %struct.ref_s** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %oldfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 8
  %11 = load i8*, i8** %client_data, align 8, !tbaa !28
  %12 = bitcast i8* %11 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %12, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %fp, align 8, !tbaa !1
  %13 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast %struct.ref_s* %newdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #2
  %15 = bitcast %struct.ref_s* %newmat to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #2
  %16 = bitcast %struct.ref_s* %scalemat to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #2
  %17 = bitcast i32* %dlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %call = call i32 @dict_maxlength(%struct.ref_s* %18) #3
  store i32 %call, i32* %dlen, align 4, !tbaa !25
  %19 = bitcast i32* %mlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %call1 = call i32 @dict_length(%struct.ref_s* %20) #3
  %add = add i32 %call1, 3
  store i32 %add, i32* %mlen, align 4, !tbaa !25
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i32, i32* %dlen, align 4, !tbaa !25
  %23 = load i32, i32* %mlen, align 4, !tbaa !25
  %cmp = icmp ult i32 %22, %23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = load i32, i32* %mlen, align 4, !tbaa !25
  store i32 %24, i32* %dlen, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %26 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !54
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call2 = call i8* %26(%struct.gs_memory_s* %27, %struct.gs_memory_struct_type_s* @st_font_data, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0)) #3
  %28 = bitcast i8* %call2 to %struct.font_data_s*
  store %struct.font_data_s* %28, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.font_data_s* %28, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %30 = load i32, i32* %dlen, align 4, !tbaa !25
  %call6 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %29, i32 %30, %struct.ref_s* %newdict) #3
  store i32 %call6, i32* %code, align 4, !tbaa !25
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %31 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %call8 = call i32 @dict_copy_entries(%struct.ref_s* %31, %struct.ref_s* %newdict, i32 0, %struct.dict_stack_s* null) #3
  store i32 %call8, i32* %code, align 4, !tbaa !25
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call11 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %32, %struct.ref_s* %newmat, i32 112, i32 12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #3
  store i32 %call11, i32* %code, align 4, !tbaa !25
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false, %if.end.5
  %33 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %lor.lhs.false.10
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %newmat, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %34 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call15 = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %35) #3
  call void @refset_null_new(%struct.ref_s* %34, i32 12, i32 %call15) #3
  %36 = bitcast %struct.ref_s* %scalemat to i8*
  %37 = bitcast %struct.ref_s* %newmat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false), !tbaa.struct !38
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %scalemat, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  store i32 6, i32* %rsize, align 4, !tbaa !55
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %scalemat, i32 0, i32 1
  %refs17 = bitcast %union.v* %value16 to %struct.ref_s**
  %38 = load %struct.ref_s*, %struct.ref_s** %refs17, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 6
  store %struct.ref_s* %add.ptr, %struct.ref_s** %refs17, align 8, !tbaa !1
  %39 = bitcast %struct.gs_matrix_s* %scale to i8*
  call void @llvm.lifetime.start(i64 24, i8* %39) #2
  %40 = bitcast %struct.gs_matrix_s* %prev_scale to i8*
  call void @llvm.lifetime.start(i64 24, i8* %40) #2
  %41 = bitcast %struct.ref_s** %ppsm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #2
  %42 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %call18 = call i32 @dict_find_string(%struct.ref_s* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct.ref_s** %ppsm) #3
  %cmp19 = icmp sgt i32 %call18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.then.25

land.lhs.true:                                    ; preds = %if.end.14
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %44 = load %struct.ref_s*, %struct.ref_s** %ppsm, align 8, !tbaa !1
  %call20 = call i32 @read_matrix(%struct.gs_memory_s* %43, %struct.ref_s* %44, %struct.gs_matrix_s* %prev_scale) #3
  %cmp21 = icmp sge i32 %call20, 0
  br i1 %cmp21, label %land.lhs.true.22, label %if.then.25

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call23 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %45, %struct.gs_matrix_s* %prev_scale, %struct.gs_matrix_s* %scale) #3
  %cmp24 = icmp sge i32 %call23, 0
  br i1 %cmp24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true, %if.end.14
  %46 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gs_matrix_s* %scale to i8*
  %48 = bitcast %struct.gs_matrix_s* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 24, i32 4, i1 false), !tbaa.struct !56
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %land.lhs.true.22
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call27 = call i32 @write_matrix_in(%struct.ref_s* %scalemat, %struct.gs_matrix_s* %scale, %struct.gs_dual_memory_s* null, %struct.gs_ref_memory_s* %49) #3
  %50 = bitcast %struct.ref_s** %ppsm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast %struct.gs_matrix_s* %prev_scale to i8*
  call void @llvm.lifetime.end(i64 24, i8* %51) #2
  %52 = bitcast %struct.gs_matrix_s* %scale to i8*
  call void @llvm.lifetime.end(i64 24, i8* %52) #2
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %scalemat, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 0
  %53 = load i16, i16* %type_attrs, align 2, !tbaa !45
  %conv = zext i16 %53 to i32
  %and = and i32 %conv, -17
  %conv29 = trunc i32 %and to i16
  store i16 %conv29, i16* %type_attrs, align 2, !tbaa !45
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %newmat, i32 0, i32 0
  %rsize31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 2
  store i32 6, i32* %rsize31, align 4, !tbaa !55
  %54 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %54, i32 0, i32 9
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call32 = call i32 @write_matrix_in(%struct.ref_s* %newmat, %struct.gs_matrix_s* %FontMatrix, %struct.gs_dual_memory_s* null, %struct.gs_ref_memory_s* %55) #3
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %newmat, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %56 = load i16, i16* %type_attrs34, align 2, !tbaa !45
  %conv35 = zext i16 %56 to i32
  %and36 = and i32 %conv35, -17
  %conv37 = trunc i32 %and36 to i16
  store i16 %conv37, i16* %type_attrs34, align 2, !tbaa !45
  %call38 = call i32 @dict_put_string(%struct.ref_s* %newdict, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %struct.ref_s* %newmat, %struct.dict_stack_s* null) #3
  store i32 %call38, i32* %code, align 4, !tbaa !25
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then.55, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.26
  %57 = load %struct.gs_font_s*, %struct.gs_font_s** %oldfont.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %57, i32 0, i32 7
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !57
  %client_data42 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %58, i32 0, i32 8
  %59 = load i8*, i8** %client_data42, align 8, !tbaa !28
  %60 = bitcast i8* %59 to %struct.font_data_s*
  %dict43 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %60, i32 0, i32 0
  %call44 = call i32 @dict_put_string(%struct.ref_s* %newdict, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s* %dict43, %struct.dict_stack_s* null) #3
  store i32 %call44, i32* %code, align 4, !tbaa !25
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.55, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.41
  %call48 = call i32 @dict_put_string(%struct.ref_s* %newdict, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct.ref_s* %scalemat, %struct.dict_stack_s* null) #3
  store i32 %call48, i32* %code, align 4, !tbaa !25
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %61 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8, !tbaa !1
  %62 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call52 = call i32 @add_FID(%struct.gs_context_state_s* null, %struct.ref_s* %newdict, %struct.gs_font_s* %61, %struct.gs_ref_memory_s* %62) #3
  store i32 %call52, i32* %code, align 4, !tbaa !25
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.47, %lor.lhs.false.41, %if.end.26
  %63 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %lor.lhs.false.51
  %64 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %65 = bitcast %struct.font_data_s* %64 to i8*
  %66 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8, !tbaa !1
  %client_data57 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %66, i32 0, i32 8
  store i8* %65, i8** %client_data57, align 8, !tbaa !28
  %67 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %68 = load %struct.gs_font_s*, %struct.gs_font_s** %oldfont.addr, align 8, !tbaa !1
  %client_data58 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %68, i32 0, i32 8
  %69 = load i8*, i8** %client_data58, align 8, !tbaa !28
  %70 = bitcast i8* %69 to %struct.font_data_s*
  %71 = bitcast %struct.font_data_s* %67 to i8*
  %72 = bitcast %struct.font_data_s* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 160, i32 8, i1 false), !tbaa.struct !58
  %73 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %dict59 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %73, i32 0, i32 0
  %74 = bitcast %struct.ref_s* %dict59 to i8*
  %75 = bitcast %struct.ref_s* %newdict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 16, i32 8, i1 false), !tbaa.struct !38
  %value60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %newdict, i32 0, i32 1
  %pdict = bitcast %union.v* %value60 to %struct.dict_s**
  %76 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %76, i32 0, i32 0
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs62 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 0
  %77 = load i16, i16* %type_attrs62, align 2, !tbaa !45
  %conv63 = zext i16 %77 to i32
  %and64 = and i32 %conv63, -17
  %conv65 = trunc i32 %and64 to i16
  store i16 %conv65, i16* %type_attrs62, align 2, !tbaa !45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55, %if.then.13, %if.then.4
  %78 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %mlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i32* %dlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast %struct.ref_s* %scalemat to i8*
  call void @llvm.lifetime.end(i64 16, i8* %81) #2
  %82 = bitcast %struct.ref_s* %newmat to i8*
  call void @llvm.lifetime.end(i64 16, i8* %82) #2
  %83 = bitcast %struct.ref_s* %newdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %83) #2
  %84 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = bitcast %struct.ref_s** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = bitcast %struct.gs_font_s** %newfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = load i32, i32* %retval
  ret i32 %89
}

declare i32 @dict_maxlength(%struct.ref_s*) #1

declare i32 @dict_length(%struct.ref_s*) #1

declare i32 @dict_alloc(%struct.gs_ref_memory_s*, i32, %struct.ref_s*) #1

declare i32 @dict_copy_entries(%struct.ref_s*, %struct.ref_s*, i32, %struct.dict_stack_s*) #1

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #1

declare void @refset_null_new(%struct.ref_s*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @read_matrix(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_matrix_s*) #1

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #1

declare i32 @write_matrix_in(%struct.ref_s*, %struct.gs_matrix_s*, %struct.gs_dual_memory_s*, %struct.gs_ref_memory_s*) #1

; Function Attrs: nounwind uwtable
define i32 @font_restore(%struct.alloc_save_s* %save) #0 {
entry:
  %retval = alloca i32, align 4
  %save.addr = alloca %struct.alloc_save_s*, align 8
  %smem = alloca %struct.gs_memory_s*, align 8
  %pdir = alloca %struct.gs_font_dir_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pfont = alloca %struct.gs_font_s*, align 8
  %pfont9 = alloca %struct.gs_font_s*, align 8
  %pair = alloca %struct.cached_fm_pair_s*, align 8
  %n = alloca i32, align 4
  store %struct.alloc_save_s* %save, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %smem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_s* @gs_save_any_memory(%struct.alloc_save_s* %1) #3
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %smem, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_dir_s** %pdir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %smem, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 2
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !7
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 22
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !44
  store %struct.gs_font_dir_s* %5, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %6 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_font_dir_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

if.end:                                           ; preds = %entry
  %9 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  br label %otop

otop:                                             ; preds = %if.end.7, %if.end
  %10 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %orig_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %10, i32 0, i32 0
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_fonts, align 8, !tbaa !59
  store %struct.gs_font_s* %11, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %otop
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gs_font_s* %12, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !35
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %16 = bitcast %struct.gs_font_s* %15 to i8*
  %17 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %call2 = call i32 @alloc_is_since_save(i8* %16, %struct.alloc_save_s* %17) #3
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %for.body
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %call4 = call i32 @gs_purge_font(%struct.gs_font_s* %18) #3
  store i32 %call4, i32* %code, align 4, !tbaa !25
  %19 = load i32, i32* %code, align 4, !tbaa !25
  %cmp5 = icmp slt i32 %19, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %20 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.then.3
  br label %otop

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 0
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !60
  store %struct.gs_font_s* %22, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.6
  %23 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.70 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %24 = bitcast %struct.gs_font_s** %pfont9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  br label %top

top:                                              ; preds = %if.end.19, %cleanup.cont
  %25 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %scaled_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %25, i32 0, i32 1
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts, align 8, !tbaa !61
  store %struct.gs_font_s* %26, %struct.gs_font_s** %pfont9, align 8, !tbaa !1
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %top
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont9, align 8, !tbaa !1
  %cmp11 = icmp ne %struct.gs_font_s* %27, null
  br i1 %cmp11, label %for.body.12, label %for.end.23

for.body.12:                                      ; preds = %for.cond.10
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont9, align 8, !tbaa !1
  %29 = bitcast %struct.gs_font_s* %28 to i8*
  %30 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %call13 = call i32 @alloc_is_since_save(i8* %29, %struct.alloc_save_s* %30) #3
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %for.body.12
  %31 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont9, align 8, !tbaa !1
  %call16 = call i32 @gs_purge_font(%struct.gs_font_s* %31) #3
  store i32 %call16, i32* %code, align 4, !tbaa !25
  %32 = load i32, i32* %code, align 4, !tbaa !25
  %cmp17 = icmp slt i32 %32, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  %33 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

if.end.19:                                        ; preds = %if.then.15
  br label %top

if.end.20:                                        ; preds = %for.body.12
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont9, align 8, !tbaa !1
  %next22 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %34, i32 0, i32 0
  %35 = load %struct.gs_font_s*, %struct.gs_font_s** %next22, align 8, !tbaa !60
  store %struct.gs_font_s* %35, %struct.gs_font_s** %pfont9, align 8, !tbaa !1
  br label %for.cond.10

for.end.23:                                       ; preds = %for.cond.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %for.end.23, %if.then.18
  %36 = bitcast %struct.gs_font_s** %pfont9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %cleanup.dest.25 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.25, label %cleanup.70 [
    i32 0, label %cleanup.cont.26
  ]

cleanup.cont.26:                                  ; preds = %cleanup.24
  %37 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #2
  %38 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %fmcache = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %39, i32 0, i32 4
  %mdata = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache, i32 0, i32 2
  %40 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8, !tbaa !62
  store %struct.cached_fm_pair_s* %40, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %41 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %fmcache27 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %41, i32 0, i32 4
  %mmax = getelementptr inbounds %struct.fm_pair_cache_s, %struct.fm_pair_cache_s* %fmcache27, i32 0, i32 1
  %42 = load i32, i32* %mmax, align 4, !tbaa !63
  store i32 %42, i32* %n, align 4, !tbaa !25
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.60, %cleanup.cont.26
  %43 = load i32, i32* %n, align 4, !tbaa !25
  %cmp29 = icmp ugt i32 %43, 0
  br i1 %cmp29, label %for.body.30, label %for.end.61

for.body.30:                                      ; preds = %for.cond.28
  %44 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %font = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %44, i32 0, i32 0
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !64
  %cmp31 = icmp eq %struct.gs_font_s* %45, null
  br i1 %cmp31, label %land.lhs.true, label %if.then.33

land.lhs.true:                                    ; preds = %for.body.30
  %46 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %46, i32 0, i32 1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 0
  %47 = load i64, i64* %id, align 8, !tbaa !67
  %cmp32 = icmp ne i64 %47, 9223372036854775807
  br i1 %cmp32, label %if.then.33, label %if.end.59

if.then.33:                                       ; preds = %land.lhs.true, %for.body.30
  %48 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %font34 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %48, i32 0, i32 0
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %font34, align 8, !tbaa !64
  %cmp35 = icmp ne %struct.gs_font_s* %49, null
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.47

land.lhs.true.36:                                 ; preds = %if.then.33
  %50 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %font37 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %50, i32 0, i32 0
  %51 = load %struct.gs_font_s*, %struct.gs_font_s** %font37, align 8, !tbaa !64
  %52 = bitcast %struct.gs_font_s* %51 to i8*
  %53 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %call38 = call i32 @alloc_is_since_save(i8* %52, %struct.alloc_save_s* %53) #3
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %land.lhs.true.36
  %54 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %UID41 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %54, i32 0, i32 1
  %id42 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID41, i32 0, i32 0
  %55 = load i64, i64* %id42, align 8, !tbaa !67
  %cmp43 = icmp ne i64 %55, 9223372036854775807
  br i1 %cmp43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.then.40
  %56 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %57 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  call void @gs_clean_fm_pair(%struct.gs_font_dir_s* %56, %struct.cached_fm_pair_s* %57) #3
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.40
  %58 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %font46 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %58, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %font46, align 8, !tbaa !64
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.45, %land.lhs.true.36, %if.then.33
  %59 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %xfont = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %59, i32 0, i32 10
  %60 = load %struct.gx_xfont_s*, %struct.gx_xfont_s** %xfont, align 8, !tbaa !68
  %cmp48 = icmp ne %struct.gx_xfont_s* %60, null
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.58

land.lhs.true.49:                                 ; preds = %if.end.47
  %61 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %xfont50 = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %61, i32 0, i32 10
  %62 = load %struct.gx_xfont_s*, %struct.gx_xfont_s** %xfont50, align 8, !tbaa !68
  %63 = bitcast %struct.gx_xfont_s* %62 to i8*
  %64 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %call51 = call i32 @alloc_is_since_save(i8* %63, %struct.alloc_save_s* %64) #3
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %land.lhs.true.49
  %65 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %66 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %call54 = call i32 @gs_purge_fm_pair(%struct.gs_font_dir_s* %65, %struct.cached_fm_pair_s* %66, i32 1) #3
  store i32 %call54, i32* %code, align 4, !tbaa !25
  %67 = load i32, i32* %code, align 4, !tbaa !25
  %cmp55 = icmp slt i32 %67, 0
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.53
  %68 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.57:                                        ; preds = %if.then.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true.49, %if.end.47
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %69 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.cached_fm_pair_s, %struct.cached_fm_pair_s* %69, i32 1
  store %struct.cached_fm_pair_s* %incdec.ptr, %struct.cached_fm_pair_s** %pair, align 8, !tbaa !1
  %70 = load i32, i32* %n, align 4, !tbaa !25
  %dec = add i32 %70, -1
  store i32 %dec, i32* %n, align 4, !tbaa !25
  br label %for.cond.28

for.end.61:                                       ; preds = %for.cond.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %for.end.61, %if.then.56
  %71 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast %struct.cached_fm_pair_s** %pair to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %cleanup.dest.64 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.64, label %cleanup.70 [
    i32 0, label %cleanup.cont.65
  ]

cleanup.cont.65:                                  ; preds = %cleanup.62
  %73 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %call66 = call i32 @alloc_any_names_since_save(%struct.alloc_save_s* %73) #3
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %cleanup.cont.65
  %74 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8, !tbaa !1
  %75 = load %struct.alloc_save_s*, %struct.alloc_save_s** %save.addr, align 8, !tbaa !1
  %76 = bitcast %struct.alloc_save_s* %75 to i8*
  call void @gx_purge_selected_cached_chars(%struct.gs_font_dir_s* %74, i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)* @purge_if_name_removed, i8* %76) #3
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %cleanup.cont.65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

cleanup.70:                                       ; preds = %if.end.69, %cleanup.62, %cleanup.24, %cleanup, %if.then
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast %struct.gs_font_dir_s** %pdir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast %struct.gs_memory_s** %smem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = load i32, i32* %retval
  ret i32 %81
}

declare %struct.gs_memory_s* @gs_save_any_memory(%struct.alloc_save_s*) #1

declare i32 @alloc_is_since_save(i8*, %struct.alloc_save_s*) #1

declare i32 @gs_purge_font(%struct.gs_font_s*) #1

declare void @gs_clean_fm_pair(%struct.gs_font_dir_s*, %struct.cached_fm_pair_s*) #1

declare i32 @gs_purge_fm_pair(%struct.gs_font_dir_s*, %struct.cached_fm_pair_s*, i32) #1

declare i32 @alloc_any_names_since_save(%struct.alloc_save_s*) #1

declare void @gx_purge_selected_cached_chars(%struct.gs_font_dir_s*, i32 (%struct.gs_memory_s*, %struct.cached_char_s*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @purge_if_name_removed(%struct.gs_memory_s* %mem, %struct.cached_char_s* %cc, i8* %vsave) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cc.addr = alloca %struct.cached_char_s*, align 8
  %vsave.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.cached_char_s* %cc, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  store i8* %vsave, i8** %vsave.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.cached_char_s*, %struct.cached_char_s** %cc.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.cached_char_s, %struct.cached_char_s* %1, i32 0, i32 8
  %2 = load i64, i64* %code, align 8, !tbaa !69
  %conv = trunc i64 %2 to i32
  %3 = load i8*, i8** %vsave.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to %struct.alloc_save_s*
  %call = call i32 @alloc_name_index_is_since_save(%struct.gs_memory_s* %0, i32 %conv, %struct.alloc_save_s* %4) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @zfont_info(%struct.gs_font_s* %font, %struct.gs_point_s* %pscale, i32 %members, %struct.gs_font_info_s* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pscale.addr = alloca %struct.gs_point_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_font_info_s*, align 8
  %code = alloca i32, align 4
  %pfdict = alloca %struct.ref_s*, align 8
  %pfontinfo = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pscale, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !25
  store %struct.gs_font_info_s* %info, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = load %struct.gs_point_s*, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  %3 = load i32, i32* %members.addr, align 4, !tbaa !25
  %and = and i32 %3, -12481
  %4 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %call = call i32 @gs_default_font_info(%struct.gs_font_s* %1, %struct.gs_point_s* %2, i32 %and, %struct.gs_font_info_s* %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %5 = bitcast %struct.ref_s** %pfdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.ref_s** %pfontinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 8
  %11 = load i8*, i8** %client_data, align 8, !tbaa !28
  %12 = bitcast i8* %11 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %12, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pfdict, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %pfdict, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %struct.ref_s** %pfontinfo) #3
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %16 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false
  %17 = load i32, i32* %members.addr, align 4, !tbaa !25
  %and7 = and i32 %17, 64
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.6
  %18 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %19 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %Copyright = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %19, i32 0, i32 18
  %call8 = call i32 @zfont_info_has(%struct.ref_s* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), %struct.gs_const_string_s* %Copyright) #3
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %land.lhs.true
  %20 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members11 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %20, i32 0, i32 0
  %21 = load i32, i32* %members11, align 4, !tbaa !73
  %or = or i32 %21, 64
  store i32 %or, i32* %members11, align 4, !tbaa !73
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %land.lhs.true, %if.end.6
  %22 = load i32, i32* %members.addr, align 4, !tbaa !25
  %and13 = and i32 %22, 128
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %if.end.12
  %23 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %24 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %Notice = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %24, i32 0, i32 19
  %call16 = call i32 @zfont_info_has(%struct.ref_s* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct.gs_const_string_s* %Notice) #3
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %land.lhs.true.15
  %25 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members19 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %25, i32 0, i32 0
  %26 = load i32, i32* %members19, align 4, !tbaa !73
  %or20 = or i32 %26, 128
  store i32 %or20, i32* %members19, align 4, !tbaa !73
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %land.lhs.true.15, %if.end.12
  %27 = load i32, i32* %members.addr, align 4, !tbaa !25
  %and22 = and i32 %27, 4096
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.30

land.lhs.true.24:                                 ; preds = %if.end.21
  %28 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %29 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %FamilyName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %29, i32 0, i32 20
  %call25 = call i32 @zfont_info_has(%struct.ref_s* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %struct.gs_const_string_s* %FamilyName) #3
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %land.lhs.true.24
  %30 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members28 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %30, i32 0, i32 0
  %31 = load i32, i32* %members28, align 4, !tbaa !73
  %or29 = or i32 %31, 4096
  store i32 %or29, i32* %members28, align 4, !tbaa !73
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %land.lhs.true.24, %if.end.21
  %32 = load i32, i32* %members.addr, align 4, !tbaa !25
  %and31 = and i32 %32, 8192
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.39

land.lhs.true.33:                                 ; preds = %if.end.30
  %33 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %34 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %FullName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %34, i32 0, i32 21
  %call34 = call i32 @zfont_info_has(%struct.ref_s* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct.gs_const_string_s* %FullName) #3
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %land.lhs.true.33
  %35 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members37 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %35, i32 0, i32 0
  %36 = load i32, i32* %members37, align 4, !tbaa !73
  %or38 = or i32 %36, 8192
  store i32 %or38, i32* %members37, align 4, !tbaa !73
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %land.lhs.true.33, %if.end.30
  %37 = load i32, i32* %members.addr, align 4, !tbaa !25
  %and40 = and i32 %37, 16384
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.50

land.lhs.true.42:                                 ; preds = %if.end.39
  %38 = load %struct.ref_s*, %struct.ref_s** %pfontinfo, align 8, !tbaa !1
  %call43 = call i32 @dict_find_string(%struct.ref_s* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct.ref_s** %pvalue) #3
  %cmp44 = icmp sgt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %land.lhs.true.42
  %39 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %40 = load i64, i64* %intval, align 8, !tbaa !5
  %conv47 = trunc i64 %40 to i32
  %41 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %EmbeddingRights = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %41, i32 0, i32 22
  store i32 %conv47, i32* %EmbeddingRights, align 4, !tbaa !78
  %42 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %members48 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %42, i32 0, i32 0
  %43 = load i32, i32* %members48, align 4, !tbaa !73
  %or49 = or i32 %43, 16384
  store i32 %or49, i32* %members48, align 4, !tbaa !73
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %land.lhs.true.42, %if.end.39
  %44 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %if.then.5, %if.then
  %45 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast %struct.ref_s** %pfontinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast %struct.ref_s** %pfdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i32 @gs_default_font_info(%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @zfont_info_has(%struct.ref_s* %pfidict, i8* %key, %struct.gs_const_string_s* %pmember) #0 {
entry:
  %retval = alloca i32, align 4
  %pfidict.addr = alloca %struct.ref_s*, align 8
  %key.addr = alloca i8*, align 8
  %pmember.addr = alloca %struct.gs_const_string_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pfidict, %struct.ref_s** %pfidict.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pmember, %struct.gs_const_string_s** %pmember.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.ref_s*, %struct.ref_s** %pfidict.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %1, i8* %2, %struct.ref_s** %pvalue) #3
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 18
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %7 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %8 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pmember.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %8, i32 0, i32 0
  store i8* %7, i8** %data, align 8, !tbaa !79
  %9 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !55
  %11 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pmember.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %11, i32 0, i32 1
  store i32 %10, i32* %size, align 4, !tbaa !80
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define %struct.ref_s* @zfont_get_to_unicode_map(%struct.gs_font_dir_s* %dir) #0 {
entry:
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pud = alloca %struct.gs_unicode_decoder_s*, align 8
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_unicode_decoder_s** %pud to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %glyph_to_unicode_table = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 10
  %2 = load i8*, i8** %glyph_to_unicode_table, align 8, !tbaa !81
  %3 = bitcast i8* %2 to %struct.gs_unicode_decoder_s*
  store %struct.gs_unicode_decoder_s* %3, %struct.gs_unicode_decoder_s** %pud, align 8, !tbaa !1
  %4 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pud, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_unicode_decoder_s* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pud, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_unicode_decoder_s, %struct.gs_unicode_decoder_s* %5, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ref_s* [ null, %cond.true ], [ %data, %cond.false ]
  %6 = bitcast %struct.gs_unicode_decoder_s** %pud to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret %struct.ref_s* %cond
}

declare %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @make_font(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %fp = alloca %struct.ref_s*, align 8
  %oldfont = alloca %struct.gs_font_s*, align 8
  %newfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %pencoding = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %space = alloca i32, align 4
  %olddict = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !13
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %fp, align 8, !tbaa !1
  %5 = bitcast %struct.gs_font_s** %oldfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.gs_font_s** %newfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast %struct.ref_s** %pencoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store %struct.ref_s* null, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %call = call i32 @font_param(%struct.ref_s* %9, %struct.gs_font_s** %oldfont) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %10 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %14 = load i32, i32* %current_space, align 4, !tbaa !82
  store i32 %14, i32* %space, align 4, !tbaa !25
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %16 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = load i16, i16* %type_attrs, align 2, !tbaa !45
  %conv = zext i16 %17 to i32
  %and = and i32 %conv, 12
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory1, i32 %and) #3
  %18 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %call2 = call i32 @dict_find_string(%struct.ref_s* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct.ref_s** %pencoding) #3
  %cmp3 = icmp sgt i32 %call2, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %19 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %20 = load i16, i16* %type_attrs6, align 2, !tbaa !45
  %conv7 = zext i16 %20 to i32
  %and8 = and i32 %conv7, 15360
  %cmp9 = icmp eq i32 %and8, 1024
  br i1 %cmp9, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  store i32 -10, i32* %code, align 4, !tbaa !25
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %if.end
  %21 = bitcast %struct.ref_s* %olddict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #2
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %oldfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %22, i32 0, i32 8
  %23 = load i8*, i8** %client_data, align 8, !tbaa !28
  %24 = bitcast i8* %23 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %24, i32 0, i32 0
  %25 = bitcast %struct.ref_s* %olddict to i8*
  %26 = bitcast %struct.ref_s* %dict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !tbaa.struct !38
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %oldfont, align 8, !tbaa !1
  %client_data12 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %27, i32 0, i32 8
  %28 = load i8*, i8** %client_data12, align 8, !tbaa !28
  %29 = bitcast i8* %28 to %struct.font_data_s*
  %dict13 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %29, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %31 = bitcast %struct.ref_s* %dict13 to i8*
  %32 = bitcast %struct.ref_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !tbaa.struct !38
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory14, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %call15 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %35) #3
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call15, i32 0, i32 22
  %36 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !44
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %oldfont, align 8, !tbaa !1
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call16 = call i32 @gs_makefont(%struct.gs_font_dir_s* %36, %struct.gs_font_s* %37, %struct.gs_matrix_s* %38, %struct.gs_font_s** %newfont) #3
  store i32 %call16, i32* %code, align 4, !tbaa !25
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %oldfont, align 8, !tbaa !1
  %client_data17 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %39, i32 0, i32 8
  %40 = load i8*, i8** %client_data17, align 8, !tbaa !28
  %41 = bitcast i8* %40 to %struct.font_data_s*
  %dict18 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %41, i32 0, i32 0
  %42 = bitcast %struct.ref_s* %dict18 to i8*
  %43 = bitcast %struct.ref_s* %olddict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false), !tbaa.struct !38
  %44 = bitcast %struct.ref_s* %olddict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %44) #2
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.11
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 1
  %46 = load i32, i32* %space, align 4, !tbaa !25
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory20, i32 %46) #3
  %47 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = load i32, i32* %code, align 4, !tbaa !25
  %cmp21 = icmp slt i32 %48, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  %49 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.19
  %50 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %cmp25 = icmp ne %struct.ref_s* %50, null
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.39

land.lhs.true.27:                                 ; preds = %if.end.24
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %current29 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory28, i32 0, i32 0
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current29, align 8, !tbaa !41
  %53 = bitcast %struct.gs_ref_memory_s* %52 to %struct.gs_memory_s*
  %54 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8, !tbaa !1
  %client_data30 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %55, i32 0, i32 8
  %56 = load i8*, i8** %client_data30, align 8, !tbaa !28
  %57 = bitcast i8* %56 to %struct.font_data_s*
  %Encoding = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %57, i32 0, i32 3
  %call31 = call i32 @obj_eq(%struct.gs_memory_s* %53, %struct.ref_s* %54, %struct.ref_s* %Encoding) #3
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.end.39, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.27
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %58, i32 0, i32 11
  %59 = load i32, i32* %FontType, align 4, !tbaa !83
  %cmp33 = icmp eq i32 %59, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.32
  %60 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8, !tbaa !1
  %client_data37 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %60, i32 0, i32 8
  %61 = load i8*, i8** %client_data37, align 8, !tbaa !28
  %62 = bitcast i8* %61 to %struct.font_data_s*
  %Encoding38 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %62, i32 0, i32 3
  %63 = load %struct.ref_s*, %struct.ref_s** %pencoding, align 8, !tbaa !1
  %64 = bitcast %struct.ref_s* %Encoding38 to i8*
  %65 = bitcast %struct.ref_s* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 8, i1 false), !tbaa.struct !38
  %66 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8, !tbaa !1
  %67 = bitcast %struct.gs_font_s* %66 to %struct.gs_font_base_s*
  call void @lookup_gs_simple_font_encoding(%struct.gs_font_base_s* %67) #3
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.36, %land.lhs.true.27, %if.end.24
  %68 = load %struct.ref_s*, %struct.ref_s** %fp, align 8, !tbaa !1
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %newfont, align 8, !tbaa !1
  %client_data40 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %69, i32 0, i32 8
  %70 = load i8*, i8** %client_data40, align 8, !tbaa !28
  %71 = bitcast i8* %70 to %struct.font_data_s*
  %dict41 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %71, i32 0, i32 0
  %72 = bitcast %struct.ref_s* %68 to i8*
  %73 = bitcast %struct.ref_s* %dict41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 16, i32 8, i1 false), !tbaa.struct !38
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %74, i32 0, i32 26
  %stack43 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack43, i32 0, i32 0
  %75 = load %struct.ref_s*, %struct.ref_s** %p44, align 8, !tbaa !13
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 -1
  store %struct.ref_s* %add.ptr45, %struct.ref_s** %p44, align 8, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.35, %if.then.23, %if.then
  %76 = bitcast %struct.ref_s** %pencoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast %struct.gs_font_s** %newfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast %struct.gs_font_s** %oldfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast %struct.ref_s** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = load i32, i32* %retval
  ret i32 %82
}

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #1

declare i32 @gs_makefont(%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**) #1

declare %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s*) #1

declare void @lookup_gs_simple_font_encoding(%struct.gs_font_base_s*) #1

declare i32 @real_param(%struct.ref_s*, double*) #1

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #1

declare void @gs_cachestatus(%struct.gs_font_dir_s*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @make_uint_array(%struct.ref_s* %op, i32* %intp, i32 %count) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %intp.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i32* %intp, i32** %intp.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !25
  %2 = load i32, i32* %count.addr, align 4, !tbaa !25
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %intp.addr, align 8, !tbaa !1
  %4 = load i32, i32* %3, align 4, !tbaa !25
  %conv = zext i32 %4 to i64
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !5
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %9 = load i32*, i32** %intp.addr, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %incdec.ptr1, i32** %intp.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  ret void
}

declare i32 @gs_setcacheupper(%struct.gs_font_dir_s*, i32) #1

declare i32 @gs_setcachesize(%struct.gs_state_s*, %struct.gs_font_dir_s*, i32) #1

declare i32 @gs_setcachelower(%struct.gs_font_dir_s*, i32) #1

declare i32 @zcleartomark(%struct.gs_context_state_s*) #1

declare i32 @gs_currentcachesize(%struct.gs_font_dir_s*) #1

declare i32 @gs_currentcachelower(%struct.gs_font_dir_s*) #1

declare i32 @gs_currentcacheupper(%struct.gs_font_dir_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @setup_unicode_decoder(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %Decoding) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %Decoding.addr = alloca %struct.ref_s*, align 8
  %pud = alloca %struct.gs_unicode_decoder_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %Decoding, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_unicode_decoder_s** %pud to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !41
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %4 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !54
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current2, align 8, !tbaa !41
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %call = call i8* %4(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* @st_unicode_decoder, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #3
  %8 = bitcast i8* %call to %struct.gs_unicode_decoder_s*
  store %struct.gs_unicode_decoder_s* %8, %struct.gs_unicode_decoder_s** %pud, align 8, !tbaa !1
  %9 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pud, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_unicode_decoder_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pud, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_unicode_decoder_s, %struct.gs_unicode_decoder_s* %10, i32 0, i32 0
  %11 = load %struct.ref_s*, %struct.ref_s** %Decoding.addr, align 8, !tbaa !1
  %12 = bitcast %struct.ref_s* %data to i8*
  %13 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !38
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 5
  %15 = load i32, i32* %new_mask, align 4, !tbaa !84
  %16 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pud, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_unicode_decoder_s, %struct.gs_unicode_decoder_s* %16, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = load i16, i16* %type_attrs, align 2, !tbaa !45
  %conv = zext i16 %17 to i32
  %or = or i32 %conv, %15
  %conv5 = trunc i32 %or to i16
  store i16 %conv5, i16* %type_attrs, align 2, !tbaa !45
  %18 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pud, align 8, !tbaa !1
  %19 = bitcast %struct.gs_unicode_decoder_s* %18 to i8*
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %current7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current7, align 8, !tbaa !41
  %22 = bitcast %struct.gs_ref_memory_s* %21 to %struct.gs_memory_s*
  %call8 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %22) #3
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call8, i32 0, i32 22
  %23 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !44
  %glyph_to_unicode_table = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %23, i32 0, i32 10
  store i8* %19, i8** %glyph_to_unicode_table, align 8, !tbaa !81
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %24 = bitcast %struct.gs_unicode_decoder_s** %pud to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal void @unicode_decoder_clear_marks(%struct.gs_memory_s* %cmem, i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pptr = alloca %struct.gs_unicode_decoder_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !25
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_unicode_decoder_s** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_unicode_decoder_s*
  store %struct.gs_unicode_decoder_s* %2, %struct.gs_unicode_decoder_s** %pptr, align 8, !tbaa !1
  %3 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pptr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_unicode_decoder_s, %struct.gs_unicode_decoder_s* %3, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !45
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, -2
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, i16* %type_attrs, align 2, !tbaa !45
  %5 = bitcast %struct.gs_unicode_decoder_s** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @unicode_decoder_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pptr = alloca %struct.gs_unicode_decoder_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !25
  store i32 %index, i32* %index.addr, align 4, !tbaa !25
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_unicode_decoder_s** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_unicode_decoder_s*
  store %struct.gs_unicode_decoder_s* %2, %struct.gs_unicode_decoder_s** %pptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !25
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pptr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_unicode_decoder_s, %struct.gs_unicode_decoder_s* %4, i32 0, i32 0
  %5 = bitcast %struct.ref_s* %data to i8*
  %6 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %6, i32 0, i32 0
  store i8* %5, i8** %ptr, align 8, !tbaa !85
  store %struct.gs_ptr_procs_s* @ptr_ref_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default
  %7 = bitcast %struct.gs_unicode_decoder_s** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  %8 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %8
}

; Function Attrs: nounwind uwtable
define internal void @unicode_decoder_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pptr = alloca %struct.gs_unicode_decoder_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !25
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_unicode_decoder_s** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_unicode_decoder_s*
  store %struct.gs_unicode_decoder_s* %2, %struct.gs_unicode_decoder_s** %pptr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_with_refs_s**
  %5 = load %struct.gc_procs_with_refs_s*, %struct.gc_procs_with_refs_s** %4, align 8, !tbaa !1
  %reloc_refs = getelementptr inbounds %struct.gc_procs_with_refs_s, %struct.gc_procs_with_refs_s* %5, i32 0, i32 5
  %6 = load void (i16*, i16*, %struct.gc_state_s*)*, void (i16*, i16*, %struct.gc_state_s*)** %reloc_refs, align 8, !tbaa !87
  %7 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pptr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_unicode_decoder_s, %struct.gs_unicode_decoder_s* %7, i32 0, i32 0
  %8 = bitcast %struct.ref_s* %data to i16*
  %9 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pptr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_unicode_decoder_s, %struct.gs_unicode_decoder_s* %9, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data1, i64 1
  %10 = bitcast %struct.ref_s* %add.ptr to i16*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %6(i16* %8, i16* %10, %struct.gc_state_s* %11) #3
  %12 = load %struct.gs_unicode_decoder_s*, %struct.gs_unicode_decoder_s** %pptr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_unicode_decoder_s, %struct.gs_unicode_decoder_s* %12, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %data2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = load i16, i16* %type_attrs, align 2, !tbaa !45
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, -2
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, i16* %type_attrs, align 2, !tbaa !45
  %14 = bitcast %struct.gs_unicode_decoder_s** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret void
}

declare %struct.gs_font_dir_s* @gs_font_dir_alloc2(%struct.gs_memory_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @zfont_global_glyph_code(%struct.gs_memory_s* %mem, %struct.gs_const_string_s* %gstr, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %gstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pglyph.addr = alloca i64*, align 8
  %v = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %gstr, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 2
  %3 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !7
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %3, i32 0, i32 16
  %4 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !10
  %5 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !79
  %7 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %7, i32 0, i32 1
  %8 = load i32, i32* %size, align 4, !tbaa !80
  %call = call i32 @names_ref(%struct.name_table_s* %4, i8* %6, i32 %8, %struct.ref_s* %v, i32 0) #3
  store i32 %call, i32* %code, align 4, !tbaa !25
  %9 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 2
  %12 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !7
  %gs_name_table2 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %12, i32 0, i32 16
  %13 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table2, align 8, !tbaa !10
  %call3 = call i32 @names_index(%struct.name_table_s* %13, %struct.ref_s* %v) #3
  %conv = zext i32 %call3 to i64
  %14 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %conv, i64* %14, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.end(i64 16, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @gs_register_struct_root(%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8**, i8*) #1

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #1

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #1

declare i32 @alloc_name_index_is_since_save(%struct.gs_memory_s*, i32, %struct.alloc_save_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !2, i64 192}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!11, !2, i64 120}
!11 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !6, i64 104, !2, i64 112, !2, i64 120, !12, i64 128, !2, i64 136, !12, i64 144, !12, i64 148, !3, i64 152, !2, i64 168, !12, i64 176, !2, i64 184, !12, i64 192, !2, i64 200, !2, i64 208}
!12 = !{!"int", !3, i64 0}
!13 = !{!14, !2, i64 624}
!14 = !{!"gs_context_state_s", !2, i64 0, !15, i64 8, !12, i64 80, !17, i64 88, !17, i64 104, !6, i64 120, !6, i64 128, !6, i64 136, !12, i64 144, !12, i64 148, !17, i64 152, !17, i64 168, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !20, i64 264, !20, i64 304, !2, i64 344, !12, i64 352, !2, i64 360, !21, i64 368, !23, i64 520, !24, i64 624, !2, i64 720}
!15 = !{!"gs_dual_memory_s", !2, i64 0, !16, i64 8, !12, i64 48, !2, i64 56, !12, i64 64, !12, i64 68}
!16 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!17 = !{!"ref_s", !18, i64 0, !3, i64 8}
!18 = !{!"tas_s", !19, i64 0, !19, i64 2, !12, i64 4}
!19 = !{!"short", !3, i64 0}
!20 = !{!"op_array_table_s", !17, i64 0, !2, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!21 = !{!"dict_stack_s", !22, i64 0, !12, i64 96, !12, i64 100, !12, i64 104, !2, i64 112, !12, i64 120, !2, i64 128, !17, i64 136}
!22 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !17, i64 24, !12, i64 40, !12, i64 44, !17, i64 48, !12, i64 64, !12, i64 68, !12, i64 72, !2, i64 80, !2, i64 88}
!23 = !{!"exec_stack_s", !22, i64 0, !2, i64 96}
!24 = !{!"op_stack_s", !22, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!14, !2, i64 0}
!27 = !{!3, !3, i64 0}
!28 = !{!29, !2, i64 72}
!29 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !12, i64 32, !30, i64 40, !6, i64 56, !2, i64 64, !2, i64 72, !31, i64 80, !31, i64 104, !3, i64 128, !12, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !12, i64 148, !12, i64 152, !32, i64 156, !12, i64 160, !33, i64 168, !34, i64 272, !34, i64 324}
!30 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!31 = !{!"gs_matrix_s", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20}
!32 = !{!"float", !3, i64 0}
!33 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!34 = !{!"gs_font_name_s", !3, i64 0, !12, i64 48}
!35 = !{!29, !2, i64 16}
!36 = !{!14, !2, i64 640}
!37 = !{!14, !12, i64 688}
!38 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 4, !25, i64 8, i64 8, !5, i64 8, i64 2, !39, i64 8, i64 4, !40, i64 8, i64 8, !5, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !5}
!39 = !{!19, !19, i64 0}
!40 = !{!32, !32, i64 0}
!41 = !{!14, !2, i64 8}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !3, i64 0}
!44 = !{!11, !2, i64 168}
!45 = !{!17, !19, i64 0}
!46 = !{!29, !12, i64 32}
!47 = !{!8, !2, i64 0}
!48 = !{!8, !2, i64 200}
!49 = !{!50, !2, i64 128}
!50 = !{!"gs_font_dir_s", !2, i64 0, !2, i64 8, !12, i64 16, !12, i64 20, !51, i64 24, !52, i64 56, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !12, i64 192, !2, i64 200, !2, i64 208, !6, i64 216}
!51 = !{!"fm_pair_cache_s", !12, i64 0, !12, i64 4, !2, i64 8, !12, i64 16, !12, i64 20, !12, i64 24}
!52 = !{!"char_cache_s", !2, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !2, i64 72, !2, i64 80}
!53 = !{!50, !2, i64 208}
!54 = !{!8, !2, i64 72}
!55 = !{!17, !12, i64 4}
!56 = !{i64 0, i64 4, !40, i64 4, i64 4, !40, i64 8, i64 4, !40, i64 12, i64 4, !40, i64 16, i64 4, !40, i64 20, i64 4, !40}
!57 = !{!29, !2, i64 64}
!58 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 4, !25, i64 8, i64 8, !5, i64 8, i64 2, !39, i64 8, i64 4, !40, i64 8, i64 8, !5, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !5, i64 16, i64 2, !39, i64 18, i64 2, !39, i64 20, i64 4, !25, i64 24, i64 8, !5, i64 24, i64 2, !39, i64 24, i64 4, !40, i64 24, i64 8, !5, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !5, i64 32, i64 2, !39, i64 34, i64 2, !39, i64 36, i64 4, !25, i64 40, i64 8, !5, i64 40, i64 2, !39, i64 40, i64 4, !40, i64 40, i64 8, !5, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !5, i64 48, i64 2, !39, i64 50, i64 2, !39, i64 52, i64 4, !25, i64 56, i64 8, !5, i64 56, i64 2, !39, i64 56, i64 4, !40, i64 56, i64 8, !5, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !5, i64 64, i64 2, !39, i64 66, i64 2, !39, i64 68, i64 4, !25, i64 72, i64 8, !5, i64 72, i64 2, !39, i64 72, i64 4, !40, i64 72, i64 8, !5, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !1, i64 72, i64 8, !5, i64 80, i64 2, !39, i64 82, i64 2, !39, i64 84, i64 4, !25, i64 88, i64 8, !5, i64 88, i64 2, !39, i64 88, i64 4, !40, i64 88, i64 8, !5, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !1, i64 88, i64 8, !5, i64 96, i64 2, !39, i64 98, i64 2, !39, i64 100, i64 4, !25, i64 104, i64 8, !5, i64 104, i64 2, !39, i64 104, i64 4, !40, i64 104, i64 8, !5, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !5, i64 112, i64 2, !39, i64 114, i64 2, !39, i64 116, i64 4, !25, i64 120, i64 8, !5, i64 120, i64 2, !39, i64 120, i64 4, !40, i64 120, i64 8, !5, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !5, i64 128, i64 2, !39, i64 130, i64 2, !39, i64 132, i64 4, !25, i64 136, i64 8, !5, i64 136, i64 2, !39, i64 136, i64 4, !40, i64 136, i64 8, !5, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !5, i64 96, i64 2, !39, i64 98, i64 2, !39, i64 100, i64 4, !25, i64 104, i64 8, !5, i64 104, i64 2, !39, i64 104, i64 4, !40, i64 104, i64 8, !5, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !5, i64 112, i64 2, !39, i64 114, i64 2, !39, i64 116, i64 4, !25, i64 120, i64 8, !5, i64 120, i64 2, !39, i64 120, i64 4, !40, i64 120, i64 8, !5, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !5, i64 128, i64 2, !39, i64 130, i64 2, !39, i64 132, i64 4, !25, i64 136, i64 8, !5, i64 136, i64 2, !39, i64 136, i64 4, !40, i64 136, i64 8, !5, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !5, i64 144, i64 4, !25, i64 152, i64 8, !5, i64 96, i64 2, !39, i64 98, i64 2, !39, i64 100, i64 4, !25, i64 104, i64 8, !5, i64 104, i64 2, !39, i64 104, i64 4, !40, i64 104, i64 8, !5, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !1, i64 104, i64 8, !5, i64 112, i64 2, !39, i64 114, i64 2, !39, i64 116, i64 4, !25, i64 120, i64 8, !5, i64 120, i64 2, !39, i64 120, i64 4, !40, i64 120, i64 8, !5, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !1, i64 120, i64 8, !5, i64 128, i64 2, !39, i64 130, i64 2, !39, i64 132, i64 4, !25, i64 136, i64 8, !5, i64 136, i64 2, !39, i64 136, i64 4, !40, i64 136, i64 8, !5, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !1, i64 136, i64 8, !5}
!59 = !{!50, !2, i64 0}
!60 = !{!29, !2, i64 0}
!61 = !{!50, !2, i64 8}
!62 = !{!50, !2, i64 32}
!63 = !{!50, !12, i64 28}
!64 = !{!65, !2, i64 0}
!65 = !{!"cached_fm_pair_s", !2, i64 0, !66, i64 8, !3, i64 24, !12, i64 28, !32, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !12, i64 48, !12, i64 52, !2, i64 56, !2, i64 64, !12, i64 72, !2, i64 80, !2, i64 88, !12, i64 96, !12, i64 100, !12, i64 104}
!66 = !{!"gs_uid_s", !6, i64 0, !2, i64 8}
!67 = !{!66, !6, i64 0}
!68 = !{!65, !2, i64 56}
!69 = !{!70, !6, i64 40}
!70 = !{!"cached_char_s", !71, i64 0, !19, i64 8, !19, i64 10, !19, i64 12, !19, i64 14, !6, i64 16, !2, i64 24, !12, i64 32, !6, i64 40, !3, i64 48, !2, i64 56, !12, i64 64, !12, i64 68, !72, i64 72, !6, i64 80, !72, i64 88, !72, i64 96}
!71 = !{!"gx_cached_bits_head_s", !12, i64 0, !12, i64 4}
!72 = !{!"gs_fixed_point_s", !12, i64 0, !12, i64 4}
!73 = !{!74, !12, i64 0}
!74 = !{!"gs_font_info_s", !12, i64 0, !12, i64 4, !12, i64 8, !75, i64 12, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !32, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !77, i64 88, !77, i64 104, !77, i64 120, !77, i64 136, !12, i64 152}
!75 = !{!"gs_int_rect_s", !76, i64 0, !76, i64 8}
!76 = !{!"gs_int_point_s", !12, i64 0, !12, i64 4}
!77 = !{!"gs_const_string_s", !2, i64 0, !12, i64 8}
!78 = !{!74, !12, i64 152}
!79 = !{!77, !2, i64 0}
!80 = !{!77, !12, i64 8}
!81 = !{!50, !2, i64 160}
!82 = !{!15, !12, i64 48}
!83 = !{!29, !3, i64 128}
!84 = !{!15, !12, i64 68}
!85 = !{!86, !2, i64 0}
!86 = !{!"enum_ptr_s", !2, i64 0, !12, i64 8}
!87 = !{!88, !2, i64 40}
!88 = !{!"gc_procs_with_refs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
