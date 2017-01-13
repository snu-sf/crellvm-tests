; ModuleID = './gdevpdfp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_param_item_s = type { i8*, i8, i16 }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, {}*, {}*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gs_pattern_instance_s = type opaque
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
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gx_device_pdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_param_float_array_s, %struct.gs_param_float_array_s, i32, i32, i32, i64, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.gs_param_int_array_s, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, %struct.gs_param_string_s, i32, i32, [32 x i8], [32 x i8], [16 x i8], i32, i32, i32, %struct.gs_rect_s, %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s, i32, i32, i32, i32, i32, i64, [4 x i64], i32, i64, i64, i32, i32, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, i64, %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, i64, i32, i32, i64, i32, i64, i64, i32, %struct.pdf_text_data_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_s*, i32, i64, [15 x %struct.pdf_resource_list_s], [5 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*], %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, %struct.pdf_outline_level_s*, i32, i32, i32, i32, %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, [16 x i8], [2 x i64], %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_array_s*, %struct.cos_array_s*, %struct.pdf_font_cache_elem_s*, %struct.gs_point_s, %struct.gx_path_s*, %struct.cos_array_s*, i32, %struct.cos_dict_s*, %struct.gs_text_enum_s*, %struct.pdf_viewer_state_s*, i32, i32, i32, %struct.pdf_viewer_state_s, i32, i32, i32, %struct.pdf_substream_save_s*, i32, i32, i32, %struct.gs_matrix_s, %struct.cos_dict_s*, i32, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, %struct.gs_matrix_fixed_s, i32, %struct.gs_rect_s, i32, i32, i32, %struct.pdf_char_glyph_pairs_s*, i32, i32, i64, i32, i32, i32, %struct.gs_matrix_s, double, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.linearisation_record_s*, i32, i32 }
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
%struct.gx_hl_saved_color_s = type { i64, i64, i32, %struct.gs_client_color_s, %struct.gx_device_color_saved_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.psdf_distiller_params_s = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_array_s }
%struct.psdf_image_params_s = type { %struct.gs_c_param_list_s*, i32, i32, i32, %struct.gs_c_param_list_s*, i32, float, i32, i32, i8*, i32, i8*, %struct.stream_template_s* }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.pdf_page_dsc_info_s = type { i32, i32, %struct.gs_rect_s }
%struct.pdf_temp_file_s = type { [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, %struct.stream_s* }
%struct.pdf_text_data_s = type opaque
%struct.pdf_text_rotation_s = type { [5 x i64], i32 }
%struct.pdf_page_s = type { %struct.cos_dict_s*, %struct.gs_point_s, i32, i64, [7 x i64], i64, %struct.cos_array_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_dsc_info_s, i32, i32 }
%struct.pdf_resource_list_s = type { [16 x %struct.pdf_resource_s*] }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.cos_dict_s* }
%struct.pdf_article_s = type { %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.pdf_bead_s, %struct.pdf_bead_s }
%struct.pdf_bead_s = type { i64, i64, i64, i64, i64, %struct.gs_rect_s }
%struct.pdf_font_cache_elem_s = type { %struct.pdf_font_cache_elem_s*, i64, i32, i32, %struct.pdf_font_resource_s*, i8*, double*, %struct.gx_device_pdf_s* }
%struct.pdf_font_resource_s = type opaque
%struct.cos_array_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_array_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_element_s = type opaque
%struct.cos_array_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.pdf_text_state_s = type opaque
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"CoreDistVersion\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CompatibilityLevel\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ForOPDFRead\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pdfmark\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DSC\00", align 1
@pdf_param_items = internal constant [62 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8 2, i16 9376 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8 2, i16 9380 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8 1, i16 9384 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8 1, i16 9388 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8 1, i16 9392 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8 1, i16 9396 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8 1, i16 9400 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8 1, i16 9404 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8 1, i16 9408 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8 1, i16 9412 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8 1, i16 9416 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i8 2, i16 9420 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8 1, i16 9460 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8 1, i16 9464 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8 3, i16 9472 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8 1, i16 9480 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8 1, i16 9484 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8 3, i16 9592 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i8 7, i16 9600 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8 5, i16 9616 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8 5, i16 9632 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8 2, i16 9648 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8 2, i16 9652 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8 2, i16 9656 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8 5, i16 9664 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8 1, i16 9548 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i8 1, i16 9556 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8 2, i16 9576 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i8 2, i16 9584 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8 1, i16 8860 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8 1, i16 8864 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8 1, i16 9552 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8 1, i16 9532 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8 1, i16 9560 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8 2, i16 9564 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8 5, i16 9488 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i8 5, i16 9504 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i8 2, i16 9520 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0), i8 8, i16 9424 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0), i8 1, i16 9456 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0), i8 8, i16 9440 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8 1, i16 30696 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8 1, i16 30700 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8 1, i16 30704 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8 1, i16 30708 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8 1, i16 30712 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i8 1, i16 30716 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i8 1, i16 30720 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), i8 2, i16 30724 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i8 1, i16 30728 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0), i8 1, i16 30732 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i8 1, i16 30736 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0), i8 1, i16 30740 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), i8 1, i16 30744 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i8 1, i16 30748 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i8 1, i16 30752 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8 1, i16 30756 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0), i8 1, i16 30760 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i8 1, i16 30764 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i8 2, i16 30768 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8 2, i16 30772 }, %struct.gs_param_item_s zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [20 x i8] c"saved gx_device_pdf\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"PDFEndPage\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"PDFStartPage\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Optimize\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"ParseDSCCommentsForDocInfo\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ParseDSCComments\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"EmitDSCWarnings\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"CreateJobTicket\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"PreserveEPSInfo\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"AutoPositionEPSFiles\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"PreserveCopyPage\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"UsePrologue\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"OffOptimizations\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"ReAssignCharacters\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"ReEncodeCharacters\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"FirstObjectNumber\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"CompressFonts\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"PrintStatistics\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"MaxInlineImageSize\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"DSCEncodingToUnicode\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"OwnerPassword\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"UserPassword\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"KeyLength\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Permissions\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"EncryptionR\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"NoEncrypt\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"ProduceDSC\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"PatternImagemask\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"MaxClipPathSize\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"MaxShadingBitmapSize\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"HaveTrueTypes\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"HaveCIDSystem\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"HaveTransparency\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"CompressEntireFile\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"PDFX\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"PDFA\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"DocumentUUID\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"InstanceUUID\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"DocumentTimeSeq\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"PDFXTrimBoxToMediaBoxOffset\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"PDFXSetBleedBoxToMediaBox\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"PDFXBleedBoxToTrimBoxOffset\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"SetPageSize\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"RotatePages\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"FitPages\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"CenterPages\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"DoNumCopies\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"PreserveSeparation\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"PreserveDeviceN\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"PDFACompatibilityPolicy\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"DetectDuplicateImages\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"AllowIncrementalCFF\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"WantsToUnicode\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"AllowPSRepeatFunctions\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"IsDistiller\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"PreserveSMask\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"PreserveTrMode\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"NoT3CCITT\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"PDFUseOldCMS\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"FastWebView\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"FirstPage\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"LastPage\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"pdfpagelabels\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"/PageLabels\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"LockDistillerParams\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c".EmbedFontObjects\00", align 1
@gdev_pdf_put_params_impl.pcm_names = internal constant [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i8* null], align 16
@.str.71 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"DeviceN\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"ProcessColorModel\00", align 1
@.str.76 = private unnamed_addr constant [79 x i8] c"ConvertCMYKImagesToRGB is not compatible with ColorConversionStrategy of CMYK\0A\00", align 1
@.str.77 = private unnamed_addr constant [79 x i8] c"ConvertCMYKImagesToRGB is not compatible with ColorConversionStrategy of Gray\0A\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"reset default profile\0A\00", align 1
@.str.79 = private unnamed_addr constant [63 x i8] c"ColorConversionStrategy is incompatible to ProcessColorModel.\0A\00", align 1
@.str.80 = private unnamed_addr constant [65 x i8] c"Set UseCIEColor for UseDeviceIndependentColor to work properly.\0A\00", align 1
@.str.81 = private unnamed_addr constant [83 x i8] c"UseDeviceDependentColorForImages is not supported. Use UseDeviceIndependentColor.\0A\00", align 1
@.str.82 = private unnamed_addr constant [84 x i8] c"Replacing the deprecated device parameter value UseDeviceDependentColor with CMYK.\0A\00", align 1
@.str.83 = private unnamed_addr constant [84 x i8] c"Replacing the deprecated device parameter value UseDeviceDependentColor with sRGB.\0A\00", align 1
@.str.84 = private unnamed_addr constant [84 x i8] c"Replacing the deprecated device parameter value UseDeviceDependentColor with Gray.\0A\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"JPXEncode\00", align 1
@.str.86 = private unnamed_addr constant [48 x i8] c"JPXEncode requires CompatibilityLevel >= 1.5 .\0A\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"JBIG2Encode\00", align 1
@.str.88 = private unnamed_addr constant [50 x i8] c"JBIG2Encode requires CompatibilityLevel >= 1.4 .\0A\00", align 1
@.str.89 = private unnamed_addr constant [43 x i8] c"Owner Password changed mid-job, ignoring.\0A\00", align 1
@.str.90 = private unnamed_addr constant [45 x i8] c"Can't linearise PostScript output, ignoring\0A\00", align 1
@gs_param_type_sizes = external constant [0 x i8], align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"Creator\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"/Creator\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"/Title\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"For\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"/Author\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"PageOrientation\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"ViewingOrientation\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"PageViewingOrientation\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"[%g %g %g %g]\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"EPSF\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"BoundingBox\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"PageBoundingBox\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"[%lg %lg %lg %lg]\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %cl = alloca float, align 4
  %code = alloca i32, align 4
  %cdv = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = bitcast float* %cl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 75
  %5 = load double, double* %CompatibilityLevel, align 8, !tbaa !5
  %conv = fptrunc double %5 to float
  store float %conv, float* %cl, align 4, !tbaa !49
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %cdv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 5000, i32* %cdv, align 4, !tbaa !50
  %8 = load float, float* %cl, align 4, !tbaa !49
  %conv1 = fpext float %8 to double
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ParamCompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 72
  store double %conv1, double* %ParamCompatibilityLevel, align 8, !tbaa !51
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_psdf_get_params(%struct.gx_device_s* %10, %struct.gs_param_list_s* %11) #5
  store i32 %call, i32* %code, align 4, !tbaa !50
  %12 = load i32, i32* %code, align 4, !tbaa !50
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call3 = call i32 @param_write_int(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32* %cdv) #5
  store i32 %call3, i32* %code, align 4, !tbaa !50
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call7 = call i32 @param_write_float(%struct.gs_param_list_s* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), float* %cl) #5
  store i32 %call7, i32* %code, align 4, !tbaa !50
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %is_ps2write = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 74
  %16 = load i32, i32* %is_ps2write, align 4, !tbaa !52
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %lor.lhs.false.14, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.10
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 99
  %call11 = call i32 @param_write_bool(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32* %ForOPDFRead) #5
  store i32 %call11, i32* %code, align 4, !tbaa !50
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %land.lhs.true, %lor.lhs.false.10
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %19, i32 0, i32 0
  %20 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !53
  %requested = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %20, i32 0, i32 5
  %21 = load i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)** %requested, align 8, !tbaa !55
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call15 = call i32 %21(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #5
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %land.lhs.true.18, label %lor.lhs.false.22

land.lhs.true.18:                                 ; preds = %lor.lhs.false.14
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call19 = call i32 @param_write_null(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 %call19, i32* %code, align 4, !tbaa !50
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %land.lhs.true.18, %lor.lhs.false.14
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %24, i32 0, i32 0
  %25 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs23, align 8, !tbaa !53
  %requested24 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %25, i32 0, i32 5
  %26 = load i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)** %requested24, align 8, !tbaa !55
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call25 = call i32 %26(%struct.gs_param_list_s* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #5
  %cmp26 = icmp sgt i32 %call25, 0
  br i1 %cmp26, label %land.lhs.true.28, label %lor.lhs.false.32

land.lhs.true.28:                                 ; preds = %lor.lhs.false.22
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call29 = call i32 @param_write_null(%struct.gs_param_list_s* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 %call29, i32* %code, align 4, !tbaa !50
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %land.lhs.true.28, %lor.lhs.false.22
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_pdf_s* %30 to i8*
  %call33 = call i32 @gs_param_write_items(%struct.gs_param_list_s* %29, i8* %31, i8* null, %struct.gs_param_item_s* getelementptr inbounds ([62 x %struct.gs_param_item_s], [62 x %struct.gs_param_item_s]* @pdf_param_items, i32 0, i32 0)) #5
  store i32 %call33, i32* %code, align 4, !tbaa !50
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.32, %land.lhs.true.28, %land.lhs.true.18, %land.lhs.true, %lor.lhs.false.6, %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.32
  %32 = load i32, i32* %code, align 4, !tbaa !50
  %33 = bitcast i32* %cdv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast float* %cl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  ret i32 %32
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gdev_psdf_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_write_float(%struct.gs_param_list_s*, i8*, float*) #2

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #2

declare i32 @gs_param_write_items(%struct.gs_param_list_s*, i8*, i8*, %struct.gs_param_item_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %save_dev = alloca %struct.gx_device_pdf_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %3, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %4 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !57
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %7 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !58
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !57
  %call = call %struct.gs_memory_s* %7(%struct.gs_memory_s* %9) #5
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_pdf_s** %save_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !61
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 10
  %13 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !62
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !61
  %call4 = call i8* %13(%struct.gs_memory_s* %15, i32 30792, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  %16 = bitcast i8* %call4 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %16, %struct.gx_device_pdf_s** %save_dev, align 8, !tbaa !1
  %17 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_pdf_s* %17, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev, align 8, !tbaa !1
  %19 = bitcast %struct.gx_device_pdf_s* %18 to i8*
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_pdf_s* %20 to i8*
  %call5 = call i8* @memcpy(i8* %19, i8* %21, i64 30792) #6
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev, align 8, !tbaa !1
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call6 = call i32 @gdev_pdf_put_params_impl(%struct.gx_device_s* %22, %struct.gx_device_pdf_s* %23, %struct.gs_param_list_s* %24) #5
  store i32 %call6, i32* %code, align 4, !tbaa !50
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory7, align 8, !tbaa !61
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !61
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_pdf_s* %30 to i8*
  call void %27(%struct.gs_memory_s* %29, i8* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #5
  %32 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %33 = bitcast %struct.gx_device_pdf_s** %save_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @gdev_pdf_put_params_impl(%struct.gx_device_s* %dev, %struct.gx_device_pdf_s* %save_dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %save_dev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %cl = alloca float, align 4
  %locked = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %save_ccs = alloca i32, align 4
  %ppa = alloca %struct.gs_param_string_array_s, align 8
  %pps = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  %pcd = alloca %struct.cos_dict_s*, align 8
  %efo = alloca i32, align 4
  %cdv = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %fon = alloca i64, align 8
  %pcm = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp593 = alloca i32, align 4
  %__s1_len611 = alloca i64, align 8
  %__s2_len613 = alloca i64, align 8
  %tmp614 = alloca i32, align 4
  %__s1621 = alloca i8*, align 8
  %__result625 = alloca i32, align 4
  %tmp663 = alloca i32, align 4
  %__s1_len678 = alloca i64, align 8
  %__s2_len680 = alloca i64, align 8
  %tmp681 = alloca i32, align 4
  %__s1688 = alloca i8*, align 8
  %__result692 = alloca i32, align 4
  %tmp730 = alloca i32, align 4
  %__s1_len795 = alloca i64, align 8
  %__s2_len797 = alloca i64, align 8
  %tmp798 = alloca i32, align 4
  %__s1805 = alloca i8*, align 8
  %__result809 = alloca i32, align 4
  %tmp847 = alloca i32, align 4
  %__s1_len865 = alloca i64, align 8
  %__s2_len867 = alloca i64, align 8
  %tmp868 = alloca i32, align 4
  %__s1875 = alloca i8*, align 8
  %__result879 = alloca i32, align 4
  %tmp917 = alloca i32, align 4
  %__s1_len953 = alloca i64, align 8
  %__s2_len955 = alloca i64, align 8
  %tmp956 = alloca i32, align 4
  %__s1963 = alloca i8*, align 8
  %__result968 = alloca i32, align 4
  %tmp1006 = alloca i32, align 4
  %__s1_len1031 = alloca i64, align 8
  %__s2_len1033 = alloca i64, align 8
  %tmp1034 = alloca i32, align 4
  %__s11041 = alloca i8*, align 8
  %__result1046 = alloca i32, align 4
  %tmp1084 = alloca i32, align 4
  %__s1_len1109 = alloca i64, align 8
  %__s2_len1111 = alloca i64, align 8
  %tmp1112 = alloca i32, align 4
  %__s11119 = alloca i8*, align 8
  %__result1124 = alloca i32, align 4
  %tmp1162 = alloca i32, align 4
  %factor = alloca double, align 8
  %ppi = alloca %struct.gs_param_item_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %save_dev, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %4, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %5 = bitcast float* %cl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %6, i32 0, i32 75
  %7 = load double, double* %CompatibilityLevel, align 8, !tbaa !5
  %conv = fptrunc double %7 to float
  store float %conv, float* %cl, align 4, !tbaa !49
  %8 = bitcast i32* %locked to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 73
  %LockDistillerParams = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 8
  %10 = load i32, i32* %LockDistillerParams, align 4, !tbaa !64
  store i32 %10, i32* %locked, align 4, !tbaa !50
  %11 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %save_ccs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 73
  %ColorConversionStrategy = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params1, i32 0, i32 17
  %14 = load i32, i32* %ColorConversionStrategy, align 4, !tbaa !65
  store i32 %14, i32* %save_ccs, align 4, !tbaa !66
  %15 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !57
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %stable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %17 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable, align 8, !tbaa !58
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !57
  %call = call %struct.gs_memory_s* %17(%struct.gs_memory_s* %19) #5
  %20 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %v_memory = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %20, i32 0, i32 43
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %v_memory, align 8, !tbaa !67
  %21 = bitcast %struct.gs_param_string_array_s* %ppa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #1
  %22 = bitcast %struct.gs_param_string_s* %pps to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call3 = call i32 @param_read_string_array(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.gs_param_string_array_s* %ppa) #5
  store i32 %call3, i32* %code, align 4, !tbaa !50
  %24 = load i32, i32* %code, align 4, !tbaa !50
  switch i32 %24, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call4 = call i32 @pdfwrite_pdf_open_document(%struct.gx_device_pdf_s* %25) #5
  store i32 %call4, i32* %code, align 4, !tbaa !50
  %26 = load i32, i32* %code, align 4, !tbaa !50
  %cmp = icmp slt i32 %26, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %27 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end:                                           ; preds = %sw.bb
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call6 = call i32 @pdfmark_process(%struct.gx_device_pdf_s* %28, %struct.gs_param_string_array_s* %ppa) #5
  store i32 %call6, i32* %code, align 4, !tbaa !50
  %29 = load i32, i32* %code, align 4, !tbaa !50
  %cmp7 = icmp sge i32 %29, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %30 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.10:                                        ; preds = %if.end
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end.10
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %31, i32 0, i32 0
  %32 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs11, align 8, !tbaa !53
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %32, i32 0, i32 7
  %33 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !68
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %param_name, align 8, !tbaa !1
  %36 = load i32, i32* %code, align 4, !tbaa !50
  %call12 = call i32 %33(%struct.gs_param_list_s* %34, i8* %35, i32 %36) #5
  %37 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

sw.epilog:                                        ; preds = %entry
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call13 = call i32 @param_read_string_array(%struct.gs_param_list_s* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct.gs_param_string_array_s* %ppa) #5
  store i32 %call13, i32* %code, align 4, !tbaa !50
  %39 = load i32, i32* %code, align 4, !tbaa !50
  switch i32 %39, label %sw.default.25 [
    i32 0, label %sw.bb.14
    i32 1, label %sw.epilog.29
  ]

sw.bb.14:                                         ; preds = %sw.epilog
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call15 = call i32 @pdfwrite_pdf_open_document(%struct.gx_device_pdf_s* %40) #5
  store i32 %call15, i32* %code, align 4, !tbaa !50
  %41 = load i32, i32* %code, align 4, !tbaa !50
  %cmp16 = icmp slt i32 %41, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.bb.14
  %42 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.19:                                        ; preds = %sw.bb.14
  %43 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call20 = call i32 @pdf_dsc_process(%struct.gx_device_pdf_s* %43, %struct.gs_param_string_array_s* %ppa) #5
  store i32 %call20, i32* %code, align 4, !tbaa !50
  %44 = load i32, i32* %code, align 4, !tbaa !50
  %cmp21 = icmp sge i32 %44, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  %45 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.24:                                        ; preds = %if.end.19
  br label %sw.default.25

sw.default.25:                                    ; preds = %sw.epilog, %if.end.24
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs26 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %46, i32 0, i32 0
  %47 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs26, align 8, !tbaa !53
  %signal_error27 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %47, i32 0, i32 7
  %48 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error27, align 8, !tbaa !68
  %49 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %50 = load i8*, i8** %param_name, align 8, !tbaa !1
  %51 = load i32, i32* %code, align 4, !tbaa !50
  %call28 = call i32 %48(%struct.gs_param_list_s* %49, i8* %50, i32 %51) #5
  %52 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

sw.epilog.29:                                     ; preds = %sw.epilog
  %53 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call30 = call i32 @param_read_string(%struct.gs_param_list_s* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), %struct.gs_param_string_s* %pps) #5
  store i32 %call30, i32* %code, align 4, !tbaa !50
  %54 = load i32, i32* %code, align 4, !tbaa !50
  switch i32 %54, label %sw.default.44 [
    i32 0, label %sw.bb.31
    i32 1, label %sw.epilog.48
  ]

sw.bb.31:                                         ; preds = %sw.epilog.29
  %55 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ForOPDFRead = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %55, i32 0, i32 99
  %56 = load i32, i32* %ForOPDFRead, align 4, !tbaa !69
  %tobool = icmp ne i32 %56, 0
  br i1 %tobool, label %if.else, label %if.then.32

if.then.32:                                       ; preds = %sw.bb.31
  %57 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %Catalog = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %58, i32 0, i32 149
  %59 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Catalog, align 8, !tbaa !70
  store %struct.cos_dict_s* %59, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %60 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call33 = call i32 @pdfwrite_pdf_open_document(%struct.gx_device_pdf_s* %60) #5
  store i32 %call33, i32* %code, align 4, !tbaa !50
  %61 = load i32, i32* %code, align 4, !tbaa !50
  %cmp34 = icmp slt i32 %61, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  %62 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.32
  %63 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pps, i32 0, i32 0
  %64 = load i8*, i8** %data, align 8, !tbaa !71
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pps, i32 0, i32 1
  %65 = load i32, i32* %size, align 4, !tbaa !72
  %call38 = call i32 @cos_dict_put_string(%struct.cos_dict_s* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i32 0, i32 0), i32 11, i8* %64, i32 %65) #5
  store i32 %call38, i32* %code, align 4, !tbaa !50
  %66 = load i32, i32* %code, align 4, !tbaa !50
  %cmp39 = icmp sge i32 %66, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  %67 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.41, %if.then.36
  %68 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.43

if.else:                                          ; preds = %sw.bb.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.43:                                        ; preds = %cleanup.cont
  br label %sw.default.44

sw.default.44:                                    ; preds = %sw.epilog.29, %if.end.43
  %69 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %69, i32 0, i32 0
  %70 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs45, align 8, !tbaa !53
  %signal_error46 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %70, i32 0, i32 7
  %71 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error46, align 8, !tbaa !68
  %72 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %73 = load i8*, i8** %param_name, align 8, !tbaa !1
  %74 = load i32, i32* %code, align 4, !tbaa !50
  %call47 = call i32 %71(%struct.gs_param_list_s* %72, i8* %73, i32 %74) #5
  %75 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

sw.epilog.48:                                     ; preds = %sw.epilog.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %sw.epilog.48, %sw.default.44, %if.else, %cleanup, %sw.default.25, %if.then.23, %if.then.18, %sw.default, %if.then.9, %if.then
  %76 = bitcast %struct.gs_param_string_s* %pps to i8*
  call void @llvm.lifetime.end(i64 16, i8* %76) #1
  %77 = bitcast %struct.gs_param_string_array_s* %ppa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %77) #1
  %cleanup.dest.51 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.51, label %cleanup.1308 [
    i32 0, label %cleanup.cont.52
  ]

cleanup.cont.52:                                  ; preds = %cleanup.49
  %78 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call53 = call i32 @param_read_bool(%struct.gs_param_list_s* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i32* %locked) #5
  store i32 %call53, i32* %code, align 4, !tbaa !50
  store i32 %call53, i32* %ecode, align 4, !tbaa !50
  %79 = load i32, i32* %ecode, align 4, !tbaa !50
  %cmp54 = icmp slt i32 %79, 0
  br i1 %cmp54, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %cleanup.cont.52
  %80 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs57 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %80, i32 0, i32 0
  %81 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs57, align 8, !tbaa !53
  %signal_error58 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %81, i32 0, i32 7
  %82 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error58, align 8, !tbaa !68
  %83 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %84 = load i8*, i8** %param_name, align 8, !tbaa !1
  %85 = load i32, i32* %ecode, align 4, !tbaa !50
  %call59 = call i32 %82(%struct.gs_param_list_s* %83, i8* %84, i32 %85) #5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %cleanup.cont.52
  %86 = load i32, i32* %locked, align 4, !tbaa !50
  %tobool61 = icmp ne i32 %86, 0
  br i1 %tobool61, label %land.lhs.true, label %if.then.65

land.lhs.true:                                    ; preds = %if.end.60
  %87 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params62 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %87, i32 0, i32 73
  %LockDistillerParams63 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params62, i32 0, i32 8
  %88 = load i32, i32* %LockDistillerParams63, align 4, !tbaa !64
  %tobool64 = icmp ne i32 %88, 0
  br i1 %tobool64, label %if.end.180, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true, %if.end.60
  %89 = bitcast i32* %efo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  store i32 1, i32* %efo, align 4, !tbaa !50
  %90 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %91 = load i32, i32* %ecode, align 4, !tbaa !50
  %call66 = call i32 @param_put_int(%struct.gs_param_list_s* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0), i32* %efo, i32 %91) #5
  store i32 %call66, i32* %ecode, align 4, !tbaa !50
  %92 = load i32, i32* %ecode, align 4, !tbaa !50
  %cmp67 = icmp slt i32 %92, 0
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.then.65
  %93 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs70 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %93, i32 0, i32 0
  %94 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs70, align 8, !tbaa !53
  %signal_error71 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %94, i32 0, i32 7
  %95 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error71, align 8, !tbaa !68
  %96 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %97 = load i8*, i8** %param_name, align 8, !tbaa !1
  %98 = load i32, i32* %ecode, align 4, !tbaa !50
  %call72 = call i32 %95(%struct.gs_param_list_s* %96, i8* %97, i32 %98) #5
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.then.65
  %99 = load i32, i32* %efo, align 4, !tbaa !50
  %cmp74 = icmp ne i32 %99, 1
  br i1 %cmp74, label %if.then.76, label %if.end.80

if.then.76:                                       ; preds = %if.end.73
  %100 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs77 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %100, i32 0, i32 0
  %101 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs77, align 8, !tbaa !53
  %signal_error78 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %101, i32 0, i32 7
  %102 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error78, align 8, !tbaa !68
  %103 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %104 = load i8*, i8** %param_name, align 8, !tbaa !1
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  %call79 = call i32 %102(%struct.gs_param_list_s* %103, i8* %104, i32 -15) #5
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.76, %if.end.73
  %105 = bitcast i32* %efo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %cdv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  store i32 5000, i32* %cdv, align 4, !tbaa !50
  %107 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %108 = load i32, i32* %ecode, align 4, !tbaa !50
  %call81 = call i32 @param_put_int(%struct.gs_param_list_s* %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32* %cdv, i32 %108) #5
  store i32 %call81, i32* %ecode, align 4, !tbaa !50
  %109 = load i32, i32* %ecode, align 4, !tbaa !50
  %cmp82 = icmp slt i32 %109, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.80
  %110 = load i32, i32* %ecode, align 4, !tbaa !50
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.93

if.end.85:                                        ; preds = %if.end.80
  %111 = load i32, i32* %cdv, align 4, !tbaa !50
  %cmp86 = icmp ne i32 %111, 5000
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %if.end.85
  %112 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs89 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %112, i32 0, i32 0
  %113 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs89, align 8, !tbaa !53
  %signal_error90 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %113, i32 0, i32 7
  %114 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error90, align 8, !tbaa !68
  %115 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %116 = load i8*, i8** %param_name, align 8, !tbaa !1
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  %call91 = call i32 %114(%struct.gs_param_list_s* %115, i8* %116, i32 -15) #5
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %if.end.85
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.93

cleanup.93:                                       ; preds = %if.end.92, %if.then.84
  %117 = bitcast i32* %cdv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %cleanup.dest.94 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.94, label %cleanup.1308 [
    i32 0, label %cleanup.cont.95
  ]

cleanup.cont.95:                                  ; preds = %cleanup.93
  %118 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call96 = call i32 @param_read_float(%struct.gs_param_list_s* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), float* %cl) #5
  store i32 %call96, i32* %code, align 4, !tbaa !50
  switch i32 %call96, label %sw.default.97 [
    i32 0, label %sw.bb.101
    i32 1, label %sw.epilog.132
  ]

sw.default.97:                                    ; preds = %cleanup.cont.95
  %119 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %119, i32* %ecode, align 4, !tbaa !50
  %120 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs98 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %120, i32 0, i32 0
  %121 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs98, align 8, !tbaa !53
  %signal_error99 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %121, i32 0, i32 7
  %122 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error99, align 8, !tbaa !68
  %123 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %124 = load i8*, i8** %param_name, align 8, !tbaa !1
  %125 = load i32, i32* %ecode, align 4, !tbaa !50
  %call100 = call i32 %122(%struct.gs_param_list_s* %123, i8* %124, i32 %125) #5
  br label %sw.bb.101

sw.bb.101:                                        ; preds = %cleanup.cont.95, %sw.default.97
  %126 = load float, float* %cl, align 4, !tbaa !49
  %cmp102 = fcmp olt float %126, 0x3FF2666660000000
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %sw.bb.101
  store float 0x3FF19999A0000000, float* %cl, align 4, !tbaa !49
  br label %if.end.131

if.else.105:                                      ; preds = %sw.bb.101
  %127 = load float, float* %cl, align 4, !tbaa !49
  %cmp106 = fcmp olt float %127, 1.250000e+00
  br i1 %cmp106, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %if.else.105
  store float 0x3FF3333340000000, float* %cl, align 4, !tbaa !49
  br label %if.end.130

if.else.109:                                      ; preds = %if.else.105
  %128 = load float, float* %cl, align 4, !tbaa !49
  %cmp110 = fcmp olt float %128, 0x3FF59999A0000000
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %if.else.109
  store float 0x3FF4CCCCC0000000, float* %cl, align 4, !tbaa !49
  br label %if.end.129

if.else.113:                                      ; preds = %if.else.109
  %129 = load float, float* %cl, align 4, !tbaa !49
  %cmp114 = fcmp olt float %129, 0x3FF7333340000000
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.else.113
  store float 0x3FF6666660000000, float* %cl, align 4, !tbaa !49
  br label %if.end.128

if.else.117:                                      ; preds = %if.else.113
  %130 = load float, float* %cl, align 4, !tbaa !49
  %cmp118 = fcmp olt float %130, 0x3FF8CCCCC0000000
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %if.else.117
  store float 1.500000e+00, float* %cl, align 4, !tbaa !49
  br label %if.end.127

if.else.121:                                      ; preds = %if.else.117
  %131 = load float, float* %cl, align 4, !tbaa !49
  %cmp122 = fcmp olt float %131, 0x3FFA666660000000
  br i1 %cmp122, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %if.else.121
  store float 0x3FF99999A0000000, float* %cl, align 4, !tbaa !49
  br label %if.end.126

if.else.125:                                      ; preds = %if.else.121
  store float 0x3FFB333340000000, float* %cl, align 4, !tbaa !49
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.125, %if.then.124
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.120
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.116
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.112
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.108
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.104
  br label %sw.epilog.132

sw.epilog.132:                                    ; preds = %if.end.131, %cleanup.cont.95
  %132 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory133 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %133, i32 0, i32 1
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory133, align 8, !tbaa !73
  store %struct.gs_memory_s* %134, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %135 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %v_memory134 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %135, i32 0, i32 43
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %v_memory134, align 8, !tbaa !67
  %137 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory135 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %137, i32 0, i32 1
  store %struct.gs_memory_s* %136, %struct.gs_memory_s** %memory135, align 8, !tbaa !73
  %138 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %139 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %140 = bitcast %struct.gx_device_pdf_s* %139 to i8*
  %call136 = call i32 @gs_param_read_items(%struct.gs_param_list_s* %138, i8* %140, %struct.gs_param_item_s* getelementptr inbounds ([62 x %struct.gs_param_item_s], [62 x %struct.gs_param_item_s]* @pdf_param_items, i32 0, i32 0)) #5
  store i32 %call136, i32* %code, align 4, !tbaa !50
  %141 = load i32, i32* %code, align 4, !tbaa !50
  %cmp137 = icmp slt i32 %141, 0
  br i1 %cmp137, label %if.then.145, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog.132
  %142 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %is_ps2write = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %142, i32 0, i32 74
  %143 = load i32, i32* %is_ps2write, align 4, !tbaa !52
  %tobool139 = icmp ne i32 %143, 0
  br i1 %tobool139, label %if.end.146, label %land.lhs.true.140

land.lhs.true.140:                                ; preds = %lor.lhs.false
  %144 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %145 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ForOPDFRead141 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %145, i32 0, i32 99
  %call142 = call i32 @param_read_bool(%struct.gs_param_list_s* %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32* %ForOPDFRead141) #5
  store i32 %call142, i32* %code, align 4, !tbaa !50
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %land.lhs.true.140, %sw.epilog.132
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %land.lhs.true.140, %lor.lhs.false
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %147 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory147 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %147, i32 0, i32 1
  store %struct.gs_memory_s* %146, %struct.gs_memory_s** %memory147, align 8, !tbaa !73
  %148 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = load i32, i32* %code, align 4, !tbaa !50
  %cmp148 = icmp slt i32 %149, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.146
  %150 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %150, i32* %ecode, align 4, !tbaa !50
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.end.146
  %151 = bitcast i64* %fon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %151) #1
  %152 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %FirstObjectNumber = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %152, i32 0, i32 93
  %153 = load i64, i64* %FirstObjectNumber, align 8, !tbaa !74
  store i64 %153, i64* %fon, align 8, !tbaa !75
  %154 = load i64, i64* %fon, align 8, !tbaa !75
  %155 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %FirstObjectNumber152 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %155, i32 0, i32 93
  %156 = load i64, i64* %FirstObjectNumber152, align 8, !tbaa !74
  %cmp153 = icmp ne i64 %154, %156
  br i1 %cmp153, label %if.then.155, label %if.end.174

if.then.155:                                      ; preds = %if.end.151
  %157 = load i64, i64* %fon, align 8, !tbaa !75
  %cmp156 = icmp sle i64 %157, 0
  br i1 %cmp156, label %if.then.169, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %if.then.155
  %158 = load i64, i64* %fon, align 8, !tbaa !75
  %cmp159 = icmp sgt i64 %158, 2147418112
  br i1 %cmp159, label %if.then.169, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %lor.lhs.false.158
  %159 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %next_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %159, i32 0, i32 148
  %160 = load i64, i64* %next_id, align 8, !tbaa !76
  %cmp162 = icmp ne i64 %160, 0
  br i1 %cmp162, label %land.lhs.true.164, label %if.end.173

land.lhs.true.164:                                ; preds = %lor.lhs.false.161
  %161 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %next_id165 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %161, i32 0, i32 148
  %162 = load i64, i64* %next_id165, align 8, !tbaa !76
  %163 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %FirstObjectNumber166 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %163, i32 0, i32 93
  %164 = load i64, i64* %FirstObjectNumber166, align 8, !tbaa !74
  %add = add nsw i64 %164, 3
  %cmp167 = icmp ne i64 %162, %add
  br i1 %cmp167, label %if.then.169, label %if.end.173

if.then.169:                                      ; preds = %land.lhs.true.164, %lor.lhs.false.158, %if.then.155
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  %165 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs170 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %165, i32 0, i32 0
  %166 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs170, align 8, !tbaa !53
  %signal_error171 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %166, i32 0, i32 7
  %167 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error171, align 8, !tbaa !68
  %168 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %169 = load i32, i32* %ecode, align 4, !tbaa !50
  %call172 = call i32 %167(%struct.gs_param_list_s* %168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 %169) #5
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.169, %land.lhs.true.164, %lor.lhs.false.161
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.151
  %170 = bitcast i64* %fon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i32* %pcm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  store i32 -1, i32* %pcm, align 4, !tbaa !50
  %172 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %173 = load i32, i32* %ecode, align 4, !tbaa !50
  %call175 = call i32 @param_put_enum(%struct.gs_param_list_s* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0), i32* %pcm, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @gdev_pdf_put_params_impl.pcm_names, i32 0, i32 0), i32 %173) #5
  store i32 %call175, i32* %ecode, align 4, !tbaa !50
  %174 = load i32, i32* %pcm, align 4, !tbaa !50
  %cmp176 = icmp sge i32 %174, 0
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.174
  %175 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %176 = load i32, i32* %pcm, align 4, !tbaa !50
  call void @pdf_set_process_color_model(%struct.gx_device_pdf_s* %175, i32 %176) #5
  %177 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %178 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_fill_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %178, i32 0, i32 56
  %179 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_stroke_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %179, i32 0, i32 57
  %180 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %fill_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %180, i32 0, i32 54
  %181 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %stroke_used_process_color = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %181, i32 0, i32 55
  call void @pdf_set_initial_color(%struct.gx_device_pdf_s* %177, %struct.gx_hl_saved_color_s* %saved_fill_color, %struct.gx_hl_saved_color_s* %saved_stroke_color, i32* %fill_used_process_color, i32* %stroke_used_process_color) #5
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.end.174
  %182 = bitcast i32* %pcm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %land.lhs.true
  %183 = load i32, i32* %ecode, align 4, !tbaa !50
  %cmp181 = icmp slt i32 %183, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.end.180
  br label %fail

if.end.184:                                       ; preds = %if.end.180
  %184 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %is_ps2write185 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %184, i32 0, i32 74
  %185 = load i32, i32* %is_ps2write185, align 4, !tbaa !52
  %tobool186 = icmp ne i32 %185, 0
  br i1 %tobool186, label %land.lhs.true.187, label %if.end.195

land.lhs.true.187:                                ; preds = %if.end.184
  %186 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %187 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ProduceDSC = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %187, i32 0, i32 105
  %call188 = call i32 @param_read_bool(%struct.gs_param_list_s* %186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32* %ProduceDSC) #5
  store i32 %call188, i32* %code, align 4, !tbaa !50
  %cmp189 = icmp slt i32 %call188, 0
  br i1 %cmp189, label %if.then.191, label %if.end.195

if.then.191:                                      ; preds = %land.lhs.true.187
  %188 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs192 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %188, i32 0, i32 0
  %189 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs192, align 8, !tbaa !53
  %signal_error193 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %189, i32 0, i32 7
  %190 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error193, align 8, !tbaa !68
  %191 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %192 = load i8*, i8** %param_name, align 8, !tbaa !1
  %193 = load i32, i32* %code, align 4, !tbaa !50
  %call194 = call i32 %190(%struct.gs_param_list_s* %191, i8* %192, i32 %193) #5
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.191, %land.lhs.true.187, %if.end.184
  %194 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %194, i32 0, i32 109
  %195 = load i32, i32* %PDFA, align 4, !tbaa !77
  %cmp196 = icmp slt i32 %195, 0
  br i1 %cmp196, label %if.then.202, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %if.end.195
  %196 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA199 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %196, i32 0, i32 109
  %197 = load i32, i32* %PDFA199, align 4, !tbaa !77
  %cmp200 = icmp sgt i32 %197, 2
  br i1 %cmp200, label %if.then.202, label %if.end.206

if.then.202:                                      ; preds = %lor.lhs.false.198, %if.end.195
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  %198 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs203 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %198, i32 0, i32 0
  %199 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs203, align 8, !tbaa !53
  %signal_error204 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %199, i32 0, i32 7
  %200 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error204, align 8, !tbaa !68
  %201 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %202 = load i32, i32* %ecode, align 4, !tbaa !50
  %call205 = call i32 %200(%struct.gs_param_list_s* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 %202) #5
  br label %fail

if.end.206:                                       ; preds = %lor.lhs.false.198
  %203 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA207 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %203, i32 0, i32 109
  %204 = load i32, i32* %PDFA207, align 4, !tbaa !77
  %cmp208 = icmp ne i32 %204, 0
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.214

land.lhs.true.210:                                ; preds = %if.end.206
  %205 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AbortPDFAX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %205, i32 0, i32 110
  %206 = load i32, i32* %AbortPDFAX, align 4, !tbaa !78
  %tobool211 = icmp ne i32 %206, 0
  br i1 %tobool211, label %if.then.212, label %if.end.214

if.then.212:                                      ; preds = %land.lhs.true.210
  %207 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA213 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %207, i32 0, i32 109
  store i32 0, i32* %PDFA213, align 4, !tbaa !77
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.212, %land.lhs.true.210, %if.end.206
  %208 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFX = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %208, i32 0, i32 108
  %209 = load i32, i32* %PDFX, align 4, !tbaa !79
  %tobool215 = icmp ne i32 %209, 0
  br i1 %tobool215, label %land.lhs.true.216, label %if.end.221

land.lhs.true.216:                                ; preds = %if.end.214
  %210 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %AbortPDFAX217 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %210, i32 0, i32 110
  %211 = load i32, i32* %AbortPDFAX217, align 4, !tbaa !78
  %tobool218 = icmp ne i32 %211, 0
  br i1 %tobool218, label %if.then.219, label %if.end.221

if.then.219:                                      ; preds = %land.lhs.true.216
  %212 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFX220 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %212, i32 0, i32 108
  store i32 0, i32* %PDFX220, align 4, !tbaa !79
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %land.lhs.true.216, %if.end.214
  %213 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFX222 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %213, i32 0, i32 108
  %214 = load i32, i32* %PDFX222, align 4, !tbaa !79
  %tobool223 = icmp ne i32 %214, 0
  br i1 %tobool223, label %land.lhs.true.224, label %if.end.232

land.lhs.true.224:                                ; preds = %if.end.221
  %215 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA225 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %215, i32 0, i32 109
  %216 = load i32, i32* %PDFA225, align 4, !tbaa !77
  %cmp226 = icmp ne i32 %216, 0
  br i1 %cmp226, label %if.then.228, label %if.end.232

if.then.228:                                      ; preds = %land.lhs.true.224
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  %217 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs229 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %217, i32 0, i32 0
  %218 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs229, align 8, !tbaa !53
  %signal_error230 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %218, i32 0, i32 7
  %219 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error230, align 8, !tbaa !68
  %220 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %221 = load i32, i32* %ecode, align 4, !tbaa !50
  %call231 = call i32 %219(%struct.gs_param_list_s* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 %221) #5
  br label %fail

if.end.232:                                       ; preds = %land.lhs.true.224, %if.end.221
  %222 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFX233 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %222, i32 0, i32 108
  %223 = load i32, i32* %PDFX233, align 4, !tbaa !79
  %tobool234 = icmp ne i32 %223, 0
  br i1 %tobool234, label %land.lhs.true.235, label %if.end.242

land.lhs.true.235:                                ; preds = %if.end.232
  %224 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ForOPDFRead236 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %224, i32 0, i32 99
  %225 = load i32, i32* %ForOPDFRead236, align 4, !tbaa !69
  %tobool237 = icmp ne i32 %225, 0
  br i1 %tobool237, label %if.then.238, label %if.end.242

if.then.238:                                      ; preds = %land.lhs.true.235
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  %226 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs239 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %226, i32 0, i32 0
  %227 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs239, align 8, !tbaa !53
  %signal_error240 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %227, i32 0, i32 7
  %228 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error240, align 8, !tbaa !68
  %229 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %230 = load i32, i32* %ecode, align 4, !tbaa !50
  %call241 = call i32 %228(%struct.gs_param_list_s* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 %230) #5
  br label %fail

if.end.242:                                       ; preds = %land.lhs.true.235, %if.end.232
  %231 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA243 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %231, i32 0, i32 109
  %232 = load i32, i32* %PDFA243, align 4, !tbaa !77
  %cmp244 = icmp ne i32 %232, 0
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.253

land.lhs.true.246:                                ; preds = %if.end.242
  %233 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ForOPDFRead247 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %233, i32 0, i32 99
  %234 = load i32, i32* %ForOPDFRead247, align 4, !tbaa !69
  %tobool248 = icmp ne i32 %234, 0
  br i1 %tobool248, label %if.then.249, label %if.end.253

if.then.249:                                      ; preds = %land.lhs.true.246
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  %235 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs250 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %235, i32 0, i32 0
  %236 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs250, align 8, !tbaa !53
  %signal_error251 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %236, i32 0, i32 7
  %237 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error251, align 8, !tbaa !68
  %238 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %239 = load i32, i32* %ecode, align 4, !tbaa !50
  %call252 = call i32 %237(%struct.gs_param_list_s* %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 %239) #5
  br label %fail

if.end.253:                                       ; preds = %land.lhs.true.246, %if.end.242
  %240 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA254 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %240, i32 0, i32 109
  %241 = load i32, i32* %PDFA254, align 4, !tbaa !77
  %cmp255 = icmp eq i32 %241, 1
  br i1 %cmp255, label %if.then.264, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %if.end.253
  %242 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFX258 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %242, i32 0, i32 108
  %243 = load i32, i32* %PDFX258, align 4, !tbaa !79
  %tobool259 = icmp ne i32 %243, 0
  br i1 %tobool259, label %if.then.264, label %lor.lhs.false.260

lor.lhs.false.260:                                ; preds = %lor.lhs.false.257
  %244 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompatibilityLevel261 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %244, i32 0, i32 75
  %245 = load double, double* %CompatibilityLevel261, align 8, !tbaa !5
  %cmp262 = fcmp olt double %245, 1.400000e+00
  br i1 %cmp262, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %lor.lhs.false.260, %lor.lhs.false.257, %if.end.253
  %246 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveTransparency = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %246, i32 0, i32 106
  store i32 0, i32* %HaveTransparency, align 4, !tbaa !80
  %247 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PreserveSMask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %247, i32 0, i32 245
  store i32 0, i32* %PreserveSMask, align 4, !tbaa !81
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.264, %lor.lhs.false.260
  %248 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA266 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %248, i32 0, i32 109
  %249 = load i32, i32* %PDFA266, align 4, !tbaa !77
  %cmp267 = icmp eq i32 %249, 1
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.end.265
  %250 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %UseOldColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %250, i32 0, i32 248
  store i32 1, i32* %UseOldColor, align 4, !tbaa !82
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %if.end.265
  %251 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFX271 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %251, i32 0, i32 108
  %252 = load i32, i32* %PDFX271, align 4, !tbaa !79
  %tobool272 = icmp ne i32 %252, 0
  br i1 %tobool272, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.end.270
  store float 0x3FF4CCCCC0000000, float* %cl, align 4, !tbaa !49
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.273, %if.end.270
  %253 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA275 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %253, i32 0, i32 109
  %254 = load i32, i32* %PDFA275, align 4, !tbaa !77
  %cmp276 = icmp ne i32 %254, 0
  br i1 %cmp276, label %land.lhs.true.278, label %if.end.283

land.lhs.true.278:                                ; preds = %if.end.274
  %255 = load float, float* %cl, align 4, !tbaa !49
  %conv279 = fpext float %255 to double
  %cmp280 = fcmp olt double %conv279, 1.400000e+00
  br i1 %cmp280, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %land.lhs.true.278
  store float 0x3FF6666660000000, float* %cl, align 4, !tbaa !49
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.282, %land.lhs.true.278, %if.end.274
  %256 = load float, float* %cl, align 4, !tbaa !49
  %conv284 = fpext float %256 to double
  %cmp285 = fcmp olt double %conv284, 1.200000e+00
  %cond = select i1 %cmp285, i32 2000, i32 3010
  %257 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %257, i32 0, i32 67
  store i32 %cond, i32* %version, align 4, !tbaa !83
  %258 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ForOPDFRead287 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %258, i32 0, i32 99
  %259 = load i32, i32* %ForOPDFRead287, align 4, !tbaa !69
  %tobool288 = icmp ne i32 %259, 0
  br i1 %tobool288, label %if.then.289, label %if.else.291

if.then.289:                                      ; preds = %if.end.283
  %260 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ResourcesBeforeUsage = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %260, i32 0, i32 102
  store i32 1, i32* %ResourcesBeforeUsage, align 4, !tbaa !84
  %261 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveCFF = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %261, i32 0, i32 69
  store i32 0, i32* %HaveCFF, align 4, !tbaa !85
  %262 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HavePDFWidths = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %262, i32 0, i32 103
  store i32 0, i32* %HavePDFWidths, align 4, !tbaa !86
  %263 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveStrokeColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %263, i32 0, i32 104
  store i32 0, i32* %HaveStrokeColor, align 4, !tbaa !87
  store float 0x3FF3333340000000, float* %cl, align 4, !tbaa !49
  %264 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %MaxInlineImageSize = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %264, i32 0, i32 113
  store i64 9223372036854775807, i64* %MaxInlineImageSize, align 8, !tbaa !88
  %265 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %version290 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %265, i32 0, i32 67
  store i32 2000, i32* %version290, align 4, !tbaa !83
  br label %if.end.296

if.else.291:                                      ; preds = %if.end.283
  %266 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ResourcesBeforeUsage292 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %266, i32 0, i32 102
  store i32 0, i32* %ResourcesBeforeUsage292, align 4, !tbaa !84
  %267 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveCFF293 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %267, i32 0, i32 69
  store i32 1, i32* %HaveCFF293, align 4, !tbaa !85
  %268 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HavePDFWidths294 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %268, i32 0, i32 103
  store i32 1, i32* %HavePDFWidths294, align 4, !tbaa !86
  %269 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveStrokeColor295 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %269, i32 0, i32 104
  store i32 1, i32* %HaveStrokeColor295, align 4, !tbaa !87
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.291, %if.then.289
  %270 = load float, float* %cl, align 4, !tbaa !49
  %conv297 = fpext float %270 to double
  %271 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ParamCompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %271, i32 0, i32 72
  store double %conv297, double* %ParamCompatibilityLevel, align 8, !tbaa !51
  %272 = load float, float* %cl, align 4, !tbaa !49
  %conv298 = fpext float %272 to double
  %cmp299 = fcmp olt double %conv298, 1.200000e+00
  br i1 %cmp299, label %if.then.301, label %if.end.303

if.then.301:                                      ; preds = %if.end.296
  %273 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveCFF302 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %273, i32 0, i32 69
  store i32 0, i32* %HaveCFF302, align 4, !tbaa !85
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.301, %if.end.296
  %274 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %275 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call304 = call i32 @gdev_psdf_put_params(%struct.gx_device_s* %274, %struct.gs_param_list_s* %275) #5
  store i32 %call304, i32* %ecode, align 4, !tbaa !50
  %276 = load i32, i32* %ecode, align 4, !tbaa !50
  %cmp305 = icmp slt i32 %276, 0
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.end.303
  br label %fail

if.end.308:                                       ; preds = %if.end.303
  %277 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %UseOldColor309 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %277, i32 0, i32 248
  %278 = load i32, i32* %UseOldColor309, align 4, !tbaa !82
  %tobool310 = icmp ne i32 %278, 0
  br i1 %tobool310, label %if.else.546, label %if.then.311

if.then.311:                                      ; preds = %if.end.308
  %279 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params312 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %279, i32 0, i32 73
  %ConvertCMYKImagesToRGB = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params312, i32 0, i32 23
  %280 = load i32, i32* %ConvertCMYKImagesToRGB, align 4, !tbaa !89
  %tobool313 = icmp ne i32 %280, 0
  br i1 %tobool313, label %if.then.314, label %if.end.382

if.then.314:                                      ; preds = %if.then.311
  %281 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params315 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %281, i32 0, i32 73
  %ColorConversionStrategy316 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params315, i32 0, i32 17
  %282 = load i32, i32* %ColorConversionStrategy316, align 4, !tbaa !65
  %cmp317 = icmp eq i32 %282, 5
  br i1 %cmp317, label %if.then.319, label %if.else.325

if.then.319:                                      ; preds = %if.then.314
  %283 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory320 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %283, i32 0, i32 3
  %284 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory320, align 8, !tbaa !57
  %call321 = call i8* @gs_program_name() #5
  %call322 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %284, i8* %call321, i64 %call322) #5
  %285 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory323 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %285, i32 0, i32 3
  %286 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory323, align 8, !tbaa !57
  %call324 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %286, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.76, i32 0, i32 0)) #5
  br label %if.end.381

if.else.325:                                      ; preds = %if.then.314
  %287 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params326 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %287, i32 0, i32 73
  %ColorConversionStrategy327 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params326, i32 0, i32 17
  %288 = load i32, i32* %ColorConversionStrategy327, align 4, !tbaa !65
  %cmp328 = icmp eq i32 %288, 6
  br i1 %cmp328, label %if.then.330, label %if.else.336

if.then.330:                                      ; preds = %if.else.325
  %289 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory331 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %289, i32 0, i32 3
  %290 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory331, align 8, !tbaa !57
  %call332 = call i8* @gs_program_name() #5
  %call333 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %290, i8* %call332, i64 %call333) #5
  %291 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory334 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %291, i32 0, i32 3
  %292 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory334, align 8, !tbaa !57
  %call335 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %292, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.77, i32 0, i32 0)) #5
  br label %if.end.380

if.else.336:                                      ; preds = %if.else.325
  %293 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %293, i32 0, i32 39
  %294 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !90
  %tobool337 = icmp ne %struct.cmm_dev_profile_s* %294, null
  br i1 %tobool337, label %if.then.338, label %if.end.374

if.then.338:                                      ; preds = %if.else.336
  br label %do.body

do.body:                                          ; preds = %if.then.338
  %295 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct339 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %295, i32 0, i32 39
  %296 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct339, align 8, !tbaa !90
  %tobool340 = icmp ne %struct.cmm_dev_profile_s* %296, null
  br i1 %tobool340, label %if.then.341, label %if.end.371

if.then.341:                                      ; preds = %do.body
  br label %do.body.342

do.body.342:                                      ; preds = %if.then.341
  br label %do.body.343

do.body.343:                                      ; preds = %do.body.342
  br label %do.cond

do.cond:                                          ; preds = %do.body.343
  br label %do.end

do.end:                                           ; preds = %do.cond
  %297 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct344 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %297, i32 0, i32 39
  %298 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct344, align 8, !tbaa !90
  %rc = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %298, i32 0, i32 14
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %299 = load i64, i64* %ref_count, align 8, !tbaa !91
  %add345 = add nsw i64 %299, -1
  store i64 %add345, i64* %ref_count, align 8, !tbaa !91
  br label %do.cond.346

do.cond.346:                                      ; preds = %do.end
  br label %do.end.347

do.end.347:                                       ; preds = %do.cond.346
  %300 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct348 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %300, i32 0, i32 39
  %301 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct348, align 8, !tbaa !90
  %rc349 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %301, i32 0, i32 14
  %ref_count350 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc349, i32 0, i32 0
  %302 = load i64, i64* %ref_count350, align 8, !tbaa !91
  %tobool351 = icmp ne i64 %302, 0
  br i1 %tobool351, label %if.else.366, label %if.then.352

if.then.352:                                      ; preds = %do.end.347
  br label %do.body.353

do.body.353:                                      ; preds = %if.then.352
  br label %do.body.354

do.body.354:                                      ; preds = %do.body.353
  br label %do.cond.355

do.cond.355:                                      ; preds = %do.body.354
  br label %do.end.356

do.end.356:                                       ; preds = %do.cond.355
  %303 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct357 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %303, i32 0, i32 39
  %304 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct357, align 8, !tbaa !90
  %rc358 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %304, i32 0, i32 14
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc358, i32 0, i32 2
  %305 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !93
  %306 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct359 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %306, i32 0, i32 39
  %307 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct359, align 8, !tbaa !90
  %rc360 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %307, i32 0, i32 14
  %memory361 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc360, i32 0, i32 1
  %308 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory361, align 8, !tbaa !94
  %309 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct362 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %309, i32 0, i32 39
  %310 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct362, align 8, !tbaa !90
  %311 = bitcast %struct.cmm_dev_profile_s* %310 to i8*
  call void %305(%struct.gs_memory_s* %308, i8* %311, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0)) #5
  br label %do.cond.363

do.cond.363:                                      ; preds = %do.end.356
  br label %do.end.364

do.end.364:                                       ; preds = %do.cond.363
  %312 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct365 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %312, i32 0, i32 39
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %icc_struct365, align 8, !tbaa !90
  br label %if.end.370

if.else.366:                                      ; preds = %do.end.347
  br label %do.body.367

do.body.367:                                      ; preds = %if.else.366
  br label %do.cond.368

do.cond.368:                                      ; preds = %do.body.367
  br label %do.end.369

do.end.369:                                       ; preds = %do.cond.368
  br label %if.end.370

if.end.370:                                       ; preds = %do.end.369, %do.end.364
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %do.body
  br label %do.cond.372

do.cond.372:                                      ; preds = %if.end.371
  br label %do.end.373

do.end.373:                                       ; preds = %do.cond.372
  br label %if.end.374

if.end.374:                                       ; preds = %do.end.373, %if.else.336
  %313 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  call void @pdf_set_process_color_model(%struct.gx_device_pdf_s* %313, i32 1) #5
  %314 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %315 = bitcast %struct.gx_device_pdf_s* %314 to %struct.gx_device_s*
  %call375 = call i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %315, i8* null, i32 0) #5
  store i32 %call375, i32* %ecode, align 4, !tbaa !50
  %316 = load i32, i32* %ecode, align 4, !tbaa !50
  %cmp376 = icmp slt i32 %316, 0
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.end.374
  br label %fail

if.end.379:                                       ; preds = %if.end.374
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.then.330
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.then.319
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %if.then.311
  %317 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params383 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %317, i32 0, i32 73
  %ColorConversionStrategy384 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params383, i32 0, i32 17
  %318 = load i32, i32* %ColorConversionStrategy384, align 4, !tbaa !65
  switch i32 %318, label %sw.default.544 [
    i32 0, label %sw.bb.385
    i32 1, label %sw.bb.385
    i32 2, label %sw.bb.385
    i32 3, label %sw.bb.385
    i32 8, label %sw.bb.385
    i32 5, label %sw.bb.386
    i32 6, label %sw.bb.437
    i32 4, label %sw.bb.488
    i32 7, label %sw.bb.488
  ]

sw.bb.385:                                        ; preds = %if.end.382, %if.end.382, %if.end.382, %if.end.382, %if.end.382
  br label %sw.epilog.545

sw.bb.386:                                        ; preds = %if.end.382
  %319 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct387 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %319, i32 0, i32 39
  %320 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct387, align 8, !tbaa !90
  %tobool388 = icmp ne %struct.cmm_dev_profile_s* %320, null
  br i1 %tobool388, label %if.then.389, label %if.end.431

if.then.389:                                      ; preds = %sw.bb.386
  br label %do.body.390

do.body.390:                                      ; preds = %if.then.389
  %321 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct391 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %321, i32 0, i32 39
  %322 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct391, align 8, !tbaa !90
  %tobool392 = icmp ne %struct.cmm_dev_profile_s* %322, null
  br i1 %tobool392, label %if.then.393, label %if.end.428

if.then.393:                                      ; preds = %do.body.390
  br label %do.body.394

do.body.394:                                      ; preds = %if.then.393
  br label %do.body.395

do.body.395:                                      ; preds = %do.body.394
  br label %do.cond.396

do.cond.396:                                      ; preds = %do.body.395
  br label %do.end.397

do.end.397:                                       ; preds = %do.cond.396
  %323 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct398 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %323, i32 0, i32 39
  %324 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct398, align 8, !tbaa !90
  %rc399 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %324, i32 0, i32 14
  %ref_count400 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc399, i32 0, i32 0
  %325 = load i64, i64* %ref_count400, align 8, !tbaa !91
  %add401 = add nsw i64 %325, -1
  store i64 %add401, i64* %ref_count400, align 8, !tbaa !91
  br label %do.cond.402

do.cond.402:                                      ; preds = %do.end.397
  br label %do.end.403

do.end.403:                                       ; preds = %do.cond.402
  %326 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct404 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %326, i32 0, i32 39
  %327 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct404, align 8, !tbaa !90
  %rc405 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %327, i32 0, i32 14
  %ref_count406 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc405, i32 0, i32 0
  %328 = load i64, i64* %ref_count406, align 8, !tbaa !91
  %tobool407 = icmp ne i64 %328, 0
  br i1 %tobool407, label %if.else.423, label %if.then.408

if.then.408:                                      ; preds = %do.end.403
  br label %do.body.409

do.body.409:                                      ; preds = %if.then.408
  br label %do.body.410

do.body.410:                                      ; preds = %do.body.409
  br label %do.cond.411

do.cond.411:                                      ; preds = %do.body.410
  br label %do.end.412

do.end.412:                                       ; preds = %do.cond.411
  %329 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct413 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %329, i32 0, i32 39
  %330 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct413, align 8, !tbaa !90
  %rc414 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %330, i32 0, i32 14
  %free415 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc414, i32 0, i32 2
  %331 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free415, align 8, !tbaa !93
  %332 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct416 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %332, i32 0, i32 39
  %333 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct416, align 8, !tbaa !90
  %rc417 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %333, i32 0, i32 14
  %memory418 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc417, i32 0, i32 1
  %334 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory418, align 8, !tbaa !94
  %335 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct419 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %335, i32 0, i32 39
  %336 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct419, align 8, !tbaa !90
  %337 = bitcast %struct.cmm_dev_profile_s* %336 to i8*
  call void %331(%struct.gs_memory_s* %334, i8* %337, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0)) #5
  br label %do.cond.420

do.cond.420:                                      ; preds = %do.end.412
  br label %do.end.421

do.end.421:                                       ; preds = %do.cond.420
  %338 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct422 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %338, i32 0, i32 39
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %icc_struct422, align 8, !tbaa !90
  br label %if.end.427

if.else.423:                                      ; preds = %do.end.403
  br label %do.body.424

do.body.424:                                      ; preds = %if.else.423
  br label %do.cond.425

do.cond.425:                                      ; preds = %do.body.424
  br label %do.end.426

do.end.426:                                       ; preds = %do.cond.425
  br label %if.end.427

if.end.427:                                       ; preds = %do.end.426, %do.end.421
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %do.body.390
  br label %do.cond.429

do.cond.429:                                      ; preds = %if.end.428
  br label %do.end.430

do.end.430:                                       ; preds = %do.cond.429
  br label %if.end.431

if.end.431:                                       ; preds = %do.end.430, %sw.bb.386
  %339 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  call void @pdf_set_process_color_model(%struct.gx_device_pdf_s* %339, i32 2) #5
  %340 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %341 = bitcast %struct.gx_device_pdf_s* %340 to %struct.gx_device_s*
  %call432 = call i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %341, i8* null, i32 0) #5
  store i32 %call432, i32* %ecode, align 4, !tbaa !50
  %342 = load i32, i32* %ecode, align 4, !tbaa !50
  %cmp433 = icmp slt i32 %342, 0
  br i1 %cmp433, label %if.then.435, label %if.end.436

if.then.435:                                      ; preds = %if.end.431
  br label %fail

if.end.436:                                       ; preds = %if.end.431
  br label %sw.epilog.545

sw.bb.437:                                        ; preds = %if.end.382
  %343 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct438 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %343, i32 0, i32 39
  %344 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct438, align 8, !tbaa !90
  %tobool439 = icmp ne %struct.cmm_dev_profile_s* %344, null
  br i1 %tobool439, label %if.then.440, label %if.end.482

if.then.440:                                      ; preds = %sw.bb.437
  br label %do.body.441

do.body.441:                                      ; preds = %if.then.440
  %345 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct442 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %345, i32 0, i32 39
  %346 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct442, align 8, !tbaa !90
  %tobool443 = icmp ne %struct.cmm_dev_profile_s* %346, null
  br i1 %tobool443, label %if.then.444, label %if.end.479

if.then.444:                                      ; preds = %do.body.441
  br label %do.body.445

do.body.445:                                      ; preds = %if.then.444
  br label %do.body.446

do.body.446:                                      ; preds = %do.body.445
  br label %do.cond.447

do.cond.447:                                      ; preds = %do.body.446
  br label %do.end.448

do.end.448:                                       ; preds = %do.cond.447
  %347 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct449 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %347, i32 0, i32 39
  %348 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct449, align 8, !tbaa !90
  %rc450 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %348, i32 0, i32 14
  %ref_count451 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc450, i32 0, i32 0
  %349 = load i64, i64* %ref_count451, align 8, !tbaa !91
  %add452 = add nsw i64 %349, -1
  store i64 %add452, i64* %ref_count451, align 8, !tbaa !91
  br label %do.cond.453

do.cond.453:                                      ; preds = %do.end.448
  br label %do.end.454

do.end.454:                                       ; preds = %do.cond.453
  %350 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct455 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %350, i32 0, i32 39
  %351 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct455, align 8, !tbaa !90
  %rc456 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %351, i32 0, i32 14
  %ref_count457 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc456, i32 0, i32 0
  %352 = load i64, i64* %ref_count457, align 8, !tbaa !91
  %tobool458 = icmp ne i64 %352, 0
  br i1 %tobool458, label %if.else.474, label %if.then.459

if.then.459:                                      ; preds = %do.end.454
  br label %do.body.460

do.body.460:                                      ; preds = %if.then.459
  br label %do.body.461

do.body.461:                                      ; preds = %do.body.460
  br label %do.cond.462

do.cond.462:                                      ; preds = %do.body.461
  br label %do.end.463

do.end.463:                                       ; preds = %do.cond.462
  %353 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct464 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %353, i32 0, i32 39
  %354 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct464, align 8, !tbaa !90
  %rc465 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %354, i32 0, i32 14
  %free466 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc465, i32 0, i32 2
  %355 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free466, align 8, !tbaa !93
  %356 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct467 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %356, i32 0, i32 39
  %357 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct467, align 8, !tbaa !90
  %rc468 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %357, i32 0, i32 14
  %memory469 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc468, i32 0, i32 1
  %358 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory469, align 8, !tbaa !94
  %359 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct470 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %359, i32 0, i32 39
  %360 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct470, align 8, !tbaa !90
  %361 = bitcast %struct.cmm_dev_profile_s* %360 to i8*
  call void %355(%struct.gs_memory_s* %358, i8* %361, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0)) #5
  br label %do.cond.471

do.cond.471:                                      ; preds = %do.end.463
  br label %do.end.472

do.end.472:                                       ; preds = %do.cond.471
  %362 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct473 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %362, i32 0, i32 39
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %icc_struct473, align 8, !tbaa !90
  br label %if.end.478

if.else.474:                                      ; preds = %do.end.454
  br label %do.body.475

do.body.475:                                      ; preds = %if.else.474
  br label %do.cond.476

do.cond.476:                                      ; preds = %do.body.475
  br label %do.end.477

do.end.477:                                       ; preds = %do.cond.476
  br label %if.end.478

if.end.478:                                       ; preds = %do.end.477, %do.end.472
  br label %if.end.479

if.end.479:                                       ; preds = %if.end.478, %do.body.441
  br label %do.cond.480

do.cond.480:                                      ; preds = %if.end.479
  br label %do.end.481

do.end.481:                                       ; preds = %do.cond.480
  br label %if.end.482

if.end.482:                                       ; preds = %do.end.481, %sw.bb.437
  %363 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  call void @pdf_set_process_color_model(%struct.gx_device_pdf_s* %363, i32 0) #5
  %364 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %365 = bitcast %struct.gx_device_pdf_s* %364 to %struct.gx_device_s*
  %call483 = call i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %365, i8* null, i32 0) #5
  store i32 %call483, i32* %ecode, align 4, !tbaa !50
  %366 = load i32, i32* %ecode, align 4, !tbaa !50
  %cmp484 = icmp slt i32 %366, 0
  br i1 %cmp484, label %if.then.486, label %if.end.487

if.then.486:                                      ; preds = %if.end.482
  br label %fail

if.end.487:                                       ; preds = %if.end.482
  br label %sw.epilog.545

sw.bb.488:                                        ; preds = %if.end.382, %if.end.382
  %367 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params489 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %367, i32 0, i32 73
  %ConvertCMYKImagesToRGB490 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params489, i32 0, i32 23
  %368 = load i32, i32* %ConvertCMYKImagesToRGB490, align 4, !tbaa !89
  %tobool491 = icmp ne i32 %368, 0
  br i1 %tobool491, label %if.end.543, label %if.then.492

if.then.492:                                      ; preds = %sw.bb.488
  %369 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct493 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %369, i32 0, i32 39
  %370 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct493, align 8, !tbaa !90
  %tobool494 = icmp ne %struct.cmm_dev_profile_s* %370, null
  br i1 %tobool494, label %if.then.495, label %if.end.537

if.then.495:                                      ; preds = %if.then.492
  br label %do.body.496

do.body.496:                                      ; preds = %if.then.495
  %371 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct497 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %371, i32 0, i32 39
  %372 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct497, align 8, !tbaa !90
  %tobool498 = icmp ne %struct.cmm_dev_profile_s* %372, null
  br i1 %tobool498, label %if.then.499, label %if.end.534

if.then.499:                                      ; preds = %do.body.496
  br label %do.body.500

do.body.500:                                      ; preds = %if.then.499
  br label %do.body.501

do.body.501:                                      ; preds = %do.body.500
  br label %do.cond.502

do.cond.502:                                      ; preds = %do.body.501
  br label %do.end.503

do.end.503:                                       ; preds = %do.cond.502
  %373 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct504 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %373, i32 0, i32 39
  %374 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct504, align 8, !tbaa !90
  %rc505 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %374, i32 0, i32 14
  %ref_count506 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc505, i32 0, i32 0
  %375 = load i64, i64* %ref_count506, align 8, !tbaa !91
  %add507 = add nsw i64 %375, -1
  store i64 %add507, i64* %ref_count506, align 8, !tbaa !91
  br label %do.cond.508

do.cond.508:                                      ; preds = %do.end.503
  br label %do.end.509

do.end.509:                                       ; preds = %do.cond.508
  %376 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct510 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %376, i32 0, i32 39
  %377 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct510, align 8, !tbaa !90
  %rc511 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %377, i32 0, i32 14
  %ref_count512 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc511, i32 0, i32 0
  %378 = load i64, i64* %ref_count512, align 8, !tbaa !91
  %tobool513 = icmp ne i64 %378, 0
  br i1 %tobool513, label %if.else.529, label %if.then.514

if.then.514:                                      ; preds = %do.end.509
  br label %do.body.515

do.body.515:                                      ; preds = %if.then.514
  br label %do.body.516

do.body.516:                                      ; preds = %do.body.515
  br label %do.cond.517

do.cond.517:                                      ; preds = %do.body.516
  br label %do.end.518

do.end.518:                                       ; preds = %do.cond.517
  %379 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct519 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %379, i32 0, i32 39
  %380 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct519, align 8, !tbaa !90
  %rc520 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %380, i32 0, i32 14
  %free521 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc520, i32 0, i32 2
  %381 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free521, align 8, !tbaa !93
  %382 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct522 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %382, i32 0, i32 39
  %383 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct522, align 8, !tbaa !90
  %rc523 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %383, i32 0, i32 14
  %memory524 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc523, i32 0, i32 1
  %384 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory524, align 8, !tbaa !94
  %385 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct525 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %385, i32 0, i32 39
  %386 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct525, align 8, !tbaa !90
  %387 = bitcast %struct.cmm_dev_profile_s* %386 to i8*
  call void %381(%struct.gs_memory_s* %384, i8* %387, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0)) #5
  br label %do.cond.526

do.cond.526:                                      ; preds = %do.end.518
  br label %do.end.527

do.end.527:                                       ; preds = %do.cond.526
  %388 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %icc_struct528 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %388, i32 0, i32 39
  store %struct.cmm_dev_profile_s* null, %struct.cmm_dev_profile_s** %icc_struct528, align 8, !tbaa !90
  br label %if.end.533

if.else.529:                                      ; preds = %do.end.509
  br label %do.body.530

do.body.530:                                      ; preds = %if.else.529
  br label %do.cond.531

do.cond.531:                                      ; preds = %do.body.530
  br label %do.end.532

do.end.532:                                       ; preds = %do.cond.531
  br label %if.end.533

if.end.533:                                       ; preds = %do.end.532, %do.end.527
  br label %if.end.534

if.end.534:                                       ; preds = %if.end.533, %do.body.496
  br label %do.cond.535

do.cond.535:                                      ; preds = %if.end.534
  br label %do.end.536

do.end.536:                                       ; preds = %do.cond.535
  br label %if.end.537

if.end.537:                                       ; preds = %do.end.536, %if.then.492
  %389 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  call void @pdf_set_process_color_model(%struct.gx_device_pdf_s* %389, i32 1) #5
  %390 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %391 = bitcast %struct.gx_device_pdf_s* %390 to %struct.gx_device_s*
  %call538 = call i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %391, i8* null, i32 0) #5
  store i32 %call538, i32* %ecode, align 4, !tbaa !50
  %392 = load i32, i32* %ecode, align 4, !tbaa !50
  %cmp539 = icmp slt i32 %392, 0
  br i1 %cmp539, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %if.end.537
  br label %fail

if.end.542:                                       ; preds = %if.end.537
  br label %if.end.543

if.end.543:                                       ; preds = %if.end.542, %sw.bb.488
  br label %sw.epilog.545

sw.default.544:                                   ; preds = %if.end.382
  br label %sw.epilog.545

sw.epilog.545:                                    ; preds = %sw.default.544, %if.end.543, %if.end.487, %if.end.436, %sw.bb.385
  br label %if.end.944

if.else.546:                                      ; preds = %if.end.308
  %393 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params547 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %393, i32 0, i32 73
  %ColorConversionStrategy548 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params547, i32 0, i32 17
  %394 = load i32, i32* %ColorConversionStrategy548, align 4, !tbaa !65
  %cmp549 = icmp eq i32 %394, 5
  br i1 %cmp549, label %land.lhs.true.551, label %lor.lhs.false.599

land.lhs.true.551:                                ; preds = %if.else.546
  %395 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %395) #1
  %396 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %396) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.73 to i64)), i64 1), label %land.lhs.true.552, label %cond.false

land.lhs.true.552:                                ; preds = %land.lhs.true.551
  %call553 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0)) #7
  store i64 %call553, i64* %__s2_len, align 8, !tbaa !75
  %397 = load i64, i64* %__s2_len, align 8, !tbaa !75
  %cmp554 = icmp ult i64 %397, 4
  br i1 %cmp554, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.552
  %398 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %398) #1
  %399 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %399, i32 0, i32 11
  %cm_name = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 14
  %400 = load i8*, i8** %cm_name, align 8, !tbaa !95
  store i8* %400, i8** %__s1, align 8, !tbaa !1
  %401 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %401) #1
  %402 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %402, i64 0
  %403 = load i8, i8* %arrayidx, align 1, !tbaa !66
  %conv558 = zext i8 %403 to i32
  %404 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), align 1, !tbaa !66
  %conv559 = zext i8 %404 to i32
  %sub = sub nsw i32 %conv558, %conv559
  store i32 %sub, i32* %__result, align 4, !tbaa !50
  %405 = load i64, i64* %__s2_len, align 8, !tbaa !75
  %cmp560 = icmp ugt i64 %405, 0
  br i1 %cmp560, label %land.lhs.true.562, label %if.end.592

land.lhs.true.562:                                ; preds = %cond.true
  %406 = load i32, i32* %__result, align 4, !tbaa !50
  %cmp563 = icmp eq i32 %406, 0
  br i1 %cmp563, label %if.then.565, label %if.end.592

if.then.565:                                      ; preds = %land.lhs.true.562
  %407 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx566 = getelementptr inbounds i8, i8* %407, i64 1
  %408 = load i8, i8* %arrayidx566, align 1, !tbaa !66
  %conv567 = zext i8 %408 to i32
  %409 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i64 1), align 1, !tbaa !66
  %conv568 = zext i8 %409 to i32
  %sub569 = sub nsw i32 %conv567, %conv568
  store i32 %sub569, i32* %__result, align 4, !tbaa !50
  %410 = load i64, i64* %__s2_len, align 8, !tbaa !75
  %cmp570 = icmp ugt i64 %410, 1
  br i1 %cmp570, label %land.lhs.true.572, label %if.end.591

land.lhs.true.572:                                ; preds = %if.then.565
  %411 = load i32, i32* %__result, align 4, !tbaa !50
  %cmp573 = icmp eq i32 %411, 0
  br i1 %cmp573, label %if.then.575, label %if.end.591

if.then.575:                                      ; preds = %land.lhs.true.572
  %412 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx576 = getelementptr inbounds i8, i8* %412, i64 2
  %413 = load i8, i8* %arrayidx576, align 1, !tbaa !66
  %conv577 = zext i8 %413 to i32
  %414 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i64 2), align 1, !tbaa !66
  %conv578 = zext i8 %414 to i32
  %sub579 = sub nsw i32 %conv577, %conv578
  store i32 %sub579, i32* %__result, align 4, !tbaa !50
  %415 = load i64, i64* %__s2_len, align 8, !tbaa !75
  %cmp580 = icmp ugt i64 %415, 2
  br i1 %cmp580, label %land.lhs.true.582, label %if.end.590

land.lhs.true.582:                                ; preds = %if.then.575
  %416 = load i32, i32* %__result, align 4, !tbaa !50
  %cmp583 = icmp eq i32 %416, 0
  br i1 %cmp583, label %if.then.585, label %if.end.590

if.then.585:                                      ; preds = %land.lhs.true.582
  %417 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx586 = getelementptr inbounds i8, i8* %417, i64 3
  %418 = load i8, i8* %arrayidx586, align 1, !tbaa !66
  %conv587 = zext i8 %418 to i32
  %419 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i64 3), align 1, !tbaa !66
  %conv588 = zext i8 %419 to i32
  %sub589 = sub nsw i32 %conv587, %conv588
  store i32 %sub589, i32* %__result, align 4, !tbaa !50
  br label %if.end.590

if.end.590:                                       ; preds = %if.then.585, %land.lhs.true.582, %if.then.575
  br label %if.end.591

if.end.591:                                       ; preds = %if.end.590, %land.lhs.true.572, %if.then.565
  br label %if.end.592

if.end.592:                                       ; preds = %if.end.591, %land.lhs.true.562, %cond.true
  %420 = load i32, i32* %__result, align 4, !tbaa !50
  store i32 %420, i32* %tmp593, !tbaa !50
  %421 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %421) #1
  %422 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %422) #1
  %423 = load i32, i32* %tmp593, !tbaa !50
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.552, %land.lhs.true.551
  %424 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info594 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %424, i32 0, i32 11
  %cm_name595 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info594, i32 0, i32 14
  %425 = load i8*, i8** %cm_name595, align 8, !tbaa !95
  %call596 = call i32 @strcmp(i8* %425, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0)) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.592
  %cond597 = phi i32 [ %423, %if.end.592 ], [ %call596, %cond.false ]
  store i32 %cond597, i32* %tmp, !tbaa !50
  %426 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %426) #1
  %427 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %427) #1
  %428 = load i32, i32* %tmp, !tbaa !50
  %tobool598 = icmp ne i32 %428, 0
  br i1 %tobool598, label %if.then.738, label %lor.lhs.false.599

lor.lhs.false.599:                                ; preds = %cond.end, %if.else.546
  %429 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params600 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %429, i32 0, i32 73
  %ColorConversionStrategy601 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params600, i32 0, i32 17
  %430 = load i32, i32* %ColorConversionStrategy601, align 4, !tbaa !65
  %cmp602 = icmp eq i32 %430, 4
  br i1 %cmp602, label %land.lhs.true.609, label %lor.lhs.false.604

lor.lhs.false.604:                                ; preds = %lor.lhs.false.599
  %431 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params605 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %431, i32 0, i32 73
  %ColorConversionStrategy606 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params605, i32 0, i32 17
  %432 = load i32, i32* %ColorConversionStrategy606, align 4, !tbaa !65
  %cmp607 = icmp eq i32 %432, 4
  br i1 %cmp607, label %land.lhs.true.609, label %lor.lhs.false.671

land.lhs.true.609:                                ; preds = %lor.lhs.false.604, %lor.lhs.false.599
  %433 = bitcast i64* %__s1_len611 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %433) #1
  %434 = bitcast i64* %__s2_len613 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %434) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.72 to i64)), i64 1), label %land.lhs.true.615, label %cond.false.664

land.lhs.true.615:                                ; preds = %land.lhs.true.609
  %call616 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0)) #7
  store i64 %call616, i64* %__s2_len613, align 8, !tbaa !75
  %435 = load i64, i64* %__s2_len613, align 8, !tbaa !75
  %cmp617 = icmp ult i64 %435, 4
  br i1 %cmp617, label %cond.true.619, label %cond.false.664

cond.true.619:                                    ; preds = %land.lhs.true.615
  %436 = bitcast i8** %__s1621 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %436) #1
  %437 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info622 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %437, i32 0, i32 11
  %cm_name623 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info622, i32 0, i32 14
  %438 = load i8*, i8** %cm_name623, align 8, !tbaa !95
  store i8* %438, i8** %__s1621, align 8, !tbaa !1
  %439 = bitcast i32* %__result625 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %439) #1
  %440 = load i8*, i8** %__s1621, align 8, !tbaa !1
  %arrayidx626 = getelementptr inbounds i8, i8* %440, i64 0
  %441 = load i8, i8* %arrayidx626, align 1, !tbaa !66
  %conv627 = zext i8 %441 to i32
  %442 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), align 1, !tbaa !66
  %conv628 = zext i8 %442 to i32
  %sub629 = sub nsw i32 %conv627, %conv628
  store i32 %sub629, i32* %__result625, align 4, !tbaa !50
  %443 = load i64, i64* %__s2_len613, align 8, !tbaa !75
  %cmp630 = icmp ugt i64 %443, 0
  br i1 %cmp630, label %land.lhs.true.632, label %if.end.662

land.lhs.true.632:                                ; preds = %cond.true.619
  %444 = load i32, i32* %__result625, align 4, !tbaa !50
  %cmp633 = icmp eq i32 %444, 0
  br i1 %cmp633, label %if.then.635, label %if.end.662

if.then.635:                                      ; preds = %land.lhs.true.632
  %445 = load i8*, i8** %__s1621, align 8, !tbaa !1
  %arrayidx636 = getelementptr inbounds i8, i8* %445, i64 1
  %446 = load i8, i8* %arrayidx636, align 1, !tbaa !66
  %conv637 = zext i8 %446 to i32
  %447 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i64 1), align 1, !tbaa !66
  %conv638 = zext i8 %447 to i32
  %sub639 = sub nsw i32 %conv637, %conv638
  store i32 %sub639, i32* %__result625, align 4, !tbaa !50
  %448 = load i64, i64* %__s2_len613, align 8, !tbaa !75
  %cmp640 = icmp ugt i64 %448, 1
  br i1 %cmp640, label %land.lhs.true.642, label %if.end.661

land.lhs.true.642:                                ; preds = %if.then.635
  %449 = load i32, i32* %__result625, align 4, !tbaa !50
  %cmp643 = icmp eq i32 %449, 0
  br i1 %cmp643, label %if.then.645, label %if.end.661

if.then.645:                                      ; preds = %land.lhs.true.642
  %450 = load i8*, i8** %__s1621, align 8, !tbaa !1
  %arrayidx646 = getelementptr inbounds i8, i8* %450, i64 2
  %451 = load i8, i8* %arrayidx646, align 1, !tbaa !66
  %conv647 = zext i8 %451 to i32
  %452 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i64 2), align 1, !tbaa !66
  %conv648 = zext i8 %452 to i32
  %sub649 = sub nsw i32 %conv647, %conv648
  store i32 %sub649, i32* %__result625, align 4, !tbaa !50
  %453 = load i64, i64* %__s2_len613, align 8, !tbaa !75
  %cmp650 = icmp ugt i64 %453, 2
  br i1 %cmp650, label %land.lhs.true.652, label %if.end.660

land.lhs.true.652:                                ; preds = %if.then.645
  %454 = load i32, i32* %__result625, align 4, !tbaa !50
  %cmp653 = icmp eq i32 %454, 0
  br i1 %cmp653, label %if.then.655, label %if.end.660

if.then.655:                                      ; preds = %land.lhs.true.652
  %455 = load i8*, i8** %__s1621, align 8, !tbaa !1
  %arrayidx656 = getelementptr inbounds i8, i8* %455, i64 3
  %456 = load i8, i8* %arrayidx656, align 1, !tbaa !66
  %conv657 = zext i8 %456 to i32
  %457 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i64 3), align 1, !tbaa !66
  %conv658 = zext i8 %457 to i32
  %sub659 = sub nsw i32 %conv657, %conv658
  store i32 %sub659, i32* %__result625, align 4, !tbaa !50
  br label %if.end.660

if.end.660:                                       ; preds = %if.then.655, %land.lhs.true.652, %if.then.645
  br label %if.end.661

if.end.661:                                       ; preds = %if.end.660, %land.lhs.true.642, %if.then.635
  br label %if.end.662

if.end.662:                                       ; preds = %if.end.661, %land.lhs.true.632, %cond.true.619
  %458 = load i32, i32* %__result625, align 4, !tbaa !50
  store i32 %458, i32* %tmp663, !tbaa !50
  %459 = bitcast i32* %__result625 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %459) #1
  %460 = bitcast i8** %__s1621 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %460) #1
  %461 = load i32, i32* %tmp663, !tbaa !50
  br label %cond.end.668

cond.false.664:                                   ; preds = %land.lhs.true.615, %land.lhs.true.609
  %462 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info665 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %462, i32 0, i32 11
  %cm_name666 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info665, i32 0, i32 14
  %463 = load i8*, i8** %cm_name666, align 8, !tbaa !95
  %call667 = call i32 @strcmp(i8* %463, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0)) #6
  br label %cond.end.668

cond.end.668:                                     ; preds = %cond.false.664, %if.end.662
  %cond669 = phi i32 [ %461, %if.end.662 ], [ %call667, %cond.false.664 ]
  store i32 %cond669, i32* %tmp614, !tbaa !50
  %464 = bitcast i64* %__s2_len613 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %464) #1
  %465 = bitcast i64* %__s1_len611 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %465) #1
  %466 = load i32, i32* %tmp614, !tbaa !50
  %tobool670 = icmp ne i32 %466, 0
  br i1 %tobool670, label %if.then.738, label %lor.lhs.false.671

lor.lhs.false.671:                                ; preds = %cond.end.668, %lor.lhs.false.604
  %467 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params672 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %467, i32 0, i32 73
  %ColorConversionStrategy673 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params672, i32 0, i32 17
  %468 = load i32, i32* %ColorConversionStrategy673, align 4, !tbaa !65
  %cmp674 = icmp eq i32 %468, 6
  br i1 %cmp674, label %land.lhs.true.676, label %if.end.746

land.lhs.true.676:                                ; preds = %lor.lhs.false.671
  %469 = bitcast i64* %__s1_len678 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %469) #1
  %470 = bitcast i64* %__s2_len680 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %470) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.71 to i64)), i64 1), label %land.lhs.true.682, label %cond.false.731

land.lhs.true.682:                                ; preds = %land.lhs.true.676
  %call683 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0)) #7
  store i64 %call683, i64* %__s2_len680, align 8, !tbaa !75
  %471 = load i64, i64* %__s2_len680, align 8, !tbaa !75
  %cmp684 = icmp ult i64 %471, 4
  br i1 %cmp684, label %cond.true.686, label %cond.false.731

cond.true.686:                                    ; preds = %land.lhs.true.682
  %472 = bitcast i8** %__s1688 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %472) #1
  %473 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info689 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %473, i32 0, i32 11
  %cm_name690 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info689, i32 0, i32 14
  %474 = load i8*, i8** %cm_name690, align 8, !tbaa !95
  store i8* %474, i8** %__s1688, align 8, !tbaa !1
  %475 = bitcast i32* %__result692 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %475) #1
  %476 = load i8*, i8** %__s1688, align 8, !tbaa !1
  %arrayidx693 = getelementptr inbounds i8, i8* %476, i64 0
  %477 = load i8, i8* %arrayidx693, align 1, !tbaa !66
  %conv694 = zext i8 %477 to i32
  %478 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), align 1, !tbaa !66
  %conv695 = zext i8 %478 to i32
  %sub696 = sub nsw i32 %conv694, %conv695
  store i32 %sub696, i32* %__result692, align 4, !tbaa !50
  %479 = load i64, i64* %__s2_len680, align 8, !tbaa !75
  %cmp697 = icmp ugt i64 %479, 0
  br i1 %cmp697, label %land.lhs.true.699, label %if.end.729

land.lhs.true.699:                                ; preds = %cond.true.686
  %480 = load i32, i32* %__result692, align 4, !tbaa !50
  %cmp700 = icmp eq i32 %480, 0
  br i1 %cmp700, label %if.then.702, label %if.end.729

if.then.702:                                      ; preds = %land.lhs.true.699
  %481 = load i8*, i8** %__s1688, align 8, !tbaa !1
  %arrayidx703 = getelementptr inbounds i8, i8* %481, i64 1
  %482 = load i8, i8* %arrayidx703, align 1, !tbaa !66
  %conv704 = zext i8 %482 to i32
  %483 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i64 1), align 1, !tbaa !66
  %conv705 = zext i8 %483 to i32
  %sub706 = sub nsw i32 %conv704, %conv705
  store i32 %sub706, i32* %__result692, align 4, !tbaa !50
  %484 = load i64, i64* %__s2_len680, align 8, !tbaa !75
  %cmp707 = icmp ugt i64 %484, 1
  br i1 %cmp707, label %land.lhs.true.709, label %if.end.728

land.lhs.true.709:                                ; preds = %if.then.702
  %485 = load i32, i32* %__result692, align 4, !tbaa !50
  %cmp710 = icmp eq i32 %485, 0
  br i1 %cmp710, label %if.then.712, label %if.end.728

if.then.712:                                      ; preds = %land.lhs.true.709
  %486 = load i8*, i8** %__s1688, align 8, !tbaa !1
  %arrayidx713 = getelementptr inbounds i8, i8* %486, i64 2
  %487 = load i8, i8* %arrayidx713, align 1, !tbaa !66
  %conv714 = zext i8 %487 to i32
  %488 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i64 2), align 1, !tbaa !66
  %conv715 = zext i8 %488 to i32
  %sub716 = sub nsw i32 %conv714, %conv715
  store i32 %sub716, i32* %__result692, align 4, !tbaa !50
  %489 = load i64, i64* %__s2_len680, align 8, !tbaa !75
  %cmp717 = icmp ugt i64 %489, 2
  br i1 %cmp717, label %land.lhs.true.719, label %if.end.727

land.lhs.true.719:                                ; preds = %if.then.712
  %490 = load i32, i32* %__result692, align 4, !tbaa !50
  %cmp720 = icmp eq i32 %490, 0
  br i1 %cmp720, label %if.then.722, label %if.end.727

if.then.722:                                      ; preds = %land.lhs.true.719
  %491 = load i8*, i8** %__s1688, align 8, !tbaa !1
  %arrayidx723 = getelementptr inbounds i8, i8* %491, i64 3
  %492 = load i8, i8* %arrayidx723, align 1, !tbaa !66
  %conv724 = zext i8 %492 to i32
  %493 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i64 3), align 1, !tbaa !66
  %conv725 = zext i8 %493 to i32
  %sub726 = sub nsw i32 %conv724, %conv725
  store i32 %sub726, i32* %__result692, align 4, !tbaa !50
  br label %if.end.727

if.end.727:                                       ; preds = %if.then.722, %land.lhs.true.719, %if.then.712
  br label %if.end.728

if.end.728:                                       ; preds = %if.end.727, %land.lhs.true.709, %if.then.702
  br label %if.end.729

if.end.729:                                       ; preds = %if.end.728, %land.lhs.true.699, %cond.true.686
  %494 = load i32, i32* %__result692, align 4, !tbaa !50
  store i32 %494, i32* %tmp730, !tbaa !50
  %495 = bitcast i32* %__result692 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %495) #1
  %496 = bitcast i8** %__s1688 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %496) #1
  %497 = load i32, i32* %tmp730, !tbaa !50
  br label %cond.end.735

cond.false.731:                                   ; preds = %land.lhs.true.682, %land.lhs.true.676
  %498 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info732 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %498, i32 0, i32 11
  %cm_name733 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info732, i32 0, i32 14
  %499 = load i8*, i8** %cm_name733, align 8, !tbaa !95
  %call734 = call i32 @strcmp(i8* %499, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0)) #6
  br label %cond.end.735

cond.end.735:                                     ; preds = %cond.false.731, %if.end.729
  %cond736 = phi i32 [ %497, %if.end.729 ], [ %call734, %cond.false.731 ]
  store i32 %cond736, i32* %tmp681, !tbaa !50
  %500 = bitcast i64* %__s2_len680 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %500) #1
  %501 = bitcast i64* %__s1_len678 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %501) #1
  %502 = load i32, i32* %tmp681, !tbaa !50
  %tobool737 = icmp ne i32 %502, 0
  br i1 %tobool737, label %if.then.738, label %if.end.746

if.then.738:                                      ; preds = %cond.end.735, %cond.end.668, %cond.end
  %503 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory739 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %503, i32 0, i32 3
  %504 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory739, align 8, !tbaa !57
  %call740 = call i8* @gs_program_name() #5
  %call741 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %504, i8* %call740, i64 %call741) #5
  %505 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory742 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %505, i32 0, i32 3
  %506 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory742, align 8, !tbaa !57
  %call743 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %506, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.79, i32 0, i32 0)) #5
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  %507 = load i32, i32* %save_ccs, align 4, !tbaa !66
  %508 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params744 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %508, i32 0, i32 73
  %ColorConversionStrategy745 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params744, i32 0, i32 17
  store i32 %507, i32* %ColorConversionStrategy745, align 4, !tbaa !65
  br label %if.end.746

if.end.746:                                       ; preds = %if.then.738, %cond.end.735, %lor.lhs.false.671
  %509 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params747 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %509, i32 0, i32 73
  %ColorConversionStrategy748 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params747, i32 0, i32 17
  %510 = load i32, i32* %ColorConversionStrategy748, align 4, !tbaa !65
  %cmp749 = icmp eq i32 %510, 2
  br i1 %cmp749, label %if.then.751, label %if.end.761

if.then.751:                                      ; preds = %if.end.746
  %511 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %UseCIEColor = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %511, i32 0, i32 31
  %512 = load i32, i32* %UseCIEColor, align 4, !tbaa !96
  %tobool752 = icmp ne i32 %512, 0
  br i1 %tobool752, label %if.end.760, label %if.then.753

if.then.753:                                      ; preds = %if.then.751
  %513 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory754 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %513, i32 0, i32 3
  %514 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory754, align 8, !tbaa !57
  %call755 = call i8* @gs_program_name() #5
  %call756 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %514, i8* %call755, i64 %call756) #5
  %515 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory757 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %515, i32 0, i32 3
  %516 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory757, align 8, !tbaa !57
  %call758 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %516, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.80, i32 0, i32 0)) #5
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  %517 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %UseCIEColor759 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %517, i32 0, i32 31
  store i32 1, i32* %UseCIEColor759, align 4, !tbaa !96
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.753, %if.then.751
  br label %if.end.761

if.end.761:                                       ; preds = %if.end.760, %if.end.746
  %518 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params762 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %518, i32 0, i32 73
  %ColorConversionStrategy763 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params762, i32 0, i32 17
  %519 = load i32, i32* %ColorConversionStrategy763, align 4, !tbaa !65
  %cmp764 = icmp eq i32 %519, 3
  br i1 %cmp764, label %if.then.766, label %if.end.788

if.then.766:                                      ; preds = %if.end.761
  %520 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %UseCIEColor767 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %520, i32 0, i32 31
  %521 = load i32, i32* %UseCIEColor767, align 4, !tbaa !96
  %tobool768 = icmp ne i32 %521, 0
  br i1 %tobool768, label %if.end.787, label %if.then.769

if.then.769:                                      ; preds = %if.then.766
  %522 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory770 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %522, i32 0, i32 3
  %523 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory770, align 8, !tbaa !57
  %call771 = call i8* @gs_program_name() #5
  %call772 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %523, i8* %call771, i64 %call772) #5
  %524 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory773 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %524, i32 0, i32 3
  %525 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory773, align 8, !tbaa !57
  %call774 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %525, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.81, i32 0, i32 0)) #5
  %526 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params775 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %526, i32 0, i32 73
  %ColorConversionStrategy776 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params775, i32 0, i32 17
  store i32 2, i32* %ColorConversionStrategy776, align 4, !tbaa !65
  %527 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %UseCIEColor777 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %527, i32 0, i32 31
  %528 = load i32, i32* %UseCIEColor777, align 4, !tbaa !96
  %tobool778 = icmp ne i32 %528, 0
  br i1 %tobool778, label %if.end.786, label %if.then.779

if.then.779:                                      ; preds = %if.then.769
  %529 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory780 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %529, i32 0, i32 3
  %530 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory780, align 8, !tbaa !57
  %call781 = call i8* @gs_program_name() #5
  %call782 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %530, i8* %call781, i64 %call782) #5
  %531 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory783 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %531, i32 0, i32 3
  %532 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory783, align 8, !tbaa !57
  %call784 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %532, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.80, i32 0, i32 0)) #5
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  %533 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %UseCIEColor785 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %533, i32 0, i32 31
  store i32 1, i32* %UseCIEColor785, align 4, !tbaa !96
  br label %if.end.786

if.end.786:                                       ; preds = %if.then.779, %if.then.769
  br label %if.end.787

if.end.787:                                       ; preds = %if.end.786, %if.then.766
  br label %if.end.788

if.end.788:                                       ; preds = %if.end.787, %if.end.761
  %534 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params789 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %534, i32 0, i32 73
  %ColorConversionStrategy790 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params789, i32 0, i32 17
  %535 = load i32, i32* %ColorConversionStrategy790, align 4, !tbaa !65
  %cmp791 = icmp eq i32 %535, 1
  br i1 %cmp791, label %if.then.793, label %if.end.943

if.then.793:                                      ; preds = %if.end.788
  %536 = bitcast i64* %__s1_len795 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %536) #1
  %537 = bitcast i64* %__s2_len797 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %537) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.73 to i64)), i64 1), label %land.lhs.true.799, label %cond.false.848

land.lhs.true.799:                                ; preds = %if.then.793
  %call800 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0)) #7
  store i64 %call800, i64* %__s2_len797, align 8, !tbaa !75
  %538 = load i64, i64* %__s2_len797, align 8, !tbaa !75
  %cmp801 = icmp ult i64 %538, 4
  br i1 %cmp801, label %cond.true.803, label %cond.false.848

cond.true.803:                                    ; preds = %land.lhs.true.799
  %539 = bitcast i8** %__s1805 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %539) #1
  %540 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info806 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %540, i32 0, i32 11
  %cm_name807 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info806, i32 0, i32 14
  %541 = load i8*, i8** %cm_name807, align 8, !tbaa !95
  store i8* %541, i8** %__s1805, align 8, !tbaa !1
  %542 = bitcast i32* %__result809 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %542) #1
  %543 = load i8*, i8** %__s1805, align 8, !tbaa !1
  %arrayidx810 = getelementptr inbounds i8, i8* %543, i64 0
  %544 = load i8, i8* %arrayidx810, align 1, !tbaa !66
  %conv811 = zext i8 %544 to i32
  %545 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), align 1, !tbaa !66
  %conv812 = zext i8 %545 to i32
  %sub813 = sub nsw i32 %conv811, %conv812
  store i32 %sub813, i32* %__result809, align 4, !tbaa !50
  %546 = load i64, i64* %__s2_len797, align 8, !tbaa !75
  %cmp814 = icmp ugt i64 %546, 0
  br i1 %cmp814, label %land.lhs.true.816, label %if.end.846

land.lhs.true.816:                                ; preds = %cond.true.803
  %547 = load i32, i32* %__result809, align 4, !tbaa !50
  %cmp817 = icmp eq i32 %547, 0
  br i1 %cmp817, label %if.then.819, label %if.end.846

if.then.819:                                      ; preds = %land.lhs.true.816
  %548 = load i8*, i8** %__s1805, align 8, !tbaa !1
  %arrayidx820 = getelementptr inbounds i8, i8* %548, i64 1
  %549 = load i8, i8* %arrayidx820, align 1, !tbaa !66
  %conv821 = zext i8 %549 to i32
  %550 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i64 1), align 1, !tbaa !66
  %conv822 = zext i8 %550 to i32
  %sub823 = sub nsw i32 %conv821, %conv822
  store i32 %sub823, i32* %__result809, align 4, !tbaa !50
  %551 = load i64, i64* %__s2_len797, align 8, !tbaa !75
  %cmp824 = icmp ugt i64 %551, 1
  br i1 %cmp824, label %land.lhs.true.826, label %if.end.845

land.lhs.true.826:                                ; preds = %if.then.819
  %552 = load i32, i32* %__result809, align 4, !tbaa !50
  %cmp827 = icmp eq i32 %552, 0
  br i1 %cmp827, label %if.then.829, label %if.end.845

if.then.829:                                      ; preds = %land.lhs.true.826
  %553 = load i8*, i8** %__s1805, align 8, !tbaa !1
  %arrayidx830 = getelementptr inbounds i8, i8* %553, i64 2
  %554 = load i8, i8* %arrayidx830, align 1, !tbaa !66
  %conv831 = zext i8 %554 to i32
  %555 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i64 2), align 1, !tbaa !66
  %conv832 = zext i8 %555 to i32
  %sub833 = sub nsw i32 %conv831, %conv832
  store i32 %sub833, i32* %__result809, align 4, !tbaa !50
  %556 = load i64, i64* %__s2_len797, align 8, !tbaa !75
  %cmp834 = icmp ugt i64 %556, 2
  br i1 %cmp834, label %land.lhs.true.836, label %if.end.844

land.lhs.true.836:                                ; preds = %if.then.829
  %557 = load i32, i32* %__result809, align 4, !tbaa !50
  %cmp837 = icmp eq i32 %557, 0
  br i1 %cmp837, label %if.then.839, label %if.end.844

if.then.839:                                      ; preds = %land.lhs.true.836
  %558 = load i8*, i8** %__s1805, align 8, !tbaa !1
  %arrayidx840 = getelementptr inbounds i8, i8* %558, i64 3
  %559 = load i8, i8* %arrayidx840, align 1, !tbaa !66
  %conv841 = zext i8 %559 to i32
  %560 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i64 3), align 1, !tbaa !66
  %conv842 = zext i8 %560 to i32
  %sub843 = sub nsw i32 %conv841, %conv842
  store i32 %sub843, i32* %__result809, align 4, !tbaa !50
  br label %if.end.844

if.end.844:                                       ; preds = %if.then.839, %land.lhs.true.836, %if.then.829
  br label %if.end.845

if.end.845:                                       ; preds = %if.end.844, %land.lhs.true.826, %if.then.819
  br label %if.end.846

if.end.846:                                       ; preds = %if.end.845, %land.lhs.true.816, %cond.true.803
  %561 = load i32, i32* %__result809, align 4, !tbaa !50
  store i32 %561, i32* %tmp847, !tbaa !50
  %562 = bitcast i32* %__result809 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %562) #1
  %563 = bitcast i8** %__s1805 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %563) #1
  %564 = load i32, i32* %tmp847, !tbaa !50
  br label %cond.end.852

cond.false.848:                                   ; preds = %land.lhs.true.799, %if.then.793
  %565 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info849 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %565, i32 0, i32 11
  %cm_name850 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info849, i32 0, i32 14
  %566 = load i8*, i8** %cm_name850, align 8, !tbaa !95
  %call851 = call i32 @strcmp(i8* %566, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0)) #6
  br label %cond.end.852

cond.end.852:                                     ; preds = %cond.false.848, %if.end.846
  %cond853 = phi i32 [ %564, %if.end.846 ], [ %call851, %cond.false.848 ]
  store i32 %cond853, i32* %tmp798, !tbaa !50
  %567 = bitcast i64* %__s2_len797 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %567) #1
  %568 = bitcast i64* %__s1_len795 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %568) #1
  %569 = load i32, i32* %tmp798, !tbaa !50
  %tobool854 = icmp ne i32 %569, 0
  br i1 %tobool854, label %if.else.863, label %if.then.855

if.then.855:                                      ; preds = %cond.end.852
  %570 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory856 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %570, i32 0, i32 3
  %571 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory856, align 8, !tbaa !57
  %call857 = call i8* @gs_program_name() #5
  %call858 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %571, i8* %call857, i64 %call858) #5
  %572 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory859 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %572, i32 0, i32 3
  %573 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory859, align 8, !tbaa !57
  %call860 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %573, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.82, i32 0, i32 0)) #5
  %574 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params861 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %574, i32 0, i32 73
  %ColorConversionStrategy862 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params861, i32 0, i32 17
  store i32 5, i32* %ColorConversionStrategy862, align 4, !tbaa !65
  br label %if.end.942

if.else.863:                                      ; preds = %cond.end.852
  %575 = bitcast i64* %__s1_len865 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %575) #1
  %576 = bitcast i64* %__s2_len867 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %576) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.72 to i64)), i64 1), label %land.lhs.true.869, label %cond.false.918

land.lhs.true.869:                                ; preds = %if.else.863
  %call870 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0)) #7
  store i64 %call870, i64* %__s2_len867, align 8, !tbaa !75
  %577 = load i64, i64* %__s2_len867, align 8, !tbaa !75
  %cmp871 = icmp ult i64 %577, 4
  br i1 %cmp871, label %cond.true.873, label %cond.false.918

cond.true.873:                                    ; preds = %land.lhs.true.869
  %578 = bitcast i8** %__s1875 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %578) #1
  %579 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info876 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %579, i32 0, i32 11
  %cm_name877 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info876, i32 0, i32 14
  %580 = load i8*, i8** %cm_name877, align 8, !tbaa !95
  store i8* %580, i8** %__s1875, align 8, !tbaa !1
  %581 = bitcast i32* %__result879 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %581) #1
  %582 = load i8*, i8** %__s1875, align 8, !tbaa !1
  %arrayidx880 = getelementptr inbounds i8, i8* %582, i64 0
  %583 = load i8, i8* %arrayidx880, align 1, !tbaa !66
  %conv881 = zext i8 %583 to i32
  %584 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), align 1, !tbaa !66
  %conv882 = zext i8 %584 to i32
  %sub883 = sub nsw i32 %conv881, %conv882
  store i32 %sub883, i32* %__result879, align 4, !tbaa !50
  %585 = load i64, i64* %__s2_len867, align 8, !tbaa !75
  %cmp884 = icmp ugt i64 %585, 0
  br i1 %cmp884, label %land.lhs.true.886, label %if.end.916

land.lhs.true.886:                                ; preds = %cond.true.873
  %586 = load i32, i32* %__result879, align 4, !tbaa !50
  %cmp887 = icmp eq i32 %586, 0
  br i1 %cmp887, label %if.then.889, label %if.end.916

if.then.889:                                      ; preds = %land.lhs.true.886
  %587 = load i8*, i8** %__s1875, align 8, !tbaa !1
  %arrayidx890 = getelementptr inbounds i8, i8* %587, i64 1
  %588 = load i8, i8* %arrayidx890, align 1, !tbaa !66
  %conv891 = zext i8 %588 to i32
  %589 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i64 1), align 1, !tbaa !66
  %conv892 = zext i8 %589 to i32
  %sub893 = sub nsw i32 %conv891, %conv892
  store i32 %sub893, i32* %__result879, align 4, !tbaa !50
  %590 = load i64, i64* %__s2_len867, align 8, !tbaa !75
  %cmp894 = icmp ugt i64 %590, 1
  br i1 %cmp894, label %land.lhs.true.896, label %if.end.915

land.lhs.true.896:                                ; preds = %if.then.889
  %591 = load i32, i32* %__result879, align 4, !tbaa !50
  %cmp897 = icmp eq i32 %591, 0
  br i1 %cmp897, label %if.then.899, label %if.end.915

if.then.899:                                      ; preds = %land.lhs.true.896
  %592 = load i8*, i8** %__s1875, align 8, !tbaa !1
  %arrayidx900 = getelementptr inbounds i8, i8* %592, i64 2
  %593 = load i8, i8* %arrayidx900, align 1, !tbaa !66
  %conv901 = zext i8 %593 to i32
  %594 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i64 2), align 1, !tbaa !66
  %conv902 = zext i8 %594 to i32
  %sub903 = sub nsw i32 %conv901, %conv902
  store i32 %sub903, i32* %__result879, align 4, !tbaa !50
  %595 = load i64, i64* %__s2_len867, align 8, !tbaa !75
  %cmp904 = icmp ugt i64 %595, 2
  br i1 %cmp904, label %land.lhs.true.906, label %if.end.914

land.lhs.true.906:                                ; preds = %if.then.899
  %596 = load i32, i32* %__result879, align 4, !tbaa !50
  %cmp907 = icmp eq i32 %596, 0
  br i1 %cmp907, label %if.then.909, label %if.end.914

if.then.909:                                      ; preds = %land.lhs.true.906
  %597 = load i8*, i8** %__s1875, align 8, !tbaa !1
  %arrayidx910 = getelementptr inbounds i8, i8* %597, i64 3
  %598 = load i8, i8* %arrayidx910, align 1, !tbaa !66
  %conv911 = zext i8 %598 to i32
  %599 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i64 3), align 1, !tbaa !66
  %conv912 = zext i8 %599 to i32
  %sub913 = sub nsw i32 %conv911, %conv912
  store i32 %sub913, i32* %__result879, align 4, !tbaa !50
  br label %if.end.914

if.end.914:                                       ; preds = %if.then.909, %land.lhs.true.906, %if.then.899
  br label %if.end.915

if.end.915:                                       ; preds = %if.end.914, %land.lhs.true.896, %if.then.889
  br label %if.end.916

if.end.916:                                       ; preds = %if.end.915, %land.lhs.true.886, %cond.true.873
  %600 = load i32, i32* %__result879, align 4, !tbaa !50
  store i32 %600, i32* %tmp917, !tbaa !50
  %601 = bitcast i32* %__result879 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %601) #1
  %602 = bitcast i8** %__s1875 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %602) #1
  %603 = load i32, i32* %tmp917, !tbaa !50
  br label %cond.end.922

cond.false.918:                                   ; preds = %land.lhs.true.869, %if.else.863
  %604 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %color_info919 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %604, i32 0, i32 11
  %cm_name920 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info919, i32 0, i32 14
  %605 = load i8*, i8** %cm_name920, align 8, !tbaa !95
  %call921 = call i32 @strcmp(i8* %605, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0)) #6
  br label %cond.end.922

cond.end.922:                                     ; preds = %cond.false.918, %if.end.916
  %cond923 = phi i32 [ %603, %if.end.916 ], [ %call921, %cond.false.918 ]
  store i32 %cond923, i32* %tmp868, !tbaa !50
  %606 = bitcast i64* %__s2_len867 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %606) #1
  %607 = bitcast i64* %__s1_len865 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %607) #1
  %608 = load i32, i32* %tmp868, !tbaa !50
  %tobool924 = icmp ne i32 %608, 0
  br i1 %tobool924, label %if.else.933, label %if.then.925

if.then.925:                                      ; preds = %cond.end.922
  %609 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory926 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %609, i32 0, i32 3
  %610 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory926, align 8, !tbaa !57
  %call927 = call i8* @gs_program_name() #5
  %call928 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %610, i8* %call927, i64 %call928) #5
  %611 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory929 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %611, i32 0, i32 3
  %612 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory929, align 8, !tbaa !57
  %call930 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %612, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.83, i32 0, i32 0)) #5
  %613 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params931 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %613, i32 0, i32 73
  %ColorConversionStrategy932 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params931, i32 0, i32 17
  store i32 4, i32* %ColorConversionStrategy932, align 4, !tbaa !65
  br label %if.end.941

if.else.933:                                      ; preds = %cond.end.922
  %614 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory934 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %614, i32 0, i32 3
  %615 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory934, align 8, !tbaa !57
  %call935 = call i8* @gs_program_name() #5
  %call936 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %615, i8* %call935, i64 %call936) #5
  %616 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory937 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %616, i32 0, i32 3
  %617 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory937, align 8, !tbaa !57
  %call938 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %617, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.84, i32 0, i32 0)) #5
  %618 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params939 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %618, i32 0, i32 73
  %ColorConversionStrategy940 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params939, i32 0, i32 17
  store i32 6, i32* %ColorConversionStrategy940, align 4, !tbaa !65
  br label %if.end.941

if.end.941:                                       ; preds = %if.else.933, %if.then.925
  br label %if.end.942

if.end.942:                                       ; preds = %if.end.941, %if.then.855
  br label %if.end.943

if.end.943:                                       ; preds = %if.end.942, %if.end.788
  br label %if.end.944

if.end.944:                                       ; preds = %if.end.943, %sw.epilog.545
  %619 = load float, float* %cl, align 4, !tbaa !49
  %cmp945 = fcmp olt float %619, 1.500000e+00
  br i1 %cmp945, label %land.lhs.true.947, label %if.end.1021

land.lhs.true.947:                                ; preds = %if.end.944
  %620 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params948 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %620, i32 0, i32 73
  %ColorImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params948, i32 0, i32 22
  %Filter = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage, i32 0, i32 9
  %621 = load i8*, i8** %Filter, align 8, !tbaa !97
  %cmp949 = icmp ne i8* %621, null
  br i1 %cmp949, label %land.lhs.true.951, label %if.end.1021

land.lhs.true.951:                                ; preds = %land.lhs.true.947
  %622 = bitcast i64* %__s1_len953 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %622) #1
  %623 = bitcast i64* %__s2_len955 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %623) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.85 to i64)), i64 1), label %land.lhs.true.957, label %cond.false.1007

land.lhs.true.957:                                ; preds = %land.lhs.true.951
  %call958 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0)) #7
  store i64 %call958, i64* %__s2_len955, align 8, !tbaa !75
  %624 = load i64, i64* %__s2_len955, align 8, !tbaa !75
  %cmp959 = icmp ult i64 %624, 4
  br i1 %cmp959, label %cond.true.961, label %cond.false.1007

cond.true.961:                                    ; preds = %land.lhs.true.957
  %625 = bitcast i8** %__s1963 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %625) #1
  %626 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params964 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %626, i32 0, i32 73
  %ColorImage965 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params964, i32 0, i32 22
  %Filter966 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage965, i32 0, i32 9
  %627 = load i8*, i8** %Filter966, align 8, !tbaa !97
  store i8* %627, i8** %__s1963, align 8, !tbaa !1
  %628 = bitcast i32* %__result968 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %628) #1
  %629 = load i8*, i8** %__s1963, align 8, !tbaa !1
  %arrayidx969 = getelementptr inbounds i8, i8* %629, i64 0
  %630 = load i8, i8* %arrayidx969, align 1, !tbaa !66
  %conv970 = zext i8 %630 to i32
  %631 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), align 1, !tbaa !66
  %conv971 = zext i8 %631 to i32
  %sub972 = sub nsw i32 %conv970, %conv971
  store i32 %sub972, i32* %__result968, align 4, !tbaa !50
  %632 = load i64, i64* %__s2_len955, align 8, !tbaa !75
  %cmp973 = icmp ugt i64 %632, 0
  br i1 %cmp973, label %land.lhs.true.975, label %if.end.1005

land.lhs.true.975:                                ; preds = %cond.true.961
  %633 = load i32, i32* %__result968, align 4, !tbaa !50
  %cmp976 = icmp eq i32 %633, 0
  br i1 %cmp976, label %if.then.978, label %if.end.1005

if.then.978:                                      ; preds = %land.lhs.true.975
  %634 = load i8*, i8** %__s1963, align 8, !tbaa !1
  %arrayidx979 = getelementptr inbounds i8, i8* %634, i64 1
  %635 = load i8, i8* %arrayidx979, align 1, !tbaa !66
  %conv980 = zext i8 %635 to i32
  %636 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i64 1), align 1, !tbaa !66
  %conv981 = zext i8 %636 to i32
  %sub982 = sub nsw i32 %conv980, %conv981
  store i32 %sub982, i32* %__result968, align 4, !tbaa !50
  %637 = load i64, i64* %__s2_len955, align 8, !tbaa !75
  %cmp983 = icmp ugt i64 %637, 1
  br i1 %cmp983, label %land.lhs.true.985, label %if.end.1004

land.lhs.true.985:                                ; preds = %if.then.978
  %638 = load i32, i32* %__result968, align 4, !tbaa !50
  %cmp986 = icmp eq i32 %638, 0
  br i1 %cmp986, label %if.then.988, label %if.end.1004

if.then.988:                                      ; preds = %land.lhs.true.985
  %639 = load i8*, i8** %__s1963, align 8, !tbaa !1
  %arrayidx989 = getelementptr inbounds i8, i8* %639, i64 2
  %640 = load i8, i8* %arrayidx989, align 1, !tbaa !66
  %conv990 = zext i8 %640 to i32
  %641 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i64 2), align 1, !tbaa !66
  %conv991 = zext i8 %641 to i32
  %sub992 = sub nsw i32 %conv990, %conv991
  store i32 %sub992, i32* %__result968, align 4, !tbaa !50
  %642 = load i64, i64* %__s2_len955, align 8, !tbaa !75
  %cmp993 = icmp ugt i64 %642, 2
  br i1 %cmp993, label %land.lhs.true.995, label %if.end.1003

land.lhs.true.995:                                ; preds = %if.then.988
  %643 = load i32, i32* %__result968, align 4, !tbaa !50
  %cmp996 = icmp eq i32 %643, 0
  br i1 %cmp996, label %if.then.998, label %if.end.1003

if.then.998:                                      ; preds = %land.lhs.true.995
  %644 = load i8*, i8** %__s1963, align 8, !tbaa !1
  %arrayidx999 = getelementptr inbounds i8, i8* %644, i64 3
  %645 = load i8, i8* %arrayidx999, align 1, !tbaa !66
  %conv1000 = zext i8 %645 to i32
  %646 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i64 3), align 1, !tbaa !66
  %conv1001 = zext i8 %646 to i32
  %sub1002 = sub nsw i32 %conv1000, %conv1001
  store i32 %sub1002, i32* %__result968, align 4, !tbaa !50
  br label %if.end.1003

if.end.1003:                                      ; preds = %if.then.998, %land.lhs.true.995, %if.then.988
  br label %if.end.1004

if.end.1004:                                      ; preds = %if.end.1003, %land.lhs.true.985, %if.then.978
  br label %if.end.1005

if.end.1005:                                      ; preds = %if.end.1004, %land.lhs.true.975, %cond.true.961
  %647 = load i32, i32* %__result968, align 4, !tbaa !50
  store i32 %647, i32* %tmp1006, !tbaa !50
  %648 = bitcast i32* %__result968 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %648) #1
  %649 = bitcast i8** %__s1963 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %649) #1
  %650 = load i32, i32* %tmp1006, !tbaa !50
  br label %cond.end.1012

cond.false.1007:                                  ; preds = %land.lhs.true.957, %land.lhs.true.951
  %651 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params1008 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %651, i32 0, i32 73
  %ColorImage1009 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params1008, i32 0, i32 22
  %Filter1010 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %ColorImage1009, i32 0, i32 9
  %652 = load i8*, i8** %Filter1010, align 8, !tbaa !97
  %call1011 = call i32 @strcmp(i8* %652, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0)) #6
  br label %cond.end.1012

cond.end.1012:                                    ; preds = %cond.false.1007, %if.end.1005
  %cond1013 = phi i32 [ %650, %if.end.1005 ], [ %call1011, %cond.false.1007 ]
  store i32 %cond1013, i32* %tmp956, !tbaa !50
  %653 = bitcast i64* %__s2_len955 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %653) #1
  %654 = bitcast i64* %__s1_len953 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %654) #1
  %655 = load i32, i32* %tmp956, !tbaa !50
  %tobool1014 = icmp ne i32 %655, 0
  br i1 %tobool1014, label %if.end.1021, label %if.then.1015

if.then.1015:                                     ; preds = %cond.end.1012
  %656 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1016 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %656, i32 0, i32 3
  %657 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1016, align 8, !tbaa !57
  %call1017 = call i8* @gs_program_name() #5
  %call1018 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %657, i8* %call1017, i64 %call1018) #5
  %658 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1019 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %658, i32 0, i32 3
  %659 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1019, align 8, !tbaa !57
  %call1020 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %659, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.86, i32 0, i32 0)) #5
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.then.1015, %cond.end.1012, %land.lhs.true.947, %if.end.944
  %660 = load float, float* %cl, align 4, !tbaa !49
  %cmp1022 = fcmp olt float %660, 1.500000e+00
  br i1 %cmp1022, label %land.lhs.true.1024, label %if.end.1099

land.lhs.true.1024:                               ; preds = %if.end.1021
  %661 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params1025 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %661, i32 0, i32 73
  %GrayImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params1025, i32 0, i32 25
  %Filter1026 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage, i32 0, i32 9
  %662 = load i8*, i8** %Filter1026, align 8, !tbaa !98
  %cmp1027 = icmp ne i8* %662, null
  br i1 %cmp1027, label %land.lhs.true.1029, label %if.end.1099

land.lhs.true.1029:                               ; preds = %land.lhs.true.1024
  %663 = bitcast i64* %__s1_len1031 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %663) #1
  %664 = bitcast i64* %__s2_len1033 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %664) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.85 to i64)), i64 1), label %land.lhs.true.1035, label %cond.false.1085

land.lhs.true.1035:                               ; preds = %land.lhs.true.1029
  %call1036 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0)) #7
  store i64 %call1036, i64* %__s2_len1033, align 8, !tbaa !75
  %665 = load i64, i64* %__s2_len1033, align 8, !tbaa !75
  %cmp1037 = icmp ult i64 %665, 4
  br i1 %cmp1037, label %cond.true.1039, label %cond.false.1085

cond.true.1039:                                   ; preds = %land.lhs.true.1035
  %666 = bitcast i8** %__s11041 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %666) #1
  %667 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params1042 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %667, i32 0, i32 73
  %GrayImage1043 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params1042, i32 0, i32 25
  %Filter1044 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage1043, i32 0, i32 9
  %668 = load i8*, i8** %Filter1044, align 8, !tbaa !98
  store i8* %668, i8** %__s11041, align 8, !tbaa !1
  %669 = bitcast i32* %__result1046 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %669) #1
  %670 = load i8*, i8** %__s11041, align 8, !tbaa !1
  %arrayidx1047 = getelementptr inbounds i8, i8* %670, i64 0
  %671 = load i8, i8* %arrayidx1047, align 1, !tbaa !66
  %conv1048 = zext i8 %671 to i32
  %672 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), align 1, !tbaa !66
  %conv1049 = zext i8 %672 to i32
  %sub1050 = sub nsw i32 %conv1048, %conv1049
  store i32 %sub1050, i32* %__result1046, align 4, !tbaa !50
  %673 = load i64, i64* %__s2_len1033, align 8, !tbaa !75
  %cmp1051 = icmp ugt i64 %673, 0
  br i1 %cmp1051, label %land.lhs.true.1053, label %if.end.1083

land.lhs.true.1053:                               ; preds = %cond.true.1039
  %674 = load i32, i32* %__result1046, align 4, !tbaa !50
  %cmp1054 = icmp eq i32 %674, 0
  br i1 %cmp1054, label %if.then.1056, label %if.end.1083

if.then.1056:                                     ; preds = %land.lhs.true.1053
  %675 = load i8*, i8** %__s11041, align 8, !tbaa !1
  %arrayidx1057 = getelementptr inbounds i8, i8* %675, i64 1
  %676 = load i8, i8* %arrayidx1057, align 1, !tbaa !66
  %conv1058 = zext i8 %676 to i32
  %677 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i64 1), align 1, !tbaa !66
  %conv1059 = zext i8 %677 to i32
  %sub1060 = sub nsw i32 %conv1058, %conv1059
  store i32 %sub1060, i32* %__result1046, align 4, !tbaa !50
  %678 = load i64, i64* %__s2_len1033, align 8, !tbaa !75
  %cmp1061 = icmp ugt i64 %678, 1
  br i1 %cmp1061, label %land.lhs.true.1063, label %if.end.1082

land.lhs.true.1063:                               ; preds = %if.then.1056
  %679 = load i32, i32* %__result1046, align 4, !tbaa !50
  %cmp1064 = icmp eq i32 %679, 0
  br i1 %cmp1064, label %if.then.1066, label %if.end.1082

if.then.1066:                                     ; preds = %land.lhs.true.1063
  %680 = load i8*, i8** %__s11041, align 8, !tbaa !1
  %arrayidx1067 = getelementptr inbounds i8, i8* %680, i64 2
  %681 = load i8, i8* %arrayidx1067, align 1, !tbaa !66
  %conv1068 = zext i8 %681 to i32
  %682 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i64 2), align 1, !tbaa !66
  %conv1069 = zext i8 %682 to i32
  %sub1070 = sub nsw i32 %conv1068, %conv1069
  store i32 %sub1070, i32* %__result1046, align 4, !tbaa !50
  %683 = load i64, i64* %__s2_len1033, align 8, !tbaa !75
  %cmp1071 = icmp ugt i64 %683, 2
  br i1 %cmp1071, label %land.lhs.true.1073, label %if.end.1081

land.lhs.true.1073:                               ; preds = %if.then.1066
  %684 = load i32, i32* %__result1046, align 4, !tbaa !50
  %cmp1074 = icmp eq i32 %684, 0
  br i1 %cmp1074, label %if.then.1076, label %if.end.1081

if.then.1076:                                     ; preds = %land.lhs.true.1073
  %685 = load i8*, i8** %__s11041, align 8, !tbaa !1
  %arrayidx1077 = getelementptr inbounds i8, i8* %685, i64 3
  %686 = load i8, i8* %arrayidx1077, align 1, !tbaa !66
  %conv1078 = zext i8 %686 to i32
  %687 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i64 3), align 1, !tbaa !66
  %conv1079 = zext i8 %687 to i32
  %sub1080 = sub nsw i32 %conv1078, %conv1079
  store i32 %sub1080, i32* %__result1046, align 4, !tbaa !50
  br label %if.end.1081

if.end.1081:                                      ; preds = %if.then.1076, %land.lhs.true.1073, %if.then.1066
  br label %if.end.1082

if.end.1082:                                      ; preds = %if.end.1081, %land.lhs.true.1063, %if.then.1056
  br label %if.end.1083

if.end.1083:                                      ; preds = %if.end.1082, %land.lhs.true.1053, %cond.true.1039
  %688 = load i32, i32* %__result1046, align 4, !tbaa !50
  store i32 %688, i32* %tmp1084, !tbaa !50
  %689 = bitcast i32* %__result1046 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %689) #1
  %690 = bitcast i8** %__s11041 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %690) #1
  %691 = load i32, i32* %tmp1084, !tbaa !50
  br label %cond.end.1090

cond.false.1085:                                  ; preds = %land.lhs.true.1035, %land.lhs.true.1029
  %692 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params1086 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %692, i32 0, i32 73
  %GrayImage1087 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params1086, i32 0, i32 25
  %Filter1088 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %GrayImage1087, i32 0, i32 9
  %693 = load i8*, i8** %Filter1088, align 8, !tbaa !98
  %call1089 = call i32 @strcmp(i8* %693, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0)) #6
  br label %cond.end.1090

cond.end.1090:                                    ; preds = %cond.false.1085, %if.end.1083
  %cond1091 = phi i32 [ %691, %if.end.1083 ], [ %call1089, %cond.false.1085 ]
  store i32 %cond1091, i32* %tmp1034, !tbaa !50
  %694 = bitcast i64* %__s2_len1033 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %694) #1
  %695 = bitcast i64* %__s1_len1031 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %695) #1
  %696 = load i32, i32* %tmp1034, !tbaa !50
  %tobool1092 = icmp ne i32 %696, 0
  br i1 %tobool1092, label %if.end.1099, label %if.then.1093

if.then.1093:                                     ; preds = %cond.end.1090
  %697 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1094 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %697, i32 0, i32 3
  %698 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1094, align 8, !tbaa !57
  %call1095 = call i8* @gs_program_name() #5
  %call1096 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %698, i8* %call1095, i64 %call1096) #5
  %699 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1097 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %699, i32 0, i32 3
  %700 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1097, align 8, !tbaa !57
  %call1098 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %700, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.86, i32 0, i32 0)) #5
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  br label %if.end.1099

if.end.1099:                                      ; preds = %if.then.1093, %cond.end.1090, %land.lhs.true.1024, %if.end.1021
  %701 = load float, float* %cl, align 4, !tbaa !49
  %cmp1100 = fcmp olt float %701, 0x3FF6666660000000
  br i1 %cmp1100, label %land.lhs.true.1102, label %if.end.1177

land.lhs.true.1102:                               ; preds = %if.end.1099
  %702 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params1103 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %702, i32 0, i32 73
  %MonoImage = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params1103, i32 0, i32 26
  %Filter1104 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage, i32 0, i32 9
  %703 = load i8*, i8** %Filter1104, align 8, !tbaa !99
  %cmp1105 = icmp ne i8* %703, null
  br i1 %cmp1105, label %land.lhs.true.1107, label %if.end.1177

land.lhs.true.1107:                               ; preds = %land.lhs.true.1102
  %704 = bitcast i64* %__s1_len1109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %704) #1
  %705 = bitcast i64* %__s2_len1111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %705) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i64 1) to i64), i64 ptrtoint ([12 x i8]* @.str.87 to i64)), i64 1), label %land.lhs.true.1113, label %cond.false.1163

land.lhs.true.1113:                               ; preds = %land.lhs.true.1107
  %call1114 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0)) #7
  store i64 %call1114, i64* %__s2_len1111, align 8, !tbaa !75
  %706 = load i64, i64* %__s2_len1111, align 8, !tbaa !75
  %cmp1115 = icmp ult i64 %706, 4
  br i1 %cmp1115, label %cond.true.1117, label %cond.false.1163

cond.true.1117:                                   ; preds = %land.lhs.true.1113
  %707 = bitcast i8** %__s11119 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %707) #1
  %708 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params1120 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %708, i32 0, i32 73
  %MonoImage1121 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params1120, i32 0, i32 26
  %Filter1122 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage1121, i32 0, i32 9
  %709 = load i8*, i8** %Filter1122, align 8, !tbaa !99
  store i8* %709, i8** %__s11119, align 8, !tbaa !1
  %710 = bitcast i32* %__result1124 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %710) #1
  %711 = load i8*, i8** %__s11119, align 8, !tbaa !1
  %arrayidx1125 = getelementptr inbounds i8, i8* %711, i64 0
  %712 = load i8, i8* %arrayidx1125, align 1, !tbaa !66
  %conv1126 = zext i8 %712 to i32
  %713 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), align 1, !tbaa !66
  %conv1127 = zext i8 %713 to i32
  %sub1128 = sub nsw i32 %conv1126, %conv1127
  store i32 %sub1128, i32* %__result1124, align 4, !tbaa !50
  %714 = load i64, i64* %__s2_len1111, align 8, !tbaa !75
  %cmp1129 = icmp ugt i64 %714, 0
  br i1 %cmp1129, label %land.lhs.true.1131, label %if.end.1161

land.lhs.true.1131:                               ; preds = %cond.true.1117
  %715 = load i32, i32* %__result1124, align 4, !tbaa !50
  %cmp1132 = icmp eq i32 %715, 0
  br i1 %cmp1132, label %if.then.1134, label %if.end.1161

if.then.1134:                                     ; preds = %land.lhs.true.1131
  %716 = load i8*, i8** %__s11119, align 8, !tbaa !1
  %arrayidx1135 = getelementptr inbounds i8, i8* %716, i64 1
  %717 = load i8, i8* %arrayidx1135, align 1, !tbaa !66
  %conv1136 = zext i8 %717 to i32
  %718 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i64 1), align 1, !tbaa !66
  %conv1137 = zext i8 %718 to i32
  %sub1138 = sub nsw i32 %conv1136, %conv1137
  store i32 %sub1138, i32* %__result1124, align 4, !tbaa !50
  %719 = load i64, i64* %__s2_len1111, align 8, !tbaa !75
  %cmp1139 = icmp ugt i64 %719, 1
  br i1 %cmp1139, label %land.lhs.true.1141, label %if.end.1160

land.lhs.true.1141:                               ; preds = %if.then.1134
  %720 = load i32, i32* %__result1124, align 4, !tbaa !50
  %cmp1142 = icmp eq i32 %720, 0
  br i1 %cmp1142, label %if.then.1144, label %if.end.1160

if.then.1144:                                     ; preds = %land.lhs.true.1141
  %721 = load i8*, i8** %__s11119, align 8, !tbaa !1
  %arrayidx1145 = getelementptr inbounds i8, i8* %721, i64 2
  %722 = load i8, i8* %arrayidx1145, align 1, !tbaa !66
  %conv1146 = zext i8 %722 to i32
  %723 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i64 2), align 1, !tbaa !66
  %conv1147 = zext i8 %723 to i32
  %sub1148 = sub nsw i32 %conv1146, %conv1147
  store i32 %sub1148, i32* %__result1124, align 4, !tbaa !50
  %724 = load i64, i64* %__s2_len1111, align 8, !tbaa !75
  %cmp1149 = icmp ugt i64 %724, 2
  br i1 %cmp1149, label %land.lhs.true.1151, label %if.end.1159

land.lhs.true.1151:                               ; preds = %if.then.1144
  %725 = load i32, i32* %__result1124, align 4, !tbaa !50
  %cmp1152 = icmp eq i32 %725, 0
  br i1 %cmp1152, label %if.then.1154, label %if.end.1159

if.then.1154:                                     ; preds = %land.lhs.true.1151
  %726 = load i8*, i8** %__s11119, align 8, !tbaa !1
  %arrayidx1155 = getelementptr inbounds i8, i8* %726, i64 3
  %727 = load i8, i8* %arrayidx1155, align 1, !tbaa !66
  %conv1156 = zext i8 %727 to i32
  %728 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i64 3), align 1, !tbaa !66
  %conv1157 = zext i8 %728 to i32
  %sub1158 = sub nsw i32 %conv1156, %conv1157
  store i32 %sub1158, i32* %__result1124, align 4, !tbaa !50
  br label %if.end.1159

if.end.1159:                                      ; preds = %if.then.1154, %land.lhs.true.1151, %if.then.1144
  br label %if.end.1160

if.end.1160:                                      ; preds = %if.end.1159, %land.lhs.true.1141, %if.then.1134
  br label %if.end.1161

if.end.1161:                                      ; preds = %if.end.1160, %land.lhs.true.1131, %cond.true.1117
  %729 = load i32, i32* %__result1124, align 4, !tbaa !50
  store i32 %729, i32* %tmp1162, !tbaa !50
  %730 = bitcast i32* %__result1124 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %730) #1
  %731 = bitcast i8** %__s11119 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %731) #1
  %732 = load i32, i32* %tmp1162, !tbaa !50
  br label %cond.end.1168

cond.false.1163:                                  ; preds = %land.lhs.true.1113, %land.lhs.true.1107
  %733 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %params1164 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %733, i32 0, i32 73
  %MonoImage1165 = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params1164, i32 0, i32 26
  %Filter1166 = getelementptr inbounds %struct.psdf_image_params_s, %struct.psdf_image_params_s* %MonoImage1165, i32 0, i32 9
  %734 = load i8*, i8** %Filter1166, align 8, !tbaa !99
  %call1167 = call i32 @strcmp(i8* %734, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0)) #6
  br label %cond.end.1168

cond.end.1168:                                    ; preds = %cond.false.1163, %if.end.1161
  %cond1169 = phi i32 [ %732, %if.end.1161 ], [ %call1167, %cond.false.1163 ]
  store i32 %cond1169, i32* %tmp1112, !tbaa !50
  %735 = bitcast i64* %__s2_len1111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %735) #1
  %736 = bitcast i64* %__s1_len1109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %736) #1
  %737 = load i32, i32* %tmp1112, !tbaa !50
  %tobool1170 = icmp ne i32 %737, 0
  br i1 %tobool1170, label %if.end.1177, label %if.then.1171

if.then.1171:                                     ; preds = %cond.end.1168
  %738 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1172 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %738, i32 0, i32 3
  %739 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1172, align 8, !tbaa !57
  %call1173 = call i8* @gs_program_name() #5
  %call1174 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %739, i8* %call1173, i64 %call1174) #5
  %740 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1175 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %740, i32 0, i32 3
  %741 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1175, align 8, !tbaa !57
  %call1176 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %741, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.88, i32 0, i32 0)) #5
  store i32 -15, i32* %ecode, align 4, !tbaa !50
  br label %if.end.1177

if.end.1177:                                      ; preds = %if.then.1171, %cond.end.1168, %land.lhs.true.1102, %if.end.1099
  %742 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveTrueTypes = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %742, i32 0, i32 70
  %743 = load i32, i32* %HaveTrueTypes, align 4, !tbaa !100
  %tobool1178 = icmp ne i32 %743, 0
  br i1 %tobool1178, label %land.lhs.true.1179, label %if.end.1185

land.lhs.true.1179:                               ; preds = %if.end.1177
  %744 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %version1180 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %744, i32 0, i32 67
  %745 = load i32, i32* %version1180, align 4, !tbaa !83
  %cmp1181 = icmp eq i32 %745, 2000
  br i1 %cmp1181, label %if.then.1183, label %if.end.1185

if.then.1183:                                     ; preds = %land.lhs.true.1179
  %746 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %version1184 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %746, i32 0, i32 67
  store i32 2010, i32* %version1184, align 4, !tbaa !83
  br label %if.end.1185

if.end.1185:                                      ; preds = %if.then.1183, %land.lhs.true.1179, %if.end.1177
  %747 = load i32, i32* %ecode, align 4, !tbaa !50
  %cmp1186 = icmp slt i32 %747, 0
  br i1 %cmp1186, label %if.then.1188, label %if.end.1189

if.then.1188:                                     ; preds = %if.end.1185
  br label %fail

if.end.1189:                                      ; preds = %if.end.1185
  %748 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %748, i32 0, i32 14
  %749 = load i32, i32* %height, align 4, !tbaa !101
  %cmp1190 = icmp sgt i32 %749, 14670
  br i1 %cmp1190, label %if.then.1195, label %lor.lhs.false.1192

lor.lhs.false.1192:                               ; preds = %if.end.1189
  %750 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %750, i32 0, i32 13
  %751 = load i32, i32* %width, align 4, !tbaa !103
  %cmp1193 = icmp sgt i32 %751, 14670
  br i1 %cmp1193, label %if.then.1195, label %if.end.1221

if.then.1195:                                     ; preds = %lor.lhs.false.1192, %if.end.1189
  %752 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %752) #1
  %753 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height1197 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %753, i32 0, i32 14
  %754 = load i32, i32* %height1197, align 4, !tbaa !101
  %conv1198 = sitofp i32 %754 to double
  %div = fdiv double %conv1198, 1.467000e+04
  %755 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width1199 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %755, i32 0, i32 13
  %756 = load i32, i32* %width1199, align 4, !tbaa !103
  %conv1200 = sitofp i32 %756 to double
  %div1201 = fdiv double %conv1200, 1.467000e+04
  %cmp1202 = fcmp ogt double %div, %div1201
  br i1 %cmp1202, label %cond.true.1204, label %cond.false.1208

cond.true.1204:                                   ; preds = %if.then.1195
  %757 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height1205 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %757, i32 0, i32 14
  %758 = load i32, i32* %height1205, align 4, !tbaa !101
  %conv1206 = sitofp i32 %758 to double
  %div1207 = fdiv double %conv1206, 1.467000e+04
  br label %cond.end.1212

cond.false.1208:                                  ; preds = %if.then.1195
  %759 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width1209 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %759, i32 0, i32 13
  %760 = load i32, i32* %width1209, align 4, !tbaa !103
  %conv1210 = sitofp i32 %760 to double
  %div1211 = fdiv double %conv1210, 1.467000e+04
  br label %cond.end.1212

cond.end.1212:                                    ; preds = %cond.false.1208, %cond.true.1204
  %cond1213 = phi double [ %div1207, %cond.true.1204 ], [ %div1211, %cond.false.1208 ]
  store double %cond1213, double* %factor, align 8, !tbaa !104
  %761 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %762 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %762, i32 0, i32 22
  %arrayidx1214 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %763 = load float, float* %arrayidx1214, align 4, !tbaa !49
  %conv1215 = fpext float %763 to double
  %764 = load double, double* %factor, align 8, !tbaa !104
  %div1216 = fdiv double %conv1215, %764
  %765 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution1217 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %765, i32 0, i32 22
  %arrayidx1218 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1217, i32 0, i64 1
  %766 = load float, float* %arrayidx1218, align 4, !tbaa !49
  %conv1219 = fpext float %766 to double
  %767 = load double, double* %factor, align 8, !tbaa !104
  %div1220 = fdiv double %conv1219, %767
  call void @gx_device_set_resolution(%struct.gx_device_s* %761, double %div1216, double %div1220) #5
  %768 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %768) #1
  br label %if.end.1221

if.end.1221:                                      ; preds = %cond.end.1212, %lor.lhs.false.1192
  %769 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %FirstObjectNumber1222 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %769, i32 0, i32 93
  %770 = load i64, i64* %FirstObjectNumber1222, align 8, !tbaa !74
  %771 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %FirstObjectNumber1223 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %771, i32 0, i32 93
  %772 = load i64, i64* %FirstObjectNumber1223, align 8, !tbaa !74
  %cmp1224 = icmp ne i64 %770, %772
  br i1 %cmp1224, label %if.then.1226, label %if.end.1234

if.then.1226:                                     ; preds = %if.end.1221
  %773 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %xref = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %773, i32 0, i32 144
  %file = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %xref, i32 0, i32 1
  %774 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !105
  %cmp1227 = icmp ne %struct._IO_FILE* %774, null
  br i1 %cmp1227, label %if.then.1229, label %if.end.1233

if.then.1229:                                     ; preds = %if.then.1226
  %775 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %xref1230 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %775, i32 0, i32 144
  %file1231 = getelementptr inbounds %struct.pdf_temp_file_s, %struct.pdf_temp_file_s* %xref1230, i32 0, i32 1
  %776 = load %struct._IO_FILE*, %struct._IO_FILE** %file1231, align 8, !tbaa !105
  %call1232 = call i32 @gp_fseek_64(%struct._IO_FILE* %776, i64 0, i32 0) #5
  %777 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  call void @pdf_initialize_ids(%struct.gx_device_pdf_s* %777) #5
  br label %if.end.1233

if.end.1233:                                      ; preds = %if.then.1229, %if.then.1226
  br label %if.end.1234

if.end.1234:                                      ; preds = %if.end.1233, %if.end.1221
  %778 = load float, float* %cl, align 4, !tbaa !49
  %mul = fmul float %778, 1.000000e+01
  %conv1235 = fpext float %mul to double
  %add1236 = fadd double %conv1235, 5.000000e-01
  %conv1237 = fptosi double %add1236 to i32
  %conv1238 = sitofp i32 %conv1237 to double
  %div1239 = fdiv double %conv1238, 1.000000e+01
  %779 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompatibilityLevel1240 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %779, i32 0, i32 75
  store double %div1239, double* %CompatibilityLevel1240, align 8, !tbaa !5
  %780 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %OwnerPassword = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %780, i32 0, i32 115
  %size1241 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %OwnerPassword, i32 0, i32 1
  %781 = load i32, i32* %size1241, align 4, !tbaa !106
  %782 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %OwnerPassword1242 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %782, i32 0, i32 115
  %size1243 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %OwnerPassword1242, i32 0, i32 1
  %783 = load i32, i32* %size1243, align 4, !tbaa !106
  %cmp1244 = icmp ne i32 %781, %783
  br i1 %cmp1244, label %if.then.1262, label %lor.lhs.false.1246

lor.lhs.false.1246:                               ; preds = %if.end.1234
  %784 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %OwnerPassword1247 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %784, i32 0, i32 115
  %size1248 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %OwnerPassword1247, i32 0, i32 1
  %785 = load i32, i32* %size1248, align 4, !tbaa !106
  %cmp1249 = icmp ne i32 %785, 0
  br i1 %cmp1249, label %land.lhs.true.1251, label %if.end.1277

land.lhs.true.1251:                               ; preds = %lor.lhs.false.1246
  %786 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %OwnerPassword1252 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %786, i32 0, i32 115
  %data1253 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %OwnerPassword1252, i32 0, i32 0
  %787 = load i8*, i8** %data1253, align 8, !tbaa !107
  %788 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %OwnerPassword1254 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %788, i32 0, i32 115
  %data1255 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %OwnerPassword1254, i32 0, i32 0
  %789 = load i8*, i8** %data1255, align 8, !tbaa !107
  %790 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %OwnerPassword1256 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %790, i32 0, i32 115
  %size1257 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %OwnerPassword1256, i32 0, i32 1
  %791 = load i32, i32* %size1257, align 4, !tbaa !106
  %conv1258 = zext i32 %791 to i64
  %call1259 = call i32 @memcmp(i8* %787, i8* %789, i64 %conv1258) #7
  %cmp1260 = icmp ne i32 %call1259, 0
  br i1 %cmp1260, label %if.then.1262, label %if.end.1277

if.then.1262:                                     ; preds = %land.lhs.true.1251, %if.end.1234
  %792 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %792, i32 0, i32 9
  %793 = load i32, i32* %is_open, align 4, !tbaa !108
  %tobool1263 = icmp ne i32 %793, 0
  br i1 %tobool1263, label %if.then.1264, label %if.end.1276

if.then.1264:                                     ; preds = %if.then.1262
  %794 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %794, i32 0, i32 26
  %795 = load i64, i64* %PageCount, align 8, !tbaa !109
  %cmp1265 = icmp eq i64 %795, 0
  br i1 %cmp1265, label %if.then.1267, label %if.else.1269

if.then.1267:                                     ; preds = %if.then.1264
  %796 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %797 = bitcast %struct.gx_device_pdf_s* %796 to %struct.gx_device_s*
  %call1268 = call i32 @gs_closedevice(%struct.gx_device_s* %797) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1308

if.else.1269:                                     ; preds = %if.then.1264
  %798 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1270 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %798, i32 0, i32 3
  %799 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1270, align 8, !tbaa !57
  %call1271 = call i8* @gs_program_name() #5
  %call1272 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %799, i8* %call1271, i64 %call1272) #5
  %800 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1273 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %800, i32 0, i32 3
  %801 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1273, align 8, !tbaa !57
  %call1274 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %801, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.89, i32 0, i32 0)) #5
  br label %if.end.1275

if.end.1275:                                      ; preds = %if.else.1269
  br label %if.end.1276

if.end.1276:                                      ; preds = %if.end.1275, %if.then.1262
  br label %if.end.1277

if.end.1277:                                      ; preds = %if.end.1276, %land.lhs.true.1251, %lor.lhs.false.1246
  %802 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %Linearise = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %802, i32 0, i32 249
  %803 = load i32, i32* %Linearise, align 4, !tbaa !110
  %tobool1278 = icmp ne i32 %803, 0
  br i1 %tobool1278, label %land.lhs.true.1279, label %if.end.1289

land.lhs.true.1279:                               ; preds = %if.end.1277
  %804 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %is_ps2write1280 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %804, i32 0, i32 74
  %805 = load i32, i32* %is_ps2write1280, align 4, !tbaa !52
  %tobool1281 = icmp ne i32 %805, 0
  br i1 %tobool1281, label %if.then.1282, label %if.end.1289

if.then.1282:                                     ; preds = %land.lhs.true.1279
  %806 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1283 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %806, i32 0, i32 3
  %807 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1283, align 8, !tbaa !57
  %call1284 = call i8* @gs_program_name() #5
  %call1285 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %807, i8* %call1284, i64 %call1285) #5
  %808 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %memory1286 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %808, i32 0, i32 3
  %809 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1286, align 8, !tbaa !57
  %call1287 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %809, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.90, i32 0, i32 0)) #5
  %810 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %Linearise1288 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %810, i32 0, i32 249
  store i32 0, i32* %Linearise1288, align 4, !tbaa !110
  br label %if.end.1289

if.end.1289:                                      ; preds = %if.then.1282, %land.lhs.true.1279, %if.end.1277
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1308

fail:                                             ; preds = %if.then.1188, %if.then.541, %if.then.486, %if.then.435, %if.then.378, %if.then.307, %if.then.249, %if.then.238, %if.then.228, %if.then.202, %if.then.183
  %811 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %version1290 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %811, i32 0, i32 67
  %812 = load i32, i32* %version1290, align 4, !tbaa !83
  %813 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %version1291 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %813, i32 0, i32 67
  store i32 %812, i32* %version1291, align 4, !tbaa !83
  %814 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %815 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %pcm_color_info_index = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %815, i32 0, i32 206
  %816 = load i32, i32* %pcm_color_info_index, align 4, !tbaa !111
  call void @pdf_set_process_color_model(%struct.gx_device_pdf_s* %814, i32 %816) #5
  %817 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_fill_color1292 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %817, i32 0, i32 56
  %818 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %saved_fill_color1293 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %818, i32 0, i32 56
  %819 = bitcast %struct.gx_hl_saved_color_s* %saved_fill_color1292 to i8*
  %820 = bitcast %struct.gx_hl_saved_color_s* %saved_fill_color1293 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %819, i8* %820, i64 632, i32 8, i1 false), !tbaa.struct !112
  %821 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %saved_stroke_color1294 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %821, i32 0, i32 57
  %822 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %saved_fill_color1295 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %822, i32 0, i32 56
  %823 = bitcast %struct.gx_hl_saved_color_s* %saved_stroke_color1294 to i8*
  %824 = bitcast %struct.gx_hl_saved_color_s* %saved_fill_color1295 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %823, i8* %824, i64 632, i32 8, i1 false), !tbaa.struct !112
  %825 = bitcast %struct.gs_param_item_s** %ppi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %825) #1
  store %struct.gs_param_item_s* getelementptr inbounds ([62 x %struct.gs_param_item_s], [62 x %struct.gs_param_item_s]* @pdf_param_items, i32 0, i32 0), %struct.gs_param_item_s** %ppi, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %fail
  %826 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %ppi, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %826, i32 0, i32 0
  %827 = load i8*, i8** %key, align 8, !tbaa !114
  %tobool1297 = icmp ne i8* %827, null
  br i1 %tobool1297, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %828 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %829 = bitcast %struct.gx_device_pdf_s* %828 to i8*
  %830 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %ppi, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %830, i32 0, i32 2
  %831 = load i16, i16* %offset, align 2, !tbaa !116
  %conv1298 = sext i16 %831 to i32
  %idx.ext = sext i32 %conv1298 to i64
  %add.ptr = getelementptr inbounds i8, i8* %829, i64 %idx.ext
  %832 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %833 = bitcast %struct.gx_device_pdf_s* %832 to i8*
  %834 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %ppi, align 8, !tbaa !1
  %offset1299 = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %834, i32 0, i32 2
  %835 = load i16, i16* %offset1299, align 2, !tbaa !116
  %conv1300 = sext i16 %835 to i32
  %idx.ext1301 = sext i32 %conv1300 to i64
  %add.ptr1302 = getelementptr inbounds i8, i8* %833, i64 %idx.ext1301
  %836 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %ppi, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %836, i32 0, i32 1
  %837 = load i8, i8* %type, align 1, !tbaa !117
  %idxprom = zext i8 %837 to i64
  %arrayidx1303 = getelementptr inbounds [0 x i8], [0 x i8]* @gs_param_type_sizes, i32 0, i64 %idxprom
  %838 = load i8, i8* %arrayidx1303, align 1, !tbaa !66
  %conv1304 = zext i8 %838 to i64
  %call1305 = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr1302, i64 %conv1304) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %839 = load %struct.gs_param_item_s*, %struct.gs_param_item_s** %ppi, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_param_item_s, %struct.gs_param_item_s* %839, i32 1
  store %struct.gs_param_item_s* %incdec.ptr, %struct.gs_param_item_s** %ppi, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %840 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %save_dev.addr, align 8, !tbaa !1
  %ForOPDFRead1306 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %840, i32 0, i32 99
  %841 = load i32, i32* %ForOPDFRead1306, align 4, !tbaa !69
  %842 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %ForOPDFRead1307 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %842, i32 0, i32 99
  store i32 %841, i32* %ForOPDFRead1307, align 4, !tbaa !69
  %843 = bitcast %struct.gs_param_item_s** %ppi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %843) #1
  %844 = load i32, i32* %ecode, align 4, !tbaa !50
  store i32 %844, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1308

cleanup.1308:                                     ; preds = %for.end, %if.end.1289, %if.then.1267, %cleanup.93, %cleanup.49
  %845 = bitcast i32* %save_ccs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %845) #1
  %846 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %846) #1
  %847 = bitcast i32* %locked to i8*
  call void @llvm.lifetime.end(i64 4, i8* %847) #1
  %848 = bitcast float* %cl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %848) #1
  %849 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %849) #1
  %850 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %850) #1
  %851 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %851) #1
  %852 = load i32, i32* %retval
  ret i32 %852
}

declare i32 @param_read_string_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #2

declare i32 @pdfwrite_pdf_open_document(%struct.gx_device_pdf_s*) #2

declare i32 @pdfmark_process(%struct.gx_device_pdf_s*, %struct.gs_param_string_array_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_dsc_process(%struct.gx_device_pdf_s* %pdev, %struct.gs_param_string_array_s* %pma) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pma.addr = alloca %struct.gs_param_string_array_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pkey = alloca %struct.gs_param_string_s*, align 8
  %pvalue = alloca %struct.gs_param_string_s*, align 8
  %key = alloca i8*, align 8
  %ppdi = alloca %struct.pdf_page_dsc_info_s*, align 8
  %scan_buf = alloca [200 x i8], align 16
  %mat = alloca %struct.gs_matrix_s, align 4
  %orient = alloca i32, align 4
  %box = alloca %struct.gs_rect_s, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %pma, %struct.gs_param_string_array_s** %pma.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !50
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ParseDSCComments = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 80
  %3 = load i32, i32* %ParseDSCComments, align 4, !tbaa !118
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !50
  br label %for.cond

for.cond:                                         ; preds = %for.inc.169, %if.end
  %4 = load i32, i32* %i, align 4, !tbaa !50
  %add = add i32 %4, 1
  %5 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pma.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !119
  %cmp = icmp ult i32 %add, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i32, i32* %code, align 4, !tbaa !50
  %cmp1 = icmp sge i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %for.body, label %for.end.171

for.body:                                         ; preds = %land.end
  %9 = bitcast %struct.gs_param_string_s** %pkey to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %i, align 4, !tbaa !50
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pma.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %11, i32 0, i32 0
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !120
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i64 %idxprom
  store %struct.gs_param_string_s* %arrayidx, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %13 = bitcast %struct.gs_param_string_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %i, align 4, !tbaa !50
  %add2 = add i32 %14, 1
  %idxprom3 = zext i32 %add2 to i64
  %15 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pma.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %15, i32 0, i32 0
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data4, align 8, !tbaa !120
  %arrayidx5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i64 %idxprom3
  store %struct.gs_param_string_s* %arrayidx5, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %17 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %call = call i32 @pdf_key_eq(%struct.gs_param_string_s* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0)) #5
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8** %key, align 8, !tbaa !1
  br label %if.end.155

if.else:                                          ; preds = %for.body
  %19 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %call8 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0)) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i8** %key, align 8, !tbaa !1
  br label %if.end.154

if.else.11:                                       ; preds = %if.else
  %20 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %call12 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0)) #5
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.11
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i8** %key, align 8, !tbaa !1
  br label %if.end.153

if.else.15:                                       ; preds = %if.else.11
  %21 = bitcast %struct.pdf_page_dsc_info_s** %ppdi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast [200 x i8]* %scan_buf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %22) #1
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %doc_dsc_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %23, i32 0, i32 130
  store %struct.pdf_page_dsc_info_s* %doc_dsc_info, %struct.pdf_page_dsc_info_s** %ppdi, align 8, !tbaa !1
  %24 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %call16 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0)) #5
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.15
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %page_dsc_info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 131
  store %struct.pdf_page_dsc_info_s* %page_dsc_info, %struct.pdf_page_dsc_info_s** %ppdi, align 8, !tbaa !1
  %26 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %call18 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0)) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.40

if.then.20:                                       ; preds = %lor.lhs.false, %if.else.15
  %27 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %size21 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %27, i32 0, i32 1
  %28 = load i32, i32* %size21, align 4, !tbaa !72
  %cmp22 = icmp eq i32 %28, 1
  br i1 %cmp22, label %land.lhs.true, label %if.else.37

land.lhs.true:                                    ; preds = %if.then.20
  %29 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %data23 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %29, i32 0, i32 0
  %30 = load i8*, i8** %data23, align 8, !tbaa !71
  %arrayidx24 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx24, align 1, !tbaa !66
  %conv = zext i8 %31 to i32
  %cmp25 = icmp sge i32 %conv, 48
  br i1 %cmp25, label %land.lhs.true.27, label %if.else.37

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %32 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %data28 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %32, i32 0, i32 0
  %33 = load i8*, i8** %data28, align 8, !tbaa !71
  %arrayidx29 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx29, align 1, !tbaa !66
  %conv30 = zext i8 %34 to i32
  %cmp31 = icmp sle i32 %conv30, 51
  br i1 %cmp31, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %land.lhs.true.27
  %35 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %data34 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %35, i32 0, i32 0
  %36 = load i8*, i8** %data34, align 8, !tbaa !71
  %arrayidx35 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx35, align 1, !tbaa !66
  %conv36 = zext i8 %37 to i32
  %sub = sub nsw i32 %conv36, 48
  %38 = load %struct.pdf_page_dsc_info_s*, %struct.pdf_page_dsc_info_s** %ppdi, align 8, !tbaa !1
  %orientation = getelementptr inbounds %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s* %38, i32 0, i32 0
  store i32 %sub, i32* %orientation, align 4, !tbaa !121
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.27, %land.lhs.true, %if.then.20
  %39 = load %struct.pdf_page_dsc_info_s*, %struct.pdf_page_dsc_info_s** %ppdi, align 8, !tbaa !1
  %orientation38 = getelementptr inbounds %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s* %39, i32 0, i32 0
  store i32 -1, i32* %orientation38, align 4, !tbaa !121
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.33
  br label %if.end.150

if.else.40:                                       ; preds = %lor.lhs.false
  %40 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %doc_dsc_info41 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %40, i32 0, i32 130
  store %struct.pdf_page_dsc_info_s* %doc_dsc_info41, %struct.pdf_page_dsc_info_s** %ppdi, align 8, !tbaa !1
  %41 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %call42 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.99, i32 0, i32 0)) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.48, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.else.40
  %42 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %page_dsc_info45 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %42, i32 0, i32 131
  store %struct.pdf_page_dsc_info_s* %page_dsc_info45, %struct.pdf_page_dsc_info_s** %ppdi, align 8, !tbaa !1
  %43 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %call46 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0)) #5
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else.95

if.then.48:                                       ; preds = %lor.lhs.false.44, %if.else.40
  %44 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %44) #1
  %45 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %size49 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %46, i32 0, i32 1
  %47 = load i32, i32* %size49, align 4, !tbaa !72
  %conv50 = zext i32 %47 to i64
  %cmp51 = icmp uge i64 %conv50, 199
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.48
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.then.48
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %scan_buf, i32 0, i32 0
  %48 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %data55 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %48, i32 0, i32 0
  %49 = load i8*, i8** %data55, align 8, !tbaa !71
  %50 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %size56 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %50, i32 0, i32 1
  %51 = load i32, i32* %size56, align 4, !tbaa !72
  %conv57 = zext i32 %51 to i64
  %call58 = call i8* @memcpy(i8* %arraydecay, i8* %49, i64 %conv57) #6
  %52 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %size59 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %52, i32 0, i32 1
  %53 = load i32, i32* %size59, align 4, !tbaa !72
  %idxprom60 = zext i32 %53 to i64
  %arrayidx61 = getelementptr inbounds [200 x i8], [200 x i8]* %scan_buf, i32 0, i64 %idxprom60
  store i8 0, i8* %arrayidx61, align 1, !tbaa !66
  %arraydecay62 = getelementptr inbounds [200 x i8], [200 x i8]* %scan_buf, i32 0, i32 0
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %call63 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i32 0, i32 0), float* %xx, float* %xy, float* %yx, float* %yy) #6
  %cmp64 = icmp ne i32 %call63, 4
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.54
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.end.54
  store i32 0, i32* %orient, align 4, !tbaa !50
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc, %if.end.67
  %54 = load i32, i32* %orient, align 4, !tbaa !50
  %cmp69 = icmp slt i32 %54, 4
  br i1 %cmp69, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.68
  %xx72 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 0
  %55 = load float, float* %xx72, align 4, !tbaa !122
  %cmp73 = fcmp oeq float %55, 1.000000e+00
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.88

land.lhs.true.75:                                 ; preds = %for.body.71
  %xy76 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 1
  %56 = load float, float* %xy76, align 4, !tbaa !123
  %cmp77 = fcmp oeq float %56, 0.000000e+00
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.88

land.lhs.true.79:                                 ; preds = %land.lhs.true.75
  %yx80 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 2
  %57 = load float, float* %yx80, align 4, !tbaa !124
  %cmp81 = fcmp oeq float %57, 0.000000e+00
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.88

land.lhs.true.83:                                 ; preds = %land.lhs.true.79
  %yy84 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %mat, i32 0, i32 3
  %58 = load float, float* %yy84, align 4, !tbaa !125
  %cmp85 = fcmp oeq float %58, 1.000000e+00
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %land.lhs.true.83
  br label %for.end

if.end.88:                                        ; preds = %land.lhs.true.83, %land.lhs.true.79, %land.lhs.true.75, %for.body.71
  %call89 = call i32 @gs_matrix_rotate(%struct.gs_matrix_s* %mat, double -9.000000e+01, %struct.gs_matrix_s* %mat) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %59 = load i32, i32* %orient, align 4, !tbaa !50
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %orient, align 4, !tbaa !50
  br label %for.cond.68

for.end:                                          ; preds = %if.then.87, %for.cond.68
  %60 = load i32, i32* %orient, align 4, !tbaa !50
  %cmp90 = icmp eq i32 %60, 4
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %for.end
  store i32 -1, i32* %orient, align 4, !tbaa !50
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %for.end
  %61 = load i32, i32* %orient, align 4, !tbaa !50
  %62 = load %struct.pdf_page_dsc_info_s*, %struct.pdf_page_dsc_info_s** %ppdi, align 8, !tbaa !1
  %viewing_orientation = getelementptr inbounds %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s* %62, i32 0, i32 1
  store i32 %61, i32* %viewing_orientation, align 4, !tbaa !126
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.93, %if.then.66, %if.then.53
  %63 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %64) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.151 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.149

if.else.95:                                       ; preds = %lor.lhs.false.44
  %65 = bitcast %struct.gs_rect_s* %box to i8*
  call void @llvm.lifetime.start(i64 32, i8* %65) #1
  %66 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %call96 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0)) #5
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.109

if.then.98:                                       ; preds = %if.else.95
  %67 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %size99 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %67, i32 0, i32 1
  %68 = load i32, i32* %size99, align 4, !tbaa !72
  %cmp100 = icmp uge i32 %68, 1
  br i1 %cmp100, label %land.rhs.102, label %land.end.108

land.rhs.102:                                     ; preds = %if.then.98
  %69 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %data103 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %69, i32 0, i32 0
  %70 = load i8*, i8** %data103, align 8, !tbaa !71
  %arrayidx104 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx104, align 1, !tbaa !66
  %conv105 = zext i8 %71 to i32
  %cmp106 = icmp ne i32 %conv105, 48
  br label %land.end.108

land.end.108:                                     ; preds = %land.rhs.102, %if.then.98
  %72 = phi i1 [ false, %if.then.98 ], [ %cmp106, %land.rhs.102 ]
  %land.ext = zext i1 %72 to i32
  %73 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %is_EPS = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %73, i32 0, i32 127
  store i32 %land.ext, i32* %is_EPS, align 4, !tbaa !127
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.109:                                       ; preds = %if.else.95
  %74 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %call110 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0)) #5
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then.112, label %if.else.114

if.then.112:                                      ; preds = %if.end.109
  %75 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %doc_dsc_info113 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %75, i32 0, i32 130
  store %struct.pdf_page_dsc_info_s* %doc_dsc_info113, %struct.pdf_page_dsc_info_s** %ppdi, align 8, !tbaa !1
  br label %if.end.121

if.else.114:                                      ; preds = %if.end.109
  %76 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pkey, align 8, !tbaa !1
  %call115 = call i32 @pdf_key_eq(%struct.gs_param_string_s* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i32 0, i32 0)) #5
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.then.117, label %if.else.119

if.then.117:                                      ; preds = %if.else.114
  %77 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %page_dsc_info118 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %77, i32 0, i32 131
  store %struct.pdf_page_dsc_info_s* %page_dsc_info118, %struct.pdf_page_dsc_info_s** %ppdi, align 8, !tbaa !1
  br label %if.end.120

if.else.119:                                      ; preds = %if.else.114
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.120:                                       ; preds = %if.then.117
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.112
  %78 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %size122 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %78, i32 0, i32 1
  %79 = load i32, i32* %size122, align 4, !tbaa !72
  %conv123 = zext i32 %79 to i64
  %cmp124 = icmp uge i64 %conv123, 199
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.121
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.127:                                       ; preds = %if.end.121
  %arraydecay128 = getelementptr inbounds [200 x i8], [200 x i8]* %scan_buf, i32 0, i32 0
  %80 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %data129 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %80, i32 0, i32 0
  %81 = load i8*, i8** %data129, align 8, !tbaa !71
  %82 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %size130 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %82, i32 0, i32 1
  %83 = load i32, i32* %size130, align 4, !tbaa !72
  %conv131 = zext i32 %83 to i64
  %call132 = call i8* @memcpy(i8* %arraydecay128, i8* %81, i64 %conv131) #6
  %84 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %size133 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %84, i32 0, i32 1
  %85 = load i32, i32* %size133, align 4, !tbaa !72
  %idxprom134 = zext i32 %85 to i64
  %arrayidx135 = getelementptr inbounds [200 x i8], [200 x i8]* %scan_buf, i32 0, i64 %idxprom134
  store i8 0, i8* %arrayidx135, align 1, !tbaa !66
  %arraydecay136 = getelementptr inbounds [200 x i8], [200 x i8]* %scan_buf, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %p137 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p137, i32 0, i32 1
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 1
  %x138 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %q139 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 1
  %y140 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q139, i32 0, i32 1
  %call141 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.105, i32 0, i32 0), double* %x, double* %y, double* %x138, double* %y140) #6
  %cmp142 = icmp ne i32 %call141, 4
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.127
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.145:                                       ; preds = %if.end.127
  %86 = load %struct.pdf_page_dsc_info_s*, %struct.pdf_page_dsc_info_s** %ppdi, align 8, !tbaa !1
  %bounding_box = getelementptr inbounds %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s* %86, i32 0, i32 2
  %87 = bitcast %struct.gs_rect_s* %bounding_box to i8*
  %88 = bitcast %struct.gs_rect_s* %box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 32, i32 8, i1 false), !tbaa.struct !128
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.146

cleanup.146:                                      ; preds = %if.end.145, %if.then.144, %if.then.126, %if.else.119, %land.end.108
  %89 = bitcast %struct.gs_rect_s* %box to i8*
  call void @llvm.lifetime.end(i64 32, i8* %89) #1
  %cleanup.dest.147 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.147, label %cleanup.151 [
    i32 0, label %cleanup.cont.148
  ]

cleanup.cont.148:                                 ; preds = %cleanup.146
  br label %if.end.149

if.end.149:                                       ; preds = %cleanup.cont.148, %cleanup.cont
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.39
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.151

cleanup.151:                                      ; preds = %if.end.150, %cleanup.146, %cleanup
  %90 = bitcast [200 x i8]* %scan_buf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %90) #1
  %91 = bitcast %struct.pdf_page_dsc_info_s** %ppdi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  br label %cleanup.164

if.end.153:                                       ; preds = %if.then.14
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.10
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.7
  %92 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ParseDSCCommentsForDocInfo = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %92, i32 0, i32 79
  %93 = load i32, i32* %ParseDSCCommentsForDocInfo, align 4, !tbaa !129
  %tobool156 = icmp ne i32 %93, 0
  br i1 %tobool156, label %if.then.159, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %if.end.155
  %94 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %PreserveEPSInfo = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %94, i32 0, i32 83
  %95 = load i32, i32* %PreserveEPSInfo, align 4, !tbaa !130
  %tobool158 = icmp ne i32 %95, 0
  br i1 %tobool158, label %if.then.159, label %if.end.163

if.then.159:                                      ; preds = %lor.lhs.false.157, %if.end.155
  %96 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %Info = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %96, i32 0, i32 150
  %97 = load %struct.cos_dict_s*, %struct.cos_dict_s** %Info, align 8, !tbaa !131
  %98 = load i8*, i8** %key, align 8, !tbaa !1
  %99 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %data160 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %99, i32 0, i32 0
  %100 = load i8*, i8** %data160, align 8, !tbaa !71
  %101 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue, align 8, !tbaa !1
  %size161 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %101, i32 0, i32 1
  %102 = load i32, i32* %size161, align 4, !tbaa !72
  %call162 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %97, i8* %98, i8* %100, i32 %102) #5
  store i32 %call162, i32* %code, align 4, !tbaa !50
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.159, %lor.lhs.false.157
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.164

cleanup.164:                                      ; preds = %if.end.163, %cleanup.151
  %103 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast %struct.gs_param_string_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast %struct.gs_param_string_s** %pkey to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %cleanup.dest.167 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.167, label %unreachable [
    i32 0, label %cleanup.cont.168
    i32 4, label %for.inc.169
  ]

cleanup.cont.168:                                 ; preds = %cleanup.164
  br label %for.inc.169

for.inc.169:                                      ; preds = %cleanup.cont.168, %cleanup.164
  %106 = load i32, i32* %i, align 4, !tbaa !50
  %add170 = add i32 %106, 2
  store i32 %add170, i32* %i, align 4, !tbaa !50
  br label %for.cond

for.end.171:                                      ; preds = %land.end
  %107 = load i32, i32* %code, align 4, !tbaa !50
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

cleanup.172:                                      ; preds = %for.end.171, %if.then
  %108 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = load i32, i32* %retval
  ret i32 %110

unreachable:                                      ; preds = %cleanup.164
  unreachable
}

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

declare i32 @cos_dict_put_string(%struct.cos_dict_s*, i8*, i32, i8*, i32) #2

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_put_int(%struct.gs_param_list_s*, i8*, i32*, i32) #2

declare i32 @param_read_float(%struct.gs_param_list_s*, i8*, float*) #2

declare i32 @gs_param_read_items(%struct.gs_param_list_s*, i8*, %struct.gs_param_item_s*) #2

declare i32 @param_put_enum(%struct.gs_param_list_s*, i8*, i32*, i8**, i32) #2

declare void @pdf_set_process_color_model(%struct.gx_device_pdf_s*, i32) #2

declare void @pdf_set_initial_color(%struct.gx_device_pdf_s*, %struct.gx_hl_saved_color_s*, %struct.gx_hl_saved_color_s*, i32*, i32*) #2

declare i32 @gdev_psdf_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare i32 @gsicc_init_device_profile_struct(%struct.gx_device_s*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

declare void @gx_device_set_resolution(%struct.gx_device_s*, double, double) #2

declare i32 @gp_fseek_64(%struct._IO_FILE*, i64, i32) #2

declare void @pdf_initialize_ids(%struct.gx_device_pdf_s*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @gs_closedevice(%struct.gx_device_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @pdf_key_eq(%struct.gs_param_string_s*, i8*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i32 @gs_matrix_rotate(%struct.gs_matrix_s*, double, %struct.gs_matrix_s*) #2

declare i32 @cos_dict_put_c_key_string(%struct.cos_dict_s*, i8*, i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !26, i64 9368}
!6 = !{!"gx_device_pdf_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !2, i64 1736, !3, i64 1744, !2, i64 5840, !2, i64 5848, !2, i64 5856, !7, i64 5864, !7, i64 5868, !19, i64 5872, !2, i64 7488, !7, i64 7496, !7, i64 7500, !7, i64 7504, !32, i64 7512, !32, i64 8144, !9, i64 8776, !9, i64 8784, !3, i64 8792, !3, i64 8796, !25, i64 8800, !7, i64 8816, !2, i64 8824, !9, i64 8832, !9, i64 8840, !3, i64 8848, !7, i64 8852, !7, i64 8856, !7, i64 8860, !7, i64 8864, !26, i64 8872, !37, i64 8880, !7, i64 9360, !26, i64 9368, !7, i64 9376, !7, i64 9380, !7, i64 9384, !7, i64 9388, !7, i64 9392, !7, i64 9396, !7, i64 9400, !7, i64 9404, !7, i64 9408, !7, i64 9412, !7, i64 9416, !7, i64 9420, !42, i64 9424, !42, i64 9440, !7, i64 9456, !7, i64 9460, !7, i64 9464, !9, i64 9472, !7, i64 9480, !7, i64 9484, !41, i64 9488, !41, i64 9504, !7, i64 9520, !7, i64 9524, !7, i64 9528, !7, i64 9532, !7, i64 9536, !7, i64 9540, !7, i64 9544, !7, i64 9548, !7, i64 9552, !7, i64 9556, !7, i64 9560, !7, i64 9564, !7, i64 9568, !9, i64 9576, !9, i64 9584, !9, i64 9592, !43, i64 9600, !41, i64 9616, !41, i64 9632, !7, i64 9648, !7, i64 9652, !7, i64 9656, !41, i64 9664, !7, i64 9680, !7, i64 9684, !3, i64 9688, !3, i64 9720, !3, i64 9752, !7, i64 9768, !7, i64 9772, !7, i64 9776, !44, i64 9784, !45, i64 9816, !45, i64 9856, !7, i64 9896, !7, i64 9900, !7, i64 9904, !7, i64 9908, !7, i64 9912, !9, i64 9920, !3, i64 9928, !7, i64 9960, !9, i64 9968, !9, i64 9976, !3, i64 9984, !3, i64 9988, !46, i64 9992, !46, i64 14120, !46, i64 18248, !46, i64 22376, !9, i64 26504, !2, i64 26512, !2, i64 26520, !2, i64 26528, !9, i64 26536, !7, i64 26544, !7, i64 26548, !9, i64 26552, !3, i64 26560, !9, i64 26568, !9, i64 26576, !3, i64 26584, !2, i64 26592, !47, i64 26600, !2, i64 26648, !7, i64 26656, !9, i64 26664, !3, i64 26672, !3, i64 28592, !3, i64 28632, !2, i64 28648, !2, i64 28656, !9, i64 28664, !2, i64 28672, !7, i64 28680, !7, i64 28684, !7, i64 28688, !7, i64 28692, !2, i64 28696, !2, i64 28704, !2, i64 28712, !3, i64 28720, !3, i64 28736, !2, i64 28752, !2, i64 28760, !2, i64 28768, !2, i64 28776, !2, i64 28784, !25, i64 28792, !2, i64 28808, !2, i64 28816, !7, i64 28824, !2, i64 28832, !2, i64 28840, !2, i64 28848, !7, i64 28856, !7, i64 28860, !7, i64 28864, !48, i64 28872, !7, i64 30384, !7, i64 30388, !7, i64 30392, !2, i64 30400, !7, i64 30408, !7, i64 30412, !7, i64 30416, !22, i64 30420, !2, i64 30448, !3, i64 30456, !7, i64 30460, !7, i64 30464, !2, i64 30472, !2, i64 30480, !24, i64 30488, !7, i64 30524, !44, i64 30528, !7, i64 30560, !7, i64 30564, !7, i64 30568, !2, i64 30576, !7, i64 30584, !7, i64 30588, !9, i64 30592, !7, i64 30600, !7, i64 30604, !7, i64 30608, !22, i64 30612, !26, i64 30640, !2, i64 30648, !38, i64 30656, !7, i64 30672, !2, i64 30680, !7, i64 30688, !7, i64 30692, !7, i64 30696, !7, i64 30700, !7, i64 30704, !7, i64 30708, !7, i64 30712, !7, i64 30716, !7, i64 30720, !7, i64 30724, !7, i64 30728, !7, i64 30732, !7, i64 30736, !7, i64 30740, !7, i64 30744, !7, i64 30748, !7, i64 30752, !7, i64 30756, !7, i64 30760, !7, i64 30764, !7, i64 30768, !7, i64 30772, !2, i64 30776, !7, i64 30784, !7, i64 30788}
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
!19 = !{!"gs_imager_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !20, i64 24, !7, i64 128, !24, i64 132, !7, i64 168, !25, i64 176, !25, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !27, i64 224, !27, i64 228, !28, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !21, i64 296, !29, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !21, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !30, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !31, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !31, i64 1336}
!20 = !{!"gx_line_params_s", !21, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !7, i64 36, !22, i64 40, !23, i64 64}
!21 = !{!"float", !3, i64 0}
!22 = !{!"gs_matrix_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!23 = !{!"gx_dash_params_s", !2, i64 0, !7, i64 8, !21, i64 12, !7, i64 16, !21, i64 20, !7, i64 24, !7, i64 28, !21, i64 32}
!24 = !{!"gs_matrix_fixed_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!25 = !{!"gs_point_s", !26, i64 0, !26, i64 8}
!26 = !{!"double", !3, i64 0}
!27 = !{!"gs_transparency_source_s", !21, i64 0}
!28 = !{!"gs_xstate_trans_flags", !7, i64 0, !7, i64 4}
!29 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!30 = !{!"gx_transfer_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !2, i64 56}
!31 = !{!"gs_devicen_color_map_s", !7, i64 0, !3, i64 4, !7, i64 8, !7, i64 12, !9, i64 16, !3, i64 24}
!32 = !{!"gx_hl_saved_color_s", !9, i64 0, !9, i64 8, !7, i64 16, !33, i64 24, !35, i64 288}
!33 = !{!"gs_client_color_s", !2, i64 0, !34, i64 8}
!34 = !{!"gs_paint_color_s", !3, i64 0}
!35 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !36, i64 336}
!36 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!37 = !{!"psdf_distiller_params_s", !7, i64 0, !3, i64 4, !3, i64 8, !7, i64 12, !3, i64 16, !7, i64 20, !7, i64 24, !9, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !38, i64 64, !38, i64 80, !38, i64 96, !38, i64 112, !3, i64 128, !7, i64 132, !7, i64 136, !3, i64 140, !3, i64 144, !39, i64 152, !7, i64 232, !7, i64 236, !39, i64 240, !39, i64 320, !40, i64 400, !40, i64 416, !3, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !41, i64 448, !40, i64 464}
!38 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!39 = !{!"psdf_image_params_s", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !2, i64 24, !7, i64 32, !21, i64 36, !3, i64 40, !7, i64 44, !2, i64 48, !7, i64 56, !2, i64 64, !2, i64 72}
!40 = !{!"gs_param_string_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!41 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!42 = !{!"gs_param_float_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!43 = !{!"gs_param_int_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!44 = !{!"gs_rect_s", !25, i64 0, !25, i64 16}
!45 = !{!"pdf_page_dsc_info_s", !7, i64 0, !7, i64 4, !44, i64 8}
!46 = !{!"pdf_temp_file_s", !3, i64 0, !2, i64 4096, !2, i64 4104, !2, i64 4112, !2, i64 4120}
!47 = !{!"pdf_text_rotation_s", !3, i64 0, !7, i64 40}
!48 = !{!"pdf_viewer_state_s", !7, i64 0, !3, i64 8, !21, i64 40, !21, i64 44, !3, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !7, i64 80, !21, i64 84, !21, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !32, i64 120, !32, i64 752, !20, i64 1384, !2, i64 1488, !7, i64 1496, !9, i64 1504}
!49 = !{!21, !21, i64 0}
!50 = !{!7, !7, i64 0}
!51 = !{!6, !26, i64 8872}
!52 = !{!6, !7, i64 9360}
!53 = !{!54, !2, i64 0}
!54 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!55 = !{!56, !2, i64 40}
!56 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!57 = !{!6, !2, i64 24}
!58 = !{!59, !2, i64 32}
!59 = !{!"gs_memory_s", !2, i64 0, !60, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!60 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!61 = !{!59, !2, i64 200}
!62 = !{!59, !2, i64 88}
!63 = !{!59, !2, i64 24}
!64 = !{!6, !7, i64 8920}
!65 = !{!6, !3, i64 9008}
!66 = !{!3, !3, i64 0}
!67 = !{!6, !2, i64 1728}
!68 = !{!56, !2, i64 56}
!69 = !{!6, !7, i64 9524}
!70 = !{!6, !2, i64 26512}
!71 = !{!41, !2, i64 0}
!72 = !{!41, !7, i64 8}
!73 = !{!54, !2, i64 8}
!74 = !{!6, !9, i64 9472}
!75 = !{!9, !9, i64 0}
!76 = !{!6, !9, i64 26504}
!77 = !{!6, !7, i64 9564}
!78 = !{!6, !7, i64 9568}
!79 = !{!6, !7, i64 9560}
!80 = !{!6, !7, i64 9552}
!81 = !{!6, !7, i64 30748}
!82 = !{!6, !7, i64 30760}
!83 = !{!6, !3, i64 8848}
!84 = !{!6, !7, i64 9536}
!85 = !{!6, !7, i64 8856}
!86 = !{!6, !7, i64 9540}
!87 = !{!6, !7, i64 9544}
!88 = !{!6, !9, i64 9592}
!89 = !{!6, !7, i64 9112}
!90 = !{!6, !2, i64 1104}
!91 = !{!92, !9, i64 200}
!92 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !2, i64 176, !7, i64 184, !2, i64 192, !8, i64 200}
!93 = !{!92, !2, i64 216}
!94 = !{!92, !2, i64 208}
!95 = !{!6, !2, i64 784}
!96 = !{!6, !7, i64 956}
!97 = !{!6, !2, i64 9080}
!98 = !{!6, !2, i64 9168}
!99 = !{!6, !2, i64 9248}
!100 = !{!6, !7, i64 8860}
!101 = !{!102, !7, i64 836}
!102 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!103 = !{!102, !7, i64 832}
!104 = !{!26, !26, i64 0}
!105 = !{!6, !2, i64 14088}
!106 = !{!6, !7, i64 9624}
!107 = !{!6, !2, i64 9616}
!108 = !{!6, !7, i64 84}
!109 = !{!6, !9, i64 928}
!110 = !{!6, !7, i64 30764}
!111 = !{!6, !3, i64 30456}
!112 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 4, !50, i64 24, i64 8, !1, i64 32, i64 256, !66, i64 288, i64 8, !1, i64 296, i64 8, !75, i64 296, i64 16, !66, i64 312, i64 4, !50, i64 316, i64 4, !50, i64 296, i64 64, !66, i64 360, i64 256, !66, i64 616, i64 2, !113, i64 296, i64 128, !66, i64 296, i64 8, !75, i64 304, i64 4, !50, i64 308, i64 4, !50, i64 296, i64 8, !75, i64 304, i64 4, !50, i64 624, i64 4, !50, i64 628, i64 4, !50}
!113 = !{!11, !11, i64 0}
!114 = !{!115, !2, i64 0}
!115 = !{!"gs_param_item_s", !2, i64 0, !3, i64 8, !11, i64 10}
!116 = !{!115, !11, i64 10}
!117 = !{!115, !3, i64 8}
!118 = !{!6, !7, i64 9392}
!119 = !{!40, !7, i64 8}
!120 = !{!40, !2, i64 0}
!121 = !{!45, !7, i64 0}
!122 = !{!22, !21, i64 0}
!123 = !{!22, !21, i64 4}
!124 = !{!22, !21, i64 8}
!125 = !{!22, !21, i64 12}
!126 = !{!45, !7, i64 4}
!127 = !{!6, !7, i64 9772}
!128 = !{i64 0, i64 8, !104, i64 8, i64 8, !104, i64 16, i64 8, !104, i64 24, i64 8, !104}
!129 = !{!6, !7, i64 9388}
!130 = !{!6, !7, i64 9404}
!131 = !{!6, !2, i64 26520}
