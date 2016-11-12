; ModuleID = './gxclpage.bc'
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
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.2 }
%union.anon.2 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_ht_cache_s = type opaque
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
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
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
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
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.gx_device_clist_common_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s** }
%struct.gx_placed_page_s = type { %struct.gx_saved_page_s*, %struct.gs_int_point_s }
%struct.gx_device_clist_reader_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, %struct.gx_render_plane_s, %struct.gx_placed_page_s*, %struct.gx_colors_usage_s*, i32, i8*, i32, %struct.clist_render_thread_control_s*, i8*, i32, i32, i32 }
%struct.clist_render_thread_control_s = type { i32, %struct.gs_memory_s*, %struct.gx_semaphore_s*, %struct.gx_semaphore_s*, %struct.gx_device_s*, %struct.gx_device_s*, i32, i8*, %struct.gx_process_page_options_s*, i8* }

@.str = private unnamed_addr constant [21 x i8] c"saved_page paramlist\00", align 1
@gs_clist_device_procs = external constant %struct.gx_device_procs_s, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"gdev_prn_render_pages\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gx_saved_pages_list_new\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"gx_saved_pages_list_add\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gx_saved_pages_list_free\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"gx_saved_pages_list_print: Error getting device params\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"gx_saved_pages_list_print: '-' unexpected\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"gx_saved_pages_list_print: Number format error '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"gx_saved_pages_list_print: copies not followed by number.\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"gx_saved_pages_list_print: page %d not found.\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"gx_saved_pages_param_process: copies not followed by number.\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"saved_pages_param_process\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"*** Invalid saved-pages token '%s'\0A *** in param string '%s'\0A\00", align 1
@param_find_key.saved_pages_keys = internal global [10 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"copies\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"even0pad\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"clist_finish_page\00", align 1
@gp_fmode_rb = external constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_save_page(%struct.gx_device_printer_s* %pdev, %struct.gx_saved_page_s* %page) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %page.addr = alloca %struct.gx_saved_page_s*, align 8
  %cdev = alloca %union.gx_device_clist_s*, align 8
  %pcldev = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  %paramlist = alloca %struct.gs_c_param_list_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_saved_page_s* %page, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %0 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_writer_s** %pcldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %5, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.gs_c_param_list_s* %paramlist to i8*
  call void @llvm.lifetime.start(i64 56, i8* %7) #1
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 53
  %9 = load i64, i64* %buffer_space, align 8, !tbaa !5
  %10 = inttoptr i64 %9 to %struct.gx_device_printer_s*
  %cmp = icmp ne %struct.gx_device_printer_s* %10, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %call = call i32 @clist_end_page(%struct.gx_device_clist_writer_s* %11) #6
  store i32 %call, i32* %code, align 4, !tbaa !22
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %12 to %struct.gx_device_clist_common_s*
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 4
  %13 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !23
  %fclose = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %13, i32 0, i32 1
  %14 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose, align 8, !tbaa !28
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %page_info2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %15, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info2, i32 0, i32 1
  %16 = load i8*, i8** %cfile, align 8, !tbaa !30
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %page_info3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call4 = call i32 %14(i8* %16, i8* %arraydecay, i32 0) #6
  store i32 %call4, i32* %code, align 4, !tbaa !22
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.16, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %18 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %common7 = bitcast %union.gx_device_clist_s* %18 to %struct.gx_device_clist_common_s*
  %page_info8 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common7, i32 0, i32 58
  %io_procs9 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info8, i32 0, i32 4
  %19 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs9, align 8, !tbaa !23
  %fclose10 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %19, i32 0, i32 1
  %20 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose10, align 8, !tbaa !28
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %page_info11 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info11, i32 0, i32 3
  %22 = load i8*, i8** %bfile, align 8, !tbaa !50
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %page_info12 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info12, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %call14 = call i32 %20(i8* %22, i8* %arraydecay13, i32 0) #6
  store i32 %call14, i32* %code, align 4, !tbaa !22
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %lor.lhs.false.6
  %25 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %25, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [32 x i8], [32 x i8]* %dname, i32 0, i32 0
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 2
  %27 = load i8*, i8** %dname19, align 8, !tbaa !51
  %call20 = call i8* @strncpy(i8* %arraydecay18, i8* %27, i64 32) #7
  %28 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %28, i32 0, i32 1
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info21 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 11
  %30 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %31 = bitcast %struct.gx_device_color_info_s* %color_info21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 720, i32 8, i1 false), !tbaa.struct !52
  %32 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %common22 = bitcast %union.gx_device_clist_s* %32 to %struct.gx_device_clist_common_s*
  %page_info23 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common22, i32 0, i32 58
  %io_procs24 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info23, i32 0, i32 4
  %33 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs24, align 8, !tbaa !23
  %34 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %io_procs25 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %34, i32 0, i32 4
  store %struct.clist_io_procs_s* %33, %struct.clist_io_procs_s** %io_procs25, align 8, !tbaa !56
  %35 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %cfname26 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %35, i32 0, i32 2
  %arraydecay27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname26, i32 0, i32 0
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %page_info28 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 58
  %cfname29 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info28, i32 0, i32 0
  %arraydecay30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname29, i32 0, i32 0
  %call31 = call i8* @strncpy(i8* %arraydecay27, i8* %arraydecay30, i64 4096) #7
  %37 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %bfname32 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %37, i32 0, i32 3
  %arraydecay33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname32, i32 0, i32 0
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %page_info34 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 58
  %bfname35 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info34, i32 0, i32 2
  %arraydecay36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname35, i32 0, i32 0
  %call37 = call i8* @strncpy(i8* %arraydecay33, i8* %arraydecay36, i64 4096) #7
  %39 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %page_info38 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %39, i32 0, i32 58
  %bfile_end_pos = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info38, i32 0, i32 7
  %40 = load i64, i64* %bfile_end_pos, align 8, !tbaa !58
  %41 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %bfile_end_pos39 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %41, i32 0, i32 6
  store i64 %40, i64* %bfile_end_pos39, align 8, !tbaa !59
  %42 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %page_info40 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %42, i32 0, i32 58
  %tile_cache_size = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info40, i32 0, i32 5
  %43 = load i32, i32* %tile_cache_size, align 4, !tbaa !60
  %44 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %tile_cache_size41 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %44, i32 0, i32 5
  store i32 %43, i32* %tile_cache_size41, align 4, !tbaa !61
  %45 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %band_params = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %45, i32 0, i32 7
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %pcldev, align 8, !tbaa !1
  %page_info42 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 58
  %band_params43 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info42, i32 0, i32 8
  %47 = bitcast %struct.gx_band_params_s* %band_params to i8*
  %48 = bitcast %struct.gx_band_params_s* %band_params43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false), !tbaa.struct !62
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !63
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !64
  %52 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %52, i32 0, i32 8
  store %struct.gs_memory_s* %51, %struct.gs_memory_s** %mem, align 8, !tbaa !67
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !63
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %paramlist, %struct.gs_memory_s* %54) #6
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %56 = bitcast %struct.gx_device_printer_s* %55 to %struct.gx_device_s*
  %57 = bitcast %struct.gs_c_param_list_s* %paramlist to %struct.gs_param_list_s*
  %call45 = call i32 @gs_get_device_or_hw_params(%struct.gx_device_s* %56, %struct.gs_param_list_s* %57, i32 0) #6
  store i32 %call45, i32* %code, align 4, !tbaa !22
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.17
  br label %params_out

if.end.48:                                        ; preds = %if.end.17
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %paramlist) #6
  %58 = bitcast %struct.gs_c_param_list_s* %paramlist to %struct.gs_param_list_s*
  %call49 = call i32 @gs_param_list_serialize(%struct.gs_param_list_s* %58, i8* null, i32 0) #6
  store i32 %call49, i32* %code, align 4, !tbaa !22
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  br label %params_out

if.end.52:                                        ; preds = %if.end.48
  %59 = load i32, i32* %code, align 4, !tbaa !22
  %60 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %paramlist_len = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %60, i32 0, i32 9
  store i32 %59, i32* %paramlist_len, align 4, !tbaa !68
  %61 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %mem53 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %61, i32 0, i32 8
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem53, align 8, !tbaa !67
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %63 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !69
  %64 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %mem54 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %64, i32 0, i32 8
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem54, align 8, !tbaa !67
  %66 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %paramlist_len55 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %66, i32 0, i32 9
  %67 = load i32, i32* %paramlist_len55, align 4, !tbaa !68
  %call56 = call i8* %63(%struct.gs_memory_s* %65, i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #6
  %68 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %paramlist57 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %68, i32 0, i32 10
  store i8* %call56, i8** %paramlist57, align 8, !tbaa !70
  %cmp58 = icmp eq i8* %call56, null
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.52
  br label %params_out

if.end.60:                                        ; preds = %if.end.52
  %69 = bitcast %struct.gs_c_param_list_s* %paramlist to %struct.gs_param_list_s*
  %70 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %paramlist61 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %70, i32 0, i32 10
  %71 = load i8*, i8** %paramlist61, align 8, !tbaa !70
  %72 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %paramlist_len62 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %72, i32 0, i32 9
  %73 = load i32, i32* %paramlist_len62, align 4, !tbaa !68
  %call63 = call i32 @gs_param_list_serialize(%struct.gs_param_list_s* %69, i8* %71, i32 %73) #6
  store i32 %call63, i32* %code, align 4, !tbaa !22
  br label %params_out

params_out:                                       ; preds = %if.end.60, %if.then.59, %if.then.51, %if.then.47
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %paramlist) #6
  %74 = load i32, i32* %code, align 4, !tbaa !22
  %cmp64 = icmp slt i32 %74, 0
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %params_out
  %75 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %params_out
  %76 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** getelementptr inbounds (%struct.gx_device_procs_s, %struct.gx_device_procs_s* @gs_clist_device_procs, i32 0, i32 0), align 8, !tbaa !71
  %77 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %78 = bitcast %struct.gx_device_printer_s* %77 to %struct.gx_device_s*
  %call67 = call i32 %76(%struct.gx_device_s* %78) #6
  store i32 %call67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.then.65, %if.then.16, %if.then
  %79 = bitcast %struct.gs_c_param_list_s* %paramlist to i8*
  call void @llvm.lifetime.end(i64 56, i8* %79) #1
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast %struct.gx_device_clist_writer_s** %pcldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @clist_end_page(%struct.gx_device_clist_writer_s*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gs_c_param_list_write(%struct.gs_c_param_list_s*, %struct.gs_memory_s*) #2

declare i32 @gs_get_device_or_hw_params(%struct.gx_device_s*, %struct.gs_param_list_s*, i32) #2

declare void @gs_c_param_list_read(%struct.gs_c_param_list_s*) #2

declare i32 @gs_param_list_serialize(%struct.gs_param_list_s*, i8*, i32) #2

declare void @gs_c_param_list_release(%struct.gs_c_param_list_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_prn_render_pages(%struct.gx_device_printer_s* %pdev, %struct.gx_placed_page_s* %ppages, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %ppages.addr = alloca %struct.gx_placed_page_s*, align 8
  %count.addr = alloca i32, align 4
  %pcldev = alloca %struct.gx_device_clist_reader_s*, align 8
  %i = alloca i32, align 4
  %page = alloca %struct.gx_saved_page_s*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %i35 = alloca i32, align 4
  %page40 = alloca %struct.gx_saved_page_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_placed_page_s* %ppages, %struct.gx_placed_page_s** %ppages.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !22
  %0 = bitcast %struct.gx_device_clist_reader_s** %pcldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %2, %struct.gx_device_clist_reader_s** %pcldev, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !22
  %5 = load i32, i32* %count.addr, align 4, !tbaa !22
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast %struct.gx_saved_page_s** %page to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppages.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %8, i64 %idxprom
  %page1 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %arrayidx, i32 0, i32 0
  %9 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page1, align 8, !tbaa !72
  store %struct.gx_saved_page_s* %9, %struct.gx_saved_page_s** %page, align 8, !tbaa !1
  %10 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %12, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %dname, i32 0, i32 0
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %dname2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %dname2, align 8, !tbaa !51
  %call = call i32 @strcmp(i8* %arraydecay, i8* %14) #7
  store i32 %call, i32* %tmp, !tbaa !22
  %15 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %tmp, !tbaa !22
  %cmp3 = icmp ne i32 %17, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %18, i32 0, i32 1
  %19 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 11
  %21 = bitcast %struct.gx_device_color_info_s* %color_info4 to i8*
  %call5 = call i32 @memcmp(i8* %19, i8* %21, i64 720) #8
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %22 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom7 = sext i32 %22 to i64
  %23 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppages.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %23, i64 %idxprom7
  %offset = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %arrayidx8, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %offset, i32 0, i32 1
  %24 = load i32, i32* %y, align 4, !tbaa !74
  %cmp9 = icmp ne i32 %24, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %25 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page, align 8, !tbaa !1
  %band_params = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %25, i32 0, i32 7
  %BandBufferSpace = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 2
  %26 = load i64, i64* %BandBufferSpace, align 8, !tbaa !75
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %buffer_space = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 53
  %28 = load i64, i64* %buffer_space, align 8, !tbaa !5
  %cmp12 = icmp ne i64 %26, %28
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end.11
  %29 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page, align 8, !tbaa !1
  %band_params14 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %29, i32 0, i32 7
  %BandWidth = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params14, i32 0, i32 0
  %30 = load i32, i32* %BandWidth, align 4, !tbaa !76
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 13
  %32 = load i32, i32* %width, align 4, !tbaa !77
  %cmp15 = icmp ne i32 %30, %32
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.13, %if.end.11
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %lor.lhs.false.13
  %33 = load i32, i32* %i, align 4, !tbaa !22
  %cmp18 = icmp sgt i32 %33, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.17
  %34 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page, align 8, !tbaa !1
  %band_params19 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %34, i32 0, i32 7
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params19, i32 0, i32 1
  %35 = load i32, i32* %BandHeight, align 4, !tbaa !78
  %36 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppages.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %36, i64 0
  %page21 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %arrayidx20, i32 0, i32 0
  %37 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page21, align 8, !tbaa !72
  %band_params22 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %37, i32 0, i32 7
  %BandHeight23 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params22, i32 0, i32 1
  %38 = load i32, i32* %BandHeight23, align 4, !tbaa !78
  %cmp24 = icmp ne i32 %35, %38
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true, %if.end.17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25, %if.then.16, %if.then.10, %if.then
  %39 = bitcast %struct.gx_saved_page_s** %page to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %40 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.27

cleanup.27:                                       ; preds = %for.end, %cleanup
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %cleanup.dest.28 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.28, label %cleanup.59 [
    i32 0, label %cleanup.cont.29
  ]

cleanup.cont.29:                                  ; preds = %cleanup.27
  %42 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcldev, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %42, i32 0, i32 57
  store i32 0, i32* %ymax, align 4, !tbaa !79
  %43 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcldev, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %43, i32 0, i32 56
  store i32 0, i32* %ymin, align 4, !tbaa !82
  %44 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppages.addr, align 8, !tbaa !1
  %45 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcldev, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %45, i32 0, i32 66
  store %struct.gx_placed_page_s* %44, %struct.gx_placed_page_s** %pages, align 8, !tbaa !83
  %46 = load i32, i32* %count.addr, align 4, !tbaa !22
  %47 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcldev, align 8, !tbaa !1
  %num_pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %47, i32 0, i32 68
  store i32 %46, i32* %num_pages, align 4, !tbaa !84
  %48 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcldev, align 8, !tbaa !1
  %offset_map = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %48, i32 0, i32 69
  store i8* null, i8** %offset_map, align 8, !tbaa !85
  %49 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcldev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %49, i32 0, i32 61
  store %struct.clist_icctable_s* null, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !86
  %50 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcldev, align 8, !tbaa !1
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %50, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !87
  %51 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 42
  %output_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 3
  %53 = load i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32)** %output_page, align 8, !tbaa !88
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gx_device_printer_s* %54 to %struct.gx_device_s*
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %IgnoreNumCopies = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 30
  %57 = load i32, i32* %IgnoreNumCopies, align 4, !tbaa !89
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %cleanup.cont.29
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %NumCopies_set = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %58, i32 0, i32 29
  %59 = load i32, i32* %NumCopies_set, align 4, !tbaa !90
  %cmp32 = icmp sle i32 %59, 0
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.31, %cleanup.cont.29
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.31
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %NumCopies = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 28
  %61 = load i32, i32* %NumCopies, align 4, !tbaa !91
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %61, %cond.false ]
  %call33 = call i32 %53(%struct.gx_device_s* %55, i32 %cond, i32 1) #6
  store i32 %call33, i32* %code, align 4, !tbaa !22
  %62 = bitcast i32* %i35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  store i32 0, i32* %i35, align 4, !tbaa !22
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.54, %cond.end
  %63 = load i32, i32* %i35, align 4, !tbaa !22
  %64 = load i32, i32* %count.addr, align 4, !tbaa !22
  %cmp37 = icmp slt i32 %63, %64
  br i1 %cmp37, label %for.body.38, label %for.end.56

for.body.38:                                      ; preds = %for.cond.36
  %65 = bitcast %struct.gx_saved_page_s** %page40 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load i32, i32* %i35, align 4, !tbaa !22
  %idxprom41 = sext i32 %66 to i64
  %67 = load %struct.gx_placed_page_s*, %struct.gx_placed_page_s** %ppages.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %67, i64 %idxprom41
  %page43 = getelementptr inbounds %struct.gx_placed_page_s, %struct.gx_placed_page_s* %arrayidx42, i32 0, i32 0
  %68 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page43, align 8, !tbaa !72
  store %struct.gx_saved_page_s* %68, %struct.gx_saved_page_s** %page40, align 8, !tbaa !1
  %69 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcldev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %69, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 4
  %70 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !92
  %unlink = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %70, i32 0, i32 2
  %71 = load i32 (i8*)*, i32 (i8*)** %unlink, align 8, !tbaa !93
  %72 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page40, align 8, !tbaa !1
  %cfname = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %72, i32 0, i32 2
  %arraydecay44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call45 = call i32 %71(i8* %arraydecay44) #6
  %73 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %pcldev, align 8, !tbaa !1
  %page_info46 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %73, i32 0, i32 58
  %io_procs47 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info46, i32 0, i32 4
  %74 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs47, align 8, !tbaa !92
  %unlink48 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %74, i32 0, i32 2
  %75 = load i32 (i8*)*, i32 (i8*)** %unlink48, align 8, !tbaa !93
  %76 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page40, align 8, !tbaa !1
  %bfname = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %76, i32 0, i32 3
  %arraydecay49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %call50 = call i32 %75(i8* %arraydecay49) #6
  %77 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page40, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %77, i32 0, i32 8
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !67
  %procs51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs51, i32 0, i32 2
  %79 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !94
  %80 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page40, align 8, !tbaa !1
  %mem52 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %80, i32 0, i32 8
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem52, align 8, !tbaa !67
  %82 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page40, align 8, !tbaa !1
  %paramlist = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %82, i32 0, i32 10
  %83 = load i8*, i8** %paramlist, align 8, !tbaa !70
  call void %79(%struct.gs_memory_s* %81, i8* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #6
  %84 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page40, align 8, !tbaa !1
  %paramlist53 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %84, i32 0, i32 10
  store i8* null, i8** %paramlist53, align 8, !tbaa !70
  %85 = bitcast %struct.gx_saved_page_s** %page40 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.38
  %86 = load i32, i32* %i35, align 4, !tbaa !22
  %inc55 = add nsw i32 %86, 1
  store i32 %inc55, i32* %i35, align 4, !tbaa !22
  br label %for.cond.36

for.end.56:                                       ; preds = %for.cond.36
  %87 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %88 = bitcast i32* %i35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  br label %cleanup.59

cleanup.59:                                       ; preds = %for.end.56, %cleanup.27
  %90 = bitcast %struct.gx_device_clist_reader_s** %pcldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = load i32, i32* %retval
  ret i32 %91
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define %struct.gx_saved_pages_list_s* @gx_saved_pages_list_new(%struct.gx_device_printer_s* %pdev) #0 {
entry:
  %retval = alloca %struct.gx_saved_pages_list_s*, align 8
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %newlist = alloca %struct.gx_saved_pages_list_s*, align 8
  %non_gc_mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_saved_pages_list_s** %newlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_memory_s** %non_gc_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !63
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !64
  store %struct.gs_memory_s* %4, %struct.gs_memory_s** %non_gc_mem, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %6 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !69
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_mem, align 8, !tbaa !1
  %call = call i8* %6(%struct.gs_memory_s* %7, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)) #6
  %8 = bitcast i8* %call to %struct.gx_saved_pages_list_s*
  store %struct.gx_saved_pages_list_s* %8, %struct.gx_saved_pages_list_s** %newlist, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_saved_pages_list_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gx_saved_pages_list_s* null, %struct.gx_saved_pages_list_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %newlist, align 8, !tbaa !1
  %10 = bitcast %struct.gx_saved_pages_list_s* %9 to i8*
  %call1 = call i8* @memset(i8* %10, i32 0, i64 40) #7
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_mem, align 8, !tbaa !1
  %12 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %newlist, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %12, i32 0, i32 6
  store %struct.gs_memory_s* %11, %struct.gs_memory_s** %mem, align 8, !tbaa !95
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 26
  %14 = load i64, i64* %PageCount, align 8, !tbaa !97
  %conv = trunc i64 %14 to i32
  %15 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %newlist, align 8, !tbaa !1
  %PageCount2 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %15, i32 0, i32 0
  store i32 %conv, i32* %PageCount2, align 4, !tbaa !98
  %16 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %newlist, align 8, !tbaa !1
  %collated_copies = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %16, i32 0, i32 2
  store i32 1, i32* %collated_copies, align 4, !tbaa !99
  %17 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %newlist, align 8, !tbaa !1
  store %struct.gx_saved_pages_list_s* %17, %struct.gx_saved_pages_list_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast %struct.gs_memory_s** %non_gc_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.gx_saved_pages_list_s** %newlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %retval
  ret %struct.gx_saved_pages_list_s* %20
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gx_saved_pages_list_add(%struct.gx_device_printer_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %list = alloca %struct.gx_saved_pages_list_s*, align 8
  %new_list_element = alloca %struct.gx_saved_pages_list_element_s*, align 8
  %newpage = alloca %struct.gx_saved_page_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_saved_pages_list_s** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 65
  %2 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list, align 8, !tbaa !100
  store %struct.gx_saved_pages_list_s* %2, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %3 = bitcast %struct.gx_saved_pages_list_element_s** %new_list_element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gx_saved_page_s** %newpage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %6, i32 0, i32 6
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !95
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !69
  %9 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %mem1 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %9, i32 0, i32 6
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem1, align 8, !tbaa !95
  %call = call i8* %8(%struct.gs_memory_s* %10, i32 9008, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #6
  %11 = bitcast i8* %call to %struct.gx_saved_page_s*
  store %struct.gx_saved_page_s* %11, %struct.gx_saved_page_s** %newpage, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_saved_page_s* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %mem2 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %12, i32 0, i32 6
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem2, align 8, !tbaa !95
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_bytes4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 7
  %14 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes4, align 8, !tbaa !69
  %15 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %mem5 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %15, i32 0, i32 6
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem5, align 8, !tbaa !95
  %call6 = call i8* %14(%struct.gs_memory_s* %16, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #6
  %17 = bitcast i8* %call6 to %struct.gx_saved_pages_list_element_s*
  store %struct.gx_saved_pages_list_element_s* %17, %struct.gx_saved_pages_list_element_s** %new_list_element, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.gx_saved_pages_list_element_s* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %18 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %mem9 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %18, i32 0, i32 6
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem9, align 8, !tbaa !95
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !94
  %21 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %mem11 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %21, i32 0, i32 6
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem11, align 8, !tbaa !95
  %23 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %newpage, align 8, !tbaa !1
  %24 = bitcast %struct.gx_saved_page_s* %23 to i8*
  call void %20(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %26 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %newpage, align 8, !tbaa !1
  %call13 = call i32 @gdev_prn_save_page(%struct.gx_device_printer_s* %25, %struct.gx_saved_page_s* %26) #6
  store i32 %call13, i32* %code, align 4, !tbaa !22
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %if.end.12
  %27 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %mem16 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %27, i32 0, i32 6
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem16, align 8, !tbaa !95
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object18 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object18, align 8, !tbaa !94
  %30 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %mem19 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %30, i32 0, i32 6
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem19, align 8, !tbaa !95
  %32 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %new_list_element, align 8, !tbaa !1
  %33 = bitcast %struct.gx_saved_pages_list_element_s* %32 to i8*
  call void %29(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #6
  %34 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %mem20 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %34, i32 0, i32 6
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem20, align 8, !tbaa !95
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %free_object22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object22, align 8, !tbaa !94
  %37 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %mem23 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %37, i32 0, i32 6
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem23, align 8, !tbaa !95
  %39 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %newpage, align 8, !tbaa !1
  %40 = bitcast %struct.gx_saved_page_s* %39 to i8*
  call void %36(%struct.gs_memory_s* %38, i8* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #6
  %41 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.12
  %42 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %42, i32 0, i32 1
  %43 = load i32, i32* %count, align 4, !tbaa !101
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %count, align 4, !tbaa !101
  %44 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %new_list_element, align 8, !tbaa !1
  %sequence_number = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %44, i32 0, i32 0
  store i32 %inc, i32* %sequence_number, align 4, !tbaa !102
  %45 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %newpage, align 8, !tbaa !1
  %46 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %new_list_element, align 8, !tbaa !1
  %page = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %46, i32 0, i32 3
  store %struct.gx_saved_page_s* %45, %struct.gx_saved_page_s** %page, align 8, !tbaa !104
  %47 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %new_list_element, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %47, i32 0, i32 2
  store %struct.gx_saved_pages_list_element_s* null, %struct.gx_saved_pages_list_element_s** %next, align 8, !tbaa !105
  %48 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %tail = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %48, i32 0, i32 5
  %49 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %tail, align 8, !tbaa !106
  %cmp25 = icmp eq %struct.gx_saved_pages_list_element_s* %49, null
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.24
  %50 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %new_list_element, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %50, i32 0, i32 1
  store %struct.gx_saved_pages_list_element_s* null, %struct.gx_saved_pages_list_element_s** %prev, align 8, !tbaa !107
  %51 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %new_list_element, align 8, !tbaa !1
  %52 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %tail27 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %52, i32 0, i32 5
  store %struct.gx_saved_pages_list_element_s* %51, %struct.gx_saved_pages_list_element_s** %tail27, align 8, !tbaa !106
  %53 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %53, i32 0, i32 4
  store %struct.gx_saved_pages_list_element_s* %51, %struct.gx_saved_pages_list_element_s** %head, align 8, !tbaa !108
  br label %if.end.33

if.else:                                          ; preds = %if.end.24
  %54 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %tail28 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %54, i32 0, i32 5
  %55 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %tail28, align 8, !tbaa !106
  %56 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %new_list_element, align 8, !tbaa !1
  %prev29 = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %56, i32 0, i32 1
  store %struct.gx_saved_pages_list_element_s* %55, %struct.gx_saved_pages_list_element_s** %prev29, align 8, !tbaa !107
  %57 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %new_list_element, align 8, !tbaa !1
  %58 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %tail30 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %58, i32 0, i32 5
  %59 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %tail30, align 8, !tbaa !106
  %next31 = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %59, i32 0, i32 2
  store %struct.gx_saved_pages_list_element_s* %57, %struct.gx_saved_pages_list_element_s** %next31, align 8, !tbaa !105
  %60 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %new_list_element, align 8, !tbaa !1
  %61 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list, align 8, !tbaa !1
  %tail32 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %61, i32 0, i32 5
  store %struct.gx_saved_pages_list_element_s* %60, %struct.gx_saved_pages_list_element_s** %tail32, align 8, !tbaa !106
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.15, %if.then.8, %if.then
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast %struct.gx_saved_page_s** %newpage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.gx_saved_pages_list_element_s** %new_list_element to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.gx_saved_pages_list_s** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define void @gx_saved_pages_list_free(%struct.gx_saved_pages_list_s* %list) #0 {
entry:
  %list.addr = alloca %struct.gx_saved_pages_list_s*, align 8
  %curr_elem = alloca %struct.gx_saved_pages_list_element_s*, align 8
  %curr_page = alloca %struct.gx_saved_page_s*, align 8
  %next_elem = alloca %struct.gx_saved_pages_list_element_s*, align 8
  store %struct.gx_saved_pages_list_s* %list, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_saved_pages_list_element_s** %curr_elem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %1, i32 0, i32 4
  %2 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %head, align 8, !tbaa !108
  store %struct.gx_saved_pages_list_element_s* %2, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_saved_pages_list_element_s* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = bitcast %struct.gx_saved_page_s** %curr_page to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gx_saved_pages_list_element_s** %next_elem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %page = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %6, i32 0, i32 3
  %7 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page, align 8, !tbaa !104
  store %struct.gx_saved_page_s* %7, %struct.gx_saved_page_s** %curr_page, align 8, !tbaa !1
  %8 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %curr_page, align 8, !tbaa !1
  %io_procs = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %8, i32 0, i32 4
  %9 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !56
  %unlink = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %9, i32 0, i32 2
  %10 = load i32 (i8*)*, i32 (i8*)** %unlink, align 8, !tbaa !93
  %11 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %curr_page, align 8, !tbaa !1
  %cfname = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call = call i32 %10(i8* %arraydecay) #6
  %12 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %curr_page, align 8, !tbaa !1
  %io_procs1 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %12, i32 0, i32 4
  %13 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs1, align 8, !tbaa !56
  %unlink2 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %13, i32 0, i32 2
  %14 = load i32 (i8*)*, i32 (i8*)** %unlink2, align 8, !tbaa !93
  %15 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %curr_page, align 8, !tbaa !1
  %bfname = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %15, i32 0, i32 3
  %arraydecay3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %call4 = call i32 %14(i8* %arraydecay3) #6
  %16 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %curr_page, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %16, i32 0, i32 8
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !67
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !94
  %19 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %curr_page, align 8, !tbaa !1
  %mem5 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %19, i32 0, i32 8
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem5, align 8, !tbaa !67
  %21 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %curr_page, align 8, !tbaa !1
  %paramlist = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %21, i32 0, i32 10
  %22 = load i8*, i8** %paramlist, align 8, !tbaa !70
  call void %18(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #6
  %23 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %mem6 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %23, i32 0, i32 6
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem6, align 8, !tbaa !95
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !94
  %26 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %mem9 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %26, i32 0, i32 6
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem9, align 8, !tbaa !95
  %28 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %curr_page, align 8, !tbaa !1
  %29 = bitcast %struct.gx_saved_page_s* %28 to i8*
  call void %25(%struct.gs_memory_s* %27, i8* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #6
  %30 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %30, i32 0, i32 2
  %31 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %next, align 8, !tbaa !105
  store %struct.gx_saved_pages_list_element_s* %31, %struct.gx_saved_pages_list_element_s** %next_elem, align 8, !tbaa !1
  %32 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %mem10 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %32, i32 0, i32 6
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem10, align 8, !tbaa !95
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !94
  %35 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %mem13 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %35, i32 0, i32 6
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem13, align 8, !tbaa !95
  %37 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %38 = bitcast %struct.gx_saved_pages_list_element_s* %37 to i8*
  call void %34(%struct.gs_memory_s* %36, i8* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #6
  %39 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %next_elem, align 8, !tbaa !1
  store %struct.gx_saved_pages_list_element_s* %39, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %40 = bitcast %struct.gx_saved_pages_list_element_s** %next_elem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.gx_saved_page_s** %curr_page to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %mem14 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %42, i32 0, i32 6
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem14, align 8, !tbaa !95
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %free_object16 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %44 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object16, align 8, !tbaa !94
  %45 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %mem17 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %45, i32 0, i32 6
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem17, align 8, !tbaa !95
  %47 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gx_saved_pages_list_s* %47 to i8*
  call void %44(%struct.gs_memory_s* %46, i8* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)) #6
  %49 = bitcast %struct.gx_saved_pages_list_element_s** %curr_elem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_saved_pages_list_print(%struct.gx_device_printer_s* %pdev, %struct.gx_saved_pages_list_s* %list, i8* %param, i32 %param_size, i32* %printed_count) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %list.addr = alloca %struct.gx_saved_pages_list_s*, align 8
  %param.addr = alloca i8*, align 8
  %param_size.addr = alloca i32, align 4
  %printed_count.addr = alloca i32*, align 8
  %param_scan = alloca i8*, align 8
  %param_left = alloca i32, align 4
  %start_page = alloca i32, align 4
  %end_page = alloca i32, align 4
  %tmp_num = alloca i32, align 4
  %code = alloca i32, align 4
  %endcode = alloca i32, align 4
  %token = alloca i8*, align 8
  %copy = alloca i32, align 4
  %token_size = alloca i32, align 4
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %save_bg_print = alloca i32, align 4
  %save_bandfile_open_close = alloca i32, align 4
  %saved_page = alloca %struct.gx_saved_page_s, align 8
  %page_skip = alloca i32, align 4
  %do_blank_page_pad = alloca i32, align 4
  %page = alloca i32, align 4
  %key = alloca i32, align 4
  %curr_page = alloca i32, align 4
  %curr_elem = alloca %struct.gx_saved_pages_list_element_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_saved_pages_list_s* %list, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  store i8* %param, i8** %param.addr, align 8, !tbaa !1
  store i32 %param_size, i32* %param_size.addr, align 4, !tbaa !22
  store i32* %printed_count, i32** %printed_count.addr, align 8, !tbaa !1
  %0 = bitcast i8** %param_scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %param_scan, align 8, !tbaa !1
  %1 = bitcast i32* %param_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %start_page to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %start_page, align 4, !tbaa !22
  %3 = bitcast i32* %end_page to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %end_page, align 4, !tbaa !22
  %4 = bitcast i32* %tmp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %code, align 4, !tbaa !22
  %6 = bitcast i32* %endcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %endcode, align 4, !tbaa !22
  %7 = bitcast i8** %token to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %token_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_printer_s* %11 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %12, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %13 = bitcast i32* %save_bg_print to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %save_bg_print, align 4, !tbaa !22
  %14 = bitcast i32* %save_bandfile_open_close to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %save_bandfile_open_close, align 4, !tbaa !22
  %15 = bitcast %struct.gx_saved_page_s* %saved_page to i8*
  call void @llvm.lifetime.start(i64 9008, i8* %15) #1
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_save_page(%struct.gx_device_printer_s* %16, %struct.gx_saved_page_s* %saved_page) #6
  store i32 %call, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !63
  %call1 = call i8* @gs_program_name() #6
  %call2 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %18, i8* %call1, i64 %call2) #6
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !63
  %call4 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i32 0, i32 0)) #6
  br label %out

if.end:                                           ; preds = %entry
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_printer_s* %21 to %union.gx_device_clist_s*
  %call5 = call i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s* %22) #6
  store i32 %call5, i32* %code, align 4, !tbaa !22
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %out

if.end.8:                                         ; preds = %if.end
  %23 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %23, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %24 = load i8*, i8** %cfile, align 8, !tbaa !109
  %cmp9 = icmp ne i8* %24, null
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end.8
  %25 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info11 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %25, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info11, i32 0, i32 4
  %26 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !92
  %fclose = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %26, i32 0, i32 1
  %27 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose, align 8, !tbaa !28
  %28 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info12 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %28, i32 0, i32 58
  %cfile13 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info12, i32 0, i32 1
  %29 = load i8*, i8** %cfile13, align 8, !tbaa !109
  %30 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info14 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %30, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info14, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call15 = call i32 %27(i8* %29, i8* %arraydecay, i32 1) #6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %if.end.8
  %31 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info17 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %31, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info17, i32 0, i32 3
  %32 = load i8*, i8** %bfile, align 8, !tbaa !110
  %cmp18 = icmp ne i8* %32, null
  br i1 %cmp18, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %if.end.16
  %33 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info20 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %33, i32 0, i32 58
  %io_procs21 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info20, i32 0, i32 4
  %34 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs21, align 8, !tbaa !92
  %fclose22 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %34, i32 0, i32 1
  %35 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose22, align 8, !tbaa !28
  %36 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info23 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %36, i32 0, i32 58
  %bfile24 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info23, i32 0, i32 3
  %37 = load i8*, i8** %bfile24, align 8, !tbaa !110
  %38 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info25 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %38, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info25, i32 0, i32 2
  %arraydecay26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %call27 = call i32 %35(i8* %37, i8* %arraydecay26, i32 1) #6
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.19, %if.end.16
  %39 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info29 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %39, i32 0, i32 58
  %bfile30 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info29, i32 0, i32 3
  store i8* null, i8** %bfile30, align 8, !tbaa !110
  %40 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info31 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %40, i32 0, i32 58
  %cfile32 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info31, i32 0, i32 1
  store i8* null, i8** %cfile32, align 8, !tbaa !109
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 65
  store %struct.gx_saved_pages_list_s* null, %struct.gx_saved_pages_list_s** %saved_pages_list, align 8, !tbaa !100
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %bg_print_requested = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 62
  %43 = load i32, i32* %bg_print_requested, align 4, !tbaa !111
  store i32 %43, i32* %save_bg_print, align 4, !tbaa !22
  %44 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %44, i32 0, i32 49
  %45 = load i32, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !112
  store i32 %45, i32* %save_bandfile_open_close, align 4, !tbaa !22
  %46 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles33 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %46, i32 0, i32 49
  store i32 1, i32* %do_not_open_or_close_bandfiles33, align 4, !tbaa !112
  %47 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %47, i32 0, i32 0
  %48 = load i32, i32* %PageCount, align 4, !tbaa !98
  %conv = sext i32 %48 to i64
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount34 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 26
  store i64 %conv, i64* %PageCount34, align 8, !tbaa !97
  store i32 1, i32* %copy, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc.219, %if.end.28
  %50 = load i32, i32* %copy, align 4, !tbaa !22
  %51 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %collated_copies = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %51, i32 0, i32 2
  %52 = load i32, i32* %collated_copies, align 4, !tbaa !99
  %cmp35 = icmp sle i32 %50, %52
  br i1 %cmp35, label %for.body, label %for.end.220

for.body:                                         ; preds = %for.cond
  %53 = bitcast i32* %page_skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 0, i32* %page_skip, align 4, !tbaa !22
  %54 = bitcast i32* %do_blank_page_pad to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = bitcast i32* %page to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load i8*, i8** %param.addr, align 8, !tbaa !1
  store i8* %56, i8** %param_scan, align 8, !tbaa !1
  %57 = load i32, i32* %param_size.addr, align 4, !tbaa !22
  store i32 %57, i32* %param_left, align 4, !tbaa !22
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.213, %for.body
  %58 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %59 = load i32, i32* %param_left, align 4, !tbaa !22
  %call37 = call i8* @param_parse_token(i8* %58, i32 %59, i32* %token_size) #6
  store i8* %call37, i8** %token, align 8, !tbaa !1
  %cmp38 = icmp ne i8* %call37, null
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = bitcast i32* %key to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  store i32 0, i32* %page, align 4, !tbaa !22
  store i32 0, i32* %do_blank_page_pad, align 4, !tbaa !22
  %61 = load i8*, i8** %token, align 8, !tbaa !1
  %62 = load i32, i32* %token_size, align 4, !tbaa !22
  %call40 = call i32 @param_find_key(i8* %61, i32 %62) #6
  store i32 %call40, i32* %key, align 4, !tbaa !53
  %63 = load i32, i32* %key, align 4, !tbaa !53
  switch i32 %63, label %sw.epilog [
    i32 12, label %sw.bb
    i32 13, label %sw.bb.50
    i32 11, label %sw.bb.51
    i32 5, label %sw.bb.77
    i32 6, label %sw.bb.105
    i32 7, label %sw.bb.107
    i32 8, label %sw.bb.109
    i32 9, label %sw.bb.113
    i32 10, label %sw.bb.115
    i32 0, label %sw.bb.117
    i32 1, label %sw.bb.117
    i32 2, label %sw.bb.117
    i32 3, label %sw.bb.117
    i32 4, label %sw.bb.117
  ]

sw.bb:                                            ; preds = %while.body
  %64 = load i32, i32* %start_page, align 4, !tbaa !22
  %cmp41 = icmp eq i32 %64, 0
  br i1 %cmp41, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %sw.bb
  %65 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory44, align 8, !tbaa !63
  %call45 = call i8* @gs_program_name() #6
  %call46 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %66, i8* %call45, i64 %call46) #6
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory47, align 8, !tbaa !63
  %call48 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0)) #6
  store i32 -20, i32* %code, align 4, !tbaa !22
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.211

if.end.49:                                        ; preds = %sw.bb
  store i32 -1, i32* %end_page, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.50:                                         ; preds = %while.body
  %69 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %69, i32 0, i32 1
  %70 = load i32, i32* %count, align 4, !tbaa !101
  store i32 %70, i32* %page, align 4, !tbaa !22
  br label %sw.bb.51

sw.bb.51:                                         ; preds = %while.body, %sw.bb.50
  %71 = load i32, i32* %page, align 4, !tbaa !22
  %cmp52 = icmp eq i32 %71, 0
  br i1 %cmp52, label %if.then.54, label %if.end.65

if.then.54:                                       ; preds = %sw.bb.51
  %72 = load i8*, i8** %token, align 8, !tbaa !1
  %call55 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32* %page) #7
  %cmp56 = icmp ne i32 %call55, 1
  br i1 %cmp56, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.then.54
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory59 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory59, align 8, !tbaa !63
  %call60 = call i8* @gs_program_name() #6
  %call61 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %74, i8* %call60, i64 %call61) #6
  %75 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %75, i32 0, i32 3
  %76 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !63
  %77 = load i8*, i8** %token, align 8, !tbaa !1
  %call63 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %76, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0), i8* %77) #6
  store i32 -20, i32* %code, align 4, !tbaa !22
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.211

if.end.64:                                        ; preds = %if.then.54
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %sw.bb.51
  %78 = load i32, i32* %start_page, align 4, !tbaa !22
  %cmp66 = icmp eq i32 %78, 0
  br i1 %cmp66, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %if.end.65
  %79 = load i32, i32* %page, align 4, !tbaa !22
  store i32 %79, i32* %start_page, align 4, !tbaa !22
  br label %if.end.76

if.else:                                          ; preds = %if.end.65
  %80 = load i32, i32* %end_page, align 4, !tbaa !22
  %cmp69 = icmp slt i32 %80, 0
  br i1 %cmp69, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.else
  %81 = load i32, i32* %page, align 4, !tbaa !22
  store i32 %81, i32* %end_page, align 4, !tbaa !22
  %82 = load i32, i32* %end_page, align 4, !tbaa !22
  %83 = load i32, i32* %start_page, align 4, !tbaa !22
  %cmp72 = icmp sge i32 %82, %83
  %cond = select i1 %cmp72, i32 1, i32 -1
  store i32 %cond, i32* %page_skip, align 4, !tbaa !22
  br label %if.end.75

if.else.74:                                       ; preds = %if.else
  %84 = load i32, i32* %start_page, align 4, !tbaa !22
  store i32 %84, i32* %end_page, align 4, !tbaa !22
  store i32 1, i32* %page_skip, align 4, !tbaa !22
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.71
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.68
  br label %sw.epilog

sw.bb.77:                                         ; preds = %while.body
  %85 = load i8*, i8** %token, align 8, !tbaa !1
  %86 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %85 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %86 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %87 = load i32, i32* %token_size, align 4, !tbaa !22
  %conv78 = sext i32 %87 to i64
  %add = add nsw i64 %sub.ptr.sub, %conv78
  %88 = load i32, i32* %param_left, align 4, !tbaa !22
  %conv79 = sext i32 %88 to i64
  %sub = sub nsw i64 %conv79, %add
  %conv80 = trunc i64 %sub to i32
  store i32 %conv80, i32* %param_left, align 4, !tbaa !22
  %89 = load i8*, i8** %token, align 8, !tbaa !1
  %90 = load i32, i32* %token_size, align 4, !tbaa !22
  %idx.ext = sext i32 %90 to i64
  %add.ptr = getelementptr inbounds i8, i8* %89, i64 %idx.ext
  store i8* %add.ptr, i8** %param_scan, align 8, !tbaa !1
  %91 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %92 = load i32, i32* %param_left, align 4, !tbaa !22
  %call81 = call i8* @param_parse_token(i8* %91, i32 %92, i32* %token_size) #6
  store i8* %call81, i8** %token, align 8, !tbaa !1
  %cmp82 = icmp eq i8* %call81, null
  br i1 %cmp82, label %if.then.87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.77
  %93 = load i8*, i8** %token, align 8, !tbaa !1
  %94 = load i32, i32* %token_size, align 4, !tbaa !22
  %call84 = call i32 @param_find_key(i8* %93, i32 %94) #6
  %cmp85 = icmp ne i32 %call84, 11
  br i1 %cmp85, label %if.then.87, label %if.end.93

if.then.87:                                       ; preds = %lor.lhs.false, %sw.bb.77
  %95 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory88 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %95, i32 0, i32 3
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory88, align 8, !tbaa !63
  %call89 = call i8* @gs_program_name() #6
  %call90 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %96, i8* %call89, i64 %call90) #6
  %97 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory91 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory91, align 8, !tbaa !63
  %call92 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %98, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0)) #6
  store i32 -20, i32* %code, align 4, !tbaa !22
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.211

if.end.93:                                        ; preds = %lor.lhs.false
  %99 = load i8*, i8** %token, align 8, !tbaa !1
  %call94 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32* %tmp_num) #7
  %cmp95 = icmp ne i32 %call94, 1
  br i1 %cmp95, label %if.then.97, label %if.end.103

if.then.97:                                       ; preds = %if.end.93
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory98 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %100, i32 0, i32 3
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory98, align 8, !tbaa !63
  %call99 = call i8* @gs_program_name() #6
  %call100 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %101, i8* %call99, i64 %call100) #6
  %102 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory101 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %102, i32 0, i32 3
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory101, align 8, !tbaa !63
  %104 = load i8*, i8** %token, align 8, !tbaa !1
  %call102 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %103, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0), i8* %104) #6
  store i32 -20, i32* %code, align 4, !tbaa !22
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.211

if.end.103:                                       ; preds = %if.end.93
  %105 = load i32, i32* %tmp_num, align 4, !tbaa !22
  %106 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %collated_copies104 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %106, i32 0, i32 2
  store i32 %105, i32* %collated_copies104, align 4, !tbaa !99
  br label %sw.epilog

sw.bb.105:                                        ; preds = %while.body
  store i32 1, i32* %start_page, align 4, !tbaa !22
  %107 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %count106 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %107, i32 0, i32 1
  %108 = load i32, i32* %count106, align 4, !tbaa !101
  store i32 %108, i32* %end_page, align 4, !tbaa !22
  store i32 1, i32* %page_skip, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.107:                                        ; preds = %while.body
  %109 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %count108 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %109, i32 0, i32 1
  %110 = load i32, i32* %count108, align 4, !tbaa !101
  store i32 %110, i32* %start_page, align 4, !tbaa !22
  store i32 1, i32* %end_page, align 4, !tbaa !22
  store i32 -1, i32* %page_skip, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.109:                                        ; preds = %while.body
  %111 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %count110 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %111, i32 0, i32 1
  %112 = load i32, i32* %count110, align 4, !tbaa !101
  %and = and i32 %112, 1
  %cmp111 = icmp ne i32 %and, 0
  %conv112 = zext i1 %cmp111 to i32
  store i32 %conv112, i32* %do_blank_page_pad, align 4, !tbaa !22
  br label %sw.bb.113

sw.bb.113:                                        ; preds = %while.body, %sw.bb.109
  store i32 2, i32* %start_page, align 4, !tbaa !22
  %113 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %count114 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %113, i32 0, i32 1
  %114 = load i32, i32* %count114, align 4, !tbaa !101
  store i32 %114, i32* %end_page, align 4, !tbaa !22
  store i32 2, i32* %page_skip, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.115:                                        ; preds = %while.body
  store i32 1, i32* %start_page, align 4, !tbaa !22
  %115 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %count116 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %115, i32 0, i32 1
  %116 = load i32, i32* %count116, align 4, !tbaa !101
  store i32 %116, i32* %end_page, align 4, !tbaa !22
  store i32 2, i32* %page_skip, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.117:                                        ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  store i32 0, i32* %token_size, align 4, !tbaa !22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.117, %while.body, %sw.bb.115, %sw.bb.113, %sw.bb.107, %sw.bb.105, %if.end.103, %if.end.76, %if.end.49
  %117 = load i32, i32* %end_page, align 4, !tbaa !22
  %cmp118 = icmp sgt i32 %117, 0
  br i1 %cmp118, label %if.then.120, label %if.end.196

if.then.120:                                      ; preds = %sw.epilog
  %118 = bitcast i32* %curr_page to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = load i32, i32* %start_page, align 4, !tbaa !22
  store i32 %119, i32* %curr_page, align 4, !tbaa !22
  %120 = bitcast %struct.gx_saved_pages_list_element_s** %curr_elem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  store %struct.gx_saved_pages_list_element_s* null, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %121 = load i32, i32* %start_page, align 4, !tbaa !22
  %122 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %count121 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %122, i32 0, i32 1
  %123 = load i32, i32* %count121, align 4, !tbaa !101
  %cmp122 = icmp sle i32 %121, %123
  br i1 %cmp122, label %if.then.124, label %if.end.139

if.then.124:                                      ; preds = %if.then.120
  %124 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %124, i32 0, i32 4
  %125 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %head, align 8, !tbaa !108
  store %struct.gx_saved_pages_list_element_s* %125, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc, %if.then.124
  %126 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %sequence_number = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %126, i32 0, i32 0
  %127 = load i32, i32* %sequence_number, align 4, !tbaa !102
  %128 = load i32, i32* %start_page, align 4, !tbaa !22
  %cmp126 = icmp ne i32 %127, %128
  br i1 %cmp126, label %for.body.128, label %for.end

for.body.128:                                     ; preds = %for.cond.125
  %129 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %129, i32 0, i32 2
  %130 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %next, align 8, !tbaa !105
  %cmp129 = icmp eq %struct.gx_saved_pages_list_element_s* %130, null
  br i1 %cmp129, label %if.then.131, label %if.end.137

if.then.131:                                      ; preds = %for.body.128
  %131 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory132 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %131, i32 0, i32 3
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory132, align 8, !tbaa !63
  %call133 = call i8* @gs_program_name() #6
  %call134 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %132, i8* %call133, i64 %call134) #6
  %133 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory135 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory135, align 8, !tbaa !63
  %135 = load i32, i32* %start_page, align 4, !tbaa !22
  %call136 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %134, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0), i32 %135) #6
  store i32 -15, i32* %code, align 4, !tbaa !22
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.137:                                       ; preds = %for.body.128
  br label %for.inc

for.inc:                                          ; preds = %if.end.137
  %136 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %next138 = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %136, i32 0, i32 2
  %137 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %next138, align 8, !tbaa !105
  store %struct.gx_saved_pages_list_element_s* %137, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  br label %for.cond.125

for.end:                                          ; preds = %for.cond.125
  br label %if.end.139

if.end.139:                                       ; preds = %for.end, %if.then.120
  br label %for.cond.140

for.cond.140:                                     ; preds = %if.end.183, %if.end.139
  %138 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %cmp141 = icmp ne %struct.gx_saved_pages_list_element_s* %138, null
  br i1 %cmp141, label %for.body.143, label %for.end.184

for.body.143:                                     ; preds = %for.cond.140
  %139 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %140 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %page144 = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %140, i32 0, i32 3
  %141 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page144, align 8, !tbaa !104
  %call145 = call i32 @gx_output_saved_page(%struct.gx_device_printer_s* %139, %struct.gx_saved_page_s* %141) #6
  store i32 %call145, i32* %code, align 4, !tbaa !22
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %for.body.143
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.149:                                       ; preds = %for.body.143
  %142 = load i32, i32* %page_skip, align 4, !tbaa !22
  %143 = load i32, i32* %curr_page, align 4, !tbaa !22
  %add150 = add nsw i32 %143, %142
  store i32 %add150, i32* %curr_page, align 4, !tbaa !22
  %144 = load i32, i32* %page_skip, align 4, !tbaa !22
  %cmp151 = icmp sge i32 %144, 0
  br i1 %cmp151, label %if.then.153, label %if.else.164

if.then.153:                                      ; preds = %if.end.149
  %145 = load i32, i32* %curr_page, align 4, !tbaa !22
  %146 = load i32, i32* %end_page, align 4, !tbaa !22
  %cmp154 = icmp sgt i32 %145, %146
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.then.153
  br label %for.end.184

if.end.157:                                       ; preds = %if.then.153
  %147 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %next158 = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %147, i32 0, i32 2
  %148 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %next158, align 8, !tbaa !105
  store %struct.gx_saved_pages_list_element_s* %148, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %149 = load i32, i32* %page_skip, align 4, !tbaa !22
  %cmp159 = icmp sgt i32 %149, 1
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.end.157
  %150 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %next162 = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %150, i32 0, i32 2
  %151 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %next162, align 8, !tbaa !105
  store %struct.gx_saved_pages_list_element_s* %151, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %if.end.157
  br label %if.end.174

if.else.164:                                      ; preds = %if.end.149
  %152 = load i32, i32* %curr_page, align 4, !tbaa !22
  %153 = load i32, i32* %end_page, align 4, !tbaa !22
  %cmp165 = icmp slt i32 %152, %153
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.else.164
  br label %for.end.184

if.end.168:                                       ; preds = %if.else.164
  %154 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %154, i32 0, i32 1
  %155 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %prev, align 8, !tbaa !107
  store %struct.gx_saved_pages_list_element_s* %155, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %156 = load i32, i32* %page_skip, align 4, !tbaa !22
  %cmp169 = icmp slt i32 %156, -1
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %if.end.168
  %157 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %prev172 = getelementptr inbounds %struct.gx_saved_pages_list_element_s, %struct.gx_saved_pages_list_element_s* %157, i32 0, i32 1
  %158 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %prev172, align 8, !tbaa !107
  store %struct.gx_saved_pages_list_element_s* %158, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %if.end.168
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.163
  %159 = load %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s** %curr_elem, align 8, !tbaa !1
  %cmp175 = icmp eq %struct.gx_saved_pages_list_element_s* %159, null
  br i1 %cmp175, label %if.then.177, label %if.end.183

if.then.177:                                      ; preds = %if.end.174
  %160 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory178 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %160, i32 0, i32 3
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory178, align 8, !tbaa !63
  %call179 = call i8* @gs_program_name() #6
  %call180 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %161, i8* %call179, i64 %call180) #6
  %162 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory181 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %162, i32 0, i32 3
  %163 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory181, align 8, !tbaa !63
  %164 = load i32, i32* %curr_page, align 4, !tbaa !22
  %call182 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %163, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0), i32 %164) #6
  store i32 -15, i32* %code, align 4, !tbaa !22
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.183:                                       ; preds = %if.end.174
  br label %for.cond.140

for.end.184:                                      ; preds = %if.then.167, %if.then.156, %for.cond.140
  %165 = load i32, i32* %do_blank_page_pad, align 4, !tbaa !22
  %tobool = icmp ne i32 %165, 0
  br i1 %tobool, label %if.then.185, label %if.end.191

if.then.185:                                      ; preds = %for.end.184
  %166 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call186 = call i32 @gx_output_saved_page(%struct.gx_device_printer_s* %166, %struct.gx_saved_page_s* %saved_page) #6
  store i32 %call186, i32* %code, align 4, !tbaa !22
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.then.185
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.190:                                       ; preds = %if.then.185
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %for.end.184
  %167 = load i32, i32* %start_page, align 4, !tbaa !22
  %168 = load i32, i32* %end_page, align 4, !tbaa !22
  %cmp192 = icmp eq i32 %167, %168
  br i1 %cmp192, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.191
  %169 = load i32, i32* %page, align 4, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %if.end.191
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond194 = phi i32 [ %169, %cond.true ], [ 0, %cond.false ]
  store i32 %cond194, i32* %start_page, align 4, !tbaa !22
  store i32 0, i32* %end_page, align 4, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.189, %if.then.177, %if.then.148, %if.then.131, %cond.end
  %170 = bitcast %struct.gx_saved_pages_list_element_s** %curr_elem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i32* %curr_page to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.211 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.196

if.end.196:                                       ; preds = %cleanup.cont, %sw.epilog
  %172 = load i32, i32* %token_size, align 4, !tbaa !22
  %cmp197 = icmp eq i32 %172, 0
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.end.196
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.211

if.end.200:                                       ; preds = %if.end.196
  %173 = load i8*, i8** %token, align 8, !tbaa !1
  %174 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %sub.ptr.lhs.cast201 = ptrtoint i8* %173 to i64
  %sub.ptr.rhs.cast202 = ptrtoint i8* %174 to i64
  %sub.ptr.sub203 = sub i64 %sub.ptr.lhs.cast201, %sub.ptr.rhs.cast202
  %175 = load i32, i32* %token_size, align 4, !tbaa !22
  %conv204 = sext i32 %175 to i64
  %add205 = add nsw i64 %sub.ptr.sub203, %conv204
  %176 = load i32, i32* %param_left, align 4, !tbaa !22
  %conv206 = sext i32 %176 to i64
  %sub207 = sub nsw i64 %conv206, %add205
  %conv208 = trunc i64 %sub207 to i32
  store i32 %conv208, i32* %param_left, align 4, !tbaa !22
  %177 = load i8*, i8** %token, align 8, !tbaa !1
  %178 = load i32, i32* %token_size, align 4, !tbaa !22
  %idx.ext209 = sext i32 %178 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* %177, i64 %idx.ext209
  store i8* %add.ptr210, i8** %param_scan, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.211

cleanup.211:                                      ; preds = %if.then.97, %if.then.87, %if.then.58, %if.then.43, %if.end.200, %if.then.199, %cleanup
  %179 = bitcast i32* %key to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %cleanup.dest.212 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.212, label %cleanup.214 [
    i32 0, label %cleanup.cont.213
    i32 7, label %while.end
  ]

cleanup.cont.213:                                 ; preds = %cleanup.211
  br label %while.cond

while.end:                                        ; preds = %cleanup.211, %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.214

cleanup.214:                                      ; preds = %while.end, %cleanup.211
  %180 = bitcast i32* %page to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %do_blank_page_pad to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %page_skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %cleanup.dest.217 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.217, label %cleanup.252 [
    i32 0, label %cleanup.cont.218
    i32 2, label %out
  ]

cleanup.cont.218:                                 ; preds = %cleanup.214
  br label %for.inc.219

for.inc.219:                                      ; preds = %cleanup.cont.218
  %183 = load i32, i32* %copy, align 4, !tbaa !22
  %inc = add nsw i32 %183, 1
  store i32 %inc, i32* %copy, align 4, !tbaa !22
  br label %for.cond

for.end.220:                                      ; preds = %for.cond
  br label %out

out:                                              ; preds = %for.end.220, %cleanup.214, %if.then.7, %if.then
  %184 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount221 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %184, i32 0, i32 26
  %185 = load i64, i64* %PageCount221, align 8, !tbaa !97
  %186 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %PageCount222 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %186, i32 0, i32 0
  %187 = load i32, i32* %PageCount222, align 4, !tbaa !98
  %conv223 = sext i32 %187 to i64
  %sub224 = sub nsw i64 %185, %conv223
  %conv225 = trunc i64 %sub224 to i32
  %188 = load i32*, i32** %printed_count.addr, align 8, !tbaa !1
  store i32 %conv225, i32* %188, align 4, !tbaa !22
  %189 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount226 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %189, i32 0, i32 26
  %190 = load i64, i64* %PageCount226, align 8, !tbaa !97
  %conv227 = trunc i64 %190 to i32
  %191 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %PageCount228 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %191, i32 0, i32 0
  store i32 %conv227, i32* %PageCount228, align 4, !tbaa !98
  %192 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %list.addr, align 8, !tbaa !1
  %193 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list229 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %193, i32 0, i32 65
  store %struct.gx_saved_pages_list_s* %192, %struct.gx_saved_pages_list_s** %saved_pages_list229, align 8, !tbaa !100
  %194 = load i32, i32* %save_bg_print, align 4, !tbaa !22
  %195 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %bg_print_requested230 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %195, i32 0, i32 62
  store i32 %194, i32* %bg_print_requested230, align 4, !tbaa !111
  %196 = load i32, i32* %save_bandfile_open_close, align 4, !tbaa !22
  %197 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles231 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %197, i32 0, i32 49
  store i32 %196, i32* %do_not_open_or_close_bandfiles231, align 4, !tbaa !112
  %198 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call232 = call i32 @gx_saved_page_load(%struct.gx_device_printer_s* %198, %struct.gx_saved_page_s* %saved_page) #6
  %199 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %200 = bitcast %struct.gx_device_printer_s* %199 to %struct.gx_device_s*
  %call233 = call i32 @clist_finish_page(%struct.gx_device_s* %200, i32 1) #6
  store i32 %call233, i32* %endcode, align 4, !tbaa !22
  %201 = load i32, i32* %code, align 4, !tbaa !22
  %cmp234 = icmp slt i32 %201, 0
  br i1 %cmp234, label %cond.true.236, label %cond.false.238

cond.true.236:                                    ; preds = %out
  %202 = load i32, i32* %code, align 4, !tbaa !22
  %conv237 = sext i32 %202 to i64
  br label %cond.end.249

cond.false.238:                                   ; preds = %out
  %203 = load i32, i32* %endcode, align 4, !tbaa !22
  %cmp239 = icmp slt i32 %203, 0
  br i1 %cmp239, label %cond.true.241, label %cond.false.243

cond.true.241:                                    ; preds = %cond.false.238
  %204 = load i32, i32* %endcode, align 4, !tbaa !22
  %conv242 = sext i32 %204 to i64
  br label %cond.end.247

cond.false.243:                                   ; preds = %cond.false.238
  %205 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %206 = load i8*, i8** %param.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast244 = ptrtoint i8* %205 to i64
  %sub.ptr.rhs.cast245 = ptrtoint i8* %206 to i64
  %sub.ptr.sub246 = sub i64 %sub.ptr.lhs.cast244, %sub.ptr.rhs.cast245
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.243, %cond.true.241
  %cond248 = phi i64 [ %conv242, %cond.true.241 ], [ %sub.ptr.sub246, %cond.false.243 ]
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.end.247, %cond.true.236
  %cond250 = phi i64 [ %conv237, %cond.true.236 ], [ %cond248, %cond.end.247 ]
  %conv251 = trunc i64 %cond250 to i32
  store i32 %conv251, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.252

cleanup.252:                                      ; preds = %cond.end.249, %cleanup.214
  %207 = bitcast %struct.gx_saved_page_s* %saved_page to i8*
  call void @llvm.lifetime.end(i64 9008, i8* %207) #1
  %208 = bitcast i32* %save_bandfile_open_close to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %save_bg_print to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i32* %token_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i8** %token to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast i32* %endcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %tmp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %end_page to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %start_page to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i32* %param_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i8** %param_scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = load i32, i32* %retval
  ret i32 %221
}

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s*) #2

; Function Attrs: nounwind uwtable
define internal i8* @param_parse_token(i8* %param, i32 %param_left, i32* %token_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %param.addr = alloca i8*, align 8
  %param_left.addr = alloca i32, align 4
  %token_size.addr = alloca i32*, align 8
  %token_len = alloca i32, align 4
  %token = alloca i8*, align 8
  %single_char_token = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %param, i8** %param.addr, align 8, !tbaa !1
  store i32 %param_left, i32* %param_left.addr, align 4, !tbaa !22
  store i32* %token_size, i32** %token_size.addr, align 8, !tbaa !1
  %0 = bitcast i32* %token_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %token_len, align 4, !tbaa !22
  %1 = bitcast i8** %token to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %param.addr, align 8, !tbaa !1
  store i8* %2, i8** %token, align 8, !tbaa !1
  %3 = bitcast i32* %single_char_token to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %single_char_token, align 4, !tbaa !22
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %4 = load i32, i32* %param_left.addr, align 4, !tbaa !22
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %token, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !53
  %conv = zext i8 %6 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #9
  %7 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !54
  %conv1 = zext i16 %8 to i32
  %and = and i32 %conv1, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %single_char_token, align 4, !tbaa !22
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load i8*, i8** %token, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !53
  %conv2 = zext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %while.end

if.end.6:                                         ; preds = %if.end
  %11 = load i8*, i8** %token, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !53
  %conv7 = zext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv7, 42
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  br label %while.end

if.end.11:                                        ; preds = %if.end.6
  %13 = load i8*, i8** %token, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %token, align 8, !tbaa !1
  %14 = load i32, i32* %param_left.addr, align 4, !tbaa !22
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %param_left.addr, align 4, !tbaa !22
  br label %while.cond

while.end:                                        ; preds = %if.then.10, %if.then.5, %if.then, %while.cond
  %15 = load i32, i32* %param_left.addr, align 4, !tbaa !22
  %cmp12 = icmp eq i32 %15, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.end
  %16 = load i32*, i32** %token_size.addr, align 8, !tbaa !1
  store i32 0, i32* %16, align 4, !tbaa !22
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %while.end
  %17 = load i32, i32* %single_char_token, align 4, !tbaa !22
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %18 = load i32, i32* %param_left.addr, align 4, !tbaa !22
  %dec18 = add nsw i32 %18, -1
  store i32 %dec18, i32* %param_left.addr, align 4, !tbaa !22
  %19 = load i32*, i32** %token_size.addr, align 8, !tbaa !1
  store i32 1, i32* %19, align 4, !tbaa !22
  %20 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %20, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.15
  br label %while.cond.20

while.cond.20:                                    ; preds = %if.end.34, %if.end.19
  %21 = load i32, i32* %param_left.addr, align 4, !tbaa !22
  %cmp21 = icmp sgt i32 %21, 0
  br i1 %cmp21, label %while.body.23, label %while.end.36

while.body.23:                                    ; preds = %while.cond.20
  %22 = load i32, i32* %token_len, align 4, !tbaa !22
  %idxprom24 = sext i32 %22 to i64
  %23 = load i8*, i8** %token, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 %idxprom24
  %24 = load i8, i8* %arrayidx25, align 1, !tbaa !53
  %conv26 = zext i8 %24 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %call28 = call i16** @__ctype_b_loc() #9
  %25 = load i16*, i16** %call28, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i16, i16* %25, i64 %idxprom27
  %26 = load i16, i16* %arrayidx29, align 2, !tbaa !54
  %conv30 = zext i16 %26 to i32
  %and31 = and i32 %conv30, 8
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %while.body.23
  br label %while.end.36

if.end.34:                                        ; preds = %while.body.23
  %27 = load i32, i32* %token_len, align 4, !tbaa !22
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %token_len, align 4, !tbaa !22
  %28 = load i32, i32* %param_left.addr, align 4, !tbaa !22
  %dec35 = add nsw i32 %28, -1
  store i32 %dec35, i32* %param_left.addr, align 4, !tbaa !22
  br label %while.cond.20

while.end.36:                                     ; preds = %if.then.33, %while.cond.20
  %29 = load i32, i32* %token_len, align 4, !tbaa !22
  %30 = load i32*, i32** %token_size.addr, align 8, !tbaa !1
  store i32 %29, i32* %30, align 4, !tbaa !22
  %31 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %31, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.36, %if.then.17, %if.then.14
  %32 = bitcast i32* %single_char_token to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i8** %token to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %token_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i8*, i8** %retval
  ret i8* %35
}

; Function Attrs: nounwind uwtable
define internal i32 @param_find_key(i8* %token, i32 %token_size) #0 {
entry:
  %retval = alloca i32, align 4
  %token.addr = alloca i8*, align 8
  %token_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %token, i8** %token.addr, align 8, !tbaa !1
  store i32 %token_size, i32* %token_size.addr, align 4, !tbaa !22
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %found, align 4, !tbaa !53
  %2 = load i8*, i8** %token.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !53
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %token.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !53
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %token.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !53
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 45
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %8 = load i8*, i8** %token.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !53
  %conv10 = zext i8 %9 to i32
  %cmp11 = icmp eq i32 %conv10, 42
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %10 = load i32, i32* %i, align 4, !tbaa !22
  %conv15 = sext i32 %10 to i64
  %cmp16 = icmp ult i64 %conv15, 80
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %token.addr, align 8, !tbaa !1
  %12 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* @param_find_key.saved_pages_keys, i32 0, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %14 = load i32, i32* %token_size.addr, align 4, !tbaa !22
  %conv18 = sext i32 %14 to i64
  %call = call i32 @strncasecmp(i8* %11, i8* %13, i64 %conv18) #8
  %cmp19 = icmp eq i32 %call, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !22
  %add = add nsw i32 %15, 1
  store i32 %add, i32* %found, align 4, !tbaa !53
  br label %for.end

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %16 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %for.cond
  %17 = load i32, i32* %found, align 4, !tbaa !53
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.13, %if.then.8, %if.then
  %18 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @gx_output_saved_page(%struct.gx_device_printer_s* %pdev, %struct.gx_saved_page_s* %page) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %page.addr = alloca %struct.gx_saved_page_s*, align 8
  %code = alloca i32, align 4
  %save_banding_type = alloca i32, align 4
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_saved_page_s* %page, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %save_banding_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %space_params = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 38
  %banding_type = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params, i32 0, i32 4
  %3 = load i32, i32* %banding_type, align 4, !tbaa !113
  store i32 %3, i32* %save_banding_type, align 4, !tbaa !53
  %4 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %6, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %space_params1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 38
  %banding_type2 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params1, i32 0, i32 4
  store i32 1, i32* %banding_type2, align 4, !tbaa !113
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %call = call i32 @gx_saved_page_load(%struct.gx_device_printer_s* %8, %struct.gx_saved_page_s* %9) #6
  store i32 %call, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %10 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %10, i32 0, i32 49
  store i32 1, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !112
  %11 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %call3 = call i32 @clist_read_color_usage_array(%struct.gx_device_clist_reader_s* %11) #6
  store i32 %call3, i32* %code, align 4, !tbaa !22
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %out

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %call7 = call i32 @clist_read_icctable(%struct.gx_device_clist_reader_s* %12) #6
  store i32 %call7, i32* %code, align 4, !tbaa !22
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %out

if.end.10:                                        ; preds = %if.end.6
  %13 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !114
  %call11 = call %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s* %14) #6
  %15 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %15, i32 0, i32 62
  store %struct.gsicc_link_cache_s* %call11, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !87
  %cmp12 = icmp eq %struct.gsicc_link_cache_s* %call11, null
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  %16 = load i32, i32* %code, align 4, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -25, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !22
  %17 = load i32, i32* %code, align 4, !tbaa !22
  %cmp13 = icmp slt i32 %17, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %cond.end
  br label %out

if.end.15:                                        ; preds = %cond.end
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %bg_print_requested = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 62
  store i32 0, i32* %bg_print_requested, align 4, !tbaa !111
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 42
  %output_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 3
  %20 = load i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32)** %output_page, align 8, !tbaa !88
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_printer_s* %21 to %struct.gx_device_s*
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %IgnoreNumCopies = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 30
  %24 = load i32, i32* %IgnoreNumCopies, align 4, !tbaa !89
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %cond.true.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %NumCopies_set = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 29
  %26 = load i32, i32* %NumCopies_set, align 4, !tbaa !90
  %cmp16 = icmp sle i32 %26, 0
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %lor.lhs.false, %if.end.15
  br label %cond.end.19

cond.false.18:                                    ; preds = %lor.lhs.false
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %NumCopies = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 28
  %28 = load i32, i32* %NumCopies, align 4, !tbaa !91
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi i32 [ 1, %cond.true.17 ], [ %28, %cond.false.18 ]
  %call21 = call i32 %20(%struct.gx_device_s* %22, i32 %cond20, i32 0) #6
  store i32 %call21, i32* %code, align 4, !tbaa !22
  %29 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %29, i32 0, i32 61
  %30 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !86
  %31 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !114
  %call23 = call i32 @clist_free_icc_table(%struct.clist_icctable_s* %30, %struct.gs_memory_s* %32) #6
  %33 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_table24 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %33, i32 0, i32 61
  store %struct.clist_icctable_s* null, %struct.clist_icctable_s** %icc_table24, align 8, !tbaa !86
  br label %do.body

do.body:                                          ; preds = %cond.end.19
  %34 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl25 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %34, i32 0, i32 62
  %35 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl25, align 8, !tbaa !87
  %tobool26 = icmp ne %struct.gsicc_link_cache_s* %35, null
  br i1 %tobool26, label %if.then.27, label %if.end.55

if.then.27:                                       ; preds = %do.body
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.body.28
  br label %do.cond

do.cond:                                          ; preds = %do.body.29
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl30 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %36, i32 0, i32 62
  %37 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl30, align 8, !tbaa !87
  %rc = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %37, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %38 = load i64, i64* %ref_count, align 8, !tbaa !115
  %add = add nsw i64 %38, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !115
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.end
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  %39 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl33 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %39, i32 0, i32 62
  %40 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl33, align 8, !tbaa !87
  %rc34 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %40, i32 0, i32 2
  %ref_count35 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc34, i32 0, i32 0
  %41 = load i64, i64* %ref_count35, align 8, !tbaa !115
  %tobool36 = icmp ne i64 %41, 0
  br i1 %tobool36, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %do.end.32
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %42 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl42 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %42, i32 0, i32 62
  %43 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl42, align 8, !tbaa !87
  %rc43 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %43, i32 0, i32 2
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 2
  %44 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !117
  %45 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl44 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %45, i32 0, i32 62
  %46 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl44, align 8, !tbaa !87
  %rc45 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %46, i32 0, i32 2
  %memory46 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc45, i32 0, i32 1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !118
  %48 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl47 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %48, i32 0, i32 62
  %49 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl47, align 8, !tbaa !87
  %50 = bitcast %struct.gsicc_link_cache_s* %49 to i8*
  call void %44(%struct.gs_memory_s* %47, i8* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)) #6
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.end.41
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  %51 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl50 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %51, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl50, align 8, !tbaa !87
  br label %if.end.54

if.else:                                          ; preds = %do.end.32
  br label %do.body.51

do.body.51:                                       ; preds = %if.else
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.body.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.end.49
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %do.body
  br label %do.cond.56

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  %52 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl58 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %52, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl58, align 8, !tbaa !87
  %53 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %53, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 4
  %54 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !92
  %fclose = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %54, i32 0, i32 1
  %55 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose, align 8, !tbaa !28
  %56 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info59 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %56, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info59, i32 0, i32 1
  %57 = load i8*, i8** %cfile, align 8, !tbaa !109
  %58 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info60 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %58, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info60, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call61 = call i32 %55(i8* %57, i8* %arraydecay, i32 0) #6
  store i32 %call61, i32* %code, align 4, !tbaa !22
  %59 = load i32, i32* %code, align 4, !tbaa !22
  %cmp62 = icmp sge i32 %59, 0
  br i1 %cmp62, label %if.then.63, label %if.end.73

if.then.63:                                       ; preds = %do.end.57
  %60 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info64 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %60, i32 0, i32 58
  %cfile65 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info64, i32 0, i32 1
  store i8* null, i8** %cfile65, align 8, !tbaa !109
  %61 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info66 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %61, i32 0, i32 58
  %io_procs67 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info66, i32 0, i32 4
  %62 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs67, align 8, !tbaa !92
  %fclose68 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %62, i32 0, i32 1
  %63 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose68, align 8, !tbaa !28
  %64 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info69 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %64, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info69, i32 0, i32 3
  %65 = load i8*, i8** %bfile, align 8, !tbaa !110
  %66 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info70 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %66, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info70, i32 0, i32 2
  %arraydecay71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %call72 = call i32 %63(i8* %65, i8* %arraydecay71, i32 0) #6
  store i32 %call72, i32* %code, align 4, !tbaa !22
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.63, %do.end.57
  %67 = load i32, i32* %code, align 4, !tbaa !22
  %cmp74 = icmp slt i32 %67, 0
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.73
  br label %out

if.end.76:                                        ; preds = %if.end.73
  %68 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info77 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %68, i32 0, i32 58
  %bfile78 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info77, i32 0, i32 3
  store i8* null, i8** %bfile78, align 8, !tbaa !110
  br label %out

out:                                              ; preds = %if.end.76, %if.then.75, %if.then.14, %if.then.9, %if.then.5, %if.then
  %69 = load i32, i32* %save_banding_type, align 4, !tbaa !53
  %70 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %space_params79 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %70, i32 0, i32 38
  %banding_type80 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params79, i32 0, i32 4
  store i32 %69, i32* %banding_type80, align 4, !tbaa !113
  %71 = load i32, i32* %code, align 4, !tbaa !22
  %72 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %save_banding_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_saved_page_load(%struct.gx_device_printer_s* %pdev, %struct.gx_saved_page_s* %page) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %page.addr = alloca %struct.gx_saved_page_s*, align 8
  %code = alloca i32, align 4
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  %paramlist = alloca %struct.gs_c_param_list_s, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gx_saved_page_s* %page, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %3, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %4 = bitcast %struct.gs_c_param_list_s* %paramlist to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #1
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !63
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %paramlist, %struct.gs_memory_s* %6) #6
  %7 = bitcast %struct.gs_c_param_list_s* %paramlist to %struct.gs_param_list_s*
  %8 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %paramlist1 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %8, i32 0, i32 10
  %9 = load i8*, i8** %paramlist1, align 8, !tbaa !70
  %call = call i32 @gs_param_list_unserialize(%struct.gs_param_list_s* %7, i8* %9) #6
  store i32 %call, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %paramlist) #6
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_printer_s* %10 to %struct.gx_device_s*
  %12 = bitcast %struct.gs_c_param_list_s* %paramlist to %struct.gs_param_list_s*
  %call2 = call i32 @gs_putdeviceparams(%struct.gx_device_s* %11, %struct.gs_param_list_s* %12) #6
  store i32 %call2, i32* %code, align 4, !tbaa !22
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %paramlist) #6
  %13 = load i32, i32* %code, align 4, !tbaa !22
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %out

if.end.5:                                         ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !22
  %cmp6 = icmp sgt i32 %14, 0
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.5
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_printer_s* %15 to %struct.gx_device_s*
  %call8 = call i32 @gs_opendevice(%struct.gx_device_s* %16) #6
  store i32 %call8, i32* %code, align 4, !tbaa !22
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  br label %out

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.5
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_printer_s* %17 to %union.gx_device_clist_s*
  %common = bitcast %union.gx_device_clist_s* %18 to %struct.gx_device_clist_common_s*
  %ymin = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 56
  %19 = load i32, i32* %ymin, align 4, !tbaa !119
  %cmp13 = icmp slt i32 %19, 0
  br i1 %cmp13, label %if.then.14, label %if.end.40

if.then.14:                                       ; preds = %if.end.12
  %20 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_clist_reader_s* %20 to %union.gx_device_clist_s*
  %call15 = call i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s* %21) #6
  %22 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %22, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %23 = load i8*, i8** %cfile, align 8, !tbaa !109
  %cmp16 = icmp ne i8* %23, null
  br i1 %cmp16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %if.then.14
  %24 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info18 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %24, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info18, i32 0, i32 4
  %25 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !92
  %fclose = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %25, i32 0, i32 1
  %26 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose, align 8, !tbaa !28
  %27 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info19 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %27, i32 0, i32 58
  %cfile20 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info19, i32 0, i32 1
  %28 = load i8*, i8** %cfile20, align 8, !tbaa !109
  %29 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info21 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %29, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info21, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call22 = call i32 %26(i8* %28, i8* %arraydecay, i32 1) #6
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.17, %if.then.14
  %30 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info24 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %30, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info24, i32 0, i32 3
  %31 = load i8*, i8** %bfile, align 8, !tbaa !110
  %cmp25 = icmp ne i8* %31, null
  br i1 %cmp25, label %if.then.26, label %if.end.35

if.then.26:                                       ; preds = %if.end.23
  %32 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info27 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %32, i32 0, i32 58
  %io_procs28 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info27, i32 0, i32 4
  %33 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs28, align 8, !tbaa !92
  %fclose29 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %33, i32 0, i32 1
  %34 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose29, align 8, !tbaa !28
  %35 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info30 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %35, i32 0, i32 58
  %bfile31 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info30, i32 0, i32 3
  %36 = load i8*, i8** %bfile31, align 8, !tbaa !110
  %37 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info32 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %37, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info32, i32 0, i32 2
  %arraydecay33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %call34 = call i32 %34(i8* %36, i8* %arraydecay33, i32 1) #6
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.26, %if.end.23
  %38 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info36 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %38, i32 0, i32 58
  %bfile37 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info36, i32 0, i32 3
  store i8* null, i8** %bfile37, align 8, !tbaa !110
  %39 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info38 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %39, i32 0, i32 58
  %cfile39 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info38, i32 0, i32 1
  store i8* null, i8** %cfile39, align 8, !tbaa !109
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.35, %if.end.12
  %40 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %io_procs41 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %40, i32 0, i32 4
  %41 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs41, align 8, !tbaa !56
  %42 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info42 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %42, i32 0, i32 58
  %io_procs43 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info42, i32 0, i32 4
  store %struct.clist_io_procs_s* %41, %struct.clist_io_procs_s** %io_procs43, align 8, !tbaa !92
  %43 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %tile_cache_size = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %43, i32 0, i32 5
  %44 = load i32, i32* %tile_cache_size, align 4, !tbaa !61
  %45 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info44 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %45, i32 0, i32 58
  %tile_cache_size45 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info44, i32 0, i32 5
  store i32 %44, i32* %tile_cache_size45, align 4, !tbaa !120
  %46 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %bfile_end_pos = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %46, i32 0, i32 6
  %47 = load i64, i64* %bfile_end_pos, align 8, !tbaa !59
  %48 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info46 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %48, i32 0, i32 58
  %bfile_end_pos47 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info46, i32 0, i32 7
  store i64 %47, i64* %bfile_end_pos47, align 8, !tbaa !121
  %49 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info48 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %49, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info48, i32 0, i32 8
  %50 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %band_params49 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %50, i32 0, i32 7
  %51 = bitcast %struct.gx_band_params_s* %band_params to i8*
  %52 = bitcast %struct.gx_band_params_s* %band_params49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 16, i32 8, i1 false), !tbaa.struct !62
  %53 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %yplane = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %53, i32 0, i32 65
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %yplane, i32 0, i32 2
  store i32 -1, i32* %index, align 4, !tbaa !122
  %54 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %54, i32 0, i32 66
  store %struct.gx_placed_page_s* null, %struct.gx_placed_page_s** %pages, align 8, !tbaa !83
  %55 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %num_pages = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %55, i32 0, i32 68
  store i32 1, i32* %num_pages, align 4, !tbaa !84
  %56 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %offset_map = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %56, i32 0, i32 69
  store i8* null, i8** %offset_map, align 8, !tbaa !85
  %57 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %render_threads = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %57, i32 0, i32 71
  store %struct.clist_render_thread_control_s* null, %struct.clist_render_thread_control_s** %render_threads, align 8, !tbaa !123
  %58 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %58, i32 0, i32 57
  store i32 0, i32* %ymax, align 4, !tbaa !79
  %59 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %ymin50 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %59, i32 0, i32 56
  store i32 0, i32* %ymin50, align 4, !tbaa !82
  %60 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info51 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %60, i32 0, i32 58
  %cfname52 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info51, i32 0, i32 0
  %arraydecay53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname52, i32 0, i32 0
  %61 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %cfname54 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %61, i32 0, i32 2
  %arraydecay55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname54, i32 0, i32 0
  %call56 = call i8* @strncpy(i8* %arraydecay53, i8* %arraydecay55, i64 4096) #7
  %62 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info57 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %62, i32 0, i32 58
  %bfname58 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info57, i32 0, i32 2
  %arraydecay59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname58, i32 0, i32 0
  %63 = load %struct.gx_saved_page_s*, %struct.gx_saved_page_s** %page.addr, align 8, !tbaa !1
  %bfname60 = getelementptr inbounds %struct.gx_saved_page_s, %struct.gx_saved_page_s* %63, i32 0, i32 3
  %arraydecay61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname60, i32 0, i32 0
  %call62 = call i8* @strncpy(i8* %arraydecay59, i8* %arraydecay61, i64 4096) #7
  %64 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info63 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %64, i32 0, i32 58
  %io_procs64 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info63, i32 0, i32 4
  %65 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs64, align 8, !tbaa !92
  %DO_NOT_USE_FOPEN = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %65, i32 0, i32 0
  %66 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN, align 8, !tbaa !124
  %67 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info65 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %67, i32 0, i32 58
  %cfname66 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info65, i32 0, i32 0
  %arraydecay67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname66, i32 0, i32 0
  %68 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info68 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %68, i32 0, i32 58
  %cfile69 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info68, i32 0, i32 1
  %69 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %69, i32 0, i32 45
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !125
  %71 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %bandlist_memory70 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %71, i32 0, i32 45
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory70, align 8, !tbaa !125
  %call71 = call i32 %66(i8* %arraydecay67, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_rb, i32 0, i32 0), i8** %cfile69, %struct.gs_memory_s* %70, %struct.gs_memory_s* %72, i32 1) #6
  store i32 %call71, i32* %code, align 4, !tbaa !22
  %73 = load i32, i32* %code, align 4, !tbaa !22
  %cmp72 = icmp sge i32 %73, 0
  br i1 %cmp72, label %if.then.73, label %if.end.85

if.then.73:                                       ; preds = %if.end.40
  %74 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info74 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %74, i32 0, i32 58
  %io_procs75 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info74, i32 0, i32 4
  %75 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs75, align 8, !tbaa !92
  %DO_NOT_USE_FOPEN76 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %75, i32 0, i32 0
  %76 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN76, align 8, !tbaa !124
  %77 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info77 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %77, i32 0, i32 58
  %bfname78 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info77, i32 0, i32 2
  %arraydecay79 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname78, i32 0, i32 0
  %78 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %page_info80 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %78, i32 0, i32 58
  %bfile81 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info80, i32 0, i32 3
  %79 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %bandlist_memory82 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %79, i32 0, i32 45
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory82, align 8, !tbaa !125
  %81 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %bandlist_memory83 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %81, i32 0, i32 45
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory83, align 8, !tbaa !125
  %call84 = call i32 %76(i8* %arraydecay79, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_rb, i32 0, i32 0), i8** %bfile81, %struct.gs_memory_s* %80, %struct.gs_memory_s* %82, i32 0) #6
  store i32 %call84, i32* %code, align 4, !tbaa !22
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.73, %if.end.40
  br label %out

out:                                              ; preds = %if.end.85, %if.then.10, %if.then.4, %if.then
  %83 = load i32, i32* %code, align 4, !tbaa !22
  %84 = bitcast %struct.gs_c_param_list_s* %paramlist to i8*
  call void @llvm.lifetime.end(i64 56, i8* %84) #1
  %85 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  ret i32 %83
}

declare i32 @clist_finish_page(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_saved_pages_param_process(%struct.gx_device_printer_s* %pdev, i8* %param, i32 %param_size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %param.addr = alloca i8*, align 8
  %param_size.addr = alloca i32, align 4
  %param_scan = alloca i8*, align 8
  %param_left = alloca i32, align 4
  %token = alloca i8*, align 8
  %token_size = alloca i32, align 4
  %code = alloca i32, align 4
  %printed_count = alloca i32, align 4
  %collated_copies = alloca i32, align 4
  %tmp_num = alloca i32, align 4
  %erasepage_needed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bad_token = alloca i8*, align 8
  %param_string = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %param, i8** %param.addr, align 8, !tbaa !1
  store i32 %param_size, i32* %param_size.addr, align 4, !tbaa !22
  %0 = bitcast i8** %param_scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %param.addr, align 8, !tbaa !1
  store i8* %1, i8** %param_scan, align 8, !tbaa !1
  %2 = bitcast i32* %param_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %param_size.addr, align 4, !tbaa !22
  store i32 %3, i32* %param_left, align 4, !tbaa !22
  %4 = bitcast i8** %token to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %token_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %printed_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %collated_copies to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 1, i32* %collated_copies, align 4, !tbaa !22
  %9 = bitcast i32* %tmp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %erasepage_needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %erasepage_needed, align 4, !tbaa !22
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %11 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %12 = load i32, i32* %param_left, align 4, !tbaa !22
  %call = call i8* @param_parse_token(i8* %11, i32 %12, i32* %token_size) #6
  store i8* %call, i8** %token, align 8, !tbaa !1
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %token, align 8, !tbaa !1
  %14 = load i32, i32* %token_size, align 4, !tbaa !22
  %call1 = call i32 @param_find_key(i8* %13, i32 %14) #6
  switch i32 %call1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.16
    i32 3, label %sw.bb.35
    i32 5, label %sw.bb.50
    i32 4, label %sw.bb.81
  ]

sw.bb:                                            ; preds = %while.body
  %15 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 65
  %16 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list, align 8, !tbaa !100
  %cmp2 = icmp eq %struct.gx_saved_pages_list_s* %16, null
  br i1 %cmp2, label %if.then, label %if.end.15

if.then:                                          ; preds = %sw.bb
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call3 = call %struct.gx_saved_pages_list_s* @gx_saved_pages_list_new(%struct.gx_device_printer_s* %17) #6
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 65
  store %struct.gx_saved_pages_list_s* %call3, %struct.gx_saved_pages_list_s** %saved_pages_list4, align 8, !tbaa !100
  %cmp5 = icmp eq %struct.gx_saved_pages_list_s* %call3, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %space_params = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 38
  %banding_type = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params, i32 0, i32 4
  %20 = load i32, i32* %banding_type, align 4, !tbaa !113
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 65
  %22 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list7, align 8, !tbaa !100
  %save_banding_type = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %22, i32 0, i32 3
  store i32 %20, i32* %save_banding_type, align 4, !tbaa !126
  %23 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %space_params8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %23, i32 0, i32 38
  %banding_type9 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params8, i32 0, i32 4
  store i32 1, i32* %banding_type9, align 4, !tbaa !113
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gx_device_printer_s* %24 to %struct.gx_device_s*
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %space_params10 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 38
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 13
  %28 = load i32, i32* %width, align 4, !tbaa !77
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 14
  %30 = load i32, i32* %height, align 4, !tbaa !127
  %call11 = call i32 @gdev_prn_reallocate_memory(%struct.gx_device_s* %25, %struct.gdev_space_params_s* %space_params10, i32 %28, i32 %30) #6
  store i32 %call11, i32* %code, align 4, !tbaa !22
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %31 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %32 = load i32, i32* %erasepage_needed, align 4, !tbaa !22
  %or = or i32 %32, 1
  store i32 %or, i32* %erasepage_needed, align 4, !tbaa !22
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %sw.bb
  br label %sw.epilog

sw.bb.16:                                         ; preds = %while.body
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list17 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 65
  %34 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list17, align 8, !tbaa !100
  %cmp18 = icmp ne %struct.gx_saved_pages_list_s* %34, null
  br i1 %cmp18, label %if.then.19, label %if.end.34

if.then.19:                                       ; preds = %sw.bb.16
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list20 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 65
  %36 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list20, align 8, !tbaa !100
  %save_banding_type21 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %36, i32 0, i32 3
  %37 = load i32, i32* %save_banding_type21, align 4, !tbaa !126
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %space_params22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 38
  %banding_type23 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params22, i32 0, i32 4
  store i32 %37, i32* %banding_type23, align 4, !tbaa !113
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list24 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 65
  %40 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list24, align 8, !tbaa !100
  call void @gx_saved_pages_list_free(%struct.gx_saved_pages_list_s* %40) #6
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 65
  store %struct.gx_saved_pages_list_s* null, %struct.gx_saved_pages_list_s** %saved_pages_list25, align 8, !tbaa !100
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gx_device_printer_s* %42 to %struct.gx_device_s*
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %space_params26 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 38
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %45, i32 0, i32 13
  %46 = load i32, i32* %width27, align 4, !tbaa !77
  %47 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height28 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %47, i32 0, i32 14
  %48 = load i32, i32* %height28, align 4, !tbaa !127
  %call29 = call i32 @gdev_prn_reallocate_memory(%struct.gx_device_s* %43, %struct.gdev_space_params_s* %space_params26, i32 %46, i32 %48) #6
  store i32 %call29, i32* %code, align 4, !tbaa !22
  %49 = load i32, i32* %code, align 4, !tbaa !22
  %cmp30 = icmp slt i32 %49, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.19
  %50 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.19
  %51 = load i32, i32* %erasepage_needed, align 4, !tbaa !22
  %or33 = or i32 %51, 1
  store i32 %or33, i32* %erasepage_needed, align 4, !tbaa !22
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.32, %sw.bb.16
  br label %sw.epilog

sw.bb.35:                                         ; preds = %while.body
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list36 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %52, i32 0, i32 65
  %53 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list36, align 8, !tbaa !100
  %cmp37 = icmp ne %struct.gx_saved_pages_list_s* %53, null
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %sw.bb.35
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list39 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 65
  %55 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list39, align 8, !tbaa !100
  %collated_copies40 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %55, i32 0, i32 2
  %56 = load i32, i32* %collated_copies40, align 4, !tbaa !99
  store i32 %56, i32* %collated_copies, align 4, !tbaa !22
  %57 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list41 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %57, i32 0, i32 65
  %58 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list41, align 8, !tbaa !100
  call void @gx_saved_pages_list_free(%struct.gx_saved_pages_list_s* %58) #6
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %sw.bb.35
  %59 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call43 = call %struct.gx_saved_pages_list_s* @gx_saved_pages_list_new(%struct.gx_device_printer_s* %59) #6
  %60 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list44 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %60, i32 0, i32 65
  store %struct.gx_saved_pages_list_s* %call43, %struct.gx_saved_pages_list_s** %saved_pages_list44, align 8, !tbaa !100
  %cmp45 = icmp eq %struct.gx_saved_pages_list_s* %call43, null
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.42
  %61 = load i32, i32* %collated_copies, align 4, !tbaa !22
  %62 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list48 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %62, i32 0, i32 65
  %63 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list48, align 8, !tbaa !100
  %collated_copies49 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %63, i32 0, i32 2
  store i32 %61, i32* %collated_copies49, align 4, !tbaa !99
  br label %sw.epilog

sw.bb.50:                                         ; preds = %while.body
  %64 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list51 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %64, i32 0, i32 65
  %65 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list51, align 8, !tbaa !100
  %cmp52 = icmp eq %struct.gx_saved_pages_list_s* %65, null
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %sw.bb.50
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %sw.bb.50
  %66 = load i8*, i8** %token, align 8, !tbaa !1
  %67 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %67 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %68 = load i32, i32* %token_size, align 4, !tbaa !22
  %conv = sext i32 %68 to i64
  %add = add nsw i64 %sub.ptr.sub, %conv
  %69 = load i32, i32* %param_left, align 4, !tbaa !22
  %conv55 = sext i32 %69 to i64
  %sub = sub nsw i64 %conv55, %add
  %conv56 = trunc i64 %sub to i32
  store i32 %conv56, i32* %param_left, align 4, !tbaa !22
  %70 = load i8*, i8** %token, align 8, !tbaa !1
  %71 = load i32, i32* %token_size, align 4, !tbaa !22
  %idx.ext = sext i32 %71 to i64
  %add.ptr = getelementptr inbounds i8, i8* %70, i64 %idx.ext
  store i8* %add.ptr, i8** %param_scan, align 8, !tbaa !1
  %72 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %73 = load i32, i32* %param_left, align 4, !tbaa !22
  %call57 = call i8* @param_parse_token(i8* %72, i32 %73, i32* %token_size) #6
  store i8* %call57, i8** %token, align 8, !tbaa !1
  %cmp58 = icmp eq i8* %call57, null
  br i1 %cmp58, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.54
  %74 = load i8*, i8** %token, align 8, !tbaa !1
  %75 = load i32, i32* %token_size, align 4, !tbaa !22
  %call60 = call i32 @param_find_key(i8* %74, i32 %75) #6
  %cmp61 = icmp ne i32 %call60, 11
  br i1 %cmp61, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %lor.lhs.false, %if.end.54
  %76 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !63
  %call64 = call i8* @gs_program_name() #6
  %call65 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %77, i8* %call64, i64 %call65) #6
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %78, i32 0, i32 3
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory66, align 8, !tbaa !63
  %call67 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %79, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i32 0, i32 0)) #6
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %lor.lhs.false
  %80 = load i8*, i8** %token, align 8, !tbaa !1
  %call69 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32* %tmp_num) #7
  %cmp70 = icmp ne i32 %call69, 1
  br i1 %cmp70, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %if.end.68
  %81 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory73 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %81, i32 0, i32 3
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory73, align 8, !tbaa !63
  %call74 = call i8* @gs_program_name() #6
  %call75 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %82, i8* %call74, i64 %call75) #6
  %83 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory76 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory76, align 8, !tbaa !63
  %85 = load i8*, i8** %token, align 8, !tbaa !1
  %call77 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %84, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0), i8* %85) #6
  store i32 -20, i32* %code, align 4, !tbaa !22
  %86 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.end.68
  %87 = load i32, i32* %tmp_num, align 4, !tbaa !22
  %88 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list79 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %88, i32 0, i32 65
  %89 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list79, align 8, !tbaa !100
  %collated_copies80 = getelementptr inbounds %struct.gx_saved_pages_list_s, %struct.gx_saved_pages_list_s* %89, i32 0, i32 2
  store i32 %87, i32* %collated_copies80, align 4, !tbaa !99
  br label %sw.epilog

sw.bb.81:                                         ; preds = %while.body
  %90 = load i8*, i8** %token, align 8, !tbaa !1
  %91 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %sub.ptr.lhs.cast82 = ptrtoint i8* %90 to i64
  %sub.ptr.rhs.cast83 = ptrtoint i8* %91 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %92 = load i32, i32* %token_size, align 4, !tbaa !22
  %conv85 = sext i32 %92 to i64
  %add86 = add nsw i64 %sub.ptr.sub84, %conv85
  %93 = load i32, i32* %param_left, align 4, !tbaa !22
  %conv87 = sext i32 %93 to i64
  %sub88 = sub nsw i64 %conv87, %add86
  %conv89 = trunc i64 %sub88 to i32
  store i32 %conv89, i32* %param_left, align 4, !tbaa !22
  %94 = load i8*, i8** %token, align 8, !tbaa !1
  %95 = load i32, i32* %token_size, align 4, !tbaa !22
  %idx.ext90 = sext i32 %95 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %94, i64 %idx.ext90
  store i8* %add.ptr91, i8** %param_scan, align 8, !tbaa !1
  %96 = load i32, i32* %param_left, align 4, !tbaa !22
  store i32 %96, i32* %code, align 4, !tbaa !22
  %97 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list92 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %97, i32 0, i32 65
  %98 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list92, align 8, !tbaa !100
  %cmp93 = icmp ne %struct.gx_saved_pages_list_s* %98, null
  br i1 %cmp93, label %if.then.95, label %if.end.103

if.then.95:                                       ; preds = %sw.bb.81
  %99 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %100 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %saved_pages_list96 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %100, i32 0, i32 65
  %101 = load %struct.gx_saved_pages_list_s*, %struct.gx_saved_pages_list_s** %saved_pages_list96, align 8, !tbaa !100
  %102 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %103 = load i32, i32* %param_left, align 4, !tbaa !22
  %call97 = call i32 @gx_saved_pages_list_print(%struct.gx_device_printer_s* %99, %struct.gx_saved_pages_list_s* %101, i8* %102, i32 %103, i32* %printed_count) #6
  store i32 %call97, i32* %code, align 4, !tbaa !22
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.95
  %104 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %if.then.95
  %105 = load i32, i32* %erasepage_needed, align 4, !tbaa !22
  %or102 = or i32 %105, 1
  store i32 %or102, i32* %erasepage_needed, align 4, !tbaa !22
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.101, %sw.bb.81
  %106 = load i32, i32* %code, align 4, !tbaa !22
  %107 = load i32, i32* %token_size, align 4, !tbaa !22
  %add104 = add nsw i32 %107, %106
  store i32 %add104, i32* %token_size, align 4, !tbaa !22
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %108 = bitcast i8** %bad_token to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  %109 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory105 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %109, i32 0, i32 3
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory105, align 8, !tbaa !63
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %110, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %111 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !128
  %112 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory106 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %112, i32 0, i32 3
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory106, align 8, !tbaa !63
  %114 = load i32, i32* %token_size, align 4, !tbaa !22
  %add107 = add nsw i32 %114, 1
  %call108 = call i8* %111(%struct.gs_memory_s* %113, i32 %add107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #6
  store i8* %call108, i8** %bad_token, align 8, !tbaa !1
  %115 = bitcast i8** %param_string to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory109 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %116, i32 0, i32 3
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory109, align 8, !tbaa !63
  %procs110 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 1
  %alloc_string111 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs110, i32 0, i32 16
  %118 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string111, align 8, !tbaa !128
  %119 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory112 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %119, i32 0, i32 3
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory112, align 8, !tbaa !63
  %121 = load i32, i32* %param_size.addr, align 4, !tbaa !22
  %add113 = add nsw i32 %121, 1
  %call114 = call i8* %118(%struct.gs_memory_s* %120, i32 %add113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #6
  store i8* %call114, i8** %param_string, align 8, !tbaa !1
  %122 = load i8*, i8** %bad_token, align 8, !tbaa !1
  %cmp115 = icmp ne i8* %122, null
  br i1 %cmp115, label %land.lhs.true, label %if.end.140

land.lhs.true:                                    ; preds = %sw.default
  %123 = load i8*, i8** %param_string, align 8, !tbaa !1
  %cmp117 = icmp ne i8* %123, null
  br i1 %cmp117, label %if.then.119, label %if.end.140

if.then.119:                                      ; preds = %land.lhs.true
  %124 = load i8*, i8** %bad_token, align 8, !tbaa !1
  %125 = load i8*, i8** %token, align 8, !tbaa !1
  %126 = load i32, i32* %token_size, align 4, !tbaa !22
  %conv120 = sext i32 %126 to i64
  %call121 = call i8* @memcpy(i8* %124, i8* %125, i64 %conv120) #7
  %127 = load i32, i32* %token_size, align 4, !tbaa !22
  %idxprom = sext i32 %127 to i64
  %128 = load i8*, i8** %bad_token, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %128, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !53
  %129 = load i8*, i8** %param_string, align 8, !tbaa !1
  %130 = load i8*, i8** %param.addr, align 8, !tbaa !1
  %131 = load i32, i32* %param_size.addr, align 4, !tbaa !22
  %conv122 = sext i32 %131 to i64
  %call123 = call i8* @memcpy(i8* %129, i8* %130, i64 %conv122) #7
  %132 = load i32, i32* %param_size.addr, align 4, !tbaa !22
  %idxprom124 = sext i32 %132 to i64
  %133 = load i8*, i8** %param_string, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %133, i64 %idxprom124
  store i8 0, i8* %arrayidx125, align 1, !tbaa !53
  %134 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory126 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %134, i32 0, i32 3
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory126, align 8, !tbaa !63
  %call127 = call i8* @gs_program_name() #6
  %call128 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %135, i8* %call127, i64 %call128) #6
  %136 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory129 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %136, i32 0, i32 3
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory129, align 8, !tbaa !63
  %138 = load i8*, i8** %bad_token, align 8, !tbaa !1
  %139 = load i8*, i8** %param_string, align 8, !tbaa !1
  %call130 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %137, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i32 0, i32 0), i8* %138, i8* %139) #6
  %140 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory131 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %140, i32 0, i32 3
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory131, align 8, !tbaa !63
  %procs132 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %141, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs132, i32 0, i32 19
  %142 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !129
  %143 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory133 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %143, i32 0, i32 3
  %144 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory133, align 8, !tbaa !63
  %145 = load i8*, i8** %bad_token, align 8, !tbaa !1
  %146 = load i32, i32* %token_size, align 4, !tbaa !22
  %add134 = add nsw i32 %146, 1
  call void %142(%struct.gs_memory_s* %144, i8* %145, i32 %add134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #6
  %147 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory135 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory135, align 8, !tbaa !63
  %procs136 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 1
  %free_string137 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs136, i32 0, i32 19
  %149 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string137, align 8, !tbaa !129
  %150 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory138 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %150, i32 0, i32 3
  %151 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory138, align 8, !tbaa !63
  %152 = load i8*, i8** %param_string, align 8, !tbaa !1
  %153 = load i32, i32* %param_size.addr, align 4, !tbaa !22
  %add139 = add nsw i32 %153, 1
  call void %149(%struct.gs_memory_s* %151, i8* %152, i32 %add139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #6
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.119, %land.lhs.true, %sw.default
  %154 = bitcast i8** %param_string to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i8** %bad_token to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.140, %if.end.103, %if.end.78, %if.end.47, %if.end.34, %if.end.15
  %156 = load i8*, i8** %token, align 8, !tbaa !1
  %157 = load i8*, i8** %param_scan, align 8, !tbaa !1
  %sub.ptr.lhs.cast141 = ptrtoint i8* %156 to i64
  %sub.ptr.rhs.cast142 = ptrtoint i8* %157 to i64
  %sub.ptr.sub143 = sub i64 %sub.ptr.lhs.cast141, %sub.ptr.rhs.cast142
  %158 = load i32, i32* %token_size, align 4, !tbaa !22
  %conv144 = sext i32 %158 to i64
  %add145 = add nsw i64 %sub.ptr.sub143, %conv144
  %159 = load i32, i32* %param_left, align 4, !tbaa !22
  %conv146 = sext i32 %159 to i64
  %sub147 = sub nsw i64 %conv146, %add145
  %conv148 = trunc i64 %sub147 to i32
  store i32 %conv148, i32* %param_left, align 4, !tbaa !22
  %160 = load i8*, i8** %token, align 8, !tbaa !1
  %161 = load i32, i32* %token_size, align 4, !tbaa !22
  %idx.ext149 = sext i32 %161 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %160, i64 %idx.ext149
  store i8* %add.ptr150, i8** %param_scan, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %162 = load i32, i32* %erasepage_needed, align 4, !tbaa !22
  store i32 %162, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.100, %if.then.72, %if.then.63, %if.then.53, %if.then.46, %if.then.31, %if.then.13, %if.then.6
  %163 = bitcast i32* %erasepage_needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %tmp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %collated_copies to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %printed_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %token_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i8** %token to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i32* %param_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i8** %param_scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = load i32, i32* %retval
  ret i32 %172
}

declare i32 @gdev_prn_reallocate_memory(%struct.gx_device_s*, %struct.gdev_space_params_s*, i32, i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #4

declare i32 @clist_read_color_usage_array(%struct.gx_device_clist_reader_s*) #2

declare i32 @clist_read_icctable(%struct.gx_device_clist_reader_s*) #2

declare %struct.gsicc_link_cache_s* @gsicc_cache_new(%struct.gs_memory_s*) #2

declare i32 @clist_free_icc_table(%struct.clist_icctable_s*, %struct.gs_memory_s*) #2

declare i32 @gs_param_list_unserialize(%struct.gs_param_list_s*, i8*) #2

declare i32 @gs_putdeviceparams(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @gs_opendevice(%struct.gx_device_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !9, i64 17184}
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
!23 = !{!24, !2, i64 10096}
!24 = !{!"gx_device_clist_common_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !20, i64 1736, !2, i64 1768, !2, i64 1776, !7, i64 1784, !16, i64 1792, !7, i64 1808, !7, i64 1812, !25, i64 1816, !26, i64 1840, !7, i64 1864, !7, i64 1868, !2, i64 1872, !7, i64 1880, !7, i64 1884, !27, i64 1888, !7, i64 10144, !9, i64 10152, !2, i64 10160, !2, i64 10168, !7, i64 10176, !2, i64 10184}
!25 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20}
!26 = !{!"gx_bits_cache_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!27 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !7, i64 8216, !9, i64 8224, !9, i64 8232, !16, i64 8240}
!28 = !{!29, !2, i64 8}
!29 = !{!"clist_io_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!30 = !{!31, !2, i64 5984}
!31 = !{!"gx_device_clist_writer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !20, i64 1736, !2, i64 1768, !2, i64 1776, !7, i64 1784, !16, i64 1792, !7, i64 1808, !7, i64 1812, !25, i64 1816, !26, i64 1840, !7, i64 1864, !7, i64 1868, !2, i64 1872, !7, i64 1880, !7, i64 1884, !27, i64 1888, !7, i64 10144, !9, i64 10152, !2, i64 10160, !2, i64 10168, !7, i64 10176, !2, i64 10184, !7, i64 10192, !2, i64 10200, !2, i64 10208, !2, i64 10216, !2, i64 10224, !2, i64 10232, !32, i64 10240, !7, i64 10256, !7, i64 10260, !7, i64 10264, !7, i64 10268, !33, i64 10272, !7, i64 10320, !7, i64 10324, !7, i64 10328, !35, i64 10336, !7, i64 11952, !7, i64 11956, !7, i64 11960, !7, i64 11964, !3, i64 11968, !2, i64 12016, !9, i64 12024, !48, i64 12032, !3, i64 12080, !9, i64 12112, !9, i64 12120, !9, i64 12128, !9, i64 12136, !7, i64 12144, !7, i64 12148, !7, i64 12152, !7, i64 12156, !2, i64 12160, !7, i64 12168, !2, i64 12176, !7, i64 12184, !7, i64 12188, !7, i64 12192, !7, i64 12196, !7, i64 12200, !7, i64 12204, !2, i64 12208, !9, i64 12216, !7, i64 12224, !7, i64 12228, !7, i64 12232, !7, i64 12236, !10, i64 12240}
!32 = !{!"cmd_list_s", !2, i64 0, !2, i64 8}
!33 = !{!"gx_strip_bitmap_s", !2, i64 0, !7, i64 8, !34, i64 12, !9, i64 24, !11, i64 32, !11, i64 34, !11, i64 36, !11, i64 38, !7, i64 40}
!34 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!35 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !36, i64 24, !7, i64 128, !40, i64 132, !7, i64 168, !41, i64 176, !41, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !43, i64 224, !43, i64 228, !44, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !37, i64 296, !45, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !37, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !46, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !47, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !47, i64 1336}
!36 = !{!"gx_line_params_s", !37, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !7, i64 36, !38, i64 40, !39, i64 64}
!37 = !{!"float", !3, i64 0}
!38 = !{!"gs_matrix_s", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20}
!39 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !37, i64 12, !7, i64 16, !37, i64 20, !7, i64 24, !7, i64 28, !37, i64 32}
!40 = !{!"gs_matrix_fixed_s", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!41 = !{!"gs_point_s", !42, i64 0, !42, i64 8}
!42 = !{!"double", !3, i64 0}
!43 = !{!"gs_transparency_source_s", !37, i64 0}
!44 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!45 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!46 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!47 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !9, i64 16, !3, i64 24}
!48 = !{!"clist_color_space_s", !3, i64 0, !9, i64 8, !49, i64 16, !2, i64 40}
!49 = !{!"clist_icc_color_s", !9, i64 0, !3, i64 8, !7, i64 12, !3, i64 16, !3, i64 20}
!50 = !{!31, !2, i64 10088}
!51 = !{!6, !2, i64 16}
!52 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !53, i64 12, i64 2, !54, i64 14, i64 1, !53, i64 16, i64 4, !22, i64 20, i64 4, !22, i64 24, i64 4, !22, i64 28, i64 4, !22, i64 32, i64 4, !22, i64 36, i64 4, !22, i64 40, i64 4, !53, i64 44, i64 64, !53, i64 108, i64 64, !53, i64 176, i64 512, !53, i64 688, i64 8, !1, i64 696, i64 4, !53, i64 704, i64 8, !55, i64 712, i64 4, !22}
!53 = !{!3, !3, i64 0}
!54 = !{!11, !11, i64 0}
!55 = !{!9, !9, i64 0}
!56 = !{!57, !2, i64 8944}
!57 = !{!"gx_saved_page_s", !3, i64 0, !10, i64 32, !3, i64 752, !3, i64 4848, !2, i64 8944, !7, i64 8952, !9, i64 8960, !16, i64 8968, !2, i64 8984, !7, i64 8992, !2, i64 9000}
!58 = !{!31, !9, i64 10120}
!59 = !{!57, !9, i64 8960}
!60 = !{!31, !7, i64 10104}
!61 = !{!57, !7, i64 8952}
!62 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 8, !55}
!63 = !{!6, !2, i64 24}
!64 = !{!65, !2, i64 200}
!65 = !{!"gs_memory_s", !2, i64 0, !66, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!66 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!67 = !{!57, !2, i64 8984}
!68 = !{!57, !7, i64 8992}
!69 = !{!65, !2, i64 64}
!70 = !{!57, !2, i64 9000}
!71 = !{!18, !2, i64 0}
!72 = !{!73, !2, i64 0}
!73 = !{!"gx_placed_page_s", !2, i64 0, !34, i64 8}
!74 = !{!73, !7, i64 12}
!75 = !{!57, !9, i64 8976}
!76 = !{!57, !7, i64 8968}
!77 = !{!6, !7, i64 832}
!78 = !{!57, !7, i64 8972}
!79 = !{!80, !7, i64 1884}
!80 = !{!"gx_device_clist_reader_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !20, i64 1736, !2, i64 1768, !2, i64 1776, !7, i64 1784, !16, i64 1792, !7, i64 1808, !7, i64 1812, !25, i64 1816, !26, i64 1840, !7, i64 1864, !7, i64 1868, !2, i64 1872, !7, i64 1880, !7, i64 1884, !27, i64 1888, !7, i64 10144, !9, i64 10152, !2, i64 10160, !2, i64 10168, !7, i64 10176, !2, i64 10184, !81, i64 10192, !2, i64 10208, !2, i64 10216, !7, i64 10224, !2, i64 10232, !7, i64 10240, !2, i64 10248, !2, i64 10256, !7, i64 10264, !7, i64 10268, !7, i64 10272}
!81 = !{!"gx_render_plane_s", !7, i64 0, !7, i64 4, !7, i64 8}
!82 = !{!80, !7, i64 1880}
!83 = !{!80, !2, i64 10208}
!84 = !{!80, !7, i64 10224}
!85 = !{!80, !2, i64 10232}
!86 = !{!80, !2, i64 10160}
!87 = !{!80, !2, i64 10168}
!88 = !{!6, !2, i64 1168}
!89 = !{!6, !7, i64 952}
!90 = !{!6, !7, i64 948}
!91 = !{!6, !7, i64 944}
!92 = !{!80, !2, i64 10096}
!93 = !{!29, !2, i64 16}
!94 = !{!65, !2, i64 24}
!95 = !{!96, !2, i64 32}
!96 = !{!"gx_saved_pages_list_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !2, i64 16, !2, i64 24, !2, i64 32}
!97 = !{!6, !9, i64 928}
!98 = !{!96, !7, i64 0}
!99 = !{!96, !7, i64 8}
!100 = !{!6, !2, i64 17296}
!101 = !{!96, !7, i64 4}
!102 = !{!103, !7, i64 0}
!103 = !{!"gx_saved_pages_list_element_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!104 = !{!103, !2, i64 24}
!105 = !{!103, !2, i64 16}
!106 = !{!96, !2, i64 24}
!107 = !{!103, !2, i64 8}
!108 = !{!96, !2, i64 16}
!109 = !{!80, !2, i64 5984}
!110 = !{!80, !2, i64 10088}
!111 = !{!6, !7, i64 17252}
!112 = !{!80, !7, i64 1808}
!113 = !{!6, !3, i64 1100}
!114 = !{!80, !2, i64 24}
!115 = !{!116, !9, i64 16}
!116 = !{!"gsicc_link_cache_s", !2, i64 0, !7, i64 8, !8, i64 16, !2, i64 40, !2, i64 48, !2, i64 56, !7, i64 64}
!117 = !{!116, !2, i64 32}
!118 = !{!116, !2, i64 24}
!119 = !{!24, !7, i64 1880}
!120 = !{!80, !7, i64 10104}
!121 = !{!80, !9, i64 10120}
!122 = !{!80, !7, i64 10200}
!123 = !{!80, !2, i64 10248}
!124 = !{!29, !2, i64 0}
!125 = !{!80, !2, i64 1768}
!126 = !{!96, !7, i64 12}
!127 = !{!6, !7, i64 836}
!128 = !{!65, !2, i64 136}
!129 = !{!65, !2, i64 160}
