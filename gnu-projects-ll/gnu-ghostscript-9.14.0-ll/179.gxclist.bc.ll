; ModuleID = './gxclist.bc'
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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_device_procs_s = type { {}*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, {}*, i32 (%struct.gx_device_s*, i32, i32)*, {}*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
%struct.gx_device_clist_common_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s** }
%struct.gx_device_clist_reader_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, %struct.gx_render_plane_s, %struct.gx_placed_page_s*, %struct.gx_colors_usage_s*, i32, i8*, i32, %struct.clist_render_thread_control_s*, i8*, i32, i32, i32 }
%struct.gx_placed_page_s = type { %struct.gx_saved_page_s*, %struct.gs_int_point_s }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.clist_render_thread_control_s = type opaque
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.cmd_block_s = type { i32, i32, i64 }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.gsicc_serialized_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"gx_device_clist\00", align 1
@st_device_clist = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 12960, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_clist_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_clist_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@gs_clist_device_procs = constant { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* } { i32 (%struct.gx_device_s*)* @clist_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @clist_output_page, i32 (%struct.gx_device_s*)* @clist_close, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @clist_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @clist_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @clist_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_forward_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @clist_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @clist_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @clist_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @clist_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @clist_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @clist_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @clist_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @clist_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @clist_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @clist_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_forward_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @clist_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @clist_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @clist_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_forward_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_forward_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_forward_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @clist_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_default_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* @gx_default_fill_linear_color_scanline, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* @clist_fill_linear_color_trapezoid, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* @clist_fill_linear_color_triangle, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_forward_update_spot_equivalent_colors, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_forward_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @clist_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @clist_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* @clist_copy_planes, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @clist_strip_copy_rop2, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @clist_strip_tile_rect_devn, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @clist_copy_alpha_hl_color, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* @clist_process_page }, align 8
@clist_io_procs_file_global = global %struct.clist_io_procs_s* null, align 8
@clist_io_procs_memory_global = global %struct.clist_io_procs_s* null, align 8
@clist_imager_state_initial = constant %struct.gs_imager_state_s { i32 0, %struct.gs_memory_s* null, i8* null, %struct.gx_line_params_s { float 0.000000e+00, i32 0, i32 0, i32 0, i32 0, i32 -1, float 1.000000e+01, float 0x3FC9FDD380000000, float 0.000000e+00, i32 0, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.gx_dash_params_s { float* null, i32 0, float 0.000000e+00, i32 0, float 0.000000e+00, i32 1, i32 0, float 0.000000e+00 } }, i32 0, %struct.gs_matrix_fixed_s { float 0x4010AAAAA0000000, float 0.000000e+00, float 0.000000e+00, float 0xC010AAAAA0000000, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 0 }, i32 0, %struct.gs_point_s zeroinitializer, %struct.gs_point_s zeroinitializer, i32 0, i32 252, i16 -1, i32 16, %struct.gs_transparency_source_s { float 1.000000e+00 }, %struct.gs_transparency_source_s { float 1.000000e+00 }, %struct.gs_xstate_trans_flags zeroinitializer, i64 0, i32 0, i32 0, i32 0, %struct.gx_device_s* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, float 1.000000e+00, %struct.gs_fixed_point_s { i32 128, i32 128 }, i32 0, i32 0, i32 0, float 1.000000e+00, i32 1, i32 1, %struct.gsicc_manager_s* null, %struct.gsicc_link_cache_s* null, %struct.gsicc_profile_cache_s* null, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)* @gx_default_get_cmap_procs, %struct.gs_halftone_s* null, [2 x %struct.gs_int_point_s] zeroinitializer, %struct.gx_device_halftone_s* null, %struct.gs_cie_render_s* null, i32 0, %struct.gx_transfer_map_s* null, %struct.gx_transfer_map_s* null, %struct.gx_transfer_s zeroinitializer, [64 x %struct.gx_transfer_map_s*] zeroinitializer, %struct.gx_cie_joint_caches_s* null, %struct.gx_color_map_procs_s* null, %struct.gs_devicen_color_map_s zeroinitializer, %struct.gx_pattern_cache_s* null, %struct.gs_color_space_s* null, %struct.gs_color_space_s* null, %struct.gx_cie_joint_caches_s* null, %struct.gs_devicen_color_map_s zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"clist_color_usage_array\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"clist_finish_page\00", align 1
@gs_debug = external global [128 x i8], align 16
@.str.3 = private unnamed_addr constant [28 x i8] c"%d bands skipped out of %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"clist_free_icc_table\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"clist_icc_writetable\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"./base/gxclist.c\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"insufficient memory for icc table buffer\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"clist_icc_addentry\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"insufficient memory to allocate entry in icc table\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"insufficient memory to allocate icc table\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"clist_write_color_usage_array\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"insufficient memory for color_usage_array\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"clist_writer_transparency_push\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"clist_writer_transparency_pop\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"clist_make_accum_device\00", align 1
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_imager_state = external constant %struct.gs_memory_struct_type_s, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@gp_fmode_binary_suffix = external constant [0 x i8], align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"clist_close\00", align 1
@clist_reset.cls_initial = internal constant %struct.gx_clist_state_s { [2 x i64] [i64 -1, i64 -1], %struct.gx_device_color_saved_s { %struct.gx_device_color_type_s* @gx_dc_type_data_none, %union._svc zeroinitializer, %struct.gs_int_point_s zeroinitializer }, i32 0, i64 0, i64 0, %struct.gs_int_point_s zeroinitializer, [2 x i64] [i64 -1, i64 -1], [2 x %struct.gx_device_color_s] zeroinitializer, %struct.gx_cmd_rect zeroinitializer, i32 252, i16 0, i16 0, i32 0, i32 0, i32 16383, %struct.cmd_list_s zeroinitializer, %struct.gx_colors_usage_s { i64 0, i32 0, %struct.gs_int_rect_s { %struct.gs_int_point_s { i32 2147483647, i32 2147483647 }, %struct.gs_int_point_s { i32 -2147483648, i32 -2147483648 } } } }, align 8
@gx_dc_type_data_none = external constant %struct.gx_device_color_type_s, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"clist_icctable_entry\00", align 1
@clist_icctable_entry_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @clist_icctable_entry_enum_ptrs, i32 0, i32 0) }, align 8
@st_clist_icctable_entry = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @clist_icctable_entry_reloc_ptrs to i8*) }, align 8
@clist_icctable_entry_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 24 }], align 2
@.str.19 = private unnamed_addr constant [15 x i8] c"clist_icctable\00", align 1
@clist_icctable_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @clist_icctable_enum_ptrs, i32 0, i32 0) }, align 8
@st_clist_icctable = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @clist_icctable_reloc_ptrs to i8*) }, align 8
@clist_icctable_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 16 }, %struct.gc_ptr_element_s { i16 0, i16 24 }], align 2
@.str.20 = private unnamed_addr constant [33 x i8] c"clist_writer_transparency_buffer\00", align 1
@clist_writer_cropping_buffer_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @clist_writer_cropping_buffer_enum_ptrs, i32 0, i32 0) }, align 8
@st_clist_writer_cropping_buffer = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @clist_writer_cropping_buffer_reloc_ptrs to i8*) }, align 8
@clist_writer_cropping_buffer_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 16 }], align 2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_clist_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cdev = alloca %union.gx_device_clist_s*, align 8
  %ret = alloca %struct.gs_ptr_procs_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %5 = bitcast %struct.gs_ptr_procs_s** %ret to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 4), align 8, !tbaa !7
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %9 = load i32, i32* %size.addr, align 4, !tbaa !5
  %10 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 0
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %6(%struct.gs_memory_s* %7, i8* %8, i32 %9, i32 %sub, %struct.enum_ptr_s* %11, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %12) #4
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_ptr_procs_s* %13, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ret, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_ptr_procs_s* [ %14, %cond.true ], [ @ptr_struct_procs, %cond.false ]
  store %struct.gs_ptr_procs_s* %cond, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  %16 = bitcast %struct.gs_ptr_procs_s** %ret to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %17 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %17, 1
  store i32 %sub1, i32* %index.addr, align 4, !tbaa !5
  %18 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %18 to %struct.gx_device_clist_common_s*
  %ymin = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 56
  %19 = load i32, i32* %ymin, align 4, !tbaa !11
  %cmp2 = icmp slt i32 %19, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %20 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %20, label %sw.default.30 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.21
    i32 3, label %sw.bb.24
    i32 4, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.then.3
  %21 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer = bitcast %union.gx_device_clist_s* %21 to %struct.gx_device_clist_writer_s*
  %image_enum_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer, i32 0, i32 93
  %22 = load i64, i64* %image_enum_id, align 8, !tbaa !28
  %cmp4 = icmp ne i64 %22, 0
  br i1 %cmp4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %sw.bb
  %23 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer6 = bitcast %union.gx_device_clist_s* %23 to %struct.gx_device_clist_writer_s*
  %clip_path = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer6, i32 0, i32 86
  %24 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !48
  br label %cond.end.8

cond.false.7:                                     ; preds = %sw.bb
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi %struct.gx_clip_path_s* [ %24, %cond.true.5 ], [ null, %cond.false.7 ]
  %25 = bitcast %struct.gx_clip_path_s* %cond9 to i8*
  %26 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %26, i32 0, i32 0
  store i8* %25, i8** %ptr10, align 8, !tbaa !9
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.11:                                         ; preds = %if.then.3
  %27 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer12 = bitcast %union.gx_device_clist_s* %27 to %struct.gx_device_clist_writer_s*
  %image_enum_id13 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer12, i32 0, i32 93
  %28 = load i64, i64* %image_enum_id13, align 8, !tbaa !28
  %cmp14 = icmp ne i64 %28, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %sw.bb.11
  %29 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer16 = bitcast %union.gx_device_clist_s* %29 to %struct.gx_device_clist_writer_s*
  %color_space = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer16, i32 0, i32 88
  %space = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space, i32 0, i32 3
  %30 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %space, align 8, !tbaa !49
  br label %cond.end.18

cond.false.17:                                    ; preds = %sw.bb.11
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi %struct.gs_color_space_s* [ %30, %cond.true.15 ], [ null, %cond.false.17 ]
  %31 = bitcast %struct.gs_color_space_s* %cond19 to i8*
  %32 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr20 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %32, i32 0, i32 0
  store i8* %31, i8** %ptr20, align 8, !tbaa !9
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.21:                                         ; preds = %if.then.3
  %33 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer22 = bitcast %union.gx_device_clist_s* %33 to %struct.gx_device_clist_writer_s*
  %pinst = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer22, i32 0, i32 100
  %34 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !50
  %35 = bitcast %struct.gs_pattern1_instance_s* %34 to i8*
  %36 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr23 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %36, i32 0, i32 0
  store i8* %35, i8** %ptr23, align 8, !tbaa !9
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.24:                                         ; preds = %if.then.3
  %37 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer25 = bitcast %union.gx_device_clist_s* %37 to %struct.gx_device_clist_writer_s*
  %cropping_stack = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer25, i32 0, i32 107
  %38 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %cropping_stack, align 8, !tbaa !51
  %39 = bitcast %struct.clist_writer_cropping_buffer_s* %38 to i8*
  %40 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr26 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %40, i32 0, i32 0
  store i8* %39, i8** %ptr26, align 8, !tbaa !9
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.27:                                         ; preds = %if.then.3
  %41 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer28 = bitcast %union.gx_device_clist_s* %41 to %struct.gx_device_clist_writer_s*
  %icc_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer28, i32 0, i32 61
  %42 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !52
  %43 = bitcast %struct.clist_icctable_s* %42 to i8*
  %44 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr29 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %44, i32 0, i32 0
  store i8* %43, i8** %ptr29, align 8, !tbaa !9
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.30:                                    ; preds = %if.then.3
  %45 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_imager_state, i32 0, i32 4), align 8, !tbaa !7
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %47 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer31 = bitcast %union.gx_device_clist_s* %47 to %struct.gx_device_clist_writer_s*
  %imager_state = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer31, i32 0, i32 80
  %48 = bitcast %struct.gs_imager_state_s* %imager_state to i8*
  %49 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub32 = sub nsw i32 %49, 5
  %50 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %51 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call33 = call %struct.gs_ptr_procs_s* %45(%struct.gs_memory_s* %46, i8* %48, i32 1616, i32 %sub32, %struct.enum_ptr_s* %50, %struct.gs_memory_struct_type_s* @st_imager_state, %struct.gc_state_s* %51) #4
  store %struct.gs_ptr_procs_s* %call33, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %52 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %52, 0
  br i1 %cmp34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.else
  %53 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %53 to %struct.gx_device_clist_reader_s*
  %offset_map = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %reader, i32 0, i32 69
  %54 = load i8*, i8** %offset_map, align 8, !tbaa !53
  %55 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr36 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %55, i32 0, i32 0
  store i8* %54, i8** %ptr36, align 8, !tbaa !9
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.37:                                       ; preds = %if.else
  %56 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %56, 1
  br i1 %cmp38, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.else.37
  %57 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %reader40 = bitcast %union.gx_device_clist_s* %57 to %struct.gx_device_clist_reader_s*
  %icc_table41 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %reader40, i32 0, i32 61
  %58 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table41, align 8, !tbaa !56
  %59 = bitcast %struct.clist_icctable_s* %58 to i8*
  %60 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr42 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %60, i32 0, i32 0
  store i8* %59, i8** %ptr42, align 8, !tbaa !9
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.43:                                       ; preds = %if.else.37
  %61 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %61, 2
  br i1 %cmp44, label %if.then.45, label %if.else.48

if.then.45:                                       ; preds = %if.else.43
  %62 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %reader46 = bitcast %union.gx_device_clist_s* %62 to %struct.gx_device_clist_reader_s*
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %reader46, i32 0, i32 67
  %63 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !57
  %64 = bitcast %struct.gx_colors_usage_s* %63 to i8*
  %65 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr47 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %65, i32 0, i32 0
  store i8* %64, i8** %ptr47, align 8, !tbaa !9
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.48:                                       ; preds = %if.else.43
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.48, %if.then.45, %if.then.39, %if.then.35, %sw.default.30, %sw.bb.27, %sw.bb.24, %sw.bb.21, %cond.end.18, %cond.end.8, %cond.end
  %66 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %67
}

; Function Attrs: nounwind uwtable
define internal void @device_clist_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %cdev = alloca %union.gx_device_clist_s*, align 8
  %i = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 5), align 8, !tbaa !58
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %4(i8* %5, i32 %6, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %7) #4
  %8 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %8 to %struct.gx_device_clist_common_s*
  %ymin = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 56
  %9 = load i32, i32* %ymin, align 4, !tbaa !11
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer = bitcast %union.gx_device_clist_s* %10 to %struct.gx_device_clist_writer_s*
  %image_enum_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer, i32 0, i32 93
  %11 = load i64, i64* %image_enum_id, align 8, !tbaa !28
  %cmp1 = icmp ne i64 %11, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gc_state_s* %12 to %struct.gc_procs_common_s**
  %14 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %13, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %14, i32 0, i32 0
  %15 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !59
  %16 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer3 = bitcast %union.gx_device_clist_s* %16 to %struct.gx_device_clist_writer_s*
  %clip_path = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer3, i32 0, i32 86
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !48
  %18 = bitcast %struct.gx_clip_path_s* %17 to i8*
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %15(i8* %18, %struct.gc_state_s* %19) #4
  %20 = bitcast i8* %call to %struct.gx_clip_path_s*
  %21 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer4 = bitcast %union.gx_device_clist_s* %21 to %struct.gx_device_clist_writer_s*
  %clip_path5 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer4, i32 0, i32 86
  store %struct.gx_clip_path_s* %20, %struct.gx_clip_path_s** %clip_path5, align 8, !tbaa !48
  %22 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gc_state_s* %22 to %struct.gc_procs_common_s**
  %24 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %23, align 8, !tbaa !1
  %reloc_struct_ptr6 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %24, i32 0, i32 0
  %25 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr6, align 8, !tbaa !59
  %26 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer7 = bitcast %union.gx_device_clist_s* %26 to %struct.gx_device_clist_writer_s*
  %color_space = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer7, i32 0, i32 88
  %space = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space, i32 0, i32 3
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %space, align 8, !tbaa !49
  %28 = bitcast %struct.gs_color_space_s* %27 to i8*
  %29 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call8 = call i8* %25(i8* %28, %struct.gc_state_s* %29) #4
  %30 = bitcast i8* %call8 to %struct.gs_color_space_s*
  %31 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer9 = bitcast %union.gx_device_clist_s* %31 to %struct.gx_device_clist_writer_s*
  %color_space10 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer9, i32 0, i32 88
  %space11 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space10, i32 0, i32 3
  store %struct.gs_color_space_s* %30, %struct.gs_color_space_s** %space11, align 8, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %32 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gc_state_s* %32 to %struct.gc_procs_common_s**
  %34 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %33, align 8, !tbaa !1
  %reloc_struct_ptr12 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %34, i32 0, i32 0
  %35 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr12, align 8, !tbaa !59
  %36 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer13 = bitcast %union.gx_device_clist_s* %36 to %struct.gx_device_clist_writer_s*
  %pinst = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer13, i32 0, i32 100
  %37 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst, align 8, !tbaa !50
  %38 = bitcast %struct.gs_pattern1_instance_s* %37 to i8*
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call14 = call i8* %35(i8* %38, %struct.gc_state_s* %39) #4
  %40 = bitcast i8* %call14 to %struct.gs_pattern1_instance_s*
  %41 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer15 = bitcast %union.gx_device_clist_s* %41 to %struct.gx_device_clist_writer_s*
  %pinst16 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer15, i32 0, i32 100
  store %struct.gs_pattern1_instance_s* %40, %struct.gs_pattern1_instance_s** %pinst16, align 8, !tbaa !50
  %42 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gc_state_s* %42 to %struct.gc_procs_common_s**
  %44 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %43, align 8, !tbaa !1
  %reloc_struct_ptr17 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %44, i32 0, i32 0
  %45 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr17, align 8, !tbaa !59
  %46 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer18 = bitcast %union.gx_device_clist_s* %46 to %struct.gx_device_clist_writer_s*
  %cropping_stack = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer18, i32 0, i32 107
  %47 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %cropping_stack, align 8, !tbaa !51
  %48 = bitcast %struct.clist_writer_cropping_buffer_s* %47 to i8*
  %49 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call19 = call i8* %45(i8* %48, %struct.gc_state_s* %49) #4
  %50 = bitcast i8* %call19 to %struct.clist_writer_cropping_buffer_s*
  %51 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer20 = bitcast %union.gx_device_clist_s* %51 to %struct.gx_device_clist_writer_s*
  %cropping_stack21 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer20, i32 0, i32 107
  store %struct.clist_writer_cropping_buffer_s* %50, %struct.clist_writer_cropping_buffer_s** %cropping_stack21, align 8, !tbaa !51
  %52 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %53 = bitcast %struct.gc_state_s* %52 to %struct.gc_procs_common_s**
  %54 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %53, align 8, !tbaa !1
  %reloc_struct_ptr22 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %54, i32 0, i32 0
  %55 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr22, align 8, !tbaa !59
  %56 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer23 = bitcast %union.gx_device_clist_s* %56 to %struct.gx_device_clist_writer_s*
  %icc_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer23, i32 0, i32 61
  %57 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !52
  %58 = bitcast %struct.clist_icctable_s* %57 to i8*
  %59 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call24 = call i8* %55(i8* %58, %struct.gc_state_s* %59) #4
  %60 = bitcast i8* %call24 to %struct.clist_icctable_s*
  %61 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer25 = bitcast %union.gx_device_clist_s* %61 to %struct.gx_device_clist_writer_s*
  %icc_table26 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer25, i32 0, i32 61
  store %struct.clist_icctable_s* %60, %struct.clist_icctable_s** %icc_table26, align 8, !tbaa !52
  %62 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_imager_state, i32 0, i32 5), align 8, !tbaa !58
  %63 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %writer27 = bitcast %union.gx_device_clist_s* %63 to %struct.gx_device_clist_writer_s*
  %imager_state = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %writer27, i32 0, i32 80
  %64 = bitcast %struct.gs_imager_state_s* %imager_state to i8*
  %65 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %62(i8* %64, i32 1616, %struct.gs_memory_struct_type_s* @st_imager_state, %struct.gc_state_s* %65) #4
  br label %if.end.43

if.else:                                          ; preds = %entry
  %66 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %67 = bitcast %struct.gc_state_s* %66 to %struct.gc_procs_common_s**
  %68 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %67, align 8, !tbaa !1
  %reloc_struct_ptr28 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %68, i32 0, i32 0
  %69 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr28, align 8, !tbaa !59
  %70 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %reader = bitcast %union.gx_device_clist_s* %70 to %struct.gx_device_clist_reader_s*
  %offset_map = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %reader, i32 0, i32 69
  %71 = load i8*, i8** %offset_map, align 8, !tbaa !53
  %72 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call29 = call i8* %69(i8* %71, %struct.gc_state_s* %72) #4
  %73 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %reader30 = bitcast %union.gx_device_clist_s* %73 to %struct.gx_device_clist_reader_s*
  %offset_map31 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %reader30, i32 0, i32 69
  store i8* %call29, i8** %offset_map31, align 8, !tbaa !53
  %74 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %75 = bitcast %struct.gc_state_s* %74 to %struct.gc_procs_common_s**
  %76 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %75, align 8, !tbaa !1
  %reloc_struct_ptr32 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %76, i32 0, i32 0
  %77 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr32, align 8, !tbaa !59
  %78 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %reader33 = bitcast %union.gx_device_clist_s* %78 to %struct.gx_device_clist_reader_s*
  %icc_table34 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %reader33, i32 0, i32 61
  %79 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table34, align 8, !tbaa !56
  %80 = bitcast %struct.clist_icctable_s* %79 to i8*
  %81 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call35 = call i8* %77(i8* %80, %struct.gc_state_s* %81) #4
  %82 = bitcast i8* %call35 to %struct.clist_icctable_s*
  %83 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %reader36 = bitcast %union.gx_device_clist_s* %83 to %struct.gx_device_clist_reader_s*
  %icc_table37 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %reader36, i32 0, i32 61
  store %struct.clist_icctable_s* %82, %struct.clist_icctable_s** %icc_table37, align 8, !tbaa !56
  %84 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %85 = bitcast %struct.gc_state_s* %84 to %struct.gc_procs_common_s**
  %86 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %85, align 8, !tbaa !1
  %reloc_struct_ptr38 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %86, i32 0, i32 0
  %87 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr38, align 8, !tbaa !59
  %88 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %reader39 = bitcast %union.gx_device_clist_s* %88 to %struct.gx_device_clist_reader_s*
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %reader39, i32 0, i32 67
  %89 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !57
  %90 = bitcast %struct.gx_colors_usage_s* %89 to i8*
  %91 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call40 = call i8* %87(i8* %90, %struct.gc_state_s* %91) #4
  %92 = bitcast i8* %call40 to %struct.gx_colors_usage_s*
  %93 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %reader41 = bitcast %union.gx_device_clist_s* %93 to %struct.gx_device_clist_reader_s*
  %color_usage_array42 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %reader41, i32 0, i32 67
  store %struct.gx_colors_usage_s* %92, %struct.gx_colors_usage_s** %color_usage_array42, align 8, !tbaa !57
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.end
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @clist_open(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %save_is_open = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %save_is_open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 9
  %5 = load i32, i32* %is_open, align 4, !tbaa !61
  store i32 %5, i32* %save_is_open, align 4, !tbaa !5
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 95
  store i32 0, i32* %permanent_error, align 4, !tbaa !63
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %is_open1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 9
  store i32 0, i32* %is_open1, align 4, !tbaa !64
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @clist_init(%struct.gx_device_s* %9) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list_len = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 63
  store i32 0, i32* %icc_cache_list_len, align 4, !tbaa !65
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 64
  store %struct.gsicc_link_cache_s** null, %struct.gsicc_link_cache_s*** %icc_cache_list, align 8, !tbaa !66
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call2 = call i32 @clist_open_output_file(%struct.gx_device_s* %14) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %15, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call5 = call i32 @clist_emit_page_header(%struct.gx_device_s* %16) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp sge i32 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %18 = load i32, i32* %save_is_open, align 4, !tbaa !5
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 9
  store i32 %18, i32* %is_open9, align 4, !tbaa !61
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast i32* %save_is_open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @gx_forward_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #1

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define i32 @clist_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  ret i32 -100
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_close(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %i = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %3 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list_len = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 63
  %6 = load i32, i32* %icc_cache_list_len, align 4, !tbaa !65
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 64
  %9 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list, align 8, !tbaa !66
  %arrayidx = getelementptr inbounds %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %9, i64 %idxprom
  %10 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %arrayidx, align 8, !tbaa !1
  %tobool = icmp ne %struct.gsicc_link_cache_s* %10, null
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 64
  %13 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list4, align 8, !tbaa !66
  %arrayidx5 = getelementptr inbounds %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %13, i64 %idxprom3
  %14 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %arrayidx5, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %14, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %15 = load i64, i64* %ref_count, align 8, !tbaa !67
  %add = add nsw i64 %15, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !67
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list9 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 64
  %18 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list9, align 8, !tbaa !66
  %arrayidx10 = getelementptr inbounds %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %18, i64 %idxprom8
  %19 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %arrayidx10, align 8, !tbaa !1
  %rc11 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %19, i32 0, i32 2
  %ref_count12 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc11, i32 0, i32 0
  %20 = load i64, i64* %ref_count12, align 8, !tbaa !67
  %tobool13 = icmp ne i64 %20, 0
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %do.end.7
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.body.15
  br label %do.cond.17

do.cond.17:                                       ; preds = %do.body.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %21 to i64
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list20 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 64
  %23 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list20, align 8, !tbaa !66
  %arrayidx21 = getelementptr inbounds %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %23, i64 %idxprom19
  %24 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %arrayidx21, align 8, !tbaa !1
  %rc22 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %24, i32 0, i32 2
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc22, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !69
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %26 to i64
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list24 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 64
  %28 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list24, align 8, !tbaa !66
  %arrayidx25 = getelementptr inbounds %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %28, i64 %idxprom23
  %29 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %arrayidx25, align 8, !tbaa !1
  %rc26 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %29, i32 0, i32 2
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc26, i32 0, i32 1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !70
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %31 to i64
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list28 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 64
  %33 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list28, align 8, !tbaa !66
  %arrayidx29 = getelementptr inbounds %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %33, i64 %idxprom27
  %34 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %arrayidx29, align 8, !tbaa !1
  %35 = bitcast %struct.gsicc_link_cache_s* %34 to i8*
  call void %25(%struct.gs_memory_s* %30, i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #4
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.end.18
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %36 to i64
  %37 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list33 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %37, i32 0, i32 64
  %38 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list33, align 8, !tbaa !66
  %arrayidx34 = getelementptr inbounds %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %38, i64 %idxprom32
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %arrayidx34, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %do.end.7
  br label %do.body.35

do.body.35:                                       ; preds = %if.else
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.body.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  br label %if.end

if.end:                                           ; preds = %do.end.37, %do.end.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %do.body
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  br label %for.inc

for.inc:                                          ; preds = %do.end.40
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list_len41 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %40, i32 0, i32 63
  store i32 0, i32* %icc_cache_list_len41, align 4, !tbaa !65
  %41 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory42, align 8, !tbaa !71
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 4
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !72
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %44 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !75
  %45 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !71
  %thread_safe_memory44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 4
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory44, align 8, !tbaa !72
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list45 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 64
  %49 = load %struct.gsicc_link_cache_s**, %struct.gsicc_link_cache_s*** %icc_cache_list45, align 8, !tbaa !66
  %50 = bitcast %struct.gsicc_link_cache_s** %49 to i8*
  call void %44(%struct.gs_memory_s* %47, i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #4
  %51 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_list46 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %51, i32 0, i32 64
  store %struct.gsicc_link_cache_s** null, %struct.gsicc_link_cache_s*** %icc_cache_list46, align 8, !tbaa !66
  %52 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %52, i32 0, i32 49
  %53 = load i32, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !76
  %tobool47 = icmp ne i32 %53, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %for.end
  %54 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %procs50 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %54, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs50, i32 0, i32 0
  %open_device51 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  %55 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device51, align 8, !tbaa !77
  %cmp52 = icmp eq i32 (%struct.gx_device_s*)* %55, @pattern_clist_open_device
  br i1 %cmp52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.end.49
  %56 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %56, i32 0, i32 45
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !78
  %procs54 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 1
  %free_object55 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs54, i32 0, i32 2
  %58 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object55, align 8, !tbaa !75
  %59 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %bandlist_memory56 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %59, i32 0, i32 45
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory56, align 8, !tbaa !78
  %61 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %61, i32 0, i32 46
  %62 = load i8*, i8** %data, align 8, !tbaa !79
  call void %58(%struct.gs_memory_s* %60, i8* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #4
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %data57 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 46
  store i8* null, i8** %data57, align 8, !tbaa !79
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %if.end.49
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @clist_close_output_file(%struct.gx_device_s* %64) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.48
  %65 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare i64 @gx_forward_map_rgb_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_forward_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

declare i32 @clist_fill_rectangle(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

declare i32 @clist_copy_mono(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #1

declare i32 @clist_copy_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32) #1

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #1

declare i32 @gx_forward_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_forward_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i64 @gx_forward_map_cmyk_color(%struct.gx_device_s*, i16*) #1

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #1

declare %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s*) #1

declare i64 @gx_forward_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #1

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #1

declare i32 @clist_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @clist_get_band(%struct.gx_device_s* %dev, i32 %y, i32* %band_start) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %band_start.addr = alloca i32*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %band_height = alloca i32, align 4
  %start = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32* %band_start, i32** %band_start.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %5 = load i32, i32* %BandHeight, align 4, !tbaa !80
  store i32 %5, i32* %band_height, align 4, !tbaa !5
  %6 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.4

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 14
  %10 = load i32, i32* %height, align 4, !tbaa !81
  %cmp1 = icmp sge i32 %8, %10
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 14
  %12 = load i32, i32* %height3, align 4, !tbaa !81
  store i32 %12, i32* %y.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %y.addr, align 4, !tbaa !5
  %15 = load i32, i32* %band_height, align 4, !tbaa !5
  %rem = srem i32 %14, %15
  %sub = sub nsw i32 %13, %rem
  store i32 %sub, i32* %start, align 4, !tbaa !5
  %16 = load i32*, i32** %band_start.addr, align 8, !tbaa !1
  store i32 %sub, i32* %16, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 14
  %18 = load i32, i32* %height5, align 4, !tbaa !81
  %19 = load i32, i32* %start, align 4, !tbaa !5
  %sub6 = sub nsw i32 %18, %19
  %20 = load i32, i32* %band_height, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %sub6, %20
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 14
  %22 = load i32, i32* %height8, align 4, !tbaa !81
  %23 = load i32, i32* %start, align 4, !tbaa !5
  %sub9 = sub nsw i32 %22, %23
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %24 = load i32, i32* %band_height, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub9, %cond.true ], [ %24, %cond.false ]
  %25 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret i32 %cond
}

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @clist_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @clist_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @clist_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #1

declare i32 @clist_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @clist_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @clist_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #1

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #1

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #1

declare i32 @clist_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

declare i32 @clist_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gx_forward_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @clist_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @clist_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #1

declare i32 @gx_forward_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #1

declare i32 @clist_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #1

declare i32 @gx_forward_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #1

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #1

declare %struct.gx_cm_color_map_procs_s* @gx_forward_get_color_mapping_procs(%struct.gx_device_s*) #1

declare i32 @gx_forward_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #1

declare i64 @gx_forward_encode_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_forward_decode_color(%struct.gx_device_s*, i64, i16*) #1

declare i32 @clist_fill_rectangle_hl_color(%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_include_color_space(%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32) #1

declare i32 @gx_default_fill_linear_color_scanline(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare i32 @clist_fill_linear_color_trapezoid(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*) #1

declare i32 @clist_fill_linear_color_triangle(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*) #1

declare i32 @gx_forward_update_spot_equivalent_colors(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare %struct.gs_devn_params_s* @gx_forward_ret_devn_params(%struct.gx_device_s*) #1

declare i32 @clist_fillpage(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #1

declare i32 @clist_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #1

declare i32 @clist_copy_planes(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32) #1

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #1

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #1

declare i32 @clist_strip_copy_rop2(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @clist_strip_tile_rect_devn(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32) #1

declare i32 @clist_copy_alpha_hl_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @clist_process_page(%struct.gx_device_s*, %struct.gx_process_page_options_s*) #1

; Function Attrs: nounwind uwtable
define void @clist_init_io_procs(%union.gx_device_clist_s* %pclist_dev, i32 %in_memory) #0 {
entry:
  %pclist_dev.addr = alloca %union.gx_device_clist_s*, align 8
  %in_memory.addr = alloca i32, align 4
  store %union.gx_device_clist_s* %pclist_dev, %union.gx_device_clist_s** %pclist_dev.addr, align 8, !tbaa !1
  store i32 %in_memory, i32* %in_memory.addr, align 4, !tbaa !5
  %0 = load i32, i32* %in_memory.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** @clist_io_procs_file_global, align 8, !tbaa !1
  %cmp = icmp eq %struct.clist_io_procs_s* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** @clist_io_procs_memory_global, align 8, !tbaa !1
  %3 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev.addr, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %3 to %struct.gx_device_clist_common_s*
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 4
  store %struct.clist_io_procs_s* %2, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !82
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** @clist_io_procs_file_global, align 8, !tbaa !1
  %5 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %pclist_dev.addr, align 8, !tbaa !1
  %common1 = bitcast %union.gx_device_clist_s* %5 to %struct.gx_device_clist_common_s*
  %page_info2 = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common1, i32 0, i32 58
  %io_procs3 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info2, i32 0, i32 4
  store %struct.clist_io_procs_s* %4, %struct.clist_io_procs_s** %io_procs3, align 8, !tbaa !82
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.gx_color_map_procs_s* @gx_default_get_cmap_procs(%struct.gs_imager_state_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define i32 @clist_close_page_info(%struct.gx_band_page_info_s* %ppi) #0 {
entry:
  %ppi.addr = alloca %struct.gx_band_page_info_s*, align 8
  store %struct.gx_band_page_info_s* %ppi, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %0 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %cfile, align 8, !tbaa !83
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %2, i32 0, i32 4
  %3 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !84
  %fclose = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %3, i32 0, i32 1
  %4 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose, align 8, !tbaa !85
  %5 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %cfile1 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %cfile1, align 8, !tbaa !83
  %7 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  %call = call i32 %4(i8* %6, i8* %arraydecay, i32 1) #4
  %8 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %cfile2 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %8, i32 0, i32 1
  store i8* null, i8** %cfile2, align 8, !tbaa !83
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %9, i32 0, i32 3
  %10 = load i8*, i8** %bfile, align 8, !tbaa !87
  %cmp3 = icmp ne i8* %10, null
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.end
  %11 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %io_procs5 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %11, i32 0, i32 4
  %12 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs5, align 8, !tbaa !84
  %fclose6 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %12, i32 0, i32 1
  %13 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %fclose6, align 8, !tbaa !85
  %14 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %bfile7 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %14, i32 0, i32 3
  %15 = load i8*, i8** %bfile7, align 8, !tbaa !87
  %16 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %16, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  %call9 = call i32 %13(i8* %15, i8* %arraydecay8, i32 1) #4
  %17 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %ppi.addr, align 8, !tbaa !1
  %bfile10 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %17, i32 0, i32 3
  store i8* null, i8** %bfile10, align 8, !tbaa !87
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.4, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @clist_close_output_file(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 58
  %call = call i32 @clist_close_page_info(%struct.gx_band_page_info_s* %page_info) #4
  %4 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @clist_init(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @clist_reset(%struct.gx_device_s* %4) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %image_enum_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %6, i32 0, i32 93
  store i64 0, i64* %image_enum_id, align 8, !tbaa !28
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 94
  store i32 0, i32* %error_is_retryable, align 4, !tbaa !88
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 96
  store i32 0, i32* %driver_call_nesting, align 4, !tbaa !89
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %ignore_lo_mem_warnings = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 97
  store i32 0, i32* %ignore_lo_mem_warnings, align 4, !tbaa !90
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_open_output_file(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %fmode = alloca [4 x i8], align 1
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 49
  %6 = load i32, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !76
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  store i8* null, i8** %cfile, align 8, !tbaa !91
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info1, i32 0, i32 3
  store i8* null, i8** %bfile, align 8, !tbaa !92
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @clist_init(%struct.gx_device_s* %9) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call4 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #5
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %call6 = call i8* @strcat(i8* %arraydecay5, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_fmode_binary_suffix, i32 0, i32 0)) #5
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info7 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info7, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !93
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info8 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info8, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i64 0
  store i8 0, i8* %arrayidx9, align 1, !tbaa !93
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_reset_page(%struct.gx_device_clist_writer_s* %14) #4
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info10 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %15, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info10, i32 0, i32 4
  %16 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !94
  %DO_NOT_USE_FOPEN = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %16, i32 0, i32 0
  %17 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN, align 8, !tbaa !95
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info11 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 58
  %cfname12 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info11, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname12, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info15 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 58
  %cfile16 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info15, i32 0, i32 1
  %20 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %20, i32 0, i32 45
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !78
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %bandlist_memory17 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 45
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory17, align 8, !tbaa !78
  %call18 = call i32 %17(i8* %arraydecay13, i8* %arraydecay14, i8** %cfile16, %struct.gs_memory_s* %21, %struct.gs_memory_s* %23, i32 1) #4
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %24 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info20 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %24, i32 0, i32 58
  %io_procs21 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info20, i32 0, i32 4
  %25 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs21, align 8, !tbaa !94
  %DO_NOT_USE_FOPEN22 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %25, i32 0, i32 0
  %26 = load i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)** %DO_NOT_USE_FOPEN22, align 8, !tbaa !95
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info23 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 58
  %bfname24 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info23, i32 0, i32 2
  %arraydecay25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname24, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [4 x i8], [4 x i8]* %fmode, i32 0, i32 0
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info27 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %28, i32 0, i32 58
  %bfile28 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info27, i32 0, i32 3
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %bandlist_memory29 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %29, i32 0, i32 45
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory29, align 8, !tbaa !78
  %31 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %bandlist_memory30 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %31, i32 0, i32 45
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bandlist_memory30, align 8, !tbaa !78
  %call31 = call i32 %26(i8* %arraydecay25, i8* %arraydecay26, i8** %bfile28, %struct.gs_memory_s* %30, %struct.gs_memory_s* %32, i32 0) #4
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call34 = call i32 @clist_reinit_output_file(%struct.gx_device_s* %33) #4
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %lor.lhs.false.33, %lor.lhs.false, %if.end.3
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call37 = call i32 @clist_close_output_file(%struct.gx_device_s* %34) #4
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 95
  store i32 %35, i32* %permanent_error, align 4, !tbaa !63
  %37 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %37, i32 0, i32 94
  store i32 0, i32* %error_is_retryable, align 4, !tbaa !88
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %lor.lhs.false.33
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.2, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast [4 x i8]* %fmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_emit_page_header(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 99
  %5 = load i32, i32* %disable_mask, align 4, !tbaa !96
  %and = and i32 %5, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %call = call i32 @clist_put_current_params(%struct.gx_device_clist_writer_s* %6) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %call2 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %7, i32 %8) #4
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.1
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %10 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ]
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %11, i32 0, i32 95
  store i32 %cond, i32* %permanent_error, align 4, !tbaa !63
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error5 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 95
  %13 = load i32, i32* %permanent_error5, align 4, !tbaa !63
  %cmp6 = icmp slt i32 %13, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %cond.end
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 94
  store i32 0, i32* %error_is_retryable, align 4, !tbaa !88
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %cond.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @clist_finish_page(%struct.gx_device_s* %dev, i32 %flush) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %flush.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  %crdev = alloca %struct.gx_device_clist_reader_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %union.gx_device_clist_s*
  %common = bitcast %union.gx_device_clist_s* %5 to %struct.gx_device_clist_common_s*
  %ymin = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 56
  %6 = load i32, i32* %ymin, align 4, !tbaa !11
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.end.36, label %if.then

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_s* %8 to %union.gx_device_clist_s*
  %reader = bitcast %union.gx_device_clist_s* %9 to %struct.gx_device_clist_reader_s*
  store %struct.gx_device_clist_reader_s* %reader, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !71
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !75
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !71
  %15 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %15, i32 0, i32 67
  %16 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !57
  %17 = bitcast %struct.gx_colors_usage_s* %16 to i8*
  call void %12(%struct.gs_memory_s* %14, i8* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #4
  %18 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %color_usage_array2 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %18, i32 0, i32 67
  store %struct.gx_colors_usage_s* null, %struct.gx_colors_usage_s** %color_usage_array2, align 8, !tbaa !57
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @clist_teardown_render_threads(%struct.gx_device_s* %19) #4
  %20 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %20, i32 0, i32 61
  %21 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !56
  %22 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !97
  %call = call i32 @clist_free_icc_table(%struct.clist_icctable_s* %21, %struct.gs_memory_s* %23) #4
  %24 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_table4 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %24, i32 0, i32 61
  store %struct.clist_icctable_s* null, %struct.clist_icctable_s** %icc_table4, align 8, !tbaa !56
  br label %do.body

do.body:                                          ; preds = %if.then
  %25 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %25, i32 0, i32 62
  %26 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !98
  %tobool = icmp ne %struct.gsicc_link_cache_s* %26, null
  br i1 %tobool, label %if.then.5, label %if.end.32

if.then.5:                                        ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.body.6
  br label %do.cond

do.cond:                                          ; preds = %do.body.7
  br label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl8 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %27, i32 0, i32 62
  %28 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl8, align 8, !tbaa !98
  %rc = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %28, i32 0, i32 2
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %29 = load i64, i64* %ref_count, align 8, !tbaa !67
  %add = add nsw i64 %29, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !67
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.end
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  %30 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl11 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %30, i32 0, i32 62
  %31 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl11, align 8, !tbaa !98
  %rc12 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %31, i32 0, i32 2
  %ref_count13 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc12, i32 0, i32 0
  %32 = load i64, i64* %ref_count13, align 8, !tbaa !67
  %tobool14 = icmp ne i64 %32, 0
  br i1 %tobool14, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %do.end.10
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.body.16
  br label %do.cond.18

do.cond.18:                                       ; preds = %do.body.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.cond.18
  %33 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl20 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %33, i32 0, i32 62
  %34 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl20, align 8, !tbaa !98
  %rc21 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %34, i32 0, i32 2
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 2
  %35 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !69
  %36 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl22 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %36, i32 0, i32 62
  %37 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl22, align 8, !tbaa !98
  %rc23 = getelementptr inbounds %struct.gsicc_link_cache_s, %struct.gsicc_link_cache_s* %37, i32 0, i32 2
  %memory24 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc23, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !70
  %39 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl25 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %39, i32 0, i32 62
  %40 = load %struct.gsicc_link_cache_s*, %struct.gsicc_link_cache_s** %icc_cache_cl25, align 8, !tbaa !98
  %41 = bitcast %struct.gsicc_link_cache_s* %40 to i8*
  call void %35(%struct.gs_memory_s* %38, i8* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.end.19
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  %42 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl28 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %42, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl28, align 8, !tbaa !98
  br label %if.end

if.else:                                          ; preds = %do.end.10
  br label %do.body.29

do.body.29:                                       ; preds = %if.else
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.body.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %if.end

if.end:                                           ; preds = %do.end.31, %do.end.27
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %do.body
  br label %do.cond.33

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  %43 = load %struct.gx_device_clist_reader_s*, %struct.gx_device_clist_reader_s** %crdev, align 8, !tbaa !1
  %icc_cache_cl35 = getelementptr inbounds %struct.gx_device_clist_reader_s, %struct.gx_device_clist_reader_s* %43, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl35, align 8, !tbaa !98
  %44 = bitcast %struct.gx_device_clist_reader_s** %crdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.34, %entry
  %45 = load i32, i32* %flush.addr, align 4, !tbaa !5
  %tobool37 = icmp ne i32 %45, 0
  br i1 %tobool37, label %if.then.38, label %if.else.57

if.then.38:                                       ; preds = %if.end.36
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %47 = load i8*, i8** %cfile, align 8, !tbaa !91
  %cmp39 = icmp ne i8* %47, null
  br i1 %cmp39, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.then.38
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info41 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info41, i32 0, i32 4
  %49 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !94
  %rewind = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %49, i32 0, i32 8
  %50 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %rewind, align 8, !tbaa !99
  %51 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info42 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %51, i32 0, i32 58
  %cfile43 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info42, i32 0, i32 1
  %52 = load i8*, i8** %cfile43, align 8, !tbaa !91
  %53 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info44 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %53, i32 0, i32 58
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info44, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  call void %50(i8* %52, i32 1, i8* %arraydecay) #4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.40, %if.then.38
  %54 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info46 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %54, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info46, i32 0, i32 3
  %55 = load i8*, i8** %bfile, align 8, !tbaa !92
  %cmp47 = icmp ne i8* %55, null
  br i1 %cmp47, label %if.then.48, label %if.end.56

if.then.48:                                       ; preds = %if.end.45
  %56 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info49 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %56, i32 0, i32 58
  %io_procs50 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info49, i32 0, i32 4
  %57 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs50, align 8, !tbaa !94
  %rewind51 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %57, i32 0, i32 8
  %58 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %rewind51, align 8, !tbaa !99
  %59 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info52 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %59, i32 0, i32 58
  %bfile53 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info52, i32 0, i32 3
  %60 = load i8*, i8** %bfile53, align 8, !tbaa !92
  %61 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info54 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %61, i32 0, i32 58
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info54, i32 0, i32 2
  %arraydecay55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  call void %58(i8* %60, i32 1, i8* %arraydecay55) #4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.48, %if.end.45
  %62 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_reset_page(%struct.gx_device_clist_writer_s* %62) #4
  br label %if.end.85

if.else.57:                                       ; preds = %if.end.36
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info58 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 58
  %cfile59 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info58, i32 0, i32 1
  %64 = load i8*, i8** %cfile59, align 8, !tbaa !91
  %cmp60 = icmp ne i8* %64, null
  br i1 %cmp60, label %if.then.61, label %if.end.70

if.then.61:                                       ; preds = %if.else.57
  %65 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info62 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %65, i32 0, i32 58
  %io_procs63 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info62, i32 0, i32 4
  %66 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs63, align 8, !tbaa !94
  %fseek = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %66, i32 0, i32 9
  %67 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek, align 8, !tbaa !100
  %68 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info64 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %68, i32 0, i32 58
  %cfile65 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info64, i32 0, i32 1
  %69 = load i8*, i8** %cfile65, align 8, !tbaa !91
  %70 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info66 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %70, i32 0, i32 58
  %cfname67 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info66, i32 0, i32 0
  %arraydecay68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname67, i32 0, i32 0
  %call69 = call i32 %67(i8* %69, i64 0, i32 2, i8* %arraydecay68) #4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.61, %if.else.57
  %71 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info71 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %71, i32 0, i32 58
  %bfile72 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info71, i32 0, i32 3
  %72 = load i8*, i8** %bfile72, align 8, !tbaa !92
  %cmp73 = icmp ne i8* %72, null
  br i1 %cmp73, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %if.end.70
  %73 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info75 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %73, i32 0, i32 58
  %io_procs76 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info75, i32 0, i32 4
  %74 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs76, align 8, !tbaa !94
  %fseek77 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %74, i32 0, i32 9
  %75 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek77, align 8, !tbaa !100
  %76 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info78 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %76, i32 0, i32 58
  %bfile79 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info78, i32 0, i32 3
  %77 = load i8*, i8** %bfile79, align 8, !tbaa !92
  %78 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info80 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %78, i32 0, i32 58
  %bfname81 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info80, i32 0, i32 2
  %arraydecay82 = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname81, i32 0, i32 0
  %call83 = call i32 %75(i8* %77, i64 0, i32 2, i8* %arraydecay82) #4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.74, %if.end.70
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.56
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call86 = call i32 @clist_init(%struct.gx_device_s* %79) #4
  store i32 %call86, i32* %code, align 4, !tbaa !5
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp87 = icmp sge i32 %80, 0
  br i1 %cmp87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.end.85
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call89 = call i32 @clist_reinit_output_file(%struct.gx_device_s* %81) #4
  store i32 %call89, i32* %code, align 4, !tbaa !5
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.end.85
  %82 = load i32, i32* %code, align 4, !tbaa !5
  %cmp91 = icmp sge i32 %82, 0
  br i1 %cmp91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.90
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call93 = call i32 @clist_emit_page_header(%struct.gx_device_s* %83) #4
  store i32 %call93, i32* %code, align 4, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.end.90
  %84 = load i32, i32* %code, align 4, !tbaa !5
  %85 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  ret i32 %84
}

declare void @clist_teardown_render_threads(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define i32 @clist_free_icc_table(%struct.clist_icctable_s* %icc_table, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i32, align 4
  %icc_table.addr = alloca %struct.clist_icctable_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %number_entries = alloca i32, align 4
  %curr_entry = alloca %struct.clist_icctable_entry_s*, align 8
  %next_entry = alloca %struct.clist_icctable_entry_s*, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.clist_icctable_s* %icc_table, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %number_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.clist_icctable_entry_s** %next_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.clist_icctable_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  %tablesize = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %5, i32 0, i32 0
  %6 = load i32, i32* %tablesize, align 4, !tbaa !101
  store i32 %6, i32* %number_entries, align 4, !tbaa !5
  %7 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %7, i32 0, i32 2
  %8 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %head, align 8, !tbaa !103
  store %struct.clist_icctable_entry_s* %8, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %k, align 4, !tbaa !5
  %10 = load i32, i32* %number_entries, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %9, %10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %11, i32 0, i32 1
  %12 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %next, align 8, !tbaa !104
  store %struct.clist_icctable_entry_s* %12, %struct.clist_icctable_entry_s** %next_entry, align 8, !tbaa !1
  %13 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %13, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !107
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !75
  %16 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %16, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !107
  %18 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %19 = bitcast %struct.clist_icctable_entry_s* %18 to i8*
  call void %15(%struct.gs_memory_s* %17, i8* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #4
  %20 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %next_entry, align 8, !tbaa !1
  store %struct.clist_icctable_entry_s* %20, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %22, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !107
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object6, align 8, !tbaa !75
  %25 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %25, i32 0, i32 1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !107
  %27 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table.addr, align 8, !tbaa !1
  %28 = bitcast %struct.clist_icctable_s* %27 to i8*
  call void %24(%struct.gs_memory_s* %26, i8* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %29 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.clist_icctable_entry_s** %next_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast i32* %number_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal void @clist_reset_page(%struct.gx_device_clist_writer_s* %cwdev) #0 {
entry:
  %cwdev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  store %struct.gx_device_clist_writer_s* %cwdev, %struct.gx_device_clist_writer_s** %cwdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev.addr, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %0, i32 0, i32 58
  %bfile_end_pos = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 7
  store i64 0, i64* %bfile_end_pos, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_reinit_output_file(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  %b_block = alloca i32, align 4
  %c_block = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %b_block to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 59
  %6 = load i32, i32* %nbands, align 4, !tbaa !109
  %add = add nsw i32 %6, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 16, %conv
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %b_block, align 4, !tbaa !5
  %7 = bitcast i32* %c_block to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 69
  %9 = load i8*, i8** %cend, align 8, !tbaa !110
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 67
  %11 = load i8*, i8** %cbuf, align 8, !tbaa !111
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add2 = add nsw i64 %sub.ptr.sub, 2
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %nbands3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 59
  %13 = load i32, i32* %nbands3, align 4, !tbaa !109
  %mul4 = mul nsw i32 %13, 2
  %conv5 = sext i32 %mul4 to i64
  %add6 = add nsw i64 %add2, %conv5
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %nbands7 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 59
  %15 = load i32, i32* %nbands7, align 4, !tbaa !109
  %add8 = add nsw i32 %15, 1
  %conv9 = sext i32 %add8 to i64
  %add10 = add nsw i64 %add6, %conv9
  %conv11 = trunc i64 %add10 to i32
  store i32 %conv11, i32* %c_block, align 4, !tbaa !5
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %free_up_bandlist_memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 98
  %17 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %free_up_bandlist_memory, align 8, !tbaa !112
  %cmp = icmp ne i32 (%struct.gx_device_s*, i32)* %17, null
  br i1 %cmp, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 3
  %19 = load i8*, i8** %bfile, align 8, !tbaa !92
  %cmp13 = icmp ne i8* %19, null
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %20 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info16 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %20, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info16, i32 0, i32 4
  %21 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !94
  %set_memory_warning = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %21, i32 0, i32 5
  %22 = load i32 (i8*, i32)*, i32 (i8*, i32)** %set_memory_warning, align 8, !tbaa !113
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info17 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 58
  %bfile18 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info17, i32 0, i32 3
  %24 = load i8*, i8** %bfile18, align 8, !tbaa !92
  %25 = load i32, i32* %b_block, align 4, !tbaa !5
  %call = call i32 %22(i8* %24, i32 %25) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %cmp19 = icmp sge i32 %26, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info21 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info21, i32 0, i32 1
  %28 = load i8*, i8** %cfile, align 8, !tbaa !91
  %cmp22 = icmp ne i8* %28, null
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %land.lhs.true
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info25 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %29, i32 0, i32 58
  %io_procs26 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info25, i32 0, i32 4
  %30 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs26, align 8, !tbaa !94
  %set_memory_warning27 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %30, i32 0, i32 5
  %31 = load i32 (i8*, i32)*, i32 (i8*, i32)** %set_memory_warning27, align 8, !tbaa !113
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info28 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 58
  %cfile29 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info28, i32 0, i32 1
  %33 = load i8*, i8** %cfile29, align 8, !tbaa !91
  %34 = load i32, i32* %c_block, align 4, !tbaa !5
  %call30 = call i32 %31(i8* %33, i32 %34) #4
  store i32 %call30, i32* %code, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %land.lhs.true, %if.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %entry
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %36 = bitcast i32* %c_block to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %b_block to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @clist_end_page(%struct.gx_device_clist_writer_s* %cldev) #0 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  %cb = alloca %struct.cmd_block_s, align 8
  %ecode = alloca i32, align 4
  %skip_count = alloca i32, align 4
  %band = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.cmd_block_s* %cb to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %call = call i32 @cmd_write_buffer(%struct.gx_device_clist_writer_s* %3, i8 zeroext 11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 61
  %5 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !52
  %cmp = icmp ne %struct.clist_icctable_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %call1 = call i32 @clist_icc_writetable(%struct.gx_device_clist_writer_s* %6) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %icc_table2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 61
  %8 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table2, align 8, !tbaa !52
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !71
  %call3 = call i32 @clist_free_icc_table(%struct.clist_icctable_s* %8, %struct.gs_memory_s* %10) #4
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %icc_table4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %11, i32 0, i32 61
  store %struct.clist_icctable_s* null, %struct.clist_icctable_s** %icc_table4, align 8, !tbaa !52
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %12, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %call7 = call i32 @clist_write_color_usage_array(%struct.gx_device_clist_writer_s* %13) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %14, 0
  br i1 %cmp9, label %if.then.10, label %if.end.24

if.then.10:                                       ; preds = %if.end.8
  %15 = bitcast %struct.cmd_block_s* %cb to i8*
  %call11 = call i8* @memset(i8* %15, i32 0, i64 16) #5
  %band_max = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %cb, i32 0, i32 1
  store i32 -1, i32* %band_max, align 4, !tbaa !114
  %band_min = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %cb, i32 0, i32 0
  store i32 -1, i32* %band_min, align 4, !tbaa !116
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 58
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %17 = load i8*, i8** %cfile, align 8, !tbaa !91
  %cmp12 = icmp eq i8* %17, null
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info13 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info13, i32 0, i32 4
  %19 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !94
  %ftell = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %19, i32 0, i32 7
  %20 = load i64 (i8*)*, i64 (i8*)** %ftell, align 8, !tbaa !117
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info14 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 58
  %cfile15 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info14, i32 0, i32 1
  %22 = load i8*, i8** %cfile15, align 8, !tbaa !91
  %call16 = call i64 %20(i8* %22) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call16, %cond.false ]
  %pos = getelementptr inbounds %struct.cmd_block_s, %struct.cmd_block_s* %cb, i32 0, i32 2
  store i64 %cond, i64* %pos, align 8, !tbaa !118
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info17 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 58
  %io_procs18 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info17, i32 0, i32 4
  %24 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs18, align 8, !tbaa !94
  %fwrite_chars = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %24, i32 0, i32 3
  %25 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fwrite_chars, align 8, !tbaa !119
  %26 = bitcast %struct.cmd_block_s* %cb to i8*
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info19 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 58
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info19, i32 0, i32 3
  %28 = load i8*, i8** %bfile, align 8, !tbaa !92
  %call20 = call i32 %25(i8* %26, i32 16, i8* %28) #4
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %29, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %cond.end
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %cond.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.8
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp sge i32 %30, 0
  br i1 %cmp25, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %if.end.24
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %ecode, align 4, !tbaa !5
  %or = or i32 %32, %31
  store i32 %or, i32* %ecode, align 4, !tbaa !5
  %33 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info27 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %33, i32 0, i32 58
  %io_procs28 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info27, i32 0, i32 4
  %34 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs28, align 8, !tbaa !94
  %ftell29 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %34, i32 0, i32 7
  %35 = load i64 (i8*)*, i64 (i8*)** %ftell29, align 8, !tbaa !117
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info30 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 58
  %bfile31 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info30, i32 0, i32 3
  %37 = load i8*, i8** %bfile31, align 8, !tbaa !92
  %call32 = call i64 %35(i8* %37) #4
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info33 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 58
  %bfile_end_pos = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info33, i32 0, i32 7
  store i64 %call32, i64* %bfile_end_pos, align 8, !tbaa !108
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.26, %if.end.24
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %39, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %ecode, align 4, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  %41 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info38 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %41, i32 0, i32 58
  %bfile39 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info38, i32 0, i32 3
  %42 = load i8*, i8** %bfile39, align 8, !tbaa !92
  %cmp40 = icmp ne i8* %42, null
  br i1 %cmp40, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %if.end.37
  %43 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info42 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %43, i32 0, i32 58
  %io_procs43 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info42, i32 0, i32 4
  %44 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs43, align 8, !tbaa !94
  %set_memory_warning = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %44, i32 0, i32 5
  %45 = load i32 (i8*, i32)*, i32 (i8*, i32)** %set_memory_warning, align 8, !tbaa !113
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info44 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 58
  %bfile45 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info44, i32 0, i32 3
  %47 = load i8*, i8** %bfile45, align 8, !tbaa !92
  %call46 = call i32 %45(i8* %47, i32 0) #4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.41, %if.end.37
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info48 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 58
  %cfile49 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info48, i32 0, i32 1
  %49 = load i8*, i8** %cfile49, align 8, !tbaa !91
  %cmp50 = icmp ne i8* %49, null
  br i1 %cmp50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %if.end.47
  %50 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info52 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %50, i32 0, i32 58
  %io_procs53 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info52, i32 0, i32 4
  %51 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs53, align 8, !tbaa !94
  %set_memory_warning54 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %51, i32 0, i32 5
  %52 = load i32 (i8*, i32)*, i32 (i8*, i32)** %set_memory_warning54, align 8, !tbaa !113
  %53 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info55 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %53, i32 0, i32 58
  %cfile56 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info55, i32 0, i32 1
  %54 = load i8*, i8** %cfile56, align 8, !tbaa !91
  %call57 = call i32 %52(i8* %54, i32 0) #4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.51, %if.end.47
  %55 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %55, i32 0, i32 37
  %56 = load i32, i32* %page_uses_transparency, align 4, !tbaa !120
  %tobool = icmp ne i32 %56, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.76

land.lhs.true:                                    ; preds = %if.end.58
  %57 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 58), align 1, !tbaa !93
  %conv = sext i8 %57 to i32
  %tobool59 = icmp ne i32 %conv, 0
  br i1 %tobool59, label %if.then.60, label %if.end.76

if.then.60:                                       ; preds = %land.lhs.true
  %58 = bitcast i32* %skip_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #2
  store i32 0, i32* %skip_count, align 4, !tbaa !5
  %59 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  store i32 0, i32* %band, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.60
  %60 = load i32, i32* %band, align 4, !tbaa !5
  %61 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %61, i32 0, i32 59
  %62 = load i32, i32* %nbands, align 4, !tbaa !109
  %sub = sub nsw i32 %62, 1
  %cmp61 = icmp slt i32 %60, %sub
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom = sext i32 %63 to i64
  %64 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %64, i32 0, i32 66
  %65 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !121
  %arrayidx = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %65, i64 %idxprom
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx, i32 0, i32 16
  %trans_bbox = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 2
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %66 = load i32, i32* %y, align 4, !tbaa !122
  %67 = load i32, i32* %band, align 4, !tbaa !5
  %idxprom63 = sext i32 %67 to i64
  %68 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states64 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %68, i32 0, i32 66
  %69 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states64, align 8, !tbaa !121
  %arrayidx65 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %69, i64 %idxprom63
  %color_usage66 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx65, i32 0, i32 16
  %trans_bbox67 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage66, i32 0, i32 2
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %trans_bbox67, i32 0, i32 1
  %y68 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %70 = load i32, i32* %y68, align 4, !tbaa !128
  %cmp69 = icmp sgt i32 %66, %70
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.body
  %71 = load i32, i32* %skip_count, align 4, !tbaa !5
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %skip_count, align 4, !tbaa !5
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %72 = load i32, i32* %band, align 4, !tbaa !5
  %inc73 = add nsw i32 %72, 1
  store i32 %inc73, i32* %band, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load i32, i32* %skip_count, align 4, !tbaa !5
  %74 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands74 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %74, i32 0, i32 59
  %75 = load i32, i32* %nbands74, align 4, !tbaa !109
  %call75 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 %73, i32 %75) #4
  %76 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %skip_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  br label %if.end.76

if.end.76:                                        ; preds = %for.end, %land.lhs.true, %if.end.58
  %78 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast %struct.cmd_block_s* %cb to i8*
  call void @llvm.lifetime.end(i64 16, i8* %79) #2
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  ret i32 0
}

declare i32 @cmd_write_buffer(%struct.gx_device_clist_writer_s*, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define i32 @clist_icc_writetable(%struct.gx_device_clist_writer_s* %cldev) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pbuf = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %icc_table = alloca %struct.clist_icctable_s*, align 8
  %number_entries = alloca i32, align 4
  %curr_entry = alloca %struct.clist_icctable_entry_s*, align 8
  %size_data = alloca i32, align 4
  %k = alloca i32, align 4
  %rend_is_valid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %0 = bitcast i8** %pbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct.clist_icctable_s** %icc_table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %icc_table1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 61
  %4 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table1, align 8, !tbaa !52
  store %struct.clist_icctable_s* %4, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %5 = bitcast i32* %number_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %tablesize = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %6, i32 0, i32 0
  %7 = load i32, i32* %tablesize, align 4, !tbaa !101
  store i32 %7, i32* %number_entries, align 4, !tbaa !5
  %8 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %size_data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %rend_is_valid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %12, i32 0, i32 2
  %13 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %head, align 8, !tbaa !103
  store %struct.clist_icctable_entry_s* %13, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %k, align 4, !tbaa !5
  %15 = load i32, i32* %number_entries, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %16, i32 0, i32 2
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile, align 8, !tbaa !129
  %rend_is_valid2 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %17, i32 0, i32 12
  %18 = load i32, i32* %rend_is_valid2, align 4, !tbaa !130
  store i32 %18, i32* %rend_is_valid, align 4, !tbaa !5
  %19 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %render_is_valid = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %19, i32 0, i32 3
  %20 = load i32, i32* %render_is_valid, align 4, !tbaa !134
  %21 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile3 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %21, i32 0, i32 2
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile3, align 8, !tbaa !129
  %rend_is_valid4 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %22, i32 0, i32 12
  store i32 %20, i32* %rend_is_valid4, align 4, !tbaa !130
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %24 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile5 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %24, i32 0, i32 2
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile5, align 8, !tbaa !129
  %call = call i64 @clist_icc_addprofile(%struct.gx_device_clist_writer_s* %23, %struct.cmm_profile_s* %25, i32* %size_data) #4
  %26 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %serial_data = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %26, i32 0, i32 0
  %file_position = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data, i32 0, i32 1
  store i64 %call, i64* %file_position, align 8, !tbaa !135
  %27 = load i32, i32* %rend_is_valid, align 4, !tbaa !5
  %28 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile6 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %28, i32 0, i32 2
  %29 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile6, align 8, !tbaa !129
  %rend_is_valid7 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %29, i32 0, i32 12
  store i32 %27, i32* %rend_is_valid7, align 4, !tbaa !130
  %30 = load i32, i32* %size_data, align 4, !tbaa !5
  %31 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %serial_data8 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %31, i32 0, i32 0
  %size = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data8, i32 0, i32 2
  store i32 %30, i32* %size, align 4, !tbaa !136
  br label %do.body

do.body:                                          ; preds = %for.body
  %32 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile9 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %32, i32 0, i32 2
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile9, align 8, !tbaa !129
  %tobool = icmp ne %struct.cmm_profile_s* %33, null
  br i1 %tobool, label %if.then, label %if.end.35

if.then:                                          ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.10
  br label %do.cond

do.cond:                                          ; preds = %do.body.11
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile12 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %34, i32 0, i32 2
  %35 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile12, align 8, !tbaa !129
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %35, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %36 = load i64, i64* %ref_count, align 8, !tbaa !137
  %add = add nsw i64 %36, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !137
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.end
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %37 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile15 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %37, i32 0, i32 2
  %38 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile15, align 8, !tbaa !129
  %rc16 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %38, i32 0, i32 18
  %ref_count17 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 0
  %39 = load i64, i64* %ref_count17, align 8, !tbaa !137
  %tobool18 = icmp ne i64 %39, 0
  br i1 %tobool18, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %do.end.14
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.body.20
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.body.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %40 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile24 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %40, i32 0, i32 2
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile24, align 8, !tbaa !129
  %rc25 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %41, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc25, i32 0, i32 2
  %42 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !138
  %43 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile26 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %43, i32 0, i32 2
  %44 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile26, align 8, !tbaa !129
  %rc27 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %44, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc27, i32 0, i32 1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !139
  %46 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile28 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %46, i32 0, i32 2
  %47 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile28, align 8, !tbaa !129
  %48 = bitcast %struct.cmm_profile_s* %47 to i8*
  call void %42(%struct.gs_memory_s* %45, i8* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.end.23
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  %49 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile31 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %49, i32 0, i32 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %icc_profile31, align 8, !tbaa !129
  br label %if.end

if.else:                                          ; preds = %do.end.14
  br label %do.body.32

do.body.32:                                       ; preds = %if.else
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.body.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  br label %if.end

if.end:                                           ; preds = %do.end.34, %do.end.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %do.body
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %50 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %icc_profile38 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %50, i32 0, i32 2
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %icc_profile38, align 8, !tbaa !129
  %51 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %51, i32 0, i32 1
  %52 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %next, align 8, !tbaa !104
  store %struct.clist_icctable_entry_s* %52, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %do.end.37
  %53 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load i32, i32* %number_entries, align 4, !tbaa !5
  %conv = sext i32 %54 to i64
  %mul = mul i64 %conv, 24
  %add39 = add i64 %mul, 4
  %conv40 = trunc i64 %add39 to i32
  store i32 %conv40, i32* %size_data, align 4, !tbaa !5
  %55 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !71
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %57 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !140
  %58 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory42, align 8, !tbaa !71
  %60 = load i32, i32* %size_data, align 4, !tbaa !5
  %call43 = call i8* %57(%struct.gs_memory_s* %59, i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #4
  store i8* %call43, i8** %buf, align 8, !tbaa !1
  %61 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp44 = icmp eq i8* %61, null
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %for.end
  %call47 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1093, i32 1, i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 %call47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %for.end
  %62 = load i8*, i8** %buf, align 8, !tbaa !1
  store i8* %62, i8** %pbuf, align 8, !tbaa !1
  %63 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %64 = bitcast i32* %number_entries to i8*
  %call49 = call i8* @memcpy(i8* %63, i8* %64, i64 4) #5
  %65 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %add.ptr, i8** %pbuf, align 8, !tbaa !1
  %66 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %head50 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %66, i32 0, i32 2
  %67 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %head50, align 8, !tbaa !103
  store %struct.clist_icctable_entry_s* %67, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.59, %if.end.48
  %68 = load i32, i32* %k, align 4, !tbaa !5
  %69 = load i32, i32* %number_entries, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %68, %69
  br i1 %cmp52, label %for.body.54, label %for.end.61

for.body.54:                                      ; preds = %for.cond.51
  %70 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %71 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %serial_data55 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %71, i32 0, i32 0
  %72 = bitcast %struct.clist_icc_serial_entry_s* %serial_data55 to i8*
  %call56 = call i8* @memcpy(i8* %70, i8* %72, i64 24) #5
  %73 = load i8*, i8** %pbuf, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %73, i64 24
  store i8* %add.ptr57, i8** %pbuf, align 8, !tbaa !1
  %74 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %next58 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %74, i32 0, i32 1
  %75 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %next58, align 8, !tbaa !104
  store %struct.clist_icctable_entry_s* %75, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.54
  %76 = load i32, i32* %k, align 4, !tbaa !5
  %inc60 = add nsw i32 %76, 1
  store i32 %inc60, i32* %k, align 4, !tbaa !5
  br label %for.cond.51

for.end.61:                                       ; preds = %for.cond.51
  %77 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %78 = load i8*, i8** %buf, align 8, !tbaa !1
  %79 = load i32, i32* %size_data, align 4, !tbaa !5
  %call62 = call i32 @cmd_write_pseudo_band(%struct.gx_device_clist_writer_s* %77, i8* %78, i32 %79, i32 2) #4
  %80 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !71
  %procs64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs64, i32 0, i32 2
  %82 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !75
  %83 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory65 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory65, align 8, !tbaa !71
  %85 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %82(%struct.gs_memory_s* %84, i8* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.61, %if.then.46
  %86 = bitcast i32* %rend_is_valid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %size_data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast i32* %number_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast %struct.clist_icctable_s** %icc_table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast i8** %pbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define i32 @clist_write_color_usage_array(%struct.gx_device_clist_writer_s* %cldev) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %color_usage_array = alloca %struct.gx_colors_usage_s*, align 8
  %i = alloca i32, align 4
  %size_data = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_colors_usage_s** %color_usage_array to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %size_data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 59
  %4 = load i32, i32* %nbands, align 4, !tbaa !109
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 32
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %size_data, align 4, !tbaa !5
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !71
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %7 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !140
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !71
  %10 = load i32, i32* %size_data, align 4, !tbaa !5
  %call = call i8* %7(%struct.gs_memory_s* %9, i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0)) #4
  %11 = bitcast i8* %call to %struct.gx_colors_usage_s*
  store %struct.gx_colors_usage_s* %11, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !1
  %12 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_colors_usage_s* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1225, i32 1, i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands5 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 59
  %15 = load i32, i32* %nbands5, align 4, !tbaa !109
  %cmp6 = icmp slt i32 %13, %15
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %17, i64 %idxprom
  %18 = bitcast %struct.gx_colors_usage_s* %arrayidx to i8*
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %19 to i64
  %20 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %20, i32 0, i32 66
  %21 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !121
  %arrayidx9 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %21, i64 %idxprom8
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx9, i32 0, i32 16
  %22 = bitcast %struct.gx_colors_usage_s* %color_usage to i8*
  %call10 = call i8* @memcpy(i8* %18, i8* %22, i64 32) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %25 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !1
  %26 = bitcast %struct.gx_colors_usage_s* %25 to i8*
  %27 = load i32, i32* %size_data, align 4, !tbaa !5
  %call11 = call i32 @cmd_write_pseudo_band(%struct.gx_device_clist_writer_s* %24, i8* %26, i32 %27, i32 1) #4
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !71
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !75
  %31 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !71
  %33 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage_array, align 8, !tbaa !1
  %34 = bitcast %struct.gx_colors_usage_s* %33 to i8*
  call void %30(%struct.gs_memory_s* %32, i8* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %35 = bitcast i32* %size_data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast %struct.gx_colors_usage_s** %color_usage_array to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @errprintf_nomem(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i64 @gx_color_index2usage(%struct.gx_device_s* %dev, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %bits = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !141
  %0 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store i64 0, i64* %bits, align 8, !tbaa !141
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !142
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %color.addr, align 8, !tbaa !141
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %comp_mask = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 13
  %arrayidx = getelementptr inbounds [64 x i64], [64 x i64]* %comp_mask, i32 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8, !tbaa !141
  %and = and i64 %5, %8
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %shl = shl i32 1, %9
  %conv = sext i32 %shl to i64
  %10 = load i64, i64* %bits, align 8, !tbaa !141
  %or = or i64 %10, %conv
  store i64 %or, i64* %bits, align 8, !tbaa !141
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %bits, align 8, !tbaa !141
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast i64* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %cldev, i32 %old_error_code) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %old_error_code.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pages_remain = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i32 %old_error_code, i32* %old_error_code.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %old_error_code.addr, align 4, !tbaa !5
  store i32 %1, i32* %code, align 4, !tbaa !5
  %2 = bitcast i32* %pages_remain to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %free_up_bandlist_memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 98
  %4 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %free_up_bandlist_memory, align 8, !tbaa !112
  %cmp = icmp ne i32 (%struct.gx_device_s*, i32)* %4, null
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 94
  %6 = load i32, i32* %error_is_retryable, align 4, !tbaa !88
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.lhs.false.1, label %if.then

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %old_error_code.addr, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %7, -25
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.1, %lor.lhs.false, %entry
  %8 = load i32, i32* %old_error_code.addr, align 4, !tbaa !5
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %free_up_bandlist_memory3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 98
  %10 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %free_up_bandlist_memory3, align 8, !tbaa !112
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_clist_writer_s* %11 to %struct.gx_device_s*
  %call = call i32 %10(%struct.gx_device_s* %12, i32 0) #4
  store i32 %call, i32* %pages_remain, align 4, !tbaa !5
  %13 = load i32, i32* %pages_remain, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  %14 = load i32, i32* %pages_remain, align 4, !tbaa !5
  store i32 %14, i32* %code, align 4, !tbaa !5
  br label %do.end

if.end.6:                                         ; preds = %do.body
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_clist_writer_s* %15 to %struct.gx_device_s*
  %call7 = call i32 @clist_reinit_output_file(%struct.gx_device_s* %16) #4
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %17 = load i32, i32* %pages_remain, align 4, !tbaa !5
  store i32 %17, i32* %code, align 4, !tbaa !5
  br label %do.end

if.end.10:                                        ; preds = %if.end.6
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  %18 = load i32, i32* %pages_remain, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.9, %if.then.5
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.14, %if.then
  %20 = bitcast i32* %pages_remain to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %cldev, i32 %old_error_code) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %old_error_code.addr = alloca i32, align 4
  %free_code = alloca i32, align 4
  %reset_code = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i32 %old_error_code, i32* %old_error_code.addr, align 4, !tbaa !5
  %0 = bitcast i32* %free_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %free_code, align 4, !tbaa !5
  %1 = bitcast i32* %reset_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %reset_code, align 4, !tbaa !5
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %free_up_bandlist_memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 98
  %4 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %free_up_bandlist_memory, align 8, !tbaa !112
  %cmp = icmp ne i32 (%struct.gx_device_s*, i32)* %4, null
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %old_error_code.addr, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %5, -25
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %old_error_code.addr, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %free_up_bandlist_memory2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 98
  %8 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %free_up_bandlist_memory2, align 8, !tbaa !112
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_clist_writer_s* %9 to %struct.gx_device_s*
  %call = call i32 %8(%struct.gx_device_s* %10, i32 1) #4
  store i32 %call, i32* %free_code, align 4, !tbaa !5
  %11 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_clist_writer_s* %11 to %struct.gx_device_s*
  %call3 = call i32 @clist_reset(%struct.gx_device_s* %12) #4
  store i32 %call3, i32* %reset_code, align 4, !tbaa !5
  %13 = load i32, i32* %reset_code, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %13, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_clist_writer_s* %14 to %struct.gx_device_s*
  %call6 = call i32 @clist_open_output_file(%struct.gx_device_s* %15) #4
  store i32 %call6, i32* %reset_code, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %16 = load i32, i32* %reset_code, align 4, !tbaa !5
  %cmp8 = icmp sge i32 %16, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.7
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 99
  %18 = load i32, i32* %disable_mask, align 4, !tbaa !96
  %and = and i32 %18, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %call10 = call i32 @clist_put_current_params(%struct.gx_device_clist_writer_s* %19) #4
  store i32 %call10, i32* %reset_code, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %land.lhs.true, %if.end.7
  %20 = load i32, i32* %reset_code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %20, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %21 = load i32, i32* %reset_code, align 4, !tbaa !5
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 95
  store i32 %21, i32* %permanent_error, align 4, !tbaa !63
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 94
  store i32 0, i32* %error_is_retryable, align 4, !tbaa !88
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %24 = load i32, i32* %reset_code, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %24, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %25 = load i32, i32* %reset_code, align 4, !tbaa !5
  br label %cond.end.19

cond.false:                                       ; preds = %if.end.14
  %26 = load i32, i32* %free_code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %26, 0
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false
  %27 = load i32, i32* %old_error_code.addr, align 4, !tbaa !5
  br label %cond.end

cond.false.18:                                    ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.18, %cond.true.17
  %cond = phi i32 [ %27, %cond.true.17 ], [ 0, %cond.false.18 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi i32 [ %25, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond20, i32* %code, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %cond.end.19
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %reset_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %free_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_reset(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  %nbands = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %band = alloca i32, align 4
  %states = alloca %struct.gx_clist_state_s*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 46
  %6 = load i8*, i8** %data, align 8, !tbaa !79
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 47
  %8 = load i32, i32* %data_size, align 4, !tbaa !143
  %call = call i32 @clist_init_data(%struct.gx_device_s* %4, i8* %6, i32 %8) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %nbands to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 95
  store i32 %11, i32* %permanent_error, align 4, !tbaa !63
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 95
  store i32 0, i32* %permanent_error1, align 4, !tbaa !63
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %nbands2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 59
  %15 = load i32, i32* %nbands2, align 4, !tbaa !109
  store i32 %15, i32* %nbands, align 4, !tbaa !5
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %ymax = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 57
  store i32 -1, i32* %ymax, align 4, !tbaa !144
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %ymin = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 56
  store i32 -1, i32* %ymin, align 4, !tbaa !145
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 55
  %19 = load %struct.tile_hash*, %struct.tile_hash** %tile_table, align 8, !tbaa !146
  %20 = bitcast %struct.tile_hash* %19 to i8*
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_hash_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 53
  %22 = load i32, i32* %tile_hash_mask, align 4, !tbaa !147
  %add = add i32 %22, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call3 = call i8* @memset(i8* %20, i32 0, i64 %mul) #5
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 67
  %24 = load i8*, i8** %cbuf, align 8, !tbaa !111
  %25 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %25, i32 0, i32 68
  store i8* %24, i8** %cnext, align 8, !tbaa !148
  %26 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %ccl = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %26, i32 0, i32 70
  store %struct.cmd_list_s* null, %struct.cmd_list_s** %ccl, align 8, !tbaa !149
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_range_list = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 71
  %tail = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %band_range_list, i32 0, i32 1
  store %struct.cmd_prefix_s* null, %struct.cmd_prefix_s** %tail, align 8, !tbaa !150
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_range_list4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %28, i32 0, i32 71
  %head = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %band_range_list4, i32 0, i32 0
  store %struct.cmd_prefix_s* null, %struct.cmd_prefix_s** %head, align 8, !tbaa !151
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_range_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %29, i32 0, i32 72
  store i32 0, i32* %band_range_min, align 4, !tbaa !152
  %30 = load i32, i32* %nbands, align 4, !tbaa !5
  %sub = sub nsw i32 %30, 1
  %31 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_range_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %31, i32 0, i32 73
  store i32 %sub, i32* %band_range_max, align 4, !tbaa !153
  %32 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = bitcast %struct.gx_clist_state_s** %states to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states5 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 66
  %35 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states5, align 8, !tbaa !121
  store %struct.gx_clist_state_s* %35, %struct.gx_clist_state_s** %states, align 8, !tbaa !1
  store i32 0, i32* %band, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %36 = load i32, i32* %band, align 4, !tbaa !5
  %37 = load i32, i32* %nbands, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %36, %37
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !1
  %39 = bitcast %struct.gx_clist_state_s* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* bitcast (%struct.gx_clist_state_s* @clist_reset.cls_initial to i8*), i64 1808, i32 8, i1 false), !tbaa.struct !154
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %band, align 4, !tbaa !5
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %band, align 4, !tbaa !5
  %41 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %41, i32 1
  store %struct.gx_clist_state_s* %incdec.ptr, %struct.gx_clist_state_s** %states, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = bitcast %struct.gx_clist_state_s** %states to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = load i32, i32* %nbands, align 4, !tbaa !5
  %add8 = add nsw i32 %44, 63
  %shr = ashr i32 %add8, 3
  %and = and i32 %shr, -8
  %45 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_band_mask_size = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %45, i32 0, i32 54
  store i32 %and, i32* %tile_band_mask_size, align 4, !tbaa !156
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_params = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 76
  %47 = bitcast %struct.gx_strip_bitmap_s* %tile_params to i8*
  %call9 = call i8* @memset(i8* %47, i32 0, i64 48) #5
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_depth = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 77
  store i32 0, i32* %tile_depth, align 4, !tbaa !157
  %49 = load i32, i32* %nbands, align 4, !tbaa !5
  %50 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_known_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %50, i32 0, i32 78
  store i32 %49, i32* %tile_known_min, align 4, !tbaa !158
  %51 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_known_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %51, i32 0, i32 79
  store i32 -1, i32* %tile_known_max, align 4, !tbaa !159
  %52 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %imager_state = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %52, i32 0, i32 80
  %53 = bitcast %struct.gs_imager_state_s* %imager_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast (%struct.gs_imager_state_s* @clist_imager_state_initial to i8*), i64 1616, i32 8, i1 false), !tbaa.struct !160
  %54 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %54, i32 0, i32 86
  store %struct.gx_clip_path_s* null, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !48
  %55 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %clip_path_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %55, i32 0, i32 87
  store i64 0, i64* %clip_path_id, align 8, !tbaa !163
  %56 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %56, i32 0, i32 88
  %byte1 = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space, i32 0, i32 0
  store i8 0, i8* %byte1, align 1, !tbaa !164
  %57 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_space10 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %57, i32 0, i32 88
  %id = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space10, i32 0, i32 1
  store i64 0, i64* %id, align 8, !tbaa !165
  %58 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_space11 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %58, i32 0, i32 88
  %space = getelementptr inbounds %struct.clist_color_space_s, %struct.clist_color_space_s* %color_space11, i32 0, i32 3
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %space, align 8, !tbaa !49
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.17, %for.end
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %conv13 = sext i32 %60 to i64
  %cmp14 = icmp ult i64 %conv13, 4
  br i1 %cmp14, label %for.body.16, label %for.end.19

for.body.16:                                      ; preds = %for.cond.12
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %61 to i64
  %62 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %transfer_ids = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %62, i32 0, i32 89
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %transfer_ids, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8, !tbaa !141
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.16
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %inc18 = add nsw i32 %63, 1
  store i32 %inc18, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.end.19:                                       ; preds = %for.cond.12
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %black_generation_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %65, i32 0, i32 90
  store i64 0, i64* %black_generation_id, align 8, !tbaa !166
  %66 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %undercolor_removal_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %66, i32 0, i32 91
  store i64 0, i64* %undercolor_removal_id, align 8, !tbaa !167
  %67 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %device_halftone_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %67, i32 0, i32 92
  store i64 0, i64* %device_halftone_id, align 8, !tbaa !168
  %68 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %image_enum_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %68, i32 0, i32 93
  store i64 0, i64* %image_enum_id, align 8, !tbaa !28
  %69 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %save_cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %69, i32 0, i32 103
  store i32 0, i32* %save_cropping_min, align 4, !tbaa !169
  %70 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %70, i32 0, i32 101
  store i32 0, i32* %cropping_min, align 4, !tbaa !170
  %71 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %71, i32 0, i32 14
  %72 = load i32, i32* %height, align 4, !tbaa !171
  %73 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %save_cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %73, i32 0, i32 104
  store i32 %72, i32* %save_cropping_max, align 4, !tbaa !172
  %74 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %74, i32 0, i32 102
  store i32 %72, i32* %cropping_max, align 4, !tbaa !173
  %75 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_saved = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %75, i32 0, i32 105
  store i32 0, i32* %cropping_saved, align 4, !tbaa !174
  %76 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_stack = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %76, i32 0, i32 107
  store %struct.clist_writer_cropping_buffer_s* null, %struct.clist_writer_cropping_buffer_s** %cropping_stack, align 8, !tbaa !51
  %77 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_level = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %77, i32 0, i32 106
  store i32 0, i32* %cropping_level, align 4, !tbaa !175
  %78 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %temp_mask_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %78, i32 0, i32 111
  store i32 0, i32* %temp_mask_id, align 4, !tbaa !176
  %79 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %mask_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %79, i32 0, i32 110
  store i32 0, i32* %mask_id, align 4, !tbaa !177
  %80 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %mask_id_count = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %80, i32 0, i32 109
  store i32 0, i32* %mask_id_count, align 4, !tbaa !178
  %81 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %81, i32 0, i32 61
  store %struct.clist_icctable_s* null, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !52
  %82 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %82, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !179
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.19, %if.then
  %83 = bitcast i32* %nbands to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_put_current_params(%struct.gx_device_clist_writer_s* %cldev) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %target = alloca %struct.gx_device_s*, align 8
  %param_list = alloca %struct.gs_c_param_list_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 43
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !180
  store %struct.gx_device_s* %2, %struct.gx_device_s** %target, align 8, !tbaa !1
  %3 = bitcast %struct.gs_c_param_list_s* %param_list to i8*
  call void @llvm.lifetime.start(i64 56, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %5, i32 0, i32 95
  %6 = load i32, i32* %permanent_error, align 4, !tbaa !63
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %permanent_error2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 95
  %8 = load i32, i32* %permanent_error2, align 4, !tbaa !63
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !71
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %param_list, %struct.gs_memory_s* %10) #4
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 13
  %12 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params, align 8, !tbaa !181
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %14 = bitcast %struct.gs_c_param_list_s* %param_list to %struct.gs_param_list_s*
  %call = call i32 %12(%struct.gx_device_s* %13, %struct.gs_param_list_s* %14) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %15, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %param_list) #4
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_c_param_list_s* %param_list to %struct.gs_param_list_s*
  %call4 = call i32 @cmd_put_params(%struct.gx_device_clist_writer_s* %16, %struct.gs_param_list_s* %17) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %param_list) #4
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast %struct.gs_c_param_list_s* %param_list to i8*
  call void @llvm.lifetime.end(i64 56, i8* %20) #2
  %21 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @clist_icc_searchtable(%struct.gx_device_clist_writer_s* %cdev, i64 %hashcode) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %hashcode.addr = alloca i64, align 8
  %icc_table = alloca %struct.clist_icctable_s*, align 8
  %curr_entry = alloca %struct.clist_icctable_entry_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cdev, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  store i64 %hashcode, i64* %hashcode.addr, align 8, !tbaa !141
  %0 = bitcast %struct.clist_icctable_s** %icc_table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %icc_table1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 61
  %2 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table1, align 8, !tbaa !52
  store %struct.clist_icctable_s* %2, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %3 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %cmp = icmp eq %struct.clist_icctable_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %5, i32 0, i32 2
  %6 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %head, align 8, !tbaa !103
  store %struct.clist_icctable_entry_s* %6, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.end
  %7 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.clist_icctable_entry_s* %7, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %serial_data = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %8, i32 0, i32 0
  %hashcode3 = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data, i32 0, i32 0
  %9 = load i64, i64* %hashcode3, align 8, !tbaa !182
  %10 = load i64, i64* %hashcode.addr, align 8, !tbaa !141
  %cmp4 = icmp eq i64 %9, %10
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %while.body
  %11 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %11, i32 0, i32 1
  %12 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %next, align 8, !tbaa !104
  store %struct.clist_icctable_entry_s* %12, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.5, %if.then
  %13 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.clist_icctable_s** %icc_table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i64 @clist_icc_addprofile(%struct.gx_device_clist_writer_s* %cldev, %struct.cmm_profile_s* %iccprofile, i32* %size) #0 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %iccprofile.addr = alloca %struct.cmm_profile_s*, align 8
  %size.addr = alloca i32*, align 8
  %cfile = alloca i8*, align 8
  %fileposit = alloca i64, align 8
  %profile_data = alloca %struct.gsicc_serialized_profile_s, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %iccprofile, %struct.cmm_profile_s** %iccprofile.addr, align 8, !tbaa !1
  store i32* %size, i32** %size.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 58
  %cfile1 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 1
  %2 = load i8*, i8** %cfile1, align 8, !tbaa !91
  store i8* %2, i8** %cfile, align 8, !tbaa !1
  %3 = bitcast i64* %fileposit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.gsicc_serialized_profile_s* %profile_data to i8*
  call void @llvm.lifetime.start(i64 256, i8* %4) #2
  %5 = bitcast i32* %count1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %count2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 58
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info2, i32 0, i32 4
  %8 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !94
  %ftell = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %8, i32 0, i32 7
  %9 = load i64 (i8*)*, i64 (i8*)** %ftell, align 8, !tbaa !117
  %10 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call = call i64 %9(i8* %10) #4
  store i64 %call, i64* %fileposit, align 8, !tbaa !141
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile.addr, align 8, !tbaa !1
  call void @gsicc_profile_serialize(%struct.gsicc_serialized_profile_s* %profile_data, %struct.cmm_profile_s* %11) #4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 58
  %io_procs4 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info3, i32 0, i32 4
  %13 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs4, align 8, !tbaa !94
  %fwrite_chars = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %13, i32 0, i32 3
  %14 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fwrite_chars, align 8, !tbaa !119
  %15 = bitcast %struct.gsicc_serialized_profile_s* %profile_data to i8*
  %16 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call5 = call i32 %14(i8* %15, i32 ptrtoint (i8** getelementptr inbounds (%struct.cmm_profile_s, %struct.cmm_profile_s* null, i32 0, i32 14) to i32), i8* %16) #4
  store i32 %call5, i32* %count1, align 4, !tbaa !5
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info6 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 58
  %io_procs7 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info6, i32 0, i32 4
  %18 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs7, align 8, !tbaa !94
  %fwrite_chars8 = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %18, i32 0, i32 3
  %19 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fwrite_chars8, align 8, !tbaa !119
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %20, i32 0, i32 14
  %21 = load i8*, i8** %buffer, align 8, !tbaa !183
  %22 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %iccprofile.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %22, i32 0, i32 11
  %23 = load i32, i32* %buffer_size, align 4, !tbaa !184
  %24 = load i8*, i8** %cfile, align 8, !tbaa !1
  %call9 = call i32 %19(i8* %21, i32 %23, i8* %24) #4
  store i32 %call9, i32* %count2, align 4, !tbaa !5
  %25 = load i32, i32* %count1, align 4, !tbaa !5
  %26 = load i32, i32* %count2, align 4, !tbaa !5
  %add = add nsw i32 %25, %26
  %27 = load i32*, i32** %size.addr, align 8, !tbaa !1
  store i32 %add, i32* %27, align 4, !tbaa !5
  %28 = load i64, i64* %fileposit, align 8, !tbaa !141
  %29 = bitcast i32* %count2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %count1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast %struct.gsicc_serialized_profile_s* %profile_data to i8*
  call void @llvm.lifetime.end(i64 256, i8* %31) #2
  %32 = bitcast i64* %fileposit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast i8** %cfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  ret i64 %28
}

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @cmd_write_pseudo_band(%struct.gx_device_clist_writer_s*, i8*, i32, i32) #1

declare void @gsicc_profile_serialize(%struct.gsicc_serialized_profile_s*, %struct.cmm_profile_s*) #1

; Function Attrs: nounwind uwtable
define i32 @clist_icc_addentry(%struct.gx_device_clist_writer_s* %cdev, i64 %hashcode_in, %struct.cmm_profile_s* %icc_profile) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %hashcode_in.addr = alloca i64, align 8
  %icc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %icc_table = alloca %struct.clist_icctable_s*, align 8
  %entry2 = alloca %struct.clist_icctable_entry_s*, align 8
  %curr_entry = alloca %struct.clist_icctable_entry_s*, align 8
  %k = alloca i32, align 4
  %hashcode = alloca i64, align 8
  %stable_mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cdev, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  store i64 %hashcode_in, i64* %hashcode_in.addr, align 8, !tbaa !141
  store %struct.cmm_profile_s* %icc_profile, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.clist_icctable_s** %icc_table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %icc_table1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 61
  %2 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table1, align 8, !tbaa !52
  store %struct.clist_icctable_s* %2, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %3 = bitcast %struct.clist_icctable_entry_s** %entry2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i64* %hashcode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast %struct.gs_memory_s** %stable_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !71
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 0
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !185
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %11, i32 0, i32 8
  %12 = load i32, i32* %hash_is_valid, align 4, !tbaa !186
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %13, i32 0, i32 14
  %14 = load i8*, i8** %buffer, align 8, !tbaa !183
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 11
  %16 = load i32, i32* %buffer_size, align 4, !tbaa !184
  call void @gsicc_get_icc_buff_hash(i8* %14, i64* %hashcode, i32 %16) #4
  %17 = load i64, i64* %hashcode, align 8, !tbaa !141
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %hashcode3 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 7
  store i64 %17, i64* %hashcode3, align 8, !tbaa !187
  %19 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %hash_is_valid4 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %19, i32 0, i32 8
  store i32 1, i32* %hash_is_valid4, align 4, !tbaa !186
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load i64, i64* %hashcode_in.addr, align 8, !tbaa !141
  store i64 %20, i64* %hashcode, align 8, !tbaa !141
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.clist_icctable_s* %21, null
  br i1 %cmp5, label %if.then.6, label %if.else.32

if.then.6:                                        ; preds = %if.end
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %23 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !188
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %call = call i8* %23(%struct.gs_memory_s* %24, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clist_icctable_entry to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #4
  %25 = bitcast i8* %call to %struct.clist_icctable_entry_s*
  store %struct.clist_icctable_entry_s* %25, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %26 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.clist_icctable_entry_s* %26, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.6
  %call9 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1164, i32 1, i32 -1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0)) #4
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.6
  %27 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %27, i32 0, i32 1
  store %struct.clist_icctable_entry_s* null, %struct.clist_icctable_entry_s** %next, align 8, !tbaa !104
  %28 = load i64, i64* %hashcode, align 8, !tbaa !141
  %29 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %serial_data = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %29, i32 0, i32 0
  %hashcode11 = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data, i32 0, i32 0
  store i64 %28, i64* %hashcode11, align 8, !tbaa !182
  %30 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %serial_data12 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %30, i32 0, i32 0
  %size = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data12, i32 0, i32 2
  store i32 -1, i32* %size, align 4, !tbaa !136
  %31 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %serial_data13 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %31, i32 0, i32 0
  %file_position = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data13, i32 0, i32 1
  store i64 -1, i64* %file_position, align 8, !tbaa !135
  %32 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %33 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %icc_profile14 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %33, i32 0, i32 2
  store %struct.cmm_profile_s* %32, %struct.cmm_profile_s** %icc_profile14, align 8, !tbaa !129
  %34 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %rend_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %34, i32 0, i32 12
  %35 = load i32, i32* %rend_is_valid, align 4, !tbaa !130
  %36 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %render_is_valid = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %36, i32 0, i32 3
  store i32 %35, i32* %render_is_valid, align 4, !tbaa !134
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmm_profile_s* %37, null
  br i1 %tobool, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %do.body
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %38 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %38, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %39 = load i64, i64* %ref_count, align 8, !tbaa !137
  %inc = add nsw i64 %39, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !137
  br label %do.body.17

do.body.17:                                       ; preds = %do.body.16
  br label %do.cond

do.cond:                                          ; preds = %do.body.17
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.18

do.cond.18:                                       ; preds = %do.end
  br label %do.end.19

do.end.19:                                        ; preds = %do.cond.18
  br label %if.end.20

if.end.20:                                        ; preds = %do.end.19, %do.body
  br label %do.cond.21

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %alloc_struct24 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 8
  %41 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct24, align 8, !tbaa !188
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %call25 = call i8* %41(%struct.gs_memory_s* %42, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clist_icctable to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #4
  %43 = bitcast i8* %call25 to %struct.clist_icctable_s*
  store %struct.clist_icctable_s* %43, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %44 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %cmp26 = icmp eq %struct.clist_icctable_s* %44, null
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end.22
  %call28 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1175, i32 1, i32 -1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0)) #4
  store i32 %call28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %do.end.22
  %45 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %tablesize = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %45, i32 0, i32 0
  store i32 1, i32* %tablesize, align 4, !tbaa !101
  %46 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %47 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %47, i32 0, i32 2
  store %struct.clist_icctable_entry_s* %46, %struct.clist_icctable_entry_s** %head, align 8, !tbaa !103
  %48 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %49 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %final = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %49, i32 0, i32 3
  store %struct.clist_icctable_entry_s* %48, %struct.clist_icctable_entry_s** %final, align 8, !tbaa !189
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_mem, align 8, !tbaa !1
  %51 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %51, i32 0, i32 1
  store %struct.gs_memory_s* %50, %struct.gs_memory_s** %memory30, align 8, !tbaa !107
  %52 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %53 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %icc_table31 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %53, i32 0, i32 61
  store %struct.clist_icctable_s* %52, %struct.clist_icctable_s** %icc_table31, align 8, !tbaa !52
  br label %if.end.82

if.else.32:                                       ; preds = %if.end
  %54 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %head33 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %54, i32 0, i32 2
  %55 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %head33, align 8, !tbaa !103
  store %struct.clist_icctable_entry_s* %55, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.32
  %56 = load i32, i32* %k, align 4, !tbaa !5
  %57 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %tablesize34 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %57, i32 0, i32 0
  %58 = load i32, i32* %tablesize34, align 4, !tbaa !101
  %cmp35 = icmp slt i32 %56, %58
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %serial_data36 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %59, i32 0, i32 0
  %hashcode37 = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data36, i32 0, i32 0
  %60 = load i64, i64* %hashcode37, align 8, !tbaa !182
  %61 = load i64, i64* %hashcode, align 8, !tbaa !141
  %cmp38 = icmp eq i64 %60, %61
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %for.body
  %62 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  %next41 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %62, i32 0, i32 1
  %63 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %next41, align 8, !tbaa !104
  store %struct.clist_icctable_entry_s* %63, %struct.clist_icctable_entry_s** %curr_entry, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %64 = load i32, i32* %k, align 4, !tbaa !5
  %inc42 = add nsw i32 %64, 1
  store i32 %inc42, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %65, i32 0, i32 1
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !107
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %alloc_struct45 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 8
  %67 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct45, align 8, !tbaa !188
  %68 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %68, i32 0, i32 1
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !107
  %call47 = call i8* %67(%struct.gs_memory_s* %69, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clist_icctable_entry to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #4
  %70 = bitcast i8* %call47 to %struct.clist_icctable_entry_s*
  store %struct.clist_icctable_entry_s* %70, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %71 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %cmp48 = icmp eq %struct.clist_icctable_entry_s* %71, null
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %for.end
  %call50 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1199, i32 1, i32 -1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0)) #4
  store i32 %call50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %for.end
  %72 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %next52 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %72, i32 0, i32 1
  store %struct.clist_icctable_entry_s* null, %struct.clist_icctable_entry_s** %next52, align 8, !tbaa !104
  %73 = load i64, i64* %hashcode, align 8, !tbaa !141
  %74 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %serial_data53 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %74, i32 0, i32 0
  %hashcode54 = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data53, i32 0, i32 0
  store i64 %73, i64* %hashcode54, align 8, !tbaa !182
  %75 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %serial_data55 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %75, i32 0, i32 0
  %size56 = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data55, i32 0, i32 2
  store i32 -1, i32* %size56, align 4, !tbaa !136
  %76 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %serial_data57 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %76, i32 0, i32 0
  %file_position58 = getelementptr inbounds %struct.clist_icc_serial_entry_s, %struct.clist_icc_serial_entry_s* %serial_data57, i32 0, i32 1
  store i64 -1, i64* %file_position58, align 8, !tbaa !135
  %77 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %78 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %icc_profile59 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %78, i32 0, i32 2
  store %struct.cmm_profile_s* %77, %struct.cmm_profile_s** %icc_profile59, align 8, !tbaa !129
  %79 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %rend_is_valid60 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %79, i32 0, i32 12
  %80 = load i32, i32* %rend_is_valid60, align 4, !tbaa !130
  %81 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %render_is_valid61 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %81, i32 0, i32 3
  store i32 %80, i32* %render_is_valid61, align 4, !tbaa !134
  br label %do.body.62

do.body.62:                                       ; preds = %if.end.51
  %82 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %tobool63 = icmp ne %struct.cmm_profile_s* %82, null
  br i1 %tobool63, label %if.then.64, label %if.end.74

if.then.64:                                       ; preds = %do.body.62
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  %83 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %rc66 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %83, i32 0, i32 18
  %ref_count67 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc66, i32 0, i32 0
  %84 = load i64, i64* %ref_count67, align 8, !tbaa !137
  %inc68 = add nsw i64 %84, 1
  store i64 %inc68, i64* %ref_count67, align 8, !tbaa !137
  br label %do.body.69

do.body.69:                                       ; preds = %do.body.65
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  br label %do.cond.72

do.cond.72:                                       ; preds = %do.end.71
  br label %do.end.73

do.end.73:                                        ; preds = %do.cond.72
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %do.body.62
  br label %do.cond.75

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76

do.end.76:                                        ; preds = %do.cond.75
  %85 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %86 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %final77 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %86, i32 0, i32 3
  %87 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %final77, align 8, !tbaa !189
  %next78 = getelementptr inbounds %struct.clist_icctable_entry_s, %struct.clist_icctable_entry_s* %87, i32 0, i32 1
  store %struct.clist_icctable_entry_s* %85, %struct.clist_icctable_entry_s** %next78, align 8, !tbaa !104
  %88 = load %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s** %entry2, align 8, !tbaa !1
  %89 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %final79 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %89, i32 0, i32 3
  store %struct.clist_icctable_entry_s* %88, %struct.clist_icctable_entry_s** %final79, align 8, !tbaa !189
  %90 = load %struct.clist_icctable_s*, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !1
  %tablesize80 = getelementptr inbounds %struct.clist_icctable_s, %struct.clist_icctable_s* %90, i32 0, i32 0
  %91 = load i32, i32* %tablesize80, align 4, !tbaa !101
  %inc81 = add nsw i32 %91, 1
  store i32 %inc81, i32* %tablesize80, align 4, !tbaa !101
  br label %if.end.82

if.end.82:                                        ; preds = %do.end.76, %if.end.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.82, %if.then.49, %if.then.39, %if.then.27, %if.then.8
  %92 = bitcast %struct.gs_memory_s** %stable_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast i64* %hashcode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast %struct.clist_icctable_entry_s** %curr_entry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = bitcast %struct.clist_icctable_entry_s** %entry2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = bitcast %struct.clist_icctable_s** %icc_table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = load i32, i32* %retval
  ret i32 %98
}

declare void @gsicc_get_icc_buff_hash(i8*, i64*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @clist_writer_color_usage(%struct.gx_device_clist_writer_s* %cldev, i32 %y, i32 %height, %struct.gx_colors_usage_s* %color_usage, i32* %range_start) #0 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color_usage.addr = alloca %struct.gx_colors_usage_s*, align 8
  %range_start.addr = alloca i32*, align 8
  %or = alloca i64, align 8
  %slow_rop = alloca i32, align 4
  %i = alloca i32, align 4
  %band_height = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store %struct.gx_colors_usage_s* %color_usage, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  store i32* %range_start, i32** %range_start.addr, align 8, !tbaa !1
  %0 = bitcast i64* %or to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store i64 0, i64* %or, align 8, !tbaa !141
  %1 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %slow_rop, align 4, !tbaa !5
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %5 = load i32, i32* %BandHeight, align 4, !tbaa !80
  store i32 %5, i32* %band_height, align 4, !tbaa !5
  %6 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %8 = load i32, i32* %band_height, align 4, !tbaa !5
  %div = sdiv i32 %7, %8
  store i32 %div, i32* %start, align 4, !tbaa !5
  %9 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %11 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add = add nsw i32 %10, %11
  %12 = load i32, i32* %band_height, align 4, !tbaa !5
  %div1 = sdiv i32 %add, %12
  store i32 %div1, i32* %end, align 4, !tbaa !5
  %13 = load i32, i32* %start, align 4, !tbaa !5
  store i32 %13, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %end, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 66
  %18 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !121
  %arrayidx = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %18, i64 %idxprom
  %color_usage2 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx, i32 0, i32 16
  %or3 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage2, i32 0, i32 0
  %19 = load i64, i64* %or3, align 8, !tbaa !190
  %20 = load i64, i64* %or, align 8, !tbaa !141
  %or4 = or i64 %20, %19
  store i64 %or4, i64* %or, align 8, !tbaa !141
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %21 to i64
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states6 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 66
  %23 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states6, align 8, !tbaa !121
  %arrayidx7 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %23, i64 %idxprom5
  %color_usage8 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx7, i32 0, i32 16
  %slow_rop9 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage8, i32 0, i32 1
  %24 = load i32, i32* %slow_rop9, align 4, !tbaa !191
  %25 = load i32, i32* %slow_rop, align 4, !tbaa !5
  %or10 = or i32 %25, %24
  store i32 %or10, i32* %slow_rop, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i64, i64* %or, align 8, !tbaa !141
  %28 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %or11 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %28, i32 0, i32 0
  store i64 %27, i64* %or11, align 8, !tbaa !192
  %29 = load i32, i32* %slow_rop, align 4, !tbaa !5
  %30 = load %struct.gx_colors_usage_s*, %struct.gx_colors_usage_s** %color_usage.addr, align 8, !tbaa !1
  %slow_rop12 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %30, i32 0, i32 1
  store i32 %29, i32* %slow_rop12, align 4, !tbaa !193
  %31 = load i32, i32* %start, align 4, !tbaa !5
  %32 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul = mul nsw i32 %31, %32
  %33 = load i32*, i32** %range_start.addr, align 8, !tbaa !1
  store i32 %mul, i32* %33, align 4, !tbaa !5
  %34 = load i32, i32* %end, align 4, !tbaa !5
  %35 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul13 = mul nsw i32 %34, %35
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %height14 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 14
  %37 = load i32, i32* %height14, align 4, !tbaa !171
  %cmp15 = icmp slt i32 %mul13, %37
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %38 = load i32, i32* %end, align 4, !tbaa !5
  %39 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul16 = mul nsw i32 %38, %39
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %40 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %height17 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %40, i32 0, i32 14
  %41 = load i32, i32* %height17, align 4, !tbaa !171
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul16, %cond.true ], [ %41, %cond.false ]
  %42 = load i32*, i32** %range_start.addr, align 8, !tbaa !1
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %sub = sub nsw i32 %cond, %43
  %44 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i64* %or to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define i32 @clist_writer_push_no_cropping(%struct.gx_device_clist_writer_s* %cdev) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %buf = alloca %struct.clist_writer_cropping_buffer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cdev, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.clist_writer_cropping_buffer_s** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !71
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !188
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !71
  %call = call i8* %3(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_clist_writer_cropping_buffer to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0)) #4
  %6 = bitcast i8* %call to %struct.clist_writer_cropping_buffer_s*
  store %struct.clist_writer_cropping_buffer_s* %6, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %7 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %cmp = icmp eq %struct.clist_writer_cropping_buffer_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_stack = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 107
  %9 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %cropping_stack, align 8, !tbaa !51
  %10 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.clist_writer_cropping_buffer_s, %struct.clist_writer_cropping_buffer_s* %10, i32 0, i32 4
  store %struct.clist_writer_cropping_buffer_s* %9, %struct.clist_writer_cropping_buffer_s** %next, align 8, !tbaa !194
  %11 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_stack2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 107
  store %struct.clist_writer_cropping_buffer_s* %11, %struct.clist_writer_cropping_buffer_s** %cropping_stack2, align 8, !tbaa !51
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 101
  %14 = load i32, i32* %cropping_min, align 4, !tbaa !170
  %15 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %cropping_min3 = getelementptr inbounds %struct.clist_writer_cropping_buffer_s, %struct.clist_writer_cropping_buffer_s* %15, i32 0, i32 0
  store i32 %14, i32* %cropping_min3, align 4, !tbaa !196
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 102
  %17 = load i32, i32* %cropping_max, align 4, !tbaa !173
  %18 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %cropping_max4 = getelementptr inbounds %struct.clist_writer_cropping_buffer_s, %struct.clist_writer_cropping_buffer_s* %18, i32 0, i32 1
  store i32 %17, i32* %cropping_max4, align 4, !tbaa !197
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %mask_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 110
  %20 = load i32, i32* %mask_id, align 4, !tbaa !177
  %21 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %mask_id5 = getelementptr inbounds %struct.clist_writer_cropping_buffer_s, %struct.clist_writer_cropping_buffer_s* %21, i32 0, i32 2
  store i32 %20, i32* %mask_id5, align 4, !tbaa !198
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %temp_mask_id = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 111
  %23 = load i32, i32* %temp_mask_id, align 4, !tbaa !176
  %24 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %temp_mask_id6 = getelementptr inbounds %struct.clist_writer_cropping_buffer_s, %struct.clist_writer_cropping_buffer_s* %24, i32 0, i32 3
  store i32 %23, i32* %temp_mask_id6, align 4, !tbaa !199
  %25 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_level = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %25, i32 0, i32 106
  %26 = load i32, i32* %cropping_level, align 4, !tbaa !175
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %cropping_level, align 4, !tbaa !175
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %27 = bitcast %struct.clist_writer_cropping_buffer_s** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @clist_writer_push_cropping(%struct.gx_device_clist_writer_s* %cdev, i32 %ry, i32 %rheight) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %ry.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cdev, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %call = call i32 @clist_writer_push_no_cropping(%struct.gx_device_clist_writer_s* %1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %2 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 101
  %4 = load i32, i32* %cropping_min, align 4, !tbaa !170
  %5 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_min2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %6, i32 0, i32 101
  %7 = load i32, i32* %cropping_min2, align 4, !tbaa !170
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load i32, i32* %ry.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ]
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_min3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 101
  store i32 %cond, i32* %cropping_min3, align 4, !tbaa !170
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 102
  %11 = load i32, i32* %cropping_max, align 4, !tbaa !173
  %12 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %13 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add = add nsw i32 %12, %13
  %cmp4 = icmp slt i32 %11, %add
  br i1 %cmp4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.end
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_max6 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 102
  %15 = load i32, i32* %cropping_max6, align 4, !tbaa !173
  br label %cond.end.9

cond.false.7:                                     ; preds = %cond.end
  %16 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %17 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add8 = add nsw i32 %16, %17
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.7, %cond.true.5
  %cond10 = phi i32 [ %15, %cond.true.5 ], [ %add8, %cond.false.7 ]
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_max11 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 102
  store i32 %cond10, i32* %cropping_max11, align 4, !tbaa !173
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.9, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @clist_writer_pop_cropping(%struct.gx_device_clist_writer_s* %cdev) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %buf = alloca %struct.clist_writer_cropping_buffer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cdev, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.clist_writer_cropping_buffer_s** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_stack = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 107
  %2 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %cropping_stack, align 8, !tbaa !51
  store %struct.clist_writer_cropping_buffer_s* %2, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %3 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %cmp = icmp eq %struct.clist_writer_cropping_buffer_s* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.clist_writer_cropping_buffer_s, %struct.clist_writer_cropping_buffer_s* %4, i32 0, i32 0
  %5 = load i32, i32* %cropping_min, align 4, !tbaa !196
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_min1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %6, i32 0, i32 101
  store i32 %5, i32* %cropping_min1, align 4, !tbaa !170
  %7 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.clist_writer_cropping_buffer_s, %struct.clist_writer_cropping_buffer_s* %7, i32 0, i32 1
  %8 = load i32, i32* %cropping_max, align 4, !tbaa !197
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_max2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 102
  store i32 %8, i32* %cropping_max2, align 4, !tbaa !173
  %10 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %mask_id = getelementptr inbounds %struct.clist_writer_cropping_buffer_s, %struct.clist_writer_cropping_buffer_s* %10, i32 0, i32 2
  %11 = load i32, i32* %mask_id, align 4, !tbaa !198
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %mask_id3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 110
  store i32 %11, i32* %mask_id3, align 4, !tbaa !177
  %13 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %temp_mask_id = getelementptr inbounds %struct.clist_writer_cropping_buffer_s, %struct.clist_writer_cropping_buffer_s* %13, i32 0, i32 3
  %14 = load i32, i32* %temp_mask_id, align 4, !tbaa !199
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %temp_mask_id4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %15, i32 0, i32 111
  store i32 %14, i32* %temp_mask_id4, align 4, !tbaa !176
  %16 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.clist_writer_cropping_buffer_s, %struct.clist_writer_cropping_buffer_s* %16, i32 0, i32 4
  %17 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %next, align 8, !tbaa !194
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_stack5 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 107
  store %struct.clist_writer_cropping_buffer_s* %17, %struct.clist_writer_cropping_buffer_s** %cropping_stack5, align 8, !tbaa !51
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_level = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 106
  %20 = load i32, i32* %cropping_level, align 4, !tbaa !175
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %cropping_level, align 4, !tbaa !175
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !71
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !75
  %24 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !71
  %26 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %buf, align 8, !tbaa !1
  %27 = bitcast %struct.clist_writer_cropping_buffer_s* %26 to i8*
  call void %23(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %28 = bitcast %struct.clist_writer_cropping_buffer_s** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @clist_writer_check_empty_cropping_stack(%struct.gx_device_clist_writer_s* %cdev) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  store %struct.gx_device_clist_writer_s* %cdev, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %cropping_stack = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %0, i32 0, i32 107
  %1 = load %struct.clist_writer_cropping_buffer_s*, %struct.clist_writer_cropping_buffer_s** %cropping_stack, align 8, !tbaa !51
  %cmp = icmp ne %struct.clist_writer_cropping_buffer_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 -28, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %do.end
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @clist_data_size(%union.gx_device_clist_s* %cdev, i32 %select) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %union.gx_device_clist_s*, align 8
  %select.addr = alloca i32, align 4
  %pinfo = alloca %struct.gx_band_page_info_s*, align 8
  %pfile = alloca i8*, align 8
  %fname = alloca i8*, align 8
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %union.gx_device_clist_s* %cdev, %union.gx_device_clist_s** %cdev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_band_page_info_s** %pinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev.addr, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %1 to %struct.gx_device_clist_common_s*
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 58
  store %struct.gx_band_page_info_s* %page_info, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %2 = bitcast i8** %pfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32, i32* %select.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %4, i32 0, i32 3
  %5 = load i8*, i8** %bfile, align 8, !tbaa !87
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %cfile, align 8, !tbaa !83
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ %7, %cond.false ]
  store i8* %cond, i8** %pfile, align 8, !tbaa !1
  %8 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i32, i32* %select.addr, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %cond.false.3, label %cond.true.2

cond.true.2:                                      ; preds = %cond.end
  %10 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %10, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  br label %cond.end.5

cond.false.3:                                     ; preds = %cond.end
  %11 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %11, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.3, %cond.true.2
  %cond6 = phi i8* [ %arraydecay, %cond.true.2 ], [ %arraydecay4, %cond.false.3 ]
  store i8* %cond6, i8** %fname, align 8, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %14, i32 0, i32 4
  %15 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !84
  %fseek = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %15, i32 0, i32 9
  %16 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek, align 8, !tbaa !100
  %17 = load i8*, i8** %pfile, align 8, !tbaa !1
  %18 = load i8*, i8** %fname, align 8, !tbaa !1
  %call = call i32 %16(i8* %17, i64 0, i32 2, i8* %18) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.5
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.5
  %20 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %io_procs7 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %20, i32 0, i32 4
  %21 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs7, align 8, !tbaa !84
  %ftell = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %21, i32 0, i32 7
  %22 = load i64 (i8*)*, i64 (i8*)** %ftell, align 8, !tbaa !117
  %23 = load i8*, i8** %pfile, align 8, !tbaa !1
  %call8 = call i64 %22(i8* %23) #4
  %conv = trunc i64 %call8 to i32
  store i32 %conv, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %24, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %size, align 4, !tbaa !5
  %26 = load i32, i32* %size, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then
  %27 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast i8** %pfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.gx_band_page_info_s** %pinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @clist_get_data(%union.gx_device_clist_s* %cdev, i32 %select, i64 %offset, i8* %buf, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %union.gx_device_clist_s*, align 8
  %select.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %pinfo = alloca %struct.gx_band_page_info_s*, align 8
  %pfile = alloca i8*, align 8
  %fname = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %union.gx_device_clist_s* %cdev, %union.gx_device_clist_s** %cdev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !5
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !141
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_band_page_info_s** %pinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev.addr, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %1 to %struct.gx_device_clist_common_s*
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 58
  store %struct.gx_band_page_info_s* %page_info, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %2 = bitcast i8** %pfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32, i32* %select.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %4, i32 0, i32 3
  %5 = load i8*, i8** %bfile, align 8, !tbaa !87
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %cfile, align 8, !tbaa !83
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ %7, %cond.false ]
  store i8* %cond, i8** %pfile, align 8, !tbaa !1
  %8 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i32, i32* %select.addr, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %cond.false.3, label %cond.true.2

cond.true.2:                                      ; preds = %cond.end
  %10 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %bfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %10, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %bfname, i32 0, i32 0
  br label %cond.end.5

cond.false.3:                                     ; preds = %cond.end
  %11 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %cfname = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %11, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %cfname, i32 0, i32 0
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.3, %cond.true.2
  %cond6 = phi i8* [ %arraydecay, %cond.true.2 ], [ %arraydecay4, %cond.false.3 ]
  store i8* %cond6, i8** %fname, align 8, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %13, i32 0, i32 4
  %14 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !84
  %fseek = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %14, i32 0, i32 9
  %15 = load i32 (i8*, i64, i32, i8*)*, i32 (i8*, i64, i32, i8*)** %fseek, align 8, !tbaa !100
  %16 = load i8*, i8** %pfile, align 8, !tbaa !1
  %17 = load i64, i64* %offset.addr, align 8, !tbaa !141
  %18 = load i8*, i8** %fname, align 8, !tbaa !1
  %call = call i32 %15(i8* %16, i64 %17, i32 0, i8* %18) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.5
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.5
  %20 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %io_procs7 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %20, i32 0, i32 4
  %21 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs7, align 8, !tbaa !84
  %fread_chars = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %21, i32 0, i32 4
  %22 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fread_chars, align 8, !tbaa !200
  %23 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %24 = load i32, i32* %length.addr, align 4, !tbaa !5
  %25 = load i8*, i8** %pfile, align 8, !tbaa !1
  %call8 = call i32 %22(i8* %23, i32 %24, i8* %25) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i8** %pfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.gx_band_page_info_s** %pinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @clist_put_data(%union.gx_device_clist_s* %cdev, i32 %select, i64 %offset, i8* %buf, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %union.gx_device_clist_s*, align 8
  %select.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %pinfo = alloca %struct.gx_band_page_info_s*, align 8
  %pfile = alloca i8*, align 8
  %code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %union.gx_device_clist_s* %cdev, %union.gx_device_clist_s** %cdev.addr, align 8, !tbaa !1
  store i32 %select, i32* %select.addr, align 4, !tbaa !5
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !141
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_band_page_info_s** %pinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev.addr, align 8, !tbaa !1
  %common = bitcast %union.gx_device_clist_s* %1 to %struct.gx_device_clist_common_s*
  %page_info = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %common, i32 0, i32 58
  store %struct.gx_band_page_info_s* %page_info, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %2 = bitcast i8** %pfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32, i32* %select.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %4 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %bfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %4, i32 0, i32 3
  %5 = load i8*, i8** %bfile, align 8, !tbaa !87
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %cfile = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %cfile, align 8, !tbaa !83
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %5, %cond.true ], [ %7, %cond.false ]
  store i8* %cond, i8** %pfile, align 8, !tbaa !1
  %8 = bitcast i64* %code to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %io_procs = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %9, i32 0, i32 4
  %10 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs, align 8, !tbaa !84
  %ftell = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %10, i32 0, i32 7
  %11 = load i64 (i8*)*, i64 (i8*)** %ftell, align 8, !tbaa !117
  %12 = load i8*, i8** %pfile, align 8, !tbaa !1
  %call = call i64 %11(i8* %12) #4
  store i64 %call, i64* %code, align 8, !tbaa !141
  %13 = load i64, i64* %code, align 8, !tbaa !141
  %cmp = icmp slt i64 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %14 = load i64, i64* %code, align 8, !tbaa !141
  %15 = load i64, i64* %offset.addr, align 8, !tbaa !141
  %cmp1 = icmp ne i64 %14, %15
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %16 = load %struct.gx_band_page_info_s*, %struct.gx_band_page_info_s** %pinfo, align 8, !tbaa !1
  %io_procs4 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %16, i32 0, i32 4
  %17 = load %struct.clist_io_procs_s*, %struct.clist_io_procs_s** %io_procs4, align 8, !tbaa !84
  %fwrite_chars = getelementptr inbounds %struct.clist_io_procs_s, %struct.clist_io_procs_s* %17, i32 0, i32 3
  %18 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %fwrite_chars, align 8, !tbaa !119
  %19 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %20 = load i32, i32* %length.addr, align 4, !tbaa !5
  %21 = load i8*, i8** %pfile, align 8, !tbaa !1
  %call5 = call i32 %18(i8* %19, i32 %20, i8* %21) #4
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %22 = bitcast i64* %code to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast i8** %pfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.gx_band_page_info_s** %pinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define %union.gx_device_clist_s* @clist_make_accum_device(%struct.gx_device_s* %target, i8* %dname, i8* %base, i32 %space, %struct.gx_device_buf_procs_s* %buf_procs, %struct.gx_band_params_s* %band_params, i32 %use_memory_clist, i32 %uses_transparency, %struct.gs_pattern1_instance_s* %pinst) #0 {
entry:
  %retval = alloca %union.gx_device_clist_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %dname.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %space.addr = alloca i32, align 4
  %buf_procs.addr = alloca %struct.gx_device_buf_procs_s*, align 8
  %band_params.addr = alloca %struct.gx_band_params_s*, align 8
  %use_memory_clist.addr = alloca i32, align 4
  %uses_transparency.addr = alloca i32, align 4
  %pinst.addr = alloca %struct.gs_pattern1_instance_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %cdev = alloca %union.gx_device_clist_s*, align 8
  %cwdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store i8* %dname, i8** %dname.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %space, i32* %space.addr, align 4, !tbaa !5
  store %struct.gx_device_buf_procs_s* %buf_procs, %struct.gx_device_buf_procs_s** %buf_procs.addr, align 8, !tbaa !1
  store %struct.gx_band_params_s* %band_params, %struct.gx_band_params_s** %band_params.addr, align 8, !tbaa !1
  store i32 %use_memory_clist, i32* %use_memory_clist.addr, align 4, !tbaa !5
  store i32 %uses_transparency, i32* %uses_transparency.addr, align 4, !tbaa !5
  store %struct.gs_pattern1_instance_s* %pinst, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !201
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !188
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_clist to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)) #4
  %7 = bitcast i8* %call to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %7, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_clist_writer_s** %cwdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %10 = bitcast %union.gx_device_clist_s* %9 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %10, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %11 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %cmp = icmp eq %union.gx_device_clist_s* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %union.gx_device_clist_s* null, %union.gx_device_clist_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %13 = bitcast %union.gx_device_clist_s* %12 to i8*
  %call1 = call i8* @memset(i8* %13, i32 0, i64 12960) #5
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %params_size = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 0
  store i32 12960, i32* %params_size, align 4, !tbaa !202
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %static_procs = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %15, i32 0, i32 1
  store %struct.gx_device_procs_s* null, %struct.gx_device_procs_s** %static_procs, align 8, !tbaa !203
  %16 = load i8*, i8** %dname.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %dname2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 2
  store i8* %16, i8** %dname2, align 8, !tbaa !204
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 3
  store %struct.gs_memory_s* %18, %struct.gs_memory_s** %memory3, align 8, !tbaa !71
  %20 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %stype = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %20, i32 0, i32 4
  store %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_clist to %struct.gs_memory_struct_type_s*), %struct.gs_memory_struct_type_s** %stype, align 8, !tbaa !205
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %stype_is_dynamic = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 5
  store i32 0, i32* %stype_is_dynamic, align 4, !tbaa !206
  br label %do.body

do.body:                                          ; preds = %if.end
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !207
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %24 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %rc4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %24, i32 0, i32 7
  %memory5 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc4, i32 0, i32 1
  store %struct.gs_memory_s* %23, %struct.gs_memory_s** %memory5, align 8, !tbaa !208
  %25 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %25, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !209
  br label %do.body.7

do.body.7:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.7
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.end
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %26 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %retained = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %26, i32 0, i32 8
  store i32 1, i32* %retained, align 4, !tbaa !210
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 9
  store i32 0, i32* %is_open, align 4, !tbaa !64
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %28, i32 0, i32 11
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 11
  %30 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %31 = bitcast %struct.gx_device_color_info_s* %color_info10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 720, i32 8, i1 false), !tbaa.struct !211
  %32 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %33 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %pinst11 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %33, i32 0, i32 100
  store %struct.gs_pattern1_instance_s* %32, %struct.gs_pattern1_instance_s** %pinst11, align 8, !tbaa !50
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %cached_colors = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 12
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cached_colors12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 12
  %36 = bitcast %struct.gx_device_cached_colors_s* %cached_colors to i8*
  %37 = bitcast %struct.gx_device_cached_colors_s* %cached_colors12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false), !tbaa.struct !212
  %38 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %cmp13 = icmp ne %struct.gs_pattern1_instance_s* %38, null
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.end.9
  %39 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %39, i32 0, i32 12
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %40 = load i32, i32* %x, align 4, !tbaa !213
  %41 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %41, i32 0, i32 13
  store i32 %40, i32* %width, align 4, !tbaa !218
  %42 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size15 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %42, i32 0, i32 12
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size15, i32 0, i32 1
  %43 = load i32, i32* %y, align 4, !tbaa !219
  %44 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %44, i32 0, i32 14
  store i32 %43, i32* %height, align 4, !tbaa !171
  %45 = load %struct.gs_pattern1_instance_s*, %struct.gs_pattern1_instance_s** %pinst.addr, align 8, !tbaa !1
  %size16 = getelementptr inbounds %struct.gs_pattern1_instance_s, %struct.gs_pattern1_instance_s* %45, i32 0, i32 12
  %y17 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size16, i32 0, i32 1
  %46 = load i32, i32* %y17, align 4, !tbaa !219
  %47 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %band_params18 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %47, i32 0, i32 48
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params18, i32 0, i32 1
  store i32 %46, i32* %BandHeight, align 4, !tbaa !220
  br label %if.end.23

if.else:                                          ; preds = %do.end.9
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %width19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 13
  %49 = load i32, i32* %width19, align 4, !tbaa !221
  %50 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %width20 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %50, i32 0, i32 13
  store i32 %49, i32* %width20, align 4, !tbaa !218
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %height21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 14
  %52 = load i32, i32* %height21, align 4, !tbaa !81
  %53 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %53, i32 0, i32 14
  store i32 %52, i32* %height22, align 4, !tbaa !171
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.14
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %LeadingEdge = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 18
  %55 = load i32, i32* %LeadingEdge, align 4, !tbaa !222
  %56 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %LeadingEdge24 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %56, i32 0, i32 18
  store i32 %55, i32* %LeadingEdge24, align 4, !tbaa !223
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 17
  %58 = load i32, i32* %is_planar, align 4, !tbaa !224
  %59 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %is_planar25 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %59, i32 0, i32 17
  store i32 %58, i32* %is_planar25, align 4, !tbaa !225
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %61 = load float, float* %arrayidx, align 4, !tbaa !161
  %62 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %HWResolution26 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %62, i32 0, i32 22
  %arrayidx27 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution26, i32 0, i64 0
  store float %61, float* %arrayidx27, align 4, !tbaa !161
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %HWResolution28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %63, i32 0, i32 22
  %arrayidx29 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution28, i32 0, i64 1
  %64 = load float, float* %arrayidx29, align 4, !tbaa !161
  %65 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %HWResolution30 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %65, i32 0, i32 22
  %arrayidx31 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution30, i32 0, i64 1
  store float %64, float* %arrayidx31, align 4, !tbaa !161
  %66 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %icc_cache_cl = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %66, i32 0, i32 62
  store %struct.gsicc_link_cache_s* null, %struct.gsicc_link_cache_s** %icc_cache_cl, align 8, !tbaa !179
  %67 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %icc_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %67, i32 0, i32 61
  store %struct.clist_icctable_s* null, %struct.clist_icctable_s** %icc_table, align 8, !tbaa !52
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %UseCIEColor = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 31
  %69 = load i32, i32* %UseCIEColor, align 4, !tbaa !226
  %70 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %UseCIEColor32 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %70, i32 0, i32 31
  store i32 %69, i32* %UseCIEColor32, align 4, !tbaa !227
  %71 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %LockSafetyParams = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %71, i32 0, i32 32
  store i32 1, i32* %LockSafetyParams, align 4, !tbaa !228
  %72 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %72, i32 0, i32 42
  %73 = bitcast %struct.gx_device_procs_s* %procs33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* bitcast ({ i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }* @gs_clist_device_procs to i8*), i64 584, i32 8, i1 false), !tbaa.struct !229
  %74 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %75 = bitcast %struct.gx_device_clist_writer_s* %74 to %struct.gx_device_s*
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_copy_color_params(%struct.gx_device_s* %75, %struct.gx_device_s* %76) #4
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.23
  %77 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target35 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %77, i32 0, i32 43
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %target35, align 8, !tbaa !180
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cmp36 = icmp ne %struct.gx_device_s* %78, %79
  br i1 %cmp36, label %if.then.37, label %if.end.94

if.then.37:                                       ; preds = %do.body.34
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %80, null
  br i1 %tobool, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %do.body.38
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %rc41 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 7
  %ref_count42 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc41, i32 0, i32 0
  %82 = load i64, i64* %ref_count42, align 8, !tbaa !230
  %inc = add nsw i64 %82, 1
  store i64 %inc, i64* %ref_count42, align 8, !tbaa !230
  br label %do.body.43

do.body.43:                                       ; preds = %do.body.40
  br label %do.cond.44

do.cond.44:                                       ; preds = %do.body.43
  br label %do.end.45

do.end.45:                                        ; preds = %do.cond.44
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %do.body.38
  br label %do.cond.49

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %83 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target52 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %83, i32 0, i32 43
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %target52, align 8, !tbaa !180
  %tobool53 = icmp ne %struct.gx_device_s* %84, null
  br i1 %tobool53, label %if.then.54, label %if.end.90

if.then.54:                                       ; preds = %do.body.51
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  br label %do.body.56

do.body.56:                                       ; preds = %do.body.55
  br label %do.cond.57

do.cond.57:                                       ; preds = %do.body.56
  br label %do.end.58

do.end.58:                                        ; preds = %do.cond.57
  %85 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target59 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %85, i32 0, i32 43
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %target59, align 8, !tbaa !180
  %rc60 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %86, i32 0, i32 7
  %ref_count61 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc60, i32 0, i32 0
  %87 = load i64, i64* %ref_count61, align 8, !tbaa !230
  %add = add nsw i64 %87, -1
  store i64 %add, i64* %ref_count61, align 8, !tbaa !230
  br label %do.cond.62

do.cond.62:                                       ; preds = %do.end.58
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  %88 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target64 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %88, i32 0, i32 43
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %target64, align 8, !tbaa !180
  %rc65 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %89, i32 0, i32 7
  %ref_count66 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc65, i32 0, i32 0
  %90 = load i64, i64* %ref_count66, align 8, !tbaa !230
  %tobool67 = icmp ne i64 %90, 0
  br i1 %tobool67, label %if.else.85, label %if.then.68

if.then.68:                                       ; preds = %do.end.63
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  br label %do.body.70

do.body.70:                                       ; preds = %do.body.69
  br label %do.cond.71

do.cond.71:                                       ; preds = %do.body.70
  br label %do.end.72

do.end.72:                                        ; preds = %do.cond.71
  %91 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target73 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %91, i32 0, i32 43
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %target73, align 8, !tbaa !180
  %rc74 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %92, i32 0, i32 7
  %free75 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc74, i32 0, i32 2
  %93 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free75, align 8, !tbaa !231
  %94 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target76 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %94, i32 0, i32 43
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %target76, align 8, !tbaa !180
  %rc77 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %95, i32 0, i32 7
  %memory78 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc77, i32 0, i32 1
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory78, align 8, !tbaa !232
  %97 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target79 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %97, i32 0, i32 43
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %target79, align 8, !tbaa !180
  %99 = bitcast %struct.gx_device_s* %98 to i8*
  call void %93(%struct.gs_memory_s* %96, i8* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)) #4
  br label %do.cond.80

do.cond.80:                                       ; preds = %do.end.72
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  br label %do.cond.83

do.cond.83:                                       ; preds = %do.body.82
  br label %do.end.84

do.end.84:                                        ; preds = %do.cond.83
  br label %if.end.89

if.else.85:                                       ; preds = %do.end.63
  br label %do.body.86

do.body.86:                                       ; preds = %if.else.85
  br label %do.cond.87

do.cond.87:                                       ; preds = %do.body.86
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  br label %if.end.89

if.end.89:                                        ; preds = %do.end.88, %do.end.84
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %do.body.51
  br label %do.cond.91

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %101 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %target93 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %101, i32 0, i32 43
  store %struct.gx_device_s* %100, %struct.gx_device_s** %target93, align 8, !tbaa !180
  br label %if.end.94

if.end.94:                                        ; preds = %do.end.92, %do.body.34
  br label %do.cond.95

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96

do.end.96:                                        ; preds = %do.cond.95
  %102 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  %103 = load i32, i32* %use_memory_clist.addr, align 4, !tbaa !5
  call void @clist_init_io_procs(%union.gx_device_clist_s* %102, i32 %103) #4
  %104 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %105 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %105, i32 0, i32 46
  store i8* %104, i8** %data, align 8, !tbaa !79
  %106 = load i32, i32* %space.addr, align 4, !tbaa !5
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %107, i32 0, i32 47
  store i32 %106, i32* %data_size, align 4, !tbaa !143
  %108 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %buf_procs97 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %108, i32 0, i32 44
  %109 = bitcast %struct.gx_device_buf_procs_s* %buf_procs97 to i8*
  %110 = load %struct.gx_device_buf_procs_s*, %struct.gx_device_buf_procs_s** %buf_procs.addr, align 8, !tbaa !1
  %111 = bitcast %struct.gx_device_buf_procs_s* %110 to i8*
  %call98 = call i8* @memcpy(i8* %109, i8* %111, i64 32) #5
  %112 = load i32, i32* %uses_transparency.addr, align 4, !tbaa !5
  %113 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %113, i32 0, i32 37
  store i32 %112, i32* %page_uses_transparency, align 4, !tbaa !120
  %114 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %width99 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %114, i32 0, i32 13
  %115 = load i32, i32* %width99, align 4, !tbaa !218
  %116 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %band_params100 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %116, i32 0, i32 48
  %BandWidth = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params100, i32 0, i32 0
  store i32 %115, i32* %BandWidth, align 4, !tbaa !233
  %117 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %band_params101 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %117, i32 0, i32 48
  %BandBufferSpace = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params101, i32 0, i32 2
  store i64 0, i64* %BandBufferSpace, align 8, !tbaa !234
  %118 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %do_not_open_or_close_bandfiles = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %118, i32 0, i32 49
  store i32 0, i32* %do_not_open_or_close_bandfiles, align 4, !tbaa !76
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 3
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !235
  %121 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %bandlist_memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %121, i32 0, i32 45
  store %struct.gs_memory_s* %120, %struct.gs_memory_s** %bandlist_memory, align 8, !tbaa !78
  %122 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %procs102 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %122, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs102, i32 0, i32 36
  store void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !236
  %123 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %procs103 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %123, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs103, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_forward_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !237
  %124 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %procs104 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %124, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs104, i32 0, i32 68
  store void (%struct.gx_device_s*, i32)* @gx_forward_set_graphics_type_tag, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !238
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %125, i32 0, i32 40
  %126 = load i32, i32* %graphics_type_tag, align 4, !tbaa !239
  %127 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cwdev, align 8, !tbaa !1
  %graphics_type_tag105 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %127, i32 0, i32 40
  store i32 %126, i32* %graphics_type_tag105, align 4, !tbaa !240
  %128 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cdev, align 8, !tbaa !1
  store %union.gx_device_clist_s* %128, %union.gx_device_clist_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.96, %if.then
  %129 = bitcast %struct.gx_device_clist_writer_s** %cwdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #2
  %130 = bitcast %union.gx_device_clist_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #2
  %131 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #2
  %132 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %retval
  ret %union.gx_device_clist_s* %132
}

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gx_device_copy_color_params(%struct.gx_device_s*, %struct.gx_device_s*) #1

declare void @gx_default_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gx_forward_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #1

declare void @gx_forward_set_graphics_type_tag(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i32 @pattern_clist_open_device(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @clist_init_data(%struct.gx_device_s* %dev, i8* %init_data, i32 %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %init_data.addr = alloca i8*, align 8
  %data_size.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %target = alloca %struct.gx_device_s*, align 8
  %band_width = alloca i32, align 4
  %band_height = alloca i32, align 4
  %page_uses_transparency = alloca i32, align 4
  %band_space = alloca i32, align 4
  %data = alloca i8*, align 8
  %size = alloca i32, align 4
  %bits_size = alloca i32, align 4
  %bdev = alloca %struct.gx_device_memory_s, align 8
  %pbdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %band_data_size = alloca i64, align 8
  %adjusted = alloca i32, align 4
  %adjusted75 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %init_data, i8** %init_data.addr, align 8, !tbaa !1
  store i32 %data_size, i32* %data_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !180
  store %struct.gx_device_s* %5, %struct.gx_device_s** %target, align 8, !tbaa !1
  %6 = bitcast i32* %band_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 13
  %8 = load i32, i32* %width, align 4, !tbaa !221
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_params = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 48
  %BandWidth = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 0
  %10 = load i32, i32* %BandWidth, align 4, !tbaa !233
  %cmp = icmp sgt i32 %8, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 13
  %12 = load i32, i32* %width2, align 4, !tbaa !221
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_params3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 48
  %BandWidth4 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params3, i32 0, i32 0
  %14 = load i32, i32* %BandWidth4, align 4, !tbaa !233
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %14, %cond.false ]
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %15, i32 0, i32 58
  %band_params5 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandWidth6 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params5, i32 0, i32 0
  store i32 %cond, i32* %BandWidth6, align 4, !tbaa !241
  store i32 %cond, i32* %band_width, align 4, !tbaa !5
  %16 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_params7 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 48
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params7, i32 0, i32 1
  %18 = load i32, i32* %BandHeight, align 4, !tbaa !220
  store i32 %18, i32* %band_height, align 4, !tbaa !5
  %19 = bitcast i32* %page_uses_transparency to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_uses_transparency8 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %20, i32 0, i32 37
  %21 = load i32, i32* %page_uses_transparency8, align 4, !tbaa !120
  store i32 %21, i32* %page_uses_transparency, align 4, !tbaa !5
  %22 = bitcast i32* %band_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_params9 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 48
  %BandBufferSpace = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params9, i32 0, i32 2
  %24 = load i64, i64* %BandBufferSpace, align 8, !tbaa !234
  %tobool = icmp ne i64 %24, 0
  br i1 %tobool, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %cond.end
  %25 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_params11 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %25, i32 0, i32 48
  %BandBufferSpace12 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params11, i32 0, i32 2
  %26 = load i64, i64* %BandBufferSpace12, align 8, !tbaa !234
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  %27 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %conv = zext i32 %27 to i64
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.10
  %cond15 = phi i64 [ %26, %cond.true.10 ], [ %conv, %cond.false.13 ]
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info16 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %28, i32 0, i32 58
  %band_params17 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info16, i32 0, i32 8
  %BandBufferSpace18 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params17, i32 0, i32 2
  store i64 %cond15, i64* %BandBufferSpace18, align 8, !tbaa !242
  %conv19 = trunc i64 %cond15 to i32
  store i32 %conv19, i32* %band_space, align 4, !tbaa !5
  %29 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = load i8*, i8** %init_data.addr, align 8, !tbaa !1
  store i8* %30, i8** %data, align 8, !tbaa !1
  %31 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = load i32, i32* %band_space, align 4, !tbaa !5
  store i32 %32, i32* %size, align 4, !tbaa !5
  %33 = bitcast i32* %bits_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = bitcast %struct.gx_device_memory_s* %bdev to i8*
  call void @llvm.lifetime.start(i64 2792, i8* %34) #2
  %35 = bitcast %struct.gx_device_s** %pbdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = bitcast %struct.gx_device_memory_s* %bdev to %struct.gx_device_s*
  store %struct.gx_device_s* %36, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %39 = load i16, i16* %depth, align 2, !tbaa !243
  %40 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %clist_color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %40, i32 0, i32 113
  %depth20 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info, i32 0, i32 3
  store i16 %39, i16* %depth20, align 2, !tbaa !244
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info21, i32 0, i32 2
  %42 = load i32, i32* %polarity, align 4, !tbaa !245
  %43 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %clist_color_info22 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %43, i32 0, i32 113
  %polarity23 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info22, i32 0, i32 2
  store i32 %42, i32* %polarity23, align 4, !tbaa !246
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info24, i32 0, i32 1
  %45 = load i32, i32* %num_components, align 4, !tbaa !142
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %clist_color_info25 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 113
  %num_components26 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info25, i32 0, i32 1
  store i32 %45, i32* %num_components26, align 4, !tbaa !247
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 40
  %48 = load i32, i32* %graphics_type_tag, align 4, !tbaa !239
  %49 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %graphics_type_tag27 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %49, i32 0, i32 40
  store i32 %48, i32* %graphics_type_tag27, align 4, !tbaa !240
  %50 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %buf_procs = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %50, i32 0, i32 44
  %create_buf_device = getelementptr inbounds %struct.gx_device_buf_procs_s, %struct.gx_device_buf_procs_s* %buf_procs, i32 0, i32 0
  %51 = load i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)** %create_buf_device, align 8, !tbaa !248
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %call = call i32 %51(%struct.gx_device_s** %pbdev, %struct.gx_device_s* %52, i32 0, %struct.gx_render_plane_s* null, %struct.gs_memory_s* null, %struct.gx_colors_usage_s* null) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %53, 0
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.14
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end:                                           ; preds = %cond.end.14
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  %56 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !249
  %cmp30 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* %56, @gx_no_copy_alpha
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end
  %57 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %57, i32 0, i32 99
  %58 = load i32, i32* %disable_mask, align 4, !tbaa !96
  %or = or i32 %58, 64
  store i32 %or, i32* %disable_mask, align 4, !tbaa !96
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end
  %59 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %procs34 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %59, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs34, i32 0, i32 0
  %open_device35 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  %60 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device35, align 8, !tbaa !77
  %cmp36 = icmp eq i32 (%struct.gx_device_s*)* %60, @pattern_clist_open_device
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.33
  %61 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %div = udiv i32 %61, 2
  store i32 %div, i32* %bits_size, align 4, !tbaa !5
  %62 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info39 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %62, i32 0, i32 58
  %line_ptrs_offset = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info39, i32 0, i32 6
  store i64 0, i64* %line_ptrs_offset, align 8, !tbaa !250
  br label %if.end.115

if.else:                                          ; preds = %if.end.33
  %63 = load i32, i32* %band_height, align 4, !tbaa !5
  %tobool40 = icmp ne i32 %63, 0
  br i1 %tobool40, label %if.then.41, label %if.else.74

if.then.41:                                       ; preds = %if.else
  %64 = bitcast i64* %band_data_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = bitcast i32* %adjusted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %66, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs42, i32 0, i32 65
  %67 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !251
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %69 = load i32, i32* %band_height, align 4, !tbaa !5
  %call43 = call i32 %67(%struct.gx_device_s* %68, i32 19, i8* null, i32 %69) #4
  store i32 %call43, i32* %adjusted, align 4, !tbaa !5
  %70 = load i32, i32* %adjusted, align 4, !tbaa !5
  %cmp44 = icmp sgt i32 %70, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.41
  %71 = load i32, i32* %adjusted, align 4, !tbaa !5
  store i32 %71, i32* %band_height, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.41
  %72 = load i32, i32* %band_width, align 4, !tbaa !5
  %73 = load i32, i32* %band_height, align 4, !tbaa !5
  %call48 = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %bdev, i32 %72, i32 %73, i64* %band_data_size) #4
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.47
  %74 = load i64, i64* %band_data_size, align 8, !tbaa !141
  %75 = load i32, i32* %band_space, align 4, !tbaa !5
  %conv51 = zext i32 %75 to i64
  %cmp52 = icmp uge i64 %74, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.47
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %finalize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %76, i32 0, i32 6
  %77 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize, align 8, !tbaa !252
  %tobool55 = icmp ne void (%struct.gx_device_s*)* %77, null
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.then.54
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %finalize57 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 6
  %79 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize57, align 8, !tbaa !252
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  call void %79(%struct.gx_device_s* %80) #4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.54
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %lor.lhs.false
  %81 = load i32, i32* %band_space, align 4, !tbaa !5
  %conv60 = zext i32 %81 to i64
  %82 = load i64, i64* %band_data_size, align 8, !tbaa !141
  %sub = sub i64 %conv60, %82
  %83 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %shr = lshr i32 %83, 1
  %conv61 = zext i32 %shr to i64
  %cmp62 = icmp ult i64 %sub, %conv61
  br i1 %cmp62, label %cond.true.64, label %cond.false.67

cond.true.64:                                     ; preds = %if.end.59
  %84 = load i32, i32* %band_space, align 4, !tbaa !5
  %conv65 = zext i32 %84 to i64
  %85 = load i64, i64* %band_data_size, align 8, !tbaa !141
  %sub66 = sub i64 %conv65, %85
  br label %cond.end.70

cond.false.67:                                    ; preds = %if.end.59
  %86 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %shr68 = lshr i32 %86, 1
  %conv69 = zext i32 %shr68 to i64
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.67, %cond.true.64
  %cond71 = phi i64 [ %sub66, %cond.true.64 ], [ %conv69, %cond.false.67 ]
  %conv72 = trunc i64 %cond71 to i32
  store i32 %conv72, i32* %bits_size, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.70, %if.end.58
  %87 = bitcast i32* %adjusted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i64* %band_data_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.146 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.107

if.else.74:                                       ; preds = %if.else
  %89 = bitcast i32* %adjusted75 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %91 = load i32, i32* %band_space, align 4, !tbaa !5
  %call76 = call i32 @clist_tile_cache_size(%struct.gx_device_s* %90, i32 %91) #4
  store i32 %call76, i32* %bits_size, align 4, !tbaa !5
  %92 = load i32, i32* %bits_size, align 4, !tbaa !5
  %93 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %shr77 = lshr i32 %93, 1
  %cmp78 = icmp ult i32 %92, %shr77
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %if.else.74
  %94 = load i32, i32* %bits_size, align 4, !tbaa !5
  br label %cond.end.83

cond.false.81:                                    ; preds = %if.else.74
  %95 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %shr82 = lshr i32 %95, 1
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.80
  %cond84 = phi i32 [ %94, %cond.true.80 ], [ %shr82, %cond.false.81 ]
  store i32 %cond84, i32* %bits_size, align 4, !tbaa !5
  %96 = load i32, i32* %band_width, align 4, !tbaa !5
  %97 = load i32, i32* %band_space, align 4, !tbaa !5
  %98 = load i32, i32* %bits_size, align 4, !tbaa !5
  %sub85 = sub i32 %97, %98
  %conv86 = zext i32 %sub85 to i64
  %99 = load i32, i32* %page_uses_transparency, align 4, !tbaa !5
  %call87 = call i32 @gdev_mem_max_height(%struct.gx_device_memory_s* %bdev, i32 %96, i64 %conv86, i32 %99) #4
  store i32 %call87, i32* %band_height, align 4, !tbaa !5
  %100 = load i32, i32* %band_height, align 4, !tbaa !5
  %cmp88 = icmp eq i32 %100, 0
  br i1 %cmp88, label %if.then.90, label %if.end.96

if.then.90:                                       ; preds = %cond.end.83
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %finalize91 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %101, i32 0, i32 6
  %102 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize91, align 8, !tbaa !252
  %tobool92 = icmp ne void (%struct.gx_device_s*)* %102, null
  br i1 %tobool92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.then.90
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %finalize94 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %103, i32 0, i32 6
  %104 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize94, align 8, !tbaa !252
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  call void %104(%struct.gx_device_s* %105) #4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.then.90
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.104

if.end.96:                                        ; preds = %cond.end.83
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs97 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %106, i32 0, i32 42
  %dev_spec_op98 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs97, i32 0, i32 65
  %107 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op98, align 8, !tbaa !251
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %109 = load i32, i32* %band_height, align 4, !tbaa !5
  %call99 = call i32 %107(%struct.gx_device_s* %108, i32 19, i8* null, i32 %109) #4
  store i32 %call99, i32* %adjusted75, align 4, !tbaa !5
  %110 = load i32, i32* %adjusted75, align 4, !tbaa !5
  %cmp100 = icmp sgt i32 %110, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.96
  %111 = load i32, i32* %adjusted75, align 4, !tbaa !5
  store i32 %111, i32* %band_height, align 4, !tbaa !5
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.96
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.104

cleanup.104:                                      ; preds = %if.end.103, %if.end.95
  %112 = bitcast i32* %adjusted75 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %cleanup.dest.105 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.105, label %cleanup.146 [
    i32 0, label %cleanup.cont.106
  ]

cleanup.cont.106:                                 ; preds = %cleanup.104
  br label %if.end.107

if.end.107:                                       ; preds = %cleanup.cont.106, %cleanup.cont
  %113 = load i32, i32* %band_width, align 4, !tbaa !5
  %114 = load i32, i32* %band_height, align 4, !tbaa !5
  %115 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info108 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %115, i32 0, i32 58
  %line_ptrs_offset109 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info108, i32 0, i32 6
  %call110 = call i32 @gdev_mem_bits_size(%struct.gx_device_memory_s* %bdev, i32 %113, i32 %114, i64* %line_ptrs_offset109) #4
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.107
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.114:                                       ; preds = %if.end.107
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.38
  %116 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %ins_count = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %116, i32 0, i32 108
  store i64 0, i64* %ins_count, align 8, !tbaa !253
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %118 = load i8*, i8** %data, align 8, !tbaa !1
  %119 = load i32, i32* %bits_size, align 4, !tbaa !5
  %conv116 = zext i32 %119 to i64
  %call117 = call i32 @clist_init_tile_cache(%struct.gx_device_s* %117, i8* %118, i64 %conv116) #4
  store i32 %call117, i32* %code, align 4, !tbaa !5
  %120 = load i32, i32* %code, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %120, 0
  br i1 %cmp118, label %if.then.120, label %if.end.126

if.then.120:                                      ; preds = %if.end.115
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %finalize121 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %121, i32 0, i32 6
  %122 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize121, align 8, !tbaa !252
  %tobool122 = icmp ne void (%struct.gx_device_s*)* %122, null
  br i1 %tobool122, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %if.then.120
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %finalize124 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 6
  %124 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize124, align 8, !tbaa !252
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  call void %124(%struct.gx_device_s* %125) #4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.123, %if.then.120
  %126 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %126, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.126:                                       ; preds = %if.end.115
  %127 = load i32, i32* %bits_size, align 4, !tbaa !5
  %128 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info127 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %128, i32 0, i32 58
  %tile_cache_size = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info127, i32 0, i32 5
  store i32 %127, i32* %tile_cache_size, align 4, !tbaa !254
  %129 = load i32, i32* %bits_size, align 4, !tbaa !5
  %130 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext = zext i32 %129 to i64
  %add.ptr = getelementptr inbounds i8, i8* %130, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  %131 = load i32, i32* %bits_size, align 4, !tbaa !5
  %132 = load i32, i32* %size, align 4, !tbaa !5
  %sub128 = sub i32 %132, %131
  store i32 %sub128, i32* %size, align 4, !tbaa !5
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %134 = load i32, i32* %size, align 4, !tbaa !5
  %135 = load i32, i32* %band_width, align 4, !tbaa !5
  %136 = load i32, i32* %band_height, align 4, !tbaa !5
  %call129 = call i32 @clist_init_bands(%struct.gx_device_s* %133, %struct.gx_device_memory_s* %bdev, i32 %134, i32 %135, i32 %136) #4
  store i32 %call129, i32* %code, align 4, !tbaa !5
  %137 = load i32, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %137, 0
  br i1 %cmp130, label %if.then.132, label %if.end.138

if.then.132:                                      ; preds = %if.end.126
  %138 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %finalize133 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %138, i32 0, i32 6
  %139 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize133, align 8, !tbaa !252
  %tobool134 = icmp ne void (%struct.gx_device_s*)* %139, null
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.then.132
  %140 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %finalize136 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %140, i32 0, i32 6
  %141 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize136, align 8, !tbaa !252
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  call void %141(%struct.gx_device_s* %142) #4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.then.132
  %143 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %143, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.138:                                       ; preds = %if.end.126
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %finalize139 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %144, i32 0, i32 6
  %145 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize139, align 8, !tbaa !252
  %tobool140 = icmp ne void (%struct.gx_device_s*)* %145, null
  br i1 %tobool140, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %if.end.138
  %146 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  %finalize142 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %146, i32 0, i32 6
  %147 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize142, align 8, !tbaa !252
  %148 = load %struct.gx_device_s*, %struct.gx_device_s** %pbdev, align 8, !tbaa !1
  call void %147(%struct.gx_device_s* %148) #4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %if.end.138
  %149 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %150 = load i8*, i8** %data, align 8, !tbaa !1
  %151 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %152 = load i32, i32* %bits_size, align 4, !tbaa !5
  %sub144 = sub i32 %151, %152
  %call145 = call i32 @clist_init_states(%struct.gx_device_s* %149, i8* %150, i32 %sub144) #4
  store i32 %call145, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

cleanup.146:                                      ; preds = %if.end.143, %if.end.137, %if.end.125, %if.then.113, %cleanup.104, %cleanup, %if.then
  %153 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast %struct.gx_device_s** %pbdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #2
  %155 = bitcast %struct.gx_device_memory_s* %bdev to i8*
  call void @llvm.lifetime.end(i64 2792, i8* %155) #2
  %156 = bitcast i32* %bits_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast i32* %band_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i32* %page_uses_transparency to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #2
  %162 = bitcast i32* %band_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #2
  %165 = load i32, i32* %retval
  ret i32 %165
}

declare i32 @gx_no_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #1

declare i32 @gdev_mem_data_size(%struct.gx_device_memory_s*, i32, i32, i64*) #1

; Function Attrs: nounwind uwtable
define internal i32 @clist_tile_cache_size(%struct.gx_device_s* %target, i32 %data_size) #0 {
entry:
  %target.addr = alloca %struct.gx_device_s*, align 8
  %data_size.addr = alloca i32, align 4
  %bits_size = alloca i32, align 4
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store i32 %data_size, i32* %data_size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %bits_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %div = udiv i32 %1, 5
  %and = and i32 %div, -8
  store i32 %and, i32* %bits_size, align 4, !tbaa !5
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !142
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 4
  %5 = load i8, i8* %gray_index, align 1, !tbaa !255
  %conv = zext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 255
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 6
  %7 = load i32, i32* %max_color, align 4, !tbaa !256
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 5
  %9 = load i32, i32* %max_gray, align 4, !tbaa !257
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  %cmp6 = icmp ult i32 %cond, 31
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %10 = load i32, i32* %bits_size, align 4, !tbaa !5
  %shr = lshr i32 %10, 2
  %11 = load i32, i32* %bits_size, align 4, !tbaa !5
  %sub = sub i32 %11, %shr
  store i32 %sub, i32* %bits_size, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %12 = load i32, i32* %bits_size, align 4, !tbaa !5
  %cmp8 = icmp ult i32 %12, 1024
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 1024, i32* %bits_size, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %13 = load i32, i32* %bits_size, align 4, !tbaa !5
  %14 = bitcast i32* %bits_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret i32 %13
}

declare i32 @gdev_mem_max_height(%struct.gx_device_memory_s*, i32, i64, i32) #1

declare i32 @gdev_mem_bits_size(%struct.gx_device_memory_s*, i32, i32, i64*) #1

; Function Attrs: nounwind uwtable
define internal i32 @clist_init_tile_cache(%struct.gx_device_s* %dev, i8* %init_data, i64 %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %init_data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %data = alloca i8*, align 8
  %bits_size = alloca i32, align 4
  %avg_char_size = alloca i32, align 4
  %hc = alloca i32, align 4
  %hsize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %init_data, i8** %init_data.addr, align 8, !tbaa !1
  store i64 %data_size, i64* %data_size.addr, align 8, !tbaa !141
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8*, i8** %init_data.addr, align 8, !tbaa !1
  store i8* %4, i8** %data, align 8, !tbaa !1
  %5 = bitcast i32* %bits_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i64, i64* %data_size.addr, align 8, !tbaa !141
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %bits_size, align 4, !tbaa !5
  %7 = bitcast i32* %avg_char_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %9 = load float, float* %arrayidx, align 4, !tbaa !161
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %11 = load float, float* %arrayidx2, align 4, !tbaa !161
  %mul = fmul float %9, %11
  %conv3 = fpext float %mul to double
  %mul4 = fmul double %conv3, 0x3F53C0CA4587E6B7
  %conv5 = fptoui double %mul4 to i32
  %add = add i32 %conv5, 24
  store i32 %add, i32* %avg_char_size, align 4, !tbaa !5
  %12 = bitcast i32* %hc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load i32, i32* %bits_size, align 4, !tbaa !5
  %14 = load i32, i32* %avg_char_size, align 4, !tbaa !5
  %div = udiv i32 %13, %14
  store i32 %div, i32* %hc, align 4, !tbaa !5
  %15 = bitcast i32* %hsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %16 = load i32, i32* %hc, align 4, !tbaa !5
  %add6 = add i32 %16, 1
  %17 = load i32, i32* %hc, align 4, !tbaa !5
  %and = and i32 %add6, %17
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %hc, align 4, !tbaa !5
  %shr = lshr i32 %18, 1
  %19 = load i32, i32* %hc, align 4, !tbaa !5
  %or = or i32 %19, %shr
  store i32 %or, i32* %hc, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i32, i32* %hc, align 4, !tbaa !5
  %cmp = icmp ult i32 %20, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 255, i32* %hc, align 4, !tbaa !5
  br label %if.end.11

if.else:                                          ; preds = %while.end
  %21 = load i32, i32* %hc, align 4, !tbaa !5
  %cmp8 = icmp ugt i32 %21, 4095
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  store i32 4095, i32* %hc, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.21, %if.end.11
  %22 = load i32, i32* %hc, align 4, !tbaa !5
  %cmp13 = icmp uge i32 %22, 3
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.12
  %23 = load i32, i32* %hc, align 4, !tbaa !5
  %add15 = add i32 %23, 1
  %conv16 = zext i32 %add15 to i64
  %mul17 = mul i64 %conv16, 8
  %conv18 = trunc i64 %mul17 to i32
  store i32 %conv18, i32* %hsize, align 4, !tbaa !5
  %24 = load i32, i32* %bits_size, align 4, !tbaa !5
  %cmp19 = icmp uge i32 %conv18, %24
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.12
  %25 = phi i1 [ false, %while.cond.12 ], [ %cmp19, %land.rhs ]
  br i1 %25, label %while.body.21, label %while.end.23

while.body.21:                                    ; preds = %land.end
  %26 = load i32, i32* %hc, align 4, !tbaa !5
  %shr22 = lshr i32 %26, 1
  store i32 %shr22, i32* %hc, align 4, !tbaa !5
  br label %while.cond.12

while.end.23:                                     ; preds = %land.end
  %27 = load i32, i32* %hc, align 4, !tbaa !5
  %cmp24 = icmp ult i32 %27, 3
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %while.end.23
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %while.end.23
  %28 = load i32, i32* %hc, align 4, !tbaa !5
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_hash_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %29, i32 0, i32 53
  store i32 %28, i32* %tile_hash_mask, align 4, !tbaa !147
  %30 = load i32, i32* %hc, align 4, !tbaa !5
  %31 = load i32, i32* %hc, align 4, !tbaa !5
  %shr28 = lshr i32 %31, 2
  %sub = sub i32 %30, %shr28
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_max_count = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 75
  store i32 %sub, i32* %tile_max_count, align 4, !tbaa !258
  %33 = load i8*, i8** %data, align 8, !tbaa !1
  %34 = bitcast i8* %33 to %struct.tile_hash*
  %35 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %35, i32 0, i32 55
  store %struct.tile_hash* %34, %struct.tile_hash** %tile_table, align 8, !tbaa !146
  %36 = load i32, i32* %hsize, align 4, !tbaa !5
  %37 = load i8*, i8** %data, align 8, !tbaa !1
  %idx.ext = zext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  %38 = load i32, i32* %hsize, align 4, !tbaa !5
  %39 = load i32, i32* %bits_size, align 4, !tbaa !5
  %sub29 = sub i32 %39, %38
  store i32 %sub29, i32* %bits_size, align 4, !tbaa !5
  %40 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %chunk = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %40, i32 0, i32 51
  %41 = load i8*, i8** %data, align 8, !tbaa !1
  %42 = load i32, i32* %bits_size, align 4, !tbaa !5
  call void @gx_bits_cache_chunk_init(%struct.gx_bits_cache_chunk_s* %chunk, i8* %41, i32 %42) #4
  %43 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %43, i32 0, i32 52
  %44 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %chunk30 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %44, i32 0, i32 51
  call void @gx_bits_cache_init(%struct.gx_bits_cache_s* %bits, %struct.gx_bits_cache_chunk_s* %chunk30) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26
  %45 = bitcast i32* %hsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast i32* %hc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %avg_char_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %bits_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_init_bands(%struct.gx_device_s* %dev, %struct.gx_device_memory_s* %bdev, i32 %data_size, i32 %band_width, i32 %band_height) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %bdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %data_size.addr = alloca i32, align 4
  %band_width.addr = alloca i32, align 4
  %band_height.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %nbands = alloca i32, align 4
  %space = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %bdev, %struct.gx_device_memory_s** %bdev.addr, align 8, !tbaa !1
  store i32 %data_size, i32* %data_size.addr, align 4, !tbaa !5
  store i32 %band_width, i32* %band_width.addr, align 4, !tbaa !5
  store i32 %band_height, i32* %band_height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %nbands to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i64* %space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %open_device1 = bitcast {}** %open_device to i32 (%struct.gx_device_s*)**
  %6 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device1, align 8, !tbaa !259
  %cmp = icmp eq i32 (%struct.gx_device_s*)* %6, @pattern_clist_open_device
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 14
  %8 = load i32, i32* %height, align 4, !tbaa !81
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  store i32 %8, i32* %BandHeight, align 4, !tbaa !80
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %nbands2 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 59
  store i32 1, i32* %nbands2, align 4, !tbaa !109
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %bdev.addr, align 8, !tbaa !1
  %12 = load i32, i32* %band_width.addr, align 4, !tbaa !5
  %13 = load i32, i32* %band_height.addr, align 4, !tbaa !5
  %call = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %11, i32 %12, i32 %13, i64* %space) #4
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load i64, i64* %space, align 8, !tbaa !141
  %15 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %conv = zext i32 %15 to i64
  %cmp4 = icmp ugt i64 %14, %conv
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %lor.lhs.false
  %16 = load i32, i32* %band_height.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info8 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 58
  %band_params9 = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info8, i32 0, i32 8
  %BandHeight10 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params9, i32 0, i32 1
  store i32 %16, i32* %BandHeight10, align 4, !tbaa !80
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 43
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !180
  %height11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 14
  %20 = load i32, i32* %height11, align 4, !tbaa !81
  %21 = load i32, i32* %band_height.addr, align 4, !tbaa !5
  %add = add nsw i32 %20, %21
  %sub = sub nsw i32 %add, 1
  %22 = load i32, i32* %band_height.addr, align 4, !tbaa !5
  %div = sdiv i32 %sub, %22
  store i32 %div, i32* %nbands, align 4, !tbaa !5
  %23 = load i32, i32* %nbands, align 4, !tbaa !5
  %24 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %nbands12 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %24, i32 0, i32 59
  store i32 %23, i32* %nbands12, align 4, !tbaa !109
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %25 = bitcast i64* %space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i32* %nbands to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_init_states(%struct.gx_device_s* %dev, i8* %init_data, i32 %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %init_data.addr = alloca i8*, align 8
  %data_size.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %state_size = alloca i64, align 8
  %alignment = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %init_data, i8** %init_data.addr, align 8, !tbaa !1
  store i32 %data_size, i32* %data_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i64* %state_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 59
  %5 = load i32, i32* %nbands, align 4, !tbaa !109
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 1808
  store i64 %mul, i64* %state_size, align 8, !tbaa !141
  %6 = bitcast i64* %alignment to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8*, i8** %init_data.addr, align 8, !tbaa !1
  %8 = ptrtoint i8* %7 to i64
  %sub = sub nsw i64 0, %8
  %and = and i64 %sub, 7
  store i64 %and, i64* %alignment, align 8, !tbaa !141
  %9 = load i64, i64* %state_size, align 8, !tbaa !141
  %add = add i64 %9, 24
  %add1 = add i64 %add, 54
  %add2 = add i64 %add1, 100
  %10 = load i64, i64* %alignment, align 8, !tbaa !141
  %add3 = add i64 %add2, %10
  %11 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %conv4 = zext i32 %11 to i64
  %cmp = icmp ugt i64 %add3, %conv4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %init_data.addr, align 8, !tbaa !1
  %13 = load i32, i32* %data_size.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 69
  store i8* %add.ptr, i8** %cend, align 8, !tbaa !110
  %15 = load i64, i64* %alignment, align 8, !tbaa !141
  %16 = load i8*, i8** %init_data.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %16, i64 %15
  store i8* %add.ptr6, i8** %init_data.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %init_data.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to %struct.gx_clist_state_s*
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 66
  store %struct.gx_clist_state_s* %18, %struct.gx_clist_state_s** %states, align 8, !tbaa !121
  %20 = load i8*, i8** %init_data.addr, align 8, !tbaa !1
  %21 = load i64, i64* %state_size, align 8, !tbaa !141
  %add.ptr7 = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 67
  store i8* %add.ptr7, i8** %cbuf, align 8, !tbaa !111
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %23 = bitcast i64* %alignment to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast i64* %state_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare void @gx_bits_cache_chunk_init(%struct.gx_bits_cache_chunk_s*, i8*, i32) #1

declare void @gx_bits_cache_init(%struct.gx_bits_cache_s*, %struct.gx_bits_cache_chunk_s*) #1

declare void @gs_c_param_list_write(%struct.gs_c_param_list_s*, %struct.gs_memory_s*) #1

declare void @gs_c_param_list_read(%struct.gs_c_param_list_s*) #1

declare i32 @cmd_put_params(%struct.gx_device_clist_writer_s*, %struct.gs_param_list_s*) #1

declare void @gs_c_param_list_release(%struct.gs_c_param_list_s*) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!10, !2, i64 0}
!10 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!11 = !{!12, !6, i64 1880}
!12 = !{!"gx_device_clist_common_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !13, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !15, i64 96, !18, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !19, i64 984, !6, i64 1052, !6, i64 1056, !20, i64 1064, !2, i64 1104, !3, i64 1112, !22, i64 1120, !23, i64 1144, !2, i64 1728, !24, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !21, i64 1792, !6, i64 1808, !6, i64 1812, !25, i64 1816, !26, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !27, i64 1888, !6, i64 10144, !14, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184}
!13 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!"long", !3, i64 0}
!15 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !16, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !17, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !6, i64 712}
!16 = !{!"short", !3, i64 0}
!17 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!18 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!19 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!20 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !21, i64 16, !6, i64 32, !3, i64 36}
!21 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !14, i64 8}
!22 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!24 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!25 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20}
!26 = !{!"gx_bits_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!27 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !6, i64 8216, !14, i64 8224, !14, i64 8232, !21, i64 8240}
!28 = !{!29, !14, i64 12136}
!29 = !{!"gx_device_clist_writer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !13, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !15, i64 96, !18, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !19, i64 984, !6, i64 1052, !6, i64 1056, !20, i64 1064, !2, i64 1104, !3, i64 1112, !22, i64 1120, !23, i64 1144, !2, i64 1728, !24, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !21, i64 1792, !6, i64 1808, !6, i64 1812, !25, i64 1816, !26, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !27, i64 1888, !6, i64 10144, !14, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184, !6, i64 10192, !2, i64 10200, !2, i64 10208, !2, i64 10216, !2, i64 10224, !2, i64 10232, !30, i64 10240, !6, i64 10256, !6, i64 10260, !6, i64 10264, !6, i64 10268, !31, i64 10272, !6, i64 10320, !6, i64 10324, !6, i64 10328, !33, i64 10336, !6, i64 11952, !6, i64 11956, !6, i64 11960, !6, i64 11964, !3, i64 11968, !2, i64 12016, !14, i64 12024, !46, i64 12032, !3, i64 12080, !14, i64 12112, !14, i64 12120, !14, i64 12128, !14, i64 12136, !6, i64 12144, !6, i64 12148, !6, i64 12152, !6, i64 12156, !2, i64 12160, !6, i64 12168, !2, i64 12176, !6, i64 12184, !6, i64 12188, !6, i64 12192, !6, i64 12196, !6, i64 12200, !6, i64 12204, !2, i64 12208, !14, i64 12216, !6, i64 12224, !6, i64 12228, !6, i64 12232, !6, i64 12236, !15, i64 12240}
!30 = !{!"cmd_list_s", !2, i64 0, !2, i64 8}
!31 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !32, i64 12, !14, i64 24, !16, i64 32, !16, i64 34, !16, i64 36, !16, i64 38, !6, i64 40}
!32 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!33 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !34, i64 24, !6, i64 128, !38, i64 132, !6, i64 168, !39, i64 176, !39, i64 192, !6, i64 208, !6, i64 212, !16, i64 216, !3, i64 220, !41, i64 224, !41, i64 228, !42, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !35, i64 296, !43, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !35, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !44, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !45, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !45, i64 1336}
!34 = !{!"gx_line_params_s", !35, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !6, i64 36, !36, i64 40, !37, i64 64}
!35 = !{!"float", !3, i64 0}
!36 = !{!"gs_matrix_s", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20}
!37 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !35, i64 12, !6, i64 16, !35, i64 20, !6, i64 24, !6, i64 28, !35, i64 32}
!38 = !{!"gs_matrix_fixed_s", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!39 = !{!"gs_point_s", !40, i64 0, !40, i64 8}
!40 = !{!"double", !3, i64 0}
!41 = !{!"gs_transparency_source_s", !35, i64 0}
!42 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!43 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!44 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!45 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !3, i64 24}
!46 = !{!"clist_color_space_s", !3, i64 0, !14, i64 8, !47, i64 16, !2, i64 40}
!47 = !{!"clist_icc_color_s", !14, i64 0, !3, i64 8, !6, i64 12, !3, i64 16, !3, i64 20}
!48 = !{!29, !2, i64 12016}
!49 = !{!29, !2, i64 12072}
!50 = !{!29, !2, i64 12176}
!51 = !{!29, !2, i64 12208}
!52 = !{!29, !2, i64 10160}
!53 = !{!54, !2, i64 10232}
!54 = !{!"gx_device_clist_reader_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !13, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !15, i64 96, !18, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !19, i64 984, !6, i64 1052, !6, i64 1056, !20, i64 1064, !2, i64 1104, !3, i64 1112, !22, i64 1120, !23, i64 1144, !2, i64 1728, !24, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !21, i64 1792, !6, i64 1808, !6, i64 1812, !25, i64 1816, !26, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !27, i64 1888, !6, i64 10144, !14, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184, !55, i64 10192, !2, i64 10208, !2, i64 10216, !6, i64 10224, !2, i64 10232, !6, i64 10240, !2, i64 10248, !2, i64 10256, !6, i64 10264, !6, i64 10268, !6, i64 10272}
!55 = !{!"gx_render_plane_s", !6, i64 0, !6, i64 4, !6, i64 8}
!56 = !{!54, !2, i64 10160}
!57 = !{!54, !2, i64 10216}
!58 = !{!8, !2, i64 40}
!59 = !{!60, !2, i64 0}
!60 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!61 = !{!62, !6, i64 84}
!62 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !13, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !15, i64 96, !18, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !19, i64 984, !6, i64 1052, !6, i64 1056, !20, i64 1064, !2, i64 1104, !3, i64 1112, !22, i64 1120, !23, i64 1144}
!63 = !{!29, !6, i64 12148}
!64 = !{!29, !6, i64 84}
!65 = !{!29, !6, i64 10176}
!66 = !{!29, !2, i64 10184}
!67 = !{!68, !14, i64 16}
!68 = !{!"gsicc_link_cache_s", !2, i64 0, !6, i64 8, !13, i64 16, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64}
!69 = !{!68, !2, i64 32}
!70 = !{!68, !2, i64 24}
!71 = !{!29, !2, i64 24}
!72 = !{!73, !2, i64 208}
!73 = !{!"gs_memory_s", !2, i64 0, !74, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!74 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!75 = !{!73, !2, i64 24}
!76 = !{!29, !6, i64 1808}
!77 = !{!29, !2, i64 1144}
!78 = !{!29, !2, i64 1768}
!79 = !{!29, !2, i64 1776}
!80 = !{!29, !6, i64 10132}
!81 = !{!62, !6, i64 836}
!82 = !{!12, !2, i64 10096}
!83 = !{!27, !2, i64 4096}
!84 = !{!27, !2, i64 8208}
!85 = !{!86, !2, i64 8}
!86 = !{!"clist_io_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!87 = !{!27, !2, i64 8200}
!88 = !{!29, !6, i64 12144}
!89 = !{!29, !6, i64 12152}
!90 = !{!29, !6, i64 12156}
!91 = !{!29, !2, i64 5984}
!92 = !{!29, !2, i64 10088}
!93 = !{!3, !3, i64 0}
!94 = !{!29, !2, i64 10096}
!95 = !{!86, !2, i64 0}
!96 = !{!29, !6, i64 12168}
!97 = !{!54, !2, i64 24}
!98 = !{!54, !2, i64 10168}
!99 = !{!86, !2, i64 64}
!100 = !{!86, !2, i64 72}
!101 = !{!102, !6, i64 0}
!102 = !{!"clist_icctable_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!103 = !{!102, !2, i64 16}
!104 = !{!105, !2, i64 24}
!105 = !{!"clist_icctable_entry_s", !106, i64 0, !2, i64 24, !2, i64 32, !6, i64 40}
!106 = !{!"clist_icc_serial_entry_s", !14, i64 0, !14, i64 8, !6, i64 16}
!107 = !{!102, !2, i64 8}
!108 = !{!29, !14, i64 10120}
!109 = !{!29, !6, i64 10144}
!110 = !{!29, !2, i64 10224}
!111 = !{!29, !2, i64 10208}
!112 = !{!29, !2, i64 12160}
!113 = !{!86, !2, i64 40}
!114 = !{!115, !6, i64 4}
!115 = !{!"cmd_block_s", !6, i64 0, !6, i64 4, !14, i64 8}
!116 = !{!115, !6, i64 0}
!117 = !{!86, !2, i64 56}
!118 = !{!115, !14, i64 8}
!119 = !{!86, !2, i64 24}
!120 = !{!29, !6, i64 1056}
!121 = !{!29, !2, i64 10200}
!122 = !{!123, !6, i64 1792}
!123 = !{!"gx_clist_state_s", !3, i64 0, !124, i64 16, !6, i64 360, !14, i64 368, !14, i64 376, !32, i64 384, !3, i64 392, !3, i64 408, !125, i64 1720, !6, i64 1736, !16, i64 1740, !16, i64 1742, !6, i64 1744, !6, i64 1748, !6, i64 1752, !30, i64 1760, !126, i64 1776}
!124 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !32, i64 336}
!125 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!126 = !{!"gx_colors_usage_s", !14, i64 0, !6, i64 8, !127, i64 12}
!127 = !{!"gs_int_rect_s", !32, i64 0, !32, i64 8}
!128 = !{!123, !6, i64 1800}
!129 = !{!105, !2, i64 32}
!130 = !{!131, !6, i64 224}
!131 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !132, i64 20, !14, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !133, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !13, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!132 = !{!"gs_range_icc_s", !3, i64 0}
!133 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!134 = !{!105, !6, i64 40}
!135 = !{!105, !14, i64 8}
!136 = !{!105, !6, i64 16}
!137 = !{!131, !14, i64 288}
!138 = !{!131, !2, i64 304}
!139 = !{!131, !2, i64 296}
!140 = !{!73, !2, i64 64}
!141 = !{!14, !14, i64 0}
!142 = !{!62, !6, i64 100}
!143 = !{!29, !6, i64 1784}
!144 = !{!29, !6, i64 1884}
!145 = !{!29, !6, i64 1880}
!146 = !{!29, !2, i64 1872}
!147 = !{!29, !6, i64 1864}
!148 = !{!29, !2, i64 10216}
!149 = !{!29, !2, i64 10232}
!150 = !{!29, !2, i64 10248}
!151 = !{!29, !2, i64 10240}
!152 = !{!29, !6, i64 10256}
!153 = !{!29, !6, i64 10260}
!154 = !{i64 0, i64 16, !93, i64 16, i64 8, !1, i64 24, i64 8, !141, i64 24, i64 16, !93, i64 40, i64 4, !5, i64 44, i64 4, !5, i64 24, i64 64, !93, i64 88, i64 256, !93, i64 344, i64 2, !155, i64 24, i64 128, !93, i64 24, i64 8, !141, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 24, i64 8, !141, i64 32, i64 4, !5, i64 352, i64 4, !5, i64 356, i64 4, !5, i64 360, i64 4, !5, i64 368, i64 8, !141, i64 376, i64 8, !141, i64 384, i64 4, !5, i64 388, i64 4, !5, i64 392, i64 16, !93, i64 408, i64 1312, !93, i64 1720, i64 4, !5, i64 1724, i64 4, !5, i64 1728, i64 4, !5, i64 1732, i64 4, !5, i64 1736, i64 4, !5, i64 1740, i64 2, !155, i64 1742, i64 2, !155, i64 1744, i64 4, !5, i64 1748, i64 4, !5, i64 1752, i64 4, !5, i64 1760, i64 8, !1, i64 1768, i64 8, !1, i64 1776, i64 8, !141, i64 1784, i64 4, !5, i64 1788, i64 4, !5, i64 1792, i64 4, !5, i64 1796, i64 4, !5, i64 1800, i64 4, !5}
!155 = !{!16, !16, i64 0}
!156 = !{!29, !6, i64 1868}
!157 = !{!29, !6, i64 10320}
!158 = !{!29, !6, i64 10324}
!159 = !{!29, !6, i64 10328}
!160 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !161, i64 28, i64 4, !93, i64 32, i64 4, !93, i64 36, i64 4, !93, i64 40, i64 4, !93, i64 44, i64 4, !5, i64 48, i64 4, !161, i64 52, i64 4, !161, i64 56, i64 4, !161, i64 60, i64 4, !5, i64 64, i64 4, !161, i64 68, i64 4, !161, i64 72, i64 4, !161, i64 76, i64 4, !161, i64 80, i64 4, !161, i64 84, i64 4, !161, i64 88, i64 8, !1, i64 96, i64 4, !5, i64 100, i64 4, !161, i64 104, i64 4, !5, i64 108, i64 4, !161, i64 112, i64 4, !5, i64 116, i64 4, !5, i64 120, i64 4, !161, i64 128, i64 4, !5, i64 132, i64 4, !161, i64 136, i64 4, !161, i64 140, i64 4, !161, i64 144, i64 4, !161, i64 148, i64 4, !161, i64 152, i64 4, !161, i64 156, i64 4, !5, i64 160, i64 4, !5, i64 164, i64 4, !5, i64 168, i64 4, !5, i64 176, i64 8, !162, i64 184, i64 8, !162, i64 192, i64 8, !162, i64 200, i64 8, !162, i64 208, i64 4, !5, i64 212, i64 4, !5, i64 216, i64 2, !155, i64 220, i64 4, !93, i64 224, i64 4, !161, i64 228, i64 4, !161, i64 232, i64 4, !5, i64 236, i64 4, !5, i64 240, i64 8, !141, i64 248, i64 4, !5, i64 252, i64 4, !5, i64 256, i64 4, !5, i64 264, i64 8, !1, i64 272, i64 4, !5, i64 276, i64 4, !5, i64 280, i64 4, !5, i64 284, i64 4, !5, i64 288, i64 4, !5, i64 292, i64 4, !5, i64 296, i64 4, !161, i64 300, i64 4, !5, i64 304, i64 4, !5, i64 308, i64 4, !5, i64 312, i64 4, !5, i64 316, i64 4, !5, i64 320, i64 4, !161, i64 324, i64 4, !5, i64 328, i64 4, !5, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 16, !93, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 4, !5, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 4, !5, i64 440, i64 8, !1, i64 448, i64 4, !5, i64 456, i64 8, !1, i64 464, i64 4, !5, i64 472, i64 8, !1, i64 480, i64 4, !5, i64 488, i64 8, !1, i64 496, i64 512, !93, i64 1008, i64 8, !1, i64 1016, i64 8, !1, i64 1024, i64 4, !5, i64 1028, i64 4, !93, i64 1032, i64 4, !5, i64 1036, i64 4, !5, i64 1040, i64 8, !141, i64 1048, i64 256, !93, i64 1304, i64 8, !1, i64 1312, i64 8, !1, i64 1320, i64 8, !1, i64 1328, i64 8, !1, i64 1336, i64 4, !5, i64 1340, i64 4, !93, i64 1344, i64 4, !5, i64 1348, i64 4, !5, i64 1352, i64 8, !141, i64 1360, i64 256, !93}
!161 = !{!35, !35, i64 0}
!162 = !{!40, !40, i64 0}
!163 = !{!29, !14, i64 12024}
!164 = !{!29, !3, i64 12032}
!165 = !{!29, !14, i64 12040}
!166 = !{!29, !14, i64 12112}
!167 = !{!29, !14, i64 12120}
!168 = !{!29, !14, i64 12128}
!169 = !{!29, !6, i64 12192}
!170 = !{!29, !6, i64 12184}
!171 = !{!29, !6, i64 836}
!172 = !{!29, !6, i64 12196}
!173 = !{!29, !6, i64 12188}
!174 = !{!29, !6, i64 12200}
!175 = !{!29, !6, i64 12204}
!176 = !{!29, !6, i64 12232}
!177 = !{!29, !6, i64 12228}
!178 = !{!29, !6, i64 12224}
!179 = !{!29, !2, i64 10168}
!180 = !{!29, !2, i64 1728}
!181 = !{!62, !2, i64 1248}
!182 = !{!105, !14, i64 0}
!183 = !{!131, !2, i64 256}
!184 = !{!131, !6, i64 220}
!185 = !{!73, !2, i64 0}
!186 = !{!131, !6, i64 152}
!187 = !{!131, !14, i64 144}
!188 = !{!73, !2, i64 72}
!189 = !{!102, !2, i64 24}
!190 = !{!123, !14, i64 1776}
!191 = !{!123, !6, i64 1784}
!192 = !{!126, !14, i64 0}
!193 = !{!126, !6, i64 8}
!194 = !{!195, !2, i64 16}
!195 = !{!"clist_writer_cropping_buffer_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !2, i64 16}
!196 = !{!195, !6, i64 0}
!197 = !{!195, !6, i64 4}
!198 = !{!195, !6, i64 8}
!199 = !{!195, !6, i64 12}
!200 = !{!86, !2, i64 32}
!201 = !{!62, !2, i64 24}
!202 = !{!29, !6, i64 0}
!203 = !{!29, !2, i64 8}
!204 = !{!29, !2, i64 16}
!205 = !{!29, !2, i64 32}
!206 = !{!29, !6, i64 40}
!207 = !{!29, !14, i64 56}
!208 = !{!29, !2, i64 64}
!209 = !{!29, !2, i64 72}
!210 = !{!29, !6, i64 80}
!211 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !93, i64 12, i64 2, !155, i64 14, i64 1, !93, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !93, i64 44, i64 64, !93, i64 108, i64 64, !93, i64 176, i64 512, !93, i64 688, i64 8, !1, i64 696, i64 4, !93, i64 704, i64 8, !141, i64 712, i64 4, !5}
!212 = !{i64 0, i64 8, !141, i64 8, i64 8, !141}
!213 = !{!214, !6, i64 228}
!214 = !{!"gs_pattern1_instance_s", !13, i64 0, !2, i64 24, !2, i64 32, !14, i64 40, !215, i64 48, !36, i64 152, !217, i64 176, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !32, i64 228, !14, i64 240}
!215 = !{!"gs_pattern1_template_s", !2, i64 0, !6, i64 8, !216, i64 16, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !217, i64 56, !35, i64 88, !35, i64 92, !2, i64 96}
!216 = !{!"gs_uid_s", !14, i64 0, !2, i64 8}
!217 = !{!"gs_rect_s", !39, i64 0, !39, i64 16}
!218 = !{!29, !6, i64 832}
!219 = !{!214, !6, i64 232}
!220 = !{!29, !6, i64 1796}
!221 = !{!62, !6, i64 832}
!222 = !{!62, !6, i64 852}
!223 = !{!29, !6, i64 852}
!224 = !{!62, !6, i64 848}
!225 = !{!29, !6, i64 848}
!226 = !{!62, !6, i64 956}
!227 = !{!29, !6, i64 956}
!228 = !{!29, !6, i64 960}
!229 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 8, !1, i64 208, i64 8, !1, i64 216, i64 8, !1, i64 224, i64 8, !1, i64 232, i64 8, !1, i64 240, i64 8, !1, i64 248, i64 8, !1, i64 256, i64 8, !1, i64 264, i64 8, !1, i64 272, i64 8, !1, i64 280, i64 8, !1, i64 288, i64 8, !1, i64 296, i64 8, !1, i64 304, i64 8, !1, i64 312, i64 8, !1, i64 320, i64 8, !1, i64 328, i64 8, !1, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 8, !1, i64 384, i64 8, !1, i64 392, i64 8, !1, i64 400, i64 8, !1, i64 408, i64 8, !1, i64 416, i64 8, !1, i64 424, i64 8, !1, i64 432, i64 8, !1, i64 440, i64 8, !1, i64 448, i64 8, !1, i64 456, i64 8, !1, i64 464, i64 8, !1, i64 472, i64 8, !1, i64 480, i64 8, !1, i64 488, i64 8, !1, i64 496, i64 8, !1, i64 504, i64 8, !1, i64 512, i64 8, !1, i64 520, i64 8, !1, i64 528, i64 8, !1, i64 536, i64 8, !1, i64 544, i64 8, !1, i64 552, i64 8, !1, i64 560, i64 8, !1, i64 568, i64 8, !1, i64 576, i64 8, !1}
!230 = !{!62, !14, i64 56}
!231 = !{!62, !2, i64 72}
!232 = !{!62, !2, i64 64}
!233 = !{!29, !6, i64 1792}
!234 = !{!29, !14, i64 1800}
!235 = !{!73, !2, i64 200}
!236 = !{!29, !2, i64 1432}
!237 = !{!29, !2, i64 1680}
!238 = !{!29, !2, i64 1688}
!239 = !{!62, !3, i64 1112}
!240 = !{!29, !3, i64 1112}
!241 = !{!29, !6, i64 10128}
!242 = !{!29, !14, i64 10136}
!243 = !{!62, !16, i64 108}
!244 = !{!29, !16, i64 12252}
!245 = !{!62, !3, i64 104}
!246 = !{!29, !3, i64 12248}
!247 = !{!29, !6, i64 12244}
!248 = !{!29, !2, i64 1736}
!249 = !{!62, !2, i64 1312}
!250 = !{!29, !14, i64 10112}
!251 = !{!62, !2, i64 1664}
!252 = !{!62, !2, i64 48}
!253 = !{!29, !14, i64 12216}
!254 = !{!29, !6, i64 10104}
!255 = !{!62, !3, i64 110}
!256 = !{!62, !6, i64 116}
!257 = !{!62, !6, i64 112}
!258 = !{!29, !6, i64 10268}
!259 = !{!62, !2, i64 1144}
