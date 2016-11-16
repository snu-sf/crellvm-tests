; ModuleID = './gdevlxm.bc'
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
%struct.lxm_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32 }

@lxm5700m_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lxm_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @lxm_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"lxm5700m\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_lxm5700m_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32 } { i32 18480, %struct.gx_device_procs_s* @lxm5700m_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float -1.200000e+02, float -0.000000e+00], [4 x float] [float 0x402CCCCCC0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @lxm5700m_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 16 }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"HeadSeparation\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"lxm_print_page(buf1)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"lxm_print_page(swipeBuf)\00", align 1
@lxm5700m_print_page.init_string = internal constant [107 x i8] c"\A5\00\06@\03\03\C0\0F\0F\A5\00\03@\04\05\A5\00\03@\04\06\A5\00\03@\04\07\A5\00\03@\04\08\A5\00\04@\E0\0B\03\A5\00\0B@\E0A\00\00\00\00\00\00\00\02\A5\00\06@\05\00\00\80\00\1B*\07s0\1B*m\00\14\03\84\02\00\01\F4\1B*\07c\1B*m\00B\00\00\A5\00\05@\E0\80\08\07\1B*m\00@\15\07\0F\0F", align 16
@lxm5700m_print_page.bottom = internal constant [4 x i8] c"\1B*\07e", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lxm5700m_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %lnum = alloca i32, align 4
  %minX = alloca i32, align 4
  %maxX = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %highestX = alloca i32, align 4
  %leastX = alloca i32, align 4
  %extent = alloca i32, align 4
  %direction = alloca i32, align 4
  %lastY = alloca i32, align 4
  %line_size = alloca i32, align 4
  %in_size = alloca i32, align 4
  %swipeBuf_size = alloca i32, align 4
  %buf1 = alloca i8*, align 8
  %swipeBuf = alloca i8*, align 8
  %in = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %in_data = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %lcnt = alloca i32, align 4
  %l30 = alloca i32, align 4
  %sx = alloca i32, align 4
  %sxBy8 = alloca i32, align 4
  %sxMask = alloca i32, align 4
  %words = alloca [13 x i32], align 16
  %f = alloca i32, align 4
  %sum = alloca i32, align 4
  %retval119 = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %y = alloca i32, align 4
  %j1 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %i120 = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %directory = alloca i32, align 4
  %leastY = alloca i32, align 4
  %sz = alloca i32, align 4
  %deltaY = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %minX to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %maxX to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %highestX to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %leastX to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %extent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %direction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %direction, align 4, !tbaa !5
  %9 = bitcast i32* %lastY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %lastY, align 4, !tbaa !5
  %10 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_printer_s* %11 to %struct.gx_device_s*
  %13 = bitcast %struct.gx_device_s* %12 to %struct.gx_device_printer_s*
  %14 = bitcast %struct.gx_device_printer_s* %13 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %14, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %15 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul = mul nsw i32 %16, 208
  store i32 %mul, i32* %in_size, align 4, !tbaa !5
  %17 = bitcast i32* %swipeBuf_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %in_size, align 4, !tbaa !5
  store i32 %18, i32* %swipeBuf_size, align 4, !tbaa !5
  %19 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !23
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %23 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !26
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !23
  %27 = load i32, i32* %in_size, align 4, !tbaa !5
  %call3 = call i8* %23(%struct.gs_memory_s* %26, i32 %27, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call3, i8** %buf1, align 8, !tbaa !1
  %28 = bitcast i8** %swipeBuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !7
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !23
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %alloc_byte_array7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 10
  %32 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array7, align 8, !tbaa !26
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !7
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !23
  %36 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %call10 = call i8* %32(%struct.gs_memory_s* %35, i32 %36, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call10, i8** %swipeBuf, align 8, !tbaa !1
  %37 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #2
  %38 = load i8*, i8** %buf1, align 8, !tbaa !1
  store i8* %38, i8** %in, align 8, !tbaa !1
  %39 = load i8*, i8** %buf1, align 8, !tbaa !1
  %cmp = icmp eq i8* %39, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %40 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %40, null
  br i1 %cmp11, label %if.then, label %if.end.27

if.then:                                          ; preds = %lor.lhs.false, %entry
  %41 = load i8*, i8** %buf1, align 8, !tbaa !1
  %tobool = icmp ne i8* %41, null
  br i1 %tobool, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  br label %quit_ignomiously

quit_ignomiously:                                 ; preds = %cleanup.397, %if.then.12
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !7
  %non_gc_memory14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory14, align 8, !tbaa !23
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !27
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !7
  %non_gc_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory17, align 8, !tbaa !23
  %49 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %45(%struct.gs_memory_s* %48, i8* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %quit_ignomiously, %if.then
  %50 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %tobool18 = icmp ne i8* %50, null
  br i1 %tobool18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %if.end
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !7
  %non_gc_memory21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory21, align 8, !tbaa !23
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_object23 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object23, align 8, !tbaa !27
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !7
  %non_gc_memory25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory25, align 8, !tbaa !23
  %58 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  call void %54(%struct.gs_memory_s* %57, i8* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.19, %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.417

if.end.27:                                        ; preds = %lor.lhs.false
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call28 = call i64 @fwrite(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @lxm5700m_print_page.init_string, i32 0, i32 0), i64 1, i64 107, %struct._IO_FILE* %59) #5
  store i32 0, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.401, %if.end.27
  %60 = load i32, i32* %lnum, align 4, !tbaa !5
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 14
  %62 = load i32, i32* %height, align 4, !tbaa !28
  %sub = sub nsw i32 %62, 208
  %cmp29 = icmp slt i32 %60, %sub
  br i1 %cmp29, label %for.body, label %for.end.402

for.body:                                         ; preds = %for.cond
  %63 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  %66 = bitcast i32* %l30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = load i32, i32* %lnum, align 4, !tbaa !5
  store i32 %67, i32* %l30, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %for.body
  %68 = load i32, i32* %l30, align 4, !tbaa !5
  %69 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height32 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %69, i32 0, i32 14
  %70 = load i32, i32* %height32, align 4, !tbaa !28
  %cmp33 = icmp slt i32 %68, %70
  br i1 %cmp33, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.31
  %71 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %72 = load i32, i32* %l30, align 4, !tbaa !5
  %73 = load i8*, i8** %in, align 8, !tbaa !1
  %call35 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %71, i32 %72, i8* %73, i8** %in_data) #5
  %74 = load i8*, i8** %in_data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %conv = zext i8 %75 to i32
  %cmp36 = icmp ne i32 %conv, 0
  br i1 %cmp36, label %if.then.43, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %for.body.34
  %76 = load i8*, i8** %in_data, align 8, !tbaa !1
  %77 = load i8*, i8** %in_data, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub39 = sub nsw i32 %78, 1
  %conv40 = sext i32 %sub39 to i64
  %call41 = call i32 @memcmp(i8* %76, i8* %add.ptr, i64 %conv40) #6
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.38, %for.body.34
  br label %for.end

if.end.44:                                        ; preds = %lor.lhs.false.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %79 = load i32, i32* %l30, align 4, !tbaa !5
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %l30, align 4, !tbaa !5
  br label %for.cond.31

for.end:                                          ; preds = %if.then.43, %for.cond.31
  %80 = load i32, i32* %l30, align 4, !tbaa !5
  %81 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height45 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %81, i32 0, i32 14
  %82 = load i32, i32* %height45, align 4, !tbaa !28
  %cmp46 = icmp sge i32 %80, %82
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end
  %83 = load i32, i32* %l30, align 4, !tbaa !5
  store i32 %83, i32* %lnum, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %for.end
  %84 = load i32, i32* %l30, align 4, !tbaa !5
  %85 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub50 = sub nsw i32 %84, %85
  %cmp51 = icmp sgt i32 %sub50, 104
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.49
  %86 = load i32, i32* %l30, align 4, !tbaa !5
  %sub54 = sub nsw i32 %86, 104
  store i32 %sub54, i32* %lnum, align 4, !tbaa !5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.49
  %87 = load i32, i32* %lnum, align 4, !tbaa !5
  %88 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height56 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %88, i32 0, i32 14
  %89 = load i32, i32* %height56, align 4, !tbaa !28
  %sub57 = sub nsw i32 %89, 208
  %cmp58 = icmp sge i32 %87, %sub57
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.end.55
  %90 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height61 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %90, i32 0, i32 14
  %91 = load i32, i32* %height61, align 4, !tbaa !28
  %sub62 = sub nsw i32 %91, 208
  store i32 %sub62, i32* %lnum, align 4, !tbaa !5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.end.55
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %if.then.48
  %92 = bitcast i32* %l30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.397 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %93 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %94 = load i32, i32* %lnum, align 4, !tbaa !5
  %95 = load i8*, i8** %in, align 8, !tbaa !1
  %96 = load i32, i32* %in_size, align 4, !tbaa !5
  %call64 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %93, i32 %94, i8* %95, i32 %96) #5
  store i32 %call64, i32* %lcnt, align 4, !tbaa !5
  %97 = load i32, i32* %lcnt, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %97, 208
  br i1 %cmp65, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %cleanup.cont
  %98 = load i8*, i8** %in, align 8, !tbaa !1
  %99 = load i32, i32* %lcnt, align 4, !tbaa !5
  %100 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul68 = mul nsw i32 %99, %100
  %idx.ext = sext i32 %mul68 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %98, i64 %idx.ext
  %101 = load i32, i32* %in_size, align 4, !tbaa !5
  %102 = load i32, i32* %lcnt, align 4, !tbaa !5
  %103 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul70 = mul nsw i32 %102, %103
  %sub71 = sub nsw i32 %101, %mul70
  %conv72 = sext i32 %sub71 to i64
  %call73 = call i8* @memset(i8* %add.ptr69, i32 0, i64 %conv72) #7
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.67, %cleanup.cont
  %104 = load i32, i32* %line_size, align 4, !tbaa !5
  store i32 %104, i32* %minX, align 4, !tbaa !5
  store i32 0, i32* %maxX, align 4, !tbaa !5
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.109, %if.end.74
  %105 = load i32, i32* %l, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %105, 208
  br i1 %cmp76, label %for.body.78, label %for.end.111

for.body.78:                                      ; preds = %for.cond.75
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.90, %for.body.78
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %107 = load i32, i32* %minX, align 4, !tbaa !5
  %cmp80 = icmp slt i32 %106, %107
  br i1 %cmp80, label %for.body.82, label %for.end.92

for.body.82:                                      ; preds = %for.cond.79
  %108 = load i32, i32* %l, align 4, !tbaa !5
  %109 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul83 = mul nsw i32 %108, %109
  %110 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %mul83, %110
  %idxprom = sext i32 %add to i64
  %111 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %111, i64 %idxprom
  %112 = load i8, i8* %arrayidx84, align 1, !tbaa !29
  %conv85 = zext i8 %112 to i32
  %cmp86 = icmp ne i32 %conv85, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %for.body.82
  %113 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %113, i32* %minX, align 4, !tbaa !5
  br label %for.end.92

if.end.89:                                        ; preds = %for.body.82
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %114 = load i32, i32* %i, align 4, !tbaa !5
  %inc91 = add nsw i32 %114, 1
  store i32 %inc91, i32* %i, align 4, !tbaa !5
  br label %for.cond.79

for.end.92:                                       ; preds = %if.then.88, %for.cond.79
  %115 = load i32, i32* %line_size, align 4, !tbaa !5
  %sub93 = sub nsw i32 %115, 1
  store i32 %sub93, i32* %i, align 4, !tbaa !5
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.107, %for.end.92
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %117 = load i32, i32* %maxX, align 4, !tbaa !5
  %cmp95 = icmp sge i32 %116, %117
  br i1 %cmp95, label %for.body.97, label %for.end.108

for.body.97:                                      ; preds = %for.cond.94
  %118 = load i32, i32* %l, align 4, !tbaa !5
  %119 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul98 = mul nsw i32 %118, %119
  %120 = load i32, i32* %i, align 4, !tbaa !5
  %add99 = add nsw i32 %mul98, %120
  %idxprom100 = sext i32 %add99 to i64
  %121 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i8, i8* %121, i64 %idxprom100
  %122 = load i8, i8* %arrayidx101, align 1, !tbaa !29
  %conv102 = zext i8 %122 to i32
  %cmp103 = icmp ne i32 %conv102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %for.body.97
  %123 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %123, i32* %maxX, align 4, !tbaa !5
  br label %for.end.108

if.end.106:                                       ; preds = %for.body.97
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %124 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %124, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond.94

for.end.108:                                      ; preds = %if.then.105, %for.cond.94
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end.108
  %125 = load i32, i32* %l, align 4, !tbaa !5
  %inc110 = add nsw i32 %125, 1
  store i32 %inc110, i32* %l, align 4, !tbaa !5
  br label %for.cond.75

for.end.111:                                      ; preds = %for.cond.75
  %126 = load i32, i32* %minX, align 4, !tbaa !5
  %and = and i32 %126, -2
  store i32 %and, i32* %minX, align 4, !tbaa !5
  %127 = load i32, i32* %maxX, align 4, !tbaa !5
  %add112 = add nsw i32 %127, 3
  %and113 = and i32 %add112, -2
  store i32 %and113, i32* %maxX, align 4, !tbaa !5
  %128 = load i32, i32* %maxX, align 4, !tbaa !5
  %mul114 = mul nsw i32 %128, 8
  %sub115 = sub nsw i32 %mul114, 1
  store i32 %sub115, i32* %highestX, align 4, !tbaa !5
  %129 = load i32, i32* %minX, align 4, !tbaa !5
  %mul116 = mul nsw i32 %129, 8
  store i32 %mul116, i32* %leastX, align 4, !tbaa !5
  %130 = load i32, i32* %highestX, align 4, !tbaa !5
  %131 = load i32, i32* %leastX, align 4, !tbaa !5
  %sub117 = sub nsw i32 %130, %131
  %add118 = add nsw i32 %sub117, 1
  store i32 %add118, i32* %extent, align 4, !tbaa !5
  %132 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  store i8* %132, i8** %outp, align 8, !tbaa !1
  %133 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #2
  %134 = bitcast i32* %sxBy8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #2
  %135 = bitcast i32* %sxMask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #2
  %136 = bitcast [13 x i32]* %words to i8*
  call void @llvm.lifetime.start(i64 52, i8* %136) #2
  %137 = bitcast i32* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #2
  %138 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #2
  %139 = bitcast i32* %retval119 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #2
  store i32 0, i32* %retval119, align 4, !tbaa !5
  %140 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #2
  %141 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #2
  %142 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #2
  %143 = bitcast i32* %j1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #2
  %144 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #2
  %145 = bitcast i32* %i120 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #2
  %146 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #2
  %147 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #2
  %148 = bitcast i32* %directory to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #2
  %149 = load i32, i32* %leastX, align 4, !tbaa !5
  store i32 %149, i32* %x, align 4, !tbaa !5
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.323, %for.end.111
  %150 = load i32, i32* %x, align 4, !tbaa !5
  %151 = load i32, i32* %highestX, align 4, !tbaa !5
  %cmp122 = icmp sle i32 %150, %151
  br i1 %cmp122, label %for.body.124, label %for.end.325

for.body.124:                                     ; preds = %for.cond.121
  store i32 0, i32* %i120, align 4, !tbaa !5
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.131, %for.body.124
  %152 = load i32, i32* %i120, align 4, !tbaa !5
  %cmp126 = icmp slt i32 %152, 13
  br i1 %cmp126, label %for.body.128, label %for.end.133

for.body.128:                                     ; preds = %for.cond.125
  %153 = load i32, i32* %i120, align 4, !tbaa !5
  %idxprom129 = sext i32 %153 to i64
  %arrayidx130 = getelementptr inbounds [13 x i32], [13 x i32]* %words, i32 0, i64 %idxprom129
  store i32 0, i32* %arrayidx130, align 4, !tbaa !5
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.128
  %154 = load i32, i32* %i120, align 4, !tbaa !5
  %inc132 = add nsw i32 %154, 1
  store i32 %inc132, i32* %i120, align 4, !tbaa !5
  br label %for.cond.125

for.end.133:                                      ; preds = %for.cond.125
  store i32 8192, i32* %directory, align 4, !tbaa !5
  %155 = load i32, i32* %direction, align 4, !tbaa !5
  switch i32 %155, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.139
  ]

sw.bb:                                            ; preds = %for.end.133
  %156 = load i32, i32* %x, align 4, !tbaa !5
  %and134 = and i32 %156, 1
  %cmp135 = icmp eq i32 %and134, 1
  br i1 %cmp135, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %157 = load i32, i32* %x, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %158 = load i32, i32* %x, align 4, !tbaa !5
  %159 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %160 = bitcast %struct.gx_device_printer_s* %159 to %struct.lxm_device_s*
  %headSeparation = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %160, i32 0, i32 68
  %161 = load i32, i32* %headSeparation, align 4, !tbaa !30
  %sub137 = sub nsw i32 %158, %161
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %157, %cond.true ], [ %sub137, %cond.false ]
  store i32 %cond, i32* %sx, align 4, !tbaa !5
  %162 = load i32, i32* %x, align 4, !tbaa !5
  %and138 = and i32 %162, 1
  store i32 %and138, i32* %j1, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.133
  br label %sw.bb.139

sw.bb.139:                                        ; preds = %for.end.133, %sw.default
  %163 = load i32, i32* %x, align 4, !tbaa !5
  %and140 = and i32 %163, 1
  %cmp141 = icmp eq i32 %and140, 0
  br i1 %cmp141, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %sw.bb.139
  %164 = load i32, i32* %x, align 4, !tbaa !5
  br label %cond.end.147

cond.false.144:                                   ; preds = %sw.bb.139
  %165 = load i32, i32* %x, align 4, !tbaa !5
  %166 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %167 = bitcast %struct.gx_device_printer_s* %166 to %struct.lxm_device_s*
  %headSeparation145 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %167, i32 0, i32 68
  %168 = load i32, i32* %headSeparation145, align 4, !tbaa !30
  %sub146 = sub nsw i32 %165, %168
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.144, %cond.true.143
  %cond148 = phi i32 [ %164, %cond.true.143 ], [ %sub146, %cond.false.144 ]
  store i32 %cond148, i32* %sx, align 4, !tbaa !5
  %169 = load i32, i32* %x, align 4, !tbaa !5
  %and149 = and i32 %169, 1
  %sub150 = sub nsw i32 1, %and149
  store i32 %sub150, i32* %j1, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.147, %cond.end
  %170 = load i32, i32* %j1, align 4, !tbaa !5
  %shr = ashr i32 32768, %170
  store i32 %shr, i32* %c1, align 4, !tbaa !5
  %171 = load i32, i32* %sx, align 4, !tbaa !5
  %div = sdiv i32 %171, 8
  store i32 %div, i32* %sxBy8, align 4, !tbaa !5
  %172 = load i32, i32* %sx, align 4, !tbaa !5
  %rem = srem i32 %172, 8
  %shr151 = ashr i32 128, %rem
  store i32 %shr151, i32* %sxMask, align 4, !tbaa !5
  store i32 0, i32* %i120, align 4, !tbaa !5
  store i32 1, i32* %b, align 4, !tbaa !5
  %173 = load i32, i32* %sxBy8, align 4, !tbaa !5
  %174 = load i32, i32* %j1, align 4, !tbaa !5
  %175 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul152 = mul nsw i32 %174, %175
  %add153 = add nsw i32 %173, %mul152
  store i32 %add153, i32* %y, align 4, !tbaa !5
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.182, %sw.epilog
  %176 = load i32, i32* %i120, align 4, !tbaa !5
  %cmp155 = icmp slt i32 %176, 13
  br i1 %cmp155, label %for.body.157, label %for.end.184

for.body.157:                                     ; preds = %for.cond.154
  store i32 0, i32* %sum, align 4, !tbaa !5
  %177 = load i32, i32* %j1, align 4, !tbaa !5
  store i32 %177, i32* %j, align 4, !tbaa !5
  %178 = load i32, i32* %c1, align 4, !tbaa !5
  store i32 %178, i32* %c, align 4, !tbaa !5
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.172, %for.body.157
  %179 = load i32, i32* %j, align 4, !tbaa !5
  %cmp159 = icmp slt i32 %179, 16
  br i1 %cmp159, label %for.body.161, label %for.end.177

for.body.161:                                     ; preds = %for.cond.158
  %180 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom162 = sext i32 %180 to i64
  %181 = load i8*, i8** %in, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %181, i64 %idxprom162
  %182 = load i8, i8* %arrayidx163, align 1, !tbaa !29
  %conv164 = zext i8 %182 to i32
  %183 = load i32, i32* %sxMask, align 4, !tbaa !5
  %and165 = and i32 %conv164, %183
  store i32 %and165, i32* %f, align 4, !tbaa !5
  %184 = load i32, i32* %f, align 4, !tbaa !5
  %tobool166 = icmp ne i32 %184, 0
  br i1 %tobool166, label %if.then.167, label %if.end.171

if.then.167:                                      ; preds = %for.body.161
  %185 = load i32, i32* %c, align 4, !tbaa !5
  %186 = load i32, i32* %i120, align 4, !tbaa !5
  %idxprom168 = sext i32 %186 to i64
  %arrayidx169 = getelementptr inbounds [13 x i32], [13 x i32]* %words, i32 0, i64 %idxprom168
  %187 = load i32, i32* %arrayidx169, align 4, !tbaa !5
  %or = or i32 %187, %185
  store i32 %or, i32* %arrayidx169, align 4, !tbaa !5
  %188 = load i32, i32* %f, align 4, !tbaa !5
  %189 = load i32, i32* %sum, align 4, !tbaa !5
  %or170 = or i32 %189, %188
  store i32 %or170, i32* %sum, align 4, !tbaa !5
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.167, %for.body.161
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %190 = load i32, i32* %j, align 4, !tbaa !5
  %add173 = add nsw i32 %190, 2
  store i32 %add173, i32* %j, align 4, !tbaa !5
  %191 = load i32, i32* %line_size, align 4, !tbaa !5
  %mul174 = mul nsw i32 2, %191
  %192 = load i32, i32* %y, align 4, !tbaa !5
  %add175 = add nsw i32 %192, %mul174
  store i32 %add175, i32* %y, align 4, !tbaa !5
  %193 = load i32, i32* %c, align 4, !tbaa !5
  %shr176 = ashr i32 %193, 2
  store i32 %shr176, i32* %c, align 4, !tbaa !5
  br label %for.cond.158

for.end.177:                                      ; preds = %for.cond.158
  %194 = load i32, i32* %sum, align 4, !tbaa !5
  %tobool178 = icmp ne i32 %194, 0
  br i1 %tobool178, label %if.end.181, label %if.then.179

if.then.179:                                      ; preds = %for.end.177
  %195 = load i32, i32* %b, align 4, !tbaa !5
  %196 = load i32, i32* %directory, align 4, !tbaa !5
  %or180 = or i32 %196, %195
  store i32 %or180, i32* %directory, align 4, !tbaa !5
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %for.end.177
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %197 = load i32, i32* %i120, align 4, !tbaa !5
  %inc183 = add nsw i32 %197, 1
  store i32 %inc183, i32* %i120, align 4, !tbaa !5
  %198 = load i32, i32* %b, align 4, !tbaa !5
  %shl = shl i32 %198, 1
  store i32 %shl, i32* %b, align 4, !tbaa !5
  br label %for.cond.154

for.end.184:                                      ; preds = %for.cond.154
  %199 = load i32, i32* %retval119, align 4, !tbaa !5
  %add185 = add nsw i32 %199, 2
  store i32 %add185, i32* %retval119, align 4, !tbaa !5
  %200 = load i8*, i8** %outp, align 8, !tbaa !1
  %201 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %200 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %201 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %202 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %conv186 = sext i32 %202 to i64
  %cmp187 = icmp sge i64 %sub.ptr.sub, %conv186
  br i1 %cmp187, label %if.then.189, label %if.else

if.then.189:                                      ; preds = %for.end.184
  %203 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory190 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %203, i32 0, i32 3
  %204 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory190, align 8, !tbaa !7
  %non_gc_memory191 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %204, i32 0, i32 3
  %205 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory191, align 8, !tbaa !23
  %procs192 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %205, i32 0, i32 1
  %free_object193 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs192, i32 0, i32 2
  %206 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object193, align 8, !tbaa !27
  %207 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory194 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %207, i32 0, i32 3
  %208 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory194, align 8, !tbaa !7
  %non_gc_memory195 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %208, i32 0, i32 3
  %209 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory195, align 8, !tbaa !23
  %210 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  call void %206(%struct.gs_memory_s* %209, i8* %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  %211 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %mul196 = mul nsw i32 %211, 2
  store i32 %mul196, i32* %swipeBuf_size, align 4, !tbaa !5
  %212 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory197 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %212, i32 0, i32 3
  %213 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory197, align 8, !tbaa !7
  %non_gc_memory198 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %213, i32 0, i32 3
  %214 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory198, align 8, !tbaa !23
  %procs199 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %214, i32 0, i32 1
  %alloc_byte_array200 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs199, i32 0, i32 10
  %215 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array200, align 8, !tbaa !26
  %216 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory201 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %216, i32 0, i32 3
  %217 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory201, align 8, !tbaa !7
  %non_gc_memory202 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %217, i32 0, i32 3
  %218 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory202, align 8, !tbaa !23
  %219 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %call203 = call i8* %215(%struct.gs_memory_s* %218, i32 %219, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call203, i8** %swipeBuf, align 8, !tbaa !1
  %220 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %cmp204 = icmp eq i8* %220, null
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.then.189
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.326

if.end.207:                                       ; preds = %if.then.189
  br label %for.end.325

if.else:                                          ; preds = %for.end.184
  %221 = load i32, i32* %directory, align 4, !tbaa !5
  %shr208 = ashr i32 %221, 8
  %conv209 = trunc i32 %shr208 to i8
  %222 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr, i8** %outp, align 8, !tbaa !1
  store i8 %conv209, i8* %222, align 1, !tbaa !29
  br label %if.end.210

if.end.210:                                       ; preds = %if.else
  %223 = load i8*, i8** %outp, align 8, !tbaa !1
  %224 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %sub.ptr.lhs.cast211 = ptrtoint i8* %223 to i64
  %sub.ptr.rhs.cast212 = ptrtoint i8* %224 to i64
  %sub.ptr.sub213 = sub i64 %sub.ptr.lhs.cast211, %sub.ptr.rhs.cast212
  %225 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %conv214 = sext i32 %225 to i64
  %cmp215 = icmp sge i64 %sub.ptr.sub213, %conv214
  br i1 %cmp215, label %if.then.217, label %if.else.236

if.then.217:                                      ; preds = %if.end.210
  %226 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory218 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %226, i32 0, i32 3
  %227 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory218, align 8, !tbaa !7
  %non_gc_memory219 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %227, i32 0, i32 3
  %228 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory219, align 8, !tbaa !23
  %procs220 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %228, i32 0, i32 1
  %free_object221 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs220, i32 0, i32 2
  %229 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object221, align 8, !tbaa !27
  %230 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory222 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %230, i32 0, i32 3
  %231 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory222, align 8, !tbaa !7
  %non_gc_memory223 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %231, i32 0, i32 3
  %232 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory223, align 8, !tbaa !23
  %233 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  call void %229(%struct.gs_memory_s* %232, i8* %233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  %234 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %mul224 = mul nsw i32 %234, 2
  store i32 %mul224, i32* %swipeBuf_size, align 4, !tbaa !5
  %235 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory225 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %235, i32 0, i32 3
  %236 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory225, align 8, !tbaa !7
  %non_gc_memory226 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %236, i32 0, i32 3
  %237 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory226, align 8, !tbaa !23
  %procs227 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %237, i32 0, i32 1
  %alloc_byte_array228 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs227, i32 0, i32 10
  %238 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array228, align 8, !tbaa !26
  %239 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory229 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %239, i32 0, i32 3
  %240 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory229, align 8, !tbaa !7
  %non_gc_memory230 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %240, i32 0, i32 3
  %241 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory230, align 8, !tbaa !23
  %242 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %call231 = call i8* %238(%struct.gs_memory_s* %241, i32 %242, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call231, i8** %swipeBuf, align 8, !tbaa !1
  %243 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %cmp232 = icmp eq i8* %243, null
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.then.217
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.326

if.end.235:                                       ; preds = %if.then.217
  br label %for.end.325

if.else.236:                                      ; preds = %if.end.210
  %244 = load i32, i32* %directory, align 4, !tbaa !5
  %and237 = and i32 %244, 255
  %conv238 = trunc i32 %and237 to i8
  %245 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr239 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %incdec.ptr239, i8** %outp, align 8, !tbaa !1
  store i8 %conv238, i8* %245, align 1, !tbaa !29
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.236
  %246 = load i32, i32* %directory, align 4, !tbaa !5
  %cmp241 = icmp ne i32 %246, 16383
  br i1 %cmp241, label %if.then.243, label %if.end.322

if.then.243:                                      ; preds = %if.end.240
  store i32 0, i32* %i120, align 4, !tbaa !5
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.319, %if.then.243
  %247 = load i32, i32* %i120, align 4, !tbaa !5
  %cmp245 = icmp slt i32 %247, 13
  br i1 %cmp245, label %for.body.247, label %for.end.321

for.body.247:                                     ; preds = %for.cond.244
  %248 = load i32, i32* %i120, align 4, !tbaa !5
  %idxprom248 = sext i32 %248 to i64
  %arrayidx249 = getelementptr inbounds [13 x i32], [13 x i32]* %words, i32 0, i64 %idxprom248
  %249 = load i32, i32* %arrayidx249, align 4, !tbaa !5
  %cmp250 = icmp ne i32 %249, 0
  br i1 %cmp250, label %if.then.252, label %if.end.318

if.then.252:                                      ; preds = %for.body.247
  %250 = load i8*, i8** %outp, align 8, !tbaa !1
  %251 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %sub.ptr.lhs.cast253 = ptrtoint i8* %250 to i64
  %sub.ptr.rhs.cast254 = ptrtoint i8* %251 to i64
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254
  %252 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %conv256 = sext i32 %252 to i64
  %cmp257 = icmp sge i64 %sub.ptr.sub255, %conv256
  br i1 %cmp257, label %if.then.259, label %if.else.278

if.then.259:                                      ; preds = %if.then.252
  %253 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory260 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %253, i32 0, i32 3
  %254 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory260, align 8, !tbaa !7
  %non_gc_memory261 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %254, i32 0, i32 3
  %255 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory261, align 8, !tbaa !23
  %procs262 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %255, i32 0, i32 1
  %free_object263 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs262, i32 0, i32 2
  %256 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object263, align 8, !tbaa !27
  %257 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory264 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %257, i32 0, i32 3
  %258 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory264, align 8, !tbaa !7
  %non_gc_memory265 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %258, i32 0, i32 3
  %259 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory265, align 8, !tbaa !23
  %260 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  call void %256(%struct.gs_memory_s* %259, i8* %260, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  %261 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %mul266 = mul nsw i32 %261, 2
  store i32 %mul266, i32* %swipeBuf_size, align 4, !tbaa !5
  %262 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory267 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %262, i32 0, i32 3
  %263 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory267, align 8, !tbaa !7
  %non_gc_memory268 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %263, i32 0, i32 3
  %264 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory268, align 8, !tbaa !23
  %procs269 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %264, i32 0, i32 1
  %alloc_byte_array270 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs269, i32 0, i32 10
  %265 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array270, align 8, !tbaa !26
  %266 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory271 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %266, i32 0, i32 3
  %267 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory271, align 8, !tbaa !7
  %non_gc_memory272 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %267, i32 0, i32 3
  %268 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory272, align 8, !tbaa !23
  %269 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %call273 = call i8* %265(%struct.gs_memory_s* %268, i32 %269, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call273, i8** %swipeBuf, align 8, !tbaa !1
  %270 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %cmp274 = icmp eq i8* %270, null
  br i1 %cmp274, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %if.then.259
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.326

if.end.277:                                       ; preds = %if.then.259
  br label %for.end.321

if.else.278:                                      ; preds = %if.then.252
  %271 = load i32, i32* %i120, align 4, !tbaa !5
  %idxprom279 = sext i32 %271 to i64
  %arrayidx280 = getelementptr inbounds [13 x i32], [13 x i32]* %words, i32 0, i64 %idxprom279
  %272 = load i32, i32* %arrayidx280, align 4, !tbaa !5
  %shr281 = ashr i32 %272, 8
  %conv282 = trunc i32 %shr281 to i8
  %273 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr283 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %incdec.ptr283, i8** %outp, align 8, !tbaa !1
  store i8 %conv282, i8* %273, align 1, !tbaa !29
  br label %if.end.284

if.end.284:                                       ; preds = %if.else.278
  %274 = load i8*, i8** %outp, align 8, !tbaa !1
  %275 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %sub.ptr.lhs.cast285 = ptrtoint i8* %274 to i64
  %sub.ptr.rhs.cast286 = ptrtoint i8* %275 to i64
  %sub.ptr.sub287 = sub i64 %sub.ptr.lhs.cast285, %sub.ptr.rhs.cast286
  %276 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %conv288 = sext i32 %276 to i64
  %cmp289 = icmp sge i64 %sub.ptr.sub287, %conv288
  br i1 %cmp289, label %if.then.291, label %if.else.310

if.then.291:                                      ; preds = %if.end.284
  %277 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory292 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %277, i32 0, i32 3
  %278 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory292, align 8, !tbaa !7
  %non_gc_memory293 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %278, i32 0, i32 3
  %279 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory293, align 8, !tbaa !23
  %procs294 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %279, i32 0, i32 1
  %free_object295 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs294, i32 0, i32 2
  %280 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object295, align 8, !tbaa !27
  %281 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory296 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %281, i32 0, i32 3
  %282 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory296, align 8, !tbaa !7
  %non_gc_memory297 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %282, i32 0, i32 3
  %283 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory297, align 8, !tbaa !23
  %284 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  call void %280(%struct.gs_memory_s* %283, i8* %284, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  %285 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %mul298 = mul nsw i32 %285, 2
  store i32 %mul298, i32* %swipeBuf_size, align 4, !tbaa !5
  %286 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory299 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %286, i32 0, i32 3
  %287 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory299, align 8, !tbaa !7
  %non_gc_memory300 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %287, i32 0, i32 3
  %288 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory300, align 8, !tbaa !23
  %procs301 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %288, i32 0, i32 1
  %alloc_byte_array302 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs301, i32 0, i32 10
  %289 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array302, align 8, !tbaa !26
  %290 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory303 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %290, i32 0, i32 3
  %291 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory303, align 8, !tbaa !7
  %non_gc_memory304 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %291, i32 0, i32 3
  %292 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory304, align 8, !tbaa !23
  %293 = load i32, i32* %swipeBuf_size, align 4, !tbaa !5
  %call305 = call i8* %289(%struct.gs_memory_s* %292, i32 %293, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call305, i8** %swipeBuf, align 8, !tbaa !1
  %294 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %cmp306 = icmp eq i8* %294, null
  br i1 %cmp306, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %if.then.291
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.326

if.end.309:                                       ; preds = %if.then.291
  br label %for.end.321

if.else.310:                                      ; preds = %if.end.284
  %295 = load i32, i32* %i120, align 4, !tbaa !5
  %idxprom311 = sext i32 %295 to i64
  %arrayidx312 = getelementptr inbounds [13 x i32], [13 x i32]* %words, i32 0, i64 %idxprom311
  %296 = load i32, i32* %arrayidx312, align 4, !tbaa !5
  %and313 = and i32 %296, 255
  %conv314 = trunc i32 %and313 to i8
  %297 = load i8*, i8** %outp, align 8, !tbaa !1
  %incdec.ptr315 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %incdec.ptr315, i8** %outp, align 8, !tbaa !1
  store i8 %conv314, i8* %297, align 1, !tbaa !29
  br label %if.end.316

if.end.316:                                       ; preds = %if.else.310
  %298 = load i32, i32* %retval119, align 4, !tbaa !5
  %add317 = add nsw i32 %298, 2
  store i32 %add317, i32* %retval119, align 4, !tbaa !5
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.316, %for.body.247
  br label %for.inc.319

for.inc.319:                                      ; preds = %if.end.318
  %299 = load i32, i32* %i120, align 4, !tbaa !5
  %inc320 = add nsw i32 %299, 1
  store i32 %inc320, i32* %i120, align 4, !tbaa !5
  br label %for.cond.244

for.end.321:                                      ; preds = %if.end.309, %if.end.277, %for.cond.244
  br label %if.end.322

if.end.322:                                       ; preds = %for.end.321, %if.end.240
  br label %for.inc.323

for.inc.323:                                      ; preds = %if.end.322
  %300 = load i32, i32* %x, align 4, !tbaa !5
  %inc324 = add nsw i32 %300, 1
  store i32 %inc324, i32* %x, align 4, !tbaa !5
  br label %for.cond.121

for.end.325:                                      ; preds = %if.end.235, %if.end.207, %for.cond.121
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.326

cleanup.326:                                      ; preds = %for.end.325, %if.then.308, %if.then.276, %if.then.234, %if.then.206
  %301 = bitcast i32* %directory to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #2
  %302 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #2
  %303 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #2
  %304 = bitcast i32* %i120 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #2
  %305 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #2
  %306 = bitcast i32* %j1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %307 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #2
  %308 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #2
  %309 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #2
  %310 = bitcast i32* %retval119 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #2
  %311 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #2
  %312 = bitcast i32* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #2
  %313 = bitcast [13 x i32]* %words to i8*
  call void @llvm.lifetime.end(i64 52, i8* %313) #2
  %314 = bitcast i32* %sxMask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #2
  %315 = bitcast i32* %sxBy8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #2
  %316 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #2
  %cleanup.dest.342 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.342, label %cleanup.397 [
    i32 0, label %cleanup.cont.343
  ]

cleanup.cont.343:                                 ; preds = %cleanup.326
  %317 = bitcast i32* %leastY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #2
  %318 = load i32, i32* %lnum, align 4, !tbaa !5
  store i32 %318, i32* %leastY, align 4, !tbaa !5
  %319 = bitcast i32* %sz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %319) #2
  %320 = load i8*, i8** %outp, align 8, !tbaa !1
  %add.ptr344 = getelementptr inbounds i8, i8* %320, i64 26
  %321 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %sub.ptr.lhs.cast345 = ptrtoint i8* %add.ptr344 to i64
  %sub.ptr.rhs.cast346 = ptrtoint i8* %321 to i64
  %sub.ptr.sub347 = sub i64 %sub.ptr.lhs.cast345, %sub.ptr.rhs.cast346
  %conv348 = trunc i64 %sub.ptr.sub347 to i32
  store i32 %conv348, i32* %sz, align 4, !tbaa !5
  %322 = bitcast i32* %deltaY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %322) #2
  %323 = load i32, i32* %leastY, align 4, !tbaa !5
  %324 = load i32, i32* %lastY, align 4, !tbaa !5
  %sub349 = sub nsw i32 %323, %324
  %mul350 = mul nsw i32 2, %sub349
  store i32 %mul350, i32* %deltaY, align 4, !tbaa !5
  %325 = load i32, i32* %leastY, align 4, !tbaa !5
  store i32 %325, i32* %lastY, align 4, !tbaa !5
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call351 = call i32 @_IO_putc(i32 27, %struct._IO_FILE* %326) #5
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call352 = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %327) #5
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call353 = call i32 @_IO_putc(i32 3, %struct._IO_FILE* %328) #5
  %329 = load i32, i32* %deltaY, align 4, !tbaa !5
  %shr354 = ashr i32 %329, 8
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call355 = call i32 @_IO_putc(i32 %shr354, %struct._IO_FILE* %330) #5
  %331 = load i32, i32* %deltaY, align 4, !tbaa !5
  %and356 = and i32 %331, 255
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call357 = call i32 @_IO_putc(i32 %and356, %struct._IO_FILE* %332) #5
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call358 = call i32 @_IO_putc(i32 27, %struct._IO_FILE* %333) #5
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call359 = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %334) #5
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call360 = call i32 @_IO_putc(i32 4, %struct._IO_FILE* %335) #5
  %336 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call361 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %336) #5
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call362 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %337) #5
  %338 = load i32, i32* %sz, align 4, !tbaa !5
  %shr363 = ashr i32 %338, 8
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call364 = call i32 @_IO_putc(i32 %shr363, %struct._IO_FILE* %339) #5
  %340 = load i32, i32* %sz, align 4, !tbaa !5
  %and365 = and i32 %340, 255
  %341 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call366 = call i32 @_IO_putc(i32 %and365, %struct._IO_FILE* %341) #5
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call367 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %342) #5
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call368 = call i32 @_IO_putc(i32 3, %struct._IO_FILE* %343) #5
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call369 = call i32 @_IO_putc(i32 1, %struct._IO_FILE* %344) #5
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call370 = call i32 @_IO_putc(i32 1, %struct._IO_FILE* %345) #5
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call371 = call i32 @_IO_putc(i32 26, %struct._IO_FILE* %346) #5
  %347 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call372 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %347) #5
  %348 = load i32, i32* %extent, align 4, !tbaa !5
  %shr373 = ashr i32 %348, 8
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call374 = call i32 @_IO_putc(i32 %shr373, %struct._IO_FILE* %349) #5
  %350 = load i32, i32* %extent, align 4, !tbaa !5
  %and375 = and i32 %350, 255
  %351 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call376 = call i32 @_IO_putc(i32 %and375, %struct._IO_FILE* %351) #5
  %352 = load i32, i32* %leastX, align 4, !tbaa !5
  %shr377 = ashr i32 %352, 8
  %353 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call378 = call i32 @_IO_putc(i32 %shr377, %struct._IO_FILE* %353) #5
  %354 = load i32, i32* %leastX, align 4, !tbaa !5
  %and379 = and i32 %354, 255
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call380 = call i32 @_IO_putc(i32 %and379, %struct._IO_FILE* %355) #5
  %356 = load i32, i32* %highestX, align 4, !tbaa !5
  %shr381 = ashr i32 %356, 8
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call382 = call i32 @_IO_putc(i32 %shr381, %struct._IO_FILE* %357) #5
  %358 = load i32, i32* %highestX, align 4, !tbaa !5
  %and383 = and i32 %358, 255
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call384 = call i32 @_IO_putc(i32 %and383, %struct._IO_FILE* %359) #5
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call385 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %360) #5
  %361 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call386 = call i32 @_IO_putc(i32 0, %struct._IO_FILE* %361) #5
  %362 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call387 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %362) #5
  %363 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call388 = call i32 @_IO_putc(i32 51, %struct._IO_FILE* %363) #5
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call389 = call i32 @_IO_putc(i32 68, %struct._IO_FILE* %364) #5
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call390 = call i32 @_IO_putc(i32 85, %struct._IO_FILE* %365) #5
  %366 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call391 = call i32 @_IO_putc(i32 1, %struct._IO_FILE* %366) #5
  %367 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %368 = load i8*, i8** %outp, align 8, !tbaa !1
  %369 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  %sub.ptr.lhs.cast392 = ptrtoint i8* %368 to i64
  %sub.ptr.rhs.cast393 = ptrtoint i8* %369 to i64
  %sub.ptr.sub394 = sub i64 %sub.ptr.lhs.cast392, %sub.ptr.rhs.cast393
  %370 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call395 = call i64 @fwrite(i8* %367, i64 1, i64 %sub.ptr.sub394, %struct._IO_FILE* %370) #5
  %371 = bitcast i32* %deltaY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #2
  %372 = bitcast i32* %sz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %372) #2
  %373 = bitcast i32* %leastY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %373) #2
  %374 = load i32, i32* %lnum, align 4, !tbaa !5
  %add396 = add nsw i32 %374, 104
  store i32 %add396, i32* %lnum, align 4, !tbaa !5
  %375 = load i32, i32* %direction, align 4, !tbaa !5
  %xor = xor i32 %375, 1
  store i32 %xor, i32* %direction, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.397

cleanup.397:                                      ; preds = %cleanup.cont.343, %cleanup.326, %cleanup
  %376 = bitcast i32* %lcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %376) #2
  %377 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %377) #2
  %378 = bitcast i8** %in_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %378) #2
  %cleanup.dest.400 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.400, label %unreachable [
    i32 0, label %cleanup.cont.401
    i32 3, label %for.end.402
    i32 2, label %quit_ignomiously
  ]

cleanup.cont.401:                                 ; preds = %cleanup.397
  br label %for.cond

for.end.402:                                      ; preds = %cleanup.397, %for.cond
  %379 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call403 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @lxm5700m_print_page.bottom, i32 0, i32 0), i64 1, i64 4, %struct._IO_FILE* %379) #5
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call404 = call i32 @fflush(%struct._IO_FILE* %380) #5
  %381 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory405 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %381, i32 0, i32 3
  %382 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory405, align 8, !tbaa !7
  %non_gc_memory406 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %382, i32 0, i32 3
  %383 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory406, align 8, !tbaa !23
  %procs407 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %383, i32 0, i32 1
  %free_object408 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs407, i32 0, i32 2
  %384 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object408, align 8, !tbaa !27
  %385 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory409 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %385, i32 0, i32 3
  %386 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory409, align 8, !tbaa !7
  %non_gc_memory410 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %386, i32 0, i32 3
  %387 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory410, align 8, !tbaa !23
  %388 = load i8*, i8** %swipeBuf, align 8, !tbaa !1
  call void %384(%struct.gs_memory_s* %387, i8* %388, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #5
  %389 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory411 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %389, i32 0, i32 3
  %390 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory411, align 8, !tbaa !7
  %non_gc_memory412 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %390, i32 0, i32 3
  %391 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory412, align 8, !tbaa !23
  %procs413 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %391, i32 0, i32 1
  %free_object414 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs413, i32 0, i32 2
  %392 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object414, align 8, !tbaa !27
  %393 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory415 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %393, i32 0, i32 3
  %394 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory415, align 8, !tbaa !7
  %non_gc_memory416 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %394, i32 0, i32 3
  %395 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory416, align 8, !tbaa !23
  %396 = load i8*, i8** %buf1, align 8, !tbaa !1
  call void %392(%struct.gs_memory_s* %395, i8* %396, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.417

cleanup.417:                                      ; preds = %for.end.402, %if.end.26
  %397 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %397) #2
  %398 = bitcast i8** %swipeBuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %398) #2
  %399 = bitcast i8** %buf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %399) #2
  %400 = bitcast i32* %swipeBuf_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %400) #2
  %401 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #2
  %402 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %402) #2
  %403 = bitcast i32* %lastY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #2
  %404 = bitcast i32* %direction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %404) #2
  %405 = bitcast i32* %extent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %405) #2
  %406 = bitcast i32* %leastX to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #2
  %407 = bitcast i32* %highestX to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #2
  %408 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %408) #2
  %409 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #2
  %410 = bitcast i32* %maxX to i8*
  call void @llvm.lifetime.end(i64 4, i8* %410) #2
  %411 = bitcast i32* %minX to i8*
  call void @llvm.lifetime.end(i64 4, i8* %411) #2
  %412 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %412) #2
  %413 = load i32, i32* %retval
  ret i32 %413

unreachable:                                      ; preds = %cleanup.397
  unreachable
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

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @lxm_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ldev = alloca %struct.lxm_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.lxm_device_s** %ldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.lxm_device_s*
  store %struct.lxm_device_s* %2, %struct.lxm_device_s** %ldev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load %struct.lxm_device_s*, %struct.lxm_device_s** %ldev, align 8, !tbaa !1
  %headSeparation = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %9, i32 0, i32 68
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32* %headSeparation) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast %struct.lxm_device_s** %ldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @lxm_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ecode = alloca i32, align 4
  %ldev = alloca %struct.lxm_device_s*, align 8
  %trialHeadSeparation = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.lxm_device_s** %ldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.lxm_device_s*
  store %struct.lxm_device_s* %3, %struct.lxm_device_s** %ldev, align 8, !tbaa !1
  %4 = bitcast i32* %trialHeadSeparation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.lxm_device_s*, %struct.lxm_device_s** %ldev, align 8, !tbaa !1
  %headSeparation = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %5, i32 0, i32 68
  %6 = load i32, i32* %headSeparation, align 4, !tbaa !30
  store i32 %6, i32* %trialHeadSeparation, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32* %trialHeadSeparation) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %trialHeadSeparation, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %trialHeadSeparation, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %10, 32
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %11, i32 0, i32 0
  %12 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !32
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %12, i32 0, i32 7
  %13 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !34
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call2 = call i32 %13(%struct.gs_param_list_s* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 -15) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call3 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %15, %struct.gs_param_list_s* %16) #5
  store i32 %call3, i32* %ecode, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %19 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %19, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %20 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.6
  %21 = load i32, i32* %trialHeadSeparation, align 4, !tbaa !5
  %22 = load %struct.lxm_device_s*, %struct.lxm_device_s** %ldev, align 8, !tbaa !1
  %headSeparation10 = getelementptr inbounds %struct.lxm_device_s, %struct.lxm_device_s* %22, i32 0, i32 68
  store i32 %21, i32* %headSeparation10, align 4, !tbaa !30
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %23, 1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %24 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.8, %if.then.5
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %trialHeadSeparation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.lxm_device_s** %ldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #0

declare i32 @fflush(%struct._IO_FILE*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 24}
!8 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !6, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !21, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!21 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!22 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!23 = !{!24, !2, i64 200}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!24, !2, i64 88}
!27 = !{!24, !2, i64 24}
!28 = !{!8, !6, i64 836}
!29 = !{!3, !3, i64 0}
!30 = !{!31, !6, i64 18472}
!31 = !{!"lxm_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !6, i64 18472}
!32 = !{!33, !2, i64 0}
!33 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!34 = !{!35, !2, i64 56}
!35 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
