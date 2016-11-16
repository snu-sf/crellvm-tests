; ModuleID = './gdevjpeg.bc'
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
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
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
%struct.gx_device_jpeg_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, float, %struct.gs_point_s, %struct.gs_point_s }
%struct.jpeg_compress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32, %struct.jpeg_compress_struct, %struct.jpeg_destination_mgr, [100 x i8], i32, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon.2, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32 }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%union.anon.2 = type { [8 x i32], [48 x i8] }
%struct.gsfix_jmp_buf = type { [208 x i8] }
%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i8*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x i32], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32*, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder*, %struct.jpeg_scan_info*, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.stream_DCT_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gs_const_string_s, float, i32, i32, %struct.gs_memory_s*, %union._jd, %struct.cmm_profile_s*, i8, i64, i32, i32 }
%union._jd = type { %struct.jpeg_stream_data_s* }
%struct.jpeg_stream_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, %struct.gsfix_jmp_buf, %struct.gs_memory_s*, %struct.gs_memory_s*, i8*, i32, i32 }

@jpeg_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @jpeg_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @jpeg_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @jpeg_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_jpeg_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, float, %struct.gs_point_s, %struct.gs_point_s } { i32 18512, %struct.gx_device_procs_s* @jpeg_procs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 0, i32 255, i32 1, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @jpeg_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, float 0.000000e+00, %struct.gs_point_s { double 1.000000e+00, double 1.000000e+00 }, %struct.gs_point_s zeroinitializer }, align 8
@jpeggray_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @jpeg_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_gray_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @jpeg_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @jpeg_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"jpeggray\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_jpeggray_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, float, %struct.gs_point_s, %struct.gs_point_s } { i32 18512, %struct.gx_device_procs_s* @jpeggray_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 8, i8 0, i32 255, i32 0, i32 256, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @jpeg_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, float 0.000000e+00, %struct.gs_point_s { double 1.000000e+00, double 1.000000e+00 }, %struct.gs_point_s zeroinitializer }, align 8
@jpegcmyk_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @jpegcmyk_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @jpeg_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @jpeg_put_params, i64 (%struct.gx_device_s*, i16*)* @jpegcmyk_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"jpegcmyk\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_jpegcmyk_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, float, %struct.gs_point_s, %struct.gs_point_s } { i32 18512, %struct.gx_device_procs_s* @jpegcmyk_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @jpeg_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, float 0.000000e+00, %struct.gs_point_s { double 1.000000e+00, double 1.000000e+00 }, %struct.gs_point_s zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"JPEGQ\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"QFactor\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ViewScaleX\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ViewScaleY\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ViewTransX\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ViewTransY\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"jpeg_print_page(in)\00", align 1
@st_jpeg_compress_data = external constant %struct.gs_memory_struct_type_s, align 8
@.str.13 = private unnamed_addr constant [36 x i8] c"jpeg_print_page(jpeg_compress_data)\00", align 1
@s_DCTE_template = external constant %struct.stream_template_s, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"jpeg_print_page(fbuf)\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"jpeg_print_page(jbuf)\00", align 1
@s_filter_write_procs = external constant %struct.stream_procs, align 8

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @jpeg_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %jdev = alloca %struct.gx_device_jpeg_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %line_size = alloca i32, align 4
  %in = alloca i8*, align 8
  %jcdp = alloca %struct.jpeg_compress_data_s*, align 8
  %fbuf = alloca i8*, align 8
  %fbuf_size = alloca i32, align 4
  %jbuf = alloca i8*, align 8
  %jbuf_size = alloca i32, align 4
  %lnum = alloca i32, align 4
  %code = alloca i32, align 4
  %state = alloca %struct.stream_DCT_state_s, align 8
  %fstrm = alloca %struct.stream_s, align 8
  %jstrm = alloca %struct.stream_s, align 8
  %icc_profile19 = alloca %struct.cmm_profile_s*, align 8
  %data157 = alloca i8*, align 8
  %ignore_used = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_jpeg_s** %jdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_jpeg_s*
  store %struct.gx_device_jpeg_s* %2, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_printer_s* %7 to %struct.gx_device_s*
  %9 = bitcast %struct.gx_device_s* %8 to %struct.gx_device_printer_s*
  %10 = bitcast %struct.gx_device_printer_s* %9 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %10, i32 0) #3
  store i32 %call, i32* %line_size, align 4, !tbaa !22
  %11 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %13 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !23
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %15 = load i32, i32* %line_size, align 4, !tbaa !22
  %call1 = call i8* %13(%struct.gs_memory_s* %14, i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #3
  store i8* %call1, i8** %in, align 8, !tbaa !1
  %16 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 9
  %18 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !26
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call3 = call i8* %18(%struct.gs_memory_s* %19, %struct.gs_memory_struct_type_s* @st_jpeg_compress_data, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0)) #3
  %20 = bitcast i8* %call3 to %struct.jpeg_compress_data_s*
  store %struct.jpeg_compress_data_s* %20, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %21 = bitcast i8** %fbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  store i8* null, i8** %fbuf, align 8, !tbaa !1
  %22 = bitcast i32* %fbuf_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i8** %jbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  store i8* null, i8** %jbuf, align 8, !tbaa !1
  %24 = bitcast i32* %jbuf_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast %struct.stream_DCT_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 192, i8* %27) #2
  %28 = bitcast %struct.stream_s* %fstrm to i8*
  call void @llvm.lifetime.start(i64 352, i8* %28) #2
  %29 = bitcast %struct.stream_s* %jstrm to i8*
  call void @llvm.lifetime.start(i64 352, i8* %29) #2
  %30 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cmp = icmp eq %struct.jpeg_compress_data_s* %30, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %31 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %31, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -25, i32* %code, align 4, !tbaa !22
  br label %fail

if.end:                                           ; preds = %lor.lhs.false
  %32 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %32, i32 0, i32 0
  %33 = bitcast %struct.stream_template_s* %templat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* bitcast (%struct.stream_template_s* @s_DCTE_template to i8*), i64 56, i32 8, i1 false), !tbaa.struct !27
  %34 = bitcast %struct.stream_DCT_state_s* %state to %struct.stream_state_s*
  %35 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat5 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %35, i32 0, i32 0
  call void @s_init_state(%struct.stream_state_s* %34, %struct.stream_template_s* %templat5, %struct.gs_memory_s* null) #3
  %templat6 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 0
  %36 = load %struct.stream_template_s*, %struct.stream_template_s** %templat6, align 8, !tbaa !28
  %set_defaults = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %36, i32 0, i32 6
  %37 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults, align 8, !tbaa !32
  %tobool = icmp ne void (%struct.stream_state_s*)* %37, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 1
  store %struct.gs_memory_s* %38, %struct.gs_memory_s** %memory8, align 8, !tbaa !34
  %templat9 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 0
  %39 = load %struct.stream_template_s*, %struct.stream_template_s** %templat9, align 8, !tbaa !28
  %set_defaults10 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %39, i32 0, i32 6
  %40 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %set_defaults10, align 8, !tbaa !32
  %41 = bitcast %struct.stream_DCT_state_s* %state to %struct.stream_state_s*
  call void %40(%struct.stream_state_s* %41) #3
  %memory11 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 1
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %memory11, align 8, !tbaa !34
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %QFactor = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 6
  store float 1.000000e+00, float* %QFactor, align 4, !tbaa !35
  %ColorTransform = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 7
  store i32 1, i32* %ColorTransform, align 4, !tbaa !36
  %NoMarker = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 8
  store i32 1, i32* %NoMarker, align 4, !tbaa !37
  %Markers = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 5
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !38
  %Markers13 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 5
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers13, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !39
  %42 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %data14 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 10
  %compress = bitcast %union._jd* %data14 to %struct.jpeg_compress_data_s**
  store %struct.jpeg_compress_data_s* %42, %struct.jpeg_compress_data_s** %compress, align 8, !tbaa !1
  %icc_profile = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 11
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !40
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %43, i32 0, i32 39
  %44 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !41
  %cmp15 = icmp ne %struct.cmm_dev_profile_s* %44, null
  br i1 %cmp15, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.12
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %45, i32 0, i32 39
  %46 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct16, align 8, !tbaa !41
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %46, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %47 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %cmp17 = icmp ne %struct.cmm_profile_s* %47, null
  br i1 %cmp17, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %land.lhs.true
  %48 = bitcast %struct.cmm_profile_s** %icc_profile19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #2
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct20 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 39
  %50 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct20, align 8, !tbaa !41
  %device_profile21 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %50, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile21, i32 0, i64 0
  %51 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx22, align 8, !tbaa !1
  store %struct.cmm_profile_s* %51, %struct.cmm_profile_s** %icc_profile19, align 8, !tbaa !1
  %52 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile19, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %52, i32 0, i32 0
  %53 = load i8, i8* %num_comps, align 1, !tbaa !42
  %conv = zext i8 %53 to i32
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %55 = load i32, i32* %num_components, align 4, !tbaa !46
  %cmp23 = icmp eq i32 %conv, %55
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.18
  %56 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile19, align 8, !tbaa !1
  %icc_profile26 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 11
  store %struct.cmm_profile_s* %56, %struct.cmm_profile_s** %icc_profile26, align 8, !tbaa !40
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.18
  %57 = bitcast %struct.cmm_profile_s** %icc_profile19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true, %if.end.12
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %jpeg_memory = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 9
  store %struct.gs_memory_s* %58, %struct.gs_memory_s** %jpeg_memory, align 8, !tbaa !47
  %59 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %59, i32 0, i32 3
  store %struct.gs_memory_s* %58, %struct.gs_memory_s** %memory29, align 8, !tbaa !48
  %call30 = call i32 @gs_jpeg_create_compress(%struct.stream_DCT_state_s* %state) #3
  store i32 %call30, i32* %code, align 4, !tbaa !22
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.28
  br label %fail

if.end.34:                                        ; preds = %if.end.28
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 13
  %61 = load i32, i32* %width, align 4, !tbaa !55
  %62 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %62, i32 0, i32 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 7
  store i32 %61, i32* %image_width, align 4, !tbaa !56
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %63, i32 0, i32 14
  %64 = load i32, i32* %height, align 4, !tbaa !57
  %65 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo35 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %65, i32 0, i32 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo35, i32 0, i32 8
  store i32 %64, i32* %image_height, align 4, !tbaa !58
  %66 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info36 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %66, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info36, i32 0, i32 3
  %67 = load i16, i16* %depth, align 2, !tbaa !59
  %conv37 = zext i16 %67 to i32
  switch i32 %conv37, label %sw.epilog [
    i32 32, label %sw.bb
    i32 24, label %sw.bb.40
    i32 8, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %if.end.34
  %68 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo38 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %68, i32 0, i32 8
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo38, i32 0, i32 9
  store i32 4, i32* %input_components, align 4, !tbaa !60
  %69 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo39 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %69, i32 0, i32 8
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo39, i32 0, i32 10
  store i32 4, i32* %in_color_space, align 4, !tbaa !61
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.34
  %70 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo41 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %70, i32 0, i32 8
  %input_components42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo41, i32 0, i32 9
  store i32 3, i32* %input_components42, align 4, !tbaa !60
  %71 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo43 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %71, i32 0, i32 8
  %in_color_space44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo43, i32 0, i32 10
  store i32 2, i32* %in_color_space44, align 4, !tbaa !61
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.end.34
  %72 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo46 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %72, i32 0, i32 8
  %input_components47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo46, i32 0, i32 9
  store i32 1, i32* %input_components47, align 4, !tbaa !60
  %73 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo48 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %73, i32 0, i32 8
  %in_color_space49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo48, i32 0, i32 10
  store i32 1, i32* %in_color_space49, align 4, !tbaa !61
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.34, %sw.bb.45, %sw.bb.40, %sw.bb
  %call50 = call i32 @gs_jpeg_set_defaults(%struct.stream_DCT_state_s* %state) #3
  store i32 %call50, i32* %code, align 4, !tbaa !22
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %sw.epilog
  br label %done

if.end.54:                                        ; preds = %sw.epilog
  %74 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %JPEGQ = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %74, i32 0, i32 68
  %75 = load i32, i32* %JPEGQ, align 4, !tbaa !62
  %cmp55 = icmp sgt i32 %75, 0
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.end.54
  %76 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %JPEGQ58 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %76, i32 0, i32 68
  %77 = load i32, i32* %JPEGQ58, align 4, !tbaa !62
  %call59 = call i32 @gs_jpeg_set_quality(%struct.stream_DCT_state_s* %state, i32 %77, i32 1) #3
  store i32 %call59, i32* %code, align 4, !tbaa !22
  %78 = load i32, i32* %code, align 4, !tbaa !22
  %cmp60 = icmp slt i32 %78, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.57
  br label %done

if.end.63:                                        ; preds = %if.then.57
  br label %if.end.82

if.else:                                          ; preds = %if.end.54
  %79 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %QFactor64 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %79, i32 0, i32 69
  %80 = load float, float* %QFactor64, align 4, !tbaa !65
  %conv65 = fpext float %80 to double
  %cmp66 = fcmp ogt double %conv65, 0.000000e+00
  br i1 %cmp66, label %if.then.68, label %if.end.81

if.then.68:                                       ; preds = %if.else
  %81 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %QFactor69 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %81, i32 0, i32 69
  %82 = load float, float* %QFactor69, align 4, !tbaa !65
  %conv70 = fpext float %82 to double
  %cmp71 = fcmp olt double %conv70, 1.000000e+02
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.68
  %83 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %QFactor73 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %83, i32 0, i32 69
  %84 = load float, float* %QFactor73, align 4, !tbaa !65
  %conv74 = fpext float %84 to double
  br label %cond.end

cond.false:                                       ; preds = %if.then.68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv74, %cond.true ], [ 1.000000e+02, %cond.false ]
  %mul = fmul double %cond, 1.000000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv75 = fptosi double %add to i32
  %call76 = call i32 @gs_jpeg_set_linear_quality(%struct.stream_DCT_state_s* %state, i32 %conv75, i32 1) #3
  store i32 %call76, i32* %code, align 4, !tbaa !22
  %85 = load i32, i32* %code, align 4, !tbaa !22
  %cmp77 = icmp slt i32 %85, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %cond.end
  br label %done

if.end.80:                                        ; preds = %cond.end
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.else
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.63
  %86 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo83 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %86, i32 0, i32 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo83, i32 0, i32 36
  store i32 0, i32* %restart_interval, align 4, !tbaa !66
  %87 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo84 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %87, i32 0, i32 8
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo84, i32 0, i32 41
  store i8 1, i8* %density_unit, align 1, !tbaa !67
  %88 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %88, i32 0, i32 22
  %arrayidx85 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %89 = load float, float* %arrayidx85, align 4, !tbaa !68
  %conv86 = fptoui float %89 to i16
  %90 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo87 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %90, i32 0, i32 8
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo87, i32 0, i32 42
  store i16 %conv86, i16* %X_density, align 2, !tbaa !69
  %91 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution88 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %91, i32 0, i32 22
  %arrayidx89 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution88, i32 0, i64 1
  %92 = load float, float* %arrayidx89, align 4, !tbaa !68
  %conv90 = fptoui float %92 to i16
  %93 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo91 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %93, i32 0, i32 8
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo91, i32 0, i32 43
  store i16 %conv90, i16* %Y_density, align 2, !tbaa !70
  %94 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo92 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %94, i32 0, i32 8
  %input_components93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo92, i32 0, i32 9
  %95 = load i32, i32* %input_components93, align 4, !tbaa !60
  %96 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %cinfo94 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %96, i32 0, i32 8
  %image_width95 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo94, i32 0, i32 7
  %97 = load i32, i32* %image_width95, align 4, !tbaa !56
  %mul96 = mul i32 %95, %97
  %scan_line_size = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 14
  store i32 %mul96, i32* %scan_line_size, align 4, !tbaa !71
  %98 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 3), align 4, !tbaa !72
  %scan_line_size97 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 14
  %99 = load i32, i32* %scan_line_size97, align 4, !tbaa !71
  %cmp98 = icmp ugt i32 %98, %99
  br i1 %cmp98, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %if.end.82
  %100 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 3), align 4, !tbaa !72
  br label %cond.end.103

cond.false.101:                                   ; preds = %if.end.82
  %scan_line_size102 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 14
  %101 = load i32, i32* %scan_line_size102, align 4, !tbaa !71
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.true.100
  %cond104 = phi i32 [ %100, %cond.true.100 ], [ %101, %cond.false.101 ]
  %102 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat105 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %102, i32 0, i32 0
  %min_in_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %templat105, i32 0, i32 3
  store i32 %cond104, i32* %min_in_size, align 4, !tbaa !73
  %103 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 4), align 4, !tbaa !74
  %Markers106 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 5
  %size107 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers106, i32 0, i32 1
  %104 = load i32, i32* %size107, align 4, !tbaa !39
  %cmp108 = icmp ugt i32 %103, %104
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %cond.end.103
  %105 = load i32, i32* getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_DCTE_template, i32 0, i32 4), align 4, !tbaa !74
  br label %cond.end.114

cond.false.111:                                   ; preds = %cond.end.103
  %Markers112 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 5
  %size113 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Markers112, i32 0, i32 1
  %106 = load i32, i32* %size113, align 4, !tbaa !39
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.111, %cond.true.110
  %cond115 = phi i32 [ %105, %cond.true.110 ], [ %106, %cond.false.111 ]
  %107 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat116 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %107, i32 0, i32 0
  %min_out_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %templat116, i32 0, i32 4
  store i32 %cond115, i32* %min_out_size, align 4, !tbaa !75
  %108 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat117 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %108, i32 0, i32 0
  %min_out_size118 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %templat117, i32 0, i32 4
  %109 = load i32, i32* %min_out_size118, align 4, !tbaa !75
  %cmp119 = icmp ugt i32 512, %109
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.end.114
  br label %cond.end.125

cond.false.122:                                   ; preds = %cond.end.114
  %110 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat123 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %110, i32 0, i32 0
  %min_out_size124 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %templat123, i32 0, i32 4
  %111 = load i32, i32* %min_out_size124, align 4, !tbaa !75
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.true.121
  %cond126 = phi i32 [ 512, %cond.true.121 ], [ %111, %cond.false.122 ]
  store i32 %cond126, i32* %fbuf_size, align 4, !tbaa !22
  %112 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %templat127 = getelementptr inbounds %struct.jpeg_compress_data_s, %struct.jpeg_compress_data_s* %112, i32 0, i32 0
  %min_in_size128 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %templat127, i32 0, i32 3
  %113 = load i32, i32* %min_in_size128, align 4, !tbaa !73
  store i32 %113, i32* %jbuf_size, align 4, !tbaa !22
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs129 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %114, i32 0, i32 1
  %alloc_bytes130 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs129, i32 0, i32 7
  %115 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes130, align 8, !tbaa !23
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %117 = load i32, i32* %fbuf_size, align 4, !tbaa !22
  %call131 = call i8* %115(%struct.gs_memory_s* %116, i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0)) #3
  store i8* %call131, i8** %fbuf, align 8, !tbaa !1
  %cmp132 = icmp eq i8* %call131, null
  br i1 %cmp132, label %if.then.140, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %cond.end.125
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs135 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %118, i32 0, i32 1
  %alloc_bytes136 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs135, i32 0, i32 7
  %119 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes136, align 8, !tbaa !23
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %121 = load i32, i32* %jbuf_size, align 4, !tbaa !22
  %call137 = call i8* %119(%struct.gs_memory_s* %120, i32 %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0)) #3
  store i8* %call137, i8** %jbuf, align 8, !tbaa !1
  %cmp138 = icmp eq i8* %call137, null
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %lor.lhs.false.134, %cond.end.125
  store i32 -25, i32* %code, align 4, !tbaa !22
  br label %done

if.end.141:                                       ; preds = %lor.lhs.false.134
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %fstrm, %struct.gs_memory_s* %122) #3
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %124 = load i8*, i8** %fbuf, align 8, !tbaa !1
  %125 = load i32, i32* %fbuf_size, align 4, !tbaa !22
  call void @swrite_file(%struct.stream_s* %fstrm, %struct._IO_FILE* %123, i8* %124, i32 %125) #3
  %126 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %jstrm, %struct.gs_memory_s* %126) #3
  %127 = load i8*, i8** %jbuf, align 8, !tbaa !1
  %128 = load i32, i32* %jbuf_size, align 4, !tbaa !22
  call void @s_std_init(%struct.stream_s* %jstrm, i8* %127, i32 %128, %struct.stream_procs* @s_filter_write_procs, i32 2) #3
  %129 = bitcast %struct.stream_DCT_state_s* %state to %struct.stream_state_s*
  %state142 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %jstrm, i32 0, i32 18
  store %struct.stream_state_s* %129, %struct.stream_state_s** %state142, align 8, !tbaa !76
  %templat143 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 0
  %130 = load %struct.stream_template_s*, %struct.stream_template_s** %templat143, align 8, !tbaa !28
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %130, i32 0, i32 2
  %131 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !80
  %procs144 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %jstrm, i32 0, i32 14
  %process145 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs144, i32 0, i32 5
  store i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %131, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process145, align 8, !tbaa !81
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %jstrm, i32 0, i32 15
  store %struct.stream_s* %fstrm, %struct.stream_s** %strm, align 8, !tbaa !82
  %templat146 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 0
  %132 = load %struct.stream_template_s*, %struct.stream_template_s** %templat146, align 8, !tbaa !28
  %init = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %132, i32 0, i32 1
  %133 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init, align 8, !tbaa !83
  %tobool147 = icmp ne i32 (%struct.stream_state_s*)* %133, null
  br i1 %tobool147, label %if.then.148, label %if.end.153

if.then.148:                                      ; preds = %if.end.141
  %templat149 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 0
  %134 = load %struct.stream_template_s*, %struct.stream_template_s** %templat149, align 8, !tbaa !28
  %init150 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %134, i32 0, i32 1
  %135 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init150, align 8, !tbaa !83
  %state151 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %jstrm, i32 0, i32 18
  %136 = load %struct.stream_state_s*, %struct.stream_state_s** %state151, align 8, !tbaa !76
  %call152 = call i32 %135(%struct.stream_state_s* %136) #3
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.148, %if.end.141
  store i32 0, i32* %lnum, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.153
  %137 = load i32, i32* %lnum, align 4, !tbaa !22
  %138 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height154 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %138, i32 0, i32 14
  %139 = load i32, i32* %height154, align 4, !tbaa !57
  %cmp155 = icmp slt i32 %137, %139
  br i1 %cmp155, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %140 = bitcast i8** %data157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #2
  %141 = bitcast i32* %ignore_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #2
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %jstrm, i32 0, i32 9
  %142 = load i16, i16* %end_status, align 2, !tbaa !84
  %tobool158 = icmp ne i16 %142, 0
  br i1 %tobool158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %for.body
  store i32 -12, i32* %code, align 4, !tbaa !22
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.160:                                       ; preds = %for.body
  %143 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %144 = load i32, i32* %lnum, align 4, !tbaa !22
  %145 = load i8*, i8** %in, align 8, !tbaa !1
  %call161 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %143, i32 %144, i8* %145, i8** %data157) #3
  %146 = load i8*, i8** %data157, align 8, !tbaa !1
  %scan_line_size162 = getelementptr inbounds %struct.stream_DCT_state_s, %struct.stream_DCT_state_s* %state, i32 0, i32 14
  %147 = load i32, i32* %scan_line_size162, align 4, !tbaa !71
  %call163 = call i32 @sputs(%struct.stream_s* %jstrm, i8* %146, i32 %147, i32* %ignore_used) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.159, %if.end.160
  %148 = bitcast i32* %ignore_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = bitcast i8** %data157 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.184 [
    i32 0, label %cleanup.cont
    i32 4, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %150 = load i32, i32* %lnum, align 4, !tbaa !22
  %inc = add nsw i32 %150, 1
  store i32 %inc, i32* %lnum, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call165 = call i32 @sclose(%struct.stream_s* %jstrm) #3
  %procs166 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %fstrm, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs166, i32 0, i32 3
  %151 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !85
  %call167 = call i32 %151(%struct.stream_s* %fstrm) #3
  store %struct.jpeg_compress_data_s* null, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  br label %done

done:                                             ; preds = %for.end, %cleanup, %if.then.140, %if.then.79, %if.then.62, %if.then.53
  %152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs168 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %152, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs168, i32 0, i32 2
  %153 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !86
  %154 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %155 = load i8*, i8** %jbuf, align 8, !tbaa !1
  call void %153(%struct.gs_memory_s* %154, i8* %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0)) #3
  %156 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs169 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %156, i32 0, i32 1
  %free_object170 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs169, i32 0, i32 2
  %157 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object170, align 8, !tbaa !86
  %158 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %159 = load i8*, i8** %fbuf, align 8, !tbaa !1
  call void %157(%struct.gs_memory_s* %158, i8* %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0)) #3
  %160 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %tobool171 = icmp ne %struct.jpeg_compress_data_s* %160, null
  br i1 %tobool171, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %done
  %call173 = call i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s* %state) #3
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.172, %done
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs175 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %161, i32 0, i32 1
  %free_object176 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs175, i32 0, i32 2
  %162 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object176, align 8, !tbaa !86
  %163 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %164 = load i8*, i8** %in, align 8, !tbaa !1
  call void %162(%struct.gs_memory_s* %163, i8* %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #3
  %165 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %165, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.184

fail:                                             ; preds = %if.then.33, %if.then
  %166 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %tobool177 = icmp ne %struct.jpeg_compress_data_s* %166, null
  br i1 %tobool177, label %if.then.178, label %if.end.181

if.then.178:                                      ; preds = %fail
  %167 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs179 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %167, i32 0, i32 1
  %free_object180 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs179, i32 0, i32 2
  %168 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object180, align 8, !tbaa !86
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %170 = load %struct.jpeg_compress_data_s*, %struct.jpeg_compress_data_s** %jcdp, align 8, !tbaa !1
  %171 = bitcast %struct.jpeg_compress_data_s* %170 to i8*
  call void %168(%struct.gs_memory_s* %169, i8* %171, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0)) #3
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.178, %fail
  %172 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs182 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %172, i32 0, i32 1
  %free_object183 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs182, i32 0, i32 2
  %173 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object183, align 8, !tbaa !86
  %174 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %175 = load i8*, i8** %in, align 8, !tbaa !1
  call void %173(%struct.gs_memory_s* %174, i8* %175, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #3
  %176 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %176, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.184

cleanup.184:                                      ; preds = %if.end.181, %if.end.174, %cleanup
  %177 = bitcast %struct.stream_s* %jstrm to i8*
  call void @llvm.lifetime.end(i64 352, i8* %177) #2
  %178 = bitcast %struct.stream_s* %fstrm to i8*
  call void @llvm.lifetime.end(i64 352, i8* %178) #2
  %179 = bitcast %struct.stream_DCT_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 192, i8* %179) #2
  %180 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  %182 = bitcast i32* %jbuf_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast i8** %jbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #2
  %184 = bitcast i32* %fbuf_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast i8** %fbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #2
  %186 = bitcast %struct.jpeg_compress_data_s** %jcdp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #2
  %187 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #2
  %188 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #2
  %189 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #2
  %190 = bitcast %struct.gx_device_jpeg_s** %jdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #2
  %191 = load i32, i32* %retval
  ret i32 %191
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

; Function Attrs: nounwind uwtable
define internal void @jpeg_get_initial_matrix(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pdev = alloca %struct.gx_device_jpeg_s*, align 8
  %fs_res = alloca double, align 8
  %ss_res = alloca double, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_jpeg_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_jpeg_s*
  store %struct.gx_device_jpeg_s* %2, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %3 = bitcast double* %fs_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !68
  %conv = fpext float %5 to double
  %div = fdiv double %conv, 7.200000e+01
  %6 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewScale = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %6, i32 0, i32 70
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewScale, i32 0, i32 0
  %7 = load double, double* %x, align 8, !tbaa !87
  %mul = fmul double %div, %7
  store double %mul, double* %fs_res, align 8, !tbaa !88
  %8 = bitcast double* %ss_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %10 = load float, float* %arrayidx2, align 4, !tbaa !68
  %conv3 = fpext float %10 to double
  %div4 = fdiv double %conv3, 7.200000e+01
  %11 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewScale5 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %11, i32 0, i32 70
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewScale5, i32 0, i32 1
  %12 = load double, double* %y, align 8, !tbaa !89
  %mul6 = fmul double %div4, %12
  store double %mul6, double* %ss_res, align 8, !tbaa !88
  %13 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %LeadingEdge = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %13, i32 0, i32 18
  %14 = load i32, i32* %LeadingEdge, align 4, !tbaa !90
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.48
    i32 0, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %entry
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 0
  store float 0.000000e+00, float* %xx, align 4, !tbaa !91
  %16 = load double, double* %ss_res, align 8, !tbaa !88
  %sub = fsub double -0.000000e+00, %16
  %conv7 = fptrunc double %sub to float
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 1
  store float %conv7, float* %xy, align 4, !tbaa !93
  %18 = load double, double* %fs_res, align 8, !tbaa !88
  %sub8 = fsub double -0.000000e+00, %18
  %conv9 = fptrunc double %sub8 to float
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 2
  store float %conv9, float* %yx, align 4, !tbaa !94
  %20 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %20, i32 0, i32 3
  store float 0.000000e+00, float* %yy, align 4, !tbaa !95
  %21 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %21, i32 0, i32 13
  %22 = load i32, i32* %width, align 4, !tbaa !96
  %conv10 = sitofp i32 %22 to double
  %23 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewScale11 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %23, i32 0, i32 70
  %x12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewScale11, i32 0, i32 0
  %24 = load double, double* %x12, align 8, !tbaa !87
  %mul13 = fmul double %conv10, %24
  %25 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewTrans = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %25, i32 0, i32 71
  %x14 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans, i32 0, i32 0
  %26 = load double, double* %x14, align 8, !tbaa !97
  %sub15 = fsub double %mul13, %26
  %conv16 = fptrunc double %sub15 to float
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %27, i32 0, i32 4
  store float %conv16, float* %tx, align 4, !tbaa !98
  %28 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %28, i32 0, i32 14
  %29 = load i32, i32* %height, align 4, !tbaa !99
  %conv17 = sitofp i32 %29 to double
  %30 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewScale18 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %30, i32 0, i32 70
  %y19 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewScale18, i32 0, i32 1
  %31 = load double, double* %y19, align 8, !tbaa !89
  %mul20 = fmul double %conv17, %31
  %32 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewTrans21 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %32, i32 0, i32 71
  %y22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans21, i32 0, i32 1
  %33 = load double, double* %y22, align 8, !tbaa !100
  %sub23 = fsub double %mul20, %33
  %conv24 = fptrunc double %sub23 to float
  %34 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %34, i32 0, i32 5
  store float %conv24, float* %ty, align 4, !tbaa !101
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %35 = load double, double* %fs_res, align 8, !tbaa !88
  %sub26 = fsub double -0.000000e+00, %35
  %conv27 = fptrunc double %sub26 to float
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %36, i32 0, i32 0
  store float %conv27, float* %xx28, align 4, !tbaa !91
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 1
  store float 0.000000e+00, float* %xy29, align 4, !tbaa !93
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %38, i32 0, i32 2
  store float 0.000000e+00, float* %yx30, align 4, !tbaa !94
  %39 = load double, double* %ss_res, align 8, !tbaa !88
  %conv31 = fptrunc double %39 to float
  %40 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy32 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %40, i32 0, i32 3
  store float %conv31, float* %yy32, align 4, !tbaa !95
  %41 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %width33 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %41, i32 0, i32 13
  %42 = load i32, i32* %width33, align 4, !tbaa !96
  %conv34 = sitofp i32 %42 to double
  %43 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewScale35 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %43, i32 0, i32 70
  %x36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewScale35, i32 0, i32 0
  %44 = load double, double* %x36, align 8, !tbaa !87
  %mul37 = fmul double %conv34, %44
  %45 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewTrans38 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %45, i32 0, i32 71
  %x39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans38, i32 0, i32 0
  %46 = load double, double* %x39, align 8, !tbaa !97
  %sub40 = fsub double %mul37, %46
  %conv41 = fptrunc double %sub40 to float
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx42 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %47, i32 0, i32 4
  store float %conv41, float* %tx42, align 4, !tbaa !98
  %48 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewTrans43 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %48, i32 0, i32 71
  %x44 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans43, i32 0, i32 0
  %49 = load double, double* %x44, align 8, !tbaa !97
  %sub45 = fsub double -0.000000e+00, %49
  %conv46 = fptrunc double %sub45 to float
  %50 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty47 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %50, i32 0, i32 5
  store float %conv46, float* %ty47, align 4, !tbaa !101
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  %51 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx49 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %51, i32 0, i32 0
  store float 0.000000e+00, float* %xx49, align 4, !tbaa !91
  %52 = load double, double* %ss_res, align 8, !tbaa !88
  %conv50 = fptrunc double %52 to float
  %53 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy51 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %53, i32 0, i32 1
  store float %conv50, float* %xy51, align 4, !tbaa !93
  %54 = load double, double* %fs_res, align 8, !tbaa !88
  %conv52 = fptrunc double %54 to float
  %55 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx53 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %55, i32 0, i32 2
  store float %conv52, float* %yx53, align 4, !tbaa !94
  %56 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %56, i32 0, i32 3
  store float 0.000000e+00, float* %yy54, align 4, !tbaa !95
  %57 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewTrans55 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %57, i32 0, i32 71
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans55, i32 0, i32 0
  %58 = load double, double* %x56, align 8, !tbaa !97
  %sub57 = fsub double -0.000000e+00, %58
  %conv58 = fptrunc double %sub57 to float
  %59 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx59 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %59, i32 0, i32 4
  store float %conv58, float* %tx59, align 4, !tbaa !98
  %60 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewTrans60 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %60, i32 0, i32 71
  %y61 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans60, i32 0, i32 1
  %61 = load double, double* %y61, align 8, !tbaa !100
  %sub62 = fsub double -0.000000e+00, %61
  %conv63 = fptrunc double %sub62 to float
  %62 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty64 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %62, i32 0, i32 5
  store float %conv63, float* %ty64, align 4, !tbaa !101
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.bb.65

sw.bb.65:                                         ; preds = %entry, %sw.default
  %63 = load double, double* %fs_res, align 8, !tbaa !88
  %conv66 = fptrunc double %63 to float
  %64 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx67 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %64, i32 0, i32 0
  store float %conv66, float* %xx67, align 4, !tbaa !91
  %65 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy68 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %65, i32 0, i32 1
  store float 0.000000e+00, float* %xy68, align 4, !tbaa !93
  %66 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx69 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %66, i32 0, i32 2
  store float 0.000000e+00, float* %yx69, align 4, !tbaa !94
  %67 = load double, double* %ss_res, align 8, !tbaa !88
  %sub70 = fsub double -0.000000e+00, %67
  %conv71 = fptrunc double %sub70 to float
  %68 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy72 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %68, i32 0, i32 3
  store float %conv71, float* %yy72, align 4, !tbaa !95
  %69 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewTrans73 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %69, i32 0, i32 71
  %x74 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans73, i32 0, i32 0
  %70 = load double, double* %x74, align 8, !tbaa !97
  %sub75 = fsub double -0.000000e+00, %70
  %conv76 = fptrunc double %sub75 to float
  %71 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx77 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %71, i32 0, i32 4
  store float %conv76, float* %tx77, align 4, !tbaa !98
  %72 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %height78 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %72, i32 0, i32 14
  %73 = load i32, i32* %height78, align 4, !tbaa !99
  %conv79 = sitofp i32 %73 to double
  %74 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewScale80 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %74, i32 0, i32 70
  %y81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewScale80, i32 0, i32 1
  %75 = load double, double* %y81, align 8, !tbaa !89
  %mul82 = fmul double %conv79, %75
  %76 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %pdev, align 8, !tbaa !1
  %ViewTrans83 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %76, i32 0, i32 71
  %y84 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans83, i32 0, i32 1
  %77 = load double, double* %y84, align 8, !tbaa !100
  %sub85 = fsub double %mul82, %77
  %conv86 = fptrunc double %sub85 to float
  %78 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty87 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %78, i32 0, i32 5
  store float %conv86, float* %ty87, align 4, !tbaa !101
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.65, %sw.bb.48, %sw.bb.25, %sw.bb
  %79 = bitcast double* %ss_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast double* %fs_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast %struct.gx_device_jpeg_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  ret void
}

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @jpeg_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %jdev = alloca %struct.gx_device_jpeg_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %float2double = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_jpeg_s** %jdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_jpeg_s*
  store %struct.gx_device_jpeg_s* %2, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !22
  %6 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast float* %float2double to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %JPEGQ = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %11, i32 0, i32 68
  %call1 = call i32 @param_write_int(%struct.gs_param_list_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32* %JPEGQ) #3
  store i32 %call1, i32* %ecode, align 4, !tbaa !22
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %ecode, align 4, !tbaa !22
  store i32 %12, i32* %code, align 4, !tbaa !22
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %QFactor = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %14, i32 0, i32 69
  %call5 = call i32 @param_write_float(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), float* %QFactor) #3
  store i32 %call5, i32* %ecode, align 4, !tbaa !22
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %15 = load i32, i32* %ecode, align 4, !tbaa !22
  store i32 %15, i32* %code, align 4, !tbaa !22
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %16 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %ViewScale = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %16, i32 0, i32 70
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewScale, i32 0, i32 0
  %17 = load double, double* %x, align 8, !tbaa !87
  %conv = fptrunc double %17 to float
  store float %conv, float* %float2double, align 4, !tbaa !68
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call9 = call i32 @param_write_float(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), float* %float2double) #3
  store i32 %call9, i32* %ecode, align 4, !tbaa !22
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %19 = load i32, i32* %ecode, align 4, !tbaa !22
  store i32 %19, i32* %code, align 4, !tbaa !22
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.8
  %20 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %ViewScale14 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %20, i32 0, i32 70
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewScale14, i32 0, i32 1
  %21 = load double, double* %y, align 8, !tbaa !89
  %conv15 = fptrunc double %21 to float
  store float %conv15, float* %float2double, align 4, !tbaa !68
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call16 = call i32 @param_write_float(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), float* %float2double) #3
  store i32 %call16, i32* %ecode, align 4, !tbaa !22
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.13
  %23 = load i32, i32* %ecode, align 4, !tbaa !22
  store i32 %23, i32* %code, align 4, !tbaa !22
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.13
  %24 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %ViewTrans = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %24, i32 0, i32 71
  %x21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans, i32 0, i32 0
  %25 = load double, double* %x21, align 8, !tbaa !97
  %conv22 = fptrunc double %25 to float
  store float %conv22, float* %float2double, align 4, !tbaa !68
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call23 = call i32 @param_write_float(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), float* %float2double) #3
  store i32 %call23, i32* %ecode, align 4, !tbaa !22
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  %27 = load i32, i32* %ecode, align 4, !tbaa !22
  store i32 %27, i32* %code, align 4, !tbaa !22
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.20
  %28 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %ViewTrans28 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %28, i32 0, i32 71
  %y29 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans28, i32 0, i32 1
  %29 = load double, double* %y29, align 8, !tbaa !100
  %conv30 = fptrunc double %29 to float
  store float %conv30, float* %float2double, align 4, !tbaa !68
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call31 = call i32 @param_write_float(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), float* %float2double) #3
  store i32 %call31, i32* %ecode, align 4, !tbaa !22
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.27
  %31 = load i32, i32* %ecode, align 4, !tbaa !22
  store i32 %31, i32* %code, align 4, !tbaa !22
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.27
  %32 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then
  %33 = bitcast float* %float2double to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast %struct.gx_device_jpeg_s** %jdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @jpeg_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %jdev = alloca %struct.gx_device_jpeg_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %jq = alloca i32, align 4
  %qf = alloca float, align 4
  %fparam = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_jpeg_s** %jdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_jpeg_s*
  store %struct.gx_device_jpeg_s* %2, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %ecode, align 4, !tbaa !22
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %jq to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %JPEGQ = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %7, i32 0, i32 68
  %8 = load i32, i32* %JPEGQ, align 4, !tbaa !62
  store i32 %8, i32* %jq, align 4, !tbaa !22
  %9 = bitcast float* %qf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %QFactor = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %10, i32 0, i32 69
  %11 = load float, float* %QFactor, align 4, !tbaa !65
  store float %11, float* %qf, align 4, !tbaa !68
  %12 = bitcast float* %fparam to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32* %jq) #3
  store i32 %call, i32* %code, align 4, !tbaa !22
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %14 = load i32, i32* %jq, align 4, !tbaa !22
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %15 = load i32, i32* %jq, align 4, !tbaa !22
  %cmp1 = icmp sgt i32 %15, 100
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i32 -13, i32* %ecode, align 4, !tbaa !22
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %jqe

sw.default:                                       ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %16, i32* %ecode, align 4, !tbaa !22
  br label %jqe

jqe:                                              ; preds = %sw.default, %if.end
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %17, i32 0, i32 0
  %18 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !102
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %18, i32 0, i32 7
  %19 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !104
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %param_name, align 8, !tbaa !1
  %22 = load i32, i32* %ecode, align 4, !tbaa !22
  %call2 = call i32 %19(%struct.gs_param_list_s* %20, i8* %21, i32 %22) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %jqe, %entry, %if.else
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call3 = call i32 @param_read_float(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), float* %qf) #3
  store i32 %call3, i32* %code, align 4, !tbaa !22
  switch i32 %call3, label %sw.default.14 [
    i32 0, label %sw.bb.4
    i32 1, label %sw.epilog.18
  ]

sw.bb.4:                                          ; preds = %sw.epilog
  %24 = load float, float* %qf, align 4, !tbaa !68
  %conv = fpext float %24 to double
  %cmp5 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp5, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %sw.bb.4
  %25 = load float, float* %qf, align 4, !tbaa !68
  %conv8 = fpext float %25 to double
  %cmp9 = fcmp ogt double %conv8, 1.000000e+06
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %lor.lhs.false.7, %sw.bb.4
  store i32 -13, i32* %ecode, align 4, !tbaa !22
  br label %if.end.13

if.else.12:                                       ; preds = %lor.lhs.false.7
  br label %sw.epilog.18

if.end.13:                                        ; preds = %if.then.11
  br label %qfe

sw.default.14:                                    ; preds = %sw.epilog
  %26 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %26, i32* %ecode, align 4, !tbaa !22
  br label %qfe

qfe:                                              ; preds = %sw.default.14, %if.end.13
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %27, i32 0, i32 0
  %28 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs15, align 8, !tbaa !102
  %signal_error16 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %28, i32 0, i32 7
  %29 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error16, align 8, !tbaa !104
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %param_name, align 8, !tbaa !1
  %32 = load i32, i32* %ecode, align 4, !tbaa !22
  %call17 = call i32 %29(%struct.gs_param_list_s* %30, i8* %31, i32 %32) #3
  br label %sw.epilog.18

sw.epilog.18:                                     ; preds = %qfe, %sw.epilog, %if.else.12
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call19 = call i32 @param_read_float(%struct.gs_param_list_s* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), float* %fparam) #3
  store i32 %call19, i32* %code, align 4, !tbaa !22
  %34 = load i32, i32* %code, align 4, !tbaa !22
  %cmp20 = icmp eq i32 %34, 0
  br i1 %cmp20, label %if.then.22, label %if.else.33

if.then.22:                                       ; preds = %sw.epilog.18
  %35 = load float, float* %fparam, align 4, !tbaa !68
  %conv23 = fpext float %35 to double
  %cmp24 = fcmp olt double %conv23, 1.000000e+00
  br i1 %cmp24, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %if.then.22
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %36, i32 0, i32 0
  %37 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs27, align 8, !tbaa !102
  %signal_error28 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %37, i32 0, i32 7
  %38 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error28, align 8, !tbaa !104
  %39 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %40 = load i8*, i8** %param_name, align 8, !tbaa !1
  %call29 = call i32 %38(%struct.gs_param_list_s* %39, i8* %40, i32 -13) #3
  br label %if.end.32

if.else.30:                                       ; preds = %if.then.22
  %41 = load float, float* %fparam, align 4, !tbaa !68
  %conv31 = fpext float %41 to double
  %42 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %ViewScale = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %42, i32 0, i32 70
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewScale, i32 0, i32 0
  store double %conv31, double* %x, align 8, !tbaa !87
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.26
  br label %if.end.41

if.else.33:                                       ; preds = %sw.epilog.18
  %43 = load i32, i32* %code, align 4, !tbaa !22
  %cmp34 = icmp slt i32 %43, 1
  br i1 %cmp34, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.else.33
  %44 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %44, i32* %ecode, align 4, !tbaa !22
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs37 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %45, i32 0, i32 0
  %46 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs37, align 8, !tbaa !102
  %signal_error38 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %46, i32 0, i32 7
  %47 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error38, align 8, !tbaa !104
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %49 = load i8*, i8** %param_name, align 8, !tbaa !1
  %50 = load i32, i32* %code, align 4, !tbaa !22
  %call39 = call i32 %47(%struct.gs_param_list_s* %48, i8* %49, i32 %50) #3
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.else.33
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.32
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call42 = call i32 @param_read_float(%struct.gs_param_list_s* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), float* %fparam) #3
  store i32 %call42, i32* %code, align 4, !tbaa !22
  %52 = load i32, i32* %code, align 4, !tbaa !22
  %cmp43 = icmp eq i32 %52, 0
  br i1 %cmp43, label %if.then.45, label %if.else.57

if.then.45:                                       ; preds = %if.end.41
  %53 = load float, float* %fparam, align 4, !tbaa !68
  %conv46 = fpext float %53 to double
  %cmp47 = fcmp olt double %conv46, 1.000000e+00
  br i1 %cmp47, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %if.then.45
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs50 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %54, i32 0, i32 0
  %55 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs50, align 8, !tbaa !102
  %signal_error51 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %55, i32 0, i32 7
  %56 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error51, align 8, !tbaa !104
  %57 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %58 = load i8*, i8** %param_name, align 8, !tbaa !1
  %call52 = call i32 %56(%struct.gs_param_list_s* %57, i8* %58, i32 -13) #3
  br label %if.end.56

if.else.53:                                       ; preds = %if.then.45
  %59 = load float, float* %fparam, align 4, !tbaa !68
  %conv54 = fpext float %59 to double
  %60 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %ViewScale55 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %60, i32 0, i32 70
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewScale55, i32 0, i32 1
  store double %conv54, double* %y, align 8, !tbaa !89
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.49
  br label %if.end.65

if.else.57:                                       ; preds = %if.end.41
  %61 = load i32, i32* %code, align 4, !tbaa !22
  %cmp58 = icmp slt i32 %61, 1
  br i1 %cmp58, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %if.else.57
  %62 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %62, i32* %ecode, align 4, !tbaa !22
  %63 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs61 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %63, i32 0, i32 0
  %64 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs61, align 8, !tbaa !102
  %signal_error62 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %64, i32 0, i32 7
  %65 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error62, align 8, !tbaa !104
  %66 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %67 = load i8*, i8** %param_name, align 8, !tbaa !1
  %68 = load i32, i32* %code, align 4, !tbaa !22
  %call63 = call i32 %65(%struct.gs_param_list_s* %66, i8* %67, i32 %68) #3
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %if.else.57
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.56
  %69 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call66 = call i32 @param_read_float(%struct.gs_param_list_s* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), float* %fparam) #3
  store i32 %call66, i32* %code, align 4, !tbaa !22
  %70 = load i32, i32* %code, align 4, !tbaa !22
  %cmp67 = icmp eq i32 %70, 0
  br i1 %cmp67, label %if.then.69, label %if.else.72

if.then.69:                                       ; preds = %if.end.65
  %71 = load float, float* %fparam, align 4, !tbaa !68
  %conv70 = fpext float %71 to double
  %72 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %ViewTrans = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %72, i32 0, i32 71
  %x71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans, i32 0, i32 0
  store double %conv70, double* %x71, align 8, !tbaa !97
  br label %if.end.80

if.else.72:                                       ; preds = %if.end.65
  %73 = load i32, i32* %code, align 4, !tbaa !22
  %cmp73 = icmp slt i32 %73, 1
  br i1 %cmp73, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %if.else.72
  %74 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %74, i32* %ecode, align 4, !tbaa !22
  %75 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs76 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %75, i32 0, i32 0
  %76 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs76, align 8, !tbaa !102
  %signal_error77 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %76, i32 0, i32 7
  %77 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error77, align 8, !tbaa !104
  %78 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %79 = load i8*, i8** %param_name, align 8, !tbaa !1
  %80 = load i32, i32* %code, align 4, !tbaa !22
  %call78 = call i32 %77(%struct.gs_param_list_s* %78, i8* %79, i32 %80) #3
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %if.else.72
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.69
  %81 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call81 = call i32 @param_read_float(%struct.gs_param_list_s* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), float* %fparam) #3
  store i32 %call81, i32* %code, align 4, !tbaa !22
  %82 = load i32, i32* %code, align 4, !tbaa !22
  %cmp82 = icmp eq i32 %82, 0
  br i1 %cmp82, label %if.then.84, label %if.else.88

if.then.84:                                       ; preds = %if.end.80
  %83 = load float, float* %fparam, align 4, !tbaa !68
  %conv85 = fpext float %83 to double
  %84 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %ViewTrans86 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %84, i32 0, i32 71
  %y87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %ViewTrans86, i32 0, i32 1
  store double %conv85, double* %y87, align 8, !tbaa !100
  br label %if.end.96

if.else.88:                                       ; preds = %if.end.80
  %85 = load i32, i32* %code, align 4, !tbaa !22
  %cmp89 = icmp slt i32 %85, 1
  br i1 %cmp89, label %if.then.91, label %if.end.95

if.then.91:                                       ; preds = %if.else.88
  %86 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %86, i32* %ecode, align 4, !tbaa !22
  %87 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs92 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %87, i32 0, i32 0
  %88 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs92, align 8, !tbaa !102
  %signal_error93 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %88, i32 0, i32 7
  %89 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error93, align 8, !tbaa !104
  %90 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %91 = load i8*, i8** %param_name, align 8, !tbaa !1
  %92 = load i32, i32* %code, align 4, !tbaa !22
  %call94 = call i32 %89(%struct.gs_param_list_s* %90, i8* %91, i32 %92) #3
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.91, %if.else.88
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.84
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %94 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call97 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %93, %struct.gs_param_list_s* %94) #3
  store i32 %call97, i32* %code, align 4, !tbaa !22
  %95 = load i32, i32* %code, align 4, !tbaa !22
  %cmp98 = icmp slt i32 %95, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.96
  %96 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %if.end.96
  %97 = load i32, i32* %ecode, align 4, !tbaa !22
  %cmp102 = icmp slt i32 %97, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  %98 = load i32, i32* %ecode, align 4, !tbaa !22
  store i32 %98, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.105:                                       ; preds = %if.end.101
  %99 = load i32, i32* %jq, align 4, !tbaa !22
  %100 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %JPEGQ106 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %100, i32 0, i32 68
  store i32 %99, i32* %JPEGQ106, align 4, !tbaa !62
  %101 = load float, float* %qf, align 4, !tbaa !68
  %102 = load %struct.gx_device_jpeg_s*, %struct.gx_device_jpeg_s** %jdev, align 8, !tbaa !1
  %QFactor107 = getelementptr inbounds %struct.gx_device_jpeg_s, %struct.gx_device_jpeg_s* %102, i32 0, i32 69
  store float %101, float* %QFactor107, align 4, !tbaa !65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.105, %if.then.104, %if.then.100
  %103 = bitcast float* %fparam to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast float* %qf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %jq to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast %struct.gx_device_jpeg_s** %jdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = load i32, i32* %retval
  ret i32 %110
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_float(%struct.gs_param_list_s*, i8*, float*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_float(%struct.gs_param_list_s*, i8*, float*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i64 @gx_default_gray_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_gray_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @jpegcmyk_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %not_k = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !106
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i32* %not_k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i64, i64* %color.addr, align 8, !tbaa !106
  %and = and i64 %1, 255
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %not_k, align 4, !tbaa !22
  %2 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %not_k, align 4, !tbaa !22
  %conv1 = sext i32 %3 to i64
  %4 = load i64, i64* %color.addr, align 8, !tbaa !106
  %shr = lshr i64 %4, 24
  %neg = xor i64 %shr, -1
  %sub = sub i64 %conv1, %neg
  %conv2 = trunc i64 %sub to i32
  store i32 %conv2, i32* %r, align 4, !tbaa !22
  %5 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %not_k, align 4, !tbaa !22
  %conv3 = sext i32 %6 to i64
  %7 = load i64, i64* %color.addr, align 8, !tbaa !106
  %shr4 = lshr i64 %7, 16
  %and5 = and i64 %shr4, 255
  %neg6 = xor i64 %and5, -1
  %sub7 = sub i64 %conv3, %neg6
  %conv8 = trunc i64 %sub7 to i32
  store i32 %conv8, i32* %g, align 4, !tbaa !22
  %8 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %not_k, align 4, !tbaa !22
  %conv9 = sext i32 %9 to i64
  %10 = load i64, i64* %color.addr, align 8, !tbaa !106
  %shr10 = lshr i64 %10, 8
  %and11 = and i64 %shr10, 255
  %neg12 = xor i64 %and11, -1
  %sub13 = sub i64 %conv9, %neg12
  %conv14 = trunc i64 %sub13 to i32
  store i32 %conv14, i32* %b, align 4, !tbaa !22
  %11 = load i32, i32* %r, align 4, !tbaa !22
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %r, align 4, !tbaa !22
  %shl = shl i32 %12, 8
  %13 = load i32, i32* %r, align 4, !tbaa !22
  %shr16 = ashr i32 %13, 0
  %add = add nsw i32 %shl, %shr16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  %conv17 = trunc i32 %cond to i16
  %14 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 0
  store i16 %conv17, i16* %arrayidx, align 2, !tbaa !107
  %15 = load i32, i32* %g, align 4, !tbaa !22
  %cmp18 = icmp slt i32 %15, 0
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end
  br label %cond.end.25

cond.false.21:                                    ; preds = %cond.end
  %16 = load i32, i32* %g, align 4, !tbaa !22
  %shl22 = shl i32 %16, 8
  %17 = load i32, i32* %g, align 4, !tbaa !22
  %shr23 = ashr i32 %17, 0
  %add24 = add nsw i32 %shl22, %shr23
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.21, %cond.true.20
  %cond26 = phi i32 [ 0, %cond.true.20 ], [ %add24, %cond.false.21 ]
  %conv27 = trunc i32 %cond26 to i16
  %18 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %18, i64 1
  store i16 %conv27, i16* %arrayidx28, align 2, !tbaa !107
  %19 = load i32, i32* %b, align 4, !tbaa !22
  %cmp29 = icmp slt i32 %19, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end.25
  br label %cond.end.36

cond.false.32:                                    ; preds = %cond.end.25
  %20 = load i32, i32* %b, align 4, !tbaa !22
  %shl33 = shl i32 %20, 8
  %21 = load i32, i32* %b, align 4, !tbaa !22
  %shr34 = ashr i32 %21, 0
  %add35 = add nsw i32 %shl33, %shr34
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.32, %cond.true.31
  %cond37 = phi i32 [ 0, %cond.true.31 ], [ %add35, %cond.false.32 ]
  %conv38 = trunc i32 %cond37 to i16
  %22 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %22, i64 2
  store i16 %conv38, i16* %arrayidx39, align 2, !tbaa !107
  %23 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %not_k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @jpegcmyk_map_cmyk_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %color = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 3
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !107
  %conv = zext i16 %2 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv1 = trunc i32 %shr to i16
  %conv2 = zext i16 %conv1 to i32
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %3, i64 2
  %4 = load i16, i16* %arrayidx3, align 2, !tbaa !107
  %conv4 = zext i16 %4 to i32
  %mul5 = mul i32 %conv4, 65281
  %add6 = add i32 %mul5, 8388608
  %shr7 = lshr i32 %add6, 24
  %conv8 = trunc i32 %shr7 to i16
  %conv9 = zext i16 %conv8 to i32
  %shl = shl i32 %conv9, 8
  %add10 = add i32 %conv2, %shl
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx11, align 2, !tbaa !107
  %conv12 = zext i16 %6 to i32
  %mul13 = mul i32 %conv12, 65281
  %add14 = add i32 %mul13, 8388608
  %shr15 = lshr i32 %add14, 24
  %conv16 = trunc i32 %shr15 to i16
  %conv17 = zext i16 %conv16 to i32
  %shl18 = shl i32 %conv17, 16
  %add19 = add i32 %add10, %shl18
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx20, align 2, !tbaa !107
  %conv21 = zext i16 %8 to i32
  %mul22 = mul i32 %conv21, 65281
  %add23 = add i32 %mul22, 8388608
  %shr24 = lshr i32 %add23, 24
  %conv25 = trunc i32 %shr24 to i16
  %conv26 = zext i16 %conv25 to i32
  %shl27 = shl i32 %conv26, 24
  %add28 = add i32 %add19, %shl27
  %neg = xor i32 %add28, -1
  %conv29 = zext i32 %neg to i64
  store i64 %conv29, i64* %color, align 8, !tbaa !106
  %9 = load i64, i64* %color, align 8, !tbaa !106
  %cmp = icmp eq i64 %9, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i64, i64* %color, align 8, !tbaa !106
  %xor = xor i64 %10, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i64, i64* %color, align 8, !tbaa !106
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %11, %cond.false ]
  %12 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i64 %cond
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @s_init_state(%struct.stream_state_s*, %struct.stream_template_s*, %struct.gs_memory_s*) #0

declare i32 @gs_jpeg_create_compress(%struct.stream_DCT_state_s*) #0

declare i32 @gs_jpeg_set_defaults(%struct.stream_DCT_state_s*) #0

declare i32 @gs_jpeg_set_quality(%struct.stream_DCT_state_s*, i32, i32) #0

declare i32 @gs_jpeg_set_linear_quality(%struct.stream_DCT_state_s*, i32, i32) #0

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #0

declare void @swrite_file(%struct.stream_s*, %struct._IO_FILE*, i8*, i32) #0

declare void @s_std_init(%struct.stream_s*, i8*, i32, %struct.stream_procs*, i32) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #0

declare i32 @sclose(%struct.stream_s*) #0

declare i32 @gs_jpeg_destroy(%struct.stream_DCT_state_s*) #0

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
!5 = !{!6, !2, i64 24}
!6 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888}
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
!22 = !{!7, !7, i64 0}
!23 = !{!24, !2, i64 64}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!24, !2, i64 80}
!27 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !22, i64 28, i64 4, !22, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1}
!28 = !{!29, !2, i64 0}
!29 = !{!"stream_DCT_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !30, i64 112, !31, i64 128, !7, i64 132, !7, i64 136, !2, i64 144, !3, i64 152, !2, i64 160, !3, i64 168, !9, i64 176, !7, i64 184, !7, i64 188}
!30 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!31 = !{!"float", !3, i64 0}
!32 = !{!33, !2, i64 40}
!33 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!34 = !{!29, !2, i64 8}
!35 = !{!29, !31, i64 128}
!36 = !{!29, !7, i64 132}
!37 = !{!29, !7, i64 136}
!38 = !{!29, !2, i64 112}
!39 = !{!29, !7, i64 120}
!40 = !{!29, !2, i64 160}
!41 = !{!6, !2, i64 1104}
!42 = !{!43, !3, i64 0}
!43 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !7, i64 4, !7, i64 8, !3, i64 12, !3, i64 16, !44, i64 20, !9, i64 144, !7, i64 152, !3, i64 156, !7, i64 216, !7, i64 220, !7, i64 224, !45, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !8, i64 288, !7, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!44 = !{!"gs_range_icc_s", !3, i64 0}
!45 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20}
!46 = !{!6, !7, i64 100}
!47 = !{!29, !2, i64 144}
!48 = !{!49, !2, i64 432}
!49 = !{!"jpeg_compress_data_s", !33, i64 0, !50, i64 56, !51, i64 224, !2, i64 432, !2, i64 440, !2, i64 448, !7, i64 456, !7, i64 460, !52, i64 464, !54, i64 1048, !3, i64 1088, !7, i64 1188, !7, i64 1192}
!50 = !{!"jpeg_error_mgr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !3, i64 44, !7, i64 124, !9, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !7, i64 160, !7, i64 164}
!51 = !{!"", !3, i64 0}
!52 = !{!"jpeg_compress_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !7, i64 36, !2, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 60, !53, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !3, i64 96, !2, i64 104, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 224, !3, i64 240, !3, i64 256, !7, i64 272, !2, i64 280, !3, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !7, i64 308, !3, i64 312, !7, i64 316, !7, i64 320, !3, i64 324, !3, i64 328, !3, i64 329, !3, i64 330, !11, i64 332, !11, i64 334, !3, i64 336, !3, i64 340, !7, i64 344, !3, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !3, i64 376, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 420, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !2, i64 480, !7, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !7, i64 576}
!53 = !{!"double", !3, i64 0}
!54 = !{!"jpeg_destination_mgr", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!55 = !{!6, !7, i64 832}
!56 = !{!49, !7, i64 512}
!57 = !{!6, !7, i64 836}
!58 = !{!49, !7, i64 516}
!59 = !{!6, !11, i64 108}
!60 = !{!49, !7, i64 520}
!61 = !{!49, !3, i64 524}
!62 = !{!63, !7, i64 18472}
!63 = !{!"gx_device_jpeg_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !7, i64 18472, !31, i64 18476, !64, i64 18480, !64, i64 18496}
!64 = !{!"gs_point_s", !53, i64 0, !53, i64 8}
!65 = !{!63, !31, i64 18476}
!66 = !{!49, !7, i64 780}
!67 = !{!49, !3, i64 794}
!68 = !{!31, !31, i64 0}
!69 = !{!49, !11, i64 796}
!70 = !{!49, !11, i64 798}
!71 = !{!29, !7, i64 184}
!72 = !{!33, !7, i64 24}
!73 = !{!49, !7, i64 24}
!74 = !{!33, !7, i64 28}
!75 = !{!49, !7, i64 28}
!76 = !{!77, !2, i64 256}
!77 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !7, i64 144, !7, i64 148, !11, i64 152, !3, i64 154, !3, i64 155, !78, i64 160, !9, i64 176, !79, i64 184, !2, i64 240, !7, i64 248, !7, i64 252, !2, i64 256, !11, i64 264, !11, i64 266, !2, i64 272, !2, i64 280, !7, i64 288, !7, i64 292, !2, i64 296, !2, i64 304, !30, i64 312, !7, i64 328, !9, i64 336, !9, i64 344}
!78 = !{!"gs_string_s", !2, i64 0, !7, i64 8}
!79 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!80 = !{!33, !2, i64 16}
!81 = !{!77, !2, i64 224}
!82 = !{!77, !2, i64 240}
!83 = !{!33, !2, i64 8}
!84 = !{!77, !11, i64 152}
!85 = !{!77, !2, i64 208}
!86 = !{!24, !2, i64 24}
!87 = !{!63, !53, i64 18480}
!88 = !{!53, !53, i64 0}
!89 = !{!63, !53, i64 18488}
!90 = !{!63, !7, i64 852}
!91 = !{!92, !31, i64 0}
!92 = !{!"gs_matrix_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20}
!93 = !{!92, !31, i64 4}
!94 = !{!92, !31, i64 8}
!95 = !{!92, !31, i64 12}
!96 = !{!63, !7, i64 832}
!97 = !{!63, !53, i64 18496}
!98 = !{!92, !31, i64 16}
!99 = !{!63, !7, i64 836}
!100 = !{!63, !53, i64 18504}
!101 = !{!92, !31, i64 20}
!102 = !{!103, !2, i64 0}
!103 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!104 = !{!105, !2, i64 56}
!105 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!106 = !{!9, !9, i64 0}
!107 = !{!11, !11, i64 0}
