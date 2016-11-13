; ModuleID = './zusparam.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.param_set_s = type { %struct.long_param_def_s*, i32, %struct.bool_param_def_s*, i32, %struct.string_param_def_s*, i32 }
%struct.long_param_def_s = type { i8*, i64, i64, i64 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*, i64)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
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
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.bool_param_def_s = type { i8*, i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*, i32)* }
%struct.string_param_def_s = type { i8*, void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* }
%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.dict_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.4, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_s }
%union.anon.4 = type { %struct.anon }
%struct.anon = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.iparam_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.5, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { {}*, %struct.ref_s, i32 }
%struct.iparam_loc_s = type { %struct.ref_s*, i32* }
%struct.password_s = type { i32, [64 x i8] }
%struct.array_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.12, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_s*, %struct.ref_s* }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
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
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
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
%struct.gx_device_clist_writer_s = type opaque
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
%struct.gs_fixed_point_s = type { i32, i32 }
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.2 }
%union.anon.2 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, {}*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.0 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon.0 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.stack_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.9, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_stack_s*, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }

@user_param_set = internal constant %struct.param_set_s { %struct.long_param_def_s* getelementptr inbounds ([13 x %struct.long_param_def_s], [13 x %struct.long_param_def_s]* @user_long_params, i32 0, i32 0), i32 13, %struct.bool_param_def_s* getelementptr inbounds ([4 x %struct.bool_param_def_s], [4 x %struct.bool_param_def_s]* @user_bool_params, i32 0, i32 0), i32 4, %struct.string_param_def_s* getelementptr inbounds ([8 x %struct.string_param_def_s], [8 x %struct.string_param_def_s]* @user_string_params, i32 0, i32 0), i32 8 }, align 8
@.str = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"0.currentsystemparams\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"0.currentuserparams\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"1.getsystemparam\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"1.getuserparam\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"1.setsystemparams\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"1.setuserparams\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"1.checkpassword\00", align 1
@zusparam_op_defs = constant [9 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentsystemparams }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentuserparams }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetsystemparam }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zgetuserparam }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetsystemparams }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetuserparams }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcheckpassword }, %struct.op_def zeroinitializer], align 16
@user_long_params = internal constant [13 x %struct.long_param_def_s] [%struct.long_param_def_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 0, i64 4294967295, i64 (%struct.gs_context_state_s*)* @current_JobTimeout, i32 (%struct.gs_context_state_s*, i64)* @set_JobTimeout }, %struct.long_param_def_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i64 -2147483648, i64 4294967295, i64 (%struct.gs_context_state_s*)* @current_MaxFontItem, i32 (%struct.gs_context_state_s*, i64)* @set_MaxFontItem }, %struct.long_param_def_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i64 -2147483648, i64 4294967295, i64 (%struct.gs_context_state_s*)* @current_MinFontCompress, i32 (%struct.gs_context_state_s*, i64)* @set_MinFontCompress }, %struct.long_param_def_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i64 0, i64 4294967295, i64 (%struct.gs_context_state_s*)* @current_MaxOpStack, i32 (%struct.gs_context_state_s*, i64)* @set_MaxOpStack }, %struct.long_param_def_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i64 0, i64 4294967295, i64 (%struct.gs_context_state_s*)* @current_MaxDictStack, i32 (%struct.gs_context_state_s*, i64)* @set_MaxDictStack }, %struct.long_param_def_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i64 0, i64 4294967295, i64 (%struct.gs_context_state_s*)* @current_MaxExecStack, i32 (%struct.gs_context_state_s*, i64)* @set_MaxExecStack }, %struct.long_param_def_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i64 0, i64 9223372036854775807, i64 (%struct.gs_context_state_s*)* @current_MaxLocalVM, i32 (%struct.gs_context_state_s*, i64)* @set_MaxLocalVM }, %struct.long_param_def_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i64 -2, i64 0, i64 (%struct.gs_context_state_s*)* @current_VMReclaim, i32 (%struct.gs_context_state_s*, i64)* @set_vm_reclaim }, %struct.long_param_def_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i64 -1, i64 9223372036854775807, i64 (%struct.gs_context_state_s*)* @current_VMThreshold, i32 (%struct.gs_context_state_s*, i64)* @set_vm_threshold }, %struct.long_param_def_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i64 0, i64 4294967295, i64 (%struct.gs_context_state_s*)* @current_WaitTimeout, i32 (%struct.gs_context_state_s*, i64)* @set_WaitTimeout }, %struct.long_param_def_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i64 0, i64 4294967295, i64 (%struct.gs_context_state_s*)* @current_MinScreenLevels, i32 (%struct.gs_context_state_s*, i64)* @set_MinScreenLevels }, %struct.long_param_def_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i64 0, i64 1, i64 (%struct.gs_context_state_s*)* @current_AlignToPixels, i32 (%struct.gs_context_state_s*, i64)* @set_AlignToPixels }, %struct.long_param_def_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i64 0, i64 3, i64 (%struct.gs_context_state_s*)* @current_GridFitTT, i32 (%struct.gs_context_state_s*, i64)* @set_GridFitTT }], align 16
@user_bool_params = internal constant [4 x %struct.bool_param_def_s] [%struct.bool_param_def_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @current_AccurateScreens, i32 (%struct.gs_context_state_s*, i32)* @set_AccurateScreens }, %struct.bool_param_def_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @current_LockFilePermissions, i32 (%struct.gs_context_state_s*, i32)* @set_LockFilePermissions }, %struct.bool_param_def_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @current_RenderTTNotdef, i32 (%struct.gs_context_state_s*, i32)* @set_RenderTTNotdef }, %struct.bool_param_def_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @current_OverrideICC, i32 (%struct.gs_context_state_s*, i32)* @set_OverrideICC }], align 16
@user_string_params = internal constant [8 x %struct.string_param_def_s] [%struct.string_param_def_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @current_default_gray_icc, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @set_default_gray_icc }, %struct.string_param_def_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @current_default_rgb_icc, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @set_default_rgb_icc }, %struct.string_param_def_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @current_default_cmyk_icc, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @set_default_cmyk_icc }, %struct.string_param_def_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @current_named_icc, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @set_named_profile_icc }, %struct.string_param_def_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @current_icc_directory, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @set_icc_directory }, %struct.string_param_def_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @current_lab_icc, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @set_lab_icc }, %struct.string_param_def_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @current_devicen_icc, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @set_devicen_profile_icc }, %struct.string_param_def_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @current_srcgtag_icc, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @set_srcgtag_icc }], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"JobTimeout\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"MaxFontItem\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"MinFontCompress\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"MaxOpStack\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"MaxDictStack\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"MaxExecStack\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"MaxLocalVM\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"VMReclaim\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"VMThreshold\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"WaitTimeout\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"MinScreenLevels\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"AlignToPixels\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"GridFitTT\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"AccurateScreens\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"LockFilePermissions\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"RenderTTNotdef\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"OverrideICC\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"DefaultGrayProfile\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"DefaultRGBProfile\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"DefaultCMYKProfile\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"NamedProfile\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"ICCProfilesDir\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"LabProfile\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"DeviceNProfile\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"SourceObjectICC\00", align 1
@system_param_set = internal constant %struct.param_set_s { %struct.long_param_def_s* getelementptr inbounds ([6 x %struct.long_param_def_s], [6 x %struct.long_param_def_s]* @system_long_params, i32 0, i32 0), i32 6, %struct.bool_param_def_s* getelementptr inbounds ([1 x %struct.bool_param_def_s], [1 x %struct.bool_param_def_s]* @system_bool_params, i32 0, i32 0), i32 1, %struct.string_param_def_s* getelementptr inbounds ([1 x %struct.string_param_def_s], [1 x %struct.string_param_def_s]* @system_string_params, i32 0, i32 0), i32 1 }, align 8
@system_long_params = internal constant [6 x %struct.long_param_def_s] [%struct.long_param_def_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i64 -9223372036854775808, i64 9223372036854775807, i64 (%struct.gs_context_state_s*)* @current_BuildTime, i32 (%struct.gs_context_state_s*, i64)* null }, %struct.long_param_def_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i64 0, i64 4294967295, i64 (%struct.gs_context_state_s*)* @current_MaxFontCache, i32 (%struct.gs_context_state_s*, i64)* @set_MaxFontCache }, %struct.long_param_def_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i64 0, i64 4294967295, i64 (%struct.gs_context_state_s*)* @current_CurFontCache, i32 (%struct.gs_context_state_s*, i64)* null }, %struct.long_param_def_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i64 -9223372036854775808, i64 9223372036854775807, i64 (%struct.gs_context_state_s*)* @current_Revision, i32 (%struct.gs_context_state_s*, i64)* null }, %struct.long_param_def_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i64 -9223372036854775808, i64 9223372036854775807, i64 (%struct.gs_context_state_s*)* @current_PageCount, i32 (%struct.gs_context_state_s*, i64)* null }, %struct.long_param_def_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i64 0, i64 9223372036854775807, i64 (%struct.gs_context_state_s*)* @current_MaxGlobalVM, i32 (%struct.gs_context_state_s*, i64)* @set_MaxGlobalVM }], align 16
@system_bool_params = internal constant [1 x %struct.bool_param_def_s] [%struct.bool_param_def_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @current_ByteOrder, i32 (%struct.gs_context_state_s*, i32)* null }], align 16
@system_string_params = internal constant [1 x %struct.string_param_def_s] [%struct.string_param_def_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* @current_RealFormat, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* null }], align 16
@.str.34 = private unnamed_addr constant [10 x i8] c"BuildTime\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"MaxFontCache\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"CurFontCache\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"Revision\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"PageCount\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"MaxGlobalVM\00", align 1
@gs_buildtime = external constant i64, align 8
@gs_revision = external constant i64, align 8
@.str.40 = private unnamed_addr constant [10 x i8] c"ByteOrder\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"RealFormat\00", align 1
@current_RealFormat.rfs = internal constant i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), align 8
@.str.42 = private unnamed_addr constant [5 x i8] c"IEEE\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"SystemParamsPassword\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"StartJobPassword\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"Password\00", align 1

; Function Attrs: nounwind uwtable
define i32 @set_user_params(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %paramdict) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %paramdict.addr = alloca %struct.ref_s*, align 8
  %list = alloca %struct.dict_param_list_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %paramdict, %struct.ref_s** %paramdict.addr, align 8, !tbaa !1
  %0 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.ref_s*, %struct.ref_s** %paramdict.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %3 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %paramdict.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %5) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %paramdict.addr, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %call2 = call i32 @dict_param_list_read(%struct.dict_param_list_s* %list, %struct.ref_s* %6, %struct.ref_s* null, i32 0, %struct.gs_ref_memory_s* %8) #4
  store i32 %call2, i32* %code, align 4, !tbaa !20
  %9 = load i32, i32* %code, align 4, !tbaa !20
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %12 = bitcast %struct.dict_param_list_s* %list to %struct.gs_param_list_s*
  %call7 = call i32 @setparams(%struct.gs_context_state_s* %11, %struct.gs_param_list_s* %12, %struct.param_set_s* @user_param_set) #4
  store i32 %call7, i32* %code, align 4, !tbaa !20
  %memory8 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !23
  %memory9 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !21
  %results = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 6
  %16 = load i32*, i32** %results, align 8, !tbaa !26
  %17 = bitcast i32* %16 to i8*
  call void %14(%struct.gs_memory_s* %15, i8* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #4
  %18 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_param_list_read(%struct.dict_param_list_s*, %struct.ref_s*, %struct.ref_s*, i32, %struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @setparams(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_list_s* %plist, %struct.param_set_s* %pset) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pset.addr = alloca %struct.param_set_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %pdef = alloca %struct.long_param_def_s*, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %pdef15 = alloca %struct.bool_param_def_s*, align 8
  %val18 = alloca i32, align 4
  %pdef43 = alloca %struct.string_param_def_s*, align 8
  %val46 = alloca %struct.gs_param_string_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.param_set_s* %pset, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !20
  %3 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %long_count = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %3, i32 0, i32 1
  %4 = load i32, i32* %long_count, align 4, !tbaa !27
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.long_param_def_s** %pdef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %long_defs = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %7, i32 0, i32 0
  %8 = load %struct.long_param_def_s*, %struct.long_param_def_s** %long_defs, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds %struct.long_param_def_s, %struct.long_param_def_s* %8, i64 %idxprom
  store %struct.long_param_def_s* %arrayidx, %struct.long_param_def_s** %pdef, align 8, !tbaa !1
  %9 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.long_param_def_s*, %struct.long_param_def_s** %pdef, align 8, !tbaa !1
  %set = getelementptr inbounds %struct.long_param_def_s, %struct.long_param_def_s* %10, i32 0, i32 4
  %11 = load i32 (%struct.gs_context_state_s*, i64)*, i32 (%struct.gs_context_state_s*, i64)** %set, align 8, !tbaa !30
  %cmp1 = icmp eq i32 (%struct.gs_context_state_s*, i64)* %11, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load %struct.long_param_def_s*, %struct.long_param_def_s** %pdef, align 8, !tbaa !1
  %pname = getelementptr inbounds %struct.long_param_def_s, %struct.long_param_def_s* %13, i32 0, i32 0
  %14 = load i8*, i8** %pname, align 8, !tbaa !32
  %call = call i32 @param_read_long(%struct.gs_param_list_s* %12, i8* %14, i64* %val) #4
  store i32 %call, i32* %code, align 4, !tbaa !20
  %15 = load i32, i32* %code, align 4, !tbaa !20
  switch i32 %15, label %sw.default [
    i32 1, label %sw.epilog
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %17 = load i64, i64* %val, align 8, !tbaa !33
  %18 = load %struct.long_param_def_s*, %struct.long_param_def_s** %pdef, align 8, !tbaa !1
  %min_value = getelementptr inbounds %struct.long_param_def_s, %struct.long_param_def_s* %18, i32 0, i32 1
  %19 = load i64, i64* %min_value, align 8, !tbaa !34
  %cmp2 = icmp slt i64 %17, %19
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %20 = load i64, i64* %val, align 8, !tbaa !33
  %21 = load %struct.long_param_def_s*, %struct.long_param_def_s** %pdef, align 8, !tbaa !1
  %max_value = getelementptr inbounds %struct.long_param_def_s, %struct.long_param_def_s* %21, i32 0, i32 2
  %22 = load i64, i64* %max_value, align 8, !tbaa !35
  %cmp3 = icmp sgt i64 %20, %22
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %sw.bb
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %lor.lhs.false
  %23 = load %struct.long_param_def_s*, %struct.long_param_def_s** %pdef, align 8, !tbaa !1
  %set6 = getelementptr inbounds %struct.long_param_def_s, %struct.long_param_def_s* %23, i32 0, i32 4
  %24 = load i32 (%struct.gs_context_state_s*, i64)*, i32 (%struct.gs_context_state_s*, i64)** %set6, align 8, !tbaa !30
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %26 = load i64, i64* %val, align 8, !tbaa !33
  %call7 = call i32 %24(%struct.gs_context_state_s* %25, i64 %26) #4
  store i32 %call7, i32* %code, align 4, !tbaa !20
  %27 = load i32, i32* %code, align 4, !tbaa !20
  %cmp8 = icmp slt i32 %27, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %28 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.10, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.9, %if.then.4, %sw.default, %if.then
  %29 = bitcast i64* %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.long_param_def_s** %pdef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.68 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %31 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.37, %for.end
  %32 = load i32, i32* %i, align 4, !tbaa !20
  %33 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %bool_count = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %33, i32 0, i32 3
  %34 = load i32, i32* %bool_count, align 4, !tbaa !36
  %cmp13 = icmp ult i32 %32, %34
  br i1 %cmp13, label %for.body.14, label %for.end.39

for.body.14:                                      ; preds = %for.cond.12
  %35 = bitcast %struct.bool_param_def_s** %pdef15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom16 = zext i32 %36 to i64
  %37 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %bool_defs = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %37, i32 0, i32 2
  %38 = load %struct.bool_param_def_s*, %struct.bool_param_def_s** %bool_defs, align 8, !tbaa !37
  %arrayidx17 = getelementptr inbounds %struct.bool_param_def_s, %struct.bool_param_def_s* %38, i64 %idxprom16
  store %struct.bool_param_def_s* %arrayidx17, %struct.bool_param_def_s** %pdef15, align 8, !tbaa !1
  %39 = bitcast i32* %val18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.bool_param_def_s*, %struct.bool_param_def_s** %pdef15, align 8, !tbaa !1
  %set19 = getelementptr inbounds %struct.bool_param_def_s, %struct.bool_param_def_s* %40, i32 0, i32 2
  %41 = load i32 (%struct.gs_context_state_s*, i32)*, i32 (%struct.gs_context_state_s*, i32)** %set19, align 8, !tbaa !38
  %cmp20 = icmp eq i32 (%struct.gs_context_state_s*, i32)* %41, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.14
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.22:                                        ; preds = %for.body.14
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %43 = load %struct.bool_param_def_s*, %struct.bool_param_def_s** %pdef15, align 8, !tbaa !1
  %pname23 = getelementptr inbounds %struct.bool_param_def_s, %struct.bool_param_def_s* %43, i32 0, i32 0
  %44 = load i8*, i8** %pname23, align 8, !tbaa !40
  %call24 = call i32 @param_read_bool(%struct.gs_param_list_s* %42, i8* %44, i32* %val18) #4
  store i32 %call24, i32* %code, align 4, !tbaa !20
  %45 = load i32, i32* %code, align 4, !tbaa !20
  %cmp25 = icmp eq i32 %45, 0
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.22
  %46 = load %struct.bool_param_def_s*, %struct.bool_param_def_s** %pdef15, align 8, !tbaa !1
  %set27 = getelementptr inbounds %struct.bool_param_def_s, %struct.bool_param_def_s* %46, i32 0, i32 2
  %47 = load i32 (%struct.gs_context_state_s*, i32)*, i32 (%struct.gs_context_state_s*, i32)** %set27, align 8, !tbaa !38
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %49 = load i32, i32* %val18, align 4, !tbaa !20
  %call28 = call i32 %47(%struct.gs_context_state_s* %48, i32 %49) #4
  store i32 %call28, i32* %code, align 4, !tbaa !20
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.22
  %50 = load i32, i32* %code, align 4, !tbaa !20
  %cmp30 = icmp slt i32 %50, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %51 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.32:                                        ; preds = %if.end.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.33

cleanup.33:                                       ; preds = %if.end.32, %if.then.31, %if.then.21
  %52 = bitcast i32* %val18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.bool_param_def_s** %pdef15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %cleanup.dest.35 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.35, label %cleanup.68 [
    i32 0, label %cleanup.cont.36
    i32 8, label %for.inc.37
  ]

cleanup.cont.36:                                  ; preds = %cleanup.33
  br label %for.inc.37

for.inc.37:                                       ; preds = %cleanup.cont.36, %cleanup.33
  %54 = load i32, i32* %i, align 4, !tbaa !20
  %inc38 = add i32 %54, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !20
  br label %for.cond.12

for.end.39:                                       ; preds = %for.cond.12
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.65, %for.end.39
  %55 = load i32, i32* %i, align 4, !tbaa !20
  %56 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %string_count = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %56, i32 0, i32 5
  %57 = load i32, i32* %string_count, align 4, !tbaa !41
  %cmp41 = icmp ult i32 %55, %57
  br i1 %cmp41, label %for.body.42, label %for.end.67

for.body.42:                                      ; preds = %for.cond.40
  %58 = bitcast %struct.string_param_def_s** %pdef43 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %59 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom44 = zext i32 %59 to i64
  %60 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %string_defs = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %60, i32 0, i32 4
  %61 = load %struct.string_param_def_s*, %struct.string_param_def_s** %string_defs, align 8, !tbaa !42
  %arrayidx45 = getelementptr inbounds %struct.string_param_def_s, %struct.string_param_def_s* %61, i64 %idxprom44
  store %struct.string_param_def_s* %arrayidx45, %struct.string_param_def_s** %pdef43, align 8, !tbaa !1
  %62 = bitcast %struct.gs_param_string_s* %val46 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %62) #1
  %63 = load %struct.string_param_def_s*, %struct.string_param_def_s** %pdef43, align 8, !tbaa !1
  %set47 = getelementptr inbounds %struct.string_param_def_s, %struct.string_param_def_s* %63, i32 0, i32 2
  %64 = load i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)** %set47, align 8, !tbaa !43
  %cmp48 = icmp eq i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)* %64, null
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body.42
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end.50:                                        ; preds = %for.body.42
  %65 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %66 = load %struct.string_param_def_s*, %struct.string_param_def_s** %pdef43, align 8, !tbaa !1
  %pname51 = getelementptr inbounds %struct.string_param_def_s, %struct.string_param_def_s* %66, i32 0, i32 0
  %67 = load i8*, i8** %pname51, align 8, !tbaa !45
  %call52 = call i32 @param_read_string(%struct.gs_param_list_s* %65, i8* %67, %struct.gs_param_string_s* %val46) #4
  store i32 %call52, i32* %code, align 4, !tbaa !20
  %68 = load i32, i32* %code, align 4, !tbaa !20
  switch i32 %68, label %sw.default.53 [
    i32 1, label %sw.epilog.60
    i32 0, label %sw.bb.54
  ]

sw.default.53:                                    ; preds = %if.end.50
  %69 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

sw.bb.54:                                         ; preds = %if.end.50
  %70 = load %struct.string_param_def_s*, %struct.string_param_def_s** %pdef43, align 8, !tbaa !1
  %set55 = getelementptr inbounds %struct.string_param_def_s, %struct.string_param_def_s* %70, i32 0, i32 2
  %71 = load i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_context_state_s*, %struct.gs_param_string_s*)** %set55, align 8, !tbaa !43
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call56 = call i32 %71(%struct.gs_context_state_s* %72, %struct.gs_param_string_s* %val46) #4
  store i32 %call56, i32* %code, align 4, !tbaa !20
  %73 = load i32, i32* %code, align 4, !tbaa !20
  %cmp57 = icmp slt i32 %73, 0
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %sw.bb.54
  %74 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

if.end.59:                                        ; preds = %sw.bb.54
  br label %sw.epilog.60

sw.epilog.60:                                     ; preds = %if.end.59, %if.end.50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.61

cleanup.61:                                       ; preds = %sw.epilog.60, %if.then.58, %sw.default.53, %if.then.49
  %75 = bitcast %struct.gs_param_string_s* %val46 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %75) #1
  %76 = bitcast %struct.string_param_def_s** %pdef43 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %cleanup.dest.63 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.63, label %cleanup.68 [
    i32 0, label %cleanup.cont.64
    i32 11, label %for.inc.65
  ]

cleanup.cont.64:                                  ; preds = %cleanup.61
  br label %for.inc.65

for.inc.65:                                       ; preds = %cleanup.cont.64, %cleanup.61
  %77 = load i32, i32* %i, align 4, !tbaa !20
  %inc66 = add i32 %77, 1
  store i32 %inc66, i32* %i, align 4, !tbaa !20
  br label %for.cond.40

for.end.67:                                       ; preds = %for.cond.40
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %for.end.67, %cleanup.61, %cleanup.33, %cleanup
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentsystemparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @currentparams(%struct.gs_context_state_s* %0, %struct.param_set_s* @system_param_set) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentuserparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @currentparams(%struct.gs_context_state_s* %0, %struct.param_set_s* @user_param_set) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetsystemparam(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @currentparam1(%struct.gs_context_state_s* %0, %struct.param_set_s* @system_param_set) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetuserparam(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @currentparam1(%struct.gs_context_state_s* %0, %struct.param_set_s* @user_param_set) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetsystemparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %list = alloca %struct.dict_param_list_s, align 8
  %plist = alloca %struct.gs_param_list_s*, align 8
  %pass = alloca %struct.password_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !46
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %4) #1
  %5 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.dict_param_list_s* %list to %struct.gs_param_list_s*
  store %struct.gs_param_list_s* %6, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %7 = bitcast %struct.password_s* %pass to i8*
  call void @llvm.lifetime.start(i64 68, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %11) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %call2 = call i32 @dict_param_list_read(%struct.dict_param_list_s* %list, %struct.ref_s* %12, %struct.ref_s* null, i32 0, %struct.gs_ref_memory_s* %14) #4
  store i32 %call2, i32* %code, align 4, !tbaa !20
  %15 = load i32, i32* %code, align 4, !tbaa !20
  %cmp3 = icmp slt i32 %15, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call7 = call i32 @dict_read_password(%struct.password_s* %pass, %struct.ref_s* %system_dict, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0)) #4
  store i32 %call7, i32* %code, align 4, !tbaa !20
  %18 = load i32, i32* %code, align 4, !tbaa !20
  %cmp8 = icmp slt i32 %18, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %19 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call12 = call i32 @param_check_password(%struct.gs_param_list_s* %20, %struct.password_s* %pass) #4
  store i32 %call12, i32* %code, align 4, !tbaa !20
  %21 = load i32, i32* %code, align 4, !tbaa !20
  %cmp13 = icmp ne i32 %21, 0
  br i1 %cmp13, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end.11
  %22 = load i32, i32* %code, align 4, !tbaa !20
  %cmp16 = icmp sgt i32 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  store i32 -7, i32* %code, align 4, !tbaa !20
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.15
  br label %out

if.end.20:                                        ; preds = %if.end.11
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call21 = call i32 @param_read_password(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), %struct.password_s* %pass) #4
  store i32 %call21, i32* %code, align 4, !tbaa !20
  %24 = load i32, i32* %code, align 4, !tbaa !20
  switch i32 %24, label %sw.default [
    i32 1, label %sw.epilog
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %if.end.20
  br label %out

sw.bb:                                            ; preds = %if.end.20
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 24
  %system_dict23 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack22, i32 0, i32 7
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %LockFilePermissions = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 13
  %27 = load i32, i32* %LockFilePermissions, align 4, !tbaa !47
  %tobool = icmp ne i32 %27, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %call24 = call i32 @dict_write_password(%struct.password_s* %pass, %struct.ref_s* %system_dict23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i32 %lnot.ext) #4
  store i32 %call24, i32* %code, align 4, !tbaa !20
  %28 = load i32, i32* %code, align 4, !tbaa !20
  %cmp25 = icmp slt i32 %28, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %sw.bb
  br label %out

if.end.28:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.28, %if.end.20
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call29 = call i32 @param_read_password(%struct.gs_param_list_s* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), %struct.password_s* %pass) #4
  store i32 %call29, i32* %code, align 4, !tbaa !20
  %30 = load i32, i32* %code, align 4, !tbaa !20
  switch i32 %30, label %sw.default.30 [
    i32 1, label %sw.epilog.43
    i32 0, label %sw.bb.31
  ]

sw.default.30:                                    ; preds = %sw.epilog
  br label %out

sw.bb.31:                                         ; preds = %sw.epilog
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 24
  %system_dict33 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack32, i32 0, i32 7
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %LockFilePermissions34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 13
  %33 = load i32, i32* %LockFilePermissions34, align 4, !tbaa !47
  %tobool35 = icmp ne i32 %33, 0
  %lnot36 = xor i1 %tobool35, true
  %lnot.ext37 = zext i1 %lnot36 to i32
  %call38 = call i32 @dict_write_password(%struct.password_s* %pass, %struct.ref_s* %system_dict33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), i32 %lnot.ext37) #4
  store i32 %call38, i32* %code, align 4, !tbaa !20
  %34 = load i32, i32* %code, align 4, !tbaa !20
  %cmp39 = icmp slt i32 %34, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %sw.bb.31
  br label %out

if.end.42:                                        ; preds = %sw.bb.31
  br label %sw.epilog.43

sw.epilog.43:                                     ; preds = %if.end.42, %sw.epilog
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call44 = call i32 @setparams(%struct.gs_context_state_s* %35, %struct.gs_param_list_s* %36, %struct.param_set_s* @system_param_set) #4
  store i32 %call44, i32* %code, align 4, !tbaa !20
  br label %out

out:                                              ; preds = %sw.epilog.43, %if.then.41, %sw.default.30, %if.then.27, %sw.default, %if.end.19
  %memory45 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory45, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %38 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !23
  %memory46 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !21
  %results = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 6
  %40 = load i32*, i32** %results, align 8, !tbaa !26
  %41 = bitcast i32* %40 to i8*
  call void %38(%struct.gs_memory_s* %39, i8* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #4
  %42 = load i32, i32* %code, align 4, !tbaa !20
  %cmp47 = icmp slt i32 %42, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %out
  %43 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %out
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack51 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %44, i32 0, i32 26
  %stack52 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack51, i32 0, i32 0
  %p53 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack52, i32 0, i32 0
  %45 = load %struct.ref_s*, %struct.ref_s** %p53, align 8, !tbaa !46
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p53, align 8, !tbaa !46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %if.then.49, %if.then.10, %if.then.5, %if.then
  %46 = bitcast %struct.password_s* %pass to i8*
  call void @llvm.lifetime.end(i64 68, i8* %46) #1
  %47 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %48) #1
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetuserparams(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !46
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @set_user_params(%struct.gs_context_state_s* %4, %struct.ref_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !20
  %6 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %scanner_options = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 12
  %9 = load i32, i32* %scanner_options, align 4, !tbaa !48
  %call1 = call i32 @ztoken_scanner_options(%struct.ref_s* %7, i32 %9) #4
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %scanner_options2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 12
  store i32 %call1, i32* %scanner_options2, align 4, !tbaa !48
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !46
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p5, align 8, !tbaa !46
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %code, align 4, !tbaa !20
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @zcheckpassword(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %params = alloca [2 x %struct.ref_s], align 16
  %list = alloca %struct.array_param_list_s, align 8
  %plist = alloca %struct.gs_param_list_s*, align 8
  %result = alloca i32, align 4
  %code = alloca i32, align 4
  %pass = alloca %struct.password_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !46
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [2 x %struct.ref_s]* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast %struct.array_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %4) #1
  %5 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.array_param_list_s* %list to %struct.gs_param_list_s*
  store %struct.gs_param_list_s* %6, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %7 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %result, align 4, !tbaa !20
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %11 = bitcast %struct.gs_ref_memory_s* %10 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 2
  %12 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !49
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %12, i32 0, i32 16
  %13 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !50
  %arrayidx = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %params, i32 0, i64 0
  %call = call i32 @names_ref(%struct.name_table_s* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 8, %struct.ref_s* %arrayidx, i32 0) #4
  store i32 %call, i32* %code, align 4, !tbaa !20
  %14 = bitcast %struct.password_s* %pass to i8*
  call void @llvm.lifetime.start(i64 68, i8* %14) #1
  %15 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %params, i32 0, i64 1
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %18 = bitcast %struct.ref_s* %arrayidx1 to i8*
  %19 = bitcast %struct.ref_s* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !tbaa.struct !52
  %arraydecay = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %params, i32 0, i32 0
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !6
  %call4 = call i32 @array_param_list_read(%struct.array_param_list_s* %list, %struct.ref_s* %arraydecay, i32 2, %struct.ref_s* null, i32 0, %struct.gs_ref_memory_s* %21) #4
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call5 = call i32 @dict_read_password(%struct.password_s* %pass, %struct.ref_s* %system_dict, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0)) #4
  %cmp6 = icmp sge i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call7 = call i32 @param_check_password(%struct.gs_param_list_s* %23, %struct.password_s* %pass) #4
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %result, align 4, !tbaa !20
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 24
  %system_dict12 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack11, i32 0, i32 7
  %call13 = call i32 @dict_read_password(%struct.password_s* %pass, %struct.ref_s* %system_dict12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0)) #4
  %cmp14 = icmp sge i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.19

land.lhs.true.15:                                 ; preds = %if.end.10
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call16 = call i32 @param_check_password(%struct.gs_param_list_s* %25, %struct.password_s* %pass) #4
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.15
  store i32 2, i32* %result, align 4, !tbaa !20
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true.15, %if.end.10
  %memory20 = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %list, i32 0, i32 1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !56
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !23
  %memory21 = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %list, i32 0, i32 1
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !56
  %results = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %list, i32 0, i32 6
  %29 = load i32*, i32** %results, align 8, !tbaa !58
  %30 = bitcast i32* %29 to i8*
  call void %27(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #4
  %31 = load i32, i32* %result, align 4, !tbaa !20
  %conv = sext i32 %31 to i64
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !33
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then
  %34 = bitcast %struct.password_s* %pass to i8*
  call void @llvm.lifetime.end(i64 68, i8* %34) #1
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.array_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %38) #1
  %39 = bitcast [2 x %struct.ref_s]* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %39) #1
  %40 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i64 @current_JobTimeout(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal i32 @set_JobTimeout(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxFontItem(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %call1 = call i32 @gs_currentcacheupper(%struct.gs_font_dir_s* %3) #4
  %conv = zext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxFontItem(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %4 = load i64, i64* %val.addr, align 8, !tbaa !33
  %conv = trunc i64 %4 to i32
  %call1 = call i32 @gs_setcacheupper(%struct.gs_font_dir_s* %3, i32 %conv) #4
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MinFontCompress(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %call1 = call i32 @gs_currentcachelower(%struct.gs_font_dir_s* %3) #4
  %conv = zext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MinFontCompress(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %4 = load i64, i64* %val.addr, align 8, !tbaa !33
  %conv = trunc i64 %4 to i32
  %call1 = call i32 @gs_setcachelower(%struct.gs_font_dir_s* %3, i32 %conv) #4
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxOpStack(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %max_stack = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 6
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %max_stack, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %1 = load i64, i64* %intval, align 8, !tbaa !33
  %conv = trunc i64 %1 to i32
  %conv1 = zext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxOpStack(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %1 = load i64, i64* %val.addr, align 8, !tbaa !33
  %call = call i32 @ref_stack_set_max_count(%struct.ref_stack_s* %stack, i64 %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxDictStack(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 24
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %max_stack = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 6
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %max_stack, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %1 = load i64, i64* %intval, align 8, !tbaa !33
  %conv = trunc i64 %1 to i32
  %conv1 = zext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxDictStack(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 24
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 0
  %1 = load i64, i64* %val.addr, align 8, !tbaa !33
  %call = call i32 @ref_stack_set_max_count(%struct.ref_stack_s* %stack, i64 %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxExecStack(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %max_stack = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 6
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %max_stack, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %1 = load i64, i64* %intval, align 8, !tbaa !33
  %conv = trunc i64 %1 to i32
  %conv1 = zext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxExecStack(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %1 = load i64, i64* %val.addr, align 8, !tbaa !33
  %call = call i32 @ref_stack_set_max_count(%struct.ref_stack_s* %stack, i64 %1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxLocalVM(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %stat = alloca %struct.gs_memory_gc_status_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !61
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %2, %struct.gs_memory_gc_status_s* %stat) #4
  %max_vm = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 1
  %3 = load i64, i64* %max_vm, align 8, !tbaa !63
  %4 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %4) #1
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxLocalVM(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  %stat = alloca %struct.gs_memory_gc_status_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !61
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %2, %struct.gs_memory_gc_status_s* %stat) #4
  %3 = load i64, i64* %val.addr, align 8, !tbaa !33
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %val.addr, align 8, !tbaa !33
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %cond.false ]
  %max_vm = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 1
  store i64 %cond, i64* %max_vm, align 8, !tbaa !63
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %spaces2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 1
  %memories3 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces2, i32 0, i32 1
  %named4 = bitcast %union.anon* %memories3 to %struct._ssn*
  %local5 = getelementptr inbounds %struct._ssn, %struct._ssn* %named4, i32 0, i32 3
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local5, align 8, !tbaa !61
  call void @gs_memory_set_gc_status(%struct.gs_ref_memory_s* %6, %struct.gs_memory_gc_status_s* %stat) #4
  %7 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %7) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @current_VMReclaim(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %gstat = alloca %struct.gs_memory_gc_status_s, align 8
  %lstat = alloca %struct.gs_memory_gc_status_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_gc_status_s* %gstat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast %struct.gs_memory_gc_status_s* %lstat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !65
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %3, %struct.gs_memory_gc_status_s* %gstat) #4
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 1
  %spaces2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 1
  %memories3 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces2, i32 0, i32 1
  %named4 = bitcast %union.anon* %memories3 to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named4, i32 0, i32 3
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !61
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %5, %struct.gs_memory_gc_status_s* %lstat) #4
  %enabled = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gstat, i32 0, i32 4
  %6 = load i32, i32* %enabled, align 4, !tbaa !66
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %enabled5 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %lstat, i32 0, i32 4
  %7 = load i32, i32* %enabled5, align 4, !tbaa !66
  %tobool6 = icmp ne i32 %7, 0
  %lnot = xor i1 %tobool6, true
  %cond = select i1 %lnot, i32 -1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i32 [ -2, %cond.true ], [ %cond, %cond.false ]
  %conv = sext i32 %cond7 to i64
  %8 = bitcast %struct.gs_memory_gc_status_s* %lstat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %8) #1
  %9 = bitcast %struct.gs_memory_gc_status_s* %gstat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %9) #1
  ret i64 %conv
}

declare i32 @set_vm_reclaim(%struct.gs_context_state_s*, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @current_VMThreshold(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %stat = alloca %struct.gs_memory_gc_status_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !61
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %2, %struct.gs_memory_gc_status_s* %stat) #4
  %vm_threshold = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 0
  %3 = load i64, i64* %vm_threshold, align 8, !tbaa !67
  %4 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %4) #1
  ret i64 %3
}

declare i32 @set_vm_threshold(%struct.gs_context_state_s*, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @current_WaitTimeout(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal i32 @set_WaitTimeout(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MinScreenLevels(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call i32 @gs_currentminscreenlevels(%struct.gs_memory_s* %2) #4
  %conv = zext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MinScreenLevels(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %3 = load i64, i64* %val.addr, align 8, !tbaa !33
  %conv = trunc i64 %3 to i32
  call void @gs_setminscreenlevels(%struct.gs_memory_s* %2, i32 %conv) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @current_AlignToPixels(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %call1 = call i32 @gs_currentaligntopixels(%struct.gs_font_dir_s* %3) #4
  %conv = zext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @set_AlignToPixels(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %4 = load i64, i64* %val.addr, align 8, !tbaa !33
  %conv = trunc i64 %4 to i32
  %call1 = call i32 @gs_setaligntopixels(%struct.gs_font_dir_s* %3, i32 %conv) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @current_GridFitTT(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %call1 = call i32 @gs_currentgridfittt(%struct.gs_font_dir_s* %3) #4
  %conv = zext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @set_GridFitTT(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %4 = load i64, i64* %val.addr, align 8, !tbaa !33
  %conv = trunc i64 %4 to i32
  %call1 = call i32 @gs_setgridfittt(%struct.gs_font_dir_s* %3, i32 %conv) #4
  ret i32 0
}

declare i32 @gs_currentcacheupper(%struct.gs_font_dir_s*) #2

declare %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s*) #2

declare i32 @gs_setcacheupper(%struct.gs_font_dir_s*, i32) #2

declare i32 @gs_currentcachelower(%struct.gs_font_dir_s*) #2

declare i32 @gs_setcachelower(%struct.gs_font_dir_s*, i32) #2

declare i32 @ref_stack_set_max_count(%struct.ref_stack_s*, i64) #2

declare void @gs_memory_gc_status(%struct.gs_ref_memory_s*, %struct.gs_memory_gc_status_s*) #2

declare void @gs_memory_set_gc_status(%struct.gs_ref_memory_s*, %struct.gs_memory_gc_status_s*) #2

declare i32 @gs_currentminscreenlevels(%struct.gs_memory_s*) #2

declare void @gs_setminscreenlevels(%struct.gs_memory_s*, i32) #2

declare i32 @gs_currentaligntopixels(%struct.gs_font_dir_s*) #2

declare i32 @gs_setaligntopixels(%struct.gs_font_dir_s*, i32) #2

declare i32 @gs_currentgridfittt(%struct.gs_font_dir_s*) #2

declare i32 @gs_setgridfittt(%struct.gs_font_dir_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @current_AccurateScreens(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call i32 @gs_currentaccuratescreens(%struct.gs_memory_s* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @set_AccurateScreens(%struct.gs_context_state_s* %i_ctx_p, i32 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !20
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %3 = load i32, i32* %val.addr, align 4, !tbaa !20
  call void @gs_setaccuratescreens(%struct.gs_memory_s* %2, i32 %3) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @current_LockFilePermissions(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %LockFilePermissions = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 13
  %1 = load i32, i32* %LockFilePermissions, align 4, !tbaa !47
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @set_LockFilePermissions(%struct.gs_context_state_s* %i_ctx_p, i32 %val) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !20
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %LockFilePermissions = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 13
  %1 = load i32, i32* %LockFilePermissions, align 4, !tbaa !47
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !tbaa !20
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %val.addr, align 4, !tbaa !20
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %LockFilePermissions2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 13
  store i32 %3, i32* %LockFilePermissions2, align 4, !tbaa !47
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @current_RenderTTNotdef(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %RenderTTNotdef = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 15
  %1 = load i32, i32* %RenderTTNotdef, align 4, !tbaa !68
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @set_RenderTTNotdef(%struct.gs_context_state_s* %i_ctx_p, i32 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !20
  %0 = load i32, i32* %val.addr, align 4, !tbaa !20
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %RenderTTNotdef = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 15
  store i32 %0, i32* %RenderTTNotdef, align 4, !tbaa !68
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @current_OverrideICC(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %3 = bitcast %struct.gs_state_s* %2 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %3, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %call = call i32 @gs_currentoverrideicc(%struct.gs_imager_state_s* %4) #4
  %5 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @set_OverrideICC(%struct.gs_context_state_s* %i_ctx_p, i32 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i32, align 4
  %pis = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %val, i32* %val.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %3 = bitcast %struct.gs_state_s* %2 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %3, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %5 = load i32, i32* %val.addr, align 4, !tbaa !20
  call void @gs_setoverrideicc(%struct.gs_imager_state_s* %4, i32 %5) #4
  %6 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 0
}

declare i32 @gs_currentaccuratescreens(%struct.gs_memory_s*) #2

declare void @gs_setaccuratescreens(%struct.gs_memory_s*, i32) #2

declare i32 @gs_currentoverrideicc(%struct.gs_imager_state_s*) #2

declare void @gs_setoverrideicc(%struct.gs_imager_state_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @current_default_gray_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  call void @gs_currentdefaultgrayicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @set_default_gray_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %call = call i32 @gs_setdefaultgrayicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @current_default_rgb_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  call void @gs_currentdefaultrgbicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @set_default_rgb_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %call = call i32 @gs_setdefaultrgbicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @current_default_cmyk_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  call void @gs_currentdefaultcmykicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @set_default_cmyk_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %call = call i32 @gs_setdefaultcmykicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @current_named_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  call void @gs_currentnamedicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @set_named_profile_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %call = call i32 @gs_setnamedprofileicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @current_icc_directory(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  call void @gs_currenticcdirectory(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @set_icc_directory(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %call = call i32 @gs_seticcdirectory(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @current_lab_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  call void @gs_currentlabicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @set_lab_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %call = call i32 @gs_setlabicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @current_devicen_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  call void @gs_currentdevicenicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @set_devicen_profile_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %call = call i32 @gs_setdevicenprofileicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @current_srcgtag_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  call void @gs_currentsrcgtagicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @set_srcgtag_icc(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %call = call i32 @gs_setsrcgtagicc(%struct.gs_state_s* %1, %struct.gs_param_string_s* %2) #4
  ret i32 %call
}

declare void @gs_currentdefaultgrayicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare i32 @gs_setdefaultgrayicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare void @gs_currentdefaultrgbicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare i32 @gs_setdefaultrgbicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare void @gs_currentdefaultcmykicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare i32 @gs_setdefaultcmykicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare void @gs_currentnamedicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare i32 @gs_setnamedprofileicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare void @gs_currenticcdirectory(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare i32 @gs_seticcdirectory(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare void @gs_currentlabicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare i32 @gs_setlabicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare void @gs_currentdevicenicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare i32 @gs_setdevicenprofileicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare void @gs_currentsrcgtagicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

declare i32 @gs_setsrcgtagicc(%struct.gs_state_s*, %struct.gs_param_string_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @currentparams(%struct.gs_context_state_s* %i_ctx_p, %struct.param_set_s* %pset) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pset.addr = alloca %struct.param_set_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.param_set_s* %pset, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %1 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %call = call i32 @current_param_list(%struct.gs_context_state_s* %0, %struct.param_set_s* %1, %struct.ref_s* null) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @current_param_list(%struct.gs_context_state_s* %i_ctx_p, %struct.param_set_s* %pset, %struct.ref_s* %psref) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pset.addr = alloca %struct.param_set_s*, align 8
  %psref.addr = alloca %struct.ref_s*, align 8
  %list = alloca %struct.stack_param_list_s, align 8
  %plist = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %pname = alloca i8*, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %pname18 = alloca i8*, align 8
  %val25 = alloca i32, align 4
  %pname48 = alloca i8*, align 8
  %val55 = alloca %struct.gs_param_string_s, align 8
  %pname76 = alloca i8*, align 8
  %val77 = alloca i32, align 4
  %code78 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.param_set_s* %pset, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  store %struct.ref_s* %psref, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stack_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %0) #1
  %1 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.stack_param_list_s* %list to %struct.gs_param_list_s*
  store %struct.gs_param_list_s* %2, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !20
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %call = call i32 @stack_param_list_write(%struct.stack_param_list_s* %list, %struct.ref_stack_s* %stack, %struct.ref_s* null, %struct.gs_ref_memory_s* %7) #4
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !20
  %9 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %long_count = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %9, i32 0, i32 1
  %10 = load i32, i32* %long_count, align 4, !tbaa !27
  %cmp = icmp ult i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %long_defs = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %13, i32 0, i32 0
  %14 = load %struct.long_param_def_s*, %struct.long_param_def_s** %long_defs, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds %struct.long_param_def_s, %struct.long_param_def_s* %14, i64 %idxprom
  %pname1 = getelementptr inbounds %struct.long_param_def_s, %struct.long_param_def_s* %arrayidx, i32 0, i32 0
  %15 = load i8*, i8** %pname1, align 8, !tbaa !32
  store i8* %15, i8** %pname, align 8, !tbaa !1
  %16 = load i8*, i8** %pname, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %call2 = call i32 @pname_matches(i8* %16, %struct.ref_s* %17) #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %18 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom3 = zext i32 %19 to i64
  %20 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %long_defs4 = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %20, i32 0, i32 0
  %21 = load %struct.long_param_def_s*, %struct.long_param_def_s** %long_defs4, align 8, !tbaa !29
  %arrayidx5 = getelementptr inbounds %struct.long_param_def_s, %struct.long_param_def_s* %21, i64 %idxprom3
  %current6 = getelementptr inbounds %struct.long_param_def_s, %struct.long_param_def_s* %arrayidx5, i32 0, i32 3
  %22 = load i64 (%struct.gs_context_state_s*)*, i64 (%struct.gs_context_state_s*)** %current6, align 8, !tbaa !70
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call7 = call i64 %22(%struct.gs_context_state_s* %23) #4
  store i64 %call7, i64* %val, align 8, !tbaa !33
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %25 = load i8*, i8** %pname, align 8, !tbaa !1
  %call8 = call i32 @param_write_long(%struct.gs_param_list_s* %24, i8* %25, i64* %val) #4
  store i32 %call8, i32* %code, align 4, !tbaa !20
  %26 = load i32, i32* %code, align 4, !tbaa !20
  %cmp9 = icmp slt i32 %26, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %27 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.10
  %28 = bitcast i64* %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.11

if.end.11:                                        ; preds = %cleanup.cont, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %if.end.11, %cleanup
  %29 = bitcast i8** %pname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %cleanup.dest.13 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.13, label %cleanup.92 [
    i32 0, label %cleanup.cont.14
  ]

cleanup.cont.14:                                  ; preds = %cleanup.12
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.14
  %30 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.42, %for.end
  %31 = load i32, i32* %i, align 4, !tbaa !20
  %32 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %bool_count = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %32, i32 0, i32 3
  %33 = load i32, i32* %bool_count, align 4, !tbaa !36
  %cmp16 = icmp ult i32 %31, %33
  br i1 %cmp16, label %for.body.17, label %for.end.44

for.body.17:                                      ; preds = %for.cond.15
  %34 = bitcast i8** %pname18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom19 = zext i32 %35 to i64
  %36 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %bool_defs = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %36, i32 0, i32 2
  %37 = load %struct.bool_param_def_s*, %struct.bool_param_def_s** %bool_defs, align 8, !tbaa !37
  %arrayidx20 = getelementptr inbounds %struct.bool_param_def_s, %struct.bool_param_def_s* %37, i64 %idxprom19
  %pname21 = getelementptr inbounds %struct.bool_param_def_s, %struct.bool_param_def_s* %arrayidx20, i32 0, i32 0
  %38 = load i8*, i8** %pname21, align 8, !tbaa !40
  store i8* %38, i8** %pname18, align 8, !tbaa !1
  %39 = load i8*, i8** %pname18, align 8, !tbaa !1
  %40 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %call22 = call i32 @pname_matches(i8* %39, %struct.ref_s* %40) #4
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.38

if.then.24:                                       ; preds = %for.body.17
  %41 = bitcast i32* %val25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom26 = zext i32 %42 to i64
  %43 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %bool_defs27 = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %43, i32 0, i32 2
  %44 = load %struct.bool_param_def_s*, %struct.bool_param_def_s** %bool_defs27, align 8, !tbaa !37
  %arrayidx28 = getelementptr inbounds %struct.bool_param_def_s, %struct.bool_param_def_s* %44, i64 %idxprom26
  %current29 = getelementptr inbounds %struct.bool_param_def_s, %struct.bool_param_def_s* %arrayidx28, i32 0, i32 1
  %45 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %current29, align 8, !tbaa !71
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call30 = call i32 %45(%struct.gs_context_state_s* %46) #4
  store i32 %call30, i32* %val25, align 4, !tbaa !20
  %47 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %48 = load i8*, i8** %pname18, align 8, !tbaa !1
  %call31 = call i32 @param_write_bool(%struct.gs_param_list_s* %47, i8* %48, i32* %val25) #4
  store i32 %call31, i32* %code, align 4, !tbaa !20
  %49 = load i32, i32* %code, align 4, !tbaa !20
  %cmp32 = icmp slt i32 %49, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.24
  %50 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

if.end.34:                                        ; preds = %if.then.24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.35

cleanup.35:                                       ; preds = %if.end.34, %if.then.33
  %51 = bitcast i32* %val25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %cleanup.dest.36 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.36, label %cleanup.39 [
    i32 0, label %cleanup.cont.37
  ]

cleanup.cont.37:                                  ; preds = %cleanup.35
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont.37, %for.body.17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.39

cleanup.39:                                       ; preds = %if.end.38, %cleanup.35
  %52 = bitcast i8** %pname18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %cleanup.dest.40 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.40, label %cleanup.92 [
    i32 0, label %cleanup.cont.41
  ]

cleanup.cont.41:                                  ; preds = %cleanup.39
  br label %for.inc.42

for.inc.42:                                       ; preds = %cleanup.cont.41
  %53 = load i32, i32* %i, align 4, !tbaa !20
  %inc43 = add i32 %53, 1
  store i32 %inc43, i32* %i, align 4, !tbaa !20
  br label %for.cond.15

for.end.44:                                       ; preds = %for.cond.15
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.71, %for.end.44
  %54 = load i32, i32* %i, align 4, !tbaa !20
  %55 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %string_count = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %55, i32 0, i32 5
  %56 = load i32, i32* %string_count, align 4, !tbaa !41
  %cmp46 = icmp ult i32 %54, %56
  br i1 %cmp46, label %for.body.47, label %for.end.73

for.body.47:                                      ; preds = %for.cond.45
  %57 = bitcast i8** %pname48 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom49 = zext i32 %58 to i64
  %59 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %string_defs = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %59, i32 0, i32 4
  %60 = load %struct.string_param_def_s*, %struct.string_param_def_s** %string_defs, align 8, !tbaa !42
  %arrayidx50 = getelementptr inbounds %struct.string_param_def_s, %struct.string_param_def_s* %60, i64 %idxprom49
  %pname51 = getelementptr inbounds %struct.string_param_def_s, %struct.string_param_def_s* %arrayidx50, i32 0, i32 0
  %61 = load i8*, i8** %pname51, align 8, !tbaa !45
  store i8* %61, i8** %pname48, align 8, !tbaa !1
  %62 = load i8*, i8** %pname48, align 8, !tbaa !1
  %63 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %call52 = call i32 @pname_matches(i8* %62, %struct.ref_s* %63) #4
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.67

if.then.54:                                       ; preds = %for.body.47
  %64 = bitcast %struct.gs_param_string_s* %val55 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %64) #1
  %65 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom56 = zext i32 %65 to i64
  %66 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %string_defs57 = getelementptr inbounds %struct.param_set_s, %struct.param_set_s* %66, i32 0, i32 4
  %67 = load %struct.string_param_def_s*, %struct.string_param_def_s** %string_defs57, align 8, !tbaa !42
  %arrayidx58 = getelementptr inbounds %struct.string_param_def_s, %struct.string_param_def_s* %67, i64 %idxprom56
  %current59 = getelementptr inbounds %struct.string_param_def_s, %struct.string_param_def_s* %arrayidx58, i32 0, i32 1
  %68 = load void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)*, void (%struct.gs_context_state_s*, %struct.gs_param_string_s*)** %current59, align 8, !tbaa !72
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  call void %68(%struct.gs_context_state_s* %69, %struct.gs_param_string_s* %val55) #4
  %70 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %71 = load i8*, i8** %pname48, align 8, !tbaa !1
  %call60 = call i32 @param_write_string(%struct.gs_param_list_s* %70, i8* %71, %struct.gs_param_string_s* %val55) #4
  store i32 %call60, i32* %code, align 4, !tbaa !20
  %72 = load i32, i32* %code, align 4, !tbaa !20
  %cmp61 = icmp slt i32 %72, 0
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.54
  %73 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.63:                                        ; preds = %if.then.54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.63, %if.then.62
  %74 = bitcast %struct.gs_param_string_s* %val55 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %74) #1
  %cleanup.dest.65 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.65, label %cleanup.68 [
    i32 0, label %cleanup.cont.66
  ]

cleanup.cont.66:                                  ; preds = %cleanup.64
  br label %if.end.67

if.end.67:                                        ; preds = %cleanup.cont.66, %for.body.47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.67, %cleanup.64
  %75 = bitcast i8** %pname48 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %cleanup.dest.69 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.69, label %cleanup.92 [
    i32 0, label %cleanup.cont.70
  ]

cleanup.cont.70:                                  ; preds = %cleanup.68
  br label %for.inc.71

for.inc.71:                                       ; preds = %cleanup.cont.70
  %76 = load i32, i32* %i, align 4, !tbaa !20
  %inc72 = add i32 %76, 1
  store i32 %inc72, i32* %i, align 4, !tbaa !20
  br label %for.cond.45

for.end.73:                                       ; preds = %for.cond.45
  %77 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %tobool74 = icmp ne %struct.ref_s* %77, null
  br i1 %tobool74, label %if.then.75, label %if.end.91

if.then.75:                                       ; preds = %for.end.73
  %78 = bitcast i8** %pname76 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = bitcast i32* %val77 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = bitcast i32* %code78 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %scanner_options = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %82, i32 0, i32 12
  %83 = load i32, i32* %scanner_options, align 4, !tbaa !48
  %call79 = call i32 @ztoken_get_scanner_option(%struct.ref_s* %81, i32 %83, i8** %pname76) #4
  switch i32 %call79, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.81
  ]

sw.bb:                                            ; preds = %if.then.75
  %84 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %85 = load i8*, i8** %pname76, align 8, !tbaa !1
  %call80 = call i32 @param_write_null(%struct.gs_param_list_s* %84, i8* %85) #4
  store i32 %call80, i32* %code78, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.then.75
  store i32 1, i32* %val77, align 4, !tbaa !20
  %86 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %87 = load i8*, i8** %pname76, align 8, !tbaa !1
  %call82 = call i32 @param_write_bool(%struct.gs_param_list_s* %86, i8* %87, i32* %val77) #4
  store i32 %call82, i32* %code78, align 4, !tbaa !20
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.75
  store i32 0, i32* %code78, align 4, !tbaa !20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.81, %sw.bb
  %88 = load i32, i32* %code78, align 4, !tbaa !20
  %cmp83 = icmp slt i32 %88, 0
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %sw.epilog
  %89 = load i32, i32* %code78, align 4, !tbaa !20
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.86

if.end.85:                                        ; preds = %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.86

cleanup.86:                                       ; preds = %if.end.85, %if.then.84
  %90 = bitcast i32* %code78 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %val77 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i8** %pname76 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %cleanup.dest.89 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.89, label %cleanup.92 [
    i32 0, label %cleanup.cont.90
  ]

cleanup.cont.90:                                  ; preds = %cleanup.86
  br label %if.end.91

if.end.91:                                        ; preds = %cleanup.cont.90, %for.end.73
  %93 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

cleanup.92:                                       ; preds = %if.end.91, %cleanup.86, %cleanup.68, %cleanup.39, %cleanup.12
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.stack_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %97) #1
  %98 = load i32, i32* %retval
  ret i32 %98
}

declare i32 @stack_param_list_write(%struct.stack_param_list_s*, %struct.ref_stack_s*, %struct.ref_s*, %struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pname_matches(i8* %pname, %struct.ref_s* %psref) #0 {
entry:
  %pname.addr = alloca i8*, align 8
  %psref.addr = alloca %struct.ref_s*, align 8
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store %struct.ref_s* %psref, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %0, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #5
  %conv = trunc i64 %call to i32
  %3 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %4 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %6 = load i32, i32* %rsize, align 4, !tbaa !73
  %call1 = call i32 @bytes_compare(i8* %1, i32 %conv, i8* %4, i32 %6) #4
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

declare i32 @param_write_long(%struct.gs_param_list_s*, i8*, i64*) #2

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

declare i32 @ztoken_get_scanner_option(%struct.ref_s*, i32, i8**) #2

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #2

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i64 @current_BuildTime(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load i64, i64* @gs_buildtime, align 8, !tbaa !33
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxFontCache(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %2 = bitcast %struct.gs_ref_memory_s* %1 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %2) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %call1 = call i32 @gs_currentcachesize(%struct.gs_font_dir_s* %3) #4
  %conv = zext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxFontCache(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %4 = bitcast %struct.gs_ref_memory_s* %3 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %4) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %6 = load i64, i64* %val.addr, align 8, !tbaa !33
  %cmp = icmp slt i64 %6, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %val.addr, align 8, !tbaa !33
  %cmp1 = icmp sgt i64 %7, 4294967295
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %8 = load i64, i64* %val.addr, align 8, !tbaa !33
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi i64 [ 4294967295, %cond.true.2 ], [ %8, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv = trunc i64 %cond5 to i32
  %call6 = call i32 @gs_setcachesize(%struct.gs_state_s* %1, %struct.gs_font_dir_s* %5, i32 %conv) #4
  ret i32 %call6
}

; Function Attrs: nounwind uwtable
define internal i64 @current_CurFontCache(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %cstat = alloca [7 x i32], align 16
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast [7 x i32]* %cstat to i8*
  call void @llvm.lifetime.start(i64 28, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %call = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %3) #4
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call, i32 0, i32 22
  %4 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !60
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %cstat, i32 0, i32 0
  call void @gs_cachestatus(%struct.gs_font_dir_s* %4, i32* %arraydecay) #4
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %cstat, i32 0, i64 0
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !20
  %conv = zext i32 %5 to i64
  %6 = bitcast [7 x i32]* %cstat to i8*
  call void @llvm.lifetime.end(i64 28, i8* %6) #1
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define internal i64 @current_Revision(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load i64, i64* @gs_revision, align 8, !tbaa !33
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @current_PageCount(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !69
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %2) #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %4 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !74
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call1 = call %struct.gx_device_s* %4(%struct.gx_device_s* %5) #4
  %cmp = icmp ne %struct.gx_device_s* %call1, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %ShowpageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 27
  %7 = load i64, i64* %ShowpageCount, align 8, !tbaa !85
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %nv_page_count = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 5
  %9 = load i64, i64* %nv_page_count, align 8, !tbaa !86
  %cmp2 = icmp sgt i64 %7, %9
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %ShowpageCount4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 27
  %11 = load i64, i64* %ShowpageCount4, align 8, !tbaa !85
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %nv_page_count5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 5
  store i64 %11, i64* %nv_page_count5, align 8, !tbaa !86
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %nv_page_count7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 5
  %14 = load i64, i64* %nv_page_count7, align 8, !tbaa !86
  %add = add nsw i64 1000, %14
  %15 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxGlobalVM(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %stat = alloca %struct.gs_memory_gc_status_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !65
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %2, %struct.gs_memory_gc_status_s* %stat) #4
  %max_vm = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 1
  %3 = load i64, i64* %max_vm, align 8, !tbaa !63
  %4 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %4) #1
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxGlobalVM(%struct.gs_context_state_s* %i_ctx_p, i64 %val) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %val.addr = alloca i64, align 8
  %stat = alloca %struct.gs_memory_gc_status_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !33
  %0 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !65
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %2, %struct.gs_memory_gc_status_s* %stat) #4
  %3 = load i64, i64* %val.addr, align 8, !tbaa !33
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %val.addr, align 8, !tbaa !33
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %cond.false ]
  %max_vm = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 1
  store i64 %cond, i64* %max_vm, align 8, !tbaa !63
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %spaces2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory1, i32 0, i32 1
  %memories3 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces2, i32 0, i32 1
  %named4 = bitcast %union.anon* %memories3 to %struct._ssn*
  %global5 = getelementptr inbounds %struct._ssn, %struct._ssn* %named4, i32 0, i32 2
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global5, align 8, !tbaa !65
  call void @gs_memory_set_gc_status(%struct.gs_ref_memory_s* %6, %struct.gs_memory_gc_status_s* %stat) #4
  %7 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %7) #1
  ret i32 0
}

declare i32 @gs_currentcachesize(%struct.gs_font_dir_s*) #2

declare i32 @gs_setcachesize(%struct.gs_state_s*, %struct.gs_font_dir_s*, i32) #2

declare void @gs_cachestatus(%struct.gs_font_dir_s*, i32*) #2

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @current_ByteOrder(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @current_RealFormat(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_param_string_s* %pval) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pval.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pval, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %0 = load i8*, i8** @current_RealFormat.rfs, align 8, !tbaa !1
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 0
  store i8* %0, i8** %data, align 8, !tbaa !87
  %2 = load i8*, i8** @current_RealFormat.rfs, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #5
  %conv = trunc i64 %call to i32
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !89
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pval.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !90
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @currentparam1(%struct.gs_context_state_s* %i_ctx_p, %struct.param_set_s* %pset) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pset.addr = alloca %struct.param_set_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %sref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.param_set_s* %pset, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !46
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %sref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 2
  %10 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !91
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !46
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp7 = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !92
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 2
  %17 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !49
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %17, i32 0, i32 16
  %18 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !50
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %18, %struct.ref_s* %19, %struct.ref_s* %sref) #4
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.param_set_s*, %struct.param_set_s** %pset.addr, align 8, !tbaa !1
  %call13 = call i32 @current_param_list(%struct.gs_context_state_s* %20, %struct.param_set_s* %21, %struct.ref_s* %sref) #4
  store i32 %call13, i32* %code, align 4, !tbaa !20
  %22 = load i32, i32* %code, align 4, !tbaa !20
  %cmp14 = icmp slt i32 %22, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  %23 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.12
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p20, align 8, !tbaa !46
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %cmp21 = icmp eq %struct.ref_s* %25, %26
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.17
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.17
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 2
  %29 = bitcast %struct.ref_s* %27 to i8*
  %30 = bitcast %struct.ref_s* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false), !tbaa.struct !52
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p27, align 8, !tbaa !46
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -2
  store %struct.ref_s* %add.ptr28, %struct.ref_s** %p27, align 8, !tbaa !46
  %33 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.23, %if.then.16, %if.then.9, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.ref_s* %sref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @dict_read_password(%struct.password_s*, %struct.ref_s*, i8*) #2

declare i32 @param_check_password(%struct.gs_param_list_s*, %struct.password_s*) #2

declare i32 @param_read_password(%struct.gs_param_list_s*, i8*, %struct.password_s*) #2

declare i32 @dict_write_password(%struct.password_s*, %struct.ref_s*, i8*, i32) #2

declare i32 @ztoken_scanner_options(%struct.ref_s*, i32) #2

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #2

declare i32 @array_param_list_read(%struct.array_param_list_s*, %struct.ref_s*, i32, %struct.ref_s*, i32, %struct.gs_ref_memory_s*) #2

declare i32 @param_read_long(%struct.gs_param_list_s*, i8*, i64*) #2

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 8}
!7 = !{!"gs_context_state_s", !2, i64 0, !8, i64 8, !10, i64 80, !11, i64 88, !11, i64 104, !14, i64 120, !14, i64 128, !14, i64 136, !10, i64 144, !10, i64 148, !11, i64 152, !11, i64 168, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !15, i64 264, !15, i64 304, !2, i64 344, !10, i64 352, !2, i64 360, !16, i64 368, !18, i64 520, !19, i64 624, !2, i64 720}
!8 = !{!"gs_dual_memory_s", !2, i64 0, !9, i64 8, !10, i64 48, !2, i64 56, !10, i64 64, !10, i64 68}
!9 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!10 = !{!"int", !3, i64 0}
!11 = !{!"ref_s", !12, i64 0, !3, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2, !10, i64 4}
!13 = !{!"short", !3, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!"op_array_table_s", !11, i64 0, !2, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!16 = !{!"dict_stack_s", !17, i64 0, !10, i64 96, !10, i64 100, !10, i64 104, !2, i64 112, !10, i64 120, !2, i64 128, !11, i64 136}
!17 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !10, i64 40, !10, i64 44, !11, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !2, i64 80, !2, i64 88}
!18 = !{!"exec_stack_s", !17, i64 0, !2, i64 96}
!19 = !{!"op_stack_s", !17, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!22, !2, i64 8}
!22 = !{!"dict_param_list_s", !2, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !10, i64 80, !10, i64 84, !11, i64 88}
!23 = !{!24, !2, i64 24}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!22, !2, i64 72}
!27 = !{!28, !10, i64 8}
!28 = !{!"param_set_s", !2, i64 0, !10, i64 8, !2, i64 16, !10, i64 24, !2, i64 32, !10, i64 40}
!29 = !{!28, !2, i64 0}
!30 = !{!31, !2, i64 32}
!31 = !{!"long_param_def_s", !2, i64 0, !14, i64 8, !14, i64 16, !2, i64 24, !2, i64 32}
!32 = !{!31, !2, i64 0}
!33 = !{!14, !14, i64 0}
!34 = !{!31, !14, i64 8}
!35 = !{!31, !14, i64 16}
!36 = !{!28, !10, i64 24}
!37 = !{!28, !2, i64 16}
!38 = !{!39, !2, i64 16}
!39 = !{!"bool_param_def_s", !2, i64 0, !2, i64 8, !2, i64 16}
!40 = !{!39, !2, i64 0}
!41 = !{!28, !10, i64 40}
!42 = !{!28, !2, i64 32}
!43 = !{!44, !2, i64 16}
!44 = !{!"string_param_def_s", !2, i64 0, !2, i64 8, !2, i64 16}
!45 = !{!44, !2, i64 0}
!46 = !{!7, !2, i64 624}
!47 = !{!7, !10, i64 188}
!48 = !{!7, !10, i64 184}
!49 = !{!24, !2, i64 192}
!50 = !{!51, !2, i64 120}
!51 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !14, i64 104, !2, i64 112, !2, i64 120, !10, i64 128, !2, i64 136, !10, i64 144, !10, i64 148, !3, i64 152, !2, i64 168, !10, i64 176, !2, i64 184, !10, i64 192, !2, i64 200, !2, i64 208}
!52 = !{i64 0, i64 2, !53, i64 2, i64 2, !53, i64 4, i64 4, !20, i64 8, i64 8, !33, i64 8, i64 2, !53, i64 8, i64 4, !54, i64 8, i64 8, !33, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !33}
!53 = !{!13, !13, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !3, i64 0}
!56 = !{!57, !2, i64 8}
!57 = !{!"array_param_list_s", !2, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !10, i64 80, !10, i64 84, !2, i64 88, !2, i64 96}
!58 = !{!57, !2, i64 72}
!59 = !{!11, !13, i64 0}
!60 = !{!51, !2, i64 168}
!61 = !{!62, !2, i64 24}
!62 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!63 = !{!64, !14, i64 8}
!64 = !{!"gs_memory_gc_status_s", !14, i64 0, !14, i64 8, !2, i64 16, !10, i64 24, !10, i64 28, !14, i64 32}
!65 = !{!62, !2, i64 16}
!66 = !{!64, !10, i64 28}
!67 = !{!64, !14, i64 0}
!68 = !{!7, !10, i64 196}
!69 = !{!7, !2, i64 0}
!70 = !{!31, !2, i64 24}
!71 = !{!39, !2, i64 8}
!72 = !{!44, !2, i64 8}
!73 = !{!11, !10, i64 4}
!74 = !{!75, !2, i64 1296}
!75 = !{!"gx_device_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !76, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !77, i64 96, !79, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !14, i64 968, !14, i64 976, !80, i64 984, !10, i64 1052, !10, i64 1056, !81, i64 1064, !2, i64 1104, !3, i64 1112, !83, i64 1120, !84, i64 1144}
!76 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!77 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !78, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !10, i64 712}
!78 = !{!"gx_device_anti_alias_info_s", !10, i64 0, !10, i64 4}
!79 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!80 = !{!"gx_stroked_gradient_recognizer_s", !10, i64 0, !3, i64 4, !3, i64 36}
!81 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !82, i64 16, !10, i64 32, !3, i64 36}
!82 = !{!"gx_band_params_s", !10, i64 0, !10, i64 4, !14, i64 8}
!83 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!84 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!85 = !{!75, !14, i64 936}
!86 = !{!7, !14, i64 120}
!87 = !{!88, !2, i64 0}
!88 = !{!"gs_param_string_s", !2, i64 0, !10, i64 8, !10, i64 12}
!89 = !{!88, !10, i64 8}
!90 = !{!88, !10, i64 12}
!91 = !{!7, !2, i64 640}
!92 = !{!7, !10, i64 688}
