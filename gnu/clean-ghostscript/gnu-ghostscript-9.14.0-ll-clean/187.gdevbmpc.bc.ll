; ModuleID = './gdevbmpc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
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
%struct.gx_printer_device_procs_s = type { {}*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
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
%struct.stream_s = type opaque
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
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, i32, %struct.gx_clist_state_s*, i8*, i8*, i8*, %struct.cmd_list_s*, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, i32, i32, i32, i32, [11 x float], %struct.gx_clip_path_s*, i64, %struct.clist_color_space_s, [4 x i64], i64, i64, i64, i64, i32, i32, i32, i32, i32 (%struct.gx_device_s*, i32)*, i32, %struct.gs_pattern1_instance_s*, i32, i32, i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s*, i64, i32, i32, i32, i32, %struct.gx_device_color_info_s }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.gx_band_page_info_s = type { [4096 x i8], i8*, [4096 x i8], i8*, %struct.clist_io_procs_s*, i32, i64, i64, %struct.gx_band_params_s }
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bmp_quad_s = type { i8, i8, i8, i8 }
%struct.bmp_file_header_s = type { i32, i16, i16, i32 }
%struct.bmp_info_header_s = type { i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @write_bmp_header(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %depth = alloca i32, align 4
  %palette = alloca [256 x %struct.bmp_quad_s], align 16
  %i = alloca i32, align 4
  %rgb = alloca [3 x i16], align 2
  %q = alloca %struct.bmp_quad_s, align 1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !5
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !22
  %3 = bitcast [256 x %struct.bmp_quad_s]* %palette to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %3) #1
  %4 = load i32, i32* %depth, align 4, !tbaa !22
  %cmp = icmp sle i32 %4, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %6) #1
  %7 = bitcast %struct.bmp_quad_s* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %reserved = getelementptr inbounds %struct.bmp_quad_s, %struct.bmp_quad_s* %q, i32 0, i32 3
  store i8 0, i8* %reserved, align 1, !tbaa !23
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !tbaa !22
  %9 = load i32, i32* %depth, align 4, !tbaa !22
  %shl = shl i32 1, %9
  %cmp3 = icmp ne i32 %8, %shl
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 6
  %11 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !25
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_printer_s* %12 to %struct.gx_device_s*
  %14 = load i32, i32* %i, align 4, !tbaa !22
  %conv5 = sext i32 %14 to i64
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call = call i32 %11(%struct.gx_device_s* %13, i64 %conv5, i16* %arraydecay) #3
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !26
  %conv6 = zext i16 %15 to i32
  %mul = mul i32 %conv6, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv7 = trunc i32 %shr to i16
  %conv8 = trunc i16 %conv7 to i8
  %red = getelementptr inbounds %struct.bmp_quad_s, %struct.bmp_quad_s* %q, i32 0, i32 2
  store i8 %conv8, i8* %red, align 1, !tbaa !27
  %arrayidx9 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %16 = load i16, i16* %arrayidx9, align 2, !tbaa !26
  %conv10 = zext i16 %16 to i32
  %mul11 = mul i32 %conv10, 65281
  %add12 = add i32 %mul11, 8388608
  %shr13 = lshr i32 %add12, 24
  %conv14 = trunc i32 %shr13 to i16
  %conv15 = trunc i16 %conv14 to i8
  %green = getelementptr inbounds %struct.bmp_quad_s, %struct.bmp_quad_s* %q, i32 0, i32 1
  store i8 %conv15, i8* %green, align 1, !tbaa !28
  %arrayidx16 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %17 = load i16, i16* %arrayidx16, align 2, !tbaa !26
  %conv17 = zext i16 %17 to i32
  %mul18 = mul i32 %conv17, 65281
  %add19 = add i32 %mul18, 8388608
  %shr20 = lshr i32 %add19, 24
  %conv21 = trunc i32 %shr20 to i16
  %conv22 = trunc i16 %conv21 to i8
  %blue = getelementptr inbounds %struct.bmp_quad_s, %struct.bmp_quad_s* %q, i32 0, i32 0
  store i8 %conv22, i8* %blue, align 1, !tbaa !29
  %18 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [256 x %struct.bmp_quad_s], [256 x %struct.bmp_quad_s]* %palette, i32 0, i64 %idxprom
  %19 = bitcast %struct.bmp_quad_s* %arrayidx23 to i8*
  %20 = bitcast %struct.bmp_quad_s* %q to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 4, i32 1, i1 false), !tbaa.struct !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = bitcast %struct.bmp_quad_s* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %27 = load i32, i32* %depth, align 4, !tbaa !22
  %arraydecay24 = getelementptr inbounds [256 x %struct.bmp_quad_s], [256 x %struct.bmp_quad_s]* %palette, i32 0, i32 0
  %28 = bitcast %struct.bmp_quad_s* %arraydecay24 to i8*
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_printer_s* %29 to %struct.gx_device_s*
  %call25 = call i32 @gx_device_raster(%struct.gx_device_s* %30, i32 0) #3
  %call26 = call i32 @write_bmp_depth_header(%struct.gx_device_printer_s* %25, %struct._IO_FILE* %26, i32 %27, i8* %28, i32 %call25) #3
  %31 = bitcast [256 x %struct.bmp_quad_s]* %palette to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %31) #1
  %32 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  ret i32 %call26
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @write_bmp_depth_header(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file, i32 %depth, i8* %palette, i32 %raster) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %depth.addr = alloca i32, align 4
  %palette.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %bmp_raster = alloca i64, align 8
  %height = alloca i32, align 4
  %quads = alloca i32, align 4
  %fhdr = alloca %struct.bmp_file_header_s, align 4
  %cleanup.dest.slot = alloca i32
  %ihdr = alloca %struct.bmp_info_header_s, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !22
  store i8* %palette, i8** %palette.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !22
  %0 = bitcast i64* %bmp_raster to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %raster.addr, align 4, !tbaa !22
  %2 = load i32, i32* %raster.addr, align 4, !tbaa !22
  %sub = sub nsw i32 0, %2
  %and = and i32 %sub, 3
  %add = add nsw i32 %1, %and
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %bmp_raster, align 8, !tbaa !32
  %3 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 14
  %5 = load i32, i32* %height1, align 4, !tbaa !33
  store i32 %5, i32* %height, align 4, !tbaa !22
  %6 = bitcast i32* %quads to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %depth.addr, align 4, !tbaa !22
  %cmp = icmp sle i32 %7, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %depth.addr, align 4, !tbaa !22
  %sh_prom = zext i32 %8 to i64
  %shl = shl i64 4, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ 0, %cond.false ]
  %conv3 = trunc i64 %cond to i32
  store i32 %conv3, i32* %quads, align 4, !tbaa !22
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 66, %struct._IO_FILE* %9) #3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 77, %struct._IO_FILE* %10) #3
  %11 = bitcast %struct.bmp_file_header_s* %fhdr to i8*
  call void @llvm.lifetime.start(i64 12, i8* %11) #1
  %12 = load i32, i32* %quads, align 4, !tbaa !22
  %conv5 = sext i32 %12 to i64
  %add6 = add i64 54, %conv5
  %13 = load i64, i64* %bmp_raster, align 8, !tbaa !32
  %14 = load i32, i32* %height, align 4, !tbaa !22
  %conv7 = sext i32 %14 to i64
  %mul = mul i64 %13, %conv7
  %add8 = add i64 %add6, %mul
  %conv9 = trunc i64 %add8 to i32
  %size = getelementptr inbounds %struct.bmp_file_header_s, %struct.bmp_file_header_s* %fhdr, i32 0, i32 0
  store i32 %conv9, i32* %size, align 4, !tbaa !34
  %reserved1 = getelementptr inbounds %struct.bmp_file_header_s, %struct.bmp_file_header_s* %fhdr, i32 0, i32 1
  store i16 0, i16* %reserved1, align 2, !tbaa !36
  %reserved2 = getelementptr inbounds %struct.bmp_file_header_s, %struct.bmp_file_header_s* %fhdr, i32 0, i32 2
  store i16 0, i16* %reserved2, align 2, !tbaa !37
  %15 = load i32, i32* %quads, align 4, !tbaa !22
  %conv10 = sext i32 %15 to i64
  %add11 = add i64 54, %conv10
  %conv12 = trunc i64 %add11 to i32
  %offBits = getelementptr inbounds %struct.bmp_file_header_s, %struct.bmp_file_header_s* %fhdr, i32 0, i32 3
  store i32 %conv12, i32* %offBits, align 4, !tbaa !38
  %16 = bitcast %struct.bmp_file_header_s* %fhdr to i8*
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call13 = call i64 @fwrite(i8* %16, i64 1, i64 12, %struct._IO_FILE* %17) #3
  %cmp14 = icmp ne i64 %call13, 12
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast %struct.bmp_file_header_s* %fhdr to i8*
  call void @llvm.lifetime.end(i64 12, i8* %18) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %19 = bitcast %struct.bmp_info_header_s* %ihdr to i8*
  call void @llvm.lifetime.start(i64 40, i8* %19) #1
  %size16 = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 0
  store i32 40, i32* %size16, align 4, !tbaa !39
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4, !tbaa !41
  %width17 = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 1
  store i32 %21, i32* %width17, align 4, !tbaa !42
  %22 = load i32, i32* %height, align 4, !tbaa !22
  %height18 = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 2
  store i32 %22, i32* %height18, align 4, !tbaa !43
  %planes = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 3
  store i16 1, i16* %planes, align 2, !tbaa !44
  %23 = load i32, i32* %depth.addr, align 4, !tbaa !22
  %conv19 = trunc i32 %23 to i16
  %bitCount = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 4
  store i16 %conv19, i16* %bitCount, align 2, !tbaa !45
  %compression = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 5
  store i32 0, i32* %compression, align 4, !tbaa !46
  %24 = load i64, i64* %bmp_raster, align 8, !tbaa !32
  %25 = load i32, i32* %height, align 4, !tbaa !22
  %conv20 = sext i32 %25 to i64
  %mul21 = mul i64 %24, %conv20
  %conv22 = trunc i64 %mul21 to i32
  %sizeImage = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 6
  store i32 %conv22, i32* %sizeImage, align 4, !tbaa !47
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %27 = load float, float* %arrayidx, align 4, !tbaa !48
  %conv23 = fpext float %27 to double
  %mul24 = fmul double %conv23, 0x4043AF5EBD7AF5EC
  %add25 = fadd double %mul24, 5.000000e-01
  %conv26 = fptoui double %add25 to i32
  %xPelsPerMeter = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 7
  store i32 %conv26, i32* %xPelsPerMeter, align 4, !tbaa !50
  %28 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %28, i32 0, i32 22
  %arrayidx28 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution27, i32 0, i64 1
  %29 = load float, float* %arrayidx28, align 4, !tbaa !48
  %conv29 = fpext float %29 to double
  %mul30 = fmul double %conv29, 0x4043AF5EBD7AF5EC
  %add31 = fadd double %mul30, 5.000000e-01
  %conv32 = fptoui double %add31 to i32
  %yPelsPerMeter = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 8
  store i32 %conv32, i32* %yPelsPerMeter, align 4, !tbaa !51
  %clrUsed = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 9
  store i32 0, i32* %clrUsed, align 4, !tbaa !52
  %clrImportant = getelementptr inbounds %struct.bmp_info_header_s, %struct.bmp_info_header_s* %ihdr, i32 0, i32 10
  store i32 0, i32* %clrImportant, align 4, !tbaa !53
  %30 = bitcast %struct.bmp_info_header_s* %ihdr to i8*
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call33 = call i64 @fwrite(i8* %30, i64 1, i64 40, %struct._IO_FILE* %31) #3
  %cmp34 = icmp ne i64 %call33, 40
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %cleanup.cont
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.38

if.end.37:                                        ; preds = %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.38

cleanup.38:                                       ; preds = %if.end.37, %if.then.36
  %32 = bitcast %struct.bmp_info_header_s* %ihdr to i8*
  call void @llvm.lifetime.end(i64 40, i8* %32) #1
  %cleanup.dest.39 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.39, label %cleanup.48 [
    i32 0, label %cleanup.cont.40
  ]

cleanup.cont.40:                                  ; preds = %cleanup.38
  %33 = load i32, i32* %depth.addr, align 4, !tbaa !22
  %cmp41 = icmp sle i32 %33, 8
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %cleanup.cont.40
  %34 = load i8*, i8** %palette.addr, align 8, !tbaa !1
  %35 = load i32, i32* %depth.addr, align 4, !tbaa !22
  %shl44 = shl i32 1, %35
  %conv45 = sext i32 %shl44 to i64
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call46 = call i64 @fwrite(i8* %34, i64 4, i64 %conv45, %struct._IO_FILE* %36) #3
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %cleanup.cont.40
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %if.end.47, %cleanup.38, %cleanup
  %37 = bitcast i32* %quads to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i64* %bmp_raster to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @write_bmp_separated_header(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %depth = alloca i32, align 4
  %plane_depth = alloca i32, align 4
  %palette = alloca [256 x %struct.bmp_quad_s], align 16
  %q = alloca %struct.bmp_quad_s, align 1
  %i = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !5
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !22
  %3 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %depth, align 4, !tbaa !22
  %div = sdiv i32 %4, 4
  store i32 %div, i32* %plane_depth, align 4, !tbaa !22
  %5 = bitcast [256 x %struct.bmp_quad_s]* %palette to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %5) #1
  %6 = bitcast %struct.bmp_quad_s* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %reserved = getelementptr inbounds %struct.bmp_quad_s, %struct.bmp_quad_s* %q, i32 0, i32 3
  store i8 0, i8* %reserved, align 1, !tbaa !23
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !22
  %9 = load i32, i32* %plane_depth, align 4, !tbaa !22
  %shl = shl i32 1, %9
  %cmp = icmp slt i32 %8, %shl
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !22
  %mul = mul nsw i32 %10, 255
  %11 = load i32, i32* %plane_depth, align 4, !tbaa !22
  %shl3 = shl i32 1, %11
  %sub = sub nsw i32 %shl3, 1
  %div4 = sdiv i32 %mul, %sub
  %sub5 = sub nsw i32 255, %div4
  %conv6 = trunc i32 %sub5 to i8
  %blue = getelementptr inbounds %struct.bmp_quad_s, %struct.bmp_quad_s* %q, i32 0, i32 0
  store i8 %conv6, i8* %blue, align 1, !tbaa !29
  %green = getelementptr inbounds %struct.bmp_quad_s, %struct.bmp_quad_s* %q, i32 0, i32 1
  store i8 %conv6, i8* %green, align 1, !tbaa !28
  %red = getelementptr inbounds %struct.bmp_quad_s, %struct.bmp_quad_s* %q, i32 0, i32 2
  store i8 %conv6, i8* %red, align 1, !tbaa !27
  %12 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.bmp_quad_s], [256 x %struct.bmp_quad_s]* %palette, i32 0, i64 %idxprom
  %13 = bitcast %struct.bmp_quad_s* %arrayidx to i8*
  %14 = bitcast %struct.bmp_quad_s* %q to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 4, i32 1, i1 false), !tbaa.struct !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %18 = load i32, i32* %plane_depth, align 4, !tbaa !22
  %arraydecay = getelementptr inbounds [256 x %struct.bmp_quad_s], [256 x %struct.bmp_quad_s]* %palette, i32 0, i32 0
  %19 = bitcast %struct.bmp_quad_s* %arraydecay to i8*
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4, !tbaa !41
  %22 = load i32, i32* %plane_depth, align 4, !tbaa !22
  %mul7 = mul nsw i32 %21, %22
  %add = add nsw i32 %mul7, 7
  %shr = ashr i32 %add, 3
  %call = call i32 @write_bmp_depth_header(%struct.gx_device_printer_s* %16, %struct._IO_FILE* %17, i32 %18, i8* %19, i32 %shr) #3
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.bmp_quad_s* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast [256 x %struct.bmp_quad_s]* %palette to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %25) #1
  %26 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i64 @bmp_map_16m_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !26
  store i16 %4, i16* %r, align 2, !tbaa !26
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !26
  store i16 %6, i16* %g, align 2, !tbaa !26
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !26
  store i16 %8, i16* %b, align 2, !tbaa !26
  %9 = load i16, i16* %r, align 2, !tbaa !26
  %conv = zext i16 %9 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv3 = trunc i32 %shr to i16
  %conv4 = zext i16 %conv3 to i32
  %10 = load i16, i16* %g, align 2, !tbaa !26
  %conv5 = zext i16 %10 to i32
  %mul6 = mul i32 %conv5, 65281
  %add7 = add i32 %mul6, 8388608
  %shr8 = lshr i32 %add7, 24
  %conv9 = trunc i32 %shr8 to i16
  %conv10 = zext i16 %conv9 to i32
  %shl = shl i32 %conv10, 8
  %add11 = add i32 %conv4, %shl
  %conv12 = zext i32 %add11 to i64
  %11 = load i16, i16* %b, align 2, !tbaa !26
  %conv13 = zext i16 %11 to i32
  %mul14 = mul i32 %conv13, 65281
  %add15 = add i32 %mul14, 8388608
  %shr16 = lshr i32 %add15, 24
  %conv17 = trunc i32 %shr16 to i16
  %conv18 = zext i16 %conv17 to i64
  %shl19 = shl i64 %conv18, 16
  %add20 = add i64 %conv12, %shl19
  %12 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %12) #1
  %13 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %13) #1
  %14 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %14) #1
  ret i64 %add20
}

; Function Attrs: nounwind uwtable
define i32 @bmp_map_16m_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !32
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr = lshr i64 %0, 16
  %shl = shl i64 %shr, 8
  %1 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr1 = lshr i64 %1, 16
  %shr2 = lshr i64 %shr1, 0
  %add = add i64 %shl, %shr2
  %conv = trunc i64 %add to i16
  %2 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 2
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !26
  %3 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr3 = lshr i64 %3, 8
  %and = and i64 %shr3, 255
  %shl4 = shl i64 %and, 8
  %4 = load i64, i64* %color.addr, align 8, !tbaa !32
  %shr5 = lshr i64 %4, 8
  %and6 = and i64 %shr5, 255
  %shr7 = lshr i64 %and6, 0
  %add8 = add i64 %shl4, %shr7
  %conv9 = trunc i64 %add8 to i16
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !26
  %6 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and11 = and i64 %6, 255
  %shl12 = shl i64 %and11, 8
  %7 = load i64, i64* %color.addr, align 8, !tbaa !32
  %and13 = and i64 %7, 255
  %shr14 = lshr i64 %and13, 0
  %add15 = add i64 %shl12, %shr14
  %conv16 = trunc i64 %add15 to i16
  %8 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %8, i64 0
  store i16 %conv16, i16* %arrayidx17, align 2, !tbaa !26
  ret i32 0
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !11, i64 108}
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
!23 = !{!24, !3, i64 3}
!24 = !{!"bmp_quad_s", !3, i64 0, !3, i64 1, !3, i64 2, !3, i64 3}
!25 = !{!6, !2, i64 1192}
!26 = !{!11, !11, i64 0}
!27 = !{!24, !3, i64 2}
!28 = !{!24, !3, i64 1}
!29 = !{!24, !3, i64 0}
!30 = !{i64 0, i64 1, !31, i64 1, i64 1, !31, i64 2, i64 1, !31, i64 3, i64 1, !31}
!31 = !{!3, !3, i64 0}
!32 = !{!9, !9, i64 0}
!33 = !{!6, !7, i64 836}
!34 = !{!35, !7, i64 0}
!35 = !{!"bmp_file_header_s", !7, i64 0, !11, i64 4, !11, i64 6, !7, i64 8}
!36 = !{!35, !11, i64 4}
!37 = !{!35, !11, i64 6}
!38 = !{!35, !7, i64 8}
!39 = !{!40, !7, i64 0}
!40 = !{!"bmp_info_header_s", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 12, !11, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36}
!41 = !{!6, !7, i64 832}
!42 = !{!40, !7, i64 4}
!43 = !{!40, !7, i64 8}
!44 = !{!40, !11, i64 12}
!45 = !{!40, !11, i64 14}
!46 = !{!40, !7, i64 16}
!47 = !{!40, !7, i64 20}
!48 = !{!49, !49, i64 0}
!49 = !{!"float", !3, i64 0}
!50 = !{!40, !7, i64 24}
!51 = !{!40, !7, i64 28}
!52 = !{!40, !7, i64 32}
!53 = !{!40, !7, i64 36}
