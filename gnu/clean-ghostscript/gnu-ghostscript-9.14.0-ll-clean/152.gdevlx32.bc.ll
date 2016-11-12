; ModuleID = './gdevlx32.bc'
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
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { {}*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.pagedata_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct._IO_FILE*, %struct.lxm_device_s*, i32, i32, i32, i32, i32, [24 x i8], i32, i32, i32 }
%struct.lxm_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [2 x [2 x i32]], %struct.pagedata_s }

@lxm3200_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @lxm3200_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @lxm3200_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @lxm3200_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lxm3200_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lxm3200_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"lxm3200\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_lxm3200_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [2 x [2 x i32]], %struct.pagedata_s } { i32 18752, %struct.gx_device_procs_s* @lxm3200_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 1, i32 0, i32 2, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float -0.000000e+00, float -0.000000e+00], [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lxm3200_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 16, i32 8, i32 16, i32 16, i32 0, i32 1, i32 0, i32 0, i32 0, i32 100, [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [2 x [2 x i32]] zeroinitializer, %struct.pagedata_s zeroinitializer }, align 8
@lxm3200_open.a4_margins = internal constant [4 x float] [float 0x3FC147AE20000000, float 0x3FC99999A0000000, float 0x3FC147AE20000000, float 0x3FB1EB8520000000], align 16
@lxm3200_open.letter_margins = internal constant [4 x float] [float 2.500000e-01, float 0x3FC99999A0000000, float 2.500000e-01, float 0x3FB1EB8520000000], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"algnA\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"algnB\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"algnC\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"algnD\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"bidir\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"numpass\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"z31m\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"lxm3200_print_page(scanbuf)\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"lxm3200_print_page(outdata)\00", align 1
@z12_init_sequence = internal global [40 x i8] c"\1B*\80\00\00\00\00\00\1B3\00\00\00\00\003\1Bc\00\01@\02\0D\B3\1B0\80\0C\01\00\00\BD\1B!\00\00\00\00\00!", align 16
@init_sequence = internal global [32 x i8] c"\1B*\80\00\00\00\00\00\1B3\00\00\00\00\003\1B0\80\0C\02\00\00\BE\1B!\00\00\00\00\00!", align 16
@.str.13 = private unnamed_addr constant [31 x i8] c"lxm3200:freeresources(scanbuf)\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"lxm3200:freeresources(outdata)\00", align 1
@colmask = internal global [2 x [3 x i8]] [[3 x i8] c"\10 @", [3 x i8] c"\02\01\04"], align 1
@bits = internal global [8 x i8] c"\80@ \10\08\04\02\01", align 1
@ibits = internal global [8 x i8] c"\7F\BF\DF\EF\F7\FB\FD\FE", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lxm3200_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %dev = alloca %struct.lxm_device_s*, align 8
  %gendata = alloca %struct.pagedata_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.lxm_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.lxm_device_s*
  store %struct.lxm_device_s* %2, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %3 = bitcast %struct.pagedata_s** %gendata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %4, i32 0, i32 82
  store %struct.pagedata_s* %data, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %5 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %6 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %6, i32 0, i32 29
  store %struct.lxm_device_s* %5, %struct.lxm_device_s** %dev1, align 8, !tbaa !5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %8 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %8, i32 0, i32 28
  store %struct._IO_FILE* %7, %struct._IO_FILE** %stream, align 8, !tbaa !8
  %9 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev2 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %9, i32 0, i32 29
  %10 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev2, align 8, !tbaa !5
  %rendermode = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %10, i32 0, i32 68
  %11 = load i32, i32* %rendermode, align 4, !tbaa !9
  %12 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %rendermode3 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %12, i32 0, i32 5
  store i32 %11, i32* %rendermode3, align 4, !tbaa !25
  %13 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %xres = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %13, i32 0, i32 15
  store i32 600, i32* %xres, align 4, !tbaa !26
  %14 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev4 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %14, i32 0, i32 29
  %15 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev4, align 8, !tbaa !5
  %HWResolution = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %15, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %16 = load float, float* %arrayidx, align 4, !tbaa !27
  %cmp = fcmp olt float %16, 4.500000e+02
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %xres5 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %17, i32 0, i32 15
  store i32 300, i32* %xres5, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev6 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %18, i32 0, i32 29
  %19 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev6, align 8, !tbaa !5
  %HWResolution7 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %19, i32 0, i32 22
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution7, i32 0, i64 0
  %20 = load float, float* %arrayidx8, align 4, !tbaa !27
  %cmp9 = fcmp ogt float %20, 9.000000e+02
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %21 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %xres11 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %21, i32 0, i32 15
  store i32 1200, i32* %xres11, align 4, !tbaa !26
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %22 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %xres13 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %22, i32 0, i32 15
  %23 = load i32, i32* %xres13, align 4, !tbaa !26
  %div = sdiv i32 1200, %23
  %24 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %xrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %24, i32 0, i32 17
  store i32 %div, i32* %xrmul, align 4, !tbaa !29
  %25 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %25, i32 0, i32 16
  store i32 600, i32* %yres, align 4, !tbaa !30
  %26 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev14 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %26, i32 0, i32 29
  %27 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev14, align 8, !tbaa !5
  %HWResolution15 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %27, i32 0, i32 22
  %arrayidx16 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution15, i32 0, i64 1
  %28 = load float, float* %arrayidx16, align 4, !tbaa !27
  %cmp17 = fcmp olt float %28, 4.500000e+02
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.12
  %29 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yres19 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %29, i32 0, i32 16
  store i32 300, i32* %yres19, align 4, !tbaa !30
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.12
  %30 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev21 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %30, i32 0, i32 29
  %31 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev21, align 8, !tbaa !5
  %HWResolution22 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %31, i32 0, i32 22
  %arrayidx23 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution22, i32 0, i64 1
  %32 = load float, float* %arrayidx23, align 4, !tbaa !27
  %cmp24 = fcmp ogt float %32, 9.000000e+02
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.20
  %33 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yres26 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %33, i32 0, i32 16
  store i32 1200, i32* %yres26, align 4, !tbaa !30
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.20
  %34 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yres28 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %34, i32 0, i32 16
  %35 = load i32, i32* %yres28, align 4, !tbaa !30
  %div29 = sdiv i32 1200, %35
  %36 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %36, i32 0, i32 18
  store i32 %div29, i32* %yrmul, align 4, !tbaa !31
  %37 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev30 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %37, i32 0, i32 29
  %38 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev30, align 8, !tbaa !5
  %topoffset = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %38, i32 0, i32 76
  %39 = load i32, i32* %topoffset, align 4, !tbaa !32
  %40 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %topoffset31 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %40, i32 0, i32 14
  store i32 %39, i32* %topoffset31, align 4, !tbaa !33
  %41 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev32 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %41, i32 0, i32 29
  %42 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev32, align 8, !tbaa !5
  %leftoffset = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %42, i32 0, i32 75
  %43 = load i32, i32* %leftoffset, align 4, !tbaa !34
  %44 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %leftoffset33 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %44, i32 0, i32 13
  store i32 %43, i32* %leftoffset33, align 4, !tbaa !35
  %45 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yrmul34 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %45, i32 0, i32 18
  %46 = load i32, i32* %yrmul34, align 4, !tbaa !31
  %div35 = sdiv i32 0, %46
  %47 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %penofs = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %47, i32 0, i32 79
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs, i32 0, i64 0
  store i32 %div35, i32* %arrayidx36, align 4, !tbaa !36
  %48 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yrmul37 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %48, i32 0, i32 18
  %49 = load i32, i32* %yrmul37, align 4, !tbaa !31
  %div38 = sdiv i32 184, %49
  %50 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %penofs39 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %50, i32 0, i32 79
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs39, i32 0, i64 1
  store i32 %div38, i32* %arrayidx40, align 4, !tbaa !36
  %51 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yrmul41 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %51, i32 0, i32 18
  %52 = load i32, i32* %yrmul41, align 4, !tbaa !31
  %div42 = sdiv i32 368, %52
  %53 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %penofs43 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %53, i32 0, i32 79
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs43, i32 0, i64 2
  store i32 %div42, i32* %arrayidx44, align 4, !tbaa !36
  %54 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yrmul45 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %54, i32 0, i32 18
  %55 = load i32, i32* %yrmul45, align 4, !tbaa !31
  %div46 = sdiv i32 16, %55
  %56 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %valign = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %56, i32 0, i32 80
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %valign, i32 0, i64 0
  store i32 %div46, i32* %arrayidx47, align 4, !tbaa !36
  %57 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %vertalign = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %57, i32 0, i32 24
  %58 = load i32, i32* %vertalign, align 4, !tbaa !37
  %add = add nsw i32 %58, 30
  %mul = mul nsw i32 %add, 2
  %59 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yrmul48 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %59, i32 0, i32 18
  %60 = load i32, i32* %yrmul48, align 4, !tbaa !31
  %div49 = sdiv i32 %mul, %60
  %61 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %valign50 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %61, i32 0, i32 80
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %valign50, i32 0, i64 1
  store i32 %div49, i32* %arrayidx51, align 4, !tbaa !36
  %62 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %vertalign52 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %62, i32 0, i32 24
  %63 = load i32, i32* %vertalign52, align 4, !tbaa !37
  %mul53 = mul nsw i32 %63, 2
  %64 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yrmul54 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %64, i32 0, i32 18
  %65 = load i32, i32* %yrmul54, align 4, !tbaa !31
  %div55 = sdiv i32 %mul53, %65
  %66 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %valign56 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %66, i32 0, i32 80
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %valign56, i32 0, i64 2
  store i32 %div55, i32* %arrayidx57, align 4, !tbaa !36
  %67 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev58 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %67, i32 0, i32 29
  %68 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev58, align 8, !tbaa !5
  %model = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %68, i32 0, i32 77
  %69 = load i32, i32* %model, align 4, !tbaa !38
  %70 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %modelprint = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %70, i32 0, i32 11
  store i32 %69, i32* %modelprint, align 4, !tbaa !39
  %71 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev59 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %71, i32 0, i32 29
  %72 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev59, align 8, !tbaa !5
  %z31m = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %72, i32 0, i32 78
  %73 = load i32, i32* %z31m, align 4, !tbaa !40
  %74 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %z31margin = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %74, i32 0, i32 12
  store i32 %73, i32* %z31margin, align 4, !tbaa !41
  %75 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %modelprint60 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %75, i32 0, i32 11
  %76 = load i32, i32* %modelprint60, align 4, !tbaa !39
  switch i32 %76, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.27
  %77 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %leftoffset61 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %77, i32 0, i32 13
  %78 = load i32, i32* %leftoffset61, align 4, !tbaa !35
  %add62 = add nsw i32 %78, 5000
  %79 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %hoffset = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %79, i32 0, i32 81
  %arrayidx63 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %hoffset, i32 0, i64 0
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx63, i32 0, i64 0
  store i32 %add62, i32* %arrayidx64, align 4, !tbaa !36
  %80 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %leftoffset65 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %80, i32 0, i32 13
  %81 = load i32, i32* %leftoffset65, align 4, !tbaa !35
  %add66 = add nsw i32 %81, 5000
  %82 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %lrhalign = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %82, i32 0, i32 25
  %83 = load i32, i32* %lrhalign, align 4, !tbaa !42
  %add67 = add nsw i32 %add66, %83
  %84 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %hoffset68 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %84, i32 0, i32 81
  %arrayidx69 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %hoffset68, i32 0, i64 1
  %arrayidx70 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx69, i32 0, i64 0
  store i32 %add67, i32* %arrayidx70, align 4, !tbaa !36
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.27
  %85 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %leftoffset71 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %85, i32 0, i32 13
  %86 = load i32, i32* %leftoffset71, align 4, !tbaa !35
  %add72 = add nsw i32 %86, 6254
  %87 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %hoffset73 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %87, i32 0, i32 81
  %arrayidx74 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %hoffset73, i32 0, i64 0
  %arrayidx75 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx74, i32 0, i64 0
  store i32 %add72, i32* %arrayidx75, align 4, !tbaa !36
  %88 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %leftoffset76 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %88, i32 0, i32 13
  %89 = load i32, i32* %leftoffset76, align 4, !tbaa !35
  %add77 = add nsw i32 %89, 6254
  %sub = sub nsw i32 %add77, 2120
  %90 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %lrhalign78 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %90, i32 0, i32 25
  %91 = load i32, i32* %lrhalign78, align 4, !tbaa !42
  %add79 = add nsw i32 %sub, %91
  %92 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %hoffset80 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %92, i32 0, i32 81
  %arrayidx81 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %hoffset80, i32 0, i64 1
  %arrayidx82 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx81, i32 0, i64 0
  store i32 %add79, i32* %arrayidx82, align 4, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %93 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %hoffset83 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %93, i32 0, i32 81
  %arrayidx84 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %hoffset83, i32 0, i64 0
  %arrayidx85 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx84, i32 0, i64 0
  %94 = load i32, i32* %arrayidx85, align 4, !tbaa !36
  %sub86 = sub nsw i32 %94, 62
  %95 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %hoffset87 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %95, i32 0, i32 81
  %arrayidx88 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %hoffset87, i32 0, i64 0
  %arrayidx89 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx88, i32 0, i64 1
  store i32 %sub86, i32* %arrayidx89, align 4, !tbaa !36
  %96 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %hoffset90 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %96, i32 0, i32 81
  %arrayidx91 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %hoffset90, i32 0, i64 1
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx91, i32 0, i64 0
  %97 = load i32, i32* %arrayidx92, align 4, !tbaa !36
  %sub93 = sub nsw i32 %97, 62
  %98 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  %hoffset94 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %98, i32 0, i32 81
  %arrayidx95 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %hoffset94, i32 0, i64 1
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx95, i32 0, i64 1
  store i32 %sub93, i32* %arrayidx96, align 4, !tbaa !36
  %99 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %outdata = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %99, i32 0, i32 26
  store i8* null, i8** %outdata, align 8, !tbaa !43
  %100 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %scanbuf = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %100, i32 0, i32 27
  store i8* null, i8** %scanbuf, align 8, !tbaa !44
  %101 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %curheadpos = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %101, i32 0, i32 19
  store i32 0, i32* %curheadpos, align 4, !tbaa !45
  %102 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %102, i32 0, i32 30
  store i32 0, i32* %left, align 4, !tbaa !46
  %103 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %right = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %103, i32 0, i32 31
  store i32 0, i32* %right, align 4, !tbaa !47
  %104 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %lastblack = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %104, i32 0, i32 33
  store i32 0, i32* %lastblack, align 4, !tbaa !48
  %105 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %curvline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %105, i32 0, i32 34
  store i32 0, i32* %curvline, align 4, !tbaa !49
  %106 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %firstline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %106, i32 0, i32 32
  store i32 0, i32* %firstline, align 4, !tbaa !50
  %107 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %fullflag = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %107, i32 0, i32 36
  store i32 0, i32* %fullflag, align 4, !tbaa !51
  %108 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %direction = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %108, i32 0, i32 21
  store i32 0, i32* %direction, align 4, !tbaa !52
  %109 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %ileave = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %109, i32 0, i32 38
  store i32 0, i32* %ileave, align 4, !tbaa !53
  %110 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev97 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %110, i32 0, i32 29
  %111 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev97, align 8, !tbaa !5
  %bidir = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %111, i32 0, i32 73
  %112 = load i32, i32* %bidir, align 4, !tbaa !54
  %113 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %bidirprint = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %113, i32 0, i32 9
  store i32 %112, i32* %bidirprint, align 4, !tbaa !55
  %114 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev98 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %114, i32 0, i32 29
  %115 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev98, align 8, !tbaa !5
  %numpass = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %115, i32 0, i32 74
  %116 = load i32, i32* %numpass, align 4, !tbaa !56
  %117 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numpasses = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %117, i32 0, i32 8
  store i32 %116, i32* %numpasses, align 4, !tbaa !57
  %118 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %rendermode99 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %118, i32 0, i32 5
  %119 = load i32, i32* %rendermode99, align 4, !tbaa !25
  switch i32 %119, label %sw.epilog.112 [
    i32 0, label %sw.bb.100
    i32 2, label %sw.bb.108
    i32 1, label %sw.bb.108
  ]

sw.bb.100:                                        ; preds = %sw.epilog
  %120 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numblines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %120, i32 0, i32 3
  store i32 208, i32* %numblines, align 4, !tbaa !58
  %121 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numlines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %121, i32 0, i32 4
  store i32 208, i32* %numlines, align 4, !tbaa !59
  %122 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %select = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %122, i32 0, i32 10
  store i32 16, i32* %select, align 4, !tbaa !60
  %123 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %xres101 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %123, i32 0, i32 15
  %124 = load i32, i32* %xres101, align 4, !tbaa !26
  %cmp102 = icmp eq i32 %124, 1200
  br i1 %cmp102, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %sw.bb.100
  %125 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numblines104 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %125, i32 0, i32 3
  store i32 192, i32* %numblines104, align 4, !tbaa !58
  %126 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numlines105 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %126, i32 0, i32 4
  store i32 192, i32* %numlines105, align 4, !tbaa !59
  %127 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %select106 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %127, i32 0, i32 10
  store i32 0, i32* %select106, align 4, !tbaa !60
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %sw.bb.100
  br label %sw.epilog.112

sw.bb.108:                                        ; preds = %sw.epilog, %sw.epilog
  %128 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numblines109 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %128, i32 0, i32 3
  store i32 256, i32* %numblines109, align 4, !tbaa !58
  %129 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numlines110 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %129, i32 0, i32 4
  store i32 192, i32* %numlines110, align 4, !tbaa !59
  %130 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %select111 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %130, i32 0, i32 10
  store i32 0, i32* %select111, align 4, !tbaa !60
  br label %sw.epilog.112

sw.epilog.112:                                    ; preds = %sw.epilog, %sw.bb.108, %if.end.107
  %131 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numblines113 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %131, i32 0, i32 3
  %132 = load i32, i32* %numblines113, align 4, !tbaa !58
  %mul114 = mul nsw i32 %132, 2
  %133 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yrmul115 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %133, i32 0, i32 18
  %134 = load i32, i32* %yrmul115, align 4, !tbaa !31
  %div116 = sdiv i32 %mul114, %134
  %135 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numblines117 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %135, i32 0, i32 3
  store i32 %div116, i32* %numblines117, align 4, !tbaa !58
  %136 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %xres118 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %136, i32 0, i32 15
  %137 = load i32, i32* %xres118, align 4, !tbaa !26
  switch i32 %137, label %sw.epilog.126 [
    i32 300, label %sw.bb.119
    i32 1200, label %sw.bb.121
  ]

sw.bb.119:                                        ; preds = %sw.epilog.112
  %138 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %select120 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %138, i32 0, i32 10
  %139 = load i32, i32* %select120, align 4, !tbaa !60
  %or = or i32 %139, 96
  store i32 %or, i32* %select120, align 4, !tbaa !60
  br label %sw.epilog.126

sw.bb.121:                                        ; preds = %sw.epilog.112
  %140 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %select122 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %140, i32 0, i32 10
  %141 = load i32, i32* %select122, align 4, !tbaa !60
  %or123 = or i32 %141, 64
  store i32 %or123, i32* %select122, align 4, !tbaa !60
  %142 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numpasses124 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %142, i32 0, i32 8
  %143 = load i32, i32* %numpasses124, align 4, !tbaa !57
  %mul125 = mul nsw i32 %143, 2
  store i32 %mul125, i32* %numpasses124, align 4, !tbaa !57
  br label %sw.epilog.126

sw.epilog.126:                                    ; preds = %sw.epilog.112, %sw.bb.121, %sw.bb.119
  %144 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev127 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %144, i32 0, i32 29
  %145 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev127, align 8, !tbaa !5
  %width = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %145, i32 0, i32 13
  %146 = load i32, i32* %width, align 4, !tbaa !61
  %147 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numcols = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %147, i32 0, i32 7
  store i32 %146, i32* %numcols, align 4, !tbaa !62
  %148 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev128 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %148, i32 0, i32 29
  %149 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev128, align 8, !tbaa !5
  %height = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %149, i32 0, i32 14
  %150 = load i32, i32* %height, align 4, !tbaa !63
  %151 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numvlines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %151, i32 0, i32 6
  store i32 %150, i32* %numvlines, align 4, !tbaa !64
  %152 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev129 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %152, i32 0, i32 29
  %153 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev129, align 8, !tbaa !5
  %algnA = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %153, i32 0, i32 69
  %154 = load i32, i32* %algnA, align 4, !tbaa !65
  %155 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %lrhalign130 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %155, i32 0, i32 25
  store i32 %154, i32* %lrhalign130, align 4, !tbaa !42
  %156 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev131 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %156, i32 0, i32 29
  %157 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev131, align 8, !tbaa !5
  %algnB = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %157, i32 0, i32 70
  %158 = load i32, i32* %algnB, align 4, !tbaa !66
  %159 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %vertalign132 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %159, i32 0, i32 24
  store i32 %158, i32* %vertalign132, align 4, !tbaa !37
  %160 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev133 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %160, i32 0, i32 29
  %161 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev133, align 8, !tbaa !5
  %algnC = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %161, i32 0, i32 71
  %162 = load i32, i32* %algnC, align 4, !tbaa !67
  %163 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %bwsep = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %163, i32 0, i32 22
  store i32 %162, i32* %bwsep, align 4, !tbaa !68
  %164 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev134 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %164, i32 0, i32 29
  %165 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev134, align 8, !tbaa !5
  %algnD = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %165, i32 0, i32 72
  %166 = load i32, i32* %algnD, align 4, !tbaa !69
  %167 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %colsep = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %167, i32 0, i32 23
  store i32 %166, i32* %colsep, align 4, !tbaa !70
  %168 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %bwsep135 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %168, i32 0, i32 22
  %169 = load i32, i32* %bwsep135, align 4, !tbaa !68
  %170 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %colsep136 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %170, i32 0, i32 23
  %171 = load i32, i32* %colsep136, align 4, !tbaa !70
  %cmp137 = icmp sgt i32 %169, %171
  br i1 %cmp137, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.126
  %172 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %bwsep138 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %172, i32 0, i32 22
  %173 = load i32, i32* %bwsep138, align 4, !tbaa !68
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.126
  %174 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %colsep139 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %174, i32 0, i32 23
  %175 = load i32, i32* %colsep139, align 4, !tbaa !70
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %173, %cond.true ], [ %175, %cond.false ]
  %mul140 = mul nsw i32 %cond, 2
  %176 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %xrmul141 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %176, i32 0, i32 17
  %177 = load i32, i32* %xrmul141, align 4, !tbaa !29
  %div142 = sdiv i32 %mul140, %177
  %178 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %goffset = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %178, i32 0, i32 2
  store i32 %div142, i32* %goffset, align 4, !tbaa !71
  %179 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numcols143 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %179, i32 0, i32 7
  %180 = load i32, i32* %numcols143, align 4, !tbaa !62
  %181 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %goffset144 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %181, i32 0, i32 2
  %182 = load i32, i32* %goffset144, align 4, !tbaa !71
  %mul145 = mul nsw i32 2, %182
  %add146 = add nsw i32 %180, %mul145
  %183 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %183, i32 0, i32 0
  store i32 %add146, i32* %numbytes, align 4, !tbaa !72
  %184 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %dev147 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %184, i32 0, i32 29
  %185 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev147, align 8, !tbaa !5
  %186 = bitcast %struct.lxm_device_s* %185 to %struct.gx_device_printer_s*
  %187 = bitcast %struct.gx_device_printer_s* %186 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %187, i32 0) #5
  %188 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numrbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %188, i32 0, i32 1
  store i32 %call, i32* %numrbytes, align 4, !tbaa !73
  %189 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numvlines148 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %189, i32 0, i32 6
  %190 = load i32, i32* %numvlines148, align 4, !tbaa !64
  %191 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %yrmul149 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %191, i32 0, i32 18
  %192 = load i32, i32* %yrmul149, align 4, !tbaa !31
  %mul150 = mul nsw i32 %190, %192
  %193 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %linetoeject = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %193, i32 0, i32 20
  store i32 %mul150, i32* %linetoeject, align 4, !tbaa !74
  %194 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %linetoeject151 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %194, i32 0, i32 20
  %195 = load i32, i32* %linetoeject151, align 4, !tbaa !74
  %add152 = add nsw i32 %195, 2400
  store i32 %add152, i32* %linetoeject151, align 4, !tbaa !74
  %196 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %196, i32 0, i32 3
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !75
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %197, i32 0, i32 3
  %198 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !77
  %non_gc_memory153 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %198, i32 0, i32 3
  %199 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory153, align 8, !tbaa !77
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %199, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %200 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !80
  %201 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory154 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %201, i32 0, i32 3
  %202 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory154, align 8, !tbaa !75
  %non_gc_memory155 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %202, i32 0, i32 3
  %203 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory155, align 8, !tbaa !77
  %non_gc_memory156 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %203, i32 0, i32 3
  %204 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory156, align 8, !tbaa !77
  %205 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numbytes157 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %205, i32 0, i32 0
  %206 = load i32, i32* %numbytes157, align 4, !tbaa !72
  %207 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numblines158 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %207, i32 0, i32 3
  %208 = load i32, i32* %numblines158, align 4, !tbaa !58
  %call159 = call i8* %200(%struct.gs_memory_s* %204, i32 %206, i32 %208, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)) #5
  %209 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %scanbuf160 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %209, i32 0, i32 27
  store i8* %call159, i8** %scanbuf160, align 8, !tbaa !44
  %210 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory161 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %210, i32 0, i32 3
  %211 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory161, align 8, !tbaa !75
  %non_gc_memory162 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %211, i32 0, i32 3
  %212 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory162, align 8, !tbaa !77
  %non_gc_memory163 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %212, i32 0, i32 3
  %213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory163, align 8, !tbaa !77
  %procs164 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %213, i32 0, i32 1
  %alloc_byte_array165 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs164, i32 0, i32 10
  %214 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array165, align 8, !tbaa !80
  %215 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory166 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %215, i32 0, i32 3
  %216 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory166, align 8, !tbaa !75
  %non_gc_memory167 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %216, i32 0, i32 3
  %217 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory167, align 8, !tbaa !77
  %non_gc_memory168 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %217, i32 0, i32 3
  %218 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory168, align 8, !tbaa !77
  %219 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %numbytes169 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %219, i32 0, i32 0
  %220 = load i32, i32* %numbytes169, align 4, !tbaa !72
  %call170 = call i8* %214(%struct.gs_memory_s* %218, i32 %220, i32 30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0)) #5
  %221 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %outdata171 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %221, i32 0, i32 26
  store i8* %call170, i8** %outdata171, align 8, !tbaa !43
  %222 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %scanbuf172 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %222, i32 0, i32 27
  %223 = load i8*, i8** %scanbuf172, align 8, !tbaa !44
  %cmp173 = icmp eq i8* %223, null
  br i1 %cmp173, label %if.then.176, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %224 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %outdata174 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %224, i32 0, i32 26
  %225 = load i8*, i8** %outdata174, align 8, !tbaa !43
  %cmp175 = icmp eq i8* %225, null
  br i1 %cmp175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %lor.lhs.false, %cond.end
  %226 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  call void @freeresources(%struct.lxm_device_s* %226) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.177:                                       ; preds = %lor.lhs.false
  %227 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %modelprint178 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %227, i32 0, i32 11
  %228 = load i32, i32* %modelprint178, align 4, !tbaa !39
  %cmp179 = icmp eq i32 %228, 1
  br i1 %cmp179, label %if.then.180, label %if.else

if.then.180:                                      ; preds = %if.end.177
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call181 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @z12_init_sequence, i32 0, i32 0), i64 40, i64 1, %struct._IO_FILE* %229) #5
  br label %if.end.183

if.else:                                          ; preds = %if.end.177
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call182 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @init_sequence, i32 0, i32 0), i64 32, i64 1, %struct._IO_FILE* %230) #5
  br label %if.end.183

if.end.183:                                       ; preds = %if.else, %if.then.180
  %231 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %rendermode184 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %231, i32 0, i32 5
  %232 = load i32, i32* %rendermode184, align 4, !tbaa !25
  switch i32 %232, label %sw.default.188 [
    i32 2, label %sw.bb.185
    i32 1, label %sw.bb.186
    i32 0, label %sw.bb.187
  ]

sw.bb.185:                                        ; preds = %if.end.183
  %233 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  call void @print_photo_page(%struct.pagedata_s* %233) #5
  br label %sw.epilog.189

sw.bb.186:                                        ; preds = %if.end.183
  %234 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  call void @print_color_page(%struct.pagedata_s* %234) #5
  br label %sw.epilog.189

sw.bb.187:                                        ; preds = %if.end.183
  br label %sw.default.188

sw.default.188:                                   ; preds = %if.end.183, %sw.bb.187
  %235 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  call void @print_mono_page(%struct.pagedata_s* %235) #5
  br label %sw.epilog.189

sw.epilog.189:                                    ; preds = %sw.default.188, %sw.bb.186, %sw.bb.185
  %236 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  call void @outputepilogue(%struct.pagedata_s* %236) #5
  %237 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !1
  call void @freeresources(%struct.lxm_device_s* %237) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.189, %if.then.176
  %238 = bitcast %struct.pagedata_s** %gendata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #2
  %239 = bitcast %struct.lxm_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #2
  %240 = load i32, i32* %retval
  ret i32 %240
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
define internal i32 @lxm3200_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %linewidth = alloca float, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast float* %linewidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !81
  %conv = sitofp i32 %2 to float
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !27
  %div = fdiv float %conv, %4
  store float %div, float* %linewidth, align 4, !tbaa !27
  %5 = load float, float* %linewidth, align 4, !tbaa !27
  %conv1 = fpext float %5 to double
  %cmp = fcmp oge double %conv1, 8.250000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load float, float* %linewidth, align 4, !tbaa !27
  %conv3 = fpext float %6 to double
  %cmp4 = fcmp ole double %conv3, 8.400000e+00
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %7, float* getelementptr inbounds ([4 x float], [4 x float]* @lxm3200_open.a4_margins, i32 0, i32 0), i32 1) #5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %struct.lxm_device_s*
  %topoffset = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %9, i32 0, i32 76
  store i32 84, i32* %topoffset, align 4, !tbaa !32
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.lxm_device_s*
  %leftoffset = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %11, i32 0, i32 75
  store i32 162, i32* %leftoffset, align 4, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %12, float* getelementptr inbounds ([4 x float], [4 x float]* @lxm3200_open.letter_margins, i32 0, i32 0), i32 1) #5
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_s* %13 to %struct.lxm_device_s*
  %topoffset6 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %14, i32 0, i32 76
  store i32 84, i32* %topoffset6, align 4, !tbaa !32
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_s* %15 to %struct.lxm_device_s*
  %leftoffset7 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %16, i32 0, i32 75
  store i32 300, i32* %leftoffset7, align 4, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %17) #5
  %18 = bitcast float* %linewidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  ret i32 %call
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @lxm3200_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %col = alloca i64, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %tmpcv = alloca [3 x i16], align 2
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i64* %col to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast [3 x i16]* %tmpcv to i8*
  call void @llvm.lifetime.start(i64 6, i8* %7) #2
  %8 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !83
  store i16 %9, i16* %r, align 2, !tbaa !83
  %10 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %10, i64 1
  %11 = load i16, i16* %arrayidx1, align 2, !tbaa !83
  store i16 %11, i16* %g, align 2, !tbaa !83
  %12 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %12, i64 2
  %13 = load i16, i16* %arrayidx2, align 2, !tbaa !83
  store i16 %13, i16* %b, align 2, !tbaa !83
  %14 = load i16, i16* %r, align 2, !tbaa !83
  %conv = zext i16 %14 to i32
  %15 = load i16, i16* %g, align 2, !tbaa !83
  %conv3 = zext i16 %15 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load i16, i16* %r, align 2, !tbaa !83
  %conv5 = zext i16 %16 to i32
  %17 = load i16, i16* %b, align 2, !tbaa !83
  %conv6 = zext i16 %17 to i32
  %cmp7 = icmp eq i32 %conv5, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load i16, i16* %r, align 2, !tbaa !83
  %conv9 = zext i16 %18 to i32
  %cmp10 = icmp sgt i32 %conv9, 32767
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  store i64 64, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %19 = load i16, i16* %r, align 2, !tbaa !83
  %conv13 = zext i16 %19 to i32
  %sub = sub nsw i32 65535, %conv13
  store i32 %sub, i32* %c, align 4, !tbaa !36
  %20 = load i16, i16* %g, align 2, !tbaa !83
  %conv14 = zext i16 %20 to i32
  %sub15 = sub nsw i32 65535, %conv14
  store i32 %sub15, i32* %m, align 4, !tbaa !36
  %21 = load i16, i16* %b, align 2, !tbaa !83
  %conv16 = zext i16 %21 to i32
  %sub17 = sub nsw i32 65535, %conv16
  store i32 %sub17, i32* %y, align 4, !tbaa !36
  store i64 0, i64* %col, align 8, !tbaa !84
  %22 = load i32, i32* %y, align 4, !tbaa !36
  %cmp18 = icmp sgt i32 %22, 32767
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %23 = load i64, i64* %col, align 8, !tbaa !84
  %or = or i64 %23, 4
  store i64 %or, i64* %col, align 8, !tbaa !84
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_s* %24 to %struct.lxm_device_s*
  %rendermode = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %25, i32 0, i32 68
  %26 = load i32, i32* %rendermode, align 4, !tbaa !9
  switch i32 %26, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %if.end.21
  %27 = load i32, i32* %c, align 4, !tbaa !36
  %cmp22 = icmp sgt i32 %27, 32767
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %sw.bb
  %28 = load i64, i64* %col, align 8, !tbaa !84
  %or25 = or i64 %28, 2
  store i64 %or25, i64* %col, align 8, !tbaa !84
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %sw.bb
  %29 = load i32, i32* %m, align 4, !tbaa !36
  %cmp27 = icmp sgt i32 %29, 32767
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.26
  %30 = load i64, i64* %col, align 8, !tbaa !84
  %or30 = or i64 %30, 1
  store i64 %or30, i64* %col, align 8, !tbaa !84
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.26
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.21
  %31 = load i32, i32* %c, align 4, !tbaa !36
  %cmp33 = icmp sgt i32 %31, 43690
  br i1 %cmp33, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %sw.bb.32
  %32 = load i64, i64* %col, align 8, !tbaa !84
  %or36 = or i64 %32, 2
  store i64 %or36, i64* %col, align 8, !tbaa !84
  br label %if.end.43

if.else.37:                                       ; preds = %sw.bb.32
  %33 = load i32, i32* %c, align 4, !tbaa !36
  %cmp38 = icmp sgt i32 %33, 21845
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.else.37
  %34 = load i64, i64* %col, align 8, !tbaa !84
  %or41 = or i64 %34, 16
  store i64 %or41, i64* %col, align 8, !tbaa !84
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.else.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.35
  %35 = load i32, i32* %m, align 4, !tbaa !36
  %cmp44 = icmp sgt i32 %35, 43690
  br i1 %cmp44, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %if.end.43
  %36 = load i64, i64* %col, align 8, !tbaa !84
  %or47 = or i64 %36, 1
  store i64 %or47, i64* %col, align 8, !tbaa !84
  br label %if.end.54

if.else.48:                                       ; preds = %if.end.43
  %37 = load i32, i32* %m, align 4, !tbaa !36
  %cmp49 = icmp sgt i32 %37, 21845
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.else.48
  %38 = load i64, i64* %col, align 8, !tbaa !84
  %or52 = or i64 %38, 32
  store i64 %or52, i64* %col, align 8, !tbaa !84
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.else.48
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.46
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.21
  %39 = load i16, i16* %r, align 2, !tbaa !83
  %arrayidx55 = getelementptr inbounds [3 x i16], [3 x i16]* %tmpcv, i32 0, i64 0
  store i16 %39, i16* %arrayidx55, align 2, !tbaa !83
  %40 = load i16, i16* %g, align 2, !tbaa !83
  %arrayidx56 = getelementptr inbounds [3 x i16], [3 x i16]* %tmpcv, i32 0, i64 1
  store i16 %40, i16* %arrayidx56, align 2, !tbaa !83
  %41 = load i16, i16* %b, align 2, !tbaa !83
  %arrayidx57 = getelementptr inbounds [3 x i16], [3 x i16]* %tmpcv, i32 0, i64 2
  store i16 %41, i16* %arrayidx57, align 2, !tbaa !83
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %tmpcv, i32 0, i32 0
  %call = call i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s* %42, i16* %arraydecay) #5
  store i64 %call, i64* %col, align 8, !tbaa !84
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.54, %if.end.31
  %43 = load i64, i64* %col, align 8, !tbaa !84
  store i64 %43, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.else, %if.then.12
  %44 = bitcast [3 x i16]* %tmpcv to i8*
  call void @llvm.lifetime.end(i64 6, i8* %44) #2
  %45 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %48) #2
  %49 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %49) #2
  %50 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %50) #2
  %51 = bitcast i64* %col to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = load i64, i64* %retval
  ret i64 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @lxm3200_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !84
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i64, i64* %color.addr, align 8, !tbaa !84
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 -1, i16* %arrayidx, align 2, !tbaa !83
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 -1, i16* %arrayidx1, align 2, !tbaa !83
  %6 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 2
  store i16 -1, i16* %arrayidx2, align 2, !tbaa !83
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and = and i64 %7, 64
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %8 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %8, i64 0
  store i16 0, i16* %arrayidx4, align 2, !tbaa !83
  %9 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %9, i64 1
  store i16 0, i16* %arrayidx5, align 2, !tbaa !83
  %10 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %10, i64 2
  store i16 0, i16* %arrayidx6, align 2, !tbaa !83
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %c, align 4, !tbaa !36
  store i32 0, i32* %m, align 4, !tbaa !36
  store i32 0, i32* %y, align 4, !tbaa !36
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.lxm_device_s*
  %rendermode = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %12, i32 0, i32 68
  %13 = load i32, i32* %rendermode, align 4, !tbaa !9
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.end.7
  %14 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and8 = and i64 %14, 7
  store i64 %and8, i64* %color.addr, align 8, !tbaa !84
  %15 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and9 = and i64 %15, 2
  %tobool10 = icmp ne i64 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb
  store i32 2, i32* %c, align 4, !tbaa !36
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %sw.bb
  %16 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and13 = and i64 %16, 1
  %tobool14 = icmp ne i64 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 2, i32* %m, align 4, !tbaa !36
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.12
  %17 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and17 = and i64 %17, 4
  %tobool18 = icmp ne i64 %and17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 2, i32* %y, align 4, !tbaa !36
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.7
  br label %sw.default

sw.default:                                       ; preds = %if.end.7, %sw.bb.21
  %18 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and22 = and i64 %18, 55
  store i64 %and22, i64* %color.addr, align 8, !tbaa !84
  %19 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and23 = and i64 %19, 16
  %tobool24 = icmp ne i64 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.default
  store i32 1, i32* %c, align 4, !tbaa !36
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %sw.default
  %20 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and27 = and i64 %20, 32
  %tobool28 = icmp ne i64 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store i32 1, i32* %m, align 4, !tbaa !36
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  %21 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and31 = and i64 %21, 4
  %tobool32 = icmp ne i64 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  store i32 2, i32* %y, align 4, !tbaa !36
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  %22 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and35 = and i64 %22, 2
  %tobool36 = icmp ne i64 %and35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  store i32 2, i32* %c, align 4, !tbaa !36
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %23 = load i64, i64* %color.addr, align 8, !tbaa !84
  %and39 = and i64 %23, 1
  %tobool40 = icmp ne i64 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  store i32 2, i32* %m, align 4, !tbaa !36
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.42, %if.end.20
  %24 = load i32, i32* %c, align 4, !tbaa !36
  %sub = sub nsw i32 2, %24
  %mul = mul nsw i32 %sub, 32767
  %conv = trunc i32 %mul to i16
  %25 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i16, i16* %25, i64 0
  store i16 %conv, i16* %arrayidx43, align 2, !tbaa !83
  %26 = load i32, i32* %m, align 4, !tbaa !36
  %sub44 = sub nsw i32 2, %26
  %mul45 = mul nsw i32 %sub44, 32767
  %conv46 = trunc i32 %mul45 to i16
  %27 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i16, i16* %27, i64 1
  store i16 %conv46, i16* %arrayidx47, align 2, !tbaa !83
  %28 = load i32, i32* %y, align 4, !tbaa !36
  %sub48 = sub nsw i32 2, %28
  %mul49 = mul nsw i32 %sub48, 32767
  %conv50 = trunc i32 %mul49 to i16
  %29 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i16, i16* %29, i64 2
  store i16 %conv50, i16* %arrayidx51, align 2, !tbaa !83
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.3, %if.then
  %30 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @lxm3200_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %1, %struct.gs_param_list_s* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !36
  %3 = load i32, i32* %code, align 4, !tbaa !36
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_s* %6 to %struct.lxm_device_s*
  %algnA = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %7, i32 0, i32 69
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32* %algnA) #5
  store i32 %call1, i32* %code, align 4, !tbaa !36
  %8 = load i32, i32* %code, align 4, !tbaa !36
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.lxm_device_s*
  %algnB = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %12, i32 0, i32 70
  %call5 = call i32 @param_write_int(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32* %algnB) #5
  store i32 %call5, i32* %code, align 4, !tbaa !36
  %13 = load i32, i32* %code, align 4, !tbaa !36
  %cmp6 = icmp slt i32 %13, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %14 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_s* %16 to %struct.lxm_device_s*
  %algnC = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %17, i32 0, i32 71
  %call9 = call i32 @param_write_int(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32* %algnC) #5
  store i32 %call9, i32* %code, align 4, !tbaa !36
  %18 = load i32, i32* %code, align 4, !tbaa !36
  %cmp10 = icmp slt i32 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %19 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_s* %21 to %struct.lxm_device_s*
  %algnD = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %22, i32 0, i32 72
  %call13 = call i32 @param_write_int(%struct.gs_param_list_s* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32* %algnD) #5
  store i32 %call13, i32* %code, align 4, !tbaa !36
  %23 = load i32, i32* %code, align 4, !tbaa !36
  %cmp14 = icmp slt i32 %23, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %24 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_s* %26 to %struct.lxm_device_s*
  %bidir = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %27, i32 0, i32 73
  %call17 = call i32 @param_write_int(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32* %bidir) #5
  store i32 %call17, i32* %code, align 4, !tbaa !36
  %28 = load i32, i32* %code, align 4, !tbaa !36
  %cmp18 = icmp slt i32 %28, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %29 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.16
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %32 = bitcast %struct.gx_device_s* %31 to %struct.lxm_device_s*
  %numpass = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %32, i32 0, i32 74
  %call21 = call i32 @param_write_int(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32* %numpass) #5
  store i32 %call21, i32* %code, align 4, !tbaa !36
  %33 = load i32, i32* %code, align 4, !tbaa !36
  %cmp22 = icmp slt i32 %33, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %34 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.20
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gx_device_s* %36 to %struct.lxm_device_s*
  %rendermode = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %37, i32 0, i32 68
  %call25 = call i32 @param_write_int(%struct.gs_param_list_s* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32* %rendermode) #5
  store i32 %call25, i32* %code, align 4, !tbaa !36
  %38 = load i32, i32* %code, align 4, !tbaa !36
  %cmp26 = icmp slt i32 %38, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  %39 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.24
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gx_device_s* %41 to %struct.lxm_device_s*
  %model = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %42, i32 0, i32 77
  %call29 = call i32 @param_write_int(%struct.gs_param_list_s* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32* %model) #5
  store i32 %call29, i32* %code, align 4, !tbaa !36
  %43 = load i32, i32* %code, align 4, !tbaa !36
  %cmp30 = icmp slt i32 %43, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  %44 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.28
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gx_device_s* %46 to %struct.lxm_device_s*
  %z31m = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %47, i32 0, i32 78
  %call33 = call i32 @param_write_int(%struct.gs_param_list_s* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32* %z31m) #5
  store i32 %call33, i32* %code, align 4, !tbaa !36
  %48 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @lxm3200_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %algnA = alloca i32, align 4
  %algnB = alloca i32, align 4
  %algnC = alloca i32, align 4
  %algnD = alloca i32, align 4
  %bidir = alloca i32, align 4
  %numpass = alloca i32, align 4
  %mode = alloca i32, align 4
  %code = alloca i32, align 4
  %model = alloca i32, align 4
  %z31m = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %algnA to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.lxm_device_s*
  %algnA1 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %2, i32 0, i32 69
  %3 = load i32, i32* %algnA1, align 4, !tbaa !65
  store i32 %3, i32* %algnA, align 4, !tbaa !36
  %4 = bitcast i32* %algnB to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s* %5 to %struct.lxm_device_s*
  %algnB2 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %6, i32 0, i32 70
  %7 = load i32, i32* %algnB2, align 4, !tbaa !66
  store i32 %7, i32* %algnB, align 4, !tbaa !36
  %8 = bitcast i32* %algnC to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_s* %9 to %struct.lxm_device_s*
  %algnC3 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %10, i32 0, i32 71
  %11 = load i32, i32* %algnC3, align 4, !tbaa !67
  store i32 %11, i32* %algnC, align 4, !tbaa !36
  %12 = bitcast i32* %algnD to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_s* %13 to %struct.lxm_device_s*
  %algnD4 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %14, i32 0, i32 72
  %15 = load i32, i32* %algnD4, align 4, !tbaa !69
  store i32 %15, i32* %algnD, align 4, !tbaa !36
  %16 = bitcast i32* %bidir to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_s* %17 to %struct.lxm_device_s*
  %bidir5 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %18, i32 0, i32 73
  %19 = load i32, i32* %bidir5, align 4, !tbaa !54
  store i32 %19, i32* %bidir, align 4, !tbaa !36
  %20 = bitcast i32* %numpass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_s* %21 to %struct.lxm_device_s*
  %numpass6 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %22, i32 0, i32 74
  %23 = load i32, i32* %numpass6, align 4, !tbaa !56
  store i32 %23, i32* %numpass, align 4, !tbaa !36
  %24 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_s* %25 to %struct.lxm_device_s*
  %rendermode = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %26, i32 0, i32 68
  %27 = load i32, i32* %rendermode, align 4, !tbaa !9
  store i32 %27, i32* %mode, align 4, !tbaa !36
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  store i32 0, i32* %code, align 4, !tbaa !36
  %29 = bitcast i32* %model to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_s* %30 to %struct.lxm_device_s*
  %model7 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %31, i32 0, i32 77
  %32 = load i32, i32* %model7, align 4, !tbaa !38
  store i32 %32, i32* %model, align 4, !tbaa !36
  %33 = bitcast i32* %z31m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_s* %34 to %struct.lxm_device_s*
  %z31m8 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %35, i32 0, i32 78
  %36 = load i32, i32* %z31m8, align 4, !tbaa !40
  store i32 %36, i32* %z31m, align 4, !tbaa !36
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32* %algnA) #5
  store i32 %call, i32* %code, align 4, !tbaa !36
  %38 = load i32, i32* %code, align 4, !tbaa !36
  %cmp = icmp slt i32 %38, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %39 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %40 = load i32, i32* %algnA, align 4, !tbaa !36
  %cmp9 = icmp slt i32 %40, 0
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %41 = load i32, i32* %algnA, align 4, !tbaa !36
  %cmp10 = icmp sgt i32 %41, 30
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %42, i32 0, i32 0
  %43 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !85
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %43, i32 0, i32 7
  %44 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !87
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call12 = call i32 %44(%struct.gs_param_list_s* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 -15) #5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %lor.lhs.false
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call14 = call i32 @param_read_int(%struct.gs_param_list_s* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32* %algnB) #5
  store i32 %call14, i32* %code, align 4, !tbaa !36
  %47 = load i32, i32* %code, align 4, !tbaa !36
  %cmp15 = icmp slt i32 %47, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %48 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.13
  %49 = load i32, i32* %algnB, align 4, !tbaa !36
  %cmp18 = icmp slt i32 %49, 0
  br i1 %cmp18, label %if.then.21, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.17
  %50 = load i32, i32* %algnB, align 4, !tbaa !36
  %cmp20 = icmp sgt i32 %50, 15
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %lor.lhs.false.19, %if.end.17
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %51, i32 0, i32 0
  %52 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs22, align 8, !tbaa !85
  %signal_error23 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %52, i32 0, i32 7
  %53 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error23, align 8, !tbaa !87
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call24 = call i32 %53(%struct.gs_param_list_s* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 -15) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %lor.lhs.false.19
  %55 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call26 = call i32 @param_read_int(%struct.gs_param_list_s* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32* %algnC) #5
  store i32 %call26, i32* %code, align 4, !tbaa !36
  %56 = load i32, i32* %code, align 4, !tbaa !36
  %cmp27 = icmp slt i32 %56, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  %57 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.25
  %58 = load i32, i32* %algnC, align 4, !tbaa !36
  %cmp30 = icmp slt i32 %58, 0
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.29
  %59 = load i32, i32* %algnC, align 4, !tbaa !36
  %cmp32 = icmp sgt i32 %59, 30
  br i1 %cmp32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %lor.lhs.false.31, %if.end.29
  %60 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs34 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %60, i32 0, i32 0
  %61 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs34, align 8, !tbaa !85
  %signal_error35 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %61, i32 0, i32 7
  %62 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error35, align 8, !tbaa !87
  %63 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call36 = call i32 %62(%struct.gs_param_list_s* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 -15) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %lor.lhs.false.31
  %64 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call38 = call i32 @param_read_int(%struct.gs_param_list_s* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32* %algnD) #5
  store i32 %call38, i32* %code, align 4, !tbaa !36
  %65 = load i32, i32* %code, align 4, !tbaa !36
  %cmp39 = icmp slt i32 %65, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  %66 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.37
  %67 = load i32, i32* %algnD, align 4, !tbaa !36
  %cmp42 = icmp slt i32 %67, 0
  br i1 %cmp42, label %if.then.45, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end.41
  %68 = load i32, i32* %algnD, align 4, !tbaa !36
  %cmp44 = icmp sgt i32 %68, 30
  br i1 %cmp44, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %lor.lhs.false.43, %if.end.41
  %69 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs46 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %69, i32 0, i32 0
  %70 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs46, align 8, !tbaa !85
  %signal_error47 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %70, i32 0, i32 7
  %71 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error47, align 8, !tbaa !87
  %72 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call48 = call i32 %71(%struct.gs_param_list_s* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 -15) #5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %lor.lhs.false.43
  %73 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call50 = call i32 @param_read_int(%struct.gs_param_list_s* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32* %bidir) #5
  store i32 %call50, i32* %code, align 4, !tbaa !36
  %74 = load i32, i32* %code, align 4, !tbaa !36
  %cmp51 = icmp slt i32 %74, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  %75 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end.49
  %76 = load i32, i32* %bidir, align 4, !tbaa !36
  %cmp54 = icmp ne i32 %76, 0
  br i1 %cmp54, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end.53
  %77 = load i32, i32* %bidir, align 4, !tbaa !36
  %cmp55 = icmp ne i32 %77, 1
  br i1 %cmp55, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %land.lhs.true
  %78 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs57 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %78, i32 0, i32 0
  %79 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs57, align 8, !tbaa !85
  %signal_error58 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %79, i32 0, i32 7
  %80 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error58, align 8, !tbaa !87
  %81 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call59 = call i32 %80(%struct.gs_param_list_s* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 -15) #5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %land.lhs.true, %if.end.53
  %82 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call61 = call i32 @param_read_int(%struct.gs_param_list_s* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32* %numpass) #5
  store i32 %call61, i32* %code, align 4, !tbaa !36
  %83 = load i32, i32* %code, align 4, !tbaa !36
  %cmp62 = icmp slt i32 %83, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  %84 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.end.60
  %85 = load i32, i32* %numpass, align 4, !tbaa !36
  %cmp65 = icmp slt i32 %85, 1
  br i1 %cmp65, label %if.then.68, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.64
  %86 = load i32, i32* %numpass, align 4, !tbaa !36
  %cmp67 = icmp sgt i32 %86, 16
  br i1 %cmp67, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %lor.lhs.false.66, %if.end.64
  %87 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs69 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %87, i32 0, i32 0
  %88 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs69, align 8, !tbaa !85
  %signal_error70 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %88, i32 0, i32 7
  %89 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error70, align 8, !tbaa !87
  %90 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call71 = call i32 %89(%struct.gs_param_list_s* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 -15) #5
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %lor.lhs.false.66
  %91 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call73 = call i32 @param_read_int(%struct.gs_param_list_s* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32* %mode) #5
  store i32 %call73, i32* %code, align 4, !tbaa !36
  %92 = load i32, i32* %code, align 4, !tbaa !36
  %cmp74 = icmp slt i32 %92, 0
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.72
  %93 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %if.end.72
  %94 = load i32, i32* %mode, align 4, !tbaa !36
  %cmp77 = icmp ne i32 %94, 0
  br i1 %cmp77, label %land.lhs.true.78, label %if.end.86

land.lhs.true.78:                                 ; preds = %if.end.76
  %95 = load i32, i32* %mode, align 4, !tbaa !36
  %cmp79 = icmp ne i32 %95, 1
  br i1 %cmp79, label %land.lhs.true.80, label %if.end.86

land.lhs.true.80:                                 ; preds = %land.lhs.true.78
  %96 = load i32, i32* %mode, align 4, !tbaa !36
  %cmp81 = icmp ne i32 %96, 2
  br i1 %cmp81, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %land.lhs.true.80
  %97 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs83 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %97, i32 0, i32 0
  %98 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs83, align 8, !tbaa !85
  %signal_error84 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %98, i32 0, i32 7
  %99 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error84, align 8, !tbaa !87
  %100 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call85 = call i32 %99(%struct.gs_param_list_s* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 -15) #5
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %land.lhs.true.80, %land.lhs.true.78, %if.end.76
  %101 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call87 = call i32 @param_read_int(%struct.gs_param_list_s* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32* %model) #5
  store i32 %call87, i32* %code, align 4, !tbaa !36
  %102 = load i32, i32* %code, align 4, !tbaa !36
  %cmp88 = icmp slt i32 %102, 0
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  %103 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %103, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.end.86
  %104 = load i32, i32* %model, align 4, !tbaa !36
  %cmp91 = icmp slt i32 %104, 0
  br i1 %cmp91, label %if.then.94, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.end.90
  %105 = load i32, i32* %model, align 4, !tbaa !36
  %cmp93 = icmp sgt i32 %105, 2
  br i1 %cmp93, label %if.then.94, label %if.end.98

if.then.94:                                       ; preds = %lor.lhs.false.92, %if.end.90
  %106 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs95 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %106, i32 0, i32 0
  %107 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs95, align 8, !tbaa !85
  %signal_error96 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %107, i32 0, i32 7
  %108 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error96, align 8, !tbaa !87
  %109 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call97 = call i32 %108(%struct.gs_param_list_s* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 -15) #5
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.94, %lor.lhs.false.92
  %110 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call99 = call i32 @param_read_int(%struct.gs_param_list_s* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32* %z31m) #5
  store i32 %call99, i32* %code, align 4, !tbaa !36
  %111 = load i32, i32* %code, align 4, !tbaa !36
  %cmp100 = icmp slt i32 %111, 0
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.98
  %112 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %if.end.98
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %114 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call103 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %113, %struct.gs_param_list_s* %114) #5
  store i32 %call103, i32* %code, align 4, !tbaa !36
  %115 = load i32, i32* %code, align 4, !tbaa !36
  %cmp104 = icmp slt i32 %115, 0
  br i1 %cmp104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.102
  %116 = load i32, i32* %code, align 4, !tbaa !36
  store i32 %116, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.106:                                       ; preds = %if.end.102
  %117 = load i32, i32* %algnA, align 4, !tbaa !36
  %118 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %119 = bitcast %struct.gx_device_s* %118 to %struct.lxm_device_s*
  %algnA107 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %119, i32 0, i32 69
  store i32 %117, i32* %algnA107, align 4, !tbaa !65
  %120 = load i32, i32* %algnB, align 4, !tbaa !36
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %122 = bitcast %struct.gx_device_s* %121 to %struct.lxm_device_s*
  %algnB108 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %122, i32 0, i32 70
  store i32 %120, i32* %algnB108, align 4, !tbaa !66
  %123 = load i32, i32* %algnC, align 4, !tbaa !36
  %124 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %125 = bitcast %struct.gx_device_s* %124 to %struct.lxm_device_s*
  %algnC109 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %125, i32 0, i32 71
  store i32 %123, i32* %algnC109, align 4, !tbaa !67
  %126 = load i32, i32* %algnD, align 4, !tbaa !36
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %128 = bitcast %struct.gx_device_s* %127 to %struct.lxm_device_s*
  %algnD110 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %128, i32 0, i32 72
  store i32 %126, i32* %algnD110, align 4, !tbaa !69
  %129 = load i32, i32* %bidir, align 4, !tbaa !36
  %130 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %131 = bitcast %struct.gx_device_s* %130 to %struct.lxm_device_s*
  %bidir111 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %131, i32 0, i32 73
  store i32 %129, i32* %bidir111, align 4, !tbaa !54
  %132 = load i32, i32* %numpass, align 4, !tbaa !36
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %134 = bitcast %struct.gx_device_s* %133 to %struct.lxm_device_s*
  %numpass112 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %134, i32 0, i32 74
  store i32 %132, i32* %numpass112, align 4, !tbaa !56
  %135 = load i32, i32* %mode, align 4, !tbaa !36
  %136 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %137 = bitcast %struct.gx_device_s* %136 to %struct.lxm_device_s*
  %rendermode113 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %137, i32 0, i32 68
  store i32 %135, i32* %rendermode113, align 4, !tbaa !9
  %138 = load i32, i32* %model, align 4, !tbaa !36
  %139 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %140 = bitcast %struct.gx_device_s* %139 to %struct.lxm_device_s*
  %model114 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %140, i32 0, i32 77
  store i32 %138, i32* %model114, align 4, !tbaa !38
  %141 = load i32, i32* %z31m, align 4, !tbaa !36
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %143 = bitcast %struct.gx_device_s* %142 to %struct.lxm_device_s*
  %z31m115 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %143, i32 0, i32 78
  store i32 %141, i32* %z31m115, align 4, !tbaa !40
  %144 = load i32, i32* %mode, align 4, !tbaa !36
  switch i32 %144, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.120
    i32 2, label %sw.bb.131
  ]

sw.bb:                                            ; preds = %if.end.106
  %145 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %145, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  store i32 1, i32* %num_components, align 4, !tbaa !89
  %146 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info116 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %146, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info116, i32 0, i32 5
  store i32 1, i32* %max_gray, align 4, !tbaa !90
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %147, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info117, i32 0, i32 6
  store i32 0, i32* %max_color, align 4, !tbaa !91
  %148 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info118 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %148, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info118, i32 0, i32 7
  store i32 2, i32* %dither_grays, align 4, !tbaa !92
  %149 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info119 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %149, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info119, i32 0, i32 8
  store i32 0, i32* %dither_colors, align 4, !tbaa !93
  br label %sw.epilog

sw.bb.120:                                        ; preds = %if.end.106
  %150 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info121 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %150, i32 0, i32 11
  %num_components122 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info121, i32 0, i32 1
  store i32 3, i32* %num_components122, align 4, !tbaa !89
  %151 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info123 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %151, i32 0, i32 11
  %max_gray124 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info123, i32 0, i32 5
  store i32 1, i32* %max_gray124, align 4, !tbaa !90
  %152 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info125 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %152, i32 0, i32 11
  %max_color126 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info125, i32 0, i32 6
  store i32 1, i32* %max_color126, align 4, !tbaa !91
  %153 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info127 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %153, i32 0, i32 11
  %dither_grays128 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info127, i32 0, i32 7
  store i32 2, i32* %dither_grays128, align 4, !tbaa !92
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info129 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %154, i32 0, i32 11
  %dither_colors130 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info129, i32 0, i32 8
  store i32 2, i32* %dither_colors130, align 4, !tbaa !93
  br label %sw.epilog

sw.bb.131:                                        ; preds = %if.end.106
  %155 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info132 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %155, i32 0, i32 11
  %num_components133 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info132, i32 0, i32 1
  store i32 3, i32* %num_components133, align 4, !tbaa !89
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info134 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %156, i32 0, i32 11
  %max_gray135 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info134, i32 0, i32 5
  store i32 1, i32* %max_gray135, align 4, !tbaa !90
  %157 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info136 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %157, i32 0, i32 11
  %max_color137 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info136, i32 0, i32 6
  store i32 2, i32* %max_color137, align 4, !tbaa !91
  %158 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info138 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %158, i32 0, i32 11
  %dither_grays139 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info138, i32 0, i32 7
  store i32 2, i32* %dither_grays139, align 4, !tbaa !92
  %159 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info140 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %159, i32 0, i32 11
  %dither_colors141 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info140, i32 0, i32 8
  store i32 3, i32* %dither_colors141, align 4, !tbaa !93
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.106, %sw.bb.131, %sw.bb.120, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.105, %if.then.101, %if.then.89, %if.then.75, %if.then.63, %if.then.52, %if.then.40, %if.then.28, %if.then.16, %if.then
  %160 = bitcast i32* %z31m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast i32* %model to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #2
  %162 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %164 = bitcast i32* %numpass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast i32* %bidir to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #2
  %166 = bitcast i32* %algnD to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast i32* %algnC to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #2
  %168 = bitcast i32* %algnB to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #2
  %169 = bitcast i32* %algnA to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = load i32, i32* %retval
  ret i32 %170
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal void @freeresources(%struct.lxm_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.lxm_device_s*, align 8
  %gendata = alloca %struct.pagedata_s*, align 8
  store %struct.lxm_device_s* %dev, %struct.lxm_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pagedata_s** %gendata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %1, i32 0, i32 82
  store %struct.pagedata_s* %data, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %2 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %scanbuf = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %2, i32 0, i32 27
  %3 = load i8*, i8** %scanbuf, align 8, !tbaa !44
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !94
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !77
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !77
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !95
  %9 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !94
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !77
  %non_gc_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory4, align 8, !tbaa !77
  %13 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %scanbuf5 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %13, i32 0, i32 27
  %14 = load i8*, i8** %scanbuf5, align 8, !tbaa !44
  call void %8(%struct.gs_memory_s* %12, i8* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %outdata = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %15, i32 0, i32 26
  %16 = load i8*, i8** %outdata, align 8, !tbaa !43
  %tobool6 = icmp ne i8* %16, null
  br i1 %tobool6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %if.end
  %17 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !94
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !77
  %non_gc_memory10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory10, align 8, !tbaa !77
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !95
  %22 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !94
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !77
  %non_gc_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory15, align 8, !tbaa !77
  %26 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata, align 8, !tbaa !1
  %outdata16 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %26, i32 0, i32 26
  %27 = load i8*, i8** %outdata16, align 8, !tbaa !43
  call void %21(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0)) #5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.7, %if.end
  %28 = bitcast %struct.pagedata_s** %gendata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal void @print_photo_page(%struct.pagedata_s* %gendata) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %res = alloca i32, align 4
  %lline = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %lline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call = call i32 @init_buffer(%struct.pagedata_s* %2) #5
  store i32 %call, i32* %res, align 4, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %res, align 4, !tbaa !36
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call1 = call i32 @roll_buffer(%struct.pagedata_s* %4) #5
  store i32 %call1, i32* %res, align 4, !tbaa !36
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %res, align 4, !tbaa !36
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  %6 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %7 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %7, i32 0, i32 34
  %8 = load i32, i32* %curvline, align 4, !tbaa !49
  %9 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %topoffset = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %9, i32 0, i32 14
  %10 = load i32, i32* %topoffset, align 4, !tbaa !33
  %add = add nsw i32 %10, 476
  call void @skiplines(%struct.pagedata_s* %6, i32 %8, i32 %add) #5
  %11 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline3 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %11, i32 0, i32 34
  %12 = load i32, i32* %curvline3, align 4, !tbaa !49
  store i32 %12, i32* %lline, align 4, !tbaa !36
  %13 = load i32, i32* %res, align 4, !tbaa !36
  switch i32 %13, label %sw.epilog [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.9
    i32 6, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end
  %14 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %14, i32 0) #5
  %15 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %15, i32 0, i32 38
  store i32 0, i32* %ileave, align 4, !tbaa !53
  %16 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %16, i32 0) #5
  %17 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline4 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %17, i32 0, i32 34
  %18 = load i32, i32* %curvline4, align 4, !tbaa !49
  store i32 %18, i32* %lline, align 4, !tbaa !36
  %19 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %19, i32 0, i32 16
  %20 = load i32, i32* %yres, align 4, !tbaa !30
  %cmp5 = icmp eq i32 %20, 1200
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %sw.bb
  %21 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %21, i32 1, i32 0) #5
  %22 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave7 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %22, i32 0, i32 38
  store i32 1, i32* %ileave7, align 4, !tbaa !53
  %23 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %23, i32 0) #5
  %24 = load i32, i32* %lline, align 4, !tbaa !36
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %lline, align 4, !tbaa !36
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %25 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %25, i32 1) #5
  %26 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave10 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %26, i32 0, i32 38
  store i32 0, i32* %ileave10, align 4, !tbaa !53
  %27 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %27, i32 1) #5
  %28 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline11 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %28, i32 0, i32 34
  %29 = load i32, i32* %curvline11, align 4, !tbaa !49
  store i32 %29, i32* %lline, align 4, !tbaa !36
  %30 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres12 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %30, i32 0, i32 16
  %31 = load i32, i32* %yres12, align 4, !tbaa !30
  %cmp13 = icmp eq i32 %31, 1200
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %sw.bb.9
  %32 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %32, i32 1, i32 1) #5
  %33 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave15 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %33, i32 0, i32 38
  store i32 1, i32* %ileave15, align 4, !tbaa !53
  %34 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %34, i32 1) #5
  %35 = load i32, i32* %lline, align 4, !tbaa !36
  %inc16 = add nsw i32 %35, 1
  store i32 %inc16, i32* %lline, align 4, !tbaa !36
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %sw.bb.9
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %36 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %36, i32 0) #5
  %37 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave19 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %37, i32 0, i32 38
  store i32 0, i32* %ileave19, align 4, !tbaa !53
  %38 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %38, i32 0) #5
  %39 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %39, i32 1) #5
  %40 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %40, i32 0, i32 1) #5
  %41 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %41, i32 1) #5
  %42 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline20 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %42, i32 0, i32 34
  %43 = load i32, i32* %curvline20, align 4, !tbaa !49
  store i32 %43, i32* %lline, align 4, !tbaa !36
  %44 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres21 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %44, i32 0, i32 16
  %45 = load i32, i32* %yres21, align 4, !tbaa !30
  %cmp22 = icmp eq i32 %45, 1200
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %sw.bb.18
  %46 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %46, i32 0) #5
  %47 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %47, i32 1, i32 0) #5
  %48 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave24 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %48, i32 0, i32 38
  store i32 1, i32* %ileave24, align 4, !tbaa !53
  %49 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %49, i32 0) #5
  %50 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %50, i32 1) #5
  %51 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %51, i32 0, i32 1) #5
  %52 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %52, i32 1) #5
  %53 = load i32, i32* %lline, align 4, !tbaa !36
  %inc25 = add nsw i32 %53, 1
  store i32 %inc25, i32* %lline, align 4, !tbaa !36
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %sw.bb.18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.26, %if.end.17, %if.end.8
  %54 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call27 = call i32 @roll_buffer(%struct.pagedata_s* %54) #5
  store i32 %call27, i32* %res, align 4, !tbaa !36
  br label %while.cond.28

while.cond.28:                                    ; preds = %sw.epilog.62, %sw.epilog
  %55 = load i32, i32* %res, align 4, !tbaa !36
  %and = and i32 %55, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body.29, label %while.end.64

while.body.29:                                    ; preds = %while.cond.28
  %56 = load i32, i32* %res, align 4, !tbaa !36
  switch i32 %56, label %sw.epilog.62 [
    i32 2, label %sw.bb.30
    i32 4, label %sw.bb.40
    i32 6, label %sw.bb.51
  ]

sw.bb.30:                                         ; preds = %while.body.29
  %57 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %57, i32 0) #5
  %58 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %59 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline31 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %59, i32 0, i32 34
  %60 = load i32, i32* %curvline31, align 4, !tbaa !49
  %61 = load i32, i32* %lline, align 4, !tbaa !36
  %sub = sub nsw i32 %60, %61
  call void @finalizeheader(%struct.pagedata_s* %58, i32 %sub, i32 0) #5
  %62 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave32 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %62, i32 0, i32 38
  store i32 0, i32* %ileave32, align 4, !tbaa !53
  %63 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %63, i32 0) #5
  %64 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline33 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %64, i32 0, i32 34
  %65 = load i32, i32* %curvline33, align 4, !tbaa !49
  store i32 %65, i32* %lline, align 4, !tbaa !36
  %66 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres34 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %66, i32 0, i32 16
  %67 = load i32, i32* %yres34, align 4, !tbaa !30
  %cmp35 = icmp eq i32 %67, 1200
  br i1 %cmp35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %sw.bb.30
  %68 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %68, i32 1, i32 0) #5
  %69 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave37 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %69, i32 0, i32 38
  store i32 1, i32* %ileave37, align 4, !tbaa !53
  %70 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %70, i32 0) #5
  %71 = load i32, i32* %lline, align 4, !tbaa !36
  %inc38 = add nsw i32 %71, 1
  store i32 %inc38, i32* %lline, align 4, !tbaa !36
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %sw.bb.30
  br label %sw.epilog.62

sw.bb.40:                                         ; preds = %while.body.29
  %72 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %72, i32 1) #5
  %73 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %74 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline41 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %74, i32 0, i32 34
  %75 = load i32, i32* %curvline41, align 4, !tbaa !49
  %76 = load i32, i32* %lline, align 4, !tbaa !36
  %sub42 = sub nsw i32 %75, %76
  call void @finalizeheader(%struct.pagedata_s* %73, i32 %sub42, i32 1) #5
  %77 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave43 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %77, i32 0, i32 38
  store i32 0, i32* %ileave43, align 4, !tbaa !53
  %78 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %78, i32 1) #5
  %79 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline44 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %79, i32 0, i32 34
  %80 = load i32, i32* %curvline44, align 4, !tbaa !49
  store i32 %80, i32* %lline, align 4, !tbaa !36
  %81 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres45 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %81, i32 0, i32 16
  %82 = load i32, i32* %yres45, align 4, !tbaa !30
  %cmp46 = icmp eq i32 %82, 1200
  br i1 %cmp46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %sw.bb.40
  %83 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %83, i32 1, i32 1) #5
  %84 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave48 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %84, i32 0, i32 38
  store i32 1, i32* %ileave48, align 4, !tbaa !53
  %85 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %85, i32 1) #5
  %86 = load i32, i32* %lline, align 4, !tbaa !36
  %inc49 = add nsw i32 %86, 1
  store i32 %inc49, i32* %lline, align 4, !tbaa !36
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %sw.bb.40
  br label %sw.epilog.62

sw.bb.51:                                         ; preds = %while.body.29
  %87 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %87, i32 0) #5
  %88 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %89 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline52 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %89, i32 0, i32 34
  %90 = load i32, i32* %curvline52, align 4, !tbaa !49
  %91 = load i32, i32* %lline, align 4, !tbaa !36
  %sub53 = sub nsw i32 %90, %91
  call void @finalizeheader(%struct.pagedata_s* %88, i32 %sub53, i32 0) #5
  %92 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave54 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %92, i32 0, i32 38
  store i32 0, i32* %ileave54, align 4, !tbaa !53
  %93 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %93, i32 0) #5
  %94 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %94, i32 1) #5
  %95 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %95, i32 0, i32 1) #5
  %96 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %96, i32 1) #5
  %97 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline55 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %97, i32 0, i32 34
  %98 = load i32, i32* %curvline55, align 4, !tbaa !49
  store i32 %98, i32* %lline, align 4, !tbaa !36
  %99 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres56 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %99, i32 0, i32 16
  %100 = load i32, i32* %yres56, align 4, !tbaa !30
  %cmp57 = icmp eq i32 %100, 1200
  br i1 %cmp57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %sw.bb.51
  %101 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %101, i32 0) #5
  %102 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %102, i32 1, i32 0) #5
  %103 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave59 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %103, i32 0, i32 38
  store i32 1, i32* %ileave59, align 4, !tbaa !53
  %104 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %104, i32 0) #5
  %105 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %105, i32 1) #5
  %106 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %106, i32 0, i32 1) #5
  %107 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %107, i32 1) #5
  %108 = load i32, i32* %lline, align 4, !tbaa !36
  %inc60 = add nsw i32 %108, 1
  store i32 %inc60, i32* %lline, align 4, !tbaa !36
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %sw.bb.51
  br label %sw.epilog.62

sw.epilog.62:                                     ; preds = %while.body.29, %if.end.61, %if.end.50, %if.end.39
  %109 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call63 = call i32 @roll_buffer(%struct.pagedata_s* %109) #5
  store i32 %call63, i32* %res, align 4, !tbaa !36
  br label %while.cond.28

while.end.64:                                     ; preds = %while.cond.28
  %110 = load i32, i32* %res, align 4, !tbaa !36
  switch i32 %110, label %sw.epilog.95 [
    i32 2, label %sw.bb.65
    i32 4, label %sw.bb.75
    i32 6, label %sw.bb.85
  ]

sw.bb.65:                                         ; preds = %while.end.64
  %111 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %111, i32 0) #5
  %112 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %113 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline66 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %113, i32 0, i32 34
  %114 = load i32, i32* %curvline66, align 4, !tbaa !49
  %115 = load i32, i32* %lline, align 4, !tbaa !36
  %sub67 = sub nsw i32 %114, %115
  call void @finalizeheader(%struct.pagedata_s* %112, i32 %sub67, i32 0) #5
  %116 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave68 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %116, i32 0, i32 38
  store i32 0, i32* %ileave68, align 4, !tbaa !53
  %117 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %117, i32 0) #5
  %118 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres69 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %118, i32 0, i32 16
  %119 = load i32, i32* %yres69, align 4, !tbaa !30
  %cmp70 = icmp eq i32 %119, 1200
  br i1 %cmp70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %sw.bb.65
  %120 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %120, i32 1, i32 0) #5
  %121 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave72 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %121, i32 0, i32 38
  store i32 1, i32* %ileave72, align 4, !tbaa !53
  %122 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %122, i32 0) #5
  %123 = load i32, i32* %lline, align 4, !tbaa !36
  %inc73 = add nsw i32 %123, 1
  store i32 %inc73, i32* %lline, align 4, !tbaa !36
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %sw.bb.65
  br label %sw.bb.75

sw.bb.75:                                         ; preds = %while.end.64, %if.end.74
  %124 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %124, i32 1) #5
  %125 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %126 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline76 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %126, i32 0, i32 34
  %127 = load i32, i32* %curvline76, align 4, !tbaa !49
  %128 = load i32, i32* %lline, align 4, !tbaa !36
  %sub77 = sub nsw i32 %127, %128
  call void @finalizeheader(%struct.pagedata_s* %125, i32 %sub77, i32 1) #5
  %129 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave78 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %129, i32 0, i32 38
  store i32 0, i32* %ileave78, align 4, !tbaa !53
  %130 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %130, i32 1) #5
  %131 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres79 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %131, i32 0, i32 16
  %132 = load i32, i32* %yres79, align 4, !tbaa !30
  %cmp80 = icmp eq i32 %132, 1200
  br i1 %cmp80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %sw.bb.75
  %133 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %133, i32 1, i32 1) #5
  %134 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave82 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %134, i32 0, i32 38
  store i32 1, i32* %ileave82, align 4, !tbaa !53
  %135 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %135, i32 1) #5
  %136 = load i32, i32* %lline, align 4, !tbaa !36
  %inc83 = add nsw i32 %136, 1
  store i32 %inc83, i32* %lline, align 4, !tbaa !36
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %sw.bb.75
  br label %sw.epilog.95

sw.bb.85:                                         ; preds = %while.end.64
  %137 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %137, i32 0) #5
  %138 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %139 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline86 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %139, i32 0, i32 34
  %140 = load i32, i32* %curvline86, align 4, !tbaa !49
  %141 = load i32, i32* %lline, align 4, !tbaa !36
  %sub87 = sub nsw i32 %140, %141
  call void @finalizeheader(%struct.pagedata_s* %138, i32 %sub87, i32 0) #5
  %142 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave88 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %142, i32 0, i32 38
  store i32 0, i32* %ileave88, align 4, !tbaa !53
  %143 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %143, i32 0) #5
  %144 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %144, i32 1) #5
  %145 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %145, i32 0, i32 1) #5
  %146 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %146, i32 1) #5
  %147 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres89 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %147, i32 0, i32 16
  %148 = load i32, i32* %yres89, align 4, !tbaa !30
  %cmp90 = icmp eq i32 %148, 1200
  br i1 %cmp90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %sw.bb.85
  %149 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %149, i32 0) #5
  %150 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %150, i32 1, i32 0) #5
  %151 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave92 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %151, i32 0, i32 38
  store i32 1, i32* %ileave92, align 4, !tbaa !53
  %152 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %152, i32 0) #5
  %153 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %153, i32 1) #5
  %154 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %154, i32 0, i32 1) #5
  %155 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %155, i32 1) #5
  %156 = load i32, i32* %lline, align 4, !tbaa !36
  %inc93 = add nsw i32 %156, 1
  store i32 %inc93, i32* %lline, align 4, !tbaa !36
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %sw.bb.85
  br label %sw.epilog.95

sw.epilog.95:                                     ; preds = %while.end.64, %if.end.94, %if.end.84
  %157 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %157, i32 0, i32 -1) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.95, %if.then
  %158 = bitcast i32* %lline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i32* %res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
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

; Function Attrs: nounwind uwtable
define internal void @print_color_page(%struct.pagedata_s* %gendata) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %res = alloca i32, align 4
  %lline = alloca i32, align 4
  %cmask = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nl = alloca i32, align 4
  %q = alloca i32, align 4
  %sk = alloca i32, align 4
  %scan = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %lline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %cmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %sk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %9, i32 0, i32 18
  %10 = load i32, i32* %yrmul, align 4, !tbaa !31
  %div = sdiv i32 384, %10
  store i32 %div, i32* %sk, align 4, !tbaa !36
  %11 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call = call i32 @init_buffer(%struct.pagedata_s* %11) #5
  store i32 %call, i32* %res, align 4, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %12 = load i32, i32* %res, align 4, !tbaa !36
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call1 = call i32 @roll_buffer(%struct.pagedata_s* %13) #5
  store i32 %call1, i32* %res, align 4, !tbaa !36
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32, i32* %res, align 4, !tbaa !36
  %cmp2 = icmp eq i32 %14, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  %15 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %16 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %16, i32 0, i32 34
  %17 = load i32, i32* %curvline, align 4, !tbaa !49
  %18 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %topoffset = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %18, i32 0, i32 14
  %19 = load i32, i32* %topoffset, align 4, !tbaa !33
  %add = add nsw i32 %19, 476
  call void @skiplines(%struct.pagedata_s* %15, i32 %17, i32 %add) #5
  %20 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline3 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %20, i32 0, i32 34
  %21 = load i32, i32* %curvline3, align 4, !tbaa !49
  store i32 %21, i32* %lline, align 4, !tbaa !36
  %22 = load i32, i32* %res, align 4, !tbaa !36
  switch i32 %22, label %sw.epilog [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.11
    i32 6, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end
  %23 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %23, i32 0) #5
  %24 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %24, i32 0, i32 38
  store i32 0, i32* %ileave, align 4, !tbaa !53
  %25 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %25) #5
  %26 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline4 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %26, i32 0, i32 34
  %27 = load i32, i32* %curvline4, align 4, !tbaa !49
  %28 = load i32, i32* %sk, align 4, !tbaa !36
  %add5 = add nsw i32 %27, %28
  %29 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %lastblack = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %29, i32 0, i32 33
  store i32 %add5, i32* %lastblack, align 4, !tbaa !48
  %30 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline6 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %30, i32 0, i32 34
  %31 = load i32, i32* %curvline6, align 4, !tbaa !49
  store i32 %31, i32* %lline, align 4, !tbaa !36
  %32 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %32, i32 0, i32 16
  %33 = load i32, i32* %yres, align 4, !tbaa !30
  %cmp7 = icmp eq i32 %33, 1200
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %sw.bb
  %34 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %34, i32 1, i32 0) #5
  %35 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave9 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %35, i32 0, i32 38
  store i32 1, i32* %ileave9, align 4, !tbaa !53
  %36 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %36) #5
  %37 = load i32, i32* %lline, align 4, !tbaa !36
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %lline, align 4, !tbaa !36
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %sw.bb
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %38 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %38, i32 1) #5
  %39 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave12 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %39, i32 0, i32 38
  store i32 0, i32* %ileave12, align 4, !tbaa !53
  %40 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %40, i32 1) #5
  %41 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline13 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %41, i32 0, i32 34
  %42 = load i32, i32* %curvline13, align 4, !tbaa !49
  store i32 %42, i32* %lline, align 4, !tbaa !36
  %43 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres14 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %43, i32 0, i32 16
  %44 = load i32, i32* %yres14, align 4, !tbaa !30
  %cmp15 = icmp eq i32 %44, 1200
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %sw.bb.11
  %45 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %45, i32 1, i32 1) #5
  %46 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave17 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %46, i32 0, i32 38
  store i32 1, i32* %ileave17, align 4, !tbaa !53
  %47 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %47, i32 1) #5
  %48 = load i32, i32* %lline, align 4, !tbaa !36
  %inc18 = add nsw i32 %48, 1
  store i32 %inc18, i32* %lline, align 4, !tbaa !36
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %sw.bb.11
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %49 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %49, i32 0) #5
  %50 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave21 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %50, i32 0, i32 38
  store i32 0, i32* %ileave21, align 4, !tbaa !53
  %51 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %51) #5
  %52 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline22 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %52, i32 0, i32 34
  %53 = load i32, i32* %curvline22, align 4, !tbaa !49
  %54 = load i32, i32* %sk, align 4, !tbaa !36
  %add23 = add nsw i32 %53, %54
  %55 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %lastblack24 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %55, i32 0, i32 33
  store i32 %add23, i32* %lastblack24, align 4, !tbaa !48
  %56 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %56, i32 1) #5
  %57 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %57, i32 0, i32 1) #5
  %58 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %58, i32 1) #5
  %59 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline25 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %59, i32 0, i32 34
  %60 = load i32, i32* %curvline25, align 4, !tbaa !49
  store i32 %60, i32* %lline, align 4, !tbaa !36
  %61 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres26 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %61, i32 0, i32 16
  %62 = load i32, i32* %yres26, align 4, !tbaa !30
  %cmp27 = icmp eq i32 %62, 1200
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %sw.bb.20
  %63 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %63, i32 0) #5
  %64 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %64, i32 1, i32 0) #5
  %65 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave29 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %65, i32 0, i32 38
  store i32 1, i32* %ileave29, align 4, !tbaa !53
  %66 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %66) #5
  %67 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %67, i32 1) #5
  %68 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %68, i32 0, i32 1) #5
  %69 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %69, i32 1) #5
  %70 = load i32, i32* %lline, align 4, !tbaa !36
  %inc30 = add nsw i32 %70, 1
  store i32 %inc30, i32* %lline, align 4, !tbaa !36
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %sw.bb.20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.31, %if.end.19, %if.end.10
  %71 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call32 = call i32 @roll_buffer(%struct.pagedata_s* %71) #5
  store i32 %call32, i32* %res, align 4, !tbaa !36
  br label %while.cond.33

while.cond.33:                                    ; preds = %sw.epilog.79, %sw.epilog
  %72 = load i32, i32* %res, align 4, !tbaa !36
  %and = and i32 %72, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body.34, label %while.end.81

while.body.34:                                    ; preds = %while.cond.33
  %73 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline35 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %73, i32 0, i32 34
  %74 = load i32, i32* %curvline35, align 4, !tbaa !49
  %75 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %lastblack36 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %75, i32 0, i32 33
  %76 = load i32, i32* %lastblack36, align 4, !tbaa !48
  %cmp37 = icmp slt i32 %74, %76
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %while.body.34
  %77 = load i32, i32* %res, align 4, !tbaa !36
  %and39 = and i32 %77, -3
  store i32 %and39, i32* %res, align 4, !tbaa !36
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %while.body.34
  %78 = load i32, i32* %res, align 4, !tbaa !36
  switch i32 %78, label %sw.epilog.79 [
    i32 2, label %sw.bb.41
    i32 4, label %sw.bb.54
    i32 6, label %sw.bb.65
  ]

sw.bb.41:                                         ; preds = %if.end.40
  %79 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %79, i32 0) #5
  %80 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %81 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline42 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %81, i32 0, i32 34
  %82 = load i32, i32* %curvline42, align 4, !tbaa !49
  %83 = load i32, i32* %lline, align 4, !tbaa !36
  %sub = sub nsw i32 %82, %83
  call void @finalizeheader(%struct.pagedata_s* %80, i32 %sub, i32 0) #5
  %84 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave43 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %84, i32 0, i32 38
  store i32 0, i32* %ileave43, align 4, !tbaa !53
  %85 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %85) #5
  %86 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline44 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %86, i32 0, i32 34
  %87 = load i32, i32* %curvline44, align 4, !tbaa !49
  %88 = load i32, i32* %sk, align 4, !tbaa !36
  %add45 = add nsw i32 %87, %88
  %89 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %lastblack46 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %89, i32 0, i32 33
  store i32 %add45, i32* %lastblack46, align 4, !tbaa !48
  %90 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline47 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %90, i32 0, i32 34
  %91 = load i32, i32* %curvline47, align 4, !tbaa !49
  store i32 %91, i32* %lline, align 4, !tbaa !36
  %92 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres48 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %92, i32 0, i32 16
  %93 = load i32, i32* %yres48, align 4, !tbaa !30
  %cmp49 = icmp eq i32 %93, 1200
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %sw.bb.41
  %94 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %94, i32 1, i32 0) #5
  %95 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave51 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %95, i32 0, i32 38
  store i32 1, i32* %ileave51, align 4, !tbaa !53
  %96 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %96) #5
  %97 = load i32, i32* %lline, align 4, !tbaa !36
  %inc52 = add nsw i32 %97, 1
  store i32 %inc52, i32* %lline, align 4, !tbaa !36
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %sw.bb.41
  br label %sw.epilog.79

sw.bb.54:                                         ; preds = %if.end.40
  %98 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %98, i32 1) #5
  %99 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %100 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline55 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %100, i32 0, i32 34
  %101 = load i32, i32* %curvline55, align 4, !tbaa !49
  %102 = load i32, i32* %lline, align 4, !tbaa !36
  %sub56 = sub nsw i32 %101, %102
  call void @finalizeheader(%struct.pagedata_s* %99, i32 %sub56, i32 1) #5
  %103 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave57 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %103, i32 0, i32 38
  store i32 0, i32* %ileave57, align 4, !tbaa !53
  %104 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %104, i32 1) #5
  %105 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline58 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %105, i32 0, i32 34
  %106 = load i32, i32* %curvline58, align 4, !tbaa !49
  store i32 %106, i32* %lline, align 4, !tbaa !36
  %107 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres59 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %107, i32 0, i32 16
  %108 = load i32, i32* %yres59, align 4, !tbaa !30
  %cmp60 = icmp eq i32 %108, 1200
  br i1 %cmp60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %sw.bb.54
  %109 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %109, i32 1, i32 1) #5
  %110 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave62 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %110, i32 0, i32 38
  store i32 1, i32* %ileave62, align 4, !tbaa !53
  %111 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %111, i32 1) #5
  %112 = load i32, i32* %lline, align 4, !tbaa !36
  %inc63 = add nsw i32 %112, 1
  store i32 %inc63, i32* %lline, align 4, !tbaa !36
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %sw.bb.54
  br label %sw.epilog.79

sw.bb.65:                                         ; preds = %if.end.40
  %113 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %113, i32 0) #5
  %114 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %115 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline66 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %115, i32 0, i32 34
  %116 = load i32, i32* %curvline66, align 4, !tbaa !49
  %117 = load i32, i32* %lline, align 4, !tbaa !36
  %sub67 = sub nsw i32 %116, %117
  call void @finalizeheader(%struct.pagedata_s* %114, i32 %sub67, i32 0) #5
  %118 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave68 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %118, i32 0, i32 38
  store i32 0, i32* %ileave68, align 4, !tbaa !53
  %119 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %119) #5
  %120 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline69 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %120, i32 0, i32 34
  %121 = load i32, i32* %curvline69, align 4, !tbaa !49
  %122 = load i32, i32* %sk, align 4, !tbaa !36
  %add70 = add nsw i32 %121, %122
  %123 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %lastblack71 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %123, i32 0, i32 33
  store i32 %add70, i32* %lastblack71, align 4, !tbaa !48
  %124 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %124, i32 1) #5
  %125 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %125, i32 0, i32 1) #5
  %126 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %126, i32 1) #5
  %127 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline72 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %127, i32 0, i32 34
  %128 = load i32, i32* %curvline72, align 4, !tbaa !49
  store i32 %128, i32* %lline, align 4, !tbaa !36
  %129 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres73 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %129, i32 0, i32 16
  %130 = load i32, i32* %yres73, align 4, !tbaa !30
  %cmp74 = icmp eq i32 %130, 1200
  br i1 %cmp74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %sw.bb.65
  %131 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %131, i32 0) #5
  %132 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %132, i32 1, i32 0) #5
  %133 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave76 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %133, i32 0, i32 38
  store i32 1, i32* %ileave76, align 4, !tbaa !53
  %134 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %134) #5
  %135 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %135, i32 1) #5
  %136 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %136, i32 0, i32 1) #5
  %137 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %137, i32 1) #5
  %138 = load i32, i32* %lline, align 4, !tbaa !36
  %inc77 = add nsw i32 %138, 1
  store i32 %inc77, i32* %lline, align 4, !tbaa !36
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %sw.bb.65
  br label %sw.epilog.79

sw.epilog.79:                                     ; preds = %if.end.40, %if.end.78, %if.end.64, %if.end.53
  %139 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call80 = call i32 @roll_buffer(%struct.pagedata_s* %139) #5
  store i32 %call80, i32* %res, align 4, !tbaa !36
  br label %while.cond.33

while.end.81:                                     ; preds = %while.cond.33
  %140 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call82 = call i32 @qualify_buffer(%struct.pagedata_s* %140) #5
  store i32 %call82, i32* %res, align 4, !tbaa !36
  %141 = load i32, i32* %res, align 4, !tbaa !36
  %and83 = and i32 %141, 2
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %land.lhs.true, label %if.end.107

land.lhs.true:                                    ; preds = %while.end.81
  %142 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline85 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %142, i32 0, i32 34
  %143 = load i32, i32* %curvline85, align 4, !tbaa !49
  %144 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %lastblack86 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %144, i32 0, i32 33
  %145 = load i32, i32* %lastblack86, align 4, !tbaa !48
  %cmp87 = icmp sle i32 %143, %145
  br i1 %cmp87, label %if.then.88, label %if.end.107

if.then.88:                                       ; preds = %land.lhs.true
  %146 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %lastblack89 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %146, i32 0, i32 33
  %147 = load i32, i32* %lastblack89, align 4, !tbaa !48
  %148 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline90 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %148, i32 0, i32 34
  %149 = load i32, i32* %curvline90, align 4, !tbaa !49
  %sub91 = sub nsw i32 %147, %149
  store i32 %sub91, i32* %nl, align 4, !tbaa !36
  %150 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %150, i32 0, i32 32
  %151 = load i32, i32* %firstline, align 4, !tbaa !50
  %152 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %152, i32 0, i32 29
  %153 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !5
  %valign = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %153, i32 0, i32 80
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %valign, i32 0, i64 1
  %154 = load i32, i32* %arrayidx, align 4, !tbaa !36
  %add92 = add nsw i32 %151, %154
  store i32 %add92, i32* %q, align 4, !tbaa !36
  %155 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numblines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %155, i32 0, i32 3
  %156 = load i32, i32* %numblines, align 4, !tbaa !58
  %sub93 = sub nsw i32 %156, 1
  store i32 %sub93, i32* %cmask, align 4, !tbaa !36
  store i32 0, i32* %i, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc.104, %if.then.88
  %157 = load i32, i32* %i, align 4, !tbaa !36
  %158 = load i32, i32* %nl, align 4, !tbaa !36
  %cmp94 = icmp slt i32 %157, %158
  br i1 %cmp94, label %for.body, label %for.end.106

for.body:                                         ; preds = %for.cond
  %159 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %159, i32 0, i32 27
  %160 = load i8*, i8** %scanbuf, align 8, !tbaa !44
  %161 = load i32, i32* %i, align 4, !tbaa !36
  %162 = load i32, i32* %q, align 4, !tbaa !36
  %add95 = add nsw i32 %161, %162
  %163 = load i32, i32* %cmask, align 4, !tbaa !36
  %and96 = and i32 %add95, %163
  %164 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %164, i32 0, i32 0
  %165 = load i32, i32* %numbytes, align 4, !tbaa !72
  %mul = mul nsw i32 %and96, %165
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %160, i64 %idx.ext
  store i8* %add.ptr, i8** %scan, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !36
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc, %for.body
  %166 = load i32, i32* %j, align 4, !tbaa !36
  %167 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes98 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %167, i32 0, i32 0
  %168 = load i32, i32* %numbytes98, align 4, !tbaa !72
  %cmp99 = icmp slt i32 %166, %168
  br i1 %cmp99, label %for.body.100, label %for.end

for.body.100:                                     ; preds = %for.cond.97
  %169 = load i8*, i8** %scan, align 8, !tbaa !1
  %170 = load i8, i8* %169, align 1, !tbaa !96
  %conv = zext i8 %170 to i32
  %and101 = and i32 %conv, -65
  %conv102 = trunc i32 %and101 to i8
  store i8 %conv102, i8* %169, align 1, !tbaa !96
  %171 = load i8*, i8** %scan, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %incdec.ptr, i8** %scan, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.100
  %172 = load i32, i32* %j, align 4, !tbaa !36
  %inc103 = add nsw i32 %172, 1
  store i32 %inc103, i32* %j, align 4, !tbaa !36
  br label %for.cond.97

for.end:                                          ; preds = %for.cond.97
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end
  %173 = load i32, i32* %i, align 4, !tbaa !36
  %inc105 = add nsw i32 %173, 1
  store i32 %inc105, i32* %i, align 4, !tbaa !36
  br label %for.cond

for.end.106:                                      ; preds = %for.cond
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.106, %land.lhs.true, %while.end.81
  %174 = load i32, i32* %res, align 4, !tbaa !36
  switch i32 %174, label %sw.epilog.141 [
    i32 2, label %sw.bb.108
    i32 4, label %sw.bb.119
    i32 6, label %sw.bb.130
  ]

sw.bb.108:                                        ; preds = %if.end.107
  %175 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %175, i32 0) #5
  %176 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %177 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline109 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %177, i32 0, i32 34
  %178 = load i32, i32* %curvline109, align 4, !tbaa !49
  %179 = load i32, i32* %lline, align 4, !tbaa !36
  %sub110 = sub nsw i32 %178, %179
  call void @finalizeheader(%struct.pagedata_s* %176, i32 %sub110, i32 0) #5
  %180 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave111 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %180, i32 0, i32 38
  store i32 0, i32* %ileave111, align 4, !tbaa !53
  %181 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %181) #5
  %182 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres112 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %182, i32 0, i32 16
  %183 = load i32, i32* %yres112, align 4, !tbaa !30
  %cmp113 = icmp eq i32 %183, 1200
  br i1 %cmp113, label %if.then.115, label %if.end.118

if.then.115:                                      ; preds = %sw.bb.108
  %184 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %184, i32 1, i32 0) #5
  %185 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave116 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %185, i32 0, i32 38
  store i32 1, i32* %ileave116, align 4, !tbaa !53
  %186 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %186) #5
  %187 = load i32, i32* %lline, align 4, !tbaa !36
  %inc117 = add nsw i32 %187, 1
  store i32 %inc117, i32* %lline, align 4, !tbaa !36
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.115, %sw.bb.108
  br label %sw.epilog.141

sw.bb.119:                                        ; preds = %if.end.107
  %188 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %188, i32 1) #5
  %189 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %190 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline120 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %190, i32 0, i32 34
  %191 = load i32, i32* %curvline120, align 4, !tbaa !49
  %192 = load i32, i32* %lline, align 4, !tbaa !36
  %sub121 = sub nsw i32 %191, %192
  call void @finalizeheader(%struct.pagedata_s* %189, i32 %sub121, i32 1) #5
  %193 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave122 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %193, i32 0, i32 38
  store i32 0, i32* %ileave122, align 4, !tbaa !53
  %194 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %194, i32 1) #5
  %195 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres123 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %195, i32 0, i32 16
  %196 = load i32, i32* %yres123, align 4, !tbaa !30
  %cmp124 = icmp eq i32 %196, 1200
  br i1 %cmp124, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %sw.bb.119
  %197 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %197, i32 1, i32 1) #5
  %198 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave127 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %198, i32 0, i32 38
  store i32 1, i32* %ileave127, align 4, !tbaa !53
  %199 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %199, i32 1) #5
  %200 = load i32, i32* %lline, align 4, !tbaa !36
  %inc128 = add nsw i32 %200, 1
  store i32 %inc128, i32* %lline, align 4, !tbaa !36
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %sw.bb.119
  br label %sw.epilog.141

sw.bb.130:                                        ; preds = %if.end.107
  %201 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %201, i32 0) #5
  %202 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %203 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline131 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %203, i32 0, i32 34
  %204 = load i32, i32* %curvline131, align 4, !tbaa !49
  %205 = load i32, i32* %lline, align 4, !tbaa !36
  %sub132 = sub nsw i32 %204, %205
  call void @finalizeheader(%struct.pagedata_s* %202, i32 %sub132, i32 0) #5
  %206 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave133 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %206, i32 0, i32 38
  store i32 0, i32* %ileave133, align 4, !tbaa !53
  %207 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %207) #5
  %208 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %208, i32 1) #5
  %209 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %209, i32 0, i32 1) #5
  %210 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %210, i32 1) #5
  %211 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres134 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %211, i32 0, i32 16
  %212 = load i32, i32* %yres134, align 4, !tbaa !30
  %cmp135 = icmp eq i32 %212, 1200
  br i1 %cmp135, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %sw.bb.130
  %213 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %213, i32 0) #5
  %214 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %214, i32 1, i32 0) #5
  %215 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave138 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %215, i32 0, i32 38
  store i32 1, i32* %ileave138, align 4, !tbaa !53
  %216 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %216) #5
  %217 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %217, i32 1) #5
  %218 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %218, i32 0, i32 1) #5
  %219 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_col_buf(%struct.pagedata_s* %219, i32 1) #5
  %220 = load i32, i32* %lline, align 4, !tbaa !36
  %inc139 = add nsw i32 %220, 1
  store i32 %inc139, i32* %lline, align 4, !tbaa !36
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %sw.bb.130
  br label %sw.epilog.141

sw.epilog.141:                                    ; preds = %if.end.107, %if.end.140, %if.end.129, %if.end.118
  %221 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %221, i32 0, i32 -1) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.141, %if.then
  %222 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #2
  %223 = bitcast i32* %sk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #2
  %224 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #2
  %225 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #2
  %226 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #2
  %227 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #2
  %228 = bitcast i32* %cmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #2
  %229 = bitcast i32* %lline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  %230 = bitcast i32* %res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #2
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

; Function Attrs: nounwind uwtable
define internal void @print_mono_page(%struct.pagedata_s* %gendata) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %res = alloca i32, align 4
  %lline = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %0 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %lline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call = call i32 @init_buffer(%struct.pagedata_s* %2) #5
  store i32 %call, i32* %res, align 4, !tbaa !36
  %3 = load i32, i32* %res, align 4, !tbaa !36
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %5 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %5, i32 0, i32 34
  %6 = load i32, i32* %curvline, align 4, !tbaa !49
  %7 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %topoffset = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %7, i32 0, i32 14
  %8 = load i32, i32* %topoffset, align 4, !tbaa !33
  %add = add nsw i32 %8, 420
  call void @skiplines(%struct.pagedata_s* %4, i32 %6, i32 %add) #5
  %9 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline1 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %9, i32 0, i32 34
  %10 = load i32, i32* %curvline1, align 4, !tbaa !49
  store i32 %10, i32* %lline, align 4, !tbaa !36
  %11 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %11, i32 0) #5
  %12 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %12, i32 0, i32 38
  store i32 0, i32* %ileave, align 4, !tbaa !53
  %13 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %13) #5
  %14 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline2 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %14, i32 0, i32 34
  %15 = load i32, i32* %curvline2, align 4, !tbaa !49
  store i32 %15, i32* %lline, align 4, !tbaa !36
  %16 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %16, i32 0, i32 16
  %17 = load i32, i32* %yres, align 4, !tbaa !30
  %cmp3 = icmp eq i32 %17, 1200
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %18 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %18, i32 1, i32 0) #5
  %19 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave5 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %19, i32 0, i32 38
  store i32 1, i32* %ileave5, align 4, !tbaa !53
  %20 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %20) #5
  %21 = load i32, i32* %lline, align 4, !tbaa !36
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %lline, align 4, !tbaa !36
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %22 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %23 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline7 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %23, i32 0, i32 34
  %24 = load i32, i32* %curvline7, align 4, !tbaa !49
  %25 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numblines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %25, i32 0, i32 3
  %26 = load i32, i32* %numblines, align 4, !tbaa !58
  %add8 = add nsw i32 %24, %26
  %call9 = call i32 @fill_mono_buffer(%struct.pagedata_s* %22, i32 %add8) #5
  store i32 %call9, i32* %res, align 4, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end.6
  %27 = load i32, i32* %res, align 4, !tbaa !36
  %and = and i32 %27, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %28, i32 0) #5
  %29 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %30 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline10 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %30, i32 0, i32 34
  %31 = load i32, i32* %curvline10, align 4, !tbaa !49
  %32 = load i32, i32* %lline, align 4, !tbaa !36
  %sub = sub nsw i32 %31, %32
  call void @finalizeheader(%struct.pagedata_s* %29, i32 %sub, i32 0) #5
  %33 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave11 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %33, i32 0, i32 38
  store i32 0, i32* %ileave11, align 4, !tbaa !53
  %34 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %34) #5
  %35 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline12 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %35, i32 0, i32 34
  %36 = load i32, i32* %curvline12, align 4, !tbaa !49
  store i32 %36, i32* %lline, align 4, !tbaa !36
  %37 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres13 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %37, i32 0, i32 16
  %38 = load i32, i32* %yres13, align 4, !tbaa !30
  %cmp14 = icmp eq i32 %38, 1200
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %while.body
  %39 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %39, i32 1, i32 0) #5
  %40 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave16 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %40, i32 0, i32 38
  store i32 1, i32* %ileave16, align 4, !tbaa !53
  %41 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %41) #5
  %42 = load i32, i32* %lline, align 4, !tbaa !36
  %inc17 = add nsw i32 %42, 1
  store i32 %inc17, i32* %lline, align 4, !tbaa !36
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %while.body
  %43 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %44 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline19 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %44, i32 0, i32 34
  %45 = load i32, i32* %curvline19, align 4, !tbaa !49
  %46 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numblines20 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %46, i32 0, i32 3
  %47 = load i32, i32* %numblines20, align 4, !tbaa !58
  %add21 = add nsw i32 %45, %47
  %call22 = call i32 @fill_mono_buffer(%struct.pagedata_s* %43, i32 %add21) #5
  store i32 %call22, i32* %res, align 4, !tbaa !36
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load i32, i32* %res, align 4, !tbaa !36
  %and23 = and i32 %48, 2
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %while.end
  %49 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @calcbufmargins(%struct.pagedata_s* %49, i32 0) #5
  %50 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %51 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline26 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %51, i32 0, i32 34
  %52 = load i32, i32* %curvline26, align 4, !tbaa !49
  %53 = load i32, i32* %lline, align 4, !tbaa !36
  %sub27 = sub nsw i32 %52, %53
  call void @finalizeheader(%struct.pagedata_s* %50, i32 %sub27, i32 0) #5
  %54 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %54) #5
  %55 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres28 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %55, i32 0, i32 16
  %56 = load i32, i32* %yres28, align 4, !tbaa !30
  %cmp29 = icmp eq i32 %56, 1200
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.then.25
  %57 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %57, i32 1, i32 0) #5
  %58 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave31 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %58, i32 0, i32 38
  store i32 1, i32* %ileave31, align 4, !tbaa !53
  %59 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @encode_bw_buf(%struct.pagedata_s* %59) #5
  %60 = load i32, i32* %lline, align 4, !tbaa !36
  %inc32 = add nsw i32 %60, 1
  store i32 %inc32, i32* %lline, align 4, !tbaa !36
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.then.25
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %while.end
  %61 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  call void @finalizeheader(%struct.pagedata_s* %61, i32 0, i32 -1) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then
  %62 = bitcast i32* %lline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
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

; Function Attrs: nounwind uwtable
define internal void @outputepilogue(%struct.pagedata_s* %gendata) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %trailer = alloca [24 x i8], align 16
  %pos = alloca i32, align 4
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %0 = bitcast [24 x i8]* %trailer to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %arrayidx = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 0
  store i8 27, i8* %arrayidx, align 1, !tbaa !96
  %arrayidx1 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 1
  store i8 34, i8* %arrayidx1, align 1, !tbaa !96
  %arrayidx2 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 2
  store i8 -128, i8* %arrayidx2, align 1, !tbaa !96
  %2 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %linetoeject = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %2, i32 0, i32 20
  %3 = load i32, i32* %linetoeject, align 4, !tbaa !74
  %shr = ashr i32 %3, 8
  %conv = trunc i32 %shr to i8
  %arrayidx3 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 3
  store i8 %conv, i8* %arrayidx3, align 1, !tbaa !96
  %4 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %linetoeject4 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %4, i32 0, i32 20
  %5 = load i32, i32* %linetoeject4, align 4, !tbaa !74
  %and = and i32 %5, 255
  %conv5 = trunc i32 %and to i8
  %arrayidx6 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 4
  store i8 %conv5, i8* %arrayidx6, align 1, !tbaa !96
  %arrayidx7 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 5
  store i8 0, i8* %arrayidx7, align 1, !tbaa !96
  %arrayidx8 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 6
  store i8 0, i8* %arrayidx8, align 1, !tbaa !96
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i32 0
  %call = call zeroext i8 @calccheck8(i8* %arraydecay) #5
  %arrayidx9 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 7
  store i8 %call, i8* %arrayidx9, align 1, !tbaa !96
  %6 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %6, i32 0, i32 19
  %7 = load i32, i32* %curheadpos, align 4, !tbaa !45
  store i32 %7, i32* %pos, align 4, !tbaa !36
  %8 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %bidirprint = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %8, i32 0, i32 9
  %9 = load i32, i32* %bidirprint, align 4, !tbaa !55
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %10, i32 0, i32 21
  %11 = load i32, i32* %direction, align 4, !tbaa !52
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %pos, align 4, !tbaa !36
  %sub = sub nsw i32 %12, 168
  store i32 %sub, i32* %pos, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load i32, i32* %pos, align 4, !tbaa !36
  %cmp11 = icmp slt i32 %13, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 0, i32* %pos, align 4, !tbaa !36
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %arrayidx15 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 8
  store i8 27, i8* %arrayidx15, align 1, !tbaa !96
  %arrayidx16 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 9
  store i8 49, i8* %arrayidx16, align 1, !tbaa !96
  %arrayidx17 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 10
  store i8 16, i8* %arrayidx17, align 1, !tbaa !96
  %14 = load i32, i32* %pos, align 4, !tbaa !36
  %shr18 = ashr i32 %14, 8
  %conv19 = trunc i32 %shr18 to i8
  %arrayidx20 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 11
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !96
  %15 = load i32, i32* %pos, align 4, !tbaa !36
  %and21 = and i32 %15, 255
  %conv22 = trunc i32 %and21 to i8
  %arrayidx23 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 12
  store i8 %conv22, i8* %arrayidx23, align 1, !tbaa !96
  %arrayidx24 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 13
  store i8 0, i8* %arrayidx24, align 1, !tbaa !96
  %arrayidx25 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 14
  store i8 0, i8* %arrayidx25, align 1, !tbaa !96
  %arraydecay26 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay26, i64 8
  %call27 = call zeroext i8 @calccheck8(i8* %add.ptr) #5
  %arrayidx28 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 15
  store i8 %call27, i8* %arrayidx28, align 1, !tbaa !96
  %arrayidx29 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 16
  store i8 27, i8* %arrayidx29, align 1, !tbaa !96
  %arrayidx30 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 17
  store i8 51, i8* %arrayidx30, align 1, !tbaa !96
  %arrayidx31 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 18
  store i8 0, i8* %arrayidx31, align 1, !tbaa !96
  %arrayidx32 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 19
  store i8 0, i8* %arrayidx32, align 1, !tbaa !96
  %arrayidx33 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 20
  store i8 0, i8* %arrayidx33, align 1, !tbaa !96
  %arrayidx34 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 21
  store i8 0, i8* %arrayidx34, align 1, !tbaa !96
  %arrayidx35 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 22
  store i8 0, i8* %arrayidx35, align 1, !tbaa !96
  %arrayidx36 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i64 23
  store i8 51, i8* %arrayidx36, align 1, !tbaa !96
  %arraydecay37 = getelementptr inbounds [24 x i8], [24 x i8]* %trailer, i32 0, i32 0
  %16 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %16, i32 0, i32 28
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !8
  %call38 = call i64 @fwrite(i8* %arraydecay37, i64 8, i64 3, %struct._IO_FILE* %17) #5
  %18 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast [24 x i8]* %trailer to i8*
  call void @llvm.lifetime.end(i64 24, i8* %19) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @init_buffer(%struct.pagedata_s* %gendata) #1 {
entry:
  %retval = alloca i32, align 4
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %in_data = alloca i8*, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %ofs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %0 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %p2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %ofs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %7, i32 0, i32 27
  %8 = load i8*, i8** %scanbuf, align 8, !tbaa !44
  store i8* %8, i8** %data, align 8, !tbaa !1
  %9 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %goffset = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %9, i32 0, i32 2
  %10 = load i32, i32* %goffset, align 4, !tbaa !71
  store i32 %10, i32* %ofs, align 4, !tbaa !36
  %11 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %rendermode = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %11, i32 0, i32 5
  %12 = load i32, i32* %rendermode, align 4, !tbaa !25
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call = call i32 @fill_mono_buffer(%struct.pagedata_s* %13, i32 0) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %14, i32 0, i32 18
  %15 = load i32, i32* %yrmul, align 4, !tbaa !31
  %div = sdiv i32 368, %15
  store i32 %div, i32* %p1, align 4, !tbaa !36
  %16 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul1 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %16, i32 0, i32 18
  %17 = load i32, i32* %yrmul1, align 4, !tbaa !31
  %div2 = sdiv i32 144, %17
  store i32 %div2, i32* %p2, align 4, !tbaa !36
  %18 = load i32, i32* %p1, align 4, !tbaa !36
  %sub = sub nsw i32 0, %18
  %19 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %19, i32 0, i32 34
  store i32 %sub, i32* %curvline, align 4, !tbaa !49
  %20 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline3 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %20, i32 0, i32 34
  %21 = load i32, i32* %curvline3, align 4, !tbaa !49
  %sub4 = sub nsw i32 %21, 1
  %22 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %lastblack = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %22, i32 0, i32 33
  store i32 %sub4, i32* %lastblack, align 4, !tbaa !48
  %23 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf5 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %23, i32 0, i32 27
  %24 = load i8*, i8** %scanbuf5, align 8, !tbaa !44
  store i8* %24, i8** %data, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4, !tbaa !36
  %26 = load i32, i32* %p1, align 4, !tbaa !36
  %cmp6 = icmp slt i32 %25, %26
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %data, align 8, !tbaa !1
  %28 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %28, i32 0, i32 0
  %29 = load i32, i32* %numbytes, align 4, !tbaa !72
  %conv = sext i32 %29 to i64
  %call7 = call i8* @memset(i8* %27, i32 0, i64 %conv) #6
  %30 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes8 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %30, i32 0, i32 0
  %31 = load i32, i32* %numbytes8, align 4, !tbaa !72
  %32 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !tbaa !36
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !36
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !36
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.36, %for.end
  %34 = load i32, i32* %i, align 4, !tbaa !36
  %35 = load i32, i32* %p2, align 4, !tbaa !36
  %cmp10 = icmp slt i32 %34, %35
  br i1 %cmp10, label %for.body.12, label %for.end.38

for.body.12:                                      ; preds = %for.cond.9
  %36 = load i8*, i8** %data, align 8, !tbaa !1
  %37 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes13 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %37, i32 0, i32 0
  %38 = load i32, i32* %numbytes13, align 4, !tbaa !72
  %conv14 = sext i32 %38 to i64
  %call15 = call i8* @memset(i8* %36, i32 0, i64 %conv14) #6
  %39 = load i32, i32* %i, align 4, !tbaa !36
  %40 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numvlines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %40, i32 0, i32 6
  %41 = load i32, i32* %numvlines, align 4, !tbaa !64
  %cmp16 = icmp slt i32 %39, %41
  br i1 %cmp16, label %if.then.18, label %if.end.32

if.then.18:                                       ; preds = %for.body.12
  %42 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %42, i32 0, i32 29
  %43 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !5
  %44 = bitcast %struct.lxm_device_s* %43 to %struct.gx_device_printer_s*
  %45 = load i32, i32* %i, align 4, !tbaa !36
  %46 = load i8*, i8** %data, align 8, !tbaa !1
  %47 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext19 = sext i32 %47 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %46, i64 %idx.ext19
  %call21 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %44, i32 %45, i8* %add.ptr20, i8** %in_data) #5
  %48 = load i8*, i8** %in_data, align 8, !tbaa !1
  %49 = load i8*, i8** %data, align 8, !tbaa !1
  %50 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext22 = sext i32 %50 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %49, i64 %idx.ext22
  %cmp24 = icmp ne i8* %48, %add.ptr23
  br i1 %cmp24, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.then.18
  %51 = load i8*, i8** %data, align 8, !tbaa !1
  %52 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext27 = sext i32 %52 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %51, i64 %idx.ext27
  %53 = load i8*, i8** %in_data, align 8, !tbaa !1
  %54 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numrbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %54, i32 0, i32 1
  %55 = load i32, i32* %numrbytes, align 4, !tbaa !73
  %conv29 = sext i32 %55 to i64
  %call30 = call i8* @memcpy(i8* %add.ptr28, i8* %53, i64 %conv29) #6
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %if.then.18
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.body.12
  %56 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes33 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %56, i32 0, i32 0
  %57 = load i32, i32* %numbytes33, align 4, !tbaa !72
  %58 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext34 = sext i32 %57 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %58, i64 %idx.ext34
  store i8* %add.ptr35, i8** %data, align 8, !tbaa !1
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.32
  %59 = load i32, i32* %i, align 4, !tbaa !36
  %inc37 = add nsw i32 %59, 1
  store i32 %inc37, i32* %i, align 4, !tbaa !36
  br label %for.cond.9

for.end.38:                                       ; preds = %for.cond.9
  %60 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %60, i32 0, i32 32
  store i32 0, i32* %firstline, align 4, !tbaa !50
  %61 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numvlines39 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %61, i32 0, i32 6
  %62 = load i32, i32* %numvlines39, align 4, !tbaa !64
  %63 = load i32, i32* %p2, align 4, !tbaa !36
  %cmp40 = icmp slt i32 %62, %63
  %cond = select i1 %cmp40, i32 1, i32 0
  %64 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call42 = call i32 @qualify_buffer(%struct.pagedata_s* %64) #5
  %or = or i32 %cond, %call42
  store i32 %or, i32* %ret, align 4, !tbaa !36
  %65 = load i32, i32* %ret, align 4, !tbaa !36
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.38, %if.then
  %66 = bitcast i32* %ofs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %p2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal i32 @roll_buffer(%struct.pagedata_s* %gendata) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %fline = alloca i32, align 4
  %vl = alloca i32, align 4
  %ofs = alloca i32, align 4
  %cpen = alloca i32, align 4
  %cmask = alloca i32, align 4
  %lline = alloca i32, align 4
  %data = alloca i8*, align 8
  %in_data = alloca i8*, align 8
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %fline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %vl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %ofs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %cpen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %cmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %lline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %10, i32 0, i32 18
  %11 = load i32, i32* %yrmul, align 4, !tbaa !31
  %div = sdiv i32 128, %11
  store i32 %div, i32* %cpen, align 4, !tbaa !36
  %12 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numblines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %12, i32 0, i32 3
  %13 = load i32, i32* %numblines, align 4, !tbaa !58
  %sub = sub nsw i32 %13, 1
  store i32 %sub, i32* %cmask, align 4, !tbaa !36
  %14 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numvlines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %14, i32 0, i32 6
  %15 = load i32, i32* %numvlines, align 4, !tbaa !64
  %16 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul1 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %16, i32 0, i32 18
  %17 = load i32, i32* %yrmul1, align 4, !tbaa !31
  %div2 = sdiv i32 224, %17
  %sub3 = sub nsw i32 %15, %div2
  store i32 %sub3, i32* %lline, align 4, !tbaa !36
  %18 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %18, i32 0, i32 32
  %19 = load i32, i32* %firstline, align 4, !tbaa !50
  store i32 %19, i32* %fline, align 4, !tbaa !36
  %20 = load i32, i32* %fline, align 4, !tbaa !36
  %21 = load i32, i32* %cpen, align 4, !tbaa !36
  %add = add nsw i32 %20, %21
  %22 = load i32, i32* %cmask, align 4, !tbaa !36
  %and = and i32 %add, %22
  %23 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline4 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %23, i32 0, i32 32
  store i32 %and, i32* %firstline4, align 4, !tbaa !50
  %24 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %24, i32 0, i32 34
  %25 = load i32, i32* %curvline, align 4, !tbaa !49
  %26 = load i32, i32* %cmask, align 4, !tbaa !36
  %add5 = add nsw i32 %25, %26
  %add6 = add nsw i32 %add5, 1
  store i32 %add6, i32* %vl, align 4, !tbaa !36
  %27 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %goffset = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %27, i32 0, i32 2
  %28 = load i32, i32* %goffset, align 4, !tbaa !71
  store i32 %28, i32* %ofs, align 4, !tbaa !36
  store i32 0, i32* %ret, align 4, !tbaa !36
  %29 = load i32, i32* %cpen, align 4, !tbaa !36
  %30 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline7 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %30, i32 0, i32 34
  %31 = load i32, i32* %curvline7, align 4, !tbaa !49
  %add8 = add nsw i32 %31, %29
  store i32 %add8, i32* %curvline7, align 4, !tbaa !49
  %32 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline9 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %32, i32 0, i32 34
  %33 = load i32, i32* %curvline9, align 4, !tbaa !49
  %34 = load i32, i32* %lline, align 4, !tbaa !36
  %cmp = icmp sge i32 %33, %34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %ret, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %35 = load i32, i32* %i, align 4, !tbaa !36
  %36 = load i32, i32* %cpen, align 4, !tbaa !36
  %cmp10 = icmp slt i32 %35, %36
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %37, i32 0, i32 27
  %38 = load i8*, i8** %scanbuf, align 8, !tbaa !44
  %39 = load i32, i32* %fline, align 4, !tbaa !36
  %40 = load i32, i32* %i, align 4, !tbaa !36
  %add11 = add nsw i32 %39, %40
  %41 = load i32, i32* %cmask, align 4, !tbaa !36
  %and12 = and i32 %add11, %41
  %42 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %42, i32 0, i32 0
  %43 = load i32, i32* %numbytes, align 4, !tbaa !72
  %mul = mul nsw i32 %and12, %43
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  %44 = load i8*, i8** %data, align 8, !tbaa !1
  %45 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes13 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %45, i32 0, i32 0
  %46 = load i32, i32* %numbytes13, align 4, !tbaa !72
  %conv = sext i32 %46 to i64
  %call = call i8* @memset(i8* %44, i32 0, i64 %conv) #6
  %47 = load i32, i32* %vl, align 4, !tbaa !36
  %48 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numvlines14 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %48, i32 0, i32 6
  %49 = load i32, i32* %numvlines14, align 4, !tbaa !64
  %cmp15 = icmp slt i32 %47, %49
  br i1 %cmp15, label %if.then.17, label %if.end.31

if.then.17:                                       ; preds = %for.body
  %50 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %50, i32 0, i32 29
  %51 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !5
  %52 = bitcast %struct.lxm_device_s* %51 to %struct.gx_device_printer_s*
  %53 = load i32, i32* %vl, align 4, !tbaa !36
  %54 = load i8*, i8** %data, align 8, !tbaa !1
  %55 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext18 = sext i32 %55 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %54, i64 %idx.ext18
  %call20 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %52, i32 %53, i8* %add.ptr19, i8** %in_data) #5
  %56 = load i8*, i8** %in_data, align 8, !tbaa !1
  %57 = load i8*, i8** %data, align 8, !tbaa !1
  %58 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext21 = sext i32 %58 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %57, i64 %idx.ext21
  %cmp23 = icmp ne i8* %56, %add.ptr22
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.then.17
  %59 = load i8*, i8** %data, align 8, !tbaa !1
  %60 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext26 = sext i32 %60 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %59, i64 %idx.ext26
  %61 = load i8*, i8** %in_data, align 8, !tbaa !1
  %62 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numrbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %62, i32 0, i32 1
  %63 = load i32, i32* %numrbytes, align 4, !tbaa !73
  %conv28 = sext i32 %63 to i64
  %call29 = call i8* @memcpy(i8* %add.ptr27, i8* %61, i64 %conv28) #6
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.then.17
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %for.body
  %64 = load i32, i32* %vl, align 4, !tbaa !36
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %vl, align 4, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %65 = load i32, i32* %i, align 4, !tbaa !36
  %inc32 = add nsw i32 %65, 1
  store i32 %inc32, i32* %i, align 4, !tbaa !36
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %call33 = call i32 @qualify_buffer(%struct.pagedata_s* %66) #5
  %67 = load i32, i32* %ret, align 4, !tbaa !36
  %or = or i32 %67, %call33
  store i32 %or, i32* %ret, align 4, !tbaa !36
  %68 = load i32, i32* %ret, align 4, !tbaa !36
  %69 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast i32* %lline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i32* %cmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %cpen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %ofs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %vl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %fline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal void @skiplines(%struct.pagedata_s* %gendata, i32 %skiprow, i32 %skipin) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %skiprow.addr = alloca i32, align 4
  %skipin.addr = alloca i32, align 4
  %escape = alloca [8 x i8], align 1
  %vskip = alloca i32, align 4
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  store i32 %skiprow, i32* %skiprow.addr, align 4, !tbaa !36
  store i32 %skipin, i32* %skipin.addr, align 4, !tbaa !36
  %0 = bitcast [8 x i8]* %escape to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %vskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %skiprow.addr, align 4, !tbaa !36
  %3 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %3, i32 0, i32 18
  %4 = load i32, i32* %yrmul, align 4, !tbaa !31
  %mul = mul nsw i32 %2, %4
  %5 = load i32, i32* %skipin.addr, align 4, !tbaa !36
  %add = add nsw i32 %mul, %5
  store i32 %add, i32* %vskip, align 4, !tbaa !36
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %escape, i32 0, i64 0
  store i8 27, i8* %arrayidx, align 1, !tbaa !96
  %arrayidx1 = getelementptr inbounds [8 x i8], [8 x i8]* %escape, i32 0, i64 1
  store i8 35, i8* %arrayidx1, align 1, !tbaa !96
  %arrayidx2 = getelementptr inbounds [8 x i8], [8 x i8]* %escape, i32 0, i64 2
  store i8 -128, i8* %arrayidx2, align 1, !tbaa !96
  %6 = load i32, i32* %vskip, align 4, !tbaa !36
  %shr = ashr i32 %6, 8
  %conv = trunc i32 %shr to i8
  %arrayidx3 = getelementptr inbounds [8 x i8], [8 x i8]* %escape, i32 0, i64 3
  store i8 %conv, i8* %arrayidx3, align 1, !tbaa !96
  %7 = load i32, i32* %vskip, align 4, !tbaa !36
  %and = and i32 %7, 255
  %conv4 = trunc i32 %and to i8
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %escape, i32 0, i64 4
  store i8 %conv4, i8* %arrayidx5, align 1, !tbaa !96
  %arrayidx6 = getelementptr inbounds [8 x i8], [8 x i8]* %escape, i32 0, i64 5
  store i8 0, i8* %arrayidx6, align 1, !tbaa !96
  %arrayidx7 = getelementptr inbounds [8 x i8], [8 x i8]* %escape, i32 0, i64 6
  store i8 0, i8* %arrayidx7, align 1, !tbaa !96
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %escape, i32 0, i32 0
  %call = call zeroext i8 @calccheck8(i8* %arraydecay) #5
  %arrayidx8 = getelementptr inbounds [8 x i8], [8 x i8]* %escape, i32 0, i64 7
  store i8 %call, i8* %arrayidx8, align 1, !tbaa !96
  %8 = load i32, i32* %vskip, align 4, !tbaa !36
  %9 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %linetoeject = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %9, i32 0, i32 20
  %10 = load i32, i32* %linetoeject, align 4, !tbaa !74
  %sub = sub nsw i32 %10, %8
  store i32 %sub, i32* %linetoeject, align 4, !tbaa !74
  %arraydecay9 = getelementptr inbounds [8 x i8], [8 x i8]* %escape, i32 0, i32 0
  %11 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %11, i32 0, i32 28
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !8
  %call10 = call i64 @fwrite(i8* %arraydecay9, i64 8, i64 1, %struct._IO_FILE* %12) #5
  %13 = bitcast i32* %vskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast [8 x i8]* %escape to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calcbufmargins(%struct.pagedata_s* %gendata, i32 %head) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %head.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %l1 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %q = alloca i32, align 4
  %k = alloca i32, align 4
  %mleft = alloca i32, align 4
  %mright = alloca i32, align 4
  %nl = alloca i32, align 4
  %cpen = alloca i32, align 4
  %cmask = alloca i32, align 4
  %al = alloca i32, align 4
  %scan = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  store i32 %head, i32* %head.addr, align 4, !tbaa !36
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %l1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %r1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %mleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %mright to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %cpen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %cmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %al to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %12, i32 0, i32 18
  %13 = load i32, i32* %yrmul, align 4, !tbaa !31
  %div = sdiv i32 128, %13
  store i32 %div, i32* %cpen, align 4, !tbaa !36
  %14 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numblines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %14, i32 0, i32 3
  %15 = load i32, i32* %numblines, align 4, !tbaa !58
  %sub = sub nsw i32 %15, 1
  store i32 %sub, i32* %cmask, align 4, !tbaa !36
  %16 = load i32, i32* %head.addr, align 4, !tbaa !36
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %rendermode = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %17, i32 0, i32 5
  %18 = load i32, i32* %rendermode, align 4, !tbaa !25
  %cmp1 = icmp eq i32 %18, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %19 = load i32, i32* %head.addr, align 4, !tbaa !36
  %cmp2 = icmp eq i32 %19, 0
  %cond = select i1 %cmp2, i32 2, i32 0
  store i32 %cond, i32* %al, align 4, !tbaa !36
  %20 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %20, i32 0, i32 32
  %21 = load i32, i32* %firstline, align 4, !tbaa !50
  %22 = load i32, i32* %al, align 4, !tbaa !36
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %23, i32 0, i32 29
  %24 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !5
  %valign = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %24, i32 0, i32 80
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %valign, i32 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4, !tbaa !36
  %add = add nsw i32 %21, %25
  store i32 %add, i32* %q, align 4, !tbaa !36
  %26 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %26, i32 0, i32 27
  %27 = load i8*, i8** %scanbuf, align 8, !tbaa !44
  %28 = load i32, i32* %q, align 4, !tbaa !36
  %29 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev3 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %29, i32 0, i32 29
  %30 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev3, align 8, !tbaa !5
  %penofs = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %30, i32 0, i32 79
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs, i32 0, i64 0
  %31 = load i32, i32* %arrayidx4, align 4, !tbaa !36
  %add5 = add nsw i32 %28, %31
  %32 = load i32, i32* %cmask, align 4, !tbaa !36
  %and = and i32 %add5, %32
  %33 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %33, i32 0, i32 0
  %34 = load i32, i32* %numbytes, align 4, !tbaa !72
  %mul = mul nsw i32 %and, %34
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %scan, align 8, !tbaa !1
  %35 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %scan, align 8, !tbaa !1
  %37 = load i32, i32* %head.addr, align 4, !tbaa !36
  %idxprom6 = sext i32 %37 to i64
  %arrayidx7 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* @colmask, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx7, i32 0, i64 0
  %38 = load i8, i8* %arrayidx8, align 1, !tbaa !96
  %conv = zext i8 %38 to i32
  call void @calclinemargins(%struct.pagedata_s* %35, i8* %36, i32 %conv, i32* %mleft, i32* %mright) #5
  store i32 0, i32* %k, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %if.then
  %39 = load i32, i32* %k, align 4, !tbaa !36
  %cmp9 = icmp slt i32 %39, 3
  br i1 %cmp9, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !36
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %40 = load i32, i32* %i, align 4, !tbaa !36
  %41 = load i32, i32* %cpen, align 4, !tbaa !36
  %cmp12 = icmp slt i32 %40, %41
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %42 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf15 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %42, i32 0, i32 27
  %43 = load i8*, i8** %scanbuf15, align 8, !tbaa !44
  %44 = load i32, i32* %q, align 4, !tbaa !36
  %45 = load i32, i32* %i, align 4, !tbaa !36
  %add16 = add nsw i32 %44, %45
  %46 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom17 = sext i32 %46 to i64
  %47 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev18 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %47, i32 0, i32 29
  %48 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev18, align 8, !tbaa !5
  %penofs19 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %48, i32 0, i32 79
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs19, i32 0, i64 %idxprom17
  %49 = load i32, i32* %arrayidx20, align 4, !tbaa !36
  %add21 = add nsw i32 %add16, %49
  %50 = load i32, i32* %cmask, align 4, !tbaa !36
  %and22 = and i32 %add21, %50
  %51 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes23 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %51, i32 0, i32 0
  %52 = load i32, i32* %numbytes23, align 4, !tbaa !72
  %mul24 = mul nsw i32 %and22, %52
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %43, i64 %idx.ext25
  store i8* %add.ptr26, i8** %scan, align 8, !tbaa !1
  %53 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %scan, align 8, !tbaa !1
  %55 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom27 = sext i32 %55 to i64
  %56 = load i32, i32* %head.addr, align 4, !tbaa !36
  %idxprom28 = sext i32 %56 to i64
  %arrayidx29 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* @colmask, i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx29, i32 0, i64 %idxprom27
  %57 = load i8, i8* %arrayidx30, align 1, !tbaa !96
  %conv31 = zext i8 %57 to i32
  call void @calclinemargins(%struct.pagedata_s* %53, i8* %54, i32 %conv31, i32* %l1, i32* %r1) #5
  %58 = load i32, i32* %mleft, align 4, !tbaa !36
  %59 = load i32, i32* %l1, align 4, !tbaa !36
  %cmp32 = icmp slt i32 %58, %59
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.14
  %60 = load i32, i32* %mleft, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %for.body.14
  %61 = load i32, i32* %l1, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond34 = phi i32 [ %60, %cond.true ], [ %61, %cond.false ]
  store i32 %cond34, i32* %mleft, align 4, !tbaa !36
  %62 = load i32, i32* %mright, align 4, !tbaa !36
  %63 = load i32, i32* %r1, align 4, !tbaa !36
  %cmp35 = icmp sgt i32 %62, %63
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end
  %64 = load i32, i32* %mright, align 4, !tbaa !36
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.end
  %65 = load i32, i32* %r1, align 4, !tbaa !36
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi i32 [ %64, %cond.true.37 ], [ %65, %cond.false.38 ]
  store i32 %cond40, i32* %mright, align 4, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %cond.end.39
  %66 = load i32, i32* %i, align 4, !tbaa !36
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4, !tbaa !36
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %67 = load i32, i32* %k, align 4, !tbaa !36
  %inc42 = add nsw i32 %67, 1
  store i32 %inc42, i32* %k, align 4, !tbaa !36
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %68 = load i32, i32* %mleft, align 4, !tbaa !36
  %69 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %69, i32 0, i32 30
  store i32 %68, i32* %left, align 4, !tbaa !46
  %70 = load i32, i32* %mright, align 4, !tbaa !36
  %71 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %right = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %71, i32 0, i32 31
  store i32 %70, i32* %right, align 4, !tbaa !47
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %72 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %rendermode44 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %72, i32 0, i32 5
  %73 = load i32, i32* %rendermode44, align 4, !tbaa !25
  %cmp45 = icmp eq i32 %73, 0
  br i1 %cmp45, label %if.then.47, label %if.end.74

if.then.47:                                       ; preds = %if.end
  %74 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf48 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %74, i32 0, i32 27
  %75 = load i8*, i8** %scanbuf48, align 8, !tbaa !44
  store i8* %75, i8** %scan, align 8, !tbaa !1
  %76 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %77 = load i8*, i8** %scan, align 8, !tbaa !1
  call void @calclinemargins(%struct.pagedata_s* %76, i8* %77, i32 64, i32* %mleft, i32* %mright) #5
  store i32 1, i32* %i, align 4, !tbaa !36
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.69, %if.then.47
  %78 = load i32, i32* %i, align 4, !tbaa !36
  %79 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numblines50 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %79, i32 0, i32 3
  %80 = load i32, i32* %numblines50, align 4, !tbaa !58
  %cmp51 = icmp slt i32 %78, %80
  br i1 %cmp51, label %for.body.53, label %for.end.71

for.body.53:                                      ; preds = %for.cond.49
  %81 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes54 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %81, i32 0, i32 0
  %82 = load i32, i32* %numbytes54, align 4, !tbaa !72
  %83 = load i8*, i8** %scan, align 8, !tbaa !1
  %idx.ext55 = sext i32 %82 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %83, i64 %idx.ext55
  store i8* %add.ptr56, i8** %scan, align 8, !tbaa !1
  %84 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %85 = load i8*, i8** %scan, align 8, !tbaa !1
  call void @calclinemargins(%struct.pagedata_s* %84, i8* %85, i32 64, i32* %l1, i32* %r1) #5
  %86 = load i32, i32* %mleft, align 4, !tbaa !36
  %87 = load i32, i32* %l1, align 4, !tbaa !36
  %cmp57 = icmp slt i32 %86, %87
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %for.body.53
  %88 = load i32, i32* %mleft, align 4, !tbaa !36
  br label %cond.end.61

cond.false.60:                                    ; preds = %for.body.53
  %89 = load i32, i32* %l1, align 4, !tbaa !36
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.59
  %cond62 = phi i32 [ %88, %cond.true.59 ], [ %89, %cond.false.60 ]
  store i32 %cond62, i32* %mleft, align 4, !tbaa !36
  %90 = load i32, i32* %mright, align 4, !tbaa !36
  %91 = load i32, i32* %r1, align 4, !tbaa !36
  %cmp63 = icmp sgt i32 %90, %91
  br i1 %cmp63, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.end.61
  %92 = load i32, i32* %mright, align 4, !tbaa !36
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.end.61
  %93 = load i32, i32* %r1, align 4, !tbaa !36
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i32 [ %92, %cond.true.65 ], [ %93, %cond.false.66 ]
  store i32 %cond68, i32* %mright, align 4, !tbaa !36
  br label %for.inc.69

for.inc.69:                                       ; preds = %cond.end.67
  %94 = load i32, i32* %i, align 4, !tbaa !36
  %inc70 = add nsw i32 %94, 1
  store i32 %inc70, i32* %i, align 4, !tbaa !36
  br label %for.cond.49

for.end.71:                                       ; preds = %for.cond.49
  %95 = load i32, i32* %mleft, align 4, !tbaa !36
  %96 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %left72 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %96, i32 0, i32 30
  store i32 %95, i32* %left72, align 4, !tbaa !46
  %97 = load i32, i32* %mright, align 4, !tbaa !36
  %98 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %right73 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %98, i32 0, i32 31
  store i32 %97, i32* %right73, align 4, !tbaa !47
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %if.end
  %99 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numlines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %99, i32 0, i32 4
  %100 = load i32, i32* %numlines, align 4, !tbaa !59
  %mul75 = mul nsw i32 %100, 2
  %101 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul76 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %101, i32 0, i32 18
  %102 = load i32, i32* %yrmul76, align 4, !tbaa !31
  %div77 = sdiv i32 %mul75, %102
  store i32 %div77, i32* %nl, align 4, !tbaa !36
  %103 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline78 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %103, i32 0, i32 32
  %104 = load i32, i32* %firstline78, align 4, !tbaa !50
  %105 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev79 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %105, i32 0, i32 29
  %106 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev79, align 8, !tbaa !5
  %valign80 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %106, i32 0, i32 80
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %valign80, i32 0, i64 1
  %107 = load i32, i32* %arrayidx81, align 4, !tbaa !36
  %add82 = add nsw i32 %104, %107
  store i32 %add82, i32* %q, align 4, !tbaa !36
  %108 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf83 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %108, i32 0, i32 27
  %109 = load i8*, i8** %scanbuf83, align 8, !tbaa !44
  %110 = load i32, i32* %q, align 4, !tbaa !36
  %111 = load i32, i32* %cmask, align 4, !tbaa !36
  %and84 = and i32 %110, %111
  %112 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes85 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %112, i32 0, i32 0
  %113 = load i32, i32* %numbytes85, align 4, !tbaa !72
  %mul86 = mul nsw i32 %and84, %113
  %idx.ext87 = sext i32 %mul86 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %109, i64 %idx.ext87
  store i8* %add.ptr88, i8** %scan, align 8, !tbaa !1
  %114 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %115 = load i8*, i8** %scan, align 8, !tbaa !1
  call void @calclinemargins(%struct.pagedata_s* %114, i8* %115, i32 64, i32* %mleft, i32* %mright) #5
  store i32 1, i32* %i, align 4, !tbaa !36
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.112, %if.end.74
  %116 = load i32, i32* %i, align 4, !tbaa !36
  %117 = load i32, i32* %nl, align 4, !tbaa !36
  %cmp90 = icmp slt i32 %116, %117
  br i1 %cmp90, label %for.body.92, label %for.end.114

for.body.92:                                      ; preds = %for.cond.89
  %118 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf93 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %118, i32 0, i32 27
  %119 = load i8*, i8** %scanbuf93, align 8, !tbaa !44
  %120 = load i32, i32* %q, align 4, !tbaa !36
  %121 = load i32, i32* %i, align 4, !tbaa !36
  %add94 = add nsw i32 %120, %121
  %122 = load i32, i32* %cmask, align 4, !tbaa !36
  %and95 = and i32 %add94, %122
  %123 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes96 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %123, i32 0, i32 0
  %124 = load i32, i32* %numbytes96, align 4, !tbaa !72
  %mul97 = mul nsw i32 %and95, %124
  %idx.ext98 = sext i32 %mul97 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %119, i64 %idx.ext98
  store i8* %add.ptr99, i8** %scan, align 8, !tbaa !1
  %125 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %126 = load i8*, i8** %scan, align 8, !tbaa !1
  call void @calclinemargins(%struct.pagedata_s* %125, i8* %126, i32 64, i32* %l1, i32* %r1) #5
  %127 = load i32, i32* %mleft, align 4, !tbaa !36
  %128 = load i32, i32* %l1, align 4, !tbaa !36
  %cmp100 = icmp slt i32 %127, %128
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %for.body.92
  %129 = load i32, i32* %mleft, align 4, !tbaa !36
  br label %cond.end.104

cond.false.103:                                   ; preds = %for.body.92
  %130 = load i32, i32* %l1, align 4, !tbaa !36
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.102
  %cond105 = phi i32 [ %129, %cond.true.102 ], [ %130, %cond.false.103 ]
  store i32 %cond105, i32* %mleft, align 4, !tbaa !36
  %131 = load i32, i32* %mright, align 4, !tbaa !36
  %132 = load i32, i32* %r1, align 4, !tbaa !36
  %cmp106 = icmp sgt i32 %131, %132
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %cond.end.104
  %133 = load i32, i32* %mright, align 4, !tbaa !36
  br label %cond.end.110

cond.false.109:                                   ; preds = %cond.end.104
  %134 = load i32, i32* %r1, align 4, !tbaa !36
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.108
  %cond111 = phi i32 [ %133, %cond.true.108 ], [ %134, %cond.false.109 ]
  store i32 %cond111, i32* %mright, align 4, !tbaa !36
  br label %for.inc.112

for.inc.112:                                      ; preds = %cond.end.110
  %135 = load i32, i32* %i, align 4, !tbaa !36
  %inc113 = add nsw i32 %135, 1
  store i32 %inc113, i32* %i, align 4, !tbaa !36
  br label %for.cond.89

for.end.114:                                      ; preds = %for.cond.89
  %136 = load i32, i32* %mleft, align 4, !tbaa !36
  %137 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %left115 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %137, i32 0, i32 30
  store i32 %136, i32* %left115, align 4, !tbaa !46
  %138 = load i32, i32* %mright, align 4, !tbaa !36
  %139 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %right116 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %139, i32 0, i32 31
  store i32 %138, i32* %right116, align 4, !tbaa !47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.114, %for.end.71, %for.end.43
  %140 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast i32* %al to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %cmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast i32* %cpen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %mright to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %mleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #2
  %148 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = bitcast i32* %r1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  %150 = bitcast i32* %l1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
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

; Function Attrs: nounwind uwtable
define internal void @encode_col_buf(%struct.pagedata_s* %gendata, i32 %head) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %head.addr = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %nn = alloca i32, align 4
  %mod = alloca i32, align 4
  %nxp = alloca i32, align 4
  %yy = alloca i32, align 4
  %numcols = alloca i32, align 4
  %incr = alloca i32, align 4
  %dy = alloca i32, align 4
  %dy2 = alloca i32, align 4
  %csep = alloca i32, align 4
  %pass = alloca i32, align 4
  %f1 = alloca i32, align 4
  %f2 = alloca i32, align 4
  %start = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %yincr = alloca i32, align 4
  %q = alloca i32, align 4
  %mask = alloca i32, align 4
  %k = alloca i32, align 4
  %align = alloca i32, align 4
  %lines = alloca i32, align 4
  %scan = alloca i8*, align 8
  %data = alloca i8*, align 8
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  store i32 %head, i32* %head.addr, align 4, !tbaa !36
  %0 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %nn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %nxp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %yy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %numcols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %incr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %csep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %f1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %f2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %s1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %s2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %yincr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i32* %align to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = bitcast i32* %lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %27, i32 0, i32 16
  %28 = load i32, i32* %yres, align 4, !tbaa !30
  switch i32 %28, label %sw.default [
    i32 300, label %sw.bb
    i32 600, label %sw.bb.1
    i32 1200, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %yincr, align 4, !tbaa !36
  store i32 0, i32* %s1, align 4, !tbaa !36
  store i32 0, i32* %s2, align 4, !tbaa !36
  store i32 127, i32* %mask, align 4, !tbaa !36
  store i32 32, i32* %lines, align 4, !tbaa !36
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.default
  store i32 2, i32* %yincr, align 4, !tbaa !36
  store i32 0, i32* %s1, align 4, !tbaa !36
  store i32 1, i32* %s2, align 4, !tbaa !36
  store i32 255, i32* %mask, align 4, !tbaa !36
  store i32 64, i32* %lines, align 4, !tbaa !36
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 4, i32* %yincr, align 4, !tbaa !36
  %29 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %29, i32 0, i32 38
  %30 = load i32, i32* %ileave, align 4, !tbaa !53
  %tobool = icmp ne i32 %30, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %s1, align 4, !tbaa !36
  %31 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave3 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %31, i32 0, i32 38
  %32 = load i32, i32* %ileave3, align 4, !tbaa !53
  %tobool4 = icmp ne i32 %32, 0
  %cond5 = select i1 %tobool4, i32 3, i32 2
  store i32 %cond5, i32* %s2, align 4, !tbaa !36
  store i32 511, i32* %mask, align 4, !tbaa !36
  store i32 128, i32* %lines, align 4, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb.1, %sw.bb
  %33 = load i32, i32* %head.addr, align 4, !tbaa !36
  %cmp = icmp eq i32 %33, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %34 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %34, i32 0, i32 29
  %35 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !5
  %valign = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %35, i32 0, i32 80
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %valign, i32 0, i64 2
  %36 = load i32, i32* %arrayidx, align 4, !tbaa !36
  store i32 %36, i32* %align, align 4, !tbaa !36
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %37 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev6 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %37, i32 0, i32 29
  %38 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev6, align 8, !tbaa !5
  %valign7 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %38, i32 0, i32 80
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %valign7, i32 0, i64 0
  %39 = load i32, i32* %arrayidx8, align 4, !tbaa !36
  store i32 %39, i32* %align, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %40 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %bwsep = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %40, i32 0, i32 22
  %41 = load i32, i32* %bwsep, align 4, !tbaa !68
  %mul = mul nsw i32 %41, 2
  %42 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %42, i32 0, i32 17
  %43 = load i32, i32* %xrmul, align 4, !tbaa !29
  %div = sdiv i32 %mul, %43
  store i32 %div, i32* %csep, align 4, !tbaa !36
  %44 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numpasses = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %44, i32 0, i32 8
  %45 = load i32, i32* %numpasses, align 4, !tbaa !57
  store i32 %45, i32* %nxp, align 4, !tbaa !36
  %46 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xres = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %46, i32 0, i32 15
  %47 = load i32, i32* %xres, align 4, !tbaa !26
  %cmp9 = icmp eq i32 %47, 1200
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %48 = load i32, i32* %nxp, align 4, !tbaa !36
  %div11 = sdiv i32 %48, 2
  store i32 %div11, i32* %nxp, align 4, !tbaa !36
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %49 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numlines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %49, i32 0, i32 4
  %50 = load i32, i32* %numlines, align 4, !tbaa !59
  %div13 = sdiv i32 %50, 8
  %add = add nsw i32 %div13, 4
  store i32 %add, i32* %dy, align 4, !tbaa !36
  %51 = load i32, i32* %dy, align 4, !tbaa !36
  %52 = load i32, i32* %nxp, align 4, !tbaa !36
  %mul14 = mul nsw i32 %51, %52
  store i32 %mul14, i32* %dy2, align 4, !tbaa !36
  %53 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %53, i32 0, i32 21
  %54 = load i32, i32* %direction, align 4, !tbaa !52
  %cmp15 = icmp eq i32 %54, 0
  br i1 %cmp15, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %if.end.12
  %55 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %left17 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %55, i32 0, i32 30
  %56 = load i32, i32* %left17, align 4, !tbaa !46
  %57 = load i32, i32* %csep, align 4, !tbaa !36
  %mul18 = mul nsw i32 2, %57
  %sub = sub nsw i32 %56, %mul18
  store i32 %sub, i32* %left, align 4, !tbaa !36
  %58 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %right19 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %58, i32 0, i32 31
  %59 = load i32, i32* %right19, align 4, !tbaa !47
  %60 = load i32, i32* %csep, align 4, !tbaa !36
  %add20 = add nsw i32 %59, %60
  store i32 %add20, i32* %right, align 4, !tbaa !36
  br label %if.end.27

if.else.21:                                       ; preds = %if.end.12
  %61 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %left22 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %61, i32 0, i32 30
  %62 = load i32, i32* %left22, align 4, !tbaa !46
  %63 = load i32, i32* %csep, align 4, !tbaa !36
  %sub23 = sub nsw i32 %62, %63
  store i32 %sub23, i32* %left, align 4, !tbaa !36
  %64 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %right24 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %64, i32 0, i32 31
  %65 = load i32, i32* %right24, align 4, !tbaa !47
  %66 = load i32, i32* %csep, align 4, !tbaa !36
  %mul25 = mul nsw i32 2, %66
  %add26 = add nsw i32 %65, %mul25
  store i32 %add26, i32* %right, align 4, !tbaa !36
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.21, %if.then.16
  %67 = load i32, i32* %right, align 4, !tbaa !36
  %68 = load i32, i32* %left, align 4, !tbaa !36
  %sub28 = sub nsw i32 %67, %68
  store i32 %sub28, i32* %numcols, align 4, !tbaa !36
  %69 = load i32, i32* %numcols, align 4, !tbaa !36
  %70 = load i32, i32* %numcols, align 4, !tbaa !36
  %71 = load i32, i32* %nxp, align 4, !tbaa !36
  %rem = srem i32 %70, %71
  %sub29 = sub nsw i32 %69, %rem
  store i32 %sub29, i32* %mod, align 4, !tbaa !36
  store i32 1, i32* %f1, align 4, !tbaa !36
  store i32 1, i32* %f2, align 4, !tbaa !36
  %72 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres30 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %72, i32 0, i32 16
  %73 = load i32, i32* %yres30, align 4, !tbaa !30
  %cmp31 = icmp eq i32 %73, 300
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.27
  store i32 1, i32* %f1, align 4, !tbaa !36
  store i32 0, i32* %f2, align 4, !tbaa !36
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.27
  store i32 0, i32* %pass, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc.344, %if.end.33
  %74 = load i32, i32* %pass, align 4, !tbaa !36
  %75 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numpasses34 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %75, i32 0, i32 8
  %76 = load i32, i32* %numpasses34, align 4, !tbaa !57
  %cmp35 = icmp slt i32 %74, %76
  br i1 %cmp35, label %for.body, label %for.end.346

for.body:                                         ; preds = %for.cond
  %77 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %fullflag = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %77, i32 0, i32 36
  %78 = load i32, i32* %fullflag, align 4, !tbaa !51
  %tobool36 = icmp ne i32 %78, 0
  br i1 %tobool36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %for.body
  %79 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %header = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %79, i32 0, i32 35
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %header, i32 0, i32 0
  %80 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %80, i32 0, i32 28
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !8
  %call = call i64 @fwrite(i8* %arraydecay, i64 3, i64 8, %struct._IO_FILE* %81) #5
  %82 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %82, i32 0, i32 26
  %83 = load i8*, i8** %outdata, align 8, !tbaa !43
  %84 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stripebytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %84, i32 0, i32 37
  %85 = load i32, i32* %stripebytes, align 4, !tbaa !97
  %conv = sext i32 %85 to i64
  %86 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stream38 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %86, i32 0, i32 28
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %stream38, align 8, !tbaa !8
  %call39 = call i64 @fwrite(i8* %83, i64 %conv, i64 1, %struct._IO_FILE* %87) #5
  %88 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %fullflag40 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %88, i32 0, i32 36
  store i32 0, i32* %fullflag40, align 4, !tbaa !51
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %for.body
  %89 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata42 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %89, i32 0, i32 26
  %90 = load i8*, i8** %outdata42, align 8, !tbaa !43
  %91 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %91, i32 0, i32 0
  %92 = load i32, i32* %numbytes, align 4, !tbaa !72
  %mul43 = mul nsw i32 %92, 30
  %conv44 = sext i32 %mul43 to i64
  %call45 = call i8* @memset(i8* %90, i32 0, i64 %conv44) #6
  %93 = load i32, i32* %nxp, align 4, !tbaa !36
  store i32 %93, i32* %incr, align 4, !tbaa !36
  %94 = load i32, i32* %left, align 4, !tbaa !36
  %95 = load i32, i32* %pass, align 4, !tbaa !36
  %add46 = add nsw i32 %94, %95
  store i32 %add46, i32* %start, align 4, !tbaa !36
  %96 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata47 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %96, i32 0, i32 26
  %97 = load i8*, i8** %outdata47, align 8, !tbaa !43
  %98 = load i32, i32* %pass, align 4, !tbaa !36
  %99 = load i32, i32* %dy, align 4, !tbaa !36
  %mul48 = mul nsw i32 %98, %99
  %idx.ext = sext i32 %mul48 to i64
  %add.ptr = getelementptr inbounds i8, i8* %97, i64 %idx.ext
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr, i64 4
  store i8* %add.ptr49, i8** %data, align 8, !tbaa !1
  %100 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xres50 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %100, i32 0, i32 15
  %101 = load i32, i32* %xres50, align 4, !tbaa !26
  %cmp51 = icmp eq i32 %101, 1200
  br i1 %cmp51, label %if.then.53, label %if.end.63

if.then.53:                                       ; preds = %if.end.41
  %102 = load i32, i32* %pass, align 4, !tbaa !36
  %and = and i32 %102, 1
  store i32 %and, i32* %f1, align 4, !tbaa !36
  %103 = load i32, i32* %f1, align 4, !tbaa !36
  %sub54 = sub nsw i32 1, %103
  store i32 %sub54, i32* %f2, align 4, !tbaa !36
  %104 = load i32, i32* %left, align 4, !tbaa !36
  %105 = load i32, i32* %pass, align 4, !tbaa !36
  %div55 = sdiv i32 %105, 2
  %add56 = add nsw i32 %104, %div55
  store i32 %add56, i32* %start, align 4, !tbaa !36
  %106 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata57 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %106, i32 0, i32 26
  %107 = load i8*, i8** %outdata57, align 8, !tbaa !43
  %108 = load i32, i32* %pass, align 4, !tbaa !36
  %div58 = sdiv i32 %108, 2
  %109 = load i32, i32* %dy, align 4, !tbaa !36
  %mul59 = mul nsw i32 %div58, %109
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %107, i64 %idx.ext60
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr61, i64 4
  store i8* %add.ptr62, i8** %data, align 8, !tbaa !1
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.53, %if.end.41
  %110 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction64 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %110, i32 0, i32 21
  %111 = load i32, i32* %direction64, align 4, !tbaa !52
  %cmp65 = icmp eq i32 %111, 1
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.end.63
  %112 = load i32, i32* %nxp, align 4, !tbaa !36
  %sub68 = sub nsw i32 0, %112
  store i32 %sub68, i32* %incr, align 4, !tbaa !36
  %113 = load i32, i32* %mod, align 4, !tbaa !36
  %114 = load i32, i32* %start, align 4, !tbaa !36
  %add69 = add nsw i32 %114, %113
  store i32 %add69, i32* %start, align 4, !tbaa !36
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %if.end.63
  %115 = load i32, i32* %start, align 4, !tbaa !36
  store i32 %115, i32* %x, align 4, !tbaa !36
  %116 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction71 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %116, i32 0, i32 21
  %117 = load i32, i32* %direction71, align 4, !tbaa !52
  %cmp72 = icmp eq i32 %117, 0
  br i1 %cmp72, label %if.then.74, label %if.else.201

if.then.74:                                       ; preds = %if.end.70
  store i32 0, i32* %nn, align 4, !tbaa !36
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.198, %if.then.74
  %118 = load i32, i32* %nn, align 4, !tbaa !36
  %119 = load i32, i32* %numcols, align 4, !tbaa !36
  %cmp76 = icmp slt i32 %118, %119
  br i1 %cmp76, label %for.body.78, label %for.end.200

for.body.78:                                      ; preds = %for.cond.75
  %120 = load i32, i32* %x, align 4, !tbaa !36
  %cmp79 = icmp sge i32 %120, 0
  br i1 %cmp79, label %land.lhs.true, label %if.end.126

land.lhs.true:                                    ; preds = %for.body.78
  %121 = load i32, i32* %f1, align 4, !tbaa !36
  %tobool81 = icmp ne i32 %121, 0
  br i1 %tobool81, label %if.then.82, label %if.end.126

if.then.82:                                       ; preds = %land.lhs.true
  %122 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %122, i32 0, i32 27
  %123 = load i8*, i8** %scanbuf, align 8, !tbaa !44
  %124 = load i32, i32* %x, align 4, !tbaa !36
  %idx.ext83 = sext i32 %124 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %123, i64 %idx.ext83
  store i8* %add.ptr84, i8** %scan, align 8, !tbaa !1
  store i32 0, i32* %yy, align 4, !tbaa !36
  store i32 0, i32* %k, align 4, !tbaa !36
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.124, %if.then.82
  %125 = load i32, i32* %k, align 4, !tbaa !36
  %cmp86 = icmp slt i32 %125, 3
  br i1 %cmp86, label %for.body.88, label %for.end.125

for.body.88:                                      ; preds = %for.cond.85
  %126 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %126, i32 0, i32 32
  %127 = load i32, i32* %firstline, align 4, !tbaa !50
  %128 = load i32, i32* %align, align 4, !tbaa !36
  %add89 = add nsw i32 %127, %128
  %129 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom = sext i32 %129 to i64
  %130 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev90 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %130, i32 0, i32 29
  %131 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev90, align 8, !tbaa !5
  %penofs = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %131, i32 0, i32 79
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs, i32 0, i64 %idxprom
  %132 = load i32, i32* %arrayidx91, align 4, !tbaa !36
  %add92 = add nsw i32 %add89, %132
  store i32 %add92, i32* %q, align 4, !tbaa !36
  %133 = load i32, i32* %s1, align 4, !tbaa !36
  store i32 %133, i32* %y, align 4, !tbaa !36
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc, %for.body.88
  %134 = load i32, i32* %y, align 4, !tbaa !36
  %135 = load i32, i32* %lines, align 4, !tbaa !36
  %cmp94 = icmp slt i32 %134, %135
  br i1 %cmp94, label %for.body.96, label %for.end

for.body.96:                                      ; preds = %for.cond.93
  %136 = load i32, i32* %y, align 4, !tbaa !36
  %137 = load i32, i32* %q, align 4, !tbaa !36
  %add97 = add nsw i32 %136, %137
  %138 = load i32, i32* %mask, align 4, !tbaa !36
  %and98 = and i32 %add97, %138
  %139 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes99 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %139, i32 0, i32 0
  %140 = load i32, i32* %numbytes99, align 4, !tbaa !72
  %mul100 = mul nsw i32 %and98, %140
  %idxprom101 = sext i32 %mul100 to i64
  %141 = load i8*, i8** %scan, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %141, i64 %idxprom101
  %142 = load i8, i8* %arrayidx102, align 1, !tbaa !96
  %conv103 = zext i8 %142 to i32
  %143 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom104 = sext i32 %143 to i64
  %144 = load i32, i32* %head.addr, align 4, !tbaa !36
  %idxprom105 = sext i32 %144 to i64
  %arrayidx106 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* @colmask, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx106, i32 0, i64 %idxprom104
  %145 = load i8, i8* %arrayidx107, align 1, !tbaa !96
  %conv108 = zext i8 %145 to i32
  %and109 = and i32 %conv103, %conv108
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.121

if.then.111:                                      ; preds = %for.body.96
  %146 = load i32, i32* %yy, align 4, !tbaa !36
  %and112 = and i32 %146, 7
  %idxprom113 = sext i32 %and112 to i64
  %arrayidx114 = getelementptr inbounds [8 x i8], [8 x i8]* @bits, i32 0, i64 %idxprom113
  %147 = load i8, i8* %arrayidx114, align 1, !tbaa !96
  %conv115 = zext i8 %147 to i32
  %148 = load i32, i32* %yy, align 4, !tbaa !36
  %div116 = sdiv i32 %148, 8
  %idxprom117 = sext i32 %div116 to i64
  %149 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i8, i8* %149, i64 %idxprom117
  %150 = load i8, i8* %arrayidx118, align 1, !tbaa !96
  %conv119 = zext i8 %150 to i32
  %or = or i32 %conv119, %conv115
  %conv120 = trunc i32 %or to i8
  store i8 %conv120, i8* %arrayidx118, align 1, !tbaa !96
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.111, %for.body.96
  %151 = load i32, i32* %yy, align 4, !tbaa !36
  %add122 = add nsw i32 %151, 2
  store i32 %add122, i32* %yy, align 4, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %if.end.121
  %152 = load i32, i32* %yincr, align 4, !tbaa !36
  %153 = load i32, i32* %y, align 4, !tbaa !36
  %add123 = add nsw i32 %153, %152
  store i32 %add123, i32* %y, align 4, !tbaa !36
  br label %for.cond.93

for.end:                                          ; preds = %for.cond.93
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.end
  %154 = load i32, i32* %k, align 4, !tbaa !36
  %inc = add nsw i32 %154, 1
  store i32 %inc, i32* %k, align 4, !tbaa !36
  br label %for.cond.85

for.end.125:                                      ; preds = %for.cond.85
  br label %if.end.126

if.end.126:                                       ; preds = %for.end.125, %land.lhs.true, %for.body.78
  %155 = load i32, i32* %x, align 4, !tbaa !36
  %156 = load i32, i32* %csep, align 4, !tbaa !36
  %add127 = add nsw i32 %155, %156
  %157 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes128 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %157, i32 0, i32 0
  %158 = load i32, i32* %numbytes128, align 4, !tbaa !72
  %cmp129 = icmp slt i32 %add127, %158
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.187

land.lhs.true.131:                                ; preds = %if.end.126
  %159 = load i32, i32* %f2, align 4, !tbaa !36
  %tobool132 = icmp ne i32 %159, 0
  br i1 %tobool132, label %if.then.133, label %if.end.187

if.then.133:                                      ; preds = %land.lhs.true.131
  %160 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf134 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %160, i32 0, i32 27
  %161 = load i8*, i8** %scanbuf134, align 8, !tbaa !44
  %162 = load i32, i32* %x, align 4, !tbaa !36
  %idx.ext135 = sext i32 %162 to i64
  %add.ptr136 = getelementptr inbounds i8, i8* %161, i64 %idx.ext135
  %163 = load i32, i32* %csep, align 4, !tbaa !36
  %idx.ext137 = sext i32 %163 to i64
  %add.ptr138 = getelementptr inbounds i8, i8* %add.ptr136, i64 %idx.ext137
  store i8* %add.ptr138, i8** %scan, align 8, !tbaa !1
  store i32 1, i32* %yy, align 4, !tbaa !36
  store i32 0, i32* %k, align 4, !tbaa !36
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.184, %if.then.133
  %164 = load i32, i32* %k, align 4, !tbaa !36
  %cmp140 = icmp slt i32 %164, 3
  br i1 %cmp140, label %for.body.142, label %for.end.186

for.body.142:                                     ; preds = %for.cond.139
  %165 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline143 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %165, i32 0, i32 32
  %166 = load i32, i32* %firstline143, align 4, !tbaa !50
  %167 = load i32, i32* %align, align 4, !tbaa !36
  %add144 = add nsw i32 %166, %167
  %168 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom145 = sext i32 %168 to i64
  %169 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev146 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %169, i32 0, i32 29
  %170 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev146, align 8, !tbaa !5
  %penofs147 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %170, i32 0, i32 79
  %arrayidx148 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs147, i32 0, i64 %idxprom145
  %171 = load i32, i32* %arrayidx148, align 4, !tbaa !36
  %add149 = add nsw i32 %add144, %171
  store i32 %add149, i32* %q, align 4, !tbaa !36
  %172 = load i32, i32* %s2, align 4, !tbaa !36
  store i32 %172, i32* %y, align 4, !tbaa !36
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.181, %for.body.142
  %173 = load i32, i32* %y, align 4, !tbaa !36
  %174 = load i32, i32* %lines, align 4, !tbaa !36
  %cmp151 = icmp slt i32 %173, %174
  br i1 %cmp151, label %for.body.153, label %for.end.183

for.body.153:                                     ; preds = %for.cond.150
  %175 = load i32, i32* %y, align 4, !tbaa !36
  %176 = load i32, i32* %q, align 4, !tbaa !36
  %add154 = add nsw i32 %175, %176
  %177 = load i32, i32* %mask, align 4, !tbaa !36
  %and155 = and i32 %add154, %177
  %178 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes156 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %178, i32 0, i32 0
  %179 = load i32, i32* %numbytes156, align 4, !tbaa !72
  %mul157 = mul nsw i32 %and155, %179
  %idxprom158 = sext i32 %mul157 to i64
  %180 = load i8*, i8** %scan, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i8, i8* %180, i64 %idxprom158
  %181 = load i8, i8* %arrayidx159, align 1, !tbaa !96
  %conv160 = zext i8 %181 to i32
  %182 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom161 = sext i32 %182 to i64
  %183 = load i32, i32* %head.addr, align 4, !tbaa !36
  %idxprom162 = sext i32 %183 to i64
  %arrayidx163 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* @colmask, i32 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx163, i32 0, i64 %idxprom161
  %184 = load i8, i8* %arrayidx164, align 1, !tbaa !96
  %conv165 = zext i8 %184 to i32
  %and166 = and i32 %conv160, %conv165
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %if.then.168, label %if.end.179

if.then.168:                                      ; preds = %for.body.153
  %185 = load i32, i32* %yy, align 4, !tbaa !36
  %and169 = and i32 %185, 7
  %idxprom170 = sext i32 %and169 to i64
  %arrayidx171 = getelementptr inbounds [8 x i8], [8 x i8]* @bits, i32 0, i64 %idxprom170
  %186 = load i8, i8* %arrayidx171, align 1, !tbaa !96
  %conv172 = zext i8 %186 to i32
  %187 = load i32, i32* %yy, align 4, !tbaa !36
  %div173 = sdiv i32 %187, 8
  %idxprom174 = sext i32 %div173 to i64
  %188 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i8, i8* %188, i64 %idxprom174
  %189 = load i8, i8* %arrayidx175, align 1, !tbaa !96
  %conv176 = zext i8 %189 to i32
  %or177 = or i32 %conv176, %conv172
  %conv178 = trunc i32 %or177 to i8
  store i8 %conv178, i8* %arrayidx175, align 1, !tbaa !96
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.168, %for.body.153
  %190 = load i32, i32* %yy, align 4, !tbaa !36
  %add180 = add nsw i32 %190, 2
  store i32 %add180, i32* %yy, align 4, !tbaa !36
  br label %for.inc.181

for.inc.181:                                      ; preds = %if.end.179
  %191 = load i32, i32* %yincr, align 4, !tbaa !36
  %192 = load i32, i32* %y, align 4, !tbaa !36
  %add182 = add nsw i32 %192, %191
  store i32 %add182, i32* %y, align 4, !tbaa !36
  br label %for.cond.150

for.end.183:                                      ; preds = %for.cond.150
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end.183
  %193 = load i32, i32* %k, align 4, !tbaa !36
  %inc185 = add nsw i32 %193, 1
  store i32 %inc185, i32* %k, align 4, !tbaa !36
  br label %for.cond.139

for.end.186:                                      ; preds = %for.cond.139
  br label %if.end.187

if.end.187:                                       ; preds = %for.end.186, %land.lhs.true.131, %if.end.126
  %194 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xres188 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %194, i32 0, i32 15
  %195 = load i32, i32* %xres188, align 4, !tbaa !26
  %cmp189 = icmp eq i32 %195, 1200
  br i1 %cmp189, label %if.then.191, label %if.end.194

if.then.191:                                      ; preds = %if.end.187
  %196 = load i32, i32* %f1, align 4, !tbaa !36
  %sub192 = sub nsw i32 1, %196
  store i32 %sub192, i32* %f1, align 4, !tbaa !36
  %197 = load i32, i32* %f2, align 4, !tbaa !36
  %sub193 = sub nsw i32 1, %197
  store i32 %sub193, i32* %f2, align 4, !tbaa !36
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.191, %if.end.187
  %198 = load i32, i32* %dy2, align 4, !tbaa !36
  %199 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext195 = sext i32 %198 to i64
  %add.ptr196 = getelementptr inbounds i8, i8* %199, i64 %idx.ext195
  store i8* %add.ptr196, i8** %data, align 8, !tbaa !1
  %200 = load i32, i32* %incr, align 4, !tbaa !36
  %201 = load i32, i32* %x, align 4, !tbaa !36
  %add197 = add nsw i32 %201, %200
  store i32 %add197, i32* %x, align 4, !tbaa !36
  br label %for.inc.198

for.inc.198:                                      ; preds = %if.end.194
  %202 = load i32, i32* %nxp, align 4, !tbaa !36
  %203 = load i32, i32* %nn, align 4, !tbaa !36
  %add199 = add nsw i32 %203, %202
  store i32 %add199, i32* %nn, align 4, !tbaa !36
  br label %for.cond.75

for.end.200:                                      ; preds = %for.cond.75
  br label %if.end.337

if.else.201:                                      ; preds = %if.end.70
  store i32 0, i32* %nn, align 4, !tbaa !36
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.334, %if.else.201
  %204 = load i32, i32* %nn, align 4, !tbaa !36
  %205 = load i32, i32* %numcols, align 4, !tbaa !36
  %cmp203 = icmp slt i32 %204, %205
  br i1 %cmp203, label %for.body.205, label %for.end.336

for.body.205:                                     ; preds = %for.cond.202
  %206 = load i32, i32* %x, align 4, !tbaa !36
  %207 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes206 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %207, i32 0, i32 0
  %208 = load i32, i32* %numbytes206, align 4, !tbaa !72
  %cmp207 = icmp slt i32 %206, %208
  br i1 %cmp207, label %land.lhs.true.209, label %if.end.263

land.lhs.true.209:                                ; preds = %for.body.205
  %209 = load i32, i32* %f1, align 4, !tbaa !36
  %tobool210 = icmp ne i32 %209, 0
  br i1 %tobool210, label %if.then.211, label %if.end.263

if.then.211:                                      ; preds = %land.lhs.true.209
  %210 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf212 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %210, i32 0, i32 27
  %211 = load i8*, i8** %scanbuf212, align 8, !tbaa !44
  %212 = load i32, i32* %x, align 4, !tbaa !36
  %idx.ext213 = sext i32 %212 to i64
  %add.ptr214 = getelementptr inbounds i8, i8* %211, i64 %idx.ext213
  store i8* %add.ptr214, i8** %scan, align 8, !tbaa !1
  store i32 1, i32* %yy, align 4, !tbaa !36
  store i32 0, i32* %k, align 4, !tbaa !36
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.260, %if.then.211
  %213 = load i32, i32* %k, align 4, !tbaa !36
  %cmp216 = icmp slt i32 %213, 3
  br i1 %cmp216, label %for.body.218, label %for.end.262

for.body.218:                                     ; preds = %for.cond.215
  %214 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline219 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %214, i32 0, i32 32
  %215 = load i32, i32* %firstline219, align 4, !tbaa !50
  %216 = load i32, i32* %align, align 4, !tbaa !36
  %add220 = add nsw i32 %215, %216
  %217 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom221 = sext i32 %217 to i64
  %218 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev222 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %218, i32 0, i32 29
  %219 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev222, align 8, !tbaa !5
  %penofs223 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %219, i32 0, i32 79
  %arrayidx224 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs223, i32 0, i64 %idxprom221
  %220 = load i32, i32* %arrayidx224, align 4, !tbaa !36
  %add225 = add nsw i32 %add220, %220
  store i32 %add225, i32* %q, align 4, !tbaa !36
  %221 = load i32, i32* %s1, align 4, !tbaa !36
  store i32 %221, i32* %y, align 4, !tbaa !36
  br label %for.cond.226

for.cond.226:                                     ; preds = %for.inc.257, %for.body.218
  %222 = load i32, i32* %y, align 4, !tbaa !36
  %223 = load i32, i32* %lines, align 4, !tbaa !36
  %cmp227 = icmp slt i32 %222, %223
  br i1 %cmp227, label %for.body.229, label %for.end.259

for.body.229:                                     ; preds = %for.cond.226
  %224 = load i32, i32* %y, align 4, !tbaa !36
  %225 = load i32, i32* %q, align 4, !tbaa !36
  %add230 = add nsw i32 %224, %225
  %226 = load i32, i32* %mask, align 4, !tbaa !36
  %and231 = and i32 %add230, %226
  %227 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes232 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %227, i32 0, i32 0
  %228 = load i32, i32* %numbytes232, align 4, !tbaa !72
  %mul233 = mul nsw i32 %and231, %228
  %idxprom234 = sext i32 %mul233 to i64
  %229 = load i8*, i8** %scan, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i8, i8* %229, i64 %idxprom234
  %230 = load i8, i8* %arrayidx235, align 1, !tbaa !96
  %conv236 = zext i8 %230 to i32
  %231 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom237 = sext i32 %231 to i64
  %232 = load i32, i32* %head.addr, align 4, !tbaa !36
  %idxprom238 = sext i32 %232 to i64
  %arrayidx239 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* @colmask, i32 0, i64 %idxprom238
  %arrayidx240 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx239, i32 0, i64 %idxprom237
  %233 = load i8, i8* %arrayidx240, align 1, !tbaa !96
  %conv241 = zext i8 %233 to i32
  %and242 = and i32 %conv236, %conv241
  %tobool243 = icmp ne i32 %and242, 0
  br i1 %tobool243, label %if.then.244, label %if.end.255

if.then.244:                                      ; preds = %for.body.229
  %234 = load i32, i32* %yy, align 4, !tbaa !36
  %and245 = and i32 %234, 7
  %idxprom246 = sext i32 %and245 to i64
  %arrayidx247 = getelementptr inbounds [8 x i8], [8 x i8]* @bits, i32 0, i64 %idxprom246
  %235 = load i8, i8* %arrayidx247, align 1, !tbaa !96
  %conv248 = zext i8 %235 to i32
  %236 = load i32, i32* %yy, align 4, !tbaa !36
  %div249 = sdiv i32 %236, 8
  %idxprom250 = sext i32 %div249 to i64
  %237 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i8, i8* %237, i64 %idxprom250
  %238 = load i8, i8* %arrayidx251, align 1, !tbaa !96
  %conv252 = zext i8 %238 to i32
  %or253 = or i32 %conv252, %conv248
  %conv254 = trunc i32 %or253 to i8
  store i8 %conv254, i8* %arrayidx251, align 1, !tbaa !96
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.244, %for.body.229
  %239 = load i32, i32* %yy, align 4, !tbaa !36
  %add256 = add nsw i32 %239, 2
  store i32 %add256, i32* %yy, align 4, !tbaa !36
  br label %for.inc.257

for.inc.257:                                      ; preds = %if.end.255
  %240 = load i32, i32* %yincr, align 4, !tbaa !36
  %241 = load i32, i32* %y, align 4, !tbaa !36
  %add258 = add nsw i32 %241, %240
  store i32 %add258, i32* %y, align 4, !tbaa !36
  br label %for.cond.226

for.end.259:                                      ; preds = %for.cond.226
  br label %for.inc.260

for.inc.260:                                      ; preds = %for.end.259
  %242 = load i32, i32* %k, align 4, !tbaa !36
  %inc261 = add nsw i32 %242, 1
  store i32 %inc261, i32* %k, align 4, !tbaa !36
  br label %for.cond.215

for.end.262:                                      ; preds = %for.cond.215
  br label %if.end.263

if.end.263:                                       ; preds = %for.end.262, %land.lhs.true.209, %for.body.205
  %243 = load i32, i32* %x, align 4, !tbaa !36
  %244 = load i32, i32* %csep, align 4, !tbaa !36
  %sub264 = sub nsw i32 %243, %244
  %cmp265 = icmp sge i32 %sub264, 0
  br i1 %cmp265, label %land.lhs.true.267, label %if.end.323

land.lhs.true.267:                                ; preds = %if.end.263
  %245 = load i32, i32* %f2, align 4, !tbaa !36
  %tobool268 = icmp ne i32 %245, 0
  br i1 %tobool268, label %if.then.269, label %if.end.323

if.then.269:                                      ; preds = %land.lhs.true.267
  %246 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf270 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %246, i32 0, i32 27
  %247 = load i8*, i8** %scanbuf270, align 8, !tbaa !44
  %248 = load i32, i32* %x, align 4, !tbaa !36
  %idx.ext271 = sext i32 %248 to i64
  %add.ptr272 = getelementptr inbounds i8, i8* %247, i64 %idx.ext271
  %249 = load i32, i32* %csep, align 4, !tbaa !36
  %idx.ext273 = sext i32 %249 to i64
  %idx.neg = sub i64 0, %idx.ext273
  %add.ptr274 = getelementptr inbounds i8, i8* %add.ptr272, i64 %idx.neg
  store i8* %add.ptr274, i8** %scan, align 8, !tbaa !1
  store i32 0, i32* %yy, align 4, !tbaa !36
  store i32 0, i32* %k, align 4, !tbaa !36
  br label %for.cond.275

for.cond.275:                                     ; preds = %for.inc.320, %if.then.269
  %250 = load i32, i32* %k, align 4, !tbaa !36
  %cmp276 = icmp slt i32 %250, 3
  br i1 %cmp276, label %for.body.278, label %for.end.322

for.body.278:                                     ; preds = %for.cond.275
  %251 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline279 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %251, i32 0, i32 32
  %252 = load i32, i32* %firstline279, align 4, !tbaa !50
  %253 = load i32, i32* %align, align 4, !tbaa !36
  %add280 = add nsw i32 %252, %253
  %254 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom281 = sext i32 %254 to i64
  %255 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev282 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %255, i32 0, i32 29
  %256 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev282, align 8, !tbaa !5
  %penofs283 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %256, i32 0, i32 79
  %arrayidx284 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs283, i32 0, i64 %idxprom281
  %257 = load i32, i32* %arrayidx284, align 4, !tbaa !36
  %add285 = add nsw i32 %add280, %257
  store i32 %add285, i32* %q, align 4, !tbaa !36
  %258 = load i32, i32* %s2, align 4, !tbaa !36
  store i32 %258, i32* %y, align 4, !tbaa !36
  br label %for.cond.286

for.cond.286:                                     ; preds = %for.inc.317, %for.body.278
  %259 = load i32, i32* %y, align 4, !tbaa !36
  %260 = load i32, i32* %lines, align 4, !tbaa !36
  %cmp287 = icmp slt i32 %259, %260
  br i1 %cmp287, label %for.body.289, label %for.end.319

for.body.289:                                     ; preds = %for.cond.286
  %261 = load i32, i32* %y, align 4, !tbaa !36
  %262 = load i32, i32* %q, align 4, !tbaa !36
  %add290 = add nsw i32 %261, %262
  %263 = load i32, i32* %mask, align 4, !tbaa !36
  %and291 = and i32 %add290, %263
  %264 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes292 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %264, i32 0, i32 0
  %265 = load i32, i32* %numbytes292, align 4, !tbaa !72
  %mul293 = mul nsw i32 %and291, %265
  %idxprom294 = sext i32 %mul293 to i64
  %266 = load i8*, i8** %scan, align 8, !tbaa !1
  %arrayidx295 = getelementptr inbounds i8, i8* %266, i64 %idxprom294
  %267 = load i8, i8* %arrayidx295, align 1, !tbaa !96
  %conv296 = zext i8 %267 to i32
  %268 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom297 = sext i32 %268 to i64
  %269 = load i32, i32* %head.addr, align 4, !tbaa !36
  %idxprom298 = sext i32 %269 to i64
  %arrayidx299 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* @colmask, i32 0, i64 %idxprom298
  %arrayidx300 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx299, i32 0, i64 %idxprom297
  %270 = load i8, i8* %arrayidx300, align 1, !tbaa !96
  %conv301 = zext i8 %270 to i32
  %and302 = and i32 %conv296, %conv301
  %tobool303 = icmp ne i32 %and302, 0
  br i1 %tobool303, label %if.then.304, label %if.end.315

if.then.304:                                      ; preds = %for.body.289
  %271 = load i32, i32* %yy, align 4, !tbaa !36
  %and305 = and i32 %271, 7
  %idxprom306 = sext i32 %and305 to i64
  %arrayidx307 = getelementptr inbounds [8 x i8], [8 x i8]* @bits, i32 0, i64 %idxprom306
  %272 = load i8, i8* %arrayidx307, align 1, !tbaa !96
  %conv308 = zext i8 %272 to i32
  %273 = load i32, i32* %yy, align 4, !tbaa !36
  %div309 = sdiv i32 %273, 8
  %idxprom310 = sext i32 %div309 to i64
  %274 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx311 = getelementptr inbounds i8, i8* %274, i64 %idxprom310
  %275 = load i8, i8* %arrayidx311, align 1, !tbaa !96
  %conv312 = zext i8 %275 to i32
  %or313 = or i32 %conv312, %conv308
  %conv314 = trunc i32 %or313 to i8
  store i8 %conv314, i8* %arrayidx311, align 1, !tbaa !96
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.304, %for.body.289
  %276 = load i32, i32* %yy, align 4, !tbaa !36
  %add316 = add nsw i32 %276, 2
  store i32 %add316, i32* %yy, align 4, !tbaa !36
  br label %for.inc.317

for.inc.317:                                      ; preds = %if.end.315
  %277 = load i32, i32* %yincr, align 4, !tbaa !36
  %278 = load i32, i32* %y, align 4, !tbaa !36
  %add318 = add nsw i32 %278, %277
  store i32 %add318, i32* %y, align 4, !tbaa !36
  br label %for.cond.286

for.end.319:                                      ; preds = %for.cond.286
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.end.319
  %279 = load i32, i32* %k, align 4, !tbaa !36
  %inc321 = add nsw i32 %279, 1
  store i32 %inc321, i32* %k, align 4, !tbaa !36
  br label %for.cond.275

for.end.322:                                      ; preds = %for.cond.275
  br label %if.end.323

if.end.323:                                       ; preds = %for.end.322, %land.lhs.true.267, %if.end.263
  %280 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xres324 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %280, i32 0, i32 15
  %281 = load i32, i32* %xres324, align 4, !tbaa !26
  %cmp325 = icmp eq i32 %281, 1200
  br i1 %cmp325, label %if.then.327, label %if.end.330

if.then.327:                                      ; preds = %if.end.323
  %282 = load i32, i32* %f1, align 4, !tbaa !36
  %sub328 = sub nsw i32 1, %282
  store i32 %sub328, i32* %f1, align 4, !tbaa !36
  %283 = load i32, i32* %f2, align 4, !tbaa !36
  %sub329 = sub nsw i32 1, %283
  store i32 %sub329, i32* %f2, align 4, !tbaa !36
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.327, %if.end.323
  %284 = load i32, i32* %dy2, align 4, !tbaa !36
  %285 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext331 = sext i32 %284 to i64
  %add.ptr332 = getelementptr inbounds i8, i8* %285, i64 %idx.ext331
  store i8* %add.ptr332, i8** %data, align 8, !tbaa !1
  %286 = load i32, i32* %incr, align 4, !tbaa !36
  %287 = load i32, i32* %x, align 4, !tbaa !36
  %add333 = add nsw i32 %287, %286
  store i32 %add333, i32* %x, align 4, !tbaa !36
  br label %for.inc.334

for.inc.334:                                      ; preds = %if.end.330
  %288 = load i32, i32* %nxp, align 4, !tbaa !36
  %289 = load i32, i32* %nn, align 4, !tbaa !36
  %add335 = add nsw i32 %289, %288
  store i32 %add335, i32* %nn, align 4, !tbaa !36
  br label %for.cond.202

for.end.336:                                      ; preds = %for.cond.202
  br label %if.end.337

if.end.337:                                       ; preds = %for.end.336, %for.end.200
  %290 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction338 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %290, i32 0, i32 21
  %291 = load i32, i32* %direction338, align 4, !tbaa !52
  %cmp339 = icmp eq i32 %291, 0
  br i1 %cmp339, label %if.then.341, label %if.else.342

if.then.341:                                      ; preds = %if.end.337
  %292 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %293 = load i32, i32* %head.addr, align 4, !tbaa !36
  %294 = load i32, i32* %numcols, align 4, !tbaa !36
  %295 = load i32, i32* %left, align 4, !tbaa !36
  call void @convbuf(%struct.pagedata_s* %292, i32 %293, i32 %294, i32 %295) #5
  br label %if.end.343

if.else.342:                                      ; preds = %if.end.337
  %296 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %297 = load i32, i32* %head.addr, align 4, !tbaa !36
  %298 = load i32, i32* %numcols, align 4, !tbaa !36
  %299 = load i32, i32* %right, align 4, !tbaa !36
  call void @convbuf(%struct.pagedata_s* %296, i32 %297, i32 %298, i32 %299) #5
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.342, %if.then.341
  br label %for.inc.344

for.inc.344:                                      ; preds = %if.end.343
  %300 = load i32, i32* %pass, align 4, !tbaa !36
  %inc345 = add nsw i32 %300, 1
  store i32 %inc345, i32* %pass, align 4, !tbaa !36
  br label %for.cond

for.end.346:                                      ; preds = %for.cond
  %301 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #2
  %302 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #2
  %303 = bitcast i32* %lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #2
  %304 = bitcast i32* %align to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #2
  %305 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #2
  %306 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %307 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #2
  %308 = bitcast i32* %yincr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #2
  %309 = bitcast i32* %s2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #2
  %310 = bitcast i32* %s1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #2
  %311 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #2
  %312 = bitcast i32* %f2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #2
  %313 = bitcast i32* %f1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #2
  %314 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #2
  %315 = bitcast i32* %csep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #2
  %316 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #2
  %317 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #2
  %318 = bitcast i32* %incr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #2
  %319 = bitcast i32* %numcols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #2
  %320 = bitcast i32* %yy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #2
  %321 = bitcast i32* %nxp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #2
  %322 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #2
  %323 = bitcast i32* %nn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #2
  %324 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #2
  %325 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #2
  %326 = bitcast i32* %right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #2
  %327 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finalizeheader(%struct.pagedata_s* %gendata, i32 %vskip, i32 %newhead) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %vskip.addr = alloca i32, align 4
  %newhead.addr = alloca i32, align 4
  %offs2 = alloca i32, align 4
  %nstartabs = alloca i32, align 4
  %back = alloca i32, align 4
  %fwd = alloca i32, align 4
  %habs = alloca i32, align 4
  %p = alloca i32, align 4
  %dir = alloca i32, align 4
  %endabs = alloca i32, align 4
  %col = alloca i32, align 4
  %newstart = alloca i32, align 4
  %sep = alloca i32, align 4
  %header = alloca i8*, align 8
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  store i32 %vskip, i32* %vskip.addr, align 4, !tbaa !36
  store i32 %newhead, i32* %newhead.addr, align 4, !tbaa !36
  %0 = bitcast i32* %offs2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %nstartabs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %fwd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %habs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %dir to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %endabs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %newstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %sep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i8** %header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %header1 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %12, i32 0, i32 35
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %header1, i32 0, i32 0
  store i8* %arraydecay, i8** %header, align 8, !tbaa !1
  %13 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 2
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !96
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %dir, align 4, !tbaa !36
  %15 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %15, i32 0, i32 21
  %16 = load i32, i32* %direction, align 4, !tbaa !52
  %idxprom = sext i32 %16 to i64
  %17 = load i32, i32* %newhead.addr, align 4, !tbaa !36
  %idxprom2 = sext i32 %17 to i64
  %18 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %18, i32 0, i32 29
  %19 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !5
  %hoffset = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %19, i32 0, i32 81
  %arrayidx3 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %hoffset, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx4, align 4, !tbaa !36
  store i32 %20, i32* %offs2, align 4, !tbaa !36
  %21 = load i32, i32* %newhead.addr, align 4, !tbaa !36
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %22 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %bwsep = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %22, i32 0, i32 22
  %23 = load i32, i32* %bwsep, align 4, !tbaa !68
  %mul = mul nsw i32 %23, 2
  %24 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %24, i32 0, i32 17
  %25 = load i32, i32* %xrmul, align 4, !tbaa !29
  %div = sdiv i32 %mul, %25
  store i32 %div, i32* %sep, align 4, !tbaa !36
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %colsep = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %26, i32 0, i32 23
  %27 = load i32, i32* %colsep, align 4, !tbaa !70
  %mul6 = mul nsw i32 %27, 2
  %28 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul7 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %28, i32 0, i32 17
  %29 = load i32, i32* %xrmul7, align 4, !tbaa !29
  %div8 = sdiv i32 %mul6, %29
  store i32 %div8, i32* %sep, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction9 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %30, i32 0, i32 21
  %31 = load i32, i32* %direction9, align 4, !tbaa !52
  %cmp10 = icmp eq i32 %31, 0
  br i1 %cmp10, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.end
  %32 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %left = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %32, i32 0, i32 30
  %33 = load i32, i32* %left, align 4, !tbaa !46
  %34 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul13 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %34, i32 0, i32 17
  %35 = load i32, i32* %xrmul13, align 4, !tbaa !29
  %mul14 = mul nsw i32 %33, %35
  %36 = load i32, i32* %sep, align 4, !tbaa !36
  %sub = sub nsw i32 %mul14, %36
  store i32 %sub, i32* %newstart, align 4, !tbaa !36
  br label %if.end.18

if.else.15:                                       ; preds = %if.end
  %37 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %right = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %37, i32 0, i32 31
  %38 = load i32, i32* %right, align 4, !tbaa !47
  %39 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul16 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %39, i32 0, i32 17
  %40 = load i32, i32* %xrmul16, align 4, !tbaa !29
  %mul17 = mul nsw i32 %38, %40
  store i32 %mul17, i32* %newstart, align 4, !tbaa !36
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.12
  %41 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %41, i32 0, i32 18
  %42 = load i32, i32* %yrmul, align 4, !tbaa !31
  %43 = load i32, i32* %vskip.addr, align 4, !tbaa !36
  %mul19 = mul nsw i32 %43, %42
  store i32 %mul19, i32* %vskip.addr, align 4, !tbaa !36
  %44 = load i32, i32* %newstart, align 4, !tbaa !36
  %45 = load i32, i32* %offs2, align 4, !tbaa !36
  %add = add nsw i32 %44, %45
  store i32 %add, i32* %nstartabs, align 4, !tbaa !36
  %46 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %46, i64 21
  %47 = load i8, i8* %arrayidx20, align 1, !tbaa !96
  %conv21 = zext i8 %47 to i32
  %mul22 = mul nsw i32 %conv21, 256
  %48 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %48, i64 22
  %49 = load i8, i8* %arrayidx23, align 1, !tbaa !96
  %conv24 = zext i8 %49 to i32
  %add25 = add nsw i32 %mul22, %conv24
  store i32 %add25, i32* %endabs, align 4, !tbaa !36
  %50 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %50, i64 3
  %51 = load i8, i8* %arrayidx26, align 1, !tbaa !96
  %conv27 = zext i8 %51 to i32
  %mul28 = mul nsw i32 %conv27, 256
  %52 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %52, i64 4
  %53 = load i8, i8* %arrayidx29, align 1, !tbaa !96
  %conv30 = zext i8 %53 to i32
  %add31 = add nsw i32 %mul28, %conv30
  store i32 %add31, i32* %col, align 4, !tbaa !36
  %54 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul32 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %54, i32 0, i32 17
  %55 = load i32, i32* %xrmul32, align 4, !tbaa !29
  %56 = load i32, i32* %col, align 4, !tbaa !36
  %mul33 = mul nsw i32 %56, %55
  store i32 %mul33, i32* %col, align 4, !tbaa !36
  %57 = load i32, i32* %dir, align 4, !tbaa !36
  %cmp34 = icmp eq i32 %57, 0
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.end.18
  %58 = load i32, i32* %col, align 4, !tbaa !36
  %59 = load i32, i32* %endabs, align 4, !tbaa !36
  %add37 = add nsw i32 %59, %58
  store i32 %add37, i32* %endabs, align 4, !tbaa !36
  br label %if.end.40

if.else.38:                                       ; preds = %if.end.18
  %60 = load i32, i32* %col, align 4, !tbaa !36
  %61 = load i32, i32* %endabs, align 4, !tbaa !36
  %sub39 = sub nsw i32 %61, %60
  store i32 %sub39, i32* %endabs, align 4, !tbaa !36
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.36
  %62 = load i32, i32* %dir, align 4, !tbaa !36
  %cmp41 = icmp eq i32 %62, 0
  br i1 %cmp41, label %if.then.43, label %if.else.59

if.then.43:                                       ; preds = %if.end.40
  %63 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %63, i64 11
  %64 = load i8, i8* %arrayidx44, align 1, !tbaa !96
  %conv45 = zext i8 %64 to i32
  %mul46 = mul nsw i32 %conv45, 256
  %65 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %65, i64 12
  %66 = load i8, i8* %arrayidx47, align 1, !tbaa !96
  %conv48 = zext i8 %66 to i32
  %add49 = add nsw i32 %mul46, %conv48
  %67 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %67, i32 0, i32 19
  %68 = load i32, i32* %curheadpos, align 4, !tbaa !45
  %add50 = add nsw i32 %68, %add49
  store i32 %add50, i32* %curheadpos, align 4, !tbaa !45
  %69 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %69, i64 5
  %70 = load i8, i8* %arrayidx51, align 1, !tbaa !96
  %conv52 = zext i8 %70 to i32
  %mul53 = mul nsw i32 %conv52, 256
  %71 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %71, i64 6
  %72 = load i8, i8* %arrayidx54, align 1, !tbaa !96
  %conv55 = zext i8 %72 to i32
  %add56 = add nsw i32 %mul53, %conv55
  %73 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos57 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %73, i32 0, i32 19
  %74 = load i32, i32* %curheadpos57, align 4, !tbaa !45
  %sub58 = sub nsw i32 %74, %add56
  store i32 %sub58, i32* %curheadpos57, align 4, !tbaa !45
  br label %if.end.76

if.else.59:                                       ; preds = %if.end.40
  %75 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %75, i64 11
  %76 = load i8, i8* %arrayidx60, align 1, !tbaa !96
  %conv61 = zext i8 %76 to i32
  %mul62 = mul nsw i32 %conv61, 256
  %77 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %77, i64 12
  %78 = load i8, i8* %arrayidx63, align 1, !tbaa !96
  %conv64 = zext i8 %78 to i32
  %add65 = add nsw i32 %mul62, %conv64
  %79 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos66 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %79, i32 0, i32 19
  %80 = load i32, i32* %curheadpos66, align 4, !tbaa !45
  %sub67 = sub nsw i32 %80, %add65
  store i32 %sub67, i32* %curheadpos66, align 4, !tbaa !45
  %81 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %81, i64 5
  %82 = load i8, i8* %arrayidx68, align 1, !tbaa !96
  %conv69 = zext i8 %82 to i32
  %mul70 = mul nsw i32 %conv69, 256
  %83 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %83, i64 6
  %84 = load i8, i8* %arrayidx71, align 1, !tbaa !96
  %conv72 = zext i8 %84 to i32
  %add73 = add nsw i32 %mul70, %conv72
  %85 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos74 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %85, i32 0, i32 19
  %86 = load i32, i32* %curheadpos74, align 4, !tbaa !45
  %add75 = add nsw i32 %86, %add73
  store i32 %add75, i32* %curheadpos74, align 4, !tbaa !45
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.59, %if.then.43
  %87 = load i32, i32* %newhead.addr, align 4, !tbaa !36
  %cmp77 = icmp slt i32 %87, 0
  br i1 %cmp77, label %if.then.79, label %if.else.88

if.then.79:                                       ; preds = %if.end.76
  %88 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %88, i64 5
  %89 = load i8, i8* %arrayidx80, align 1, !tbaa !96
  %conv81 = zext i8 %89 to i32
  %mul82 = mul nsw i32 %conv81, 256
  %90 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %90, i64 6
  %91 = load i8, i8* %arrayidx83, align 1, !tbaa !96
  %conv84 = zext i8 %91 to i32
  %add85 = add nsw i32 %mul82, %conv84
  %and86 = and i32 %add85, 65520
  %add87 = add nsw i32 %and86, 9
  store i32 %add87, i32* %fwd, align 4, !tbaa !36
  br label %if.end.126

if.else.88:                                       ; preds = %if.end.76
  %92 = load i32, i32* %dir, align 4, !tbaa !36
  %cmp89 = icmp eq i32 %92, 0
  br i1 %cmp89, label %if.then.91, label %if.else.105

if.then.91:                                       ; preds = %if.else.88
  %93 = load i32, i32* %endabs, align 4, !tbaa !36
  %94 = load i32, i32* %nstartabs, align 4, !tbaa !36
  %cmp92 = icmp sgt i32 %93, %94
  br i1 %cmp92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.91
  %95 = load i32, i32* %endabs, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %if.then.91
  %96 = load i32, i32* %nstartabs, align 4, !tbaa !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond94 = phi i32 [ %95, %cond.true ], [ %96, %cond.false ]
  store i32 %cond94, i32* %p, align 4, !tbaa !36
  %97 = load i32, i32* %p, align 4, !tbaa !36
  %sub95 = sub nsw i32 %97, 3600
  %shr = ashr i32 %sub95, 3
  %and96 = and i32 %shr, 65520
  %add97 = add nsw i32 %and96, 9
  store i32 %add97, i32* %habs, align 4, !tbaa !36
  %98 = load i32, i32* %habs, align 4, !tbaa !36
  %99 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos98 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %99, i32 0, i32 19
  %100 = load i32, i32* %curheadpos98, align 4, !tbaa !45
  %sub99 = sub nsw i32 %98, %100
  store i32 %sub99, i32* %fwd, align 4, !tbaa !36
  %101 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %modelprint = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %101, i32 0, i32 11
  %102 = load i32, i32* %modelprint, align 4, !tbaa !39
  %cmp100 = icmp eq i32 %102, 2
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %cond.end
  %103 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %z31margin = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %103, i32 0, i32 12
  %104 = load i32, i32* %z31margin, align 4, !tbaa !41
  %105 = load i32, i32* %fwd, align 4, !tbaa !36
  %add103 = add nsw i32 %105, %104
  store i32 %add103, i32* %fwd, align 4, !tbaa !36
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %cond.end
  br label %if.end.125

if.else.105:                                      ; preds = %if.else.88
  %106 = load i32, i32* %endabs, align 4, !tbaa !36
  %107 = load i32, i32* %nstartabs, align 4, !tbaa !36
  %cmp106 = icmp slt i32 %106, %107
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %if.else.105
  %108 = load i32, i32* %endabs, align 4, !tbaa !36
  br label %cond.end.110

cond.false.109:                                   ; preds = %if.else.105
  %109 = load i32, i32* %nstartabs, align 4, !tbaa !36
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.108
  %cond111 = phi i32 [ %108, %cond.true.108 ], [ %109, %cond.false.109 ]
  store i32 %cond111, i32* %p, align 4, !tbaa !36
  %110 = load i32, i32* %p, align 4, !tbaa !36
  %cmp112 = icmp sgt i32 %110, 4816
  br i1 %cmp112, label %if.then.114, label %if.else.118

if.then.114:                                      ; preds = %cond.end.110
  %111 = load i32, i32* %p, align 4, !tbaa !36
  %sub115 = sub nsw i32 %111, 4800
  %shr116 = ashr i32 %sub115, 3
  %and117 = and i32 %shr116, 65520
  store i32 %and117, i32* %habs, align 4, !tbaa !36
  br label %if.end.122

if.else.118:                                      ; preds = %cond.end.110
  %112 = load i32, i32* %p, align 4, !tbaa !36
  %sub119 = sub nsw i32 %112, 3600
  %shr120 = ashr i32 %sub119, 3
  %and121 = and i32 %shr120, 65520
  store i32 %and121, i32* %habs, align 4, !tbaa !36
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.118, %if.then.114
  %113 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos123 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %113, i32 0, i32 19
  %114 = load i32, i32* %curheadpos123, align 4, !tbaa !45
  %115 = load i32, i32* %habs, align 4, !tbaa !36
  %sub124 = sub nsw i32 %114, %115
  store i32 %sub124, i32* %fwd, align 4, !tbaa !36
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.122, %if.end.104
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.79
  %116 = load i32, i32* %dir, align 4, !tbaa !36
  %cmp127 = icmp eq i32 %116, 0
  br i1 %cmp127, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %if.end.126
  %117 = load i32, i32* %fwd, align 4, !tbaa !36
  br label %cond.end.132

cond.false.130:                                   ; preds = %if.end.126
  %118 = load i32, i32* %fwd, align 4, !tbaa !36
  %sub131 = sub nsw i32 0, %118
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.130, %cond.true.129
  %cond133 = phi i32 [ %117, %cond.true.129 ], [ %sub131, %cond.false.130 ]
  %119 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos134 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %119, i32 0, i32 19
  %120 = load i32, i32* %curheadpos134, align 4, !tbaa !45
  %add135 = add nsw i32 %120, %cond133
  store i32 %add135, i32* %curheadpos134, align 4, !tbaa !45
  %121 = load i32, i32* %newhead.addr, align 4, !tbaa !36
  %cmp136 = icmp slt i32 %121, 0
  br i1 %cmp136, label %if.then.139, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.132
  %122 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %bidirprint = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %122, i32 0, i32 9
  %123 = load i32, i32* %bidirprint, align 4, !tbaa !55
  %tobool138 = icmp ne i32 %123, 0
  br i1 %tobool138, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %lor.lhs.false, %cond.end.132
  store i32 0, i32* %back, align 4, !tbaa !36
  br label %if.end.158

if.else.140:                                      ; preds = %lor.lhs.false
  %124 = load i32, i32* %nstartabs, align 4, !tbaa !36
  %cmp141 = icmp sgt i32 %124, 4856
  br i1 %cmp141, label %if.then.143, label %if.else.147

if.then.143:                                      ; preds = %if.else.140
  %125 = load i32, i32* %nstartabs, align 4, !tbaa !36
  %sub144 = sub nsw i32 %125, 4840
  %shr145 = ashr i32 %sub144, 3
  %and146 = and i32 %shr145, 65520
  store i32 %and146, i32* %habs, align 4, !tbaa !36
  br label %if.end.151

if.else.147:                                      ; preds = %if.else.140
  %126 = load i32, i32* %nstartabs, align 4, !tbaa !36
  %sub148 = sub nsw i32 %126, 3600
  %shr149 = ashr i32 %sub148, 3
  %and150 = and i32 %shr149, 65520
  store i32 %and150, i32* %habs, align 4, !tbaa !36
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.147, %if.then.143
  %127 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos152 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %127, i32 0, i32 19
  %128 = load i32, i32* %curheadpos152, align 4, !tbaa !45
  %129 = load i32, i32* %habs, align 4, !tbaa !36
  %sub153 = sub nsw i32 %128, %129
  store i32 %sub153, i32* %back, align 4, !tbaa !36
  %130 = load i32, i32* %back, align 4, !tbaa !36
  %cmp154 = icmp slt i32 %130, 16
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.151
  store i32 16, i32* %back, align 4, !tbaa !36
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.end.151
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.then.139
  %131 = load i32, i32* %dir, align 4, !tbaa !36
  %cmp159 = icmp eq i32 %131, 0
  br i1 %cmp159, label %cond.true.161, label %cond.false.162

cond.true.161:                                    ; preds = %if.end.158
  %132 = load i32, i32* %back, align 4, !tbaa !36
  br label %cond.end.164

cond.false.162:                                   ; preds = %if.end.158
  %133 = load i32, i32* %back, align 4, !tbaa !36
  %sub163 = sub nsw i32 0, %133
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.162, %cond.true.161
  %cond165 = phi i32 [ %132, %cond.true.161 ], [ %sub163, %cond.false.162 ]
  %134 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos166 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %134, i32 0, i32 19
  %135 = load i32, i32* %curheadpos166, align 4, !tbaa !45
  %sub167 = sub nsw i32 %135, %cond165
  store i32 %sub167, i32* %curheadpos166, align 4, !tbaa !45
  %136 = load i32, i32* %fwd, align 4, !tbaa !36
  %shr168 = ashr i32 %136, 8
  %conv169 = trunc i32 %shr168 to i8
  %137 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i8, i8* %137, i64 5
  store i8 %conv169, i8* %arrayidx170, align 1, !tbaa !96
  %138 = load i32, i32* %fwd, align 4, !tbaa !36
  %and171 = and i32 %138, 255
  %conv172 = trunc i32 %and171 to i8
  %139 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i8, i8* %139, i64 6
  store i8 %conv172, i8* %arrayidx173, align 1, !tbaa !96
  %140 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i8, i8* %140, i64 0
  %call = call zeroext i8 @calccheck8(i8* %arrayidx174) #5
  %141 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i8, i8* %141, i64 7
  store i8 %call, i8* %arrayidx175, align 1, !tbaa !96
  %142 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i8, i8* %142, i64 8
  store i8 27, i8* %arrayidx176, align 1, !tbaa !96
  %143 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %143, i64 9
  store i8 66, i8* %arrayidx177, align 1, !tbaa !96
  %144 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %144, i64 10
  store i8 0, i8* %arrayidx178, align 1, !tbaa !96
  %145 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %modelprint179 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %145, i32 0, i32 11
  %146 = load i32, i32* %modelprint179, align 4, !tbaa !39
  %cmp180 = icmp eq i32 %146, 1
  br i1 %cmp180, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %cond.end.164
  %147 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i8, i8* %147, i64 10
  store i8 16, i8* %arrayidx183, align 1, !tbaa !96
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.182, %cond.end.164
  %148 = load i32, i32* %back, align 4, !tbaa !36
  %shr185 = ashr i32 %148, 8
  %conv186 = trunc i32 %shr185 to i8
  %149 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i8, i8* %149, i64 11
  store i8 %conv186, i8* %arrayidx187, align 1, !tbaa !96
  %150 = load i32, i32* %back, align 4, !tbaa !36
  %and188 = and i32 %150, 255
  %conv189 = trunc i32 %and188 to i8
  %151 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i8, i8* %151, i64 12
  store i8 %conv189, i8* %arrayidx190, align 1, !tbaa !96
  %152 = load i32, i32* %vskip.addr, align 4, !tbaa !36
  %shr191 = ashr i32 %152, 8
  %conv192 = trunc i32 %shr191 to i8
  %153 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i8, i8* %153, i64 13
  store i8 %conv192, i8* %arrayidx193, align 1, !tbaa !96
  %154 = load i32, i32* %vskip.addr, align 4, !tbaa !36
  %and194 = and i32 %154, 255
  %conv195 = trunc i32 %and194 to i8
  %155 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i8, i8* %155, i64 14
  store i8 %conv195, i8* %arrayidx196, align 1, !tbaa !96
  %156 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i8, i8* %156, i64 8
  %call198 = call zeroext i8 @calccheck8(i8* %arrayidx197) #5
  %157 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %157, i64 15
  store i8 %call198, i8* %arrayidx199, align 1, !tbaa !96
  %158 = load i8*, i8** %header, align 8, !tbaa !1
  %159 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %159, i32 0, i32 28
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !8
  %call200 = call i64 @fwrite(i8* %158, i64 3, i64 8, %struct._IO_FILE* %160) #5
  %161 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %161, i32 0, i32 26
  %162 = load i8*, i8** %outdata, align 8, !tbaa !43
  %163 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stripebytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %163, i32 0, i32 37
  %164 = load i32, i32* %stripebytes, align 4, !tbaa !97
  %conv201 = sext i32 %164 to i64
  %165 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stream202 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %165, i32 0, i32 28
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %stream202, align 8, !tbaa !8
  %call203 = call i64 @fwrite(i8* %162, i64 %conv201, i64 1, %struct._IO_FILE* %166) #5
  %167 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %fullflag = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %167, i32 0, i32 36
  store i32 0, i32* %fullflag, align 4, !tbaa !51
  %168 = bitcast i8** %header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #2
  %169 = bitcast i32* %sep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i32* %newstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #2
  %171 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast i32* %endabs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i32* %dir to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %habs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i32* %fwd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #2
  %178 = bitcast i32* %nstartabs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast i32* %offs2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @fill_mono_buffer(%struct.pagedata_s* %gendata, i32 %vline) #1 {
entry:
  %retval = alloca i32, align 4
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %vline.addr = alloca i32, align 4
  %in_data = alloca i8*, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %ofs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  store i32 %vline, i32* %vline.addr, align 4, !tbaa !36
  %0 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %ofs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %5, i32 0, i32 27
  %6 = load i8*, i8** %scanbuf, align 8, !tbaa !44
  store i8* %6, i8** %data, align 8, !tbaa !1
  %7 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %goffset = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %7, i32 0, i32 2
  %8 = load i32, i32* %goffset, align 4, !tbaa !71
  store i32 %8, i32* %ofs, align 4, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %9 = load i32, i32* %vline.addr, align 4, !tbaa !36
  %10 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numvlines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %10, i32 0, i32 6
  %11 = load i32, i32* %numvlines, align 4, !tbaa !64
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %12, i32 0, i32 29
  %13 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !5
  %14 = bitcast %struct.lxm_device_s* %13 to %struct.gx_device_printer_s*
  %15 = load i32, i32* %vline.addr, align 4, !tbaa !36
  %16 = load i8*, i8** %data, align 8, !tbaa !1
  %17 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %call = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %14, i32 %15, i8* %add.ptr, i8** %in_data) #5
  %18 = load i8*, i8** %in_data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !96
  %conv = zext i8 %19 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %20 = load i8*, i8** %in_data, align 8, !tbaa !1
  %21 = load i8*, i8** %in_data, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numrbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %22, i32 0, i32 1
  %23 = load i32, i32* %numrbytes, align 4, !tbaa !73
  %sub = sub nsw i32 %23, 1
  %conv4 = sext i32 %sub to i64
  %call5 = call i32 @memcmp(i8* %20, i8* %add.ptr3, i64 %conv4) #7
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %24 = load i32, i32* %vline.addr, align 4, !tbaa !36
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %vline.addr, align 4, !tbaa !36
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %25 = load i32, i32* %vline.addr, align 4, !tbaa !36
  %26 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numvlines6 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %26, i32 0, i32 6
  %27 = load i32, i32* %numvlines6, align 4, !tbaa !64
  %cmp7 = icmp sge i32 %25, %27
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %while.end
  %28 = load i32, i32* %vline.addr, align 4, !tbaa !36
  %29 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curvline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %29, i32 0, i32 34
  store i32 %28, i32* %curvline, align 4, !tbaa !49
  %30 = load i8*, i8** %data, align 8, !tbaa !1
  %31 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %31, i32 0, i32 0
  %32 = load i32, i32* %numbytes, align 4, !tbaa !72
  %conv11 = sext i32 %32 to i64
  %call12 = call i8* @memset(i8* %30, i32 0, i64 %conv11) #6
  %33 = load i8*, i8** %in_data, align 8, !tbaa !1
  %34 = load i8*, i8** %data, align 8, !tbaa !1
  %35 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext13 = sext i32 %35 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %34, i64 %idx.ext13
  %cmp15 = icmp ne i8* %33, %add.ptr14
  br i1 %cmp15, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %if.end.10
  %36 = load i8*, i8** %data, align 8, !tbaa !1
  %37 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext18 = sext i32 %37 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %36, i64 %idx.ext18
  %38 = load i8*, i8** %in_data, align 8, !tbaa !1
  %39 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numrbytes20 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %39, i32 0, i32 1
  %40 = load i32, i32* %numrbytes20, align 4, !tbaa !73
  %conv21 = sext i32 %40 to i64
  %call22 = call i8* @memcpy(i8* %add.ptr19, i8* %38, i64 %conv21) #6
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.17, %if.end.10
  %41 = load i32, i32* %vline.addr, align 4, !tbaa !36
  %inc24 = add nsw i32 %41, 1
  store i32 %inc24, i32* %vline.addr, align 4, !tbaa !36
  %42 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes25 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %42, i32 0, i32 0
  %43 = load i32, i32* %numbytes25, align 4, !tbaa !72
  %44 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext26 = sext i32 %43 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %44, i64 %idx.ext26
  store i8* %add.ptr27, i8** %data, align 8, !tbaa !1
  store i32 2, i32* %ret, align 4, !tbaa !36
  store i32 1, i32* %i, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %45 = load i32, i32* %i, align 4, !tbaa !36
  %46 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numblines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %46, i32 0, i32 3
  %47 = load i32, i32* %numblines, align 4, !tbaa !58
  %cmp28 = icmp slt i32 %45, %47
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i8*, i8** %data, align 8, !tbaa !1
  %49 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes30 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %49, i32 0, i32 0
  %50 = load i32, i32* %numbytes30, align 4, !tbaa !72
  %conv31 = sext i32 %50 to i64
  %call32 = call i8* @memset(i8* %48, i32 0, i64 %conv31) #6
  %51 = load i32, i32* %vline.addr, align 4, !tbaa !36
  %52 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numvlines33 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %52, i32 0, i32 6
  %53 = load i32, i32* %numvlines33, align 4, !tbaa !64
  %cmp34 = icmp sgt i32 %51, %53
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.body
  store i32 3, i32* %ret, align 4, !tbaa !36
  br label %if.end.52

if.else:                                          ; preds = %for.body
  %54 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev37 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %54, i32 0, i32 29
  %55 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev37, align 8, !tbaa !5
  %56 = bitcast %struct.lxm_device_s* %55 to %struct.gx_device_printer_s*
  %57 = load i32, i32* %vline.addr, align 4, !tbaa !36
  %58 = load i8*, i8** %data, align 8, !tbaa !1
  %59 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext38 = sext i32 %59 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %58, i64 %idx.ext38
  %call40 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %56, i32 %57, i8* %add.ptr39, i8** %in_data) #5
  %60 = load i8*, i8** %in_data, align 8, !tbaa !1
  %61 = load i8*, i8** %data, align 8, !tbaa !1
  %62 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext41 = sext i32 %62 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %61, i64 %idx.ext41
  %cmp43 = icmp ne i8* %60, %add.ptr42
  br i1 %cmp43, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %if.else
  %63 = load i8*, i8** %data, align 8, !tbaa !1
  %64 = load i32, i32* %ofs, align 4, !tbaa !36
  %idx.ext46 = sext i32 %64 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %63, i64 %idx.ext46
  %65 = load i8*, i8** %in_data, align 8, !tbaa !1
  %66 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numrbytes48 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %66, i32 0, i32 1
  %67 = load i32, i32* %numrbytes48, align 4, !tbaa !73
  %conv49 = sext i32 %67 to i64
  %call50 = call i8* @memcpy(i8* %add.ptr47, i8* %65, i64 %conv49) #6
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.45, %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.36
  %68 = load i32, i32* %vline.addr, align 4, !tbaa !36
  %inc53 = add nsw i32 %68, 1
  store i32 %inc53, i32* %vline.addr, align 4, !tbaa !36
  %69 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes54 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %69, i32 0, i32 0
  %70 = load i32, i32* %numbytes54, align 4, !tbaa !72
  %71 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext55 = sext i32 %70 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %71, i64 %idx.ext55
  store i8* %add.ptr56, i8** %data, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %72 = load i32, i32* %i, align 4, !tbaa !36
  %inc57 = add nsw i32 %72, 1
  store i32 %inc57, i32* %i, align 4, !tbaa !36
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load i32, i32* %ret, align 4, !tbaa !36
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.9
  %74 = bitcast i32* %ofs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @qualify_buffer(%struct.pagedata_s* %gendata) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ret = alloca i32, align 4
  %rmsk = alloca i32, align 4
  %q = alloca i32, align 4
  %v1 = alloca i32, align 4
  %bpsz = alloca i32, align 4
  %cpsz = alloca i32, align 4
  %data = alloca i8*, align 8
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %rmsk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %bpsz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %cpsz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store i32 0, i32* %ret, align 4, !tbaa !36
  %10 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %10, i32 0, i32 18
  %11 = load i32, i32* %yrmul, align 4, !tbaa !31
  %div = sdiv i32 128, %11
  store i32 %div, i32* %cpsz, align 4, !tbaa !36
  %12 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul1 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %12, i32 0, i32 18
  %13 = load i32, i32* %yrmul1, align 4, !tbaa !31
  %div2 = sdiv i32 384, %13
  store i32 %div2, i32* %bpsz, align 4, !tbaa !36
  %14 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numblines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %14, i32 0, i32 3
  %15 = load i32, i32* %numblines, align 4, !tbaa !58
  %sub = sub nsw i32 %15, 1
  store i32 %sub, i32* %rmsk, align 4, !tbaa !36
  store i32 0, i32* %k, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %16 = load i32, i32* %k, align 4, !tbaa !36
  %cmp = icmp slt i32 %16, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load i32, i32* %ret, align 4, !tbaa !36
  %cmp3 = icmp eq i32 %17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %18, label %for.body, label %for.end.25

for.body:                                         ; preds = %land.end
  store i32 0, i32* %v1, align 4, !tbaa !36
  %19 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %19, i32 0, i32 32
  %20 = load i32, i32* %firstline, align 4, !tbaa !50
  %21 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %21, i32 0, i32 29
  %22 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !5
  %valign = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %22, i32 0, i32 80
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %valign, i32 0, i64 0
  %23 = load i32, i32* %arrayidx, align 4, !tbaa !36
  %add = add nsw i32 %20, %23
  %24 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev4 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %25, i32 0, i32 29
  %26 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev4, align 8, !tbaa !5
  %penofs = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %26, i32 0, i32 79
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs, i32 0, i64 %idxprom
  %27 = load i32, i32* %arrayidx5, align 4, !tbaa !36
  %add6 = add nsw i32 %add, %27
  store i32 %add6, i32* %q, align 4, !tbaa !36
  store i32 0, i32* %i, align 4, !tbaa !36
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.15, %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !36
  %29 = load i32, i32* %cpsz, align 4, !tbaa !36
  %cmp8 = icmp slt i32 %28, %29
  br i1 %cmp8, label %for.body.9, label %for.end.17

for.body.9:                                       ; preds = %for.cond.7
  %30 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %30, i32 0, i32 27
  %31 = load i8*, i8** %scanbuf, align 8, !tbaa !44
  %32 = load i32, i32* %q, align 4, !tbaa !36
  %33 = load i32, i32* %i, align 4, !tbaa !36
  %add10 = add nsw i32 %32, %33
  %34 = load i32, i32* %rmsk, align 4, !tbaa !36
  %and = and i32 %add10, %34
  %35 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %35, i32 0, i32 0
  %36 = load i32, i32* %numbytes, align 4, !tbaa !72
  %mul = mul nsw i32 %and, %36
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !36
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body.9
  %37 = load i32, i32* %j, align 4, !tbaa !36
  %38 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes12 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %38, i32 0, i32 0
  %39 = load i32, i32* %numbytes12, align 4, !tbaa !72
  %cmp13 = icmp slt i32 %37, %39
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %40 = load i8*, i8** %data, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %data, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !96
  %conv = zext i8 %41 to i32
  %42 = load i32, i32* %v1, align 4, !tbaa !36
  %or = or i32 %42, %conv
  store i32 %or, i32* %v1, align 4, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %43 = load i32, i32* %j, align 4, !tbaa !36
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %j, align 4, !tbaa !36
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %44 = load i32, i32* %i, align 4, !tbaa !36
  %inc16 = add nsw i32 %44, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !36
  br label %for.cond.7

for.end.17:                                       ; preds = %for.cond.7
  %45 = load i32, i32* %v1, align 4, !tbaa !36
  %46 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom18 = sext i32 %46 to i64
  %arrayidx19 = getelementptr inbounds [3 x i8], [3 x i8]* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @colmask, i32 0, i64 1), i32 0, i64 %idxprom18
  %47 = load i8, i8* %arrayidx19, align 1, !tbaa !96
  %conv20 = zext i8 %47 to i32
  %and21 = and i32 %45, %conv20
  %tobool = icmp ne i32 %and21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.17
  %48 = load i32, i32* %ret, align 4, !tbaa !36
  %or22 = or i32 %48, 4
  store i32 %or22, i32* %ret, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.17
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end
  %49 = load i32, i32* %k, align 4, !tbaa !36
  %inc24 = add nsw i32 %49, 1
  store i32 %inc24, i32* %k, align 4, !tbaa !36
  br label %for.cond

for.end.25:                                       ; preds = %land.end
  %50 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %rendermode = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %50, i32 0, i32 5
  %51 = load i32, i32* %rendermode, align 4, !tbaa !25
  %cmp26 = icmp eq i32 %51, 1
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %for.end.25
  store i32 0, i32* %v1, align 4, !tbaa !36
  %52 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline29 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %52, i32 0, i32 32
  %53 = load i32, i32* %firstline29, align 4, !tbaa !50
  %54 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev30 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %54, i32 0, i32 29
  %55 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev30, align 8, !tbaa !5
  %valign31 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %55, i32 0, i32 80
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %valign31, i32 0, i64 1
  %56 = load i32, i32* %arrayidx32, align 4, !tbaa !36
  %add33 = add nsw i32 %53, %56
  store i32 %add33, i32* %q, align 4, !tbaa !36
  store i32 0, i32* %i, align 4, !tbaa !36
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.56, %if.then.28
  %57 = load i32, i32* %i, align 4, !tbaa !36
  %58 = load i32, i32* %bpsz, align 4, !tbaa !36
  %cmp35 = icmp slt i32 %57, %58
  br i1 %cmp35, label %for.body.37, label %for.end.58

for.body.37:                                      ; preds = %for.cond.34
  %59 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf38 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %59, i32 0, i32 27
  %60 = load i8*, i8** %scanbuf38, align 8, !tbaa !44
  %61 = load i32, i32* %q, align 4, !tbaa !36
  %62 = load i32, i32* %i, align 4, !tbaa !36
  %add39 = add nsw i32 %61, %62
  %63 = load i32, i32* %rmsk, align 4, !tbaa !36
  %and40 = and i32 %add39, %63
  %64 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes41 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %64, i32 0, i32 0
  %65 = load i32, i32* %numbytes41, align 4, !tbaa !72
  %mul42 = mul nsw i32 %and40, %65
  %idx.ext43 = sext i32 %mul42 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %60, i64 %idx.ext43
  store i8* %add.ptr44, i8** %data, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !36
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.53, %for.body.37
  %66 = load i32, i32* %j, align 4, !tbaa !36
  %67 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes46 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %67, i32 0, i32 0
  %68 = load i32, i32* %numbytes46, align 4, !tbaa !72
  %cmp47 = icmp slt i32 %66, %68
  br i1 %cmp47, label %for.body.49, label %for.end.55

for.body.49:                                      ; preds = %for.cond.45
  %69 = load i8*, i8** %data, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr50, i8** %data, align 8, !tbaa !1
  %70 = load i8, i8* %69, align 1, !tbaa !96
  %conv51 = zext i8 %70 to i32
  %71 = load i32, i32* %v1, align 4, !tbaa !36
  %or52 = or i32 %71, %conv51
  store i32 %or52, i32* %v1, align 4, !tbaa !36
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.49
  %72 = load i32, i32* %j, align 4, !tbaa !36
  %inc54 = add nsw i32 %72, 1
  store i32 %inc54, i32* %j, align 4, !tbaa !36
  br label %for.cond.45

for.end.55:                                       ; preds = %for.cond.45
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %73 = load i32, i32* %i, align 4, !tbaa !36
  %inc57 = add nsw i32 %73, 1
  store i32 %inc57, i32* %i, align 4, !tbaa !36
  br label %for.cond.34

for.end.58:                                       ; preds = %for.cond.34
  %74 = load i32, i32* %v1, align 4, !tbaa !36
  %and59 = and i32 %74, 64
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %for.end.58
  %75 = load i32, i32* %ret, align 4, !tbaa !36
  %or62 = or i32 %75, 2
  store i32 %or62, i32* %ret, align 4, !tbaa !36
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %for.end.58
  br label %if.end.118

if.else:                                          ; preds = %for.end.25
  store i32 0, i32* %k, align 4, !tbaa !36
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.115, %if.else
  %76 = load i32, i32* %k, align 4, !tbaa !36
  %cmp65 = icmp slt i32 %76, 3
  br i1 %cmp65, label %land.rhs.67, label %land.end.70

land.rhs.67:                                      ; preds = %for.cond.64
  %77 = load i32, i32* %ret, align 4, !tbaa !36
  %and68 = and i32 %77, 2
  %tobool69 = icmp ne i32 %and68, 0
  %lnot = xor i1 %tobool69, true
  br label %land.end.70

land.end.70:                                      ; preds = %land.rhs.67, %for.cond.64
  %78 = phi i1 [ false, %for.cond.64 ], [ %lnot, %land.rhs.67 ]
  br i1 %78, label %for.body.71, label %for.end.117

for.body.71:                                      ; preds = %land.end.70
  store i32 0, i32* %v1, align 4, !tbaa !36
  %79 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline72 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %79, i32 0, i32 32
  %80 = load i32, i32* %firstline72, align 4, !tbaa !50
  %81 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev73 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %81, i32 0, i32 29
  %82 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev73, align 8, !tbaa !5
  %valign74 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %82, i32 0, i32 80
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %valign74, i32 0, i64 2
  %83 = load i32, i32* %arrayidx75, align 4, !tbaa !36
  %add76 = add nsw i32 %80, %83
  %84 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom77 = sext i32 %84 to i64
  %85 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev78 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %85, i32 0, i32 29
  %86 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev78, align 8, !tbaa !5
  %penofs79 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %86, i32 0, i32 79
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %penofs79, i32 0, i64 %idxprom77
  %87 = load i32, i32* %arrayidx80, align 4, !tbaa !36
  %add81 = add nsw i32 %add76, %87
  store i32 %add81, i32* %q, align 4, !tbaa !36
  store i32 0, i32* %i, align 4, !tbaa !36
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.104, %for.body.71
  %88 = load i32, i32* %i, align 4, !tbaa !36
  %89 = load i32, i32* %cpsz, align 4, !tbaa !36
  %cmp83 = icmp slt i32 %88, %89
  br i1 %cmp83, label %for.body.85, label %for.end.106

for.body.85:                                      ; preds = %for.cond.82
  %90 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf86 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %90, i32 0, i32 27
  %91 = load i8*, i8** %scanbuf86, align 8, !tbaa !44
  %92 = load i32, i32* %q, align 4, !tbaa !36
  %93 = load i32, i32* %i, align 4, !tbaa !36
  %add87 = add nsw i32 %92, %93
  %94 = load i32, i32* %rmsk, align 4, !tbaa !36
  %and88 = and i32 %add87, %94
  %95 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes89 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %95, i32 0, i32 0
  %96 = load i32, i32* %numbytes89, align 4, !tbaa !72
  %mul90 = mul nsw i32 %and88, %96
  %idx.ext91 = sext i32 %mul90 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %91, i64 %idx.ext91
  store i8* %add.ptr92, i8** %data, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !36
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.101, %for.body.85
  %97 = load i32, i32* %j, align 4, !tbaa !36
  %98 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes94 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %98, i32 0, i32 0
  %99 = load i32, i32* %numbytes94, align 4, !tbaa !72
  %cmp95 = icmp slt i32 %97, %99
  br i1 %cmp95, label %for.body.97, label %for.end.103

for.body.97:                                      ; preds = %for.cond.93
  %100 = load i8*, i8** %data, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr98, i8** %data, align 8, !tbaa !1
  %101 = load i8, i8* %100, align 1, !tbaa !96
  %conv99 = zext i8 %101 to i32
  %102 = load i32, i32* %v1, align 4, !tbaa !36
  %or100 = or i32 %102, %conv99
  store i32 %or100, i32* %v1, align 4, !tbaa !36
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.97
  %103 = load i32, i32* %j, align 4, !tbaa !36
  %inc102 = add nsw i32 %103, 1
  store i32 %inc102, i32* %j, align 4, !tbaa !36
  br label %for.cond.93

for.end.103:                                      ; preds = %for.cond.93
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end.103
  %104 = load i32, i32* %i, align 4, !tbaa !36
  %inc105 = add nsw i32 %104, 1
  store i32 %inc105, i32* %i, align 4, !tbaa !36
  br label %for.cond.82

for.end.106:                                      ; preds = %for.cond.82
  %105 = load i32, i32* %v1, align 4, !tbaa !36
  %106 = load i32, i32* %k, align 4, !tbaa !36
  %idxprom107 = sext i32 %106 to i64
  %arrayidx108 = getelementptr inbounds [3 x i8], [3 x i8]* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @colmask, i32 0, i64 0), i32 0, i64 %idxprom107
  %107 = load i8, i8* %arrayidx108, align 1, !tbaa !96
  %conv109 = zext i8 %107 to i32
  %and110 = and i32 %105, %conv109
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %for.end.106
  %108 = load i32, i32* %ret, align 4, !tbaa !36
  %or113 = or i32 %108, 2
  store i32 %or113, i32* %ret, align 4, !tbaa !36
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %for.end.106
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %109 = load i32, i32* %k, align 4, !tbaa !36
  %inc116 = add nsw i32 %109, 1
  store i32 %inc116, i32* %k, align 4, !tbaa !36
  br label %for.cond.64

for.end.117:                                      ; preds = %land.end.70
  br label %if.end.118

if.end.118:                                       ; preds = %for.end.117, %if.end.63
  %110 = load i32, i32* %ret, align 4, !tbaa !36
  %111 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #2
  %112 = bitcast i32* %cpsz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %bpsz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast i32* %rmsk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  ret i32 %110
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal zeroext i8 @calccheck8(i8* %data) #1 {
entry:
  %data.addr = alloca i8*, align 8
  %ck = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ck to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %ck, align 4, !tbaa !36
  store i32 1, i32* %i, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !36
  %cmp = icmp slt i32 %2, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !36
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !96
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* %ck, align 4, !tbaa !36
  %add = add nsw i32 %6, %conv
  store i32 %add, i32* %ck, align 4, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !36
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !36
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %ck, align 4, !tbaa !36
  %conv1 = trunc i32 %8 to i8
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = bitcast i32* %ck to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  ret i8 %conv1
}

; Function Attrs: nounwind uwtable
define internal void @calclinemargins(%struct.pagedata_s* %gendata, i8* %data, i32 %mask, i32* %left, i32* %right) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %data.addr = alloca i8*, align 8
  %mask.addr = alloca i32, align 4
  %left.addr = alloca i32*, align 8
  %right.addr = alloca i32*, align 8
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %mask, i32* %mask.addr, align 4, !tbaa !36
  store i32* %left, i32** %left.addr, align 8, !tbaa !1
  store i32* %right, i32** %right.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %3, i32 0, i32 0
  %4 = load i32, i32* %numbytes, align 4, !tbaa !72
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %num, align 4, !tbaa !36
  store i32 0, i32* %l, align 4, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, i32* %l, align 4, !tbaa !36
  %6 = load i32, i32* %num, align 4, !tbaa !36
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %l, align 4, !tbaa !36
  %idxprom = sext i32 %7 to i64
  %8 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !96
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %mask.addr, align 4, !tbaa !36
  %and = and i32 %conv, %10
  %cmp1 = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, i32* %l, align 4, !tbaa !36
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %l, align 4, !tbaa !36
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i32, i32* %num, align 4, !tbaa !36
  store i32 %13, i32* %r, align 4, !tbaa !36
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.14, %while.end
  %14 = load i32, i32* %r, align 4, !tbaa !36
  %cmp4 = icmp sge i32 %14, 0
  br i1 %cmp4, label %land.rhs.6, label %land.end.13

land.rhs.6:                                       ; preds = %while.cond.3
  %15 = load i32, i32* %r, align 4, !tbaa !36
  %idxprom7 = sext i32 %15 to i64
  %16 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 %idxprom7
  %17 = load i8, i8* %arrayidx8, align 1, !tbaa !96
  %conv9 = zext i8 %17 to i32
  %18 = load i32, i32* %mask.addr, align 4, !tbaa !36
  %and10 = and i32 %conv9, %18
  %cmp11 = icmp eq i32 %and10, 0
  br label %land.end.13

land.end.13:                                      ; preds = %land.rhs.6, %while.cond.3
  %19 = phi i1 [ false, %while.cond.3 ], [ %cmp11, %land.rhs.6 ]
  br i1 %19, label %while.body.14, label %while.end.15

while.body.14:                                    ; preds = %land.end.13
  %20 = load i32, i32* %r, align 4, !tbaa !36
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %r, align 4, !tbaa !36
  br label %while.cond.3

while.end.15:                                     ; preds = %land.end.13
  %21 = load i32, i32* %l, align 4, !tbaa !36
  %22 = load i32*, i32** %left.addr, align 8, !tbaa !1
  store i32 %21, i32* %22, align 4, !tbaa !36
  %23 = load i32, i32* %r, align 4, !tbaa !36
  %24 = load i32*, i32** %right.addr, align 8, !tbaa !1
  store i32 %23, i32* %24, align 4, !tbaa !36
  %25 = bitcast i32* %num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @convbuf(%struct.pagedata_s* %gendata, i32 %head, i32 %numcols, i32 %firstcol) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %head.addr = alloca i32, align 4
  %numcols.addr = alloca i32, align 4
  %firstcol.addr = alloca i32, align 4
  %read = alloca i8*, align 8
  %write = alloca i8*, align 8
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %cnt = alloca i32, align 4
  %rle = alloca i32, align 4
  %std = alloca i32, align 4
  %nby = alloca i32, align 4
  %ofs = alloca i32, align 4
  %dts0 = alloca i32, align 4
  %dtr0 = alloca i32, align 4
  %dtr1 = alloca i32, align 4
  %bytes = alloca i32, align 4
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  store i32 %head, i32* %head.addr, align 4, !tbaa !36
  store i32 %numcols, i32* %numcols.addr, align 4, !tbaa !36
  store i32 %firstcol, i32* %firstcol.addr, align 4, !tbaa !36
  %0 = bitcast i8** %read to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %write to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %rle to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %std to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %nby to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %ofs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %dts0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %dtr0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %dtr1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %16, i32 0, i32 26
  %17 = load i8*, i8** %outdata, align 8, !tbaa !43
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 4
  store i8* %add.ptr, i8** %read, align 8, !tbaa !1
  %18 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata1 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %18, i32 0, i32 26
  %19 = load i8*, i8** %outdata1, align 8, !tbaa !43
  store i8* %19, i8** %write, align 8, !tbaa !1
  %20 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numlines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %20, i32 0, i32 4
  %21 = load i32, i32* %numlines, align 4, !tbaa !59
  %cmp = icmp eq i32 %21, 208
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 26, i32* %nby, align 4, !tbaa !36
  store i32 6, i32* %ofs, align 4, !tbaa !36
  store i32 131, i32* %dts0, align 4, !tbaa !36
  store i32 65, i32* %dtr0, align 4, !tbaa !36
  store i32 255, i32* %dtr1, align 4, !tbaa !36
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 24, i32* %nby, align 4, !tbaa !36
  store i32 8, i32* %ofs, align 4, !tbaa !36
  store i32 128, i32* %dts0, align 4, !tbaa !36
  store i32 64, i32* %dtr0, align 4, !tbaa !36
  store i32 127, i32* %dtr1, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %bytes, align 4, !tbaa !36
  store i32 0, i32* %x, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc.102, %if.end
  %22 = load i32, i32* %x, align 4, !tbaa !36
  %23 = load i32, i32* %numcols.addr, align 4, !tbaa !36
  %cmp2 = icmp slt i32 %22, %23
  br i1 %cmp2, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %rle, align 4, !tbaa !36
  %24 = load i8*, i8** %read, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !96
  %conv = zext i8 %25 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !36
  %26 = load i32, i32* %c, align 4, !tbaa !36
  %tobool = icmp ne i32 %26, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %std, align 4, !tbaa !36
  store i32 1, i32* %i, align 4, !tbaa !36
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !36
  %28 = load i32, i32* %nby, align 4, !tbaa !36
  %cmp4 = icmp slt i32 %27, %28
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %29 = load i32, i32* %i, align 4, !tbaa !36
  %idxprom = sext i32 %29 to i64
  %30 = load i8*, i8** %read, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %30, i64 %idxprom
  %31 = load i8, i8* %arrayidx7, align 1, !tbaa !96
  %conv8 = zext i8 %31 to i32
  store i32 %conv8, i32* %p, align 4, !tbaa !36
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body.6
  %32 = load i32, i32* %std, align 4, !tbaa !36
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %std, align 4, !tbaa !36
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.body.6
  %33 = load i32, i32* %p, align 4, !tbaa !36
  %34 = load i32, i32* %c, align 4, !tbaa !36
  %cmp12 = icmp ne i32 %33, %34
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.11
  %35 = load i32, i32* %rle, align 4, !tbaa !36
  %inc15 = add nsw i32 %35, 1
  store i32 %inc15, i32* %rle, align 4, !tbaa !36
  %36 = load i32, i32* %i, align 4, !tbaa !36
  %idxprom16 = sext i32 %36 to i64
  %37 = load i8*, i8** %read, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %37, i64 %idxprom16
  %38 = load i8, i8* %arrayidx17, align 1, !tbaa !96
  %conv18 = zext i8 %38 to i32
  store i32 %conv18, i32* %c, align 4, !tbaa !36
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %39 = load i32, i32* %i, align 4, !tbaa !36
  %inc20 = add nsw i32 %39, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !36
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %40 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %40, i64 2
  store i8 -1, i8* %arrayidx21, align 1, !tbaa !96
  %41 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %41, i64 3
  store i8 -1, i8* %arrayidx22, align 1, !tbaa !96
  %42 = load i32, i32* %std, align 4, !tbaa !36
  %43 = load i32, i32* %rle, align 4, !tbaa !36
  %cmp23 = icmp sgt i32 %42, %43
  br i1 %cmp23, label %if.then.25, label %if.else.64

if.then.25:                                       ; preds = %for.end
  %44 = load i32, i32* %dtr0, align 4, !tbaa !36
  %conv26 = trunc i32 %44 to i8
  %45 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %conv26, i8* %arrayidx27, align 1, !tbaa !96
  %46 = load i32, i32* %dtr1, align 4, !tbaa !36
  %conv28 = trunc i32 %46 to i8
  %47 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !96
  %48 = load i8*, i8** %read, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx30, align 1, !tbaa !96
  %conv31 = zext i8 %49 to i32
  store i32 %conv31, i32* %p, align 4, !tbaa !36
  %50 = load i32, i32* %p, align 4, !tbaa !36
  %conv32 = trunc i32 %50 to i8
  %51 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %51, i64 4
  store i8 %conv32, i8* %arrayidx33, align 1, !tbaa !96
  store i32 5, i32* %cnt, align 4, !tbaa !36
  %52 = load i32, i32* %ofs, align 4, !tbaa !36
  %add = add nsw i32 %52, 1
  store i32 %add, i32* %q, align 4, !tbaa !36
  store i32 1, i32* %i, align 4, !tbaa !36
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.61, %if.then.25
  %53 = load i32, i32* %i, align 4, !tbaa !36
  %54 = load i32, i32* %nby, align 4, !tbaa !36
  %cmp35 = icmp slt i32 %53, %54
  br i1 %cmp35, label %for.body.37, label %for.end.63

for.body.37:                                      ; preds = %for.cond.34
  %55 = load i32, i32* %i, align 4, !tbaa !36
  %idxprom38 = sext i32 %55 to i64
  %56 = load i8*, i8** %read, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %56, i64 %idxprom38
  %57 = load i8, i8* %arrayidx39, align 1, !tbaa !96
  %conv40 = zext i8 %57 to i32
  %58 = load i32, i32* %p, align 4, !tbaa !36
  %cmp41 = icmp ne i32 %conv40, %58
  br i1 %cmp41, label %if.then.43, label %if.end.59

if.then.43:                                       ; preds = %for.body.37
  %59 = load i32, i32* %i, align 4, !tbaa !36
  %idxprom44 = sext i32 %59 to i64
  %60 = load i8*, i8** %read, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %60, i64 %idxprom44
  %61 = load i8, i8* %arrayidx45, align 1, !tbaa !96
  %conv46 = zext i8 %61 to i32
  store i32 %conv46, i32* %p, align 4, !tbaa !36
  %62 = load i32, i32* %p, align 4, !tbaa !36
  %conv47 = trunc i32 %62 to i8
  %63 = load i32, i32* %cnt, align 4, !tbaa !36
  %idxprom48 = sext i32 %63 to i64
  %64 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %64, i64 %idxprom48
  store i8 %conv47, i8* %arrayidx49, align 1, !tbaa !96
  %65 = load i32, i32* %q, align 4, !tbaa !36
  %and = and i32 %65, 7
  %idxprom50 = sext i32 %and to i64
  %arrayidx51 = getelementptr inbounds [8 x i8], [8 x i8]* @ibits, i32 0, i64 %idxprom50
  %66 = load i8, i8* %arrayidx51, align 1, !tbaa !96
  %conv52 = zext i8 %66 to i32
  %67 = load i32, i32* %q, align 4, !tbaa !36
  %shr = ashr i32 %67, 3
  %idxprom53 = sext i32 %shr to i64
  %68 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %68, i64 %idxprom53
  %69 = load i8, i8* %arrayidx54, align 1, !tbaa !96
  %conv55 = zext i8 %69 to i32
  %and56 = and i32 %conv55, %conv52
  %conv57 = trunc i32 %and56 to i8
  store i8 %conv57, i8* %arrayidx54, align 1, !tbaa !96
  %70 = load i32, i32* %cnt, align 4, !tbaa !36
  %inc58 = add nsw i32 %70, 1
  store i32 %inc58, i32* %cnt, align 4, !tbaa !36
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.43, %for.body.37
  %71 = load i32, i32* %q, align 4, !tbaa !36
  %inc60 = add nsw i32 %71, 1
  store i32 %inc60, i32* %q, align 4, !tbaa !36
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.59
  %72 = load i32, i32* %i, align 4, !tbaa !36
  %inc62 = add nsw i32 %72, 1
  store i32 %inc62, i32* %i, align 4, !tbaa !36
  br label %for.cond.34

for.end.63:                                       ; preds = %for.cond.34
  br label %if.end.96

if.else.64:                                       ; preds = %for.end
  %73 = load i32, i32* %dts0, align 4, !tbaa !36
  %conv65 = trunc i32 %73 to i8
  %74 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 %conv65, i8* %arrayidx66, align 1, !tbaa !96
  %75 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 -1, i8* %arrayidx67, align 1, !tbaa !96
  store i32 4, i32* %cnt, align 4, !tbaa !36
  %76 = load i32, i32* %ofs, align 4, !tbaa !36
  store i32 %76, i32* %q, align 4, !tbaa !36
  store i32 0, i32* %i, align 4, !tbaa !36
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.93, %if.else.64
  %77 = load i32, i32* %i, align 4, !tbaa !36
  %78 = load i32, i32* %nby, align 4, !tbaa !36
  %cmp69 = icmp slt i32 %77, %78
  br i1 %cmp69, label %for.body.71, label %for.end.95

for.body.71:                                      ; preds = %for.cond.68
  %79 = load i32, i32* %i, align 4, !tbaa !36
  %idxprom72 = sext i32 %79 to i64
  %80 = load i8*, i8** %read, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %80, i64 %idxprom72
  %81 = load i8, i8* %arrayidx73, align 1, !tbaa !96
  %conv74 = zext i8 %81 to i32
  store i32 %conv74, i32* %p, align 4, !tbaa !36
  %82 = load i32, i32* %p, align 4, !tbaa !36
  %tobool75 = icmp ne i32 %82, 0
  br i1 %tobool75, label %if.then.76, label %if.end.91

if.then.76:                                       ; preds = %for.body.71
  %83 = load i32, i32* %p, align 4, !tbaa !36
  %conv77 = trunc i32 %83 to i8
  %84 = load i32, i32* %cnt, align 4, !tbaa !36
  %idxprom78 = sext i32 %84 to i64
  %85 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %85, i64 %idxprom78
  store i8 %conv77, i8* %arrayidx79, align 1, !tbaa !96
  %86 = load i32, i32* %q, align 4, !tbaa !36
  %and80 = and i32 %86, 7
  %idxprom81 = sext i32 %and80 to i64
  %arrayidx82 = getelementptr inbounds [8 x i8], [8 x i8]* @ibits, i32 0, i64 %idxprom81
  %87 = load i8, i8* %arrayidx82, align 1, !tbaa !96
  %conv83 = zext i8 %87 to i32
  %88 = load i32, i32* %q, align 4, !tbaa !36
  %shr84 = ashr i32 %88, 3
  %idxprom85 = sext i32 %shr84 to i64
  %89 = load i8*, i8** %write, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %89, i64 %idxprom85
  %90 = load i8, i8* %arrayidx86, align 1, !tbaa !96
  %conv87 = zext i8 %90 to i32
  %and88 = and i32 %conv87, %conv83
  %conv89 = trunc i32 %and88 to i8
  store i8 %conv89, i8* %arrayidx86, align 1, !tbaa !96
  %91 = load i32, i32* %cnt, align 4, !tbaa !36
  %inc90 = add nsw i32 %91, 1
  store i32 %inc90, i32* %cnt, align 4, !tbaa !36
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.76, %for.body.71
  %92 = load i32, i32* %q, align 4, !tbaa !36
  %inc92 = add nsw i32 %92, 1
  store i32 %inc92, i32* %q, align 4, !tbaa !36
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.91
  %93 = load i32, i32* %i, align 4, !tbaa !36
  %inc94 = add nsw i32 %93, 1
  store i32 %inc94, i32* %i, align 4, !tbaa !36
  br label %for.cond.68

for.end.95:                                       ; preds = %for.cond.68
  br label %if.end.96

if.end.96:                                        ; preds = %for.end.95, %for.end.63
  %94 = load i32, i32* %nby, align 4, !tbaa !36
  %add97 = add nsw i32 %94, 4
  %95 = load i8*, i8** %read, align 8, !tbaa !1
  %idx.ext = sext i32 %add97 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %95, i64 %idx.ext
  store i8* %add.ptr98, i8** %read, align 8, !tbaa !1
  %96 = load i32, i32* %cnt, align 4, !tbaa !36
  %97 = load i8*, i8** %write, align 8, !tbaa !1
  %idx.ext99 = sext i32 %96 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %97, i64 %idx.ext99
  store i8* %add.ptr100, i8** %write, align 8, !tbaa !1
  %98 = load i32, i32* %cnt, align 4, !tbaa !36
  %99 = load i32, i32* %bytes, align 4, !tbaa !36
  %add101 = add nsw i32 %99, %98
  store i32 %add101, i32* %bytes, align 4, !tbaa !36
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.96
  %100 = load i32, i32* %x, align 4, !tbaa !36
  %inc103 = add nsw i32 %100, 1
  store i32 %inc103, i32* %x, align 4, !tbaa !36
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  %101 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %102 = load i32, i32* %head.addr, align 4, !tbaa !36
  %103 = load i32, i32* %numcols.addr, align 4, !tbaa !36
  %104 = load i32, i32* %firstcol.addr, align 4, !tbaa !36
  %105 = load i32, i32* %bytes, align 4, !tbaa !36
  call void @fillheader(%struct.pagedata_s* %101, i32 %102, i32 %103, i32 %104, i32 %105) #5
  %106 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i32* %dtr1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %dtr0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %dts0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %ofs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %nby to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i32* %std to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %rle to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i8** %write to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #2
  %121 = bitcast i8** %read to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fillheader(%struct.pagedata_s* %gendata, i32 %head, i32 %numcol, i32 %firstcol, i32 %bytes) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %head.addr = alloca i32, align 4
  %numcol.addr = alloca i32, align 4
  %firstcol.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %offs1 = alloca i32, align 4
  %startabs = alloca i32, align 4
  %endabs = alloca i32, align 4
  %select = alloca i32, align 4
  %fwd = alloca i32, align 4
  %back = alloca i32, align 4
  %nabspos = alloca i32, align 4
  %sep = alloca i32, align 4
  %header = alloca i8*, align 8
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  store i32 %head, i32* %head.addr, align 4, !tbaa !36
  store i32 %numcol, i32* %numcol.addr, align 4, !tbaa !36
  store i32 %firstcol, i32* %firstcol.addr, align 4, !tbaa !36
  store i32 %bytes, i32* %bytes.addr, align 4, !tbaa !36
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %offs1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %startabs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %endabs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %select to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %fwd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %nabspos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %sep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i8** %header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %header1 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %10, i32 0, i32 35
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %header1, i32 0, i32 0
  store i8* %arraydecay, i8** %header, align 8, !tbaa !1
  %11 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %11, i32 0, i32 17
  %12 = load i32, i32* %xrmul, align 4, !tbaa !29
  %13 = load i32, i32* %firstcol.addr, align 4, !tbaa !36
  %mul = mul nsw i32 %13, %12
  store i32 %mul, i32* %firstcol.addr, align 4, !tbaa !36
  %14 = load i32, i32* %numcol.addr, align 4, !tbaa !36
  %15 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul2 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %15, i32 0, i32 17
  %16 = load i32, i32* %xrmul2, align 4, !tbaa !29
  %mul3 = mul nsw i32 %14, %16
  store i32 %mul3, i32* %len, align 4, !tbaa !36
  %17 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %select4 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %17, i32 0, i32 10
  %18 = load i32, i32* %select4, align 4, !tbaa !60
  %19 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %19, i32 0, i32 21
  %20 = load i32, i32* %direction, align 4, !tbaa !52
  %cmp = icmp eq i32 %20, 0
  %cond = select i1 %cmp, i32 1, i32 0
  %or = or i32 %18, %cond
  store i32 %or, i32* %select, align 4, !tbaa !36
  %21 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction5 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %21, i32 0, i32 21
  %22 = load i32, i32* %direction5, align 4, !tbaa !52
  %idxprom = sext i32 %22 to i64
  %23 = load i32, i32* %head.addr, align 4, !tbaa !36
  %idxprom6 = sext i32 %23 to i64
  %24 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %24, i32 0, i32 29
  %25 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !5
  %hoffset = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %25, i32 0, i32 81
  %arrayidx = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %hoffset, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 %idxprom
  %26 = load i32, i32* %arrayidx7, align 4, !tbaa !36
  store i32 %26, i32* %offs1, align 4, !tbaa !36
  %27 = load i32, i32* %head.addr, align 4, !tbaa !36
  %cmp8 = icmp eq i32 %27, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %28 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %bwsep = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %28, i32 0, i32 22
  %29 = load i32, i32* %bwsep, align 4, !tbaa !68
  %mul9 = mul nsw i32 %29, 2
  %30 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul10 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %30, i32 0, i32 17
  %31 = load i32, i32* %xrmul10, align 4, !tbaa !29
  %div = sdiv i32 %mul9, %31
  store i32 %div, i32* %sep, align 4, !tbaa !36
  br label %if.end

if.else:                                          ; preds = %entry
  %32 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %colsep = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %32, i32 0, i32 23
  %33 = load i32, i32* %colsep, align 4, !tbaa !70
  %mul11 = mul nsw i32 %33, 2
  %34 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul12 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %34, i32 0, i32 17
  %35 = load i32, i32* %xrmul12, align 4, !tbaa !29
  %div13 = sdiv i32 %mul11, %35
  store i32 %div13, i32* %sep, align 4, !tbaa !36
  %36 = load i32, i32* %select, align 4, !tbaa !36
  %or14 = or i32 %36, 128
  store i32 %or14, i32* %select, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %37 = load i32, i32* %firstcol.addr, align 4, !tbaa !36
  %38 = load i32, i32* %offs1, align 4, !tbaa !36
  %add = add nsw i32 %37, %38
  store i32 %add, i32* %startabs, align 4, !tbaa !36
  %39 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction15 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %39, i32 0, i32 21
  %40 = load i32, i32* %direction15, align 4, !tbaa !52
  %cmp16 = icmp eq i32 %40, 0
  br i1 %cmp16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end
  %41 = load i32, i32* %startabs, align 4, !tbaa !36
  %42 = load i32, i32* %len, align 4, !tbaa !36
  %add18 = add nsw i32 %41, %42
  store i32 %add18, i32* %endabs, align 4, !tbaa !36
  br label %if.end.20

if.else.19:                                       ; preds = %if.end
  %43 = load i32, i32* %startabs, align 4, !tbaa !36
  %44 = load i32, i32* %len, align 4, !tbaa !36
  %sub = sub nsw i32 %43, %44
  store i32 %sub, i32* %endabs, align 4, !tbaa !36
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.17
  %45 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction21 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %45, i32 0, i32 21
  %46 = load i32, i32* %direction21, align 4, !tbaa !52
  %cmp22 = icmp eq i32 %46, 0
  br i1 %cmp22, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %if.end.20
  %47 = load i32, i32* %endabs, align 4, !tbaa !36
  %sub24 = sub nsw i32 %47, 3600
  %shr = ashr i32 %sub24, 3
  %and = and i32 %shr, 65520
  %add25 = add nsw i32 %and, 9
  store i32 %add25, i32* %nabspos, align 4, !tbaa !36
  %48 = load i32, i32* %nabspos, align 4, !tbaa !36
  %49 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %49, i32 0, i32 19
  %50 = load i32, i32* %curheadpos, align 4, !tbaa !45
  %sub26 = sub nsw i32 %48, %50
  store i32 %sub26, i32* %fwd, align 4, !tbaa !36
  br label %if.end.42

if.else.27:                                       ; preds = %if.end.20
  %51 = load i32, i32* %endabs, align 4, !tbaa !36
  %cmp28 = icmp sgt i32 %51, 4816
  br i1 %cmp28, label %if.then.29, label %if.else.34

if.then.29:                                       ; preds = %if.else.27
  %52 = load i32, i32* %endabs, align 4, !tbaa !36
  %sub30 = sub nsw i32 %52, 4800
  %shr31 = ashr i32 %sub30, 3
  %and32 = and i32 %shr31, 65520
  %add33 = add nsw i32 %and32, 9
  store i32 %add33, i32* %nabspos, align 4, !tbaa !36
  br label %if.end.39

if.else.34:                                       ; preds = %if.else.27
  %53 = load i32, i32* %endabs, align 4, !tbaa !36
  %sub35 = sub nsw i32 %53, 3600
  %shr36 = ashr i32 %sub35, 3
  %and37 = and i32 %shr36, 65520
  %add38 = add nsw i32 %and37, 9
  store i32 %add38, i32* %nabspos, align 4, !tbaa !36
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.34, %if.then.29
  %54 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos40 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %54, i32 0, i32 19
  %55 = load i32, i32* %curheadpos40, align 4, !tbaa !45
  %56 = load i32, i32* %nabspos, align 4, !tbaa !36
  %sub41 = sub nsw i32 %55, %56
  store i32 %sub41, i32* %fwd, align 4, !tbaa !36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.39, %if.then.23
  %57 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction43 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %57, i32 0, i32 21
  %58 = load i32, i32* %direction43, align 4, !tbaa !52
  %cmp44 = icmp eq i32 %58, 0
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.42
  %59 = load i32, i32* %fwd, align 4, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %if.end.42
  %60 = load i32, i32* %fwd, align 4, !tbaa !36
  %sub45 = sub nsw i32 0, %60
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond46 = phi i32 [ %59, %cond.true ], [ %sub45, %cond.false ]
  %61 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos47 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %61, i32 0, i32 19
  %62 = load i32, i32* %curheadpos47, align 4, !tbaa !45
  %add48 = add nsw i32 %62, %cond46
  store i32 %add48, i32* %curheadpos47, align 4, !tbaa !45
  store i32 0, i32* %back, align 4, !tbaa !36
  %63 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %bidirprint = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %63, i32 0, i32 9
  %64 = load i32, i32* %bidirprint, align 4, !tbaa !55
  %cmp49 = icmp eq i32 %64, 0
  br i1 %cmp49, label %if.then.50, label %if.end.70

if.then.50:                                       ; preds = %cond.end
  %65 = load i32, i32* %startabs, align 4, !tbaa !36
  %cmp51 = icmp sgt i32 %65, 4816
  br i1 %cmp51, label %if.then.52, label %if.else.56

if.then.52:                                       ; preds = %if.then.50
  %66 = load i32, i32* %startabs, align 4, !tbaa !36
  %sub53 = sub nsw i32 %66, 4800
  %shr54 = ashr i32 %sub53, 3
  %and55 = and i32 %shr54, 65520
  store i32 %and55, i32* %nabspos, align 4, !tbaa !36
  br label %if.end.60

if.else.56:                                       ; preds = %if.then.50
  %67 = load i32, i32* %startabs, align 4, !tbaa !36
  %sub57 = sub nsw i32 %67, 3600
  %shr58 = ashr i32 %sub57, 3
  %and59 = and i32 %shr58, 65520
  store i32 %and59, i32* %nabspos, align 4, !tbaa !36
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.56, %if.then.52
  %68 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction61 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %68, i32 0, i32 21
  %69 = load i32, i32* %direction61, align 4, !tbaa !52
  %cmp62 = icmp eq i32 %69, 0
  br i1 %cmp62, label %if.then.63, label %if.else.66

if.then.63:                                       ; preds = %if.end.60
  %70 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos64 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %70, i32 0, i32 19
  %71 = load i32, i32* %curheadpos64, align 4, !tbaa !45
  %72 = load i32, i32* %nabspos, align 4, !tbaa !36
  %sub65 = sub nsw i32 %71, %72
  store i32 %sub65, i32* %back, align 4, !tbaa !36
  br label %if.end.69

if.else.66:                                       ; preds = %if.end.60
  %73 = load i32, i32* %nabspos, align 4, !tbaa !36
  %74 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos67 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %74, i32 0, i32 19
  %75 = load i32, i32* %curheadpos67, align 4, !tbaa !45
  %sub68 = sub nsw i32 %73, %75
  store i32 %sub68, i32* %back, align 4, !tbaa !36
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.63
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %cond.end
  %76 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction71 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %76, i32 0, i32 21
  %77 = load i32, i32* %direction71, align 4, !tbaa !52
  %cmp72 = icmp eq i32 %77, 0
  br i1 %cmp72, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %if.end.70
  %78 = load i32, i32* %back, align 4, !tbaa !36
  br label %cond.end.76

cond.false.74:                                    ; preds = %if.end.70
  %79 = load i32, i32* %back, align 4, !tbaa !36
  %sub75 = sub nsw i32 0, %79
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.74, %cond.true.73
  %cond77 = phi i32 [ %78, %cond.true.73 ], [ %sub75, %cond.false.74 ]
  %80 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %curheadpos78 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %80, i32 0, i32 19
  %81 = load i32, i32* %curheadpos78, align 4, !tbaa !45
  %sub79 = sub nsw i32 %81, %cond77
  store i32 %sub79, i32* %curheadpos78, align 4, !tbaa !45
  %82 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 27, i8* %arrayidx80, align 1, !tbaa !96
  %83 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %83, i64 1
  store i8 64, i8* %arrayidx81, align 1, !tbaa !96
  %84 = load i32, i32* %select, align 4, !tbaa !36
  %conv = trunc i32 %84 to i8
  %85 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %85, i64 2
  store i8 %conv, i8* %arrayidx82, align 1, !tbaa !96
  %86 = load i32, i32* %numcol.addr, align 4, !tbaa !36
  %shr83 = ashr i32 %86, 8
  %conv84 = trunc i32 %shr83 to i8
  %87 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %87, i64 3
  store i8 %conv84, i8* %arrayidx85, align 1, !tbaa !96
  %88 = load i32, i32* %numcol.addr, align 4, !tbaa !36
  %and86 = and i32 %88, 255
  %conv87 = trunc i32 %and86 to i8
  %89 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %89, i64 4
  store i8 %conv87, i8* %arrayidx88, align 1, !tbaa !96
  %90 = load i32, i32* %fwd, align 4, !tbaa !36
  %shr89 = ashr i32 %90, 8
  %conv90 = trunc i32 %shr89 to i8
  %91 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i8, i8* %91, i64 5
  store i8 %conv90, i8* %arrayidx91, align 1, !tbaa !96
  %92 = load i32, i32* %fwd, align 4, !tbaa !36
  %and92 = and i32 %92, 255
  %conv93 = trunc i32 %and92 to i8
  %93 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %93, i64 6
  store i8 %conv93, i8* %arrayidx94, align 1, !tbaa !96
  %94 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %94, i64 0
  %call = call zeroext i8 @calccheck8(i8* %arrayidx95) #5
  %95 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %95, i64 7
  store i8 %call, i8* %arrayidx96, align 1, !tbaa !96
  %96 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i8, i8* %96, i64 8
  store i8 27, i8* %arrayidx97, align 1, !tbaa !96
  %97 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %97, i64 9
  store i8 66, i8* %arrayidx98, align 1, !tbaa !96
  %98 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %98, i64 10
  store i8 0, i8* %arrayidx99, align 1, !tbaa !96
  %99 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %modelprint = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %99, i32 0, i32 11
  %100 = load i32, i32* %modelprint, align 4, !tbaa !39
  %cmp100 = icmp eq i32 %100, 1
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %cond.end.76
  %101 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i8, i8* %101, i64 10
  store i8 16, i8* %arrayidx103, align 1, !tbaa !96
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %cond.end.76
  %102 = load i32, i32* %back, align 4, !tbaa !36
  %shr105 = ashr i32 %102, 8
  %conv106 = trunc i32 %shr105 to i8
  %103 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %103, i64 11
  store i8 %conv106, i8* %arrayidx107, align 1, !tbaa !96
  %104 = load i32, i32* %back, align 4, !tbaa !36
  %and108 = and i32 %104, 255
  %conv109 = trunc i32 %and108 to i8
  %105 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8, i8* %105, i64 12
  store i8 %conv109, i8* %arrayidx110, align 1, !tbaa !96
  %106 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i8, i8* %106, i64 13
  store i8 0, i8* %arrayidx111, align 1, !tbaa !96
  %107 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %107, i64 14
  store i8 0, i8* %arrayidx112, align 1, !tbaa !96
  %108 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8, i8* %108, i64 8
  %call114 = call zeroext i8 @calccheck8(i8* %arrayidx113) #5
  %109 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %109, i64 15
  store i8 %call114, i8* %arrayidx115, align 1, !tbaa !96
  %110 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %110, i64 16
  store i8 27, i8* %arrayidx116, align 1, !tbaa !96
  %111 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i8, i8* %111, i64 17
  store i8 67, i8* %arrayidx117, align 1, !tbaa !96
  %112 = load i32, i32* %bytes.addr, align 4, !tbaa !36
  %shr118 = ashr i32 %112, 16
  %and119 = and i32 %shr118, 255
  %conv120 = trunc i32 %and119 to i8
  %113 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8, i8* %113, i64 18
  store i8 %conv120, i8* %arrayidx121, align 1, !tbaa !96
  %114 = load i32, i32* %bytes.addr, align 4, !tbaa !36
  %shr122 = ashr i32 %114, 8
  %and123 = and i32 %shr122, 255
  %conv124 = trunc i32 %and123 to i8
  %115 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %115, i64 19
  store i8 %conv124, i8* %arrayidx125, align 1, !tbaa !96
  %116 = load i32, i32* %bytes.addr, align 4, !tbaa !36
  %and126 = and i32 %116, 255
  %conv127 = trunc i32 %and126 to i8
  %117 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i8, i8* %117, i64 20
  store i8 %conv127, i8* %arrayidx128, align 1, !tbaa !96
  %118 = load i32, i32* %startabs, align 4, !tbaa !36
  %shr129 = ashr i32 %118, 8
  %conv130 = trunc i32 %shr129 to i8
  %119 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i8, i8* %119, i64 21
  store i8 %conv130, i8* %arrayidx131, align 1, !tbaa !96
  %120 = load i32, i32* %startabs, align 4, !tbaa !36
  %and132 = and i32 %120, 255
  %conv133 = trunc i32 %and132 to i8
  %121 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i8, i8* %121, i64 22
  store i8 %conv133, i8* %arrayidx134, align 1, !tbaa !96
  %122 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i8, i8* %122, i64 16
  %call136 = call zeroext i8 @calccheck8(i8* %arrayidx135) #5
  %123 = load i8*, i8** %header, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i8, i8* %123, i64 23
  store i8 %call136, i8* %arrayidx137, align 1, !tbaa !96
  %124 = load i32, i32* %bytes.addr, align 4, !tbaa !36
  %125 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stripebytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %125, i32 0, i32 37
  store i32 %124, i32* %stripebytes, align 4, !tbaa !97
  %126 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %fullflag = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %126, i32 0, i32 36
  store i32 1, i32* %fullflag, align 4, !tbaa !51
  %127 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %bidirprint138 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %127, i32 0, i32 9
  %128 = load i32, i32* %bidirprint138, align 4, !tbaa !55
  %tobool = icmp ne i32 %128, 0
  br i1 %tobool, label %if.then.139, label %if.end.145

if.then.139:                                      ; preds = %if.end.104
  %129 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction140 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %129, i32 0, i32 21
  %130 = load i32, i32* %direction140, align 4, !tbaa !52
  %cmp141 = icmp eq i32 %130, 0
  %cond143 = select i1 %cmp141, i32 1, i32 0
  %131 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction144 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %131, i32 0, i32 21
  store i32 %cond143, i32* %direction144, align 4, !tbaa !52
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.139, %if.end.104
  %132 = bitcast i8** %header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  %133 = bitcast i32* %sep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %134 = bitcast i32* %nabspos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i32* %fwd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  %137 = bitcast i32* %select to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %endabs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i32* %startabs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %offs1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @encode_bw_buf(%struct.pagedata_s* %gendata) #1 {
entry:
  %gendata.addr = alloca %struct.pagedata_s*, align 8
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %nn = alloca i32, align 4
  %mod = alloca i32, align 4
  %nxp = alloca i32, align 4
  %yy = alloca i32, align 4
  %numcols = alloca i32, align 4
  %incr = alloca i32, align 4
  %dy = alloca i32, align 4
  %dy2 = alloca i32, align 4
  %csep = alloca i32, align 4
  %pass = alloca i32, align 4
  %f1 = alloca i32, align 4
  %f2 = alloca i32, align 4
  %start = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %yincr = alloca i32, align 4
  %q = alloca i32, align 4
  %mask = alloca i32, align 4
  %lines = alloca i32, align 4
  %scan = alloca i8*, align 8
  %data = alloca i8*, align 8
  store %struct.pagedata_s* %gendata, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %0 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %nn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %nxp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %yy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %numcols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %incr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %csep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %f1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %f2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %s1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %s2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %yincr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %25, i32 0, i32 16
  %26 = load i32, i32* %yres, align 4, !tbaa !30
  switch i32 %26, label %sw.default [
    i32 300, label %sw.bb
    i32 600, label %sw.bb.1
    i32 1200, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %yincr, align 4, !tbaa !36
  store i32 0, i32* %s1, align 4, !tbaa !36
  store i32 0, i32* %s2, align 4, !tbaa !36
  store i32 127, i32* %mask, align 4, !tbaa !36
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.default
  store i32 2, i32* %yincr, align 4, !tbaa !36
  store i32 0, i32* %s1, align 4, !tbaa !36
  store i32 1, i32* %s2, align 4, !tbaa !36
  store i32 255, i32* %mask, align 4, !tbaa !36
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 4, i32* %yincr, align 4, !tbaa !36
  %27 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %27, i32 0, i32 38
  %28 = load i32, i32* %ileave, align 4, !tbaa !53
  %tobool = icmp ne i32 %28, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %s1, align 4, !tbaa !36
  %29 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %ileave3 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %29, i32 0, i32 38
  %30 = load i32, i32* %ileave3, align 4, !tbaa !53
  %tobool4 = icmp ne i32 %30, 0
  %cond5 = select i1 %tobool4, i32 3, i32 2
  store i32 %cond5, i32* %s2, align 4, !tbaa !36
  store i32 511, i32* %mask, align 4, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb.1, %sw.bb
  %31 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %rendermode = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %31, i32 0, i32 5
  %32 = load i32, i32* %rendermode, align 4, !tbaa !25
  %cmp = icmp eq i32 %32, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  store i32 511, i32* %mask, align 4, !tbaa !36
  store i32 0, i32* %q, align 4, !tbaa !36
  %33 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numblines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %33, i32 0, i32 3
  %34 = load i32, i32* %numblines, align 4, !tbaa !58
  store i32 %34, i32* %lines, align 4, !tbaa !36
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %35 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %firstline = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %35, i32 0, i32 32
  %36 = load i32, i32* %firstline, align 4, !tbaa !50
  %37 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %37, i32 0, i32 29
  %38 = load %struct.lxm_device_s*, %struct.lxm_device_s** %dev, align 8, !tbaa !5
  %valign = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %38, i32 0, i32 80
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %valign, i32 0, i64 1
  %39 = load i32, i32* %arrayidx, align 4, !tbaa !36
  %add = add nsw i32 %36, %39
  store i32 %add, i32* %q, align 4, !tbaa !36
  %40 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %40, i32 0, i32 18
  %41 = load i32, i32* %yrmul, align 4, !tbaa !31
  %div = sdiv i32 384, %41
  store i32 %div, i32* %lines, align 4, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %42 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %bwsep = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %42, i32 0, i32 22
  %43 = load i32, i32* %bwsep, align 4, !tbaa !68
  %mul = mul nsw i32 %43, 2
  %44 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xrmul = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %44, i32 0, i32 17
  %45 = load i32, i32* %xrmul, align 4, !tbaa !29
  %div6 = sdiv i32 %mul, %45
  store i32 %div6, i32* %csep, align 4, !tbaa !36
  %46 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numpasses = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %46, i32 0, i32 8
  %47 = load i32, i32* %numpasses, align 4, !tbaa !57
  store i32 %47, i32* %nxp, align 4, !tbaa !36
  %48 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xres = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %48, i32 0, i32 15
  %49 = load i32, i32* %xres, align 4, !tbaa !26
  %cmp7 = icmp eq i32 %49, 1200
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %50 = load i32, i32* %nxp, align 4, !tbaa !36
  %div9 = sdiv i32 %50, 2
  store i32 %div9, i32* %nxp, align 4, !tbaa !36
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %51 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numlines = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %51, i32 0, i32 4
  %52 = load i32, i32* %numlines, align 4, !tbaa !59
  %div11 = sdiv i32 %52, 8
  %add12 = add nsw i32 %div11, 4
  store i32 %add12, i32* %dy, align 4, !tbaa !36
  %53 = load i32, i32* %dy, align 4, !tbaa !36
  %54 = load i32, i32* %nxp, align 4, !tbaa !36
  %mul13 = mul nsw i32 %53, %54
  store i32 %mul13, i32* %dy2, align 4, !tbaa !36
  %55 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %55, i32 0, i32 21
  %56 = load i32, i32* %direction, align 4, !tbaa !52
  %cmp14 = icmp eq i32 %56, 0
  br i1 %cmp14, label %if.then.15, label %if.else.20

if.then.15:                                       ; preds = %if.end.10
  %57 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %left16 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %57, i32 0, i32 30
  %58 = load i32, i32* %left16, align 4, !tbaa !46
  %59 = load i32, i32* %csep, align 4, !tbaa !36
  %mul17 = mul nsw i32 2, %59
  %sub = sub nsw i32 %58, %mul17
  store i32 %sub, i32* %left, align 4, !tbaa !36
  %60 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %right18 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %60, i32 0, i32 31
  %61 = load i32, i32* %right18, align 4, !tbaa !47
  %62 = load i32, i32* %csep, align 4, !tbaa !36
  %add19 = add nsw i32 %61, %62
  store i32 %add19, i32* %right, align 4, !tbaa !36
  br label %if.end.26

if.else.20:                                       ; preds = %if.end.10
  %63 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %left21 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %63, i32 0, i32 30
  %64 = load i32, i32* %left21, align 4, !tbaa !46
  %65 = load i32, i32* %csep, align 4, !tbaa !36
  %sub22 = sub nsw i32 %64, %65
  store i32 %sub22, i32* %left, align 4, !tbaa !36
  %66 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %right23 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %66, i32 0, i32 31
  %67 = load i32, i32* %right23, align 4, !tbaa !47
  %68 = load i32, i32* %csep, align 4, !tbaa !36
  %mul24 = mul nsw i32 2, %68
  %add25 = add nsw i32 %67, %mul24
  store i32 %add25, i32* %right, align 4, !tbaa !36
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.20, %if.then.15
  %69 = load i32, i32* %right, align 4, !tbaa !36
  %70 = load i32, i32* %left, align 4, !tbaa !36
  %sub27 = sub nsw i32 %69, %70
  store i32 %sub27, i32* %numcols, align 4, !tbaa !36
  %71 = load i32, i32* %numcols, align 4, !tbaa !36
  %72 = load i32, i32* %numcols, align 4, !tbaa !36
  %73 = load i32, i32* %nxp, align 4, !tbaa !36
  %rem = srem i32 %72, %73
  %sub28 = sub nsw i32 %71, %rem
  store i32 %sub28, i32* %mod, align 4, !tbaa !36
  store i32 1, i32* %f1, align 4, !tbaa !36
  store i32 1, i32* %f2, align 4, !tbaa !36
  %74 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %yres29 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %74, i32 0, i32 16
  %75 = load i32, i32* %yres29, align 4, !tbaa !30
  %cmp30 = icmp eq i32 %75, 300
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.26
  store i32 1, i32* %f1, align 4, !tbaa !36
  store i32 0, i32* %f2, align 4, !tbaa !36
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.26
  store i32 0, i32* %pass, align 4, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc.270, %if.end.32
  %76 = load i32, i32* %pass, align 4, !tbaa !36
  %77 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numpasses33 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %77, i32 0, i32 8
  %78 = load i32, i32* %numpasses33, align 4, !tbaa !57
  %cmp34 = icmp slt i32 %76, %78
  br i1 %cmp34, label %for.body, label %for.end.271

for.body:                                         ; preds = %for.cond
  %79 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %fullflag = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %79, i32 0, i32 36
  %80 = load i32, i32* %fullflag, align 4, !tbaa !51
  %tobool35 = icmp ne i32 %80, 0
  br i1 %tobool35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %for.body
  %81 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %header = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %81, i32 0, i32 35
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %header, i32 0, i32 0
  %82 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %82, i32 0, i32 28
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !8
  %call = call i64 @fwrite(i8* %arraydecay, i64 3, i64 8, %struct._IO_FILE* %83) #5
  %84 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %84, i32 0, i32 26
  %85 = load i8*, i8** %outdata, align 8, !tbaa !43
  %86 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stripebytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %86, i32 0, i32 37
  %87 = load i32, i32* %stripebytes, align 4, !tbaa !97
  %conv = sext i32 %87 to i64
  %88 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %stream37 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %88, i32 0, i32 28
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %stream37, align 8, !tbaa !8
  %call38 = call i64 @fwrite(i8* %85, i64 %conv, i64 1, %struct._IO_FILE* %89) #5
  %90 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %fullflag39 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %90, i32 0, i32 36
  store i32 0, i32* %fullflag39, align 4, !tbaa !51
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %for.body
  %91 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata41 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %91, i32 0, i32 26
  %92 = load i8*, i8** %outdata41, align 8, !tbaa !43
  %93 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %93, i32 0, i32 0
  %94 = load i32, i32* %numbytes, align 4, !tbaa !72
  %mul42 = mul nsw i32 %94, 30
  %conv43 = sext i32 %mul42 to i64
  %call44 = call i8* @memset(i8* %92, i32 0, i64 %conv43) #6
  %95 = load i32, i32* %nxp, align 4, !tbaa !36
  store i32 %95, i32* %incr, align 4, !tbaa !36
  %96 = load i32, i32* %left, align 4, !tbaa !36
  %97 = load i32, i32* %pass, align 4, !tbaa !36
  %add45 = add nsw i32 %96, %97
  store i32 %add45, i32* %start, align 4, !tbaa !36
  %98 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata46 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %98, i32 0, i32 26
  %99 = load i8*, i8** %outdata46, align 8, !tbaa !43
  %100 = load i32, i32* %pass, align 4, !tbaa !36
  %101 = load i32, i32* %dy, align 4, !tbaa !36
  %mul47 = mul nsw i32 %100, %101
  %idx.ext = sext i32 %mul47 to i64
  %add.ptr = getelementptr inbounds i8, i8* %99, i64 %idx.ext
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr, i64 4
  store i8* %add.ptr48, i8** %data, align 8, !tbaa !1
  %102 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xres49 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %102, i32 0, i32 15
  %103 = load i32, i32* %xres49, align 4, !tbaa !26
  %cmp50 = icmp eq i32 %103, 1200
  br i1 %cmp50, label %if.then.52, label %if.end.62

if.then.52:                                       ; preds = %if.end.40
  %104 = load i32, i32* %pass, align 4, !tbaa !36
  %and = and i32 %104, 1
  store i32 %and, i32* %f1, align 4, !tbaa !36
  %105 = load i32, i32* %f1, align 4, !tbaa !36
  %sub53 = sub nsw i32 1, %105
  store i32 %sub53, i32* %f2, align 4, !tbaa !36
  %106 = load i32, i32* %left, align 4, !tbaa !36
  %107 = load i32, i32* %pass, align 4, !tbaa !36
  %div54 = sdiv i32 %107, 2
  %add55 = add nsw i32 %106, %div54
  store i32 %add55, i32* %start, align 4, !tbaa !36
  %108 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %outdata56 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %108, i32 0, i32 26
  %109 = load i8*, i8** %outdata56, align 8, !tbaa !43
  %110 = load i32, i32* %pass, align 4, !tbaa !36
  %div57 = sdiv i32 %110, 2
  %111 = load i32, i32* %dy, align 4, !tbaa !36
  %mul58 = mul nsw i32 %div57, %111
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %109, i64 %idx.ext59
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr60, i64 4
  store i8* %add.ptr61, i8** %data, align 8, !tbaa !1
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.52, %if.end.40
  %112 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction63 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %112, i32 0, i32 21
  %113 = load i32, i32* %direction63, align 4, !tbaa !52
  %cmp64 = icmp eq i32 %113, 1
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.end.62
  %114 = load i32, i32* %nxp, align 4, !tbaa !36
  %sub67 = sub nsw i32 0, %114
  store i32 %sub67, i32* %incr, align 4, !tbaa !36
  %115 = load i32, i32* %mod, align 4, !tbaa !36
  %116 = load i32, i32* %start, align 4, !tbaa !36
  %add68 = add nsw i32 %116, %115
  store i32 %add68, i32* %start, align 4, !tbaa !36
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.end.62
  %117 = load i32, i32* %start, align 4, !tbaa !36
  store i32 %117, i32* %x, align 4, !tbaa !36
  %118 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction70 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %118, i32 0, i32 21
  %119 = load i32, i32* %direction70, align 4, !tbaa !52
  %cmp71 = icmp eq i32 %119, 0
  br i1 %cmp71, label %if.then.73, label %if.else.165

if.then.73:                                       ; preds = %if.end.69
  store i32 0, i32* %nn, align 4, !tbaa !36
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.162, %if.then.73
  %120 = load i32, i32* %nn, align 4, !tbaa !36
  %121 = load i32, i32* %numcols, align 4, !tbaa !36
  %cmp75 = icmp slt i32 %120, %121
  br i1 %cmp75, label %for.body.77, label %for.end.164

for.body.77:                                      ; preds = %for.cond.74
  %122 = load i32, i32* %x, align 4, !tbaa !36
  %cmp78 = icmp sge i32 %122, 0
  br i1 %cmp78, label %land.lhs.true, label %if.end.109

land.lhs.true:                                    ; preds = %for.body.77
  %123 = load i32, i32* %f1, align 4, !tbaa !36
  %tobool80 = icmp ne i32 %123, 0
  br i1 %tobool80, label %if.then.81, label %if.end.109

if.then.81:                                       ; preds = %land.lhs.true
  %124 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %124, i32 0, i32 27
  %125 = load i8*, i8** %scanbuf, align 8, !tbaa !44
  %126 = load i32, i32* %x, align 4, !tbaa !36
  %idx.ext82 = sext i32 %126 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %125, i64 %idx.ext82
  store i8* %add.ptr83, i8** %scan, align 8, !tbaa !1
  store i32 0, i32* %yy, align 4, !tbaa !36
  %127 = load i32, i32* %s1, align 4, !tbaa !36
  store i32 %127, i32* %y, align 4, !tbaa !36
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc, %if.then.81
  %128 = load i32, i32* %y, align 4, !tbaa !36
  %129 = load i32, i32* %lines, align 4, !tbaa !36
  %cmp85 = icmp slt i32 %128, %129
  br i1 %cmp85, label %for.body.87, label %for.end

for.body.87:                                      ; preds = %for.cond.84
  %130 = load i32, i32* %y, align 4, !tbaa !36
  %131 = load i32, i32* %q, align 4, !tbaa !36
  %add88 = add nsw i32 %130, %131
  %132 = load i32, i32* %mask, align 4, !tbaa !36
  %and89 = and i32 %add88, %132
  %133 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes90 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %133, i32 0, i32 0
  %134 = load i32, i32* %numbytes90, align 4, !tbaa !72
  %mul91 = mul nsw i32 %and89, %134
  %idxprom = sext i32 %mul91 to i64
  %135 = load i8*, i8** %scan, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %135, i64 %idxprom
  %136 = load i8, i8* %arrayidx92, align 1, !tbaa !96
  %conv93 = zext i8 %136 to i32
  %and94 = and i32 %conv93, 64
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.106

if.then.96:                                       ; preds = %for.body.87
  %137 = load i32, i32* %yy, align 4, !tbaa !36
  %and97 = and i32 %137, 7
  %idxprom98 = sext i32 %and97 to i64
  %arrayidx99 = getelementptr inbounds [8 x i8], [8 x i8]* @bits, i32 0, i64 %idxprom98
  %138 = load i8, i8* %arrayidx99, align 1, !tbaa !96
  %conv100 = zext i8 %138 to i32
  %139 = load i32, i32* %yy, align 4, !tbaa !36
  %div101 = sdiv i32 %139, 8
  %idxprom102 = sext i32 %div101 to i64
  %140 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i8, i8* %140, i64 %idxprom102
  %141 = load i8, i8* %arrayidx103, align 1, !tbaa !96
  %conv104 = zext i8 %141 to i32
  %or = or i32 %conv104, %conv100
  %conv105 = trunc i32 %or to i8
  store i8 %conv105, i8* %arrayidx103, align 1, !tbaa !96
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.96, %for.body.87
  %142 = load i32, i32* %yy, align 4, !tbaa !36
  %add107 = add nsw i32 %142, 2
  store i32 %add107, i32* %yy, align 4, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %if.end.106
  %143 = load i32, i32* %yincr, align 4, !tbaa !36
  %144 = load i32, i32* %y, align 4, !tbaa !36
  %add108 = add nsw i32 %144, %143
  store i32 %add108, i32* %y, align 4, !tbaa !36
  br label %for.cond.84

for.end:                                          ; preds = %for.cond.84
  br label %if.end.109

if.end.109:                                       ; preds = %for.end, %land.lhs.true, %for.body.77
  %145 = load i32, i32* %x, align 4, !tbaa !36
  %146 = load i32, i32* %csep, align 4, !tbaa !36
  %add110 = add nsw i32 %145, %146
  %147 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes111 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %147, i32 0, i32 0
  %148 = load i32, i32* %numbytes111, align 4, !tbaa !72
  %cmp112 = icmp slt i32 %add110, %148
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.151

land.lhs.true.114:                                ; preds = %if.end.109
  %149 = load i32, i32* %f2, align 4, !tbaa !36
  %tobool115 = icmp ne i32 %149, 0
  br i1 %tobool115, label %if.then.116, label %if.end.151

if.then.116:                                      ; preds = %land.lhs.true.114
  %150 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf117 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %150, i32 0, i32 27
  %151 = load i8*, i8** %scanbuf117, align 8, !tbaa !44
  %152 = load i32, i32* %x, align 4, !tbaa !36
  %idx.ext118 = sext i32 %152 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %151, i64 %idx.ext118
  %153 = load i32, i32* %csep, align 4, !tbaa !36
  %idx.ext120 = sext i32 %153 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %add.ptr119, i64 %idx.ext120
  store i8* %add.ptr121, i8** %scan, align 8, !tbaa !1
  store i32 1, i32* %yy, align 4, !tbaa !36
  %154 = load i32, i32* %s2, align 4, !tbaa !36
  store i32 %154, i32* %y, align 4, !tbaa !36
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.148, %if.then.116
  %155 = load i32, i32* %y, align 4, !tbaa !36
  %156 = load i32, i32* %lines, align 4, !tbaa !36
  %cmp123 = icmp slt i32 %155, %156
  br i1 %cmp123, label %for.body.125, label %for.end.150

for.body.125:                                     ; preds = %for.cond.122
  %157 = load i32, i32* %y, align 4, !tbaa !36
  %158 = load i32, i32* %q, align 4, !tbaa !36
  %add126 = add nsw i32 %157, %158
  %159 = load i32, i32* %mask, align 4, !tbaa !36
  %and127 = and i32 %add126, %159
  %160 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes128 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %160, i32 0, i32 0
  %161 = load i32, i32* %numbytes128, align 4, !tbaa !72
  %mul129 = mul nsw i32 %and127, %161
  %idxprom130 = sext i32 %mul129 to i64
  %162 = load i8*, i8** %scan, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i8, i8* %162, i64 %idxprom130
  %163 = load i8, i8* %arrayidx131, align 1, !tbaa !96
  %conv132 = zext i8 %163 to i32
  %and133 = and i32 %conv132, 64
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.146

if.then.135:                                      ; preds = %for.body.125
  %164 = load i32, i32* %yy, align 4, !tbaa !36
  %and136 = and i32 %164, 7
  %idxprom137 = sext i32 %and136 to i64
  %arrayidx138 = getelementptr inbounds [8 x i8], [8 x i8]* @bits, i32 0, i64 %idxprom137
  %165 = load i8, i8* %arrayidx138, align 1, !tbaa !96
  %conv139 = zext i8 %165 to i32
  %166 = load i32, i32* %yy, align 4, !tbaa !36
  %div140 = sdiv i32 %166, 8
  %idxprom141 = sext i32 %div140 to i64
  %167 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i8, i8* %167, i64 %idxprom141
  %168 = load i8, i8* %arrayidx142, align 1, !tbaa !96
  %conv143 = zext i8 %168 to i32
  %or144 = or i32 %conv143, %conv139
  %conv145 = trunc i32 %or144 to i8
  store i8 %conv145, i8* %arrayidx142, align 1, !tbaa !96
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.135, %for.body.125
  %169 = load i32, i32* %yy, align 4, !tbaa !36
  %add147 = add nsw i32 %169, 2
  store i32 %add147, i32* %yy, align 4, !tbaa !36
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.146
  %170 = load i32, i32* %yincr, align 4, !tbaa !36
  %171 = load i32, i32* %y, align 4, !tbaa !36
  %add149 = add nsw i32 %171, %170
  store i32 %add149, i32* %y, align 4, !tbaa !36
  br label %for.cond.122

for.end.150:                                      ; preds = %for.cond.122
  br label %if.end.151

if.end.151:                                       ; preds = %for.end.150, %land.lhs.true.114, %if.end.109
  %172 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xres152 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %172, i32 0, i32 15
  %173 = load i32, i32* %xres152, align 4, !tbaa !26
  %cmp153 = icmp eq i32 %173, 1200
  br i1 %cmp153, label %if.then.155, label %if.end.158

if.then.155:                                      ; preds = %if.end.151
  %174 = load i32, i32* %f1, align 4, !tbaa !36
  %sub156 = sub nsw i32 1, %174
  store i32 %sub156, i32* %f1, align 4, !tbaa !36
  %175 = load i32, i32* %f2, align 4, !tbaa !36
  %sub157 = sub nsw i32 1, %175
  store i32 %sub157, i32* %f2, align 4, !tbaa !36
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.155, %if.end.151
  %176 = load i32, i32* %dy2, align 4, !tbaa !36
  %177 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext159 = sext i32 %176 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %177, i64 %idx.ext159
  store i8* %add.ptr160, i8** %data, align 8, !tbaa !1
  %178 = load i32, i32* %incr, align 4, !tbaa !36
  %179 = load i32, i32* %x, align 4, !tbaa !36
  %add161 = add nsw i32 %179, %178
  store i32 %add161, i32* %x, align 4, !tbaa !36
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.158
  %180 = load i32, i32* %nxp, align 4, !tbaa !36
  %181 = load i32, i32* %nn, align 4, !tbaa !36
  %add163 = add nsw i32 %181, %180
  store i32 %add163, i32* %nn, align 4, !tbaa !36
  br label %for.cond.74

for.end.164:                                      ; preds = %for.cond.74
  br label %if.end.263

if.else.165:                                      ; preds = %if.end.69
  store i32 0, i32* %nn, align 4, !tbaa !36
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.260, %if.else.165
  %182 = load i32, i32* %nn, align 4, !tbaa !36
  %183 = load i32, i32* %numcols, align 4, !tbaa !36
  %cmp167 = icmp slt i32 %182, %183
  br i1 %cmp167, label %for.body.169, label %for.end.262

for.body.169:                                     ; preds = %for.cond.166
  %184 = load i32, i32* %x, align 4, !tbaa !36
  %185 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes170 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %185, i32 0, i32 0
  %186 = load i32, i32* %numbytes170, align 4, !tbaa !72
  %cmp171 = icmp slt i32 %184, %186
  br i1 %cmp171, label %land.lhs.true.173, label %if.end.208

land.lhs.true.173:                                ; preds = %for.body.169
  %187 = load i32, i32* %f1, align 4, !tbaa !36
  %tobool174 = icmp ne i32 %187, 0
  br i1 %tobool174, label %if.then.175, label %if.end.208

if.then.175:                                      ; preds = %land.lhs.true.173
  %188 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf176 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %188, i32 0, i32 27
  %189 = load i8*, i8** %scanbuf176, align 8, !tbaa !44
  %190 = load i32, i32* %x, align 4, !tbaa !36
  %idx.ext177 = sext i32 %190 to i64
  %add.ptr178 = getelementptr inbounds i8, i8* %189, i64 %idx.ext177
  store i8* %add.ptr178, i8** %scan, align 8, !tbaa !1
  store i32 1, i32* %yy, align 4, !tbaa !36
  %191 = load i32, i32* %s1, align 4, !tbaa !36
  store i32 %191, i32* %y, align 4, !tbaa !36
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.205, %if.then.175
  %192 = load i32, i32* %y, align 4, !tbaa !36
  %193 = load i32, i32* %lines, align 4, !tbaa !36
  %cmp180 = icmp slt i32 %192, %193
  br i1 %cmp180, label %for.body.182, label %for.end.207

for.body.182:                                     ; preds = %for.cond.179
  %194 = load i32, i32* %y, align 4, !tbaa !36
  %195 = load i32, i32* %q, align 4, !tbaa !36
  %add183 = add nsw i32 %194, %195
  %196 = load i32, i32* %mask, align 4, !tbaa !36
  %and184 = and i32 %add183, %196
  %197 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes185 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %197, i32 0, i32 0
  %198 = load i32, i32* %numbytes185, align 4, !tbaa !72
  %mul186 = mul nsw i32 %and184, %198
  %idxprom187 = sext i32 %mul186 to i64
  %199 = load i8*, i8** %scan, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i8, i8* %199, i64 %idxprom187
  %200 = load i8, i8* %arrayidx188, align 1, !tbaa !96
  %conv189 = zext i8 %200 to i32
  %and190 = and i32 %conv189, 64
  %tobool191 = icmp ne i32 %and190, 0
  br i1 %tobool191, label %if.then.192, label %if.end.203

if.then.192:                                      ; preds = %for.body.182
  %201 = load i32, i32* %yy, align 4, !tbaa !36
  %and193 = and i32 %201, 7
  %idxprom194 = sext i32 %and193 to i64
  %arrayidx195 = getelementptr inbounds [8 x i8], [8 x i8]* @bits, i32 0, i64 %idxprom194
  %202 = load i8, i8* %arrayidx195, align 1, !tbaa !96
  %conv196 = zext i8 %202 to i32
  %203 = load i32, i32* %yy, align 4, !tbaa !36
  %div197 = sdiv i32 %203, 8
  %idxprom198 = sext i32 %div197 to i64
  %204 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %204, i64 %idxprom198
  %205 = load i8, i8* %arrayidx199, align 1, !tbaa !96
  %conv200 = zext i8 %205 to i32
  %or201 = or i32 %conv200, %conv196
  %conv202 = trunc i32 %or201 to i8
  store i8 %conv202, i8* %arrayidx199, align 1, !tbaa !96
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.192, %for.body.182
  %206 = load i32, i32* %yy, align 4, !tbaa !36
  %add204 = add nsw i32 %206, 2
  store i32 %add204, i32* %yy, align 4, !tbaa !36
  br label %for.inc.205

for.inc.205:                                      ; preds = %if.end.203
  %207 = load i32, i32* %yincr, align 4, !tbaa !36
  %208 = load i32, i32* %y, align 4, !tbaa !36
  %add206 = add nsw i32 %208, %207
  store i32 %add206, i32* %y, align 4, !tbaa !36
  br label %for.cond.179

for.end.207:                                      ; preds = %for.cond.179
  br label %if.end.208

if.end.208:                                       ; preds = %for.end.207, %land.lhs.true.173, %for.body.169
  %209 = load i32, i32* %x, align 4, !tbaa !36
  %210 = load i32, i32* %csep, align 4, !tbaa !36
  %sub209 = sub nsw i32 %209, %210
  %cmp210 = icmp sge i32 %sub209, 0
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.249

land.lhs.true.212:                                ; preds = %if.end.208
  %211 = load i32, i32* %f2, align 4, !tbaa !36
  %tobool213 = icmp ne i32 %211, 0
  br i1 %tobool213, label %if.then.214, label %if.end.249

if.then.214:                                      ; preds = %land.lhs.true.212
  %212 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %scanbuf215 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %212, i32 0, i32 27
  %213 = load i8*, i8** %scanbuf215, align 8, !tbaa !44
  %214 = load i32, i32* %x, align 4, !tbaa !36
  %idx.ext216 = sext i32 %214 to i64
  %add.ptr217 = getelementptr inbounds i8, i8* %213, i64 %idx.ext216
  %215 = load i32, i32* %csep, align 4, !tbaa !36
  %idx.ext218 = sext i32 %215 to i64
  %idx.neg = sub i64 0, %idx.ext218
  %add.ptr219 = getelementptr inbounds i8, i8* %add.ptr217, i64 %idx.neg
  store i8* %add.ptr219, i8** %scan, align 8, !tbaa !1
  store i32 0, i32* %yy, align 4, !tbaa !36
  %216 = load i32, i32* %s2, align 4, !tbaa !36
  store i32 %216, i32* %y, align 4, !tbaa !36
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.246, %if.then.214
  %217 = load i32, i32* %y, align 4, !tbaa !36
  %218 = load i32, i32* %lines, align 4, !tbaa !36
  %cmp221 = icmp slt i32 %217, %218
  br i1 %cmp221, label %for.body.223, label %for.end.248

for.body.223:                                     ; preds = %for.cond.220
  %219 = load i32, i32* %y, align 4, !tbaa !36
  %220 = load i32, i32* %q, align 4, !tbaa !36
  %add224 = add nsw i32 %219, %220
  %221 = load i32, i32* %mask, align 4, !tbaa !36
  %and225 = and i32 %add224, %221
  %222 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %numbytes226 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %222, i32 0, i32 0
  %223 = load i32, i32* %numbytes226, align 4, !tbaa !72
  %mul227 = mul nsw i32 %and225, %223
  %idxprom228 = sext i32 %mul227 to i64
  %224 = load i8*, i8** %scan, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i8, i8* %224, i64 %idxprom228
  %225 = load i8, i8* %arrayidx229, align 1, !tbaa !96
  %conv230 = zext i8 %225 to i32
  %and231 = and i32 %conv230, 64
  %tobool232 = icmp ne i32 %and231, 0
  br i1 %tobool232, label %if.then.233, label %if.end.244

if.then.233:                                      ; preds = %for.body.223
  %226 = load i32, i32* %yy, align 4, !tbaa !36
  %and234 = and i32 %226, 7
  %idxprom235 = sext i32 %and234 to i64
  %arrayidx236 = getelementptr inbounds [8 x i8], [8 x i8]* @bits, i32 0, i64 %idxprom235
  %227 = load i8, i8* %arrayidx236, align 1, !tbaa !96
  %conv237 = zext i8 %227 to i32
  %228 = load i32, i32* %yy, align 4, !tbaa !36
  %div238 = sdiv i32 %228, 8
  %idxprom239 = sext i32 %div238 to i64
  %229 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i8, i8* %229, i64 %idxprom239
  %230 = load i8, i8* %arrayidx240, align 1, !tbaa !96
  %conv241 = zext i8 %230 to i32
  %or242 = or i32 %conv241, %conv237
  %conv243 = trunc i32 %or242 to i8
  store i8 %conv243, i8* %arrayidx240, align 1, !tbaa !96
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.233, %for.body.223
  %231 = load i32, i32* %yy, align 4, !tbaa !36
  %add245 = add nsw i32 %231, 2
  store i32 %add245, i32* %yy, align 4, !tbaa !36
  br label %for.inc.246

for.inc.246:                                      ; preds = %if.end.244
  %232 = load i32, i32* %yincr, align 4, !tbaa !36
  %233 = load i32, i32* %y, align 4, !tbaa !36
  %add247 = add nsw i32 %233, %232
  store i32 %add247, i32* %y, align 4, !tbaa !36
  br label %for.cond.220

for.end.248:                                      ; preds = %for.cond.220
  br label %if.end.249

if.end.249:                                       ; preds = %for.end.248, %land.lhs.true.212, %if.end.208
  %234 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %xres250 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %234, i32 0, i32 15
  %235 = load i32, i32* %xres250, align 4, !tbaa !26
  %cmp251 = icmp eq i32 %235, 1200
  br i1 %cmp251, label %if.then.253, label %if.end.256

if.then.253:                                      ; preds = %if.end.249
  %236 = load i32, i32* %f1, align 4, !tbaa !36
  %sub254 = sub nsw i32 1, %236
  store i32 %sub254, i32* %f1, align 4, !tbaa !36
  %237 = load i32, i32* %f2, align 4, !tbaa !36
  %sub255 = sub nsw i32 1, %237
  store i32 %sub255, i32* %f2, align 4, !tbaa !36
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.253, %if.end.249
  %238 = load i32, i32* %dy2, align 4, !tbaa !36
  %239 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext257 = sext i32 %238 to i64
  %add.ptr258 = getelementptr inbounds i8, i8* %239, i64 %idx.ext257
  store i8* %add.ptr258, i8** %data, align 8, !tbaa !1
  %240 = load i32, i32* %incr, align 4, !tbaa !36
  %241 = load i32, i32* %x, align 4, !tbaa !36
  %add259 = add nsw i32 %241, %240
  store i32 %add259, i32* %x, align 4, !tbaa !36
  br label %for.inc.260

for.inc.260:                                      ; preds = %if.end.256
  %242 = load i32, i32* %nxp, align 4, !tbaa !36
  %243 = load i32, i32* %nn, align 4, !tbaa !36
  %add261 = add nsw i32 %243, %242
  store i32 %add261, i32* %nn, align 4, !tbaa !36
  br label %for.cond.166

for.end.262:                                      ; preds = %for.cond.166
  br label %if.end.263

if.end.263:                                       ; preds = %for.end.262, %for.end.164
  %244 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %direction264 = getelementptr inbounds %struct.pagedata_s, %struct.pagedata_s* %244, i32 0, i32 21
  %245 = load i32, i32* %direction264, align 4, !tbaa !52
  %cmp265 = icmp eq i32 %245, 0
  br i1 %cmp265, label %if.then.267, label %if.else.268

if.then.267:                                      ; preds = %if.end.263
  %246 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %247 = load i32, i32* %numcols, align 4, !tbaa !36
  %248 = load i32, i32* %left, align 4, !tbaa !36
  call void @convbuf(%struct.pagedata_s* %246, i32 0, i32 %247, i32 %248) #5
  br label %if.end.269

if.else.268:                                      ; preds = %if.end.263
  %249 = load %struct.pagedata_s*, %struct.pagedata_s** %gendata.addr, align 8, !tbaa !1
  %250 = load i32, i32* %numcols, align 4, !tbaa !36
  %251 = load i32, i32* %right, align 4, !tbaa !36
  call void @convbuf(%struct.pagedata_s* %249, i32 0, i32 %250, i32 %251) #5
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.268, %if.then.267
  br label %for.inc.270

for.inc.270:                                      ; preds = %if.end.269
  %252 = load i32, i32* %pass, align 4, !tbaa !36
  %inc = add nsw i32 %252, 1
  store i32 %inc, i32* %pass, align 4, !tbaa !36
  br label %for.cond

for.end.271:                                      ; preds = %for.cond
  %253 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #2
  %254 = bitcast i8** %scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #2
  %255 = bitcast i32* %lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #2
  %256 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #2
  %257 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #2
  %258 = bitcast i32* %yincr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #2
  %259 = bitcast i32* %s2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #2
  %260 = bitcast i32* %s1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %261 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #2
  %262 = bitcast i32* %f2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #2
  %263 = bitcast i32* %f1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #2
  %264 = bitcast i32* %pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #2
  %265 = bitcast i32* %csep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #2
  %266 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #2
  %267 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #2
  %268 = bitcast i32* %incr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #2
  %269 = bitcast i32* %numcols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #2
  %270 = bitcast i32* %yy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #2
  %271 = bitcast i32* %nxp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #2
  %272 = bitcast i32* %mod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #2
  %273 = bitcast i32* %nn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #2
  %274 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #2
  %275 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #2
  %276 = bitcast i32* %right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #2
  %277 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #2
  ret void
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
!5 = !{!6, !2, i64 128}
!6 = !{!"pagedata_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !3, i64 156, !7, i64 180, !7, i64 184, !7, i64 188}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !2, i64 120}
!9 = !{!10, !7, i64 18472}
!10 = !{!"lxm_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !11, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !13, i64 96, !16, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !7, i64 1052, !7, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !24, i64 17256, !7, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888, !7, i64 18472, !7, i64 18476, !7, i64 18480, !7, i64 18484, !7, i64 18488, !7, i64 18492, !7, i64 18496, !7, i64 18500, !7, i64 18504, !7, i64 18508, !7, i64 18512, !3, i64 18516, !3, i64 18528, !3, i64 18540, !6, i64 18560}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !7, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !7, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28}
!25 = !{!6, !7, i64 20}
!26 = !{!6, !7, i64 60}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !3, i64 0}
!29 = !{!6, !7, i64 68}
!30 = !{!6, !7, i64 64}
!31 = !{!6, !7, i64 72}
!32 = !{!10, !7, i64 18504}
!33 = !{!6, !7, i64 56}
!34 = !{!10, !7, i64 18500}
!35 = !{!6, !7, i64 52}
!36 = !{!7, !7, i64 0}
!37 = !{!6, !7, i64 96}
!38 = !{!10, !7, i64 18508}
!39 = !{!6, !7, i64 44}
!40 = !{!10, !7, i64 18512}
!41 = !{!6, !7, i64 48}
!42 = !{!6, !7, i64 100}
!43 = !{!6, !2, i64 104}
!44 = !{!6, !2, i64 112}
!45 = !{!6, !7, i64 76}
!46 = !{!6, !7, i64 136}
!47 = !{!6, !7, i64 140}
!48 = !{!6, !7, i64 148}
!49 = !{!6, !7, i64 152}
!50 = !{!6, !7, i64 144}
!51 = !{!6, !7, i64 180}
!52 = !{!6, !7, i64 84}
!53 = !{!6, !7, i64 188}
!54 = !{!10, !7, i64 18492}
!55 = !{!6, !7, i64 36}
!56 = !{!10, !7, i64 18496}
!57 = !{!6, !7, i64 32}
!58 = !{!6, !7, i64 12}
!59 = !{!6, !7, i64 16}
!60 = !{!6, !7, i64 40}
!61 = !{!10, !7, i64 832}
!62 = !{!6, !7, i64 28}
!63 = !{!10, !7, i64 836}
!64 = !{!6, !7, i64 24}
!65 = !{!10, !7, i64 18476}
!66 = !{!10, !7, i64 18480}
!67 = !{!10, !7, i64 18484}
!68 = !{!6, !7, i64 88}
!69 = !{!10, !7, i64 18488}
!70 = !{!6, !7, i64 92}
!71 = !{!6, !7, i64 8}
!72 = !{!6, !7, i64 0}
!73 = !{!6, !7, i64 4}
!74 = !{!6, !7, i64 80}
!75 = !{!76, !2, i64 24}
!76 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !11, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !13, i64 96, !16, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !7, i64 1052, !7, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !24, i64 17256, !7, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888}
!77 = !{!78, !2, i64 200}
!78 = !{!"gs_memory_s", !2, i64 0, !79, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!79 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!80 = !{!78, !2, i64 88}
!81 = !{!82, !7, i64 832}
!82 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !11, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !13, i64 96, !16, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !7, i64 1052, !7, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!83 = !{!14, !14, i64 0}
!84 = !{!12, !12, i64 0}
!85 = !{!86, !2, i64 0}
!86 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!87 = !{!88, !2, i64 56}
!88 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!89 = !{!82, !7, i64 100}
!90 = !{!82, !7, i64 112}
!91 = !{!82, !7, i64 116}
!92 = !{!82, !7, i64 120}
!93 = !{!82, !7, i64 124}
!94 = !{!10, !2, i64 24}
!95 = !{!78, !2, i64 24}
!96 = !{!3, !3, i64 0}
!97 = !{!6, !7, i64 184}
