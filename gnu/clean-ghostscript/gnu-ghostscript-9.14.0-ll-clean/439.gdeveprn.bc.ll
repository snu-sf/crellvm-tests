; ModuleID = './gdeveprn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eprn_StringAndInt = type { i8*, i32 }
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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, {}*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
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
%struct.eprn_Device = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.s_eprn_Device }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.s_eprn_Device = type { %struct.eprn_PrinterDescription*, i8*, %struct.eprn_PageDescription*, %struct.ms_Flag*, i32, i32*, void (%struct.s_eprn_Device*, i32)*, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.eprn_OctetString, %struct.eprn_OctetString, i32, i32, i32 }
%struct.eprn_PrinterDescription = type { i8*, %struct.eprn_PageDescription*, %struct.eprn_CustomPageDescription*, float, %struct.eprn_ColourInfo* }
%struct.eprn_CustomPageDescription = type { i32, float, float, float, float, float, float, float, float }
%struct.eprn_ColourInfo = type { i32, [2 x %struct.eprn_ResLev*] }
%struct.eprn_ResLev = type { %struct.eprn_Resolution*, %struct.eprn_IntensityLevels* }
%struct.eprn_Resolution = type { float, float }
%struct.eprn_IntensityLevels = type { i16, i16 }
%struct.eprn_PageDescription = type { i32, float, float, float, float }
%struct.ms_Flag = type { i32, i8* }
%struct.eprn_OctetString = type { i8*, i32 }
%struct.ms_SizeDescription = type { i32, i8*, [2 x float] }
%struct.gs_main_instance_s = type { %struct.gs_memory_s*, i32, i64, i32, i32, i32, i32, i32, %struct.gs_file_path_s, [2 x i64], i8*, %struct.ref_s, i32 (%struct._IO_FILE*, i8**)*, %struct.display_callback_s*, %struct.gs_context_state_s*, i8*, i32 }
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, i8*, i8*, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.display_callback_s = type opaque
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.2 }
%union.anon.2 = type { [4 x %struct.gs_ref_memory_s*] }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque

@.str = private unnamed_addr constant [75 x i8] c"  Processing can't be stopped at this point although this error occurred.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"%s? eprn: This document requests a page size of %.0f x %.0f bp.\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"%s  The media configuration file does not contain an entry for  this size.\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%s  This size is not supported by the %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [110 x i8] c"%s  This size is not supported as a discrete size and it exceeds the\0A%s  custom page size limits for the %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [144 x i8] c"%s? eprn: This document requests a page size of %.0f x %.0f bp\0A%s  but there is no entry for this size in the media configuration file\0A%s  %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"%s? eprn: Failure of gdev_prn_open(), code is %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"desc != ((void*)0)\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"./contrib/pcl3/eprn/gdeveprn.c\00", align 1
@__PRETTY_FUNCTION__.eprn_init_device = private unnamed_addr constant [70 x i8] c"void eprn_init_device(eprn_Device *, const eprn_PrinterDescription *)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"eprn_init_device\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"%s? eprn: The requested combination of colour model (\00", align 1
@eprn_colour_model_list = external constant [0 x %struct.eprn_StringAndInt], align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.eprn_open_device = private unnamed_addr constant [34 x i8] c"int eprn_open_device(gx_device *)\00", align 1
@.str.14 = private unnamed_addr constant [93 x i8] c"),\0A%s  resolution (%gx%g ppi) and intensity levels (%d, %d) is\0A%s  not supported by the %s.\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"  No further attempts will be made to access the page count file.\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"eprn_open_device\00", align 1
@.str.17 = private unnamed_addr constant [77 x i8] c"%s? eprn: Memory allocation failure from gs_malloc() in eprn_open_device().\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"eprn_close_device\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"PAGE: %ld %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"num_copies > 0\00", align 1
@__PRETTY_FUNCTION__.eprn_output_page = private unnamed_addr constant [44 x i8] c"int eprn_output_page(gx_device *, int, int)\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"eprn_output_page\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"%s? eprn: The %s does not support \00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"an empty set of media flags\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"the \22\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"\22 flag(s)\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"\0A%s  (ignoring presence or absence of \22\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"\22) for \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c" page size.\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Small\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"Big\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"Extra\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"0x%04X\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c".Transverse\00", align 1

; Function Attrs: nounwind uwtable
define void @eprn_get_initial_matrix(%struct.gx_device_s* %device, %struct.gs_matrix_s* %mptr) #0 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %mptr.addr = alloca %struct.gs_matrix_s*, align 8
  %dev = alloca %struct.eprn_Device*, align 8
  %extension = alloca [2 x float], align 4
  %pixels_per_bp = alloca [2 x float], align 4
  %j = alloca i32, align 4
  %quarters = alloca i32, align 4
  %translation = alloca %struct.gs_matrix_s, align 4
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %mptr, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.eprn_Device** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.eprn_Device*
  store %struct.eprn_Device* %2, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %3 = bitcast [2 x float]* %extension to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [2 x float]* %pixels_per_bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %quarters to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %7, i32 0, i32 68
  %code = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 7
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %9 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %call = call i32 @eprn_set_page_layout(%struct.eprn_Device* %9) #5
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i8* @gs_program_name() #5
  %call4 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call3, i64 %call4) #5
  %call5 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %eprn7 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %10, i32 0, i32 68
  %default_orientation = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn7, i32 0, i32 8
  %11 = load i32, i32* %default_orientation, align 4, !tbaa !25
  %12 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %12, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %13 = load float, float* %arrayidx, align 4, !tbaa !26
  %14 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %MediaSize8 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %14, i32 0, i32 19
  %arrayidx9 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize8, i32 0, i64 1
  %15 = load float, float* %arrayidx9, align 4, !tbaa !26
  %cmp10 = fcmp ole float %13, %15
  %cond = select i1 %cmp10, i32 0, i32 1
  %add = add nsw i32 %11, %cond
  store i32 %add, i32* %quarters, align 4, !tbaa !27
  %16 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %eprn11 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %16, i32 0, i32 68
  %soft_tumble = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn11, i32 0, i32 13
  %17 = load i32, i32* %soft_tumble, align 4, !tbaa !28
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.6
  %18 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %ShowpageCount = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %18, i32 0, i32 27
  %19 = load i64, i64* %ShowpageCount, align 8, !tbaa !29
  %rem = srem i64 %19, 2
  %cmp12 = icmp ne i64 %rem, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true
  %20 = load i32, i32* %quarters, align 4, !tbaa !27
  %add14 = add nsw i32 %20, 2
  store i32 %add14, i32* %quarters, align 4, !tbaa !27
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true, %if.end.6
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %21 = load i32, i32* %j, align 4, !tbaa !27
  %cmp16 = icmp slt i32 %21, 2
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %23, i32 0, i32 22
  %arrayidx17 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 %idxprom
  %24 = load float, float* %arrayidx17, align 4, !tbaa !26
  %conv = fpext float %24 to double
  %div = fdiv double %conv, 7.200000e+01
  %conv18 = fptrunc double %div to float
  %25 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds [2 x float], [2 x float]* %pixels_per_bp, i32 0, i64 %idxprom19
  store float %conv18, float* %arrayidx20, align 4, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %j, align 4, !tbaa !27
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %quarters, align 4, !tbaa !27
  %rem21 = srem i32 %27, 2
  %cmp22 = icmp eq i32 %rem21, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.end
  %28 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %MediaSize25 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %28, i32 0, i32 19
  %arrayidx26 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize25, i32 0, i64 0
  %29 = load float, float* %arrayidx26, align 4, !tbaa !26
  %arrayidx27 = getelementptr inbounds [2 x float], [2 x float]* %extension, i32 0, i64 0
  store float %29, float* %arrayidx27, align 4, !tbaa !26
  %30 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %MediaSize28 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %30, i32 0, i32 19
  %arrayidx29 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize28, i32 0, i64 1
  %31 = load float, float* %arrayidx29, align 4, !tbaa !26
  %arrayidx30 = getelementptr inbounds [2 x float], [2 x float]* %extension, i32 0, i64 1
  store float %31, float* %arrayidx30, align 4, !tbaa !26
  br label %if.end.37

if.else:                                          ; preds = %for.end
  %32 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %MediaSize31 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %32, i32 0, i32 19
  %arrayidx32 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize31, i32 0, i64 1
  %33 = load float, float* %arrayidx32, align 4, !tbaa !26
  %arrayidx33 = getelementptr inbounds [2 x float], [2 x float]* %extension, i32 0, i64 0
  store float %33, float* %arrayidx33, align 4, !tbaa !26
  %34 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %MediaSize34 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %34, i32 0, i32 19
  %arrayidx35 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize34, i32 0, i64 0
  %35 = load float, float* %arrayidx35, align 4, !tbaa !26
  %arrayidx36 = getelementptr inbounds [2 x float], [2 x float]* %extension, i32 0, i64 1
  store float %35, float* %arrayidx36, align 4, !tbaa !26
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.24
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.46, %if.end.37
  %36 = load i32, i32* %j, align 4, !tbaa !27
  %cmp39 = icmp slt i32 %36, 2
  br i1 %cmp39, label %for.body.41, label %for.end.48

for.body.41:                                      ; preds = %for.cond.38
  %37 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom42 = sext i32 %37 to i64
  %arrayidx43 = getelementptr inbounds [2 x float], [2 x float]* %pixels_per_bp, i32 0, i64 %idxprom42
  %38 = load float, float* %arrayidx43, align 4, !tbaa !26
  %39 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom44 = sext i32 %39 to i64
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %extension, i32 0, i64 %idxprom44
  %40 = load float, float* %arrayidx45, align 4, !tbaa !26
  %mul = fmul float %40, %38
  store float %mul, float* %arrayidx45, align 4, !tbaa !26
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.41
  %41 = load i32, i32* %j, align 4, !tbaa !27
  %inc47 = add nsw i32 %41, 1
  store i32 %inc47, i32* %j, align 4, !tbaa !27
  br label %for.cond.38

for.end.48:                                       ; preds = %for.cond.38
  %42 = load i32, i32* %quarters, align 4, !tbaa !27
  %rem49 = srem i32 %42, 4
  switch i32 %rem49, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.50
    i32 2, label %sw.bb.56
    i32 3, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %for.end.48
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %44 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  call void @gx_default_get_initial_matrix(%struct.gx_device_s* %43, %struct.gs_matrix_s* %44) #5
  br label %sw.epilog

sw.bb.50:                                         ; preds = %for.end.48
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %45, i32 0, i32 0
  store float 0.000000e+00, float* %xx, align 4, !tbaa !30
  %arrayidx51 = getelementptr inbounds [2 x float], [2 x float]* %pixels_per_bp, i32 0, i64 1
  %46 = load float, float* %arrayidx51, align 4, !tbaa !26
  %sub = fsub float -0.000000e+00, %46
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %47, i32 0, i32 1
  store float %sub, float* %xy, align 4, !tbaa !32
  %arrayidx52 = getelementptr inbounds [2 x float], [2 x float]* %pixels_per_bp, i32 0, i64 0
  %48 = load float, float* %arrayidx52, align 4, !tbaa !26
  %sub53 = fsub float -0.000000e+00, %48
  %49 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %49, i32 0, i32 2
  store float %sub53, float* %yx, align 4, !tbaa !33
  %50 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %50, i32 0, i32 3
  store float 0.000000e+00, float* %yy, align 4, !tbaa !34
  %arrayidx54 = getelementptr inbounds [2 x float], [2 x float]* %extension, i32 0, i64 0
  %51 = load float, float* %arrayidx54, align 4, !tbaa !26
  %52 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %52, i32 0, i32 4
  store float %51, float* %tx, align 4, !tbaa !35
  %arrayidx55 = getelementptr inbounds [2 x float], [2 x float]* %extension, i32 0, i64 1
  %53 = load float, float* %arrayidx55, align 4, !tbaa !26
  %54 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %54, i32 0, i32 5
  store float %53, float* %ty, align 4, !tbaa !36
  br label %sw.epilog

sw.bb.56:                                         ; preds = %for.end.48
  %arrayidx57 = getelementptr inbounds [2 x float], [2 x float]* %pixels_per_bp, i32 0, i64 0
  %55 = load float, float* %arrayidx57, align 4, !tbaa !26
  %sub58 = fsub float -0.000000e+00, %55
  %56 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %xx59 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %56, i32 0, i32 0
  store float %sub58, float* %xx59, align 4, !tbaa !30
  %57 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %xy60 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %57, i32 0, i32 1
  store float 0.000000e+00, float* %xy60, align 4, !tbaa !32
  %58 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %yx61 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %58, i32 0, i32 2
  store float 0.000000e+00, float* %yx61, align 4, !tbaa !33
  %arrayidx62 = getelementptr inbounds [2 x float], [2 x float]* %pixels_per_bp, i32 0, i64 1
  %59 = load float, float* %arrayidx62, align 4, !tbaa !26
  %60 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %yy63 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %60, i32 0, i32 3
  store float %59, float* %yy63, align 4, !tbaa !34
  %arrayidx64 = getelementptr inbounds [2 x float], [2 x float]* %extension, i32 0, i64 0
  %61 = load float, float* %arrayidx64, align 4, !tbaa !26
  %62 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %tx65 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %62, i32 0, i32 4
  store float %61, float* %tx65, align 4, !tbaa !35
  %63 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %ty66 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %63, i32 0, i32 5
  store float 0.000000e+00, float* %ty66, align 4, !tbaa !36
  br label %sw.epilog

sw.bb.67:                                         ; preds = %for.end.48
  %64 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %xx68 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %64, i32 0, i32 0
  store float 0.000000e+00, float* %xx68, align 4, !tbaa !30
  %arrayidx69 = getelementptr inbounds [2 x float], [2 x float]* %pixels_per_bp, i32 0, i64 1
  %65 = load float, float* %arrayidx69, align 4, !tbaa !26
  %66 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %xy70 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %66, i32 0, i32 1
  store float %65, float* %xy70, align 4, !tbaa !32
  %arrayidx71 = getelementptr inbounds [2 x float], [2 x float]* %pixels_per_bp, i32 0, i64 0
  %67 = load float, float* %arrayidx71, align 4, !tbaa !26
  %68 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %yx72 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %68, i32 0, i32 2
  store float %67, float* %yx72, align 4, !tbaa !33
  %69 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %yy73 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %69, i32 0, i32 3
  store float 0.000000e+00, float* %yy73, align 4, !tbaa !34
  %70 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %tx74 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %70, i32 0, i32 4
  store float 0.000000e+00, float* %tx74, align 4, !tbaa !35
  %71 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %ty75 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %71, i32 0, i32 5
  store float 0.000000e+00, float* %ty75, align 4, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.48, %sw.bb.67, %sw.bb.56, %sw.bb.50, %sw.bb
  %72 = bitcast %struct.gs_matrix_s* %translation to i8*
  call void @llvm.lifetime.start(i64 24, i8* %72) #1
  %73 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %eprn76 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %73, i32 0, i32 68
  %right_shift = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn76, i32 0, i32 10
  %74 = load float, float* %right_shift, align 4, !tbaa !37
  %sub77 = fsub float -0.000000e+00, %74
  %arrayidx78 = getelementptr inbounds [2 x float], [2 x float]* %pixels_per_bp, i32 0, i64 0
  %75 = load float, float* %arrayidx78, align 4, !tbaa !26
  %mul79 = fmul float %sub77, %75
  %conv80 = fpext float %mul79 to double
  %76 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %eprn81 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %76, i32 0, i32 68
  %down_shift = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn81, i32 0, i32 11
  %77 = load float, float* %down_shift, align 4, !tbaa !38
  %sub82 = fsub float -0.000000e+00, %77
  %arrayidx83 = getelementptr inbounds [2 x float], [2 x float]* %pixels_per_bp, i32 0, i64 1
  %78 = load float, float* %arrayidx83, align 4, !tbaa !26
  %mul84 = fmul float %sub82, %78
  %conv85 = fpext float %mul84 to double
  %call86 = call i32 @gs_make_translation(double %conv80, double %conv85, %struct.gs_matrix_s* %translation) #5
  %79 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %80 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr.addr, align 8, !tbaa !1
  %call87 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %79, %struct.gs_matrix_s* %translation, %struct.gs_matrix_s* %80) #5
  %81 = bitcast %struct.gs_matrix_s* %translation to i8*
  call void @llvm.lifetime.end(i64 24, i8* %81) #1
  %82 = bitcast i32* %quarters to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast [2 x float]* %pixels_per_bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast [2 x float]* %extension to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.eprn_Device** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @eprn_set_page_layout(%struct.eprn_Device* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %no_match = alloca i32, align 4
  %landscape = alloca i32, align 4
  %epref = alloca i8*, align 8
  %best_cmatch = alloca %struct.eprn_CustomPageDescription*, align 8
  %eprn3 = alloca %struct.s_eprn_Device*, align 8
  %best_cdmatch = alloca %struct.eprn_PageDescription*, align 8
  %best_dmatch = alloca %struct.eprn_PageDescription*, align 8
  %pd = alloca %struct.eprn_PageDescription*, align 8
  %w = alloca float, align 4
  %h = alloca float, align 4
  %margins = alloca [4 x float], align 16
  %quarters = alloca i32, align 4
  %desired = alloca i32, align 4
  %temp = alloca float, align 4
  %ms = alloca %struct.ms_SizeDescription*, align 8
  %cp = alloca %struct.eprn_CustomPageDescription*, align 8
  %cleanup.dest.slot = alloca i32
  %custom_code = alloca i32, align 4
  %reallocate = alloca i32, align 4
  %rc = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %no_match to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %no_match, align 4, !tbaa !27
  %1 = bitcast i32* %landscape to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %2, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %3 = load float, float* %arrayidx, align 4, !tbaa !26
  %4 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %4, i32 0, i32 19
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !26
  %cmp = fcmp ogt float %3, %5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %landscape, align 4, !tbaa !27
  %6 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %7, i32 0, i32 68
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 20
  %8 = load i32, i32* %CUPS_messages, align 4, !tbaa !39
  %tobool = icmp ne i32 %8, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  store i8* %cond, i8** %epref, align 8, !tbaa !1
  %9 = bitcast %struct.eprn_CustomPageDescription** %best_cmatch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.eprn_CustomPageDescription* null, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %10 = bitcast %struct.s_eprn_Device** %eprn3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn4 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %11, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn4, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %12 = bitcast %struct.eprn_PageDescription** %best_cdmatch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %struct.eprn_PageDescription* null, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %13 = bitcast %struct.eprn_PageDescription** %best_dmatch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct.eprn_PageDescription* null, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %14 = bitcast %struct.eprn_PageDescription** %pd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast float* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize5 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %16, i32 0, i32 19
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize5, i32 0, i64 0
  %17 = load float, float* %arrayidx6, align 4, !tbaa !26
  store float %17, float* %w, align 4, !tbaa !26
  %18 = bitcast float* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize7 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %19, i32 0, i32 19
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize7, i32 0, i64 1
  %20 = load float, float* %arrayidx8, align 4, !tbaa !26
  store float %20, float* %h, align 4, !tbaa !26
  %21 = bitcast [4 x float]* %margins to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #1
  %22 = bitcast i32* %quarters to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %desired to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %desired_flags = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %24, i32 0, i32 4
  %25 = load i32, i32* %desired_flags, align 4, !tbaa !40
  store i32 %25, i32* %desired, align 4, !tbaa !27
  %26 = load float, float* %w, align 4, !tbaa !26
  %27 = load float, float* %h, align 4, !tbaa !26
  %cmp9 = fcmp ogt float %26, %27
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %28 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load float, float* %w, align 4, !tbaa !26
  store float %29, float* %temp, align 4, !tbaa !26
  %30 = load float, float* %h, align 4, !tbaa !26
  store float %30, float* %w, align 4, !tbaa !26
  %31 = load float, float* %temp, align 4, !tbaa !26
  store float %31, float* %h, align 4, !tbaa !26
  %32 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %33, i32 0, i32 7
  store i32 0, i32* %code, align 4, !tbaa !41
  %34 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %leading_edge_set = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %34, i32 0, i32 9
  %35 = load i32, i32* %leading_edge_set, align 4, !tbaa !42
  %tobool11 = icmp ne i32 %35, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %36 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %default_orientation = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %36, i32 0, i32 8
  %37 = load i32, i32* %default_orientation, align 4, !tbaa !43
  %rem = srem i32 %37, 2
  %cmp13 = icmp eq i32 %rem, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %38 = load i32, i32* %desired, align 4, !tbaa !27
  %and = and i32 %38, -16385
  store i32 %and, i32* %desired, align 4, !tbaa !27
  br label %if.end.16

if.else:                                          ; preds = %if.then.12
  %39 = load i32, i32* %desired, align 4, !tbaa !27
  %or = or i32 %39, 16384
  store i32 %or, i32* %desired, align 4, !tbaa !27
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %40 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_overrides = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %40, i32 0, i32 2
  %41 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides, align 8, !tbaa !44
  %cmp18 = icmp eq %struct.eprn_PageDescription* %41, null
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.17
  %42 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %cap = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %42, i32 0, i32 0
  %43 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap, align 8, !tbaa !45
  %sizes = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %43, i32 0, i32 1
  %44 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %sizes, align 8, !tbaa !46
  store %struct.eprn_PageDescription* %44, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  br label %if.end.23

if.else.21:                                       ; preds = %if.end.17
  %45 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_overrides22 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %45, i32 0, i32 2
  %46 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides22, align 8, !tbaa !44
  store %struct.eprn_PageDescription* %46, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.20
  br label %while.cond

while.cond:                                       ; preds = %if.end.61, %if.end.23
  %47 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %code24 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %47, i32 0, i32 0
  %48 = load i32, i32* %code24, align 4, !tbaa !48
  %cmp25 = icmp ne i32 %48, 0
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = bitcast %struct.ms_SizeDescription** %ms to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %code27 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %50, i32 0, i32 0
  %51 = load i32, i32* %code27, align 4, !tbaa !48
  %call = call %struct.ms_SizeDescription* @ms_find_size_from_code(i32 %51) #5
  store %struct.ms_SizeDescription* %call, %struct.ms_SizeDescription** %ms, align 8, !tbaa !1
  %52 = load %struct.ms_SizeDescription*, %struct.ms_SizeDescription** %ms, align 8, !tbaa !1
  %dimen = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* %52, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [2 x float], [2 x float]* %dimen, i32 0, i64 0
  %53 = load float, float* %arrayidx28, align 4, !tbaa !26
  %conv29 = fpext float %53 to double
  %cmp30 = fcmp ogt double %conv29, 0.000000e+00
  br i1 %cmp30, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %while.body
  %54 = load float, float* %w, align 4, !tbaa !26
  %55 = load %struct.ms_SizeDescription*, %struct.ms_SizeDescription** %ms, align 8, !tbaa !1
  %dimen32 = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* %55, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [2 x float], [2 x float]* %dimen32, i32 0, i64 0
  %56 = load float, float* %arrayidx33, align 4, !tbaa !26
  %sub = fsub float %54, %56
  %conv34 = fpext float %sub to double
  %call35 = call double @fabs(double %conv34) #6
  %cmp36 = fcmp ole double %call35, 5.000000e+00
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.61

land.lhs.true.38:                                 ; preds = %land.lhs.true
  %57 = load float, float* %h, align 4, !tbaa !26
  %58 = load %struct.ms_SizeDescription*, %struct.ms_SizeDescription** %ms, align 8, !tbaa !1
  %dimen39 = getelementptr inbounds %struct.ms_SizeDescription, %struct.ms_SizeDescription* %58, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [2 x float], [2 x float]* %dimen39, i32 0, i64 1
  %59 = load float, float* %arrayidx40, align 4, !tbaa !26
  %sub41 = fsub float %57, %59
  %conv42 = fpext float %sub41 to double
  %call43 = call double @fabs(double %conv42) #6
  %cmp44 = fcmp ole double %call43, 5.000000e+00
  br i1 %cmp44, label %if.then.46, label %if.end.61

if.then.46:                                       ; preds = %land.lhs.true.38
  %60 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %cmp47 = icmp eq %struct.eprn_PageDescription* %60, null
  br i1 %cmp47, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.46
  %61 = load i32, i32* %desired, align 4, !tbaa !27
  %62 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %optional_flags = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %62, i32 0, i32 5
  %63 = load i32*, i32** %optional_flags, align 8, !tbaa !50
  %64 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %code49 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %64, i32 0, i32 0
  %65 = load i32, i32* %code49, align 4, !tbaa !48
  %66 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %code50 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %66, i32 0, i32 0
  %67 = load i32, i32* %code50, align 4, !tbaa !48
  %call51 = call i32 @better_flag_match(i32 %61, i32* %63, i32 %65, i32 %67) #5
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false, %if.then.46
  %68 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  store %struct.eprn_PageDescription* %68, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %lor.lhs.false
  %69 = load i32, i32* %desired, align 4, !tbaa !27
  %70 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %optional_flags55 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %70, i32 0, i32 5
  %71 = load i32*, i32** %optional_flags55, align 8, !tbaa !50
  %72 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %code56 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %72, i32 0, i32 0
  %73 = load i32, i32* %code56, align 4, !tbaa !48
  %call57 = call i32 @flag_match(i32 %69, i32* %71, i32 %73) #5
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.54
  store i32 0, i32* %no_match, align 4, !tbaa !27
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.54
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %land.lhs.true.38, %land.lhs.true, %while.body
  %74 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %74, i32 1
  store %struct.eprn_PageDescription* %incdec.ptr, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %75 = bitcast %struct.ms_SizeDescription** %ms to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %cap62 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %76, i32 0, i32 0
  %77 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap62, align 8, !tbaa !45
  %custom = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %77, i32 0, i32 2
  %78 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %custom, align 8, !tbaa !51
  %cmp63 = icmp ne %struct.eprn_CustomPageDescription* %78, null
  br i1 %cmp63, label %if.then.65, label %if.end.144

if.then.65:                                       ; preds = %while.end
  %79 = bitcast %struct.eprn_CustomPageDescription** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %cap66 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %80, i32 0, i32 0
  %81 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap66, align 8, !tbaa !45
  %custom67 = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %81, i32 0, i32 2
  %82 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %custom67, align 8, !tbaa !51
  store %struct.eprn_CustomPageDescription* %82, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  br label %while.cond.68

while.cond.68:                                    ; preds = %if.end.106, %if.then.65
  %83 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  %width_max = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %83, i32 0, i32 6
  %84 = load float, float* %width_max, align 4, !tbaa !52
  %conv69 = fpext float %84 to double
  %cmp70 = fcmp ogt double %conv69, 0.000000e+00
  br i1 %cmp70, label %while.body.72, label %while.end.108

while.body.72:                                    ; preds = %while.cond.68
  %85 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  %width_min = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %85, i32 0, i32 5
  %86 = load float, float* %width_min, align 4, !tbaa !54
  %87 = load float, float* %w, align 4, !tbaa !26
  %cmp73 = fcmp ole float %86, %87
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.106

land.lhs.true.75:                                 ; preds = %while.body.72
  %88 = load float, float* %w, align 4, !tbaa !26
  %89 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  %width_max76 = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %89, i32 0, i32 6
  %90 = load float, float* %width_max76, align 4, !tbaa !52
  %cmp77 = fcmp ole float %88, %90
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.106

land.lhs.true.79:                                 ; preds = %land.lhs.true.75
  %91 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  %height_min = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %91, i32 0, i32 7
  %92 = load float, float* %height_min, align 4, !tbaa !55
  %93 = load float, float* %h, align 4, !tbaa !26
  %cmp80 = fcmp ole float %92, %93
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.106

land.lhs.true.82:                                 ; preds = %land.lhs.true.79
  %94 = load float, float* %h, align 4, !tbaa !26
  %95 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  %height_max = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %95, i32 0, i32 8
  %96 = load float, float* %height_max, align 4, !tbaa !56
  %cmp83 = fcmp ole float %94, %96
  br i1 %cmp83, label %if.then.85, label %if.end.106

if.then.85:                                       ; preds = %land.lhs.true.82
  %97 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %cmp86 = icmp eq %struct.eprn_CustomPageDescription* %97, null
  br i1 %cmp86, label %if.then.94, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %if.then.85
  %98 = load i32, i32* %desired, align 4, !tbaa !27
  %99 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %optional_flags89 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %99, i32 0, i32 5
  %100 = load i32*, i32** %optional_flags89, align 8, !tbaa !50
  %101 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %code90 = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %101, i32 0, i32 0
  %102 = load i32, i32* %code90, align 4, !tbaa !57
  %103 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  %code91 = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %103, i32 0, i32 0
  %104 = load i32, i32* %code91, align 4, !tbaa !57
  %call92 = call i32 @better_flag_match(i32 %98, i32* %100, i32 %102, i32 %104) #5
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %lor.lhs.false.88, %if.then.85
  %105 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  store %struct.eprn_CustomPageDescription* %105, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %lor.lhs.false.88
  %106 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_overrides96 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %106, i32 0, i32 2
  %107 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides96, align 8, !tbaa !44
  %cmp97 = icmp eq %struct.eprn_PageDescription* %107, null
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.105

land.lhs.true.99:                                 ; preds = %if.end.95
  %108 = load i32, i32* %desired, align 4, !tbaa !27
  %109 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %optional_flags100 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %109, i32 0, i32 5
  %110 = load i32*, i32** %optional_flags100, align 8, !tbaa !50
  %111 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  %code101 = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %111, i32 0, i32 0
  %112 = load i32, i32* %code101, align 4, !tbaa !57
  %call102 = call i32 @flag_match(i32 %108, i32* %110, i32 %112) #5
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %land.lhs.true.99
  store i32 0, i32* %no_match, align 4, !tbaa !27
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %land.lhs.true.99, %if.end.95
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %land.lhs.true.82, %land.lhs.true.79, %land.lhs.true.75, %while.body.72
  %113 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  %incdec.ptr107 = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %113, i32 1
  store %struct.eprn_CustomPageDescription* %incdec.ptr107, %struct.eprn_CustomPageDescription** %cp, align 8, !tbaa !1
  br label %while.cond.68

while.end.108:                                    ; preds = %while.cond.68
  %114 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %cmp109 = icmp ne %struct.eprn_CustomPageDescription* %114, null
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.143

land.lhs.true.111:                                ; preds = %while.end.108
  %115 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_overrides112 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %115, i32 0, i32 2
  %116 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides112, align 8, !tbaa !44
  %cmp113 = icmp ne %struct.eprn_PageDescription* %116, null
  br i1 %cmp113, label %if.then.115, label %if.end.143

if.then.115:                                      ; preds = %land.lhs.true.111
  %117 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_overrides116 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %117, i32 0, i32 2
  %118 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides116, align 8, !tbaa !44
  store %struct.eprn_PageDescription* %118, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.115
  %119 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %code117 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %119, i32 0, i32 0
  %120 = load i32, i32* %code117, align 4, !tbaa !48
  %cmp118 = icmp ne i32 %120, 0
  br i1 %cmp118, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %121 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %code120 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %121, i32 0, i32 0
  %122 = load i32, i32* %code120, align 4, !tbaa !48
  %and121 = and i32 %122, -65281
  %cmp122 = icmp eq i32 %and121, 76
  br i1 %cmp122, label %if.then.124, label %if.end.141

if.then.124:                                      ; preds = %for.body
  %123 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %cmp125 = icmp eq %struct.eprn_PageDescription* %123, null
  br i1 %cmp125, label %if.then.133, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %if.then.124
  %124 = load i32, i32* %desired, align 4, !tbaa !27
  %125 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %optional_flags128 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %125, i32 0, i32 5
  %126 = load i32*, i32** %optional_flags128, align 8, !tbaa !50
  %127 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %code129 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %127, i32 0, i32 0
  %128 = load i32, i32* %code129, align 4, !tbaa !48
  %129 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %code130 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %129, i32 0, i32 0
  %130 = load i32, i32* %code130, align 4, !tbaa !48
  %call131 = call i32 @better_flag_match(i32 %124, i32* %126, i32 %128, i32 %130) #5
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.127, %if.then.124
  %131 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  store %struct.eprn_PageDescription* %131, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %lor.lhs.false.127
  %132 = load i32, i32* %desired, align 4, !tbaa !27
  %133 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %optional_flags135 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %133, i32 0, i32 5
  %134 = load i32*, i32** %optional_flags135, align 8, !tbaa !50
  %135 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %code136 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %135, i32 0, i32 0
  %136 = load i32, i32* %code136, align 4, !tbaa !48
  %call137 = call i32 @flag_match(i32 %132, i32* %134, i32 %136) #5
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.134
  store i32 0, i32* %no_match, align 4, !tbaa !27
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %if.end.134
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.141
  %137 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  %incdec.ptr142 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %137, i32 1
  store %struct.eprn_PageDescription* %incdec.ptr142, %struct.eprn_PageDescription** %pd, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.143

if.end.143:                                       ; preds = %for.end, %land.lhs.true.111, %while.end.108
  %138 = bitcast %struct.eprn_CustomPageDescription** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %while.end
  %139 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %cmp145 = icmp eq %struct.eprn_PageDescription* %139, null
  br i1 %cmp145, label %if.then.147, label %if.end.203

if.then.147:                                      ; preds = %if.end.144
  %140 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %cmp148 = icmp eq %struct.eprn_CustomPageDescription* %140, null
  br i1 %cmp148, label %if.then.150, label %if.end.185

if.then.150:                                      ; preds = %if.then.147
  %call151 = call i8* @gs_program_name() #5
  %call152 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call151, i64 %call152) #5
  %141 = load i8*, i8** %epref, align 8, !tbaa !1
  %142 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize153 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %142, i32 0, i32 19
  %arrayidx154 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize153, i32 0, i64 0
  %143 = load float, float* %arrayidx154, align 4, !tbaa !26
  %conv155 = fpext float %143 to double
  %144 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize156 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %144, i32 0, i32 19
  %arrayidx157 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize156, i32 0, i64 1
  %145 = load float, float* %arrayidx157, align 4, !tbaa !26
  %conv158 = fpext float %145 to double
  %call159 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* %141, double %conv155, double %conv158) #5
  %146 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %cap160 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %146, i32 0, i32 0
  %147 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap160, align 8, !tbaa !45
  %custom161 = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %147, i32 0, i32 2
  %148 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %custom161, align 8, !tbaa !51
  %cmp162 = icmp eq %struct.eprn_CustomPageDescription* %148, null
  br i1 %cmp162, label %if.then.164, label %if.else.178

if.then.164:                                      ; preds = %if.then.150
  %149 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_overrides165 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %149, i32 0, i32 2
  %150 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides165, align 8, !tbaa !44
  %cmp166 = icmp ne %struct.eprn_PageDescription* %150, null
  br i1 %cmp166, label %if.then.168, label %if.else.172

if.then.168:                                      ; preds = %if.then.164
  %call169 = call i8* @gs_program_name() #5
  %call170 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call169, i64 %call170) #5
  %151 = load i8*, i8** %epref, align 8, !tbaa !1
  %call171 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i32 0, i32 0), i8* %151) #5
  br label %if.end.177

if.else.172:                                      ; preds = %if.then.164
  %call173 = call i8* @gs_program_name() #5
  %call174 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call173, i64 %call174) #5
  %152 = load i8*, i8** %epref, align 8, !tbaa !1
  %153 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %cap175 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %153, i32 0, i32 0
  %154 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap175, align 8, !tbaa !45
  %name = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %154, i32 0, i32 0
  %155 = load i8*, i8** %name, align 8, !tbaa !58
  %call176 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i8* %152, i8* %155) #5
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.172, %if.then.168
  br label %if.end.184

if.else.178:                                      ; preds = %if.then.150
  %call179 = call i8* @gs_program_name() #5
  %call180 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call179, i64 %call180) #5
  %156 = load i8*, i8** %epref, align 8, !tbaa !1
  %157 = load i8*, i8** %epref, align 8, !tbaa !1
  %158 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %cap181 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %158, i32 0, i32 0
  %159 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap181, align 8, !tbaa !45
  %name182 = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %159, i32 0, i32 0
  %160 = load i8*, i8** %name182, align 8, !tbaa !58
  %call183 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.6, i32 0, i32 0), i8* %156, i8* %157, i8* %160) #5
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.178, %if.end.177
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.421

if.end.185:                                       ; preds = %if.then.147
  %161 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_overrides186 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %161, i32 0, i32 2
  %162 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides186, align 8, !tbaa !44
  %cmp187 = icmp ne %struct.eprn_PageDescription* %162, null
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.202

land.lhs.true.189:                                ; preds = %if.end.185
  %163 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %cmp190 = icmp eq %struct.eprn_PageDescription* %163, null
  br i1 %cmp190, label %if.then.192, label %if.end.202

if.then.192:                                      ; preds = %land.lhs.true.189
  %call193 = call i8* @gs_program_name() #5
  %call194 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call193, i64 %call194) #5
  %164 = load i8*, i8** %epref, align 8, !tbaa !1
  %165 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize195 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %165, i32 0, i32 19
  %arrayidx196 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize195, i32 0, i64 0
  %166 = load float, float* %arrayidx196, align 4, !tbaa !26
  %conv197 = fpext float %166 to double
  %167 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize198 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %167, i32 0, i32 19
  %arrayidx199 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize198, i32 0, i64 1
  %168 = load float, float* %arrayidx199, align 4, !tbaa !26
  %conv200 = fpext float %168 to double
  %169 = load i8*, i8** %epref, align 8, !tbaa !1
  %170 = load i8*, i8** %epref, align 8, !tbaa !1
  %171 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_file = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %171, i32 0, i32 1
  %172 = load i8*, i8** %media_file, align 8, !tbaa !59
  %call201 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.7, i32 0, i32 0), i8* %164, double %conv197, double %conv200, i8* %169, i8* %170, i8* %172) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.421

if.end.202:                                       ; preds = %land.lhs.true.189, %if.end.185
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.144
  %173 = bitcast i32* %custom_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  store i32 0, i32* %custom_code, align 4, !tbaa !27
  %174 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %cmp204 = icmp ne %struct.eprn_CustomPageDescription* %174, null
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.220

land.lhs.true.206:                                ; preds = %if.end.203
  %175 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_overrides207 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %175, i32 0, i32 2
  %176 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides207, align 8, !tbaa !44
  %cmp208 = icmp eq %struct.eprn_PageDescription* %176, null
  br i1 %cmp208, label %if.then.213, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %land.lhs.true.206
  %177 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %cmp211 = icmp ne %struct.eprn_PageDescription* %177, null
  br i1 %cmp211, label %if.then.213, label %if.end.220

if.then.213:                                      ; preds = %lor.lhs.false.210, %land.lhs.true.206
  %178 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_overrides214 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %178, i32 0, i32 2
  %179 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides214, align 8, !tbaa !44
  %cmp215 = icmp eq %struct.eprn_PageDescription* %179, null
  br i1 %cmp215, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.213
  %180 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %code217 = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %180, i32 0, i32 0
  %181 = load i32, i32* %code217, align 4, !tbaa !57
  br label %cond.end

cond.false:                                       ; preds = %if.then.213
  %182 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %code218 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %182, i32 0, i32 0
  %183 = load i32, i32* %code218, align 4, !tbaa !48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond219 = phi i32 [ %181, %cond.true ], [ %183, %cond.false ]
  store i32 %cond219, i32* %custom_code, align 4, !tbaa !27
  br label %if.end.220

if.end.220:                                       ; preds = %cond.end, %lor.lhs.false.210, %if.end.203
  %184 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %cmp221 = icmp eq %struct.eprn_PageDescription* %184, null
  br i1 %cmp221, label %if.then.231, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %if.end.220
  %185 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %cmp224 = icmp ne %struct.eprn_CustomPageDescription* %185, null
  br i1 %cmp224, label %land.lhs.true.226, label %if.else.259

land.lhs.true.226:                                ; preds = %lor.lhs.false.223
  %186 = load i32, i32* %desired, align 4, !tbaa !27
  %187 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %optional_flags227 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %187, i32 0, i32 5
  %188 = load i32*, i32** %optional_flags227, align 8, !tbaa !50
  %189 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %code228 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %189, i32 0, i32 0
  %190 = load i32, i32* %code228, align 4, !tbaa !48
  %191 = load i32, i32* %custom_code, align 4, !tbaa !27
  %call229 = call i32 @better_flag_match(i32 %186, i32* %188, i32 %190, i32 %191) #5
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.then.231, label %if.else.259

if.then.231:                                      ; preds = %land.lhs.true.226, %if.end.220
  %192 = load i32, i32* %desired, align 4, !tbaa !27
  %193 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %optional_flags232 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %193, i32 0, i32 5
  %194 = load i32*, i32** %optional_flags232, align 8, !tbaa !50
  %195 = load i32, i32* %custom_code, align 4, !tbaa !27
  %call233 = call i32 @flag_match(i32 %192, i32* %194, i32 %195) #5
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.then.235, label %if.end.258

if.then.235:                                      ; preds = %if.then.231
  %196 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %media_overrides236 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %196, i32 0, i32 2
  %197 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %media_overrides236, align 8, !tbaa !44
  %cmp237 = icmp eq %struct.eprn_PageDescription* %197, null
  br i1 %cmp237, label %if.then.239, label %if.else.246

if.then.239:                                      ; preds = %if.then.235
  %198 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %code240 = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %198, i32 0, i32 0
  %199 = load i32, i32* %code240, align 4, !tbaa !57
  %200 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %code241 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %200, i32 0, i32 7
  store i32 %199, i32* %code241, align 4, !tbaa !41
  %201 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %201, i32 0, i32 1
  %202 = load float, float* %left, align 4, !tbaa !60
  %arrayidx242 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float %202, float* %arrayidx242, align 4, !tbaa !26
  %203 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %bottom = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %203, i32 0, i32 2
  %204 = load float, float* %bottom, align 4, !tbaa !61
  %arrayidx243 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float %204, float* %arrayidx243, align 4, !tbaa !26
  %205 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %right = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %205, i32 0, i32 3
  %206 = load float, float* %right, align 4, !tbaa !62
  %arrayidx244 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float %206, float* %arrayidx244, align 4, !tbaa !26
  %207 = load %struct.eprn_CustomPageDescription*, %struct.eprn_CustomPageDescription** %best_cmatch, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.eprn_CustomPageDescription, %struct.eprn_CustomPageDescription* %207, i32 0, i32 4
  %208 = load float, float* %top, align 4, !tbaa !63
  %arrayidx245 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float %208, float* %arrayidx245, align 4, !tbaa !26
  br label %if.end.257

if.else.246:                                      ; preds = %if.then.235
  %209 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %code247 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %209, i32 0, i32 0
  %210 = load i32, i32* %code247, align 4, !tbaa !48
  %211 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %code248 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %211, i32 0, i32 7
  store i32 %210, i32* %code248, align 4, !tbaa !41
  %212 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %left249 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %212, i32 0, i32 1
  %213 = load float, float* %left249, align 4, !tbaa !64
  %arrayidx250 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float %213, float* %arrayidx250, align 4, !tbaa !26
  %214 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %bottom251 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %214, i32 0, i32 2
  %215 = load float, float* %bottom251, align 4, !tbaa !65
  %arrayidx252 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float %215, float* %arrayidx252, align 4, !tbaa !26
  %216 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %right253 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %216, i32 0, i32 3
  %217 = load float, float* %right253, align 4, !tbaa !66
  %arrayidx254 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float %217, float* %arrayidx254, align 4, !tbaa !26
  %218 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_cdmatch, align 8, !tbaa !1
  %top255 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %218, i32 0, i32 4
  %219 = load float, float* %top255, align 4, !tbaa !67
  %arrayidx256 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float %219, float* %arrayidx256, align 4, !tbaa !26
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.246, %if.then.239
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.then.231
  br label %if.end.276

if.else.259:                                      ; preds = %land.lhs.true.226, %lor.lhs.false.223
  %220 = load i32, i32* %desired, align 4, !tbaa !27
  %221 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %optional_flags260 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %221, i32 0, i32 5
  %222 = load i32*, i32** %optional_flags260, align 8, !tbaa !50
  %223 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %code261 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %223, i32 0, i32 0
  %224 = load i32, i32* %code261, align 4, !tbaa !48
  %call262 = call i32 @flag_match(i32 %220, i32* %222, i32 %224) #5
  %tobool263 = icmp ne i32 %call262, 0
  br i1 %tobool263, label %if.then.264, label %if.end.275

if.then.264:                                      ; preds = %if.else.259
  %225 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %code265 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %225, i32 0, i32 0
  %226 = load i32, i32* %code265, align 4, !tbaa !48
  %227 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %code266 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %227, i32 0, i32 7
  store i32 %226, i32* %code266, align 4, !tbaa !41
  %228 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %left267 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %228, i32 0, i32 1
  %229 = load float, float* %left267, align 4, !tbaa !64
  %arrayidx268 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  store float %229, float* %arrayidx268, align 4, !tbaa !26
  %230 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %bottom269 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %230, i32 0, i32 2
  %231 = load float, float* %bottom269, align 4, !tbaa !65
  %arrayidx270 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  store float %231, float* %arrayidx270, align 4, !tbaa !26
  %232 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %right271 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %232, i32 0, i32 3
  %233 = load float, float* %right271, align 4, !tbaa !66
  %arrayidx272 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 2
  store float %233, float* %arrayidx272, align 4, !tbaa !26
  %234 = load %struct.eprn_PageDescription*, %struct.eprn_PageDescription** %best_dmatch, align 8, !tbaa !1
  %top273 = getelementptr inbounds %struct.eprn_PageDescription, %struct.eprn_PageDescription* %234, i32 0, i32 4
  %235 = load float, float* %top273, align 4, !tbaa !67
  %arrayidx274 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  store float %235, float* %arrayidx274, align 4, !tbaa !26
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.264, %if.else.259
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.258
  %236 = bitcast i32* %custom_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %237 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %code277 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %237, i32 0, i32 7
  %238 = load i32, i32* %code277, align 4, !tbaa !41
  %cmp278 = icmp eq i32 %238, 0
  br i1 %cmp278, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %if.end.276
  %239 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %240 = load i32, i32* %no_match, align 4, !tbaa !27
  call void @eprn_flag_mismatch(%struct.s_eprn_Device* %239, i32 %240) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.421

if.end.281:                                       ; preds = %if.end.276
  %241 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %leading_edge_set282 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %241, i32 0, i32 9
  %242 = load i32, i32* %leading_edge_set282, align 4, !tbaa !42
  %tobool283 = icmp ne i32 %242, 0
  br i1 %tobool283, label %if.end.293, label %if.then.284

if.then.284:                                      ; preds = %if.end.281
  %243 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %code285 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %243, i32 0, i32 7
  %244 = load i32, i32* %code285, align 4, !tbaa !41
  %and286 = and i32 %244, 16384
  %tobool287 = icmp ne i32 %and286, 0
  br i1 %tobool287, label %if.then.288, label %if.else.290

if.then.288:                                      ; preds = %if.then.284
  %245 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %default_orientation289 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %245, i32 0, i32 8
  store i32 3, i32* %default_orientation289, align 4, !tbaa !43
  br label %if.end.292

if.else.290:                                      ; preds = %if.then.284
  %246 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %default_orientation291 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %246, i32 0, i32 8
  store i32 0, i32* %default_orientation291, align 4, !tbaa !43
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.290, %if.then.288
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.end.281
  %247 = load float, float* %w, align 4, !tbaa !26
  %248 = load float, float* %h, align 4, !tbaa !26
  %sub294 = fsub float %247, %248
  %conv295 = fpext float %sub294 to double
  %call296 = call double @fabs(double %conv295) #6
  %cmp297 = fcmp ogt double %call296, 1.000000e+00
  br i1 %cmp297, label %land.lhs.true.299, label %if.end.358

land.lhs.true.299:                                ; preds = %if.end.293
  %249 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %default_orientation300 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %249, i32 0, i32 8
  %250 = load i32, i32* %default_orientation300, align 4, !tbaa !43
  %rem301 = srem i32 %250, 2
  %cmp302 = icmp eq i32 %rem301, 0
  %conv303 = zext i1 %cmp302 to i32
  %251 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %251, i32 0, i32 13
  %252 = load i32, i32* %width, align 4, !tbaa !68
  %conv304 = sitofp i32 %252 to float
  %253 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %253, i32 0, i32 22
  %arrayidx305 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %254 = load float, float* %arrayidx305, align 4, !tbaa !26
  %div = fdiv float %conv304, %254
  %255 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %255, i32 0, i32 14
  %256 = load i32, i32* %height, align 4, !tbaa !69
  %conv306 = sitofp i32 %256 to float
  %257 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %HWResolution307 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %257, i32 0, i32 22
  %arrayidx308 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution307, i32 0, i64 1
  %258 = load float, float* %arrayidx308, align 4, !tbaa !26
  %div309 = fdiv float %conv306, %258
  %cmp310 = fcmp ole float %div, %div309
  %conv311 = zext i1 %cmp310 to i32
  %cmp312 = icmp ne i32 %conv303, %conv311
  br i1 %cmp312, label %if.then.314, label %if.end.358

if.then.314:                                      ; preds = %land.lhs.true.299
  %259 = bitcast i32* %reallocate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %259) #1
  store i32 0, i32* %reallocate, align 4, !tbaa !27
  %260 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %260, i32 0, i32 9
  %261 = load i32, i32* %is_open, align 4, !tbaa !70
  %tobool315 = icmp ne i32 %261, 0
  br i1 %tobool315, label %if.then.316, label %if.end.318

if.then.316:                                      ; preds = %if.then.314
  store i32 1, i32* %reallocate, align 4, !tbaa !27
  %262 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %263 = bitcast %struct.eprn_Device* %262 to %struct.gx_device_s*
  %call317 = call i32 @gdev_prn_close(%struct.gx_device_s* %263) #5
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.316, %if.then.314
  %264 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %default_orientation319 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %264, i32 0, i32 8
  %265 = load i32, i32* %default_orientation319, align 4, !tbaa !43
  %rem320 = srem i32 %265, 2
  %cmp321 = icmp eq i32 %rem320, 0
  br i1 %cmp321, label %if.then.323, label %if.else.333

if.then.323:                                      ; preds = %if.end.318
  %266 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %267 = bitcast %struct.eprn_Device* %266 to %struct.gx_device_s*
  %268 = load float, float* %w, align 4, !tbaa !26
  %conv324 = fpext float %268 to double
  %269 = load float, float* %h, align 4, !tbaa !26
  %conv325 = fpext float %269 to double
  call void @gx_device_set_media_size(%struct.gx_device_s* %267, double %conv324, double %conv325) #5
  %270 = load i32, i32* %landscape, align 4, !tbaa !27
  %tobool326 = icmp ne i32 %270, 0
  br i1 %tobool326, label %if.then.327, label %if.end.332

if.then.327:                                      ; preds = %if.then.323
  %271 = load float, float* %h, align 4, !tbaa !26
  %272 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize328 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %272, i32 0, i32 19
  %arrayidx329 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize328, i32 0, i64 0
  store float %271, float* %arrayidx329, align 4, !tbaa !26
  %273 = load float, float* %w, align 4, !tbaa !26
  %274 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize330 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %274, i32 0, i32 19
  %arrayidx331 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize330, i32 0, i64 1
  store float %273, float* %arrayidx331, align 4, !tbaa !26
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.327, %if.then.323
  br label %if.end.343

if.else.333:                                      ; preds = %if.end.318
  %275 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %276 = bitcast %struct.eprn_Device* %275 to %struct.gx_device_s*
  %277 = load float, float* %h, align 4, !tbaa !26
  %conv334 = fpext float %277 to double
  %278 = load float, float* %w, align 4, !tbaa !26
  %conv335 = fpext float %278 to double
  call void @gx_device_set_media_size(%struct.gx_device_s* %276, double %conv334, double %conv335) #5
  %279 = load i32, i32* %landscape, align 4, !tbaa !27
  %tobool336 = icmp ne i32 %279, 0
  br i1 %tobool336, label %if.end.342, label %if.then.337

if.then.337:                                      ; preds = %if.else.333
  %280 = load float, float* %w, align 4, !tbaa !26
  %281 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize338 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %281, i32 0, i32 19
  %arrayidx339 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize338, i32 0, i64 0
  store float %280, float* %arrayidx339, align 4, !tbaa !26
  %282 = load float, float* %h, align 4, !tbaa !26
  %283 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %MediaSize340 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %283, i32 0, i32 19
  %arrayidx341 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize340, i32 0, i64 1
  store float %282, float* %arrayidx341, align 4, !tbaa !26
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.337, %if.else.333
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %if.end.332
  %284 = load i32, i32* %reallocate, align 4, !tbaa !27
  %tobool344 = icmp ne i32 %284, 0
  br i1 %tobool344, label %if.then.345, label %if.end.354

if.then.345:                                      ; preds = %if.end.343
  %285 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %285) #1
  %286 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %287 = bitcast %struct.eprn_Device* %286 to %struct.gx_device_s*
  %call346 = call i32 @gdev_prn_open(%struct.gx_device_s* %287) #5
  store i32 %call346, i32* %rc, align 4, !tbaa !27
  %288 = load i32, i32* %rc, align 4, !tbaa !27
  %cmp347 = icmp slt i32 %288, 0
  br i1 %cmp347, label %if.then.349, label %if.end.353

if.then.349:                                      ; preds = %if.then.345
  %call350 = call i8* @gs_program_name() #5
  %call351 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call350, i64 %call351) #5
  %289 = load i8*, i8** %epref, align 8, !tbaa !1
  %290 = load i32, i32* %rc, align 4, !tbaa !27
  %call352 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0), i8* %289, i32 %290) #5
  %291 = load i32, i32* %rc, align 4, !tbaa !27
  store i32 %291, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.353:                                       ; preds = %if.then.345
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.353, %if.then.349
  %292 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.355 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.354

if.end.354:                                       ; preds = %cleanup.cont, %if.end.343
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.355

cleanup.355:                                      ; preds = %if.end.354, %cleanup
  %293 = bitcast i32* %reallocate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %cleanup.dest.356 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.356, label %cleanup.421 [
    i32 0, label %cleanup.cont.357
  ]

cleanup.cont.357:                                 ; preds = %cleanup.355
  br label %if.end.358

if.end.358:                                       ; preds = %cleanup.cont.357, %land.lhs.true.299, %if.end.293
  %294 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %294, i32 0, i32 14
  %295 = load i32, i32* %colour_model, align 4, !tbaa !71
  %cmp359 = icmp ne i32 %295, 0
  br i1 %cmp359, label %land.lhs.true.361, label %if.end.369

land.lhs.true.361:                                ; preds = %if.end.358
  %arrayidx362 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  %296 = load float, float* %arrayidx362, align 4, !tbaa !26
  %conv363 = fpext float %296 to double
  %cmp364 = fcmp une double %conv363, 0.000000e+00
  br i1 %cmp364, label %if.then.366, label %if.end.369

if.then.366:                                      ; preds = %land.lhs.true.361
  %297 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %cap367 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %297, i32 0, i32 0
  %298 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap367, align 8, !tbaa !45
  %bottom_increment = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %298, i32 0, i32 3
  %299 = load float, float* %bottom_increment, align 4, !tbaa !72
  %arrayidx368 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 1
  %300 = load float, float* %arrayidx368, align 4, !tbaa !26
  %add = fadd float %300, %299
  store float %add, float* %arrayidx368, align 4, !tbaa !26
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.366, %land.lhs.true.361, %if.end.358
  %301 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %default_orientation370 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %301, i32 0, i32 8
  %302 = load i32, i32* %default_orientation370, align 4, !tbaa !43
  store i32 %302, i32* %quarters, align 4, !tbaa !27
  %303 = load i32, i32* %landscape, align 4, !tbaa !27
  %tobool371 = icmp ne i32 %303, 0
  br i1 %tobool371, label %if.then.372, label %if.end.375

if.then.372:                                      ; preds = %if.end.369
  %304 = load i32, i32* %quarters, align 4, !tbaa !27
  %add373 = add nsw i32 %304, 1
  %rem374 = srem i32 %add373, 4
  store i32 %rem374, i32* %quarters, align 4, !tbaa !27
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.372, %if.end.369
  %305 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %keep_margins = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %305, i32 0, i32 12
  %306 = load i32, i32* %keep_margins, align 4, !tbaa !73
  %tobool376 = icmp ne i32 %306, 0
  br i1 %tobool376, label %if.then.377, label %if.else.385

if.then.377:                                      ; preds = %if.end.375
  %307 = load i32, i32* %quarters, align 4, !tbaa !27
  %sub378 = sub nsw i32 3, %307
  %idxprom = sext i32 %sub378 to i64
  %308 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %308, i32 0, i32 25
  %arrayidx379 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 %idxprom
  %309 = load float, float* %arrayidx379, align 4, !tbaa !26
  %310 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %down_shift = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %310, i32 0, i32 11
  store float %309, float* %down_shift, align 4, !tbaa !74
  %311 = load i32, i32* %quarters, align 4, !tbaa !27
  %sub380 = sub nsw i32 4, %311
  %rem381 = srem i32 %sub380, 4
  %idxprom382 = sext i32 %rem381 to i64
  %312 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %HWMargins383 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %312, i32 0, i32 25
  %arrayidx384 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins383, i32 0, i64 %idxprom382
  %313 = load float, float* %arrayidx384, align 4, !tbaa !26
  %314 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %right_shift = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %314, i32 0, i32 10
  store float %313, float* %right_shift, align 4, !tbaa !75
  br label %if.end.420

if.else.385:                                      ; preds = %if.end.375
  %315 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %315) #1
  %arrayidx386 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 3
  %316 = load float, float* %arrayidx386, align 4, !tbaa !26
  %317 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %down_shift387 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %317, i32 0, i32 11
  store float %316, float* %down_shift387, align 4, !tbaa !74
  %arrayidx388 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 0
  %318 = load float, float* %arrayidx388, align 4, !tbaa !26
  %319 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn3, align 8, !tbaa !1
  %right_shift389 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %319, i32 0, i32 10
  store float %318, float* %right_shift389, align 4, !tbaa !75
  %320 = load i32, i32* %quarters, align 4, !tbaa !27
  %cmp390 = icmp ne i32 %320, 0
  br i1 %cmp390, label %if.then.392, label %if.else.406

if.then.392:                                      ; preds = %if.else.385
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.393

for.cond.393:                                     ; preds = %for.inc.404, %if.then.392
  %321 = load i32, i32* %j, align 4, !tbaa !27
  %cmp394 = icmp slt i32 %321, 4
  br i1 %cmp394, label %for.body.396, label %for.end.405

for.body.396:                                     ; preds = %for.cond.393
  %322 = load i32, i32* %j, align 4, !tbaa !27
  %323 = load i32, i32* %quarters, align 4, !tbaa !27
  %add397 = add nsw i32 %322, %323
  %rem398 = srem i32 %add397, 4
  %idxprom399 = sext i32 %rem398 to i64
  %arrayidx400 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 %idxprom399
  %324 = load float, float* %arrayidx400, align 4, !tbaa !26
  %325 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom401 = sext i32 %325 to i64
  %326 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %HWMargins402 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %326, i32 0, i32 25
  %arrayidx403 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins402, i32 0, i64 %idxprom401
  store float %324, float* %arrayidx403, align 4, !tbaa !26
  br label %for.inc.404

for.inc.404:                                      ; preds = %for.body.396
  %327 = load i32, i32* %j, align 4, !tbaa !27
  %inc = add nsw i32 %327, 1
  store i32 %inc, i32* %j, align 4, !tbaa !27
  br label %for.cond.393

for.end.405:                                      ; preds = %for.cond.393
  br label %if.end.419

if.else.406:                                      ; preds = %if.else.385
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.407

for.cond.407:                                     ; preds = %for.inc.416, %if.else.406
  %328 = load i32, i32* %j, align 4, !tbaa !27
  %cmp408 = icmp slt i32 %328, 4
  br i1 %cmp408, label %for.body.410, label %for.end.418

for.body.410:                                     ; preds = %for.cond.407
  %329 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom411 = sext i32 %329 to i64
  %arrayidx412 = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i64 %idxprom411
  %330 = load float, float* %arrayidx412, align 4, !tbaa !26
  %conv413 = fpext float %330 to double
  %div414 = fdiv double %conv413, 7.200000e+01
  %conv415 = fptrunc double %div414 to float
  store float %conv415, float* %arrayidx412, align 4, !tbaa !26
  br label %for.inc.416

for.inc.416:                                      ; preds = %for.body.410
  %331 = load i32, i32* %j, align 4, !tbaa !27
  %inc417 = add nsw i32 %331, 1
  store i32 %inc417, i32* %j, align 4, !tbaa !27
  br label %for.cond.407

for.end.418:                                      ; preds = %for.cond.407
  %332 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %333 = bitcast %struct.eprn_Device* %332 to %struct.gx_device_s*
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %margins, i32 0, i32 0
  call void @gx_device_set_margins(%struct.gx_device_s* %333, float* %arraydecay, i32 0) #5
  br label %if.end.419

if.end.419:                                       ; preds = %for.end.418, %for.end.405
  %334 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %if.then.377
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.421

cleanup.421:                                      ; preds = %if.end.420, %cleanup.355, %if.then.280, %if.then.192, %if.end.184
  %335 = bitcast i32* %desired to i8*
  call void @llvm.lifetime.end(i64 4, i8* %335) #1
  %336 = bitcast i32* %quarters to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #1
  %337 = bitcast [4 x float]* %margins to i8*
  call void @llvm.lifetime.end(i64 16, i8* %337) #1
  %338 = bitcast float* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %338) #1
  %339 = bitcast float* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #1
  %340 = bitcast %struct.eprn_PageDescription** %pd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %340) #1
  %341 = bitcast %struct.eprn_PageDescription** %best_dmatch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %341) #1
  %342 = bitcast %struct.eprn_PageDescription** %best_cdmatch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #1
  %343 = bitcast %struct.s_eprn_Device** %eprn3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %343) #1
  %344 = bitcast %struct.eprn_CustomPageDescription** %best_cmatch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #1
  %345 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast i32* %landscape to i8*
  call void @llvm.lifetime.end(i64 4, i8* %346) #1
  %347 = bitcast i32* %no_match to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #1
  %348 = load i32, i32* %retval
  ret i32 %348
}

declare void @eprintf_program_ident(i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf_nomem(i8*, ...) #2

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #2

declare i32 @gs_make_translation(double, double, %struct.gs_matrix_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct.ms_SizeDescription* @ms_find_size_from_code(i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define internal i32 @better_flag_match(i32 %desired, i32* %optional, i32 %old_code, i32 %new_code) #0 {
entry:
  %retval = alloca i32, align 4
  %desired.addr = alloca i32, align 4
  %optional.addr = alloca i32*, align 8
  %old_code.addr = alloca i32, align 4
  %new_code.addr = alloca i32, align 4
  %old_diff = alloca i32, align 4
  %new_diff = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %opt = alloca i32*, align 8
  %diff = alloca i32, align 4
  store i32 %desired, i32* %desired.addr, align 4, !tbaa !27
  store i32* %optional, i32** %optional.addr, align 8, !tbaa !1
  store i32 %old_code, i32* %old_code.addr, align 4, !tbaa !27
  store i32 %new_code, i32* %new_code.addr, align 4, !tbaa !27
  %0 = bitcast i32* %old_diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %new_diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %old_code.addr, align 4, !tbaa !27
  %and = and i32 %2, 65280
  store i32 %and, i32* %old_code.addr, align 4, !tbaa !27
  %3 = load i32, i32* %new_code.addr, align 4, !tbaa !27
  %and1 = and i32 %3, 65280
  store i32 %and1, i32* %new_code.addr, align 4, !tbaa !27
  %4 = load i32, i32* %old_code.addr, align 4, !tbaa !27
  %5 = load i32, i32* %desired.addr, align 4, !tbaa !27
  %xor = xor i32 %4, %5
  store i32 %xor, i32* %old_diff, align 4, !tbaa !27
  %6 = load i32, i32* %new_code.addr, align 4, !tbaa !27
  %7 = load i32, i32* %desired.addr, align 4, !tbaa !27
  %xor2 = xor i32 %6, %7
  store i32 %xor2, i32* %new_diff, align 4, !tbaa !27
  %8 = load i32, i32* %old_diff, align 4, !tbaa !27
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %new_diff, align 4, !tbaa !27
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.5:                                         ; preds = %if.end
  %10 = load i32, i32* %old_diff, align 4, !tbaa !27
  %and6 = and i32 %10, -16385
  store i32 %and6, i32* %old_diff, align 4, !tbaa !27
  %11 = load i32, i32* %new_diff, align 4, !tbaa !27
  %and7 = and i32 %11, -16385
  store i32 %and7, i32* %new_diff, align 4, !tbaa !27
  %12 = load i32, i32* %old_diff, align 4, !tbaa !27
  %cmp8 = icmp eq i32 %12, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.10:                                        ; preds = %if.end.5
  %13 = load i32, i32* %new_diff, align 4, !tbaa !27
  %cmp11 = icmp eq i32 %13, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.13:                                        ; preds = %if.end.10
  %14 = load i32*, i32** %optional.addr, align 8, !tbaa !1
  %cmp14 = icmp ne i32* %14, null
  br i1 %cmp14, label %if.then.15, label %if.end.55

if.then.15:                                       ; preds = %if.end.13
  %15 = bitcast i32** %opt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i32*, i32** %optional.addr, align 8, !tbaa !1
  store i32* %16, i32** %opt, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.51, %if.then.15
  %17 = load i32*, i32** %opt, align 8, !tbaa !1
  %18 = load i32, i32* %17, align 4, !tbaa !27
  %cmp16 = icmp ne i32 %18, 0
  br i1 %cmp16, label %while.body, label %while.end.53

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %old_diff, align 4, !tbaa !27
  %20 = load i32*, i32** %opt, align 8, !tbaa !1
  %21 = load i32, i32* %20, align 4, !tbaa !27
  %neg = xor i32 %21, -1
  %and17 = and i32 %19, %neg
  store i32 %and17, i32* %old_diff, align 4, !tbaa !27
  %22 = load i32, i32* %new_diff, align 4, !tbaa !27
  %23 = load i32*, i32** %opt, align 8, !tbaa !1
  %24 = load i32, i32* %23, align 4, !tbaa !27
  %neg18 = xor i32 %24, -1
  %and19 = and i32 %22, %neg18
  store i32 %and19, i32* %new_diff, align 4, !tbaa !27
  %25 = load i32, i32* %old_diff, align 4, !tbaa !27
  %cmp20 = icmp eq i32 %25, 0
  br i1 %cmp20, label %if.then.21, label %if.end.47

if.then.21:                                       ; preds = %while.body
  %26 = load i32, i32* %new_diff, align 4, !tbaa !27
  %cmp22 = icmp ne i32 %26, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.24:                                        ; preds = %if.then.21
  %27 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %old_code.addr, align 4, !tbaa !27
  %29 = load i32, i32* %new_code.addr, align 4, !tbaa !27
  %xor25 = xor i32 %28, %29
  %and26 = and i32 %xor25, 65280
  store i32 %and26, i32* %diff, align 4, !tbaa !27
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.31, %if.end.24
  %30 = load i32*, i32** %optional.addr, align 8, !tbaa !1
  %31 = load i32*, i32** %opt, align 8, !tbaa !1
  %cmp28 = icmp ult i32* %30, %31
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.27
  %32 = load i32, i32* %diff, align 4, !tbaa !27
  %33 = load i32*, i32** %opt, align 8, !tbaa !1
  %34 = load i32, i32* %33, align 4, !tbaa !27
  %and29 = and i32 %32, %34
  %cmp30 = icmp eq i32 %and29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.27
  %35 = phi i1 [ false, %while.cond.27 ], [ %cmp30, %land.rhs ]
  br i1 %35, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %land.end
  %36 = load i32*, i32** %opt, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %36, i32 -1
  store i32* %incdec.ptr, i32** %opt, align 8, !tbaa !1
  br label %while.cond.27

while.end:                                        ; preds = %land.end
  %37 = load i32, i32* %diff, align 4, !tbaa !27
  %38 = load i32*, i32** %opt, align 8, !tbaa !1
  %39 = load i32, i32* %38, align 4, !tbaa !27
  %and32 = and i32 %37, %39
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.42

if.then.34:                                       ; preds = %while.end
  %40 = load i32, i32* %diff, align 4, !tbaa !27
  %and35 = and i32 %40, 16384
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.then.34
  %41 = load i32, i32* %new_code.addr, align 4, !tbaa !27
  %and39 = and i32 %41, 16384
  %42 = load i32, i32* %desired.addr, align 4, !tbaa !27
  %and40 = and i32 %42, 16384
  %cmp41 = icmp eq i32 %and39, %and40
  %conv = zext i1 %cmp41 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %while.end
  %43 = load i32, i32* %new_code.addr, align 4, !tbaa !27
  %44 = load i32*, i32** %opt, align 8, !tbaa !1
  %45 = load i32, i32* %44, align 4, !tbaa !27
  %and43 = and i32 %43, %45
  %46 = load i32, i32* %desired.addr, align 4, !tbaa !27
  %47 = load i32*, i32** %opt, align 8, !tbaa !1
  %48 = load i32, i32* %47, align 4, !tbaa !27
  %and44 = and i32 %46, %48
  %cmp45 = icmp eq i32 %and43, %and44
  %conv46 = zext i1 %cmp45 to i32
  store i32 %conv46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.end.38, %if.then.37
  %49 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  br label %cleanup.54

if.end.47:                                        ; preds = %while.body
  %50 = load i32, i32* %new_diff, align 4, !tbaa !27
  %cmp48 = icmp eq i32 %50, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.51:                                        ; preds = %if.end.47
  %51 = load i32*, i32** %opt, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %incdec.ptr52, i32** %opt, align 8, !tbaa !1
  br label %while.cond

while.end.53:                                     ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %while.end.53, %if.then.50, %cleanup, %if.then.23
  %52 = bitcast i32** %opt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.56 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.54
  br label %if.end.55

if.end.55:                                        ; preds = %cleanup.cont, %if.end.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

cleanup.56:                                       ; preds = %if.end.55, %cleanup.54, %if.then.12, %if.then.9, %if.then.4, %if.then
  %53 = bitcast i32* %new_diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %old_diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @flag_match(i32 %desired, i32* %optional, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %desired.addr = alloca i32, align 4
  %optional.addr = alloca i32*, align 8
  %code.addr = alloca i32, align 4
  store i32 %desired, i32* %desired.addr, align 4, !tbaa !27
  store i32* %optional, i32** %optional.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !27
  %0 = load i32, i32* %code.addr, align 4, !tbaa !27
  %and = and i32 %0, 65280
  %1 = load i32, i32* %desired.addr, align 4, !tbaa !27
  %xor = xor i32 %and, %1
  %and1 = and i32 %xor, -16385
  store i32 %and1, i32* %code.addr, align 4, !tbaa !27
  %2 = load i32, i32* %code.addr, align 4, !tbaa !27
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %optional.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i32* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %4 = load i32*, i32** %optional.addr, align 8, !tbaa !1
  %5 = load i32, i32* %4, align 4, !tbaa !27
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, i32* %code.addr, align 4, !tbaa !27
  %cmp6 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %code.addr, align 4, !tbaa !27
  %9 = load i32*, i32** %optional.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !27
  %neg = xor i32 %10, -1
  %and7 = and i32 %8, %neg
  store i32 %and7, i32* %code.addr, align 4, !tbaa !27
  %11 = load i32*, i32** %optional.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %optional.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %code.addr, align 4, !tbaa !27
  %cmp8 = icmp eq i32 %12, 0
  %conv = zext i1 %cmp8 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.3, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @eprn_flag_mismatch(%struct.s_eprn_Device* %eprn, i32 %no_match) #0 {
entry:
  %eprn.addr = alloca %struct.s_eprn_Device*, align 8
  %no_match.addr = alloca i32, align 4
  %epref = alloca i8*, align 8
  %optional = alloca i32, align 4
  %of = alloca i32*, align 8
  store %struct.s_eprn_Device* %eprn, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  store i32 %no_match, i32* %no_match.addr, align 4, !tbaa !27
  %0 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %fmr = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %0, i32 0, i32 6
  %1 = load void (%struct.s_eprn_Device*, i32)*, void (%struct.s_eprn_Device*, i32)** %fmr, align 8, !tbaa !76
  %cmp = icmp ne void (%struct.s_eprn_Device*, i32)* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %fmr1 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %2, i32 0, i32 6
  %3 = load void (%struct.s_eprn_Device*, i32)*, void (%struct.s_eprn_Device*, i32)** %fmr1, align 8, !tbaa !76
  %4 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %5 = load i32, i32* %no_match.addr, align 4, !tbaa !27
  call void %3(%struct.s_eprn_Device* %4, i32 %5) #5
  br label %if.end.42

if.else:                                          ; preds = %entry
  %6 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %7, i32 0, i32 20
  %8 = load i32, i32* %CUPS_messages, align 4, !tbaa !77
  %tobool = icmp ne i32 %8, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  store i8* %cond, i8** %epref, align 8, !tbaa !1
  %call = call i8* @gs_program_name() #5
  %call2 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call, i64 %call2) #5
  %9 = load i8*, i8** %epref, align 8, !tbaa !1
  %10 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %cap = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %10, i32 0, i32 0
  %11 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap, align 8, !tbaa !45
  %name = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %11, i32 0, i32 0
  %12 = load i8*, i8** %name, align 8, !tbaa !58
  %call3 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0), i8* %9, i8* %12) #5
  %13 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %desired_flags = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %13, i32 0, i32 4
  %14 = load i32, i32* %desired_flags, align 4, !tbaa !40
  %cmp4 = icmp eq i32 %14, 0
  br i1 %cmp4, label %if.then.5, label %if.else.9

if.then.5:                                        ; preds = %if.else
  %call6 = call i8* @gs_program_name() #5
  %call7 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call6, i64 %call7) #5
  %call8 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0)) #5
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %call10 = call i8* @gs_program_name() #5
  %call11 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call10, i64 %call11) #5
  %call12 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #5
  %15 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %desired_flags13 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %15, i32 0, i32 4
  %16 = load i32, i32* %desired_flags13, align 4, !tbaa !40
  %17 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %flag_desc = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %17, i32 0, i32 3
  %18 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_desc, align 8, !tbaa !78
  call void @print_flags(i32 %16, %struct.ms_Flag* %18) #5
  %call14 = call i8* @gs_program_name() #5
  %call15 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call14, i64 %call15) #5
  %call16 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.5
  %call17 = call i8* @gs_program_name() #5
  %call18 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call17, i64 %call18) #5
  %19 = load i8*, i8** %epref, align 8, !tbaa !1
  %call19 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0), i8* %19) #5
  %20 = bitcast i32* %optional to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 16384, i32* %optional, align 4, !tbaa !27
  %21 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %optional_flags = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %21, i32 0, i32 5
  %22 = load i32*, i32** %optional_flags, align 8, !tbaa !50
  %cmp20 = icmp ne i32* %22, null
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end
  %23 = bitcast i32** %of to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %optional_flags22 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %24, i32 0, i32 5
  %25 = load i32*, i32** %optional_flags22, align 8, !tbaa !50
  store i32* %25, i32** %of, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.21
  %26 = load i32*, i32** %of, align 8, !tbaa !1
  %27 = load i32, i32* %26, align 4, !tbaa !27
  %cmp23 = icmp ne i32 %27, 0
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load i32*, i32** %of, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr, i32** %of, align 8, !tbaa !1
  %29 = load i32, i32* %28, align 4, !tbaa !27
  %30 = load i32, i32* %optional, align 4, !tbaa !27
  %or = or i32 %30, %29
  store i32 %or, i32* %optional, align 4, !tbaa !27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = bitcast i32** %of to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %if.end.24

if.end.24:                                        ; preds = %while.end, %if.end
  %32 = load i32, i32* %optional, align 4, !tbaa !27
  %33 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn.addr, align 8, !tbaa !1
  %flag_desc25 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %33, i32 0, i32 3
  %34 = load %struct.ms_Flag*, %struct.ms_Flag** %flag_desc25, align 8, !tbaa !78
  call void @print_flags(i32 %32, %struct.ms_Flag* %34) #5
  %35 = bitcast i32* %optional to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %call26 = call i8* @gs_program_name() #5
  %call27 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call26, i64 %call27) #5
  %call28 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0)) #5
  %36 = load i32, i32* %no_match.addr, align 4, !tbaa !27
  %tobool29 = icmp ne i32 %36, 0
  br i1 %tobool29, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %if.end.24
  %call31 = call i8* @gs_program_name() #5
  %call32 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call31, i64 %call32) #5
  %call33 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)) #5
  br label %if.end.38

if.else.34:                                       ; preds = %if.end.24
  %call35 = call i8* @gs_program_name() #5
  %call36 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call35, i64 %call36) #5
  %call37 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.34, %if.then.30
  %call39 = call i8* @gs_program_name() #5
  %call40 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call39, i64 %call40) #5
  %call41 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #5
  %37 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.38, %if.then
  ret void
}

declare i32 @gdev_prn_close(%struct.gx_device_s*) #2

declare void @gx_device_set_media_size(%struct.gx_device_s*, double, double) #2

declare i32 @gdev_prn_open(%struct.gx_device_s*) #2

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #2

; Function Attrs: nounwind uwtable
define void @eprn_init_device(%struct.eprn_Device* %dev, %struct.eprn_PrinterDescription* %desc) #0 {
entry:
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %desc.addr = alloca %struct.eprn_PrinterDescription*, align 8
  %eprn = alloca %struct.s_eprn_Device*, align 8
  %j = alloca i32, align 4
  %hres = alloca float, align 4
  %vres = alloca float, align 4
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  store %struct.eprn_PrinterDescription* %desc, %struct.eprn_PrinterDescription** %desc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %1, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn1, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %hres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast float* %vres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %5, i32 0, i32 9
  %6 = load i32, i32* %is_open, align 4, !tbaa !70
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.eprn_Device* %7 to %struct.gx_device_s*
  %call = call i32 @gs_closedevice(%struct.gx_device_s* %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %desc.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.eprn_PrinterDescription* %9, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i32 852, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.eprn_init_device, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  %11 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %desc.addr, align 8, !tbaa !1
  %12 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %cap = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %12, i32 0, i32 0
  store %struct.eprn_PrinterDescription* %11, %struct.eprn_PrinterDescription** %cap, align 8, !tbaa !45
  %13 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %call2 = call i32 @eprn_set_media_data(%struct.eprn_Device* %13, i8* null, i64 0) #5
  %14 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %14, i32 0, i32 7
  store i32 0, i32* %code, align 4, !tbaa !41
  %15 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %leading_edge_set = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %15, i32 0, i32 9
  store i32 0, i32* %leading_edge_set, align 4, !tbaa !42
  %16 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %right_shift = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %16, i32 0, i32 10
  store float 0.000000e+00, float* %right_shift, align 4, !tbaa !75
  %17 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %down_shift = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %17, i32 0, i32 11
  store float 0.000000e+00, float* %down_shift, align 4, !tbaa !74
  %18 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %keep_margins = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %18, i32 0, i32 12
  store i32 0, i32* %keep_margins, align 4, !tbaa !73
  %19 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %soft_tumble = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %19, i32 0, i32 13
  store i32 0, i32* %soft_tumble, align 4, !tbaa !79
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %20 = load i32, i32* %j, align 4, !tbaa !27
  %cmp3 = icmp slt i32 %20, 4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %22, i32 0, i32 25
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %j, align 4, !tbaa !27
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %24, i32 0, i32 14
  store i32 0, i32* %colour_model, align 4, !tbaa !71
  %25 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %25, i32 0, i32 15
  store i32 2, i32* %black_levels, align 4, !tbaa !80
  %26 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %26, i32 0, i32 16
  store i32 0, i32* %non_black_levels, align 4, !tbaa !81
  %27 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %intensity_rendering = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %27, i32 0, i32 17
  store i32 1, i32* %intensity_rendering, align 4, !tbaa !82
  %28 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %28, i32 0, i32 22
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %29 = load float, float* %arrayidx4, align 4, !tbaa !26
  store float %29, float* %hres, align 4, !tbaa !26
  %30 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %HWResolution5 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %30, i32 0, i32 22
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution5, i32 0, i64 1
  %31 = load float, float* %arrayidx6, align 4, !tbaa !26
  store float %31, float* %vres, align 4, !tbaa !26
  %32 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %desc.addr, align 8, !tbaa !1
  %colour_info = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %32, i32 0, i32 4
  %33 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %colour_info, align 8, !tbaa !83
  %34 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %colour_model7 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %34, i32 0, i32 14
  %35 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %black_levels8 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %35, i32 0, i32 15
  %36 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels9 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %36, i32 0, i32 16
  %call10 = call i32 @eprn_check_colour_info(%struct.eprn_ColourInfo* %33, i32* %colour_model7, float* %hres, float* %vres, i32* %black_levels8, i32* %non_black_levels9) #5
  %37 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %37, i32 0, i32 18
  %38 = load i8*, i8** %pagecount_file, align 8, !tbaa !84
  %cmp11 = icmp ne i8* %38, null
  br i1 %cmp11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %for.end
  %39 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !85
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !86
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !86
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !89
  %44 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !85
  %non_gc_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory15, align 8, !tbaa !86
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !86
  %48 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file17 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %48, i32 0, i32 18
  %49 = load i8*, i8** %pagecount_file17, align 8, !tbaa !84
  call void %43(%struct.gs_memory_s* %47, i8* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #5
  %50 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file18 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %50, i32 0, i32 18
  store i8* null, i8** %pagecount_file18, align 8, !tbaa !84
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.12, %for.end
  %51 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %media_position_set = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %51, i32 0, i32 21
  store i32 0, i32* %media_position_set, align 4, !tbaa !90
  %52 = bitcast float* %vres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast float* %hres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  ret void
}

declare i32 @gs_closedevice(%struct.gx_device_s*) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

declare i32 @eprn_set_media_data(%struct.eprn_Device*, i8*, i64) #2

declare i32 @eprn_check_colour_info(%struct.eprn_ColourInfo*, i32*, float*, float*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @eprn_set_media_flags(%struct.eprn_Device* %dev, i32 %desired, i32* %optional) #0 {
entry:
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %desired.addr = alloca i32, align 4
  %optional.addr = alloca i32*, align 8
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  store i32 %desired, i32* %desired.addr, align 4, !tbaa !27
  store i32* %optional, i32** %optional.addr, align 8, !tbaa !1
  %0 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %0, i32 0, i32 68
  %code = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 7
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = load i32, i32* %desired.addr, align 4, !tbaa !27
  %2 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %2, i32 0, i32 68
  %desired_flags = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn1, i32 0, i32 4
  store i32 %1, i32* %desired_flags, align 4, !tbaa !91
  %3 = load i32*, i32** %optional.addr, align 8, !tbaa !1
  %4 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn2 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %4, i32 0, i32 68
  %optional_flags = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn2, i32 0, i32 5
  store i32* %3, i32** %optional_flags, align 8, !tbaa !92
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @eprn_open_device(%struct.gx_device_s* %device) #0 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.gx_device_s*, align 8
  %eprn = alloca %struct.s_eprn_Device*, align 8
  %epref = alloca i8*, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %str = alloca %struct.gs_param_string_s, align 8
  %count = alloca i64, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %0 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.eprn_Device*
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %2, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn1, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %3 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %CUPS_messages = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %4, i32 0, i32 20
  %5 = load i32, i32* %CUPS_messages, align 4, !tbaa !77
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  store i8* %cond, i8** %epref, align 8, !tbaa !1
  %6 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.eprn_Device*
  %call = call i32 @eprn_set_page_layout(%struct.eprn_Device* %8) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %cap = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %9, i32 0, i32 0
  %10 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap, align 8, !tbaa !45
  %colour_info = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %10, i32 0, i32 4
  %11 = load %struct.eprn_ColourInfo*, %struct.eprn_ColourInfo** %colour_info, align 8, !tbaa !83
  %12 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %12, i32 0, i32 14
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %HWResolution2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution2, i32 0, i64 1
  %15 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %15, i32 0, i32 15
  %16 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %16, i32 0, i32 16
  %call4 = call i32 @eprn_check_colour_info(%struct.eprn_ColourInfo* %11, i32* %colour_model, float* %arrayidx, float* %arrayidx3, i32* %black_levels, i32* %non_black_levels) #5
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.30

if.then.6:                                        ; preds = %if.end
  %17 = bitcast %struct.gs_param_string_s* %str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %call7 = call i8* @gs_program_name() #5
  %call8 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call7, i64 %call8) #5
  %18 = load i8*, i8** %epref, align 8, !tbaa !1
  %call9 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* %18) #5
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %str, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !93
  %19 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %colour_model10 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %19, i32 0, i32 14
  %20 = load i32, i32* %colour_model10, align 4, !tbaa !71
  %call11 = call i32 @eprn_get_string(i32 %20, %struct.eprn_StringAndInt* getelementptr inbounds ([0 x %struct.eprn_StringAndInt], [0 x %struct.eprn_StringAndInt]* @eprn_colour_model_list, i32 0, i32 0), %struct.gs_param_string_s* %str) #5
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.6
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i32 952, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.eprn_open_device, i32 0, i32 0)) #7
  unreachable

if.end.14:                                        ; preds = %if.then.6
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !95
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %str, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8, !tbaa !97
  %size15 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %str, i32 0, i32 1
  %24 = load i32, i32* %size15, align 4, !tbaa !93
  %conv = zext i32 %24 to i64
  %mul = mul i64 %conv, 1
  %conv16 = trunc i64 %mul to i32
  %call17 = call i32 @errwrite(%struct.gs_memory_s* %22, i8* %23, i32 %conv16) #5
  %call18 = call i8* @gs_program_name() #5
  %call19 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call18, i64 %call19) #5
  %25 = load i8*, i8** %epref, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %HWResolution20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 22
  %arrayidx21 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution20, i32 0, i64 0
  %27 = load float, float* %arrayidx21, align 4, !tbaa !26
  %conv22 = fpext float %27 to double
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %HWResolution23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 22
  %arrayidx24 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution23, i32 0, i64 1
  %29 = load float, float* %arrayidx24, align 4, !tbaa !26
  %conv25 = fpext float %29 to double
  %30 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %black_levels26 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %30, i32 0, i32 15
  %31 = load i32, i32* %black_levels26, align 4, !tbaa !80
  %32 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels27 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %32, i32 0, i32 16
  %33 = load i32, i32* %non_black_levels27, align 4, !tbaa !81
  %34 = load i8*, i8** %epref, align 8, !tbaa !1
  %35 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %cap28 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %35, i32 0, i32 0
  %36 = load %struct.eprn_PrinterDescription*, %struct.eprn_PrinterDescription** %cap28, align 8, !tbaa !45
  %name = getelementptr inbounds %struct.eprn_PrinterDescription, %struct.eprn_PrinterDescription* %36, i32 0, i32 0
  %37 = load i8*, i8** %name, align 8, !tbaa !58
  %call29 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i32 0, i32 0), i8* %25, double %conv22, double %conv25, i32 %31, i32 %33, i8* %34, i8* %37) #5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %38 = bitcast %struct.gs_param_string_s* %str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %38) #1
  br label %cleanup

if.end.30:                                        ; preds = %if.end
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %40 = load i32, i32* %num_components, align 4, !tbaa !98
  %cmp31 = icmp eq i32 %40, 4
  br i1 %cmp31, label %if.then.33, label %if.else.76

if.then.33:                                       ; preds = %if.end.30
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* null, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !99
  %42 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %intensity_rendering = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %42, i32 0, i32 17
  %43 = load i32, i32* %intensity_rendering, align 4, !tbaa !82
  %cmp34 = icmp eq i32 %43, 2
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.33
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs37, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_cmyk_color_max, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !100
  br label %if.end.51

if.else:                                          ; preds = %if.then.33
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %color_info38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info38, i32 0, i32 5
  %46 = load i32, i32* %max_gray, align 4, !tbaa !101
  %cmp39 = icmp ugt i32 %46, 1
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %color_info41 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info41, i32 0, i32 6
  %48 = load i32, i32* %max_color, align 4, !tbaa !102
  %cmp42 = icmp ugt i32 %48, 1
  br i1 %cmp42, label %if.then.44, label %if.else.47

if.then.44:                                       ; preds = %lor.lhs.false, %if.else
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 42
  %map_cmyk_color46 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs45, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_cmyk_color_flex, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color46, align 8, !tbaa !100
  br label %if.end.50

if.else.47:                                       ; preds = %lor.lhs.false
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 42
  %map_cmyk_color49 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs48, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color49, align 8, !tbaa !100
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.44
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.36
  %51 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %intensity_rendering52 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %51, i32 0, i32 17
  %52 = load i32, i32* %intensity_rendering52, align 4, !tbaa !82
  %cmp53 = icmp eq i32 %52, 2
  br i1 %cmp53, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.end.51
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs56 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 42
  %map_rgb_color57 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs56, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_rgb_color_for_CMY_or_K_max, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color57, align 8, !tbaa !99
  br label %if.end.75

if.else.58:                                       ; preds = %if.end.51
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %color_info59 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 11
  %max_gray60 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info59, i32 0, i32 5
  %55 = load i32, i32* %max_gray60, align 4, !tbaa !101
  %cmp61 = icmp ugt i32 %55, 1
  br i1 %cmp61, label %if.then.68, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.else.58
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %color_info64 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 11
  %max_color65 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info64, i32 0, i32 6
  %57 = load i32, i32* %max_color65, align 4, !tbaa !102
  %cmp66 = icmp ugt i32 %57, 1
  br i1 %cmp66, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %lor.lhs.false.63, %if.else.58
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs69 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 42
  %map_rgb_color70 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs69, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_rgb_color_for_CMY_or_K_flex, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color70, align 8, !tbaa !99
  br label %if.end.74

if.else.71:                                       ; preds = %lor.lhs.false.63
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs72 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %59, i32 0, i32 42
  %map_rgb_color73 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs72, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_rgb_color_for_CMY_or_K, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color73, align 8, !tbaa !99
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.68
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.55
  br label %if.end.128

if.else.76:                                       ; preds = %if.end.30
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs77 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 42
  %map_cmyk_color78 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs77, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* null, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color78, align 8, !tbaa !100
  %61 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %colour_model79 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %61, i32 0, i32 14
  %62 = load i32, i32* %colour_model79, align 4, !tbaa !71
  %cmp80 = icmp eq i32 %62, 1
  br i1 %cmp80, label %if.then.82, label %if.else.102

if.then.82:                                       ; preds = %if.else.76
  %63 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %intensity_rendering83 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %63, i32 0, i32 17
  %64 = load i32, i32* %intensity_rendering83, align 4, !tbaa !82
  %cmp84 = icmp eq i32 %64, 2
  br i1 %cmp84, label %if.then.86, label %if.else.89

if.then.86:                                       ; preds = %if.then.82
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs87 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %65, i32 0, i32 42
  %map_rgb_color88 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs87, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_rgb_color_for_RGB_max, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color88, align 8, !tbaa !99
  br label %if.end.101

if.else.89:                                       ; preds = %if.then.82
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %color_info90 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %66, i32 0, i32 11
  %max_color91 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info90, i32 0, i32 6
  %67 = load i32, i32* %max_color91, align 4, !tbaa !102
  %cmp92 = icmp ugt i32 %67, 1
  br i1 %cmp92, label %if.then.94, label %if.else.97

if.then.94:                                       ; preds = %if.else.89
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs95 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 42
  %map_rgb_color96 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs95, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_rgb_color_for_RGB_flex, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color96, align 8, !tbaa !99
  br label %if.end.100

if.else.97:                                       ; preds = %if.else.89
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs98 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %69, i32 0, i32 42
  %map_rgb_color99 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs98, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_rgb_color_for_RGB, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color99, align 8, !tbaa !99
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.94
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.86
  br label %if.end.127

if.else.102:                                      ; preds = %if.else.76
  %70 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %intensity_rendering103 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %70, i32 0, i32 17
  %71 = load i32, i32* %intensity_rendering103, align 4, !tbaa !82
  %cmp104 = icmp eq i32 %71, 2
  br i1 %cmp104, label %if.then.106, label %if.else.109

if.then.106:                                      ; preds = %if.else.102
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs107 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %72, i32 0, i32 42
  %map_rgb_color108 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs107, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_rgb_color_for_CMY_or_K_max, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color108, align 8, !tbaa !99
  br label %if.end.126

if.else.109:                                      ; preds = %if.else.102
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %color_info110 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 11
  %max_gray111 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info110, i32 0, i32 5
  %74 = load i32, i32* %max_gray111, align 4, !tbaa !101
  %cmp112 = icmp ugt i32 %74, 1
  br i1 %cmp112, label %if.then.119, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %if.else.109
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %color_info115 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %75, i32 0, i32 11
  %max_color116 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info115, i32 0, i32 6
  %76 = load i32, i32* %max_color116, align 4, !tbaa !102
  %cmp117 = icmp ugt i32 %76, 1
  br i1 %cmp117, label %if.then.119, label %if.else.122

if.then.119:                                      ; preds = %lor.lhs.false.114, %if.else.109
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs120 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %77, i32 0, i32 42
  %map_rgb_color121 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs120, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_rgb_color_for_CMY_or_K_flex, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color121, align 8, !tbaa !99
  br label %if.end.125

if.else.122:                                      ; preds = %lor.lhs.false.114
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %procs123 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 42
  %map_rgb_color124 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs123, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @eprn_map_rgb_color_for_CMY_or_K, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color124, align 8, !tbaa !99
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.122, %if.then.119
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.106
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.101
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.75
  %79 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %black_levels129 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %79, i32 0, i32 15
  %80 = load i32, i32* %black_levels129, align 4, !tbaa !80
  %call130 = call i32 @eprn_bits_for_levels(i32 %80) #5
  %81 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels131 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %81, i32 0, i32 16
  %82 = load i32, i32* %non_black_levels131, align 4, !tbaa !81
  %call132 = call i32 @eprn_bits_for_levels(i32 %82) #5
  %mul133 = mul i32 3, %call132
  %add = add i32 %call130, %mul133
  %83 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %output_planes = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %83, i32 0, i32 27
  store i32 %add, i32* %output_planes, align 4, !tbaa !103
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  call void @gx_device_decache_colors(%struct.gx_device_s* %84) #5
  %85 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %85, i32 0, i32 18
  %86 = load i8*, i8** %pagecount_file, align 8, !tbaa !84
  %cmp134 = icmp ne i8* %86, null
  br i1 %cmp134, label %if.then.136, label %if.end.155

if.then.136:                                      ; preds = %if.end.128
  %87 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file137 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %88, i32 0, i32 18
  %89 = load i8*, i8** %pagecount_file137, align 8, !tbaa !84
  %call138 = call i32 @pcf_getcount(i8* %89, i64* %count) #5
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %if.then.136
  %90 = load i64, i64* %count, align 8, !tbaa !104
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %91, i32 0, i32 26
  store i64 %90, i64* %PageCount, align 8, !tbaa !105
  br label %if.end.154

if.else.142:                                      ; preds = %if.then.136
  %call143 = call i8* @gs_program_name() #5
  %call144 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call143, i64 %call144) #5
  %call145 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.15, i32 0, i32 0)) #5
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory146 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %92, i32 0, i32 3
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory146, align 8, !tbaa !95
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %93, i32 0, i32 3
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !86
  %non_gc_memory147 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory147, align 8, !tbaa !86
  %procs148 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs148, i32 0, i32 2
  %96 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !89
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory149 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory149, align 8, !tbaa !95
  %non_gc_memory150 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 3
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory150, align 8, !tbaa !86
  %non_gc_memory151 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %99, i32 0, i32 3
  %100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory151, align 8, !tbaa !86
  %101 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file152 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %101, i32 0, i32 18
  %102 = load i8*, i8** %pagecount_file152, align 8, !tbaa !84
  call void %96(%struct.gs_memory_s* %100, i8* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #5
  %103 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file153 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %103, i32 0, i32 18
  store i8* null, i8** %pagecount_file153, align 8, !tbaa !84
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.142, %if.then.141
  %104 = bitcast i64* %count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.128
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %call156 = call i32 @gdev_prn_open(%struct.gx_device_s* %105) #5
  store i32 %call156, i32* %rc, align 4, !tbaa !27
  %cmp157 = icmp ne i32 %call156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.155
  %106 = load i32, i32* %rc, align 4, !tbaa !27
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.160:                                       ; preds = %if.end.155
  %107 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %scan_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %107, i32 0, i32 24
  %str161 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %scan_line, i32 0, i32 0
  %108 = load i8*, i8** %str161, align 8, !tbaa !106
  %cmp162 = icmp ne i8* %108, null
  br i1 %cmp162, label %if.then.164, label %if.end.175

if.then.164:                                      ; preds = %if.end.160
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory165 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %109, i32 0, i32 3
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory165, align 8, !tbaa !95
  %non_gc_memory166 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %110, i32 0, i32 3
  %111 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory166, align 8, !tbaa !86
  %non_gc_memory167 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %111, i32 0, i32 3
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory167, align 8, !tbaa !86
  %procs168 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %112, i32 0, i32 1
  %free_object169 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs168, i32 0, i32 2
  %113 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object169, align 8, !tbaa !89
  %114 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory170 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %114, i32 0, i32 3
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory170, align 8, !tbaa !95
  %non_gc_memory171 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %115, i32 0, i32 3
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory171, align 8, !tbaa !86
  %non_gc_memory172 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %116, i32 0, i32 3
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory172, align 8, !tbaa !86
  %118 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %scan_line173 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %118, i32 0, i32 24
  %str174 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %scan_line173, i32 0, i32 0
  %119 = load i8*, i8** %str174, align 8, !tbaa !106
  call void %113(%struct.gs_memory_s* %117, i8* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #5
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.164, %if.end.160
  %120 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_scan_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %120, i32 0, i32 25
  %str176 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %next_scan_line, i32 0, i32 0
  %121 = load i8*, i8** %str176, align 8, !tbaa !107
  %cmp177 = icmp ne i8* %121, null
  br i1 %cmp177, label %if.then.179, label %if.end.192

if.then.179:                                      ; preds = %if.end.175
  %122 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory180 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %122, i32 0, i32 3
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory180, align 8, !tbaa !95
  %non_gc_memory181 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %123, i32 0, i32 3
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory181, align 8, !tbaa !86
  %non_gc_memory182 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %124, i32 0, i32 3
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory182, align 8, !tbaa !86
  %procs183 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %125, i32 0, i32 1
  %free_object184 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs183, i32 0, i32 2
  %126 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object184, align 8, !tbaa !89
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory185 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %127, i32 0, i32 3
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory185, align 8, !tbaa !95
  %non_gc_memory186 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %128, i32 0, i32 3
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory186, align 8, !tbaa !86
  %non_gc_memory187 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %129, i32 0, i32 3
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory187, align 8, !tbaa !86
  %131 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_scan_line188 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %131, i32 0, i32 25
  %str189 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %next_scan_line188, i32 0, i32 0
  %132 = load i8*, i8** %str189, align 8, !tbaa !107
  call void %126(%struct.gs_memory_s* %130, i8* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #5
  %133 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_scan_line190 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %133, i32 0, i32 25
  %str191 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %next_scan_line190, i32 0, i32 0
  store i8* null, i8** %str191, align 8, !tbaa !107
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.179, %if.end.175
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %135 = bitcast %struct.gx_device_s* %134 to %struct.gx_device_printer_s*
  %136 = bitcast %struct.gx_device_printer_s* %135 to %struct.gx_device_s*
  %call193 = call i32 @gx_device_raster(%struct.gx_device_s* %136, i32 0) #5
  %137 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %octets_per_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %137, i32 0, i32 26
  store i32 %call193, i32* %octets_per_line, align 4, !tbaa !108
  %138 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory194 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %138, i32 0, i32 3
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory194, align 8, !tbaa !95
  %non_gc_memory195 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %139, i32 0, i32 3
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory195, align 8, !tbaa !86
  %non_gc_memory196 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %140, i32 0, i32 3
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory196, align 8, !tbaa !86
  %procs197 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %141, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs197, i32 0, i32 10
  %142 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !109
  %143 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory198 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %143, i32 0, i32 3
  %144 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory198, align 8, !tbaa !95
  %non_gc_memory199 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %144, i32 0, i32 3
  %145 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory199, align 8, !tbaa !86
  %non_gc_memory200 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %145, i32 0, i32 3
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory200, align 8, !tbaa !86
  %147 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %octets_per_line201 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %147, i32 0, i32 26
  %148 = load i32, i32* %octets_per_line201, align 4, !tbaa !108
  %call202 = call i8* %142(%struct.gs_memory_s* %146, i32 %148, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #5
  %149 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %scan_line203 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %149, i32 0, i32 24
  %str204 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %scan_line203, i32 0, i32 0
  store i8* %call202, i8** %str204, align 8, !tbaa !106
  %150 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %intensity_rendering205 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %150, i32 0, i32 17
  %151 = load i32, i32* %intensity_rendering205, align 4, !tbaa !82
  %cmp206 = icmp eq i32 %151, 2
  br i1 %cmp206, label %if.then.208, label %if.end.243

if.then.208:                                      ; preds = %if.end.192
  %152 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory209 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %152, i32 0, i32 3
  %153 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory209, align 8, !tbaa !95
  %non_gc_memory210 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %153, i32 0, i32 3
  %154 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory210, align 8, !tbaa !86
  %non_gc_memory211 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %154, i32 0, i32 3
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory211, align 8, !tbaa !86
  %procs212 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %155, i32 0, i32 1
  %alloc_byte_array213 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs212, i32 0, i32 10
  %156 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array213, align 8, !tbaa !109
  %157 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory214 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %157, i32 0, i32 3
  %158 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory214, align 8, !tbaa !95
  %non_gc_memory215 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %158, i32 0, i32 3
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory215, align 8, !tbaa !86
  %non_gc_memory216 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %159, i32 0, i32 3
  %160 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory216, align 8, !tbaa !86
  %161 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %octets_per_line217 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %161, i32 0, i32 26
  %162 = load i32, i32* %octets_per_line217, align 4, !tbaa !108
  %call218 = call i8* %156(%struct.gs_memory_s* %160, i32 %162, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #5
  %163 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_scan_line219 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %163, i32 0, i32 25
  %str220 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %next_scan_line219, i32 0, i32 0
  store i8* %call218, i8** %str220, align 8, !tbaa !107
  %164 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_scan_line221 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %164, i32 0, i32 25
  %str222 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %next_scan_line221, i32 0, i32 0
  %165 = load i8*, i8** %str222, align 8, !tbaa !107
  %cmp223 = icmp eq i8* %165, null
  br i1 %cmp223, label %land.lhs.true, label %if.end.242

land.lhs.true:                                    ; preds = %if.then.208
  %166 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %scan_line225 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %166, i32 0, i32 24
  %str226 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %scan_line225, i32 0, i32 0
  %167 = load i8*, i8** %str226, align 8, !tbaa !106
  %cmp227 = icmp ne i8* %167, null
  br i1 %cmp227, label %if.then.229, label %if.end.242

if.then.229:                                      ; preds = %land.lhs.true
  %168 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory230 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %168, i32 0, i32 3
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory230, align 8, !tbaa !95
  %non_gc_memory231 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %169, i32 0, i32 3
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory231, align 8, !tbaa !86
  %non_gc_memory232 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %170, i32 0, i32 3
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory232, align 8, !tbaa !86
  %procs233 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %171, i32 0, i32 1
  %free_object234 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs233, i32 0, i32 2
  %172 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object234, align 8, !tbaa !89
  %173 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory235 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %173, i32 0, i32 3
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory235, align 8, !tbaa !95
  %non_gc_memory236 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %174, i32 0, i32 3
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory236, align 8, !tbaa !86
  %non_gc_memory237 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %175, i32 0, i32 3
  %176 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory237, align 8, !tbaa !86
  %177 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %scan_line238 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %177, i32 0, i32 24
  %str239 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %scan_line238, i32 0, i32 0
  %178 = load i8*, i8** %str239, align 8, !tbaa !106
  call void %172(%struct.gs_memory_s* %176, i8* %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #5
  %179 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %scan_line240 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %179, i32 0, i32 24
  %str241 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %scan_line240, i32 0, i32 0
  store i8* null, i8** %str241, align 8, !tbaa !106
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.229, %land.lhs.true, %if.then.208
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.192
  %180 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %scan_line244 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %180, i32 0, i32 24
  %str245 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %scan_line244, i32 0, i32 0
  %181 = load i8*, i8** %str245, align 8, !tbaa !106
  %cmp246 = icmp eq i8* %181, null
  br i1 %cmp246, label %if.then.248, label %if.end.252

if.then.248:                                      ; preds = %if.end.243
  %call249 = call i8* @gs_program_name() #5
  %call250 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call249, i64 %call250) #5
  %182 = load i8*, i8** %epref, align 8, !tbaa !1
  %call251 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.17, i32 0, i32 0), i8* %182) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.252:                                       ; preds = %if.end.243
  %183 = load i32, i32* %rc, align 4, !tbaa !27
  store i32 %183, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.252, %if.then.248, %if.then.159, %if.end.14, %if.then
  %184 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i8** %epref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = load i32, i32* %retval
  ret i32 %187
}

declare i32 @eprn_get_string(i32, %struct.eprn_StringAndInt*, %struct.gs_param_string_s*) #2

declare i32 @errwrite(%struct.gs_memory_s*, i8*, i32) #2

declare i64 @eprn_map_cmyk_color_max(%struct.gx_device_s*, i16*) #2

declare i64 @eprn_map_cmyk_color_flex(%struct.gx_device_s*, i16*) #2

declare i64 @eprn_map_cmyk_color(%struct.gx_device_s*, i16*) #2

declare i64 @eprn_map_rgb_color_for_CMY_or_K_max(%struct.gx_device_s*, i16*) #2

declare i64 @eprn_map_rgb_color_for_CMY_or_K_flex(%struct.gx_device_s*, i16*) #2

declare i64 @eprn_map_rgb_color_for_CMY_or_K(%struct.gx_device_s*, i16*) #2

declare i64 @eprn_map_rgb_color_for_RGB_max(%struct.gx_device_s*, i16*) #2

declare i64 @eprn_map_rgb_color_for_RGB_flex(%struct.gx_device_s*, i16*) #2

declare i64 @eprn_map_rgb_color_for_RGB(%struct.gx_device_s*, i16*) #2

declare i32 @eprn_bits_for_levels(i32) #2

declare void @gx_device_decache_colors(%struct.gx_device_s*) #2

declare i32 @pcf_getcount(i8*, i64*) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @eprn_close_device(%struct.gx_device_s* %device) #0 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %eprn = alloca %struct.s_eprn_Device*, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %0 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.eprn_Device*
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %2, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn1, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %3 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %scan_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %3, i32 0, i32 24
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %scan_line, i32 0, i32 0
  %4 = load i8*, i8** %str, align 8, !tbaa !106
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !95
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !86
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !86
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !89
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !95
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !86
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !86
  %14 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %scan_line6 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %14, i32 0, i32 24
  %str7 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %scan_line6, i32 0, i32 0
  %15 = load i8*, i8** %str7, align 8, !tbaa !106
  call void %9(%struct.gs_memory_s* %13, i8* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #5
  %16 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %scan_line8 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %16, i32 0, i32 24
  %str9 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %scan_line8, i32 0, i32 0
  store i8* null, i8** %str9, align 8, !tbaa !106
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_scan_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %17, i32 0, i32 25
  %str10 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %next_scan_line, i32 0, i32 0
  %18 = load i8*, i8** %str10, align 8, !tbaa !107
  %cmp11 = icmp ne i8* %18, null
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %if.end
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !95
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !86
  %non_gc_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory15, align 8, !tbaa !86
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object17, align 8, !tbaa !89
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !95
  %non_gc_memory19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory19, align 8, !tbaa !86
  %non_gc_memory20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory20, align 8, !tbaa !86
  %28 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_scan_line21 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %28, i32 0, i32 25
  %str22 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %next_scan_line21, i32 0, i32 0
  %29 = load i8*, i8** %str22, align 8, !tbaa !107
  call void %23(%struct.gs_memory_s* %27, i8* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #5
  %30 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_scan_line23 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %30, i32 0, i32 25
  %str24 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %next_scan_line23, i32 0, i32 0
  store i8* null, i8** %str24, align 8, !tbaa !107
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.12, %if.end
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_close(%struct.gx_device_s* %31) #5
  %32 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @eprn_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %eprn = alloca %struct.s_eprn_Device*, align 8
  %rc = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !27
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !27
  %0 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.eprn_Device*
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %2, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn1, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %3 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_y = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %4, i32 0, i32 28
  store i32 0, i32* %next_y, align 4, !tbaa !110
  %5 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %intensity_rendering = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %5, i32 0, i32 17
  %6 = load i32, i32* %intensity_rendering, align 4, !tbaa !82
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.eprn_Device*
  %9 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_scan_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %9, i32 0, i32 25
  %call = call i32 @eprn_fetch_scan_line(%struct.eprn_Device* %8, %struct.eprn_OctetString* %next_scan_line) #5
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %next_y4 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %10, i32 0, i32 28
  %11 = load i32, i32* %next_y4, align 4, !tbaa !110
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %next_y4, align 4, !tbaa !110
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = load i32, i32* %num_copies.addr, align 4, !tbaa !27
  %14 = load i32, i32* %flush.addr, align 4, !tbaa !27
  %call6 = call i32 @gdev_prn_output_page(%struct.gx_device_s* %12, i32 %13, i32 %14) #5
  store i32 %call6, i32* %rc, align 4, !tbaa !27
  %15 = load i32, i32* %rc, align 4, !tbaa !27
  %cmp7 = icmp eq i32 %15, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.5
  %16 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %CUPS_accounting = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %16, i32 0, i32 19
  %17 = load i32, i32* %CUPS_accounting, align 4, !tbaa !111
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %land.lhs.true
  %call9 = call i8* @gs_program_name() #5
  %call10 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call9, i64 %call10) #5
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ShowpageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 27
  %19 = load i64, i64* %ShowpageCount, align 8, !tbaa !112
  %20 = load i32, i32* %num_copies.addr, align 4, !tbaa !27
  %call11 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i64 %19, i32 %20) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %land.lhs.true, %if.end.5
  %21 = load i32, i32* %rc, align 4, !tbaa !27
  %cmp13 = icmp eq i32 %21, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.33

land.lhs.true.14:                                 ; preds = %if.end.12
  %22 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %22, i32 0, i32 18
  %23 = load i8*, i8** %pagecount_file, align 8, !tbaa !84
  %cmp15 = icmp ne i8* %23, null
  br i1 %cmp15, label %if.then.16, label %if.end.33

if.then.16:                                       ; preds = %land.lhs.true.14
  %24 = load i32, i32* %num_copies.addr, align 4, !tbaa !27
  %cmp17 = icmp sgt i32 %24, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i32 1166, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.eprn_output_page, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %25, %cond.true
  %26 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file18 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %26, i32 0, i32 18
  %27 = load i8*, i8** %pagecount_file18, align 8, !tbaa !84
  %28 = load i32, i32* %num_copies.addr, align 4, !tbaa !27
  %conv = sext i32 %28 to i64
  %call19 = call i32 @pcf_inccount(i8* %27, i64 %conv) #5
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.32

if.then.22:                                       ; preds = %cond.end
  %call23 = call i8* @gs_program_name() #5
  %call24 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call23, i64 %call24) #5
  %call25 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.15, i32 0, i32 0)) #5
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !95
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !86
  %non_gc_memory26 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory26, align 8, !tbaa !86
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !89
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !95
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !86
  %non_gc_memory29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory29, align 8, !tbaa !86
  %38 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file30 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %38, i32 0, i32 18
  %39 = load i8*, i8** %pagecount_file30, align 8, !tbaa !84
  call void %33(%struct.gs_memory_s* %37, i8* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #5
  %40 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %pagecount_file31 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %40, i32 0, i32 18
  store i8* null, i8** %pagecount_file31, align 8, !tbaa !84
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.22, %cond.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true.14, %if.end.12
  %41 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %soft_tumble = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %41, i32 0, i32 13
  %42 = load i32, i32* %soft_tumble, align 4, !tbaa !79
  %tobool34 = icmp ne i32 %42, 0
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.33
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !95
  %non_gc_memory37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory37, align 8, !tbaa !86
  call void @eprn_forget_defaultmatrix(%struct.gs_memory_s* %45) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.33
  %46 = load i32, i32* %rc, align 4, !tbaa !27
  %47 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  ret i32 %46
}

declare i32 @eprn_fetch_scan_line(%struct.eprn_Device*, %struct.eprn_OctetString*) #2

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #2

declare i32 @pcf_inccount(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @eprn_forget_defaultmatrix(%struct.gs_memory_s* %memory) #0 {
entry:
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %0) #5
  %i_ctx_p = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %call, i32 0, i32 14
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !113
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 0
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !118
  %call1 = call i32 @gs_setdefaultmatrix(%struct.gs_state_s* %2, %struct.gs_matrix_s* null) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_flags(i32 %flags, %struct.ms_Flag* %user_flags) #0 {
entry:
  %flags.addr = alloca i32, align 4
  %user_flags.addr = alloca %struct.ms_Flag*, align 8
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !27
  store %struct.ms_Flag* %user_flags, %struct.ms_Flag** %user_flags.addr, align 8, !tbaa !1
  %0 = load %struct.ms_Flag*, %struct.ms_Flag** %user_flags.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.ms_Flag* %0, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load %struct.ms_Flag*, %struct.ms_Flag** %user_flags.addr, align 8, !tbaa !1
  %code = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %1, i32 0, i32 0
  %2 = load i32, i32* %code, align 4, !tbaa !127
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.ms_Flag*, %struct.ms_Flag** %user_flags.addr, align 8, !tbaa !1
  %code2 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %3, i32 0, i32 0
  %4 = load i32, i32* %code2, align 4, !tbaa !127
  %5 = load i32, i32* %flags.addr, align 4, !tbaa !27
  %and = and i32 %4, %5
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.body
  %call = call i8* @gs_program_name() #5
  %call4 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call, i64 %call4) #5
  %6 = load %struct.ms_Flag*, %struct.ms_Flag** %user_flags.addr, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8, !tbaa !129
  %call5 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* %7) #5
  %8 = load %struct.ms_Flag*, %struct.ms_Flag** %user_flags.addr, align 8, !tbaa !1
  %code6 = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %8, i32 0, i32 0
  %9 = load i32, i32* %code6, align 4, !tbaa !127
  %neg = xor i32 %9, -1
  %10 = load i32, i32* %flags.addr, align 4, !tbaa !27
  %and7 = and i32 %10, %neg
  store i32 %and7, i32* %flags.addr, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.body
  %11 = load %struct.ms_Flag*, %struct.ms_Flag** %user_flags.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ms_Flag, %struct.ms_Flag* %11, i32 1
  store %struct.ms_Flag* %incdec.ptr, %struct.ms_Flag** %user_flags.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %entry
  %12 = load i32, i32* %flags.addr, align 4, !tbaa !27
  %and9 = and i32 %12, 1024
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  %call12 = call i8* @gs_program_name() #5
  %call13 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call12, i64 %call13) #5
  %call14 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.8
  %13 = load i32, i32* %flags.addr, align 4, !tbaa !27
  %and16 = and i32 %13, 2048
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.15
  %call19 = call i8* @gs_program_name() #5
  %call20 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call19, i64 %call20) #5
  %call21 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)) #5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end.15
  %14 = load i32, i32* %flags.addr, align 4, !tbaa !27
  %and23 = and i32 %14, 8192
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.22
  %call26 = call i8* @gs_program_name() #5
  %call27 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call26, i64 %call27) #5
  %call28 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.22
  %15 = load i32, i32* %flags.addr, align 4, !tbaa !27
  %and30 = and i32 %15, -11265
  store i32 %and30, i32* %flags.addr, align 4, !tbaa !27
  %16 = load i32, i32* %flags.addr, align 4, !tbaa !27
  %and31 = and i32 %16, -16385
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.29
  %call34 = call i8* @gs_program_name() #5
  %call35 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call34, i64 %call35) #5
  %17 = load i32, i32* %flags.addr, align 4, !tbaa !27
  %and36 = and i32 %17, -16385
  %call37 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %and36) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %if.end.29
  %18 = load i32, i32* %flags.addr, align 4, !tbaa !27
  %and39 = and i32 %18, 16384
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.38
  %call42 = call i8* @gs_program_name() #5
  %call43 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call42, i64 %call43) #5
  %call44 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0)) #5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %if.end.38
  ret void
}

declare i32 @gs_setdefaultmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #2

declare %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }
attributes #7 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 18528}
!6 = !{!"", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !22, i64 18472}
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
!22 = !{!"s_eprn_Device", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !2, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !23, i64 68, !23, i64 72, !7, i64 76, !7, i64 80, !3, i64 84, !7, i64 88, !7, i64 92, !3, i64 96, !2, i64 104, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !24, i64 136, !24, i64 152, !7, i64 168, !7, i64 172, !7, i64 176}
!23 = !{!"float", !3, i64 0}
!24 = !{!"", !2, i64 0, !7, i64 8}
!25 = !{!6, !7, i64 18532}
!26 = !{!23, !23, i64 0}
!27 = !{!7, !7, i64 0}
!28 = !{!6, !7, i64 18552}
!29 = !{!6, !9, i64 936}
!30 = !{!31, !23, i64 0}
!31 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!32 = !{!31, !23, i64 4}
!33 = !{!31, !23, i64 8}
!34 = !{!31, !23, i64 12}
!35 = !{!31, !23, i64 16}
!36 = !{!31, !23, i64 20}
!37 = !{!6, !23, i64 18540}
!38 = !{!6, !23, i64 18544}
!39 = !{!6, !7, i64 18588}
!40 = !{!22, !7, i64 32}
!41 = !{!22, !7, i64 56}
!42 = !{!22, !7, i64 64}
!43 = !{!22, !7, i64 60}
!44 = !{!22, !2, i64 16}
!45 = !{!22, !2, i64 0}
!46 = !{!47, !2, i64 8}
!47 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !23, i64 24, !2, i64 32}
!48 = !{!49, !7, i64 0}
!49 = !{!"", !7, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16}
!50 = !{!22, !2, i64 40}
!51 = !{!47, !2, i64 16}
!52 = !{!53, !23, i64 24}
!53 = !{!"", !7, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32}
!54 = !{!53, !23, i64 20}
!55 = !{!53, !23, i64 28}
!56 = !{!53, !23, i64 32}
!57 = !{!53, !7, i64 0}
!58 = !{!47, !2, i64 0}
!59 = !{!22, !2, i64 8}
!60 = !{!53, !23, i64 4}
!61 = !{!53, !23, i64 8}
!62 = !{!53, !23, i64 12}
!63 = !{!53, !23, i64 16}
!64 = !{!49, !23, i64 4}
!65 = !{!49, !23, i64 8}
!66 = !{!49, !23, i64 12}
!67 = !{!49, !23, i64 16}
!68 = !{!6, !7, i64 832}
!69 = !{!6, !7, i64 836}
!70 = !{!6, !7, i64 84}
!71 = !{!22, !3, i64 84}
!72 = !{!47, !23, i64 24}
!73 = !{!22, !7, i64 76}
!74 = !{!22, !23, i64 72}
!75 = !{!22, !23, i64 68}
!76 = !{!22, !2, i64 48}
!77 = !{!22, !7, i64 116}
!78 = !{!22, !2, i64 24}
!79 = !{!22, !7, i64 80}
!80 = !{!22, !7, i64 88}
!81 = !{!22, !7, i64 92}
!82 = !{!22, !3, i64 96}
!83 = !{!47, !2, i64 32}
!84 = !{!22, !2, i64 104}
!85 = !{!6, !2, i64 24}
!86 = !{!87, !2, i64 200}
!87 = !{!"gs_memory_s", !2, i64 0, !88, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!88 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!89 = !{!87, !2, i64 24}
!90 = !{!22, !7, i64 120}
!91 = !{!6, !7, i64 18504}
!92 = !{!6, !2, i64 18512}
!93 = !{!94, !7, i64 8}
!94 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!95 = !{!96, !2, i64 24}
!96 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!97 = !{!94, !2, i64 0}
!98 = !{!96, !7, i64 100}
!99 = !{!96, !2, i64 1184}
!100 = !{!96, !2, i64 1264}
!101 = !{!96, !7, i64 112}
!102 = !{!96, !7, i64 116}
!103 = !{!22, !7, i64 172}
!104 = !{!9, !9, i64 0}
!105 = !{!96, !9, i64 928}
!106 = !{!22, !2, i64 136}
!107 = !{!22, !2, i64 152}
!108 = !{!22, !7, i64 168}
!109 = !{!87, !2, i64 88}
!110 = !{!22, !7, i64 176}
!111 = !{!22, !7, i64 112}
!112 = !{!96, !9, i64 936}
!113 = !{!114, !2, i64 160}
!114 = !{!"gs_main_instance_s", !2, i64 0, !7, i64 8, !9, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !115, i64 48, !3, i64 104, !2, i64 120, !116, i64 128, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !7, i64 176}
!115 = !{!"gs_file_path_s", !116, i64 0, !116, i64 16, !2, i64 32, !2, i64 40, !7, i64 48}
!116 = !{!"ref_s", !117, i64 0, !3, i64 8}
!117 = !{!"tas_s", !11, i64 0, !11, i64 2, !7, i64 4}
!118 = !{!119, !2, i64 0}
!119 = !{!"gs_context_state_s", !2, i64 0, !120, i64 8, !7, i64 80, !116, i64 88, !116, i64 104, !9, i64 120, !9, i64 128, !9, i64 136, !7, i64 144, !7, i64 148, !116, i64 152, !116, i64 168, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !122, i64 264, !122, i64 304, !2, i64 344, !7, i64 352, !2, i64 360, !123, i64 368, !125, i64 520, !126, i64 624, !2, i64 720}
!120 = !{!"gs_dual_memory_s", !2, i64 0, !121, i64 8, !7, i64 48, !2, i64 56, !7, i64 64, !7, i64 68}
!121 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!122 = !{!"op_array_table_s", !116, i64 0, !2, i64 16, !7, i64 24, !7, i64 28, !7, i64 32}
!123 = !{!"dict_stack_s", !124, i64 0, !7, i64 96, !7, i64 100, !7, i64 104, !2, i64 112, !7, i64 120, !2, i64 128, !116, i64 136}
!124 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !116, i64 24, !7, i64 40, !7, i64 44, !116, i64 48, !7, i64 64, !7, i64 68, !7, i64 72, !2, i64 80, !2, i64 88}
!125 = !{!"exec_stack_s", !124, i64 0, !2, i64 96}
!126 = !{!"op_stack_s", !124, i64 0}
!127 = !{!128, !7, i64 0}
!128 = !{!"", !7, i64 0, !2, i64 8}
!129 = !{!128, !2, i64 8}
