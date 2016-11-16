; ModuleID = './eprnrend.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eprn_Device = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.s_eprn_Device }
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
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
%struct.gdev_prn_start_render_params_s = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
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

@eprn_map_rgb_color_for_RGB.half = internal constant i16 32767, align 2
@eprn_map_rgb_color_for_CMY_or_K.half = internal constant i16 32767, align 2
@eprn_map_cmyk_color.threshold = internal constant i16 32767, align 2

; Function Attrs: nounwind uwtable
define i32 @eprn_number_of_bitplanes(%struct.eprn_Device* %dev) #0 {
entry:
  %dev.addr = alloca %struct.eprn_Device*, align 8
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %0, i32 0, i32 68
  %output_planes = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 27
  %1 = load i32, i32* %output_planes, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @eprn_number_of_octets(%struct.eprn_Device* %dev, i32* %lenghts) #0 {
entry:
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %lenghts.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  store i32* %lenghts, i32** %lenghts.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %2, i32 0, i32 68
  %octets_per_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 26
  %3 = load i32, i32* %octets_per_line, align 4, !tbaa !25
  %4 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %4, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %5 = load i16, i16* %depth, align 2, !tbaa !26
  %conv = zext i16 %5 to i32
  %add = add i32 %3, %conv
  %sub = sub i32 %add, 1
  %6 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %6, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %7 = load i16, i16* %depth2, align 2, !tbaa !26
  %conv3 = zext i16 %7 to i32
  %div = udiv i32 %sub, %conv3
  store i32 %div, i32* %length, align 4, !tbaa !27
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %j, align 4, !tbaa !27
  %9 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn4 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %9, i32 0, i32 68
  %output_planes = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn4, i32 0, i32 27
  %10 = load i32, i32* %output_planes, align 4, !tbaa !5
  %cmp = icmp ult i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %length, align 4, !tbaa !27
  %12 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom = zext i32 %12 to i64
  %13 = load i32*, i32** %lenghts.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 %11, i32* %arrayidx, align 4, !tbaa !27
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4, !tbaa !27
  %inc = add i32 %14, 1
  store i32 %inc, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @eprn_map_rgb_color_for_RGB(%struct.gx_device_s* %device, i16* %cv) #0 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %red = alloca i16, align 2
  %green = alloca i16, align 2
  %blue = alloca i16, align 2
  %value = alloca i64, align 8
  %dev = alloca %struct.eprn_Device*, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %red to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !28
  store i16 %2, i16* %red, align 2, !tbaa !28
  %3 = bitcast i16* %green to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !28
  store i16 %5, i16* %green, align 2, !tbaa !28
  %6 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !28
  store i16 %8, i16* %blue, align 2, !tbaa !28
  %9 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 0, i64* %value, align 8, !tbaa !29
  %10 = bitcast %struct.eprn_Device** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.eprn_Device*
  store %struct.eprn_Device* %12, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %13 = load i16, i16* %red, align 2, !tbaa !28
  %conv = zext i16 %13 to i32
  %cmp = icmp sgt i32 %conv, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i64, i64* %value, align 8, !tbaa !29
  %or = or i64 %14, 2
  store i64 %or, i64* %value, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i16, i16* %green, align 2, !tbaa !28
  %conv4 = zext i16 %15 to i32
  %cmp5 = icmp sgt i32 %conv4, 32767
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %16 = load i64, i64* %value, align 8, !tbaa !29
  %or8 = or i64 %16, 4
  store i64 %or8, i64* %value, align 8, !tbaa !29
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %17 = load i16, i16* %blue, align 2, !tbaa !28
  %conv10 = zext i16 %17 to i32
  %cmp11 = icmp sgt i32 %conv10, 32767
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %18 = load i64, i64* %value, align 8, !tbaa !29
  %or14 = or i64 %18, 8
  store i64 %or14, i64* %value, align 8, !tbaa !29
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.9
  %19 = load i64, i64* %value, align 8, !tbaa !29
  %20 = bitcast %struct.eprn_Device** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %22) #1
  %23 = bitcast i16* %green to i8*
  call void @llvm.lifetime.end(i64 2, i8* %23) #1
  %24 = bitcast i16* %red to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #1
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define i64 @eprn_map_rgb_color_for_CMY_or_K(%struct.gx_device_s* %device, i16* %cv) #0 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %red = alloca i16, align 2
  %green = alloca i16, align 2
  %blue = alloca i16, align 2
  %value = alloca i64, align 8
  %dev = alloca %struct.eprn_Device*, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %red to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !28
  store i16 %2, i16* %red, align 2, !tbaa !28
  %3 = bitcast i16* %green to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !28
  store i16 %5, i16* %green, align 2, !tbaa !28
  %6 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !28
  store i16 %8, i16* %blue, align 2, !tbaa !28
  %9 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 14, i64* %value, align 8, !tbaa !29
  %10 = bitcast %struct.eprn_Device** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_s* %11 to %struct.eprn_Device*
  store %struct.eprn_Device* %12, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %13 = load i16, i16* %red, align 2, !tbaa !28
  %conv = zext i16 %13 to i32
  %cmp = icmp sgt i32 %conv, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i64, i64* %value, align 8, !tbaa !29
  %and = and i64 %14, 4294967293
  store i64 %and, i64* %value, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i16, i16* %green, align 2, !tbaa !28
  %conv4 = zext i16 %15 to i32
  %cmp5 = icmp sgt i32 %conv4, 32767
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %16 = load i64, i64* %value, align 8, !tbaa !29
  %and8 = and i64 %16, 4294967291
  store i64 %and8, i64* %value, align 8, !tbaa !29
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %17 = load i16, i16* %blue, align 2, !tbaa !28
  %conv10 = zext i16 %17 to i32
  %cmp11 = icmp sgt i32 %conv10, 32767
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %18 = load i64, i64* %value, align 8, !tbaa !29
  %and14 = and i64 %18, 4294967287
  store i64 %and14, i64* %value, align 8, !tbaa !29
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.9
  %19 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %19, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 14
  %20 = load i32, i32* %colour_model, align 4, !tbaa !30
  %cmp16 = icmp ne i32 %20, 2
  br i1 %cmp16, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.15
  %21 = load i64, i64* %value, align 8, !tbaa !29
  %cmp18 = icmp eq i64 %21, 14
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  store i64 1, i64* %value, align 8, !tbaa !29
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true, %if.end.15
  %22 = load i64, i64* %value, align 8, !tbaa !29
  %23 = bitcast %struct.eprn_Device** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #1
  %26 = bitcast i16* %green to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #1
  %27 = bitcast i16* %red to i8*
  call void @llvm.lifetime.end(i64 2, i8* %27) #1
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define i64 @eprn_map_rgb_color_for_RGB_flex(%struct.gx_device_s* %device, i16* %cv) #0 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %red = alloca i16, align 2
  %green = alloca i16, align 2
  %blue = alloca i16, align 2
  %value = alloca i64, align 8
  %step = alloca i16, align 2
  %level = alloca i32, align 4
  %eprn = alloca %struct.s_eprn_Device*, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %red to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !28
  store i16 %2, i16* %red, align 2, !tbaa !28
  %3 = bitcast i16* %green to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !28
  store i16 %5, i16* %green, align 2, !tbaa !28
  %6 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !28
  store i16 %8, i16* %blue, align 2, !tbaa !28
  %9 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 0, i64* %value, align 8, !tbaa !29
  %10 = bitcast i16* %step to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  %11 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_s* %13 to %struct.eprn_Device*
  %eprn3 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %14, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn3, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %15 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %15, i32 0, i32 16
  %16 = load i32, i32* %non_black_levels, align 4, !tbaa !31
  %div = udiv i32 65535, %16
  %conv = trunc i32 %div to i16
  store i16 %conv, i16* %step, align 2, !tbaa !28
  %17 = load i16, i16* %blue, align 2, !tbaa !28
  %conv4 = zext i16 %17 to i32
  %18 = load i16, i16* %step, align 2, !tbaa !28
  %conv5 = zext i16 %18 to i32
  %div6 = sdiv i32 %conv4, %conv5
  store i32 %div6, i32* %level, align 4, !tbaa !27
  %19 = load i32, i32* %level, align 4, !tbaa !27
  %20 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels7 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %20, i32 0, i32 16
  %21 = load i32, i32* %non_black_levels7, align 4, !tbaa !31
  %cmp = icmp uge i32 %19, %21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels9 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %22, i32 0, i32 16
  %23 = load i32, i32* %non_black_levels9, align 4, !tbaa !31
  %sub = sub i32 %23, 1
  store i32 %sub, i32* %level, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i32, i32* %level, align 4, !tbaa !27
  %25 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %bits_per_colorant = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %25, i32 0, i32 23
  %26 = load i32, i32* %bits_per_colorant, align 4, !tbaa !32
  %shl = shl i32 %24, %26
  %conv10 = zext i32 %shl to i64
  store i64 %conv10, i64* %value, align 8, !tbaa !29
  %27 = load i16, i16* %green, align 2, !tbaa !28
  %conv11 = zext i16 %27 to i32
  %28 = load i16, i16* %step, align 2, !tbaa !28
  %conv12 = zext i16 %28 to i32
  %div13 = sdiv i32 %conv11, %conv12
  store i32 %div13, i32* %level, align 4, !tbaa !27
  %29 = load i32, i32* %level, align 4, !tbaa !27
  %30 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels14 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %30, i32 0, i32 16
  %31 = load i32, i32* %non_black_levels14, align 4, !tbaa !31
  %cmp15 = icmp uge i32 %29, %31
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end
  %32 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels18 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %32, i32 0, i32 16
  %33 = load i32, i32* %non_black_levels18, align 4, !tbaa !31
  %sub19 = sub i32 %33, 1
  store i32 %sub19, i32* %level, align 4, !tbaa !27
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end
  %34 = load i64, i64* %value, align 8, !tbaa !29
  %35 = load i32, i32* %level, align 4, !tbaa !27
  %conv21 = zext i32 %35 to i64
  %or = or i64 %34, %conv21
  %36 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %bits_per_colorant22 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %36, i32 0, i32 23
  %37 = load i32, i32* %bits_per_colorant22, align 4, !tbaa !32
  %sh_prom = zext i32 %37 to i64
  %shl23 = shl i64 %or, %sh_prom
  store i64 %shl23, i64* %value, align 8, !tbaa !29
  %38 = load i16, i16* %red, align 2, !tbaa !28
  %conv24 = zext i16 %38 to i32
  %39 = load i16, i16* %step, align 2, !tbaa !28
  %conv25 = zext i16 %39 to i32
  %div26 = sdiv i32 %conv24, %conv25
  store i32 %div26, i32* %level, align 4, !tbaa !27
  %40 = load i32, i32* %level, align 4, !tbaa !27
  %41 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels27 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %41, i32 0, i32 16
  %42 = load i32, i32* %non_black_levels27, align 4, !tbaa !31
  %cmp28 = icmp uge i32 %40, %42
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.20
  %43 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels31 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %43, i32 0, i32 16
  %44 = load i32, i32* %non_black_levels31, align 4, !tbaa !31
  %sub32 = sub i32 %44, 1
  store i32 %sub32, i32* %level, align 4, !tbaa !27
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.20
  %45 = load i64, i64* %value, align 8, !tbaa !29
  %46 = load i32, i32* %level, align 4, !tbaa !27
  %conv34 = zext i32 %46 to i64
  %or35 = or i64 %45, %conv34
  %47 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %bits_per_colorant36 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %47, i32 0, i32 23
  %48 = load i32, i32* %bits_per_colorant36, align 4, !tbaa !32
  %sh_prom37 = zext i32 %48 to i64
  %shl38 = shl i64 %or35, %sh_prom37
  store i64 %shl38, i64* %value, align 8, !tbaa !29
  %49 = load i64, i64* %value, align 8, !tbaa !29
  %50 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i16* %step to i8*
  call void @llvm.lifetime.end(i64 2, i8* %52) #1
  %53 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %54) #1
  %55 = bitcast i16* %green to i8*
  call void @llvm.lifetime.end(i64 2, i8* %55) #1
  %56 = bitcast i16* %red to i8*
  call void @llvm.lifetime.end(i64 2, i8* %56) #1
  ret i64 %49
}

; Function Attrs: nounwind uwtable
define i64 @eprn_map_rgb_color_for_CMY_or_K_flex(%struct.gx_device_s* %device, i16* %cv) #0 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %red = alloca i16, align 2
  %green = alloca i16, align 2
  %blue = alloca i16, align 2
  %dev = alloca %struct.eprn_Device*, align 8
  %tmpcv = alloca [4 x i16], align 2
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %red to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !28
  store i16 %2, i16* %red, align 2, !tbaa !28
  %3 = bitcast i16* %green to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !28
  store i16 %5, i16* %green, align 2, !tbaa !28
  %6 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !28
  store i16 %8, i16* %blue, align 2, !tbaa !28
  %9 = bitcast %struct.eprn_Device** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.eprn_Device*
  store %struct.eprn_Device* %11, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %12 = bitcast [4 x i16]* %tmpcv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %13, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 14
  %14 = load i32, i32* %colour_model, align 4, !tbaa !30
  %cmp = icmp ne i32 %14, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %15 = load i16, i16* %red, align 2, !tbaa !28
  %conv = zext i16 %15 to i32
  %16 = load i16, i16* %green, align 2, !tbaa !28
  %conv3 = zext i16 %16 to i32
  %cmp4 = icmp eq i32 %conv, %conv3
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %17 = load i16, i16* %green, align 2, !tbaa !28
  %conv7 = zext i16 %17 to i32
  %18 = load i16, i16* %blue, align 2, !tbaa !28
  %conv8 = zext i16 %18 to i32
  %cmp9 = icmp eq i32 %conv7, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  %arrayidx11 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 0
  store i16 0, i16* %arrayidx11, align 2, !tbaa !28
  %arrayidx12 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 1
  store i16 0, i16* %arrayidx12, align 2, !tbaa !28
  %arrayidx13 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 2
  store i16 0, i16* %arrayidx13, align 2, !tbaa !28
  %19 = load i16, i16* %red, align 2, !tbaa !28
  %conv14 = zext i16 %19 to i32
  %sub = sub nsw i32 65535, %conv14
  %conv15 = trunc i32 %sub to i16
  %arrayidx16 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 3
  store i16 %conv15, i16* %arrayidx16, align 2, !tbaa !28
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i32 0
  %call = call i64 @eprn_map_cmyk_color_flex(%struct.gx_device_s* %20, i16* %arraydecay) #3
  store i64 %call, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true, %entry
  %21 = load i16, i16* %red, align 2, !tbaa !28
  %conv17 = zext i16 %21 to i32
  %sub18 = sub nsw i32 65535, %conv17
  %conv19 = trunc i32 %sub18 to i16
  %arrayidx20 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 0
  store i16 %conv19, i16* %arrayidx20, align 2, !tbaa !28
  %22 = load i16, i16* %green, align 2, !tbaa !28
  %conv21 = zext i16 %22 to i32
  %sub22 = sub nsw i32 65535, %conv21
  %conv23 = trunc i32 %sub22 to i16
  %arrayidx24 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 1
  store i16 %conv23, i16* %arrayidx24, align 2, !tbaa !28
  %23 = load i16, i16* %blue, align 2, !tbaa !28
  %conv25 = zext i16 %23 to i32
  %sub26 = sub nsw i32 65535, %conv25
  %conv27 = trunc i32 %sub26 to i16
  %arrayidx28 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 2
  store i16 %conv27, i16* %arrayidx28, align 2, !tbaa !28
  %arrayidx29 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 3
  store i16 0, i16* %arrayidx29, align 2, !tbaa !28
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %arraydecay30 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i32 0
  %call31 = call i64 @eprn_map_cmyk_color_flex(%struct.gx_device_s* %24, i16* %arraydecay30) #3
  store i64 %call31, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast [4 x i16]* %tmpcv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.eprn_Device** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %27) #1
  %28 = bitcast i16* %green to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #1
  %29 = bitcast i16* %red to i8*
  call void @llvm.lifetime.end(i64 2, i8* %29) #1
  %30 = load i64, i64* %retval
  ret i64 %30
}

; Function Attrs: nounwind uwtable
define i64 @eprn_map_cmyk_color_flex(%struct.gx_device_s* %device, i16* %cv) #0 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %cyan = alloca i16, align 2
  %magenta = alloca i16, align 2
  %yellow = alloca i16, align 2
  %black = alloca i16, align 2
  %value = alloca i64, align 8
  %step = alloca i16, align 2
  %level = alloca i32, align 4
  %eprn = alloca %struct.s_eprn_Device*, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %cyan to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !28
  store i16 %2, i16* %cyan, align 2, !tbaa !28
  %3 = bitcast i16* %magenta to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !28
  store i16 %5, i16* %magenta, align 2, !tbaa !28
  %6 = bitcast i16* %yellow to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !28
  store i16 %8, i16* %yellow, align 2, !tbaa !28
  %9 = bitcast i16* %black to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  %10 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 3
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !28
  store i16 %11, i16* %black, align 2, !tbaa !28
  %12 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 0, i64* %value, align 8, !tbaa !29
  %13 = bitcast i16* %step to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  %14 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gx_device_s* %16 to %struct.eprn_Device*
  %eprn4 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %17, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn4, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %18 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %18, i32 0, i32 14
  %19 = load i32, i32* %colour_model, align 4, !tbaa !33
  %cmp = icmp ne i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end.42

if.then:                                          ; preds = %entry
  %20 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %20, i32 0, i32 16
  %21 = load i32, i32* %non_black_levels, align 4, !tbaa !31
  %div = udiv i32 65535, %21
  %conv = trunc i32 %div to i16
  store i16 %conv, i16* %step, align 2, !tbaa !28
  %22 = load i16, i16* %yellow, align 2, !tbaa !28
  %conv5 = zext i16 %22 to i32
  %23 = load i16, i16* %step, align 2, !tbaa !28
  %conv6 = zext i16 %23 to i32
  %div7 = sdiv i32 %conv5, %conv6
  store i32 %div7, i32* %level, align 4, !tbaa !27
  %24 = load i32, i32* %level, align 4, !tbaa !27
  %25 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels8 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %25, i32 0, i32 16
  %26 = load i32, i32* %non_black_levels8, align 4, !tbaa !31
  %cmp9 = icmp uge i32 %24, %26
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %27 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels12 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %27, i32 0, i32 16
  %28 = load i32, i32* %non_black_levels12, align 4, !tbaa !31
  %sub = sub i32 %28, 1
  store i32 %sub, i32* %level, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %29 = load i32, i32* %level, align 4, !tbaa !27
  %30 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %bits_per_colorant = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %30, i32 0, i32 23
  %31 = load i32, i32* %bits_per_colorant, align 4, !tbaa !32
  %shl = shl i32 %29, %31
  %conv13 = zext i32 %shl to i64
  store i64 %conv13, i64* %value, align 8, !tbaa !29
  %32 = load i16, i16* %magenta, align 2, !tbaa !28
  %conv14 = zext i16 %32 to i32
  %33 = load i16, i16* %step, align 2, !tbaa !28
  %conv15 = zext i16 %33 to i32
  %div16 = sdiv i32 %conv14, %conv15
  store i32 %div16, i32* %level, align 4, !tbaa !27
  %34 = load i32, i32* %level, align 4, !tbaa !27
  %35 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels17 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %35, i32 0, i32 16
  %36 = load i32, i32* %non_black_levels17, align 4, !tbaa !31
  %cmp18 = icmp uge i32 %34, %36
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end
  %37 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels21 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %37, i32 0, i32 16
  %38 = load i32, i32* %non_black_levels21, align 4, !tbaa !31
  %sub22 = sub i32 %38, 1
  store i32 %sub22, i32* %level, align 4, !tbaa !27
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end
  %39 = load i64, i64* %value, align 8, !tbaa !29
  %40 = load i32, i32* %level, align 4, !tbaa !27
  %conv24 = zext i32 %40 to i64
  %or = or i64 %39, %conv24
  %41 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %bits_per_colorant25 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %41, i32 0, i32 23
  %42 = load i32, i32* %bits_per_colorant25, align 4, !tbaa !32
  %sh_prom = zext i32 %42 to i64
  %shl26 = shl i64 %or, %sh_prom
  store i64 %shl26, i64* %value, align 8, !tbaa !29
  %43 = load i16, i16* %cyan, align 2, !tbaa !28
  %conv27 = zext i16 %43 to i32
  %44 = load i16, i16* %step, align 2, !tbaa !28
  %conv28 = zext i16 %44 to i32
  %div29 = sdiv i32 %conv27, %conv28
  store i32 %div29, i32* %level, align 4, !tbaa !27
  %45 = load i32, i32* %level, align 4, !tbaa !27
  %46 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels30 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %46, i32 0, i32 16
  %47 = load i32, i32* %non_black_levels30, align 4, !tbaa !31
  %cmp31 = icmp uge i32 %45, %47
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.23
  %48 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %non_black_levels34 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %48, i32 0, i32 16
  %49 = load i32, i32* %non_black_levels34, align 4, !tbaa !31
  %sub35 = sub i32 %49, 1
  store i32 %sub35, i32* %level, align 4, !tbaa !27
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.23
  %50 = load i64, i64* %value, align 8, !tbaa !29
  %51 = load i32, i32* %level, align 4, !tbaa !27
  %conv37 = zext i32 %51 to i64
  %or38 = or i64 %50, %conv37
  %52 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %bits_per_colorant39 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %52, i32 0, i32 23
  %53 = load i32, i32* %bits_per_colorant39, align 4, !tbaa !32
  %sh_prom40 = zext i32 %53 to i64
  %shl41 = shl i64 %or38, %sh_prom40
  store i64 %shl41, i64* %value, align 8, !tbaa !29
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.36, %entry
  %54 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %colour_model43 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %54, i32 0, i32 14
  %55 = load i32, i32* %colour_model43, align 4, !tbaa !33
  %cmp44 = icmp ne i32 %55, 2
  br i1 %cmp44, label %if.then.46, label %if.end.61

if.then.46:                                       ; preds = %if.end.42
  %56 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %56, i32 0, i32 15
  %57 = load i32, i32* %black_levels, align 4, !tbaa !34
  %div47 = udiv i32 65535, %57
  %conv48 = trunc i32 %div47 to i16
  store i16 %conv48, i16* %step, align 2, !tbaa !28
  %58 = load i16, i16* %black, align 2, !tbaa !28
  %conv49 = zext i16 %58 to i32
  %59 = load i16, i16* %step, align 2, !tbaa !28
  %conv50 = zext i16 %59 to i32
  %div51 = sdiv i32 %conv49, %conv50
  store i32 %div51, i32* %level, align 4, !tbaa !27
  %60 = load i32, i32* %level, align 4, !tbaa !27
  %61 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %black_levels52 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %61, i32 0, i32 15
  %62 = load i32, i32* %black_levels52, align 4, !tbaa !34
  %cmp53 = icmp uge i32 %60, %62
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.then.46
  %63 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %black_levels56 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %63, i32 0, i32 15
  %64 = load i32, i32* %black_levels56, align 4, !tbaa !34
  %sub57 = sub i32 %64, 1
  store i32 %sub57, i32* %level, align 4, !tbaa !27
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.then.46
  %65 = load i32, i32* %level, align 4, !tbaa !27
  %conv59 = zext i32 %65 to i64
  %66 = load i64, i64* %value, align 8, !tbaa !29
  %or60 = or i64 %66, %conv59
  store i64 %or60, i64* %value, align 8, !tbaa !29
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.58, %if.end.42
  %67 = load i64, i64* %value, align 8, !tbaa !29
  %68 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i16* %step to i8*
  call void @llvm.lifetime.end(i64 2, i8* %70) #1
  %71 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i16* %black to i8*
  call void @llvm.lifetime.end(i64 2, i8* %72) #1
  %73 = bitcast i16* %yellow to i8*
  call void @llvm.lifetime.end(i64 2, i8* %73) #1
  %74 = bitcast i16* %magenta to i8*
  call void @llvm.lifetime.end(i64 2, i8* %74) #1
  %75 = bitcast i16* %cyan to i8*
  call void @llvm.lifetime.end(i64 2, i8* %75) #1
  ret i64 %67
}

; Function Attrs: nounwind uwtable
define i64 @eprn_map_rgb_color_for_RGB_max(%struct.gx_device_s* %device, i16* %cv) #0 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %red = alloca i16, align 2
  %green = alloca i16, align 2
  %blue = alloca i16, align 2
  %value = alloca i64, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %red to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !28
  store i16 %2, i16* %red, align 2, !tbaa !28
  %3 = bitcast i16* %green to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !28
  store i16 %5, i16* %green, align 2, !tbaa !28
  %6 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !28
  store i16 %8, i16* %blue, align 2, !tbaa !28
  %9 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i16, i16* %red, align 2, !tbaa !28
  %conv = zext i16 %10 to i32
  %shr = ashr i32 %conv, 8
  %shl = shl i32 %shr, 8
  %conv3 = zext i32 %shl to i64
  store i64 %conv3, i64* %value, align 8, !tbaa !29
  %11 = load i16, i16* %green, align 2, !tbaa !28
  %conv4 = zext i16 %11 to i32
  %shr5 = ashr i32 %conv4, 8
  %shl6 = shl i32 %shr5, 16
  %conv7 = zext i32 %shl6 to i64
  %12 = load i64, i64* %value, align 8, !tbaa !29
  %or = or i64 %12, %conv7
  store i64 %or, i64* %value, align 8, !tbaa !29
  %13 = load i16, i16* %blue, align 2, !tbaa !28
  %conv8 = zext i16 %13 to i32
  %shr9 = ashr i32 %conv8, 8
  %shl10 = shl i32 %shr9, 24
  %conv11 = zext i32 %shl10 to i64
  %14 = load i64, i64* %value, align 8, !tbaa !29
  %or12 = or i64 %14, %conv11
  store i64 %or12, i64* %value, align 8, !tbaa !29
  %15 = load i64, i64* %value, align 8, !tbaa !29
  %16 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %17) #1
  %18 = bitcast i16* %green to i8*
  call void @llvm.lifetime.end(i64 2, i8* %18) #1
  %19 = bitcast i16* %red to i8*
  call void @llvm.lifetime.end(i64 2, i8* %19) #1
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @eprn_map_rgb_color_for_CMY_or_K_max(%struct.gx_device_s* %device, i16* %cv) #0 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %red = alloca i16, align 2
  %green = alloca i16, align 2
  %blue = alloca i16, align 2
  %dev = alloca %struct.eprn_Device*, align 8
  %tmpcv = alloca [4 x i16], align 2
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %red to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !28
  store i16 %2, i16* %red, align 2, !tbaa !28
  %3 = bitcast i16* %green to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !28
  store i16 %5, i16* %green, align 2, !tbaa !28
  %6 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !28
  store i16 %8, i16* %blue, align 2, !tbaa !28
  %9 = bitcast %struct.eprn_Device** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_s* %10 to %struct.eprn_Device*
  store %struct.eprn_Device* %11, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %12 = bitcast [4 x i16]* %tmpcv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.eprn_Device*, %struct.eprn_Device** %dev, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %13, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 14
  %14 = load i32, i32* %colour_model, align 4, !tbaa !30
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx3 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 0
  store i16 0, i16* %arrayidx3, align 2, !tbaa !28
  %arrayidx4 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 1
  store i16 0, i16* %arrayidx4, align 2, !tbaa !28
  %arrayidx5 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 2
  store i16 0, i16* %arrayidx5, align 2, !tbaa !28
  %15 = load i16, i16* %red, align 2, !tbaa !28
  %conv = zext i16 %15 to i32
  %sub = sub nsw i32 65535, %conv
  %conv6 = trunc i32 %sub to i16
  %arrayidx7 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 3
  store i16 %conv6, i16* %arrayidx7, align 2, !tbaa !28
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i32 0
  %call = call i64 @eprn_map_cmyk_color_max(%struct.gx_device_s* %16, i16* %arraydecay) #3
  store i64 %call, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load i16, i16* %red, align 2, !tbaa !28
  %conv8 = zext i16 %17 to i32
  %sub9 = sub nsw i32 65535, %conv8
  %conv10 = trunc i32 %sub9 to i16
  %arrayidx11 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 0
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !28
  %18 = load i16, i16* %green, align 2, !tbaa !28
  %conv12 = zext i16 %18 to i32
  %sub13 = sub nsw i32 65535, %conv12
  %conv14 = trunc i32 %sub13 to i16
  %arrayidx15 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 1
  store i16 %conv14, i16* %arrayidx15, align 2, !tbaa !28
  %19 = load i16, i16* %blue, align 2, !tbaa !28
  %conv16 = zext i16 %19 to i32
  %sub17 = sub nsw i32 65535, %conv16
  %conv18 = trunc i32 %sub17 to i16
  %arrayidx19 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 2
  store i16 %conv18, i16* %arrayidx19, align 2, !tbaa !28
  %arrayidx20 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i64 3
  store i16 0, i16* %arrayidx20, align 2, !tbaa !28
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %arraydecay21 = getelementptr inbounds [4 x i16], [4 x i16]* %tmpcv, i32 0, i32 0
  %call22 = call i64 @eprn_map_cmyk_color_max(%struct.gx_device_s* %20, i16* %arraydecay21) #3
  store i64 %call22, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast [4 x i16]* %tmpcv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.eprn_Device** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %23) #1
  %24 = bitcast i16* %green to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #1
  %25 = bitcast i16* %red to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #1
  %26 = load i64, i64* %retval
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define i64 @eprn_map_cmyk_color_max(%struct.gx_device_s* %device, i16* %cv) #0 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %cyan = alloca i16, align 2
  %magenta = alloca i16, align 2
  %yellow = alloca i16, align 2
  %black = alloca i16, align 2
  %value = alloca i64, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %cyan to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !28
  store i16 %2, i16* %cyan, align 2, !tbaa !28
  %3 = bitcast i16* %magenta to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !28
  store i16 %5, i16* %magenta, align 2, !tbaa !28
  %6 = bitcast i16* %yellow to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !28
  store i16 %8, i16* %yellow, align 2, !tbaa !28
  %9 = bitcast i16* %black to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  %10 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 3
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !28
  store i16 %11, i16* %black, align 2, !tbaa !28
  %12 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i16, i16* %black, align 2, !tbaa !28
  %conv = zext i16 %13 to i32
  %shr = ashr i32 %conv, 8
  %conv4 = zext i32 %shr to i64
  store i64 %conv4, i64* %value, align 8, !tbaa !29
  %14 = load i16, i16* %cyan, align 2, !tbaa !28
  %conv5 = zext i16 %14 to i32
  %shr6 = ashr i32 %conv5, 8
  %shl = shl i32 %shr6, 8
  %conv7 = zext i32 %shl to i64
  %15 = load i64, i64* %value, align 8, !tbaa !29
  %or = or i64 %15, %conv7
  store i64 %or, i64* %value, align 8, !tbaa !29
  %16 = load i16, i16* %magenta, align 2, !tbaa !28
  %conv8 = zext i16 %16 to i32
  %shr9 = ashr i32 %conv8, 8
  %shl10 = shl i32 %shr9, 16
  %conv11 = zext i32 %shl10 to i64
  %17 = load i64, i64* %value, align 8, !tbaa !29
  %or12 = or i64 %17, %conv11
  store i64 %or12, i64* %value, align 8, !tbaa !29
  %18 = load i16, i16* %yellow, align 2, !tbaa !28
  %conv13 = zext i16 %18 to i32
  %shr14 = ashr i32 %conv13, 8
  %shl15 = shl i32 %shr14, 24
  %conv16 = zext i32 %shl15 to i64
  %19 = load i64, i64* %value, align 8, !tbaa !29
  %or17 = or i64 %19, %conv16
  store i64 %or17, i64* %value, align 8, !tbaa !29
  %20 = load i64, i64* %value, align 8, !tbaa !29
  %21 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i16* %black to i8*
  call void @llvm.lifetime.end(i64 2, i8* %22) #1
  %23 = bitcast i16* %yellow to i8*
  call void @llvm.lifetime.end(i64 2, i8* %23) #1
  %24 = bitcast i16* %magenta to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #1
  %25 = bitcast i16* %cyan to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #1
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define i32 @eprn_map_color_rgb(%struct.gx_device_s* %device, i64 %color, i16* %rgb) #0 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !29
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_s* %0 to %struct.eprn_Device*
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %1, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 14
  %2 = load i32, i32* %colour_model, align 4, !tbaa !30
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 -1, i16* %arrayidx, align 2, !tbaa !28
  %4 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 -1, i16* %arrayidx1, align 2, !tbaa !28
  %5 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 -1, i16* %arrayidx2, align 2, !tbaa !28
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %6, i64 2
  store i16 0, i16* %arrayidx3, align 2, !tbaa !28
  %7 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %7, i64 1
  store i16 0, i16* %arrayidx4, align 2, !tbaa !28
  %8 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %8, i64 0
  store i16 0, i16* %arrayidx5, align 2, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i64 @eprn_map_cmyk_color(%struct.gx_device_s* %device, i16* %cv) #0 {
entry:
  %device.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %cyan = alloca i16, align 2
  %magenta = alloca i16, align 2
  %yellow = alloca i16, align 2
  %black = alloca i16, align 2
  %value = alloca i64, align 8
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %cyan to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !28
  store i16 %2, i16* %cyan, align 2, !tbaa !28
  %3 = bitcast i16* %magenta to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  %5 = load i16, i16* %arrayidx1, align 2, !tbaa !28
  store i16 %5, i16* %magenta, align 2, !tbaa !28
  %6 = bitcast i16* %yellow to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !28
  store i16 %8, i16* %yellow, align 2, !tbaa !28
  %9 = bitcast i16* %black to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  %10 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 3
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !28
  store i16 %11, i16* %black, align 2, !tbaa !28
  %12 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 0, i64* %value, align 8, !tbaa !29
  %13 = load i16, i16* %cyan, align 2, !tbaa !28
  %conv = zext i16 %13 to i32
  %cmp = icmp sgt i32 %conv, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i64, i64* %value, align 8, !tbaa !29
  %or = or i64 %14, 2
  store i64 %or, i64* %value, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i16, i16* %magenta, align 2, !tbaa !28
  %conv5 = zext i16 %15 to i32
  %cmp6 = icmp sgt i32 %conv5, 32767
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %16 = load i64, i64* %value, align 8, !tbaa !29
  %or9 = or i64 %16, 4
  store i64 %or9, i64* %value, align 8, !tbaa !29
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %17 = load i16, i16* %yellow, align 2, !tbaa !28
  %conv11 = zext i16 %17 to i32
  %cmp12 = icmp sgt i32 %conv11, 32767
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %18 = load i64, i64* %value, align 8, !tbaa !29
  %or15 = or i64 %18, 8
  store i64 %or15, i64* %value, align 8, !tbaa !29
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  %19 = load i16, i16* %black, align 2, !tbaa !28
  %conv17 = zext i16 %19 to i32
  %cmp18 = icmp sgt i32 %conv17, 32767
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.16
  %20 = load i64, i64* %value, align 8, !tbaa !29
  %or21 = or i64 %20, 1
  store i64 %or21, i64* %value, align 8, !tbaa !29
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.16
  %21 = load i64, i64* %value, align 8, !tbaa !29
  %22 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i16* %black to i8*
  call void @llvm.lifetime.end(i64 2, i8* %23) #1
  %24 = bitcast i16* %yellow to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #1
  %25 = bitcast i16* %magenta to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #1
  %26 = bitcast i16* %cyan to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #1
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define i64 @eprn_map_cmyk_color_glob(%struct.gx_device_s* %device, i16* %cv) #0 {
entry:
  %retval = alloca i64, align 8
  %device.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %eprn = alloca %struct.s_eprn_Device*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %device, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.eprn_Device*
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %2, i32 0, i32 68
  store %struct.s_eprn_Device* %eprn1, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %3 = load %struct.s_eprn_Device*, %struct.s_eprn_Device** %eprn, align 8, !tbaa !1
  %intensity_rendering = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %3, i32 0, i32 17
  %4 = load i32, i32* %intensity_rendering, align 4, !tbaa !35
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %6 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call = call i64 @eprn_map_cmyk_color_max(%struct.gx_device_s* %5, i16* %6) #3
  store i64 %call, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %8 = load i32, i32* %max_gray, align 4, !tbaa !36
  %cmp2 = icmp ugt i32 %8, 1
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 6
  %10 = load i32, i32* %max_color, align 4, !tbaa !38
  %cmp4 = icmp ugt i32 %10, 1
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %lor.lhs.false, %if.else
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %12 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call6 = call i64 @eprn_map_cmyk_color_flex(%struct.gx_device_s* %11, i16* %12) #3
  store i64 %call6, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.7:                                        ; preds = %lor.lhs.false
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %device.addr, align 8, !tbaa !1
  %14 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call8 = call i64 @eprn_map_cmyk_color(%struct.gx_device_s* %13, i16* %14) #3
  store i64 %call8, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.7, %if.then.5, %if.then
  %15 = bitcast %struct.s_eprn_Device** %eprn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i64, i64* %retval
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define void @eprn_finalize(i32 %is_RGB, i32 %non_black_levels, i32 %planes, %struct.eprn_OctetString* %plane, i8** %ptr, i32 %pixels) #0 {
entry:
  %is_RGB.addr = alloca i32, align 4
  %non_black_levels.addr = alloca i32, align 4
  %planes.addr = alloca i32, align 4
  %plane.addr = alloca %struct.eprn_OctetString*, align 8
  %ptr.addr = alloca i8**, align 8
  %pixels.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %shift = alloca i32, align 4
  %imax = alloca i8, align 1
  %c = alloca i32, align 4
  %rgb_planes = alloca i32, align 4
  %value = alloca i8, align 1
  %m = alloca i32, align 4
  %bit = alloca i8, align 1
  %p = alloca i32, align 4
  store i32 %is_RGB, i32* %is_RGB.addr, align 4, !tbaa !27
  store i32 %non_black_levels, i32* %non_black_levels.addr, align 4, !tbaa !27
  store i32 %planes, i32* %planes.addr, align 4, !tbaa !27
  store %struct.eprn_OctetString* %plane, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !1
  store i32 %pixels, i32* %pixels.addr, align 4, !tbaa !27
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %pixels.addr, align 4, !tbaa !27
  %rem = srem i32 %1, 8
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end.53

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %pixels.addr, align 4, !tbaa !27
  %rem1 = srem i32 %3, 8
  %sub = sub nsw i32 8, %rem1
  store i32 %sub, i32* %shift, align 4, !tbaa !27
  %4 = load i32, i32* %is_RGB.addr, align 4, !tbaa !27
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  call void @llvm.lifetime.start(i64 1, i8* %imax) #1
  %5 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !27
  %sub3 = sub i32 %5, 1
  %conv = trunc i32 %sub3 to i8
  store i8 %conv, i8* %imax, align 1, !tbaa !39
  %6 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %rgb_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %non_black_levels.addr, align 4, !tbaa !27
  %call = call i32 @eprn_bits_for_levels(i32 %8) #3
  store i32 %call, i32* %rgb_planes, align 4, !tbaa !27
  store i32 0, i32* %j, align 4, !tbaa !27
  store i32 0, i32* %c, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.then.2
  %9 = load i32, i32* %c, align 4, !tbaa !27
  %cmp4 = icmp slt i32 %9, 3
  br i1 %cmp4, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %value) #1
  %10 = load i8, i8* %imax, align 1, !tbaa !39
  store i8 %10, i8* %value, align 1, !tbaa !39
  %11 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %m, align 4, !tbaa !27
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.23, %for.body
  %12 = load i32, i32* %m, align 4, !tbaa !27
  %13 = load i32, i32* %rgb_planes, align 4, !tbaa !27
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body.9, label %for.end.26

for.body.9:                                       ; preds = %for.cond.6
  call void @llvm.lifetime.start(i64 1, i8* %bit) #1
  %14 = load i8, i8* %value, align 1, !tbaa !39
  %conv10 = zext i8 %14 to i32
  %and = and i32 %conv10, 1
  %conv11 = trunc i32 %and to i8
  store i8 %conv11, i8* %bit, align 1, !tbaa !39
  %15 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i8, i8* %value, align 1, !tbaa !39
  %conv12 = zext i8 %16 to i32
  %shr = ashr i32 %conv12, 1
  %conv13 = trunc i32 %shr to i8
  store i8 %conv13, i8* %value, align 1, !tbaa !39
  store i32 0, i32* %p, align 4, !tbaa !27
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.9
  %17 = load i32, i32* %p, align 4, !tbaa !27
  %18 = load i32, i32* %shift, align 4, !tbaa !27
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %19 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom = sext i32 %19 to i64
  %20 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 %idxprom
  %21 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !39
  %conv18 = zext i8 %22 to i32
  %shl = shl i32 %conv18, 1
  %23 = load i8, i8* %bit, align 1, !tbaa !39
  %conv19 = zext i8 %23 to i32
  %or = or i32 %shl, %conv19
  %conv20 = trunc i32 %or to i8
  %24 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom21 = sext i32 %24 to i64
  %25 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8*, i8** %25, i64 %idxprom21
  %26 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  store i8 %conv20, i8* %26, align 1, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %27 = load i32, i32* %p, align 4, !tbaa !27
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %p, align 4, !tbaa !27
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %28 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  call void @llvm.lifetime.end(i64 1, i8* %bit) #1
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %29 = load i32, i32* %m, align 4, !tbaa !27
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %m, align 4, !tbaa !27
  %30 = load i32, i32* %j, align 4, !tbaa !27
  %inc25 = add nsw i32 %30, 1
  store i32 %inc25, i32* %j, align 4, !tbaa !27
  br label %for.cond.6

for.end.26:                                       ; preds = %for.cond.6
  %31 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  call void @llvm.lifetime.end(i64 1, i8* %value) #1
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end.26
  %32 = load i32, i32* %c, align 4, !tbaa !27
  %inc28 = add nsw i32 %32, 1
  store i32 %inc28, i32* %c, align 4, !tbaa !27
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %33 = bitcast i32* %rgb_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  call void @llvm.lifetime.end(i64 1, i8* %imax) #1
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.41, %if.else
  %35 = load i32, i32* %j, align 4, !tbaa !27
  %36 = load i32, i32* %planes.addr, align 4, !tbaa !27
  %cmp31 = icmp slt i32 %35, %36
  br i1 %cmp31, label %for.body.33, label %for.end.43

for.body.33:                                      ; preds = %for.cond.30
  %37 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom34 = sext i32 %37 to i64
  %38 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8*, i8** %38, i64 %idxprom34
  %39 = load i8*, i8** %arrayidx35, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !39
  %conv36 = zext i8 %40 to i32
  %41 = load i32, i32* %shift, align 4, !tbaa !27
  %shl37 = shl i32 %conv36, %41
  %conv38 = trunc i32 %shl37 to i8
  %42 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom39 = sext i32 %42 to i64
  %43 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8*, i8** %43, i64 %idxprom39
  %44 = load i8*, i8** %arrayidx40, align 8, !tbaa !1
  store i8 %conv38, i8* %44, align 1, !tbaa !39
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.33
  %45 = load i32, i32* %j, align 4, !tbaa !27
  %inc42 = add nsw i32 %45, 1
  store i32 %inc42, i32* %j, align 4, !tbaa !27
  br label %for.cond.30

for.end.43:                                       ; preds = %for.cond.30
  br label %if.end

if.end:                                           ; preds = %for.end.43, %for.end.29
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.50, %if.end
  %46 = load i32, i32* %j, align 4, !tbaa !27
  %47 = load i32, i32* %planes.addr, align 4, !tbaa !27
  %cmp45 = icmp slt i32 %46, %47
  br i1 %cmp45, label %for.body.47, label %for.end.52

for.body.47:                                      ; preds = %for.cond.44
  %48 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom48 = sext i32 %48 to i64
  %49 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8*, i8** %49, i64 %idxprom48
  %50 = load i8*, i8** %arrayidx49, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %arrayidx49, align 8, !tbaa !1
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.47
  %51 = load i32, i32* %j, align 4, !tbaa !27
  %inc51 = add nsw i32 %51, 1
  store i32 %inc51, i32* %j, align 4, !tbaa !27
  br label %for.cond.44

for.end.52:                                       ; preds = %for.cond.44
  %52 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %entry
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.73, %if.end.53
  %53 = load i32, i32* %j, align 4, !tbaa !27
  %54 = load i32, i32* %planes.addr, align 4, !tbaa !27
  %cmp55 = icmp slt i32 %53, %54
  br i1 %cmp55, label %for.body.57, label %for.end.75

for.body.57:                                      ; preds = %for.cond.54
  %55 = load i32, i32* %pixels.addr, align 4, !tbaa !27
  %cmp58 = icmp eq i32 %55, 0
  br i1 %cmp58, label %if.then.60, label %if.else.63

if.then.60:                                       ; preds = %for.body.57
  %56 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom61 = sext i32 %56 to i64
  %57 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %57, i64 %idxprom61
  %length = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx62, i32 0, i32 1
  store i32 0, i32* %length, align 4, !tbaa !40
  br label %if.end.72

if.else.63:                                       ; preds = %for.body.57
  %58 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom64 = sext i32 %58 to i64
  %59 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8*, i8** %59, i64 %idxprom64
  %60 = load i8*, i8** %arrayidx65, align 8, !tbaa !1
  %61 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom66 = sext i32 %61 to i64
  %62 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %62, i64 %idxprom66
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx67, i32 0, i32 0
  %63 = load i8*, i8** %str, align 8, !tbaa !41
  %sub.ptr.lhs.cast = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %63 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv68 = trunc i64 %sub.ptr.sub to i32
  %64 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom69 = sext i32 %64 to i64
  %65 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %65, i64 %idxprom69
  %length71 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx70, i32 0, i32 1
  store i32 %conv68, i32* %length71, align 4, !tbaa !40
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.63, %if.then.60
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %66 = load i32, i32* %j, align 4, !tbaa !27
  %inc74 = add nsw i32 %66, 1
  store i32 %inc74, i32* %j, align 4, !tbaa !27
  br label %for.cond.54

for.end.75:                                       ; preds = %for.cond.54
  %67 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  ret void
}

declare i32 @eprn_bits_for_levels(i32) #2

; Function Attrs: nounwind uwtable
define i32 @eprn_fetch_scan_line(%struct.eprn_Device* %dev, %struct.eprn_OctetString* %line) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %line.addr = alloca %struct.eprn_OctetString*, align 8
  %rc = alloca i32, align 4
  %str = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %rem = alloca i32, align 4
  %octets_per_pixel = alloca i32, align 4
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  store %struct.eprn_OctetString* %line, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.eprn_Device* %2 to %struct.gx_device_printer_s*
  %4 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %4, i32 0, i32 68
  %next_y = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 28
  %5 = load i32, i32* %next_y, align 4, !tbaa !42
  %6 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %str1 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %6, i32 0, i32 0
  %7 = load i8*, i8** %str1, align 8, !tbaa !41
  %8 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn2 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %8, i32 0, i32 68
  %octets_per_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn2, i32 0, i32 26
  %9 = load i32, i32* %octets_per_line, align 4, !tbaa !25
  %call = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %3, i32 %5, i8* %7, i32 %9) #3
  store i32 %call, i32* %rc, align 4, !tbaa !27
  %10 = load i32, i32* %rc, align 4, !tbaa !27
  %cmp = icmp ne i32 %10, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %str3 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8, !tbaa !41
  %13 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn4 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %13, i32 0, i32 68
  %octets_per_line5 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn4, i32 0, i32 26
  %14 = load i32, i32* %octets_per_line5, align 4, !tbaa !25
  %sub = sub i32 %14, 1
  %idx.ext = zext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %str, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load i8*, i8** %str, align 8, !tbaa !1
  %16 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %str6 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %16, i32 0, i32 0
  %17 = load i8*, i8** %str6, align 8, !tbaa !41
  %cmp7 = icmp ugt i8* %15, %17
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i8*, i8** %str, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !39
  %conv = zext i8 %19 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load i8*, i8** %str, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %incdec.ptr, i8** %str, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load i8*, i8** %str, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !39
  %conv10 = zext i8 %23 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %while.end
  %24 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %24, i32 0, i32 1
  store i32 0, i32* %length, align 4, !tbaa !40
  br label %if.end.17

if.else:                                          ; preds = %while.end
  %25 = load i8*, i8** %str, align 8, !tbaa !1
  %26 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %str14 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %26, i32 0, i32 0
  %27 = load i8*, i8** %str14, align 8, !tbaa !41
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv15 = trunc i64 %add to i32
  %28 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length16 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %28, i32 0, i32 1
  store i32 %conv15, i32* %length16, align 4, !tbaa !40
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.13
  %29 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %29, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %30 = load i16, i16* %depth, align 2, !tbaa !26
  %conv18 = zext i16 %30 to i32
  %cmp19 = icmp sgt i32 %conv18, 8
  br i1 %cmp19, label %if.then.21, label %if.end.34

if.then.21:                                       ; preds = %if.end.17
  %31 = bitcast i32* %rem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %octets_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info22 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %33, i32 0, i32 11
  %depth23 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info22, i32 0, i32 3
  %34 = load i16, i16* %depth23, align 2, !tbaa !26
  %conv24 = zext i16 %34 to i32
  %div = sdiv i32 %conv24, 8
  store i32 %div, i32* %octets_per_pixel, align 4, !tbaa !27
  %35 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length25 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %35, i32 0, i32 1
  %36 = load i32, i32* %length25, align 4, !tbaa !40
  %37 = load i32, i32* %octets_per_pixel, align 4, !tbaa !27
  %rem26 = urem i32 %36, %37
  store i32 %rem26, i32* %rem, align 4, !tbaa !27
  %38 = load i32, i32* %rem, align 4, !tbaa !27
  %cmp27 = icmp ne i32 %38, 0
  br i1 %cmp27, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.then.21
  %39 = load i32, i32* %octets_per_pixel, align 4, !tbaa !27
  %40 = load i32, i32* %rem, align 4, !tbaa !27
  %sub30 = sub i32 %39, %40
  %41 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line.addr, align 8, !tbaa !1
  %length31 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %41, i32 0, i32 1
  %42 = load i32, i32* %length31, align 4, !tbaa !40
  %add32 = add i32 %42, %sub30
  store i32 %add32, i32* %length31, align 4, !tbaa !40
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %if.then.21
  %43 = bitcast i32* %octets_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %rem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then
  %45 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @eprn_get_planes(%struct.eprn_Device* %dev, %struct.eprn_OctetString* %bitplanes) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %bitplanes.addr = alloca %struct.eprn_OctetString*, align 8
  %line = alloca %struct.eprn_OctetString*, align 8
  %j = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tmp = alloca %struct.eprn_OctetString, align 8
  %str126 = alloca i8*, align 8
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  store %struct.eprn_OctetString* %bitplanes, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %0 = bitcast %struct.eprn_OctetString** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %3, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %4 = load i16, i16* %depth, align 2, !tbaa !26
  %conv = zext i16 %4 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  store %struct.eprn_OctetString* %5, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %6, i32 0, i32 68
  %scan_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 24
  store %struct.eprn_OctetString* %scan_line, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn2 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %7, i32 0, i32 68
  %intensity_rendering = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn2, i32 0, i32 17
  %8 = load i32, i32* %intensity_rendering, align 4, !tbaa !43
  %cmp3 = icmp eq i32 %8, 2
  br i1 %cmp3, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn5 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %9, i32 0, i32 68
  %next_y = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn5, i32 0, i32 28
  %10 = load i32, i32* %next_y, align 4, !tbaa !42
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %land.lhs.true, %if.end
  %11 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %12 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %call = call i32 @eprn_fetch_scan_line(%struct.eprn_Device* %11, %struct.eprn_OctetString* %12) #3
  store i32 %call, i32* %rc, align 4, !tbaa !27
  %13 = load i32, i32* %rc, align 4, !tbaa !27
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.end.9
  %14 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn13 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %14, i32 0, i32 68
  %next_y14 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn13, i32 0, i32 28
  %15 = load i32, i32* %next_y14, align 4, !tbaa !42
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %next_y14, align 4, !tbaa !42
  br label %if.end.24

if.else.15:                                       ; preds = %if.end.9
  %16 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn16 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %16, i32 0, i32 68
  %intensity_rendering17 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn16, i32 0, i32 17
  %17 = load i32, i32* %intensity_rendering17, align 4, !tbaa !43
  %cmp18 = icmp ne i32 %17, 2
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else.15
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.else.15
  %18 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn22 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %18, i32 0, i32 68
  %next_y23 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn22, i32 0, i32 28
  store i32 0, i32* %next_y23, align 4, !tbaa !42
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.21, %if.then.12
  %19 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info25 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %19, i32 0, i32 11
  %depth26 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info25, i32 0, i32 3
  %20 = load i16, i16* %depth26, align 2, !tbaa !26
  %conv27 = zext i16 %20 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.24
  %21 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn32 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %21, i32 0, i32 68
  %intensity_rendering33 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn32, i32 0, i32 17
  %22 = load i32, i32* %intensity_rendering33, align 4, !tbaa !43
  %cmp34 = icmp eq i32 %22, 2
  br i1 %cmp34, label %if.then.36, label %if.else.52

if.then.36:                                       ; preds = %if.end.31
  %23 = bitcast %struct.eprn_OctetString* %tmp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %23) #1
  %24 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn37 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %24, i32 0, i32 68
  %next_scan_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn37, i32 0, i32 25
  %25 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn38 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %25, i32 0, i32 68
  %scan_line39 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn38, i32 0, i32 24
  %26 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn40 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %26, i32 0, i32 68
  %octets_per_line = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn40, i32 0, i32 26
  %27 = load i32, i32* %octets_per_line, align 4, !tbaa !25
  %28 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn41 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %28, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn41, i32 0, i32 14
  %29 = load i32, i32* %colour_model, align 4, !tbaa !30
  %30 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn42 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %30, i32 0, i32 68
  %black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn42, i32 0, i32 15
  %31 = load i32, i32* %black_levels, align 4, !tbaa !44
  %32 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn43 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %32, i32 0, i32 68
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn43, i32 0, i32 16
  %33 = load i32, i32* %non_black_levels, align 4, !tbaa !45
  %34 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @eprn_split_FS(%struct.eprn_OctetString* %next_scan_line, %struct.eprn_OctetString* %scan_line39, i32 %27, i32 %29, i32 %31, i32 %33, %struct.eprn_OctetString* %34) #3
  %35 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn44 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %35, i32 0, i32 68
  %next_scan_line45 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn44, i32 0, i32 25
  %36 = bitcast %struct.eprn_OctetString* %tmp to i8*
  %37 = bitcast %struct.eprn_OctetString* %next_scan_line45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false), !tbaa.struct !46
  %38 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn46 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %38, i32 0, i32 68
  %next_scan_line47 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn46, i32 0, i32 25
  %39 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn48 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %39, i32 0, i32 68
  %scan_line49 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn48, i32 0, i32 24
  %40 = bitcast %struct.eprn_OctetString* %next_scan_line47 to i8*
  %41 = bitcast %struct.eprn_OctetString* %scan_line49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !tbaa.struct !46
  %42 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn50 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %42, i32 0, i32 68
  %scan_line51 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn50, i32 0, i32 24
  %43 = bitcast %struct.eprn_OctetString* %scan_line51 to i8*
  %44 = bitcast %struct.eprn_OctetString* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false), !tbaa.struct !46
  %45 = bitcast %struct.eprn_OctetString* %tmp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %45) #1
  br label %if.end.115

if.else.52:                                       ; preds = %if.end.31
  %46 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn53 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %46, i32 0, i32 68
  %colour_model54 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn53, i32 0, i32 14
  %47 = load i32, i32* %colour_model54, align 4, !tbaa !30
  %cmp55 = icmp eq i32 %47, 0
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.52
  %48 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %49 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %49, i32 0, i32 0
  %50 = load i8*, i8** %str, align 8, !tbaa !41
  %51 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %51, i32 0, i32 1
  %52 = load i32, i32* %length, align 4, !tbaa !40
  %53 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @split_line_le8(%struct.eprn_Device* %48, i8* %50, i32 %52, %struct.eprn_OctetString* %53) #3
  br label %if.end.114

if.else.58:                                       ; preds = %if.else.52
  %54 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn59 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %54, i32 0, i32 68
  %bits_per_colorant = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn59, i32 0, i32 23
  %55 = load i32, i32* %bits_per_colorant, align 4, !tbaa !47
  %cmp60 = icmp eq i32 %55, 1
  br i1 %cmp60, label %if.then.62, label %if.else.81

if.then.62:                                       ; preds = %if.else.58
  %56 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn63 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %56, i32 0, i32 68
  %colour_model64 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn63, i32 0, i32 14
  %57 = load i32, i32* %colour_model64, align 4, !tbaa !30
  %cmp65 = icmp eq i32 %57, 1
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.78

land.lhs.true.67:                                 ; preds = %if.then.62
  %58 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %length68 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %58, i32 0, i32 1
  %59 = load i32, i32* %length68, align 4, !tbaa !40
  %60 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn69 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %60, i32 0, i32 68
  %octets_per_line70 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn69, i32 0, i32 26
  %61 = load i32, i32* %octets_per_line70, align 4, !tbaa !25
  %cmp71 = icmp eq i32 %59, %61
  br i1 %cmp71, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %land.lhs.true.67
  %62 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %length74 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %62, i32 0, i32 1
  %63 = load i32, i32* %length74, align 4, !tbaa !40
  %sub = sub nsw i32 %63, 1
  %idxprom = sext i32 %sub to i64
  %64 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %str75 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %64, i32 0, i32 0
  %65 = load i8*, i8** %str75, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds i8, i8* %65, i64 %idxprom
  %66 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv76 = zext i8 %66 to i32
  %or = or i32 %conv76, 14
  %conv77 = trunc i32 %or to i8
  store i8 %conv77, i8* %arrayidx, align 1, !tbaa !39
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %land.lhs.true.67, %if.then.62
  %67 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %68 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %str79 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %68, i32 0, i32 0
  %69 = load i8*, i8** %str79, align 8, !tbaa !41
  %70 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %length80 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %70, i32 0, i32 1
  %71 = load i32, i32* %length80, align 4, !tbaa !40
  %72 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @split_line_3or4x1(%struct.eprn_Device* %67, i8* %69, i32 %71, %struct.eprn_OctetString* %72) #3
  br label %if.end.113

if.else.81:                                       ; preds = %if.else.58
  %73 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn82 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %73, i32 0, i32 68
  %bits_per_colorant83 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn82, i32 0, i32 23
  %74 = load i32, i32* %bits_per_colorant83, align 4, !tbaa !47
  %cmp84 = icmp eq i32 %74, 2
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.99

land.lhs.true.86:                                 ; preds = %if.else.81
  %75 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn87 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %75, i32 0, i32 68
  %black_levels88 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn87, i32 0, i32 15
  %76 = load i32, i32* %black_levels88, align 4, !tbaa !44
  %cmp89 = icmp ugt i32 %76, 2
  br i1 %cmp89, label %land.lhs.true.91, label %if.else.99

land.lhs.true.91:                                 ; preds = %land.lhs.true.86
  %77 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn92 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %77, i32 0, i32 68
  %non_black_levels93 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn92, i32 0, i32 16
  %78 = load i32, i32* %non_black_levels93, align 4, !tbaa !45
  %cmp94 = icmp ugt i32 %78, 2
  br i1 %cmp94, label %if.then.96, label %if.else.99

if.then.96:                                       ; preds = %land.lhs.true.91
  %79 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %80 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %str97 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %80, i32 0, i32 0
  %81 = load i8*, i8** %str97, align 8, !tbaa !41
  %82 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %length98 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %82, i32 0, i32 1
  %83 = load i32, i32* %length98, align 4, !tbaa !40
  %84 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @split_line_4x2(%struct.eprn_Device* %79, i8* %81, i32 %83, %struct.eprn_OctetString* %84) #3
  br label %if.end.112

if.else.99:                                       ; preds = %land.lhs.true.91, %land.lhs.true.86, %if.else.81
  %85 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info100 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %85, i32 0, i32 11
  %depth101 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info100, i32 0, i32 3
  %86 = load i16, i16* %depth101, align 2, !tbaa !26
  %conv102 = zext i16 %86 to i32
  %cmp103 = icmp slt i32 %conv102, 8
  br i1 %cmp103, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %if.else.99
  %87 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %88 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %str106 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %88, i32 0, i32 0
  %89 = load i8*, i8** %str106, align 8, !tbaa !41
  %90 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %length107 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %90, i32 0, i32 1
  %91 = load i32, i32* %length107, align 4, !tbaa !40
  %92 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @split_line_le8(%struct.eprn_Device* %87, i8* %89, i32 %91, %struct.eprn_OctetString* %92) #3
  br label %if.end.111

if.else.108:                                      ; preds = %if.else.99
  %93 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %94 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %str109 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %94, i32 0, i32 0
  %95 = load i8*, i8** %str109, align 8, !tbaa !41
  %96 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %line, align 8, !tbaa !1
  %length110 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %96, i32 0, i32 1
  %97 = load i32, i32* %length110, align 4, !tbaa !40
  %98 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  call void @split_line_ge8(%struct.eprn_Device* %93, i8* %95, i32 %97, %struct.eprn_OctetString* %98) #3
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.105
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.96
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.78
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.57
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.36
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.115
  %99 = load i32, i32* %j, align 4, !tbaa !27
  %100 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn116 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %100, i32 0, i32 68
  %output_planes = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn116, i32 0, i32 27
  %101 = load i32, i32* %output_planes, align 4, !tbaa !5
  %cmp117 = icmp ult i32 %99, %101
  br i1 %cmp117, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %102 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom119 = sext i32 %102 to i64
  %103 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %103, i64 %idxprom119
  %length121 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx120, i32 0, i32 1
  %104 = load i32, i32* %length121, align 4, !tbaa !40
  %cmp122 = icmp sgt i32 %104, 0
  br i1 %cmp122, label %if.then.124, label %if.end.158

if.then.124:                                      ; preds = %for.body
  %105 = bitcast i8** %str126 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom127 = sext i32 %106 to i64
  %107 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %107, i64 %idxprom127
  %str129 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx128, i32 0, i32 0
  %108 = load i8*, i8** %str129, align 8, !tbaa !41
  %109 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom130 = sext i32 %109 to i64
  %110 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %110, i64 %idxprom130
  %length132 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx131, i32 0, i32 1
  %111 = load i32, i32* %length132, align 4, !tbaa !40
  %sub133 = sub nsw i32 %111, 1
  %idx.ext = sext i32 %sub133 to i64
  %add.ptr = getelementptr inbounds i8, i8* %108, i64 %idx.ext
  store i8* %add.ptr, i8** %str126, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.124
  %112 = load i8*, i8** %str126, align 8, !tbaa !1
  %113 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom134 = sext i32 %113 to i64
  %114 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %114, i64 %idxprom134
  %str136 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx135, i32 0, i32 0
  %115 = load i8*, i8** %str136, align 8, !tbaa !41
  %cmp137 = icmp ugt i8* %112, %115
  br i1 %cmp137, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %116 = load i8*, i8** %str126, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !39
  %conv139 = zext i8 %117 to i32
  %cmp140 = icmp eq i32 %conv139, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %118 = phi i1 [ false, %while.cond ], [ %cmp140, %land.rhs ]
  br i1 %118, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %119 = load i8*, i8** %str126, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %119, i32 -1
  store i8* %incdec.ptr, i8** %str126, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %120 = load i8*, i8** %str126, align 8, !tbaa !1
  %121 = load i8, i8* %120, align 1, !tbaa !39
  %conv142 = zext i8 %121 to i32
  %cmp143 = icmp eq i32 %conv142, 0
  br i1 %cmp143, label %if.then.145, label %if.else.149

if.then.145:                                      ; preds = %while.end
  %122 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom146 = sext i32 %122 to i64
  %123 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %123, i64 %idxprom146
  %length148 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx147, i32 0, i32 1
  store i32 0, i32* %length148, align 4, !tbaa !40
  br label %if.end.157

if.else.149:                                      ; preds = %while.end
  %124 = load i8*, i8** %str126, align 8, !tbaa !1
  %125 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom150 = sext i32 %125 to i64
  %126 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %126, i64 %idxprom150
  %str152 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx151, i32 0, i32 0
  %127 = load i8*, i8** %str152, align 8, !tbaa !41
  %sub.ptr.lhs.cast = ptrtoint i8* %124 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %127 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv153 = trunc i64 %add to i32
  %128 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom154 = sext i32 %128 to i64
  %129 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %bitplanes.addr, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %129, i64 %idxprom154
  %length156 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx155, i32 0, i32 1
  store i32 %conv153, i32* %length156, align 4, !tbaa !40
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.149, %if.then.145
  %130 = bitcast i8** %str126 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.158
  %131 = load i32, i32* %j, align 4, !tbaa !27
  %inc159 = add nsw i32 %131, 1
  store i32 %inc159, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.30, %if.then.20, %if.then.8
  %132 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast %struct.eprn_OctetString** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = load i32, i32* %retval
  ret i32 %135
}

declare void @eprn_split_FS(%struct.eprn_OctetString*, %struct.eprn_OctetString*, i32, i32, i32, i32, %struct.eprn_OctetString*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @split_line_le8(%struct.eprn_Device* %dev, i8* %line, i32 %length, %struct.eprn_OctetString* %plane) #0 {
entry:
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %line.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %plane.addr = alloca %struct.eprn_OctetString*, align 8
  %pixel = alloca i64, align 8
  %black_planes = alloca i32, align 4
  %non_black_planes = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %pixels = alloca i32, align 4
  %planes = alloca i32, align 4
  %comp_mask = alloca i8, align 1
  %pixel_mask = alloca i8, align 1
  %ptr = alloca [8 x i8*], align 16
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %p = alloca i32, align 4
  %comp = alloca i8, align 1
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !27
  store %struct.eprn_OctetString* %plane, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %0 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %black_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %non_black_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  call void @llvm.lifetime.start(i64 1, i8* %comp_mask) #1
  store i8 0, i8* %comp_mask, align 1, !tbaa !39
  call void @llvm.lifetime.start(i64 1, i8* %pixel_mask) #1
  store i8 0, i8* %pixel_mask, align 1, !tbaa !39
  %7 = bitcast [8 x i8*]* %ptr to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #1
  %8 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %8, i32 0, i32 68
  %black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 15
  %9 = load i32, i32* %black_levels, align 4, !tbaa !44
  %call = call i32 @eprn_bits_for_levels(i32 %9) #3
  store i32 %call, i32* %black_planes, align 4, !tbaa !27
  %10 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %10, i32 0, i32 68
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn1, i32 0, i32 16
  %11 = load i32, i32* %non_black_levels, align 4, !tbaa !45
  %call2 = call i32 @eprn_bits_for_levels(i32 %11) #3
  store i32 %call2, i32* %non_black_planes, align 4, !tbaa !27
  %12 = load i32, i32* %black_planes, align 4, !tbaa !27
  %13 = load i32, i32* %non_black_planes, align 4, !tbaa !27
  %mul = mul nsw i32 3, %13
  %add = add nsw i32 %12, %mul
  store i32 %add, i32* %planes, align 4, !tbaa !27
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %j, align 4, !tbaa !27
  %15 = load i32, i32* %planes, align 4, !tbaa !27
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %17, i64 %idxprom
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx, i32 0, i32 0
  %18 = load i8*, i8** %str, align 8, !tbaa !41
  %19 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom3 = sext i32 %19 to i64
  %arrayidx4 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom3
  store i8* %18, i8** %arrayidx4, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %j, align 4, !tbaa !27
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %for.end
  %21 = load i32, i32* %j, align 4, !tbaa !27
  %22 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %22, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %23 = load i16, i16* %depth, align 2, !tbaa !26
  %conv = zext i16 %23 to i32
  %cmp6 = icmp slt i32 %21, %conv
  br i1 %cmp6, label %for.body.8, label %for.end.13

for.body.8:                                       ; preds = %for.cond.5
  %24 = load i8, i8* %pixel_mask, align 1, !tbaa !39
  %conv9 = zext i8 %24 to i32
  %shl = shl i32 %conv9, 1
  %or = or i32 %shl, 1
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %pixel_mask, align 1, !tbaa !39
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.8
  %25 = load i32, i32* %j, align 4, !tbaa !27
  %inc12 = add nsw i32 %25, 1
  store i32 %inc12, i32* %j, align 4, !tbaa !27
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.23, %for.end.13
  %26 = load i32, i32* %j, align 4, !tbaa !27
  %27 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn15 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %27, i32 0, i32 68
  %bits_per_colorant = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn15, i32 0, i32 23
  %28 = load i32, i32* %bits_per_colorant, align 4, !tbaa !47
  %cmp16 = icmp ult i32 %26, %28
  br i1 %cmp16, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.14
  %29 = load i8, i8* %comp_mask, align 1, !tbaa !39
  %conv19 = zext i8 %29 to i32
  %shl20 = shl i32 %conv19, 1
  %or21 = or i32 %shl20, 1
  %conv22 = trunc i32 %or21 to i8
  store i8 %conv22, i8* %comp_mask, align 1, !tbaa !39
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.18
  %30 = load i32, i32* %j, align 4, !tbaa !27
  %inc24 = add nsw i32 %30, 1
  store i32 %inc24, i32* %j, align 4, !tbaa !27
  br label %for.cond.14

for.end.25:                                       ; preds = %for.cond.14
  store i32 0, i32* %pixels, align 4, !tbaa !27
  store i32 0, i32* %k, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %if.end.130, %for.end.25
  %31 = load i32, i32* %k, align 4, !tbaa !27
  %32 = load i32, i32* %length.addr, align 4, !tbaa !27
  %cmp26 = icmp slt i32 %31, %32
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %pixels, align 4, !tbaa !27
  %rem = srem i32 %36, 8
  %cmp28 = icmp eq i32 %rem, 0
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.36, %if.then
  %37 = load i32, i32* %j, align 4, !tbaa !27
  %38 = load i32, i32* %planes, align 4, !tbaa !27
  %cmp31 = icmp slt i32 %37, %38
  br i1 %cmp31, label %for.body.33, label %for.end.38

for.body.33:                                      ; preds = %for.cond.30
  %39 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom34 = sext i32 %39 to i64
  %arrayidx35 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom34
  %40 = load i8*, i8** %arrayidx35, align 8, !tbaa !1
  store i8 0, i8* %40, align 1, !tbaa !39
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.33
  %41 = load i32, i32* %j, align 4, !tbaa !27
  %inc37 = add nsw i32 %41, 1
  store i32 %inc37, i32* %j, align 4, !tbaa !27
  br label %for.cond.30

for.end.38:                                       ; preds = %for.cond.30
  br label %if.end

if.end:                                           ; preds = %for.end.38, %while.body
  %42 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info39 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %42, i32 0, i32 11
  %depth40 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info39, i32 0, i32 3
  %43 = load i16, i16* %depth40, align 2, !tbaa !26
  %conv41 = zext i16 %43 to i32
  %div = sdiv i32 8, %conv41
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %p, align 4, !tbaa !27
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  call void @llvm.lifetime.start(i64 1, i8* %comp) #1
  %44 = load i32, i32* %k, align 4, !tbaa !27
  %idxprom42 = sext i32 %44 to i64
  %45 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %45, i64 %idxprom42
  %46 = load i8, i8* %arrayidx43, align 1, !tbaa !39
  %conv44 = zext i8 %46 to i32
  %47 = load i32, i32* %p, align 4, !tbaa !27
  %48 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info45 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %48, i32 0, i32 11
  %depth46 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info45, i32 0, i32 3
  %49 = load i16, i16* %depth46, align 2, !tbaa !26
  %conv47 = zext i16 %49 to i32
  %mul48 = mul nsw i32 %47, %conv47
  %shr = ashr i32 %conv44, %mul48
  %50 = load i8, i8* %pixel_mask, align 1, !tbaa !39
  %conv49 = zext i8 %50 to i32
  %and = and i32 %shr, %conv49
  %conv50 = sext i32 %and to i64
  store i64 %conv50, i64* %pixel, align 8, !tbaa !29
  %51 = load i64, i64* %pixel, align 8, !tbaa !29
  %52 = load i8, i8* %comp_mask, align 1, !tbaa !39
  %conv51 = zext i8 %52 to i64
  %and52 = and i64 %51, %conv51
  %conv53 = trunc i64 %and52 to i8
  store i8 %conv53, i8* %comp, align 1, !tbaa !39
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.71, %do.body
  %53 = load i32, i32* %j, align 4, !tbaa !27
  %54 = load i32, i32* %black_planes, align 4, !tbaa !27
  %cmp55 = icmp slt i32 %53, %54
  br i1 %cmp55, label %for.body.57, label %for.end.73

for.body.57:                                      ; preds = %for.cond.54
  %55 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom58 = sext i32 %55 to i64
  %arrayidx59 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom58
  %56 = load i8*, i8** %arrayidx59, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !39
  %conv60 = zext i8 %57 to i32
  %shl61 = shl i32 %conv60, 1
  %58 = load i8, i8* %comp, align 1, !tbaa !39
  %conv62 = zext i8 %58 to i32
  %and63 = and i32 %conv62, 1
  %or64 = or i32 %shl61, %and63
  %conv65 = trunc i32 %or64 to i8
  %59 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom66 = sext i32 %59 to i64
  %arrayidx67 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom66
  %60 = load i8*, i8** %arrayidx67, align 8, !tbaa !1
  store i8 %conv65, i8* %60, align 1, !tbaa !39
  %61 = load i8, i8* %comp, align 1, !tbaa !39
  %conv68 = zext i8 %61 to i32
  %shr69 = ashr i32 %conv68, 1
  %conv70 = trunc i32 %shr69 to i8
  store i8 %conv70, i8* %comp, align 1, !tbaa !39
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.57
  %62 = load i32, i32* %j, align 4, !tbaa !27
  %inc72 = add nsw i32 %62, 1
  store i32 %inc72, i32* %j, align 4, !tbaa !27
  br label %for.cond.54

for.end.73:                                       ; preds = %for.cond.54
  %63 = load i32, i32* %non_black_planes, align 4, !tbaa !27
  %cmp74 = icmp sgt i32 %63, 0
  br i1 %cmp74, label %if.then.76, label %if.end.112

if.then.76:                                       ; preds = %for.end.73
  store i32 1, i32* %l, align 4, !tbaa !27
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.109, %if.then.76
  %64 = load i32, i32* %l, align 4, !tbaa !27
  %cmp78 = icmp slt i32 %64, 4
  br i1 %cmp78, label %for.body.80, label %for.end.111

for.body.80:                                      ; preds = %for.cond.77
  %65 = load i64, i64* %pixel, align 8, !tbaa !29
  %66 = load i32, i32* %l, align 4, !tbaa !27
  %67 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn81 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %67, i32 0, i32 68
  %bits_per_colorant82 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn81, i32 0, i32 23
  %68 = load i32, i32* %bits_per_colorant82, align 4, !tbaa !47
  %mul83 = mul i32 %66, %68
  %sh_prom = zext i32 %mul83 to i64
  %shr84 = lshr i64 %65, %sh_prom
  %69 = load i8, i8* %comp_mask, align 1, !tbaa !39
  %conv85 = zext i8 %69 to i64
  %and86 = and i64 %shr84, %conv85
  %conv87 = trunc i64 %and86 to i8
  store i8 %conv87, i8* %comp, align 1, !tbaa !39
  store i32 0, i32* %m, align 4, !tbaa !27
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.105, %for.body.80
  %70 = load i32, i32* %m, align 4, !tbaa !27
  %71 = load i32, i32* %non_black_planes, align 4, !tbaa !27
  %cmp89 = icmp slt i32 %70, %71
  br i1 %cmp89, label %for.body.91, label %for.end.108

for.body.91:                                      ; preds = %for.cond.88
  %72 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom92 = sext i32 %72 to i64
  %arrayidx93 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom92
  %73 = load i8*, i8** %arrayidx93, align 8, !tbaa !1
  %74 = load i8, i8* %73, align 1, !tbaa !39
  %conv94 = zext i8 %74 to i32
  %shl95 = shl i32 %conv94, 1
  %75 = load i8, i8* %comp, align 1, !tbaa !39
  %conv96 = zext i8 %75 to i32
  %and97 = and i32 %conv96, 1
  %or98 = or i32 %shl95, %and97
  %conv99 = trunc i32 %or98 to i8
  %76 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom100 = sext i32 %76 to i64
  %arrayidx101 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom100
  %77 = load i8*, i8** %arrayidx101, align 8, !tbaa !1
  store i8 %conv99, i8* %77, align 1, !tbaa !39
  %78 = load i8, i8* %comp, align 1, !tbaa !39
  %conv102 = zext i8 %78 to i32
  %shr103 = ashr i32 %conv102, 1
  %conv104 = trunc i32 %shr103 to i8
  store i8 %conv104, i8* %comp, align 1, !tbaa !39
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.91
  %79 = load i32, i32* %m, align 4, !tbaa !27
  %inc106 = add nsw i32 %79, 1
  store i32 %inc106, i32* %m, align 4, !tbaa !27
  %80 = load i32, i32* %j, align 4, !tbaa !27
  %inc107 = add nsw i32 %80, 1
  store i32 %inc107, i32* %j, align 4, !tbaa !27
  br label %for.cond.88

for.end.108:                                      ; preds = %for.cond.88
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end.108
  %81 = load i32, i32* %l, align 4, !tbaa !27
  %inc110 = add nsw i32 %81, 1
  store i32 %inc110, i32* %l, align 4, !tbaa !27
  br label %for.cond.77

for.end.111:                                      ; preds = %for.cond.77
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.111, %for.end.73
  %82 = load i32, i32* %pixels, align 4, !tbaa !27
  %inc113 = add nsw i32 %82, 1
  store i32 %inc113, i32* %pixels, align 4, !tbaa !27
  %83 = load i32, i32* %p, align 4, !tbaa !27
  %dec = add nsw i32 %83, -1
  store i32 %dec, i32* %p, align 4, !tbaa !27
  call void @llvm.lifetime.end(i64 1, i8* %comp) #1
  br label %do.cond

do.cond:                                          ; preds = %if.end.112
  %84 = load i32, i32* %p, align 4, !tbaa !27
  %cmp114 = icmp sge i32 %84, 0
  br i1 %cmp114, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %85 = load i32, i32* %k, align 4, !tbaa !27
  %inc116 = add nsw i32 %85, 1
  store i32 %inc116, i32* %k, align 4, !tbaa !27
  %86 = load i32, i32* %pixels, align 4, !tbaa !27
  %rem117 = srem i32 %86, 8
  %cmp118 = icmp eq i32 %rem117, 0
  br i1 %cmp118, label %if.then.120, label %if.end.130

if.then.120:                                      ; preds = %do.end
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.127, %if.then.120
  %87 = load i32, i32* %j, align 4, !tbaa !27
  %88 = load i32, i32* %planes, align 4, !tbaa !27
  %cmp122 = icmp slt i32 %87, %88
  br i1 %cmp122, label %for.body.124, label %for.end.129

for.body.124:                                     ; preds = %for.cond.121
  %89 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom125 = sext i32 %89 to i64
  %arrayidx126 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom125
  %90 = load i8*, i8** %arrayidx126, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr, i8** %arrayidx126, align 8, !tbaa !1
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.124
  %91 = load i32, i32* %j, align 4, !tbaa !27
  %inc128 = add nsw i32 %91, 1
  store i32 %inc128, i32* %j, align 4, !tbaa !27
  br label %for.cond.121

for.end.129:                                      ; preds = %for.cond.121
  br label %if.end.130

if.end.130:                                       ; preds = %for.end.129, %do.end
  %92 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %95 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn131 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %95, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn131, i32 0, i32 14
  %96 = load i32, i32* %colour_model, align 4, !tbaa !30
  %cmp132 = icmp eq i32 %96, 1
  %conv133 = zext i1 %cmp132 to i32
  %97 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn134 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %97, i32 0, i32 68
  %non_black_levels135 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn134, i32 0, i32 16
  %98 = load i32, i32* %non_black_levels135, align 4, !tbaa !45
  %99 = load i32, i32* %planes, align 4, !tbaa !27
  %100 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i32 0
  %101 = load i32, i32* %pixels, align 4, !tbaa !27
  call void @eprn_finalize(i32 %conv133, i32 %98, i32 %99, %struct.eprn_OctetString* %100, i8** %arraydecay, i32 %101) #3
  %102 = bitcast [8 x i8*]* %ptr to i8*
  call void @llvm.lifetime.end(i64 64, i8* %102) #1
  call void @llvm.lifetime.end(i64 1, i8* %pixel_mask) #1
  call void @llvm.lifetime.end(i64 1, i8* %comp_mask) #1
  %103 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %non_black_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %black_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @split_line_3or4x1(%struct.eprn_Device* %dev, i8* %line, i32 %length, %struct.eprn_OctetString* %plane) #0 {
entry:
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %line.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %plane.addr = alloca %struct.eprn_OctetString*, align 8
  %from = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %ptr = alloca [4 x i8*], align 16
  %octet = alloca [4 x i8], align 1
  %part = alloca i8, align 1
  %k149 = alloca i32, align 4
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !27
  store %struct.eprn_OctetString* %plane, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %0 = bitcast i32* %from to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %1, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 14
  %2 = load i32, i32* %colour_model, align 4, !tbaa !30
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %3, i32 0, i32 68
  %colour_model2 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn1, i32 0, i32 14
  %4 = load i32, i32* %colour_model2, align 4, !tbaa !30
  %cmp3 = icmp eq i32 %4, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %cond = select i1 %5, i32 1, i32 0
  store i32 %cond, i32* %from, align 4, !tbaa !27
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast [4 x i8*]* %ptr to i8*
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 0
  store i8* null, i8** %arrayidx, align 8, !tbaa !1
  %10 = load i32, i32* %from, align 4, !tbaa !27
  store i32 %10, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end
  %11 = load i32, i32* %j, align 4, !tbaa !27
  %cmp4 = icmp slt i32 %11, 4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %j, align 4, !tbaa !27
  %13 = load i32, i32* %from, align 4, !tbaa !27
  %sub = sub nsw i32 %12, %13
  %idxprom = sext i32 %sub to i64
  %14 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %14, i64 %idxprom
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx5, i32 0, i32 0
  %15 = load i8*, i8** %str, align 8, !tbaa !41
  %16 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom6
  store i8* %15, i8** %arrayidx7, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %j, align 4, !tbaa !27
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %for.end.178, %for.end
  %18 = load i32, i32* %k, align 4, !tbaa !27
  %19 = load i32, i32* %length.addr, align 4, !tbaa !27
  %cmp8 = icmp slt i32 %18, %19
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = bitcast [4 x i8]* %octet to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast [4 x i8]* %octet to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 4, i32 1, i1 false)
  store i32 0, i32* %l, align 4, !tbaa !27
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.120, %while.body
  %22 = load i32, i32* %l, align 4, !tbaa !27
  %cmp10 = icmp slt i32 %22, 4
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.9
  %23 = load i32, i32* %k, align 4, !tbaa !27
  %24 = load i32, i32* %length.addr, align 4, !tbaa !27
  %cmp11 = icmp slt i32 %23, %24
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.9
  %25 = phi i1 [ false, %for.cond.9 ], [ %cmp11, %land.rhs ]
  br i1 %25, label %for.body.12, label %for.end.123

for.body.12:                                      ; preds = %land.end
  call void @llvm.lifetime.start(i64 1, i8* %part) #1
  %26 = load i32, i32* %k, align 4, !tbaa !27
  %idxprom13 = sext i32 %26 to i64
  %27 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %27, i64 %idxprom13
  %28 = load i8, i8* %arrayidx14, align 1, !tbaa !39
  %conv = zext i8 %28 to i32
  %shr = ashr i32 %conv, 4
  %and = and i32 %shr, 15
  %conv15 = trunc i32 %and to i8
  store i8 %conv15, i8* %part, align 1, !tbaa !39
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 0
  %29 = load i8, i8* %arrayidx16, align 1, !tbaa !39
  %conv17 = zext i8 %29 to i32
  %shl = shl i32 %conv17, 1
  %conv18 = trunc i32 %shl to i8
  store i8 %conv18, i8* %arrayidx16, align 1, !tbaa !39
  %30 = load i8, i8* %part, align 1, !tbaa !39
  %conv19 = zext i8 %30 to i32
  %and20 = and i32 %conv19, 1
  %tobool = icmp ne i32 %and20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.12
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 0
  %31 = load i8, i8* %arrayidx21, align 1, !tbaa !39
  %conv22 = zext i8 %31 to i32
  %or = or i32 %conv22, 1
  %conv23 = trunc i32 %or to i8
  store i8 %conv23, i8* %arrayidx21, align 1, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.12
  %arrayidx24 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 1
  %32 = load i8, i8* %arrayidx24, align 1, !tbaa !39
  %conv25 = zext i8 %32 to i32
  %shl26 = shl i32 %conv25, 1
  %conv27 = trunc i32 %shl26 to i8
  store i8 %conv27, i8* %arrayidx24, align 1, !tbaa !39
  %33 = load i8, i8* %part, align 1, !tbaa !39
  %conv28 = zext i8 %33 to i32
  %and29 = and i32 %conv28, 2
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end
  %arrayidx32 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 1
  %34 = load i8, i8* %arrayidx32, align 1, !tbaa !39
  %conv33 = zext i8 %34 to i32
  %or34 = or i32 %conv33, 1
  %conv35 = trunc i32 %or34 to i8
  store i8 %conv35, i8* %arrayidx32, align 1, !tbaa !39
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.end
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 2
  %35 = load i8, i8* %arrayidx37, align 1, !tbaa !39
  %conv38 = zext i8 %35 to i32
  %shl39 = shl i32 %conv38, 1
  %conv40 = trunc i32 %shl39 to i8
  store i8 %conv40, i8* %arrayidx37, align 1, !tbaa !39
  %36 = load i8, i8* %part, align 1, !tbaa !39
  %conv41 = zext i8 %36 to i32
  %and42 = and i32 %conv41, 4
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %if.end.36
  %arrayidx45 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 2
  %37 = load i8, i8* %arrayidx45, align 1, !tbaa !39
  %conv46 = zext i8 %37 to i32
  %or47 = or i32 %conv46, 1
  %conv48 = trunc i32 %or47 to i8
  store i8 %conv48, i8* %arrayidx45, align 1, !tbaa !39
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %if.end.36
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 3
  %38 = load i8, i8* %arrayidx50, align 1, !tbaa !39
  %conv51 = zext i8 %38 to i32
  %shl52 = shl i32 %conv51, 1
  %conv53 = trunc i32 %shl52 to i8
  store i8 %conv53, i8* %arrayidx50, align 1, !tbaa !39
  %39 = load i8, i8* %part, align 1, !tbaa !39
  %conv54 = zext i8 %39 to i32
  %and55 = and i32 %conv54, 8
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %if.end.49
  %arrayidx58 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 3
  %40 = load i8, i8* %arrayidx58, align 1, !tbaa !39
  %conv59 = zext i8 %40 to i32
  %or60 = or i32 %conv59, 1
  %conv61 = trunc i32 %or60 to i8
  store i8 %conv61, i8* %arrayidx58, align 1, !tbaa !39
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.57, %if.end.49
  %41 = load i32, i32* %k, align 4, !tbaa !27
  %idxprom63 = sext i32 %41 to i64
  %42 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %42, i64 %idxprom63
  %43 = load i8, i8* %arrayidx64, align 1, !tbaa !39
  %conv65 = zext i8 %43 to i32
  %and66 = and i32 %conv65, 15
  %conv67 = trunc i32 %and66 to i8
  store i8 %conv67, i8* %part, align 1, !tbaa !39
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 0
  %44 = load i8, i8* %arrayidx68, align 1, !tbaa !39
  %conv69 = zext i8 %44 to i32
  %shl70 = shl i32 %conv69, 1
  %conv71 = trunc i32 %shl70 to i8
  store i8 %conv71, i8* %arrayidx68, align 1, !tbaa !39
  %45 = load i8, i8* %part, align 1, !tbaa !39
  %conv72 = zext i8 %45 to i32
  %and73 = and i32 %conv72, 1
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %if.end.62
  %arrayidx76 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 0
  %46 = load i8, i8* %arrayidx76, align 1, !tbaa !39
  %conv77 = zext i8 %46 to i32
  %or78 = or i32 %conv77, 1
  %conv79 = trunc i32 %or78 to i8
  store i8 %conv79, i8* %arrayidx76, align 1, !tbaa !39
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %if.end.62
  %arrayidx81 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 1
  %47 = load i8, i8* %arrayidx81, align 1, !tbaa !39
  %conv82 = zext i8 %47 to i32
  %shl83 = shl i32 %conv82, 1
  %conv84 = trunc i32 %shl83 to i8
  store i8 %conv84, i8* %arrayidx81, align 1, !tbaa !39
  %48 = load i8, i8* %part, align 1, !tbaa !39
  %conv85 = zext i8 %48 to i32
  %and86 = and i32 %conv85, 2
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %if.end.80
  %arrayidx89 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 1
  %49 = load i8, i8* %arrayidx89, align 1, !tbaa !39
  %conv90 = zext i8 %49 to i32
  %or91 = or i32 %conv90, 1
  %conv92 = trunc i32 %or91 to i8
  store i8 %conv92, i8* %arrayidx89, align 1, !tbaa !39
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %if.end.80
  %arrayidx94 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 2
  %50 = load i8, i8* %arrayidx94, align 1, !tbaa !39
  %conv95 = zext i8 %50 to i32
  %shl96 = shl i32 %conv95, 1
  %conv97 = trunc i32 %shl96 to i8
  store i8 %conv97, i8* %arrayidx94, align 1, !tbaa !39
  %51 = load i8, i8* %part, align 1, !tbaa !39
  %conv98 = zext i8 %51 to i32
  %and99 = and i32 %conv98, 4
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.106

if.then.101:                                      ; preds = %if.end.93
  %arrayidx102 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 2
  %52 = load i8, i8* %arrayidx102, align 1, !tbaa !39
  %conv103 = zext i8 %52 to i32
  %or104 = or i32 %conv103, 1
  %conv105 = trunc i32 %or104 to i8
  store i8 %conv105, i8* %arrayidx102, align 1, !tbaa !39
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.101, %if.end.93
  %arrayidx107 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 3
  %53 = load i8, i8* %arrayidx107, align 1, !tbaa !39
  %conv108 = zext i8 %53 to i32
  %shl109 = shl i32 %conv108, 1
  %conv110 = trunc i32 %shl109 to i8
  store i8 %conv110, i8* %arrayidx107, align 1, !tbaa !39
  %54 = load i8, i8* %part, align 1, !tbaa !39
  %conv111 = zext i8 %54 to i32
  %and112 = and i32 %conv111, 8
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.119

if.then.114:                                      ; preds = %if.end.106
  %arrayidx115 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 3
  %55 = load i8, i8* %arrayidx115, align 1, !tbaa !39
  %conv116 = zext i8 %55 to i32
  %or117 = or i32 %conv116, 1
  %conv118 = trunc i32 %or117 to i8
  store i8 %conv118, i8* %arrayidx115, align 1, !tbaa !39
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.114, %if.end.106
  call void @llvm.lifetime.end(i64 1, i8* %part) #1
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119
  %56 = load i32, i32* %l, align 4, !tbaa !27
  %inc121 = add nsw i32 %56, 1
  store i32 %inc121, i32* %l, align 4, !tbaa !27
  %57 = load i32, i32* %k, align 4, !tbaa !27
  %inc122 = add nsw i32 %57, 1
  store i32 %inc122, i32* %k, align 4, !tbaa !27
  br label %for.cond.9

for.end.123:                                      ; preds = %land.end
  %58 = load i32, i32* %l, align 4, !tbaa !27
  %cmp124 = icmp slt i32 %58, 4
  br i1 %cmp124, label %if.then.126, label %if.end.167

if.then.126:                                      ; preds = %for.end.123
  %59 = load i32, i32* %from, align 4, !tbaa !27
  store i32 %59, i32* %j, align 4, !tbaa !27
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.137, %if.then.126
  %60 = load i32, i32* %j, align 4, !tbaa !27
  %cmp128 = icmp slt i32 %60, 4
  br i1 %cmp128, label %for.body.130, label %for.end.139

for.body.130:                                     ; preds = %for.cond.127
  %61 = load i32, i32* %l, align 4, !tbaa !27
  %mul = mul nsw i32 2, %61
  %sub131 = sub nsw i32 8, %mul
  %62 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom132 = sext i32 %62 to i64
  %arrayidx133 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 %idxprom132
  %63 = load i8, i8* %arrayidx133, align 1, !tbaa !39
  %conv134 = zext i8 %63 to i32
  %shl135 = shl i32 %conv134, %sub131
  %conv136 = trunc i32 %shl135 to i8
  store i8 %conv136, i8* %arrayidx133, align 1, !tbaa !39
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.130
  %64 = load i32, i32* %j, align 4, !tbaa !27
  %inc138 = add nsw i32 %64, 1
  store i32 %inc138, i32* %j, align 4, !tbaa !27
  br label %for.cond.127

for.end.139:                                      ; preds = %for.cond.127
  %65 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn140 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %65, i32 0, i32 68
  %colour_model141 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn140, i32 0, i32 14
  %66 = load i32, i32* %colour_model141, align 4, !tbaa !30
  %cmp142 = icmp eq i32 %66, 1
  br i1 %cmp142, label %if.then.144, label %if.end.166

if.then.144:                                      ; preds = %for.end.139
  store i32 1, i32* %j, align 4, !tbaa !27
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.163, %if.then.144
  %67 = load i32, i32* %j, align 4, !tbaa !27
  %cmp146 = icmp slt i32 %67, 4
  br i1 %cmp146, label %for.body.148, label %for.end.165

for.body.148:                                     ; preds = %for.cond.145
  %68 = bitcast i32* %k149 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %l, align 4, !tbaa !27
  %sub150 = sub nsw i32 3, %69
  store i32 %sub150, i32* %k149, align 4, !tbaa !27
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.161, %for.body.148
  %70 = load i32, i32* %k149, align 4, !tbaa !27
  %cmp152 = icmp sge i32 %70, 0
  br i1 %cmp152, label %for.body.154, label %for.end.162

for.body.154:                                     ; preds = %for.cond.151
  %71 = load i32, i32* %k149, align 4, !tbaa !27
  %shl155 = shl i32 3, %71
  %72 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom156 = sext i32 %72 to i64
  %arrayidx157 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 %idxprom156
  %73 = load i8, i8* %arrayidx157, align 1, !tbaa !39
  %conv158 = zext i8 %73 to i32
  %or159 = or i32 %conv158, %shl155
  %conv160 = trunc i32 %or159 to i8
  store i8 %conv160, i8* %arrayidx157, align 1, !tbaa !39
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.body.154
  %74 = load i32, i32* %k149, align 4, !tbaa !27
  %dec = add nsw i32 %74, -1
  store i32 %dec, i32* %k149, align 4, !tbaa !27
  br label %for.cond.151

for.end.162:                                      ; preds = %for.cond.151
  %75 = bitcast i32* %k149 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.end.162
  %76 = load i32, i32* %j, align 4, !tbaa !27
  %inc164 = add nsw i32 %76, 1
  store i32 %inc164, i32* %j, align 4, !tbaa !27
  br label %for.cond.145

for.end.165:                                      ; preds = %for.cond.145
  br label %if.end.166

if.end.166:                                       ; preds = %for.end.165, %for.end.139
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %for.end.123
  %77 = load i32, i32* %from, align 4, !tbaa !27
  store i32 %77, i32* %j, align 4, !tbaa !27
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.176, %if.end.167
  %78 = load i32, i32* %j, align 4, !tbaa !27
  %cmp169 = icmp slt i32 %78, 4
  br i1 %cmp169, label %for.body.171, label %for.end.178

for.body.171:                                     ; preds = %for.cond.168
  %79 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom172 = sext i32 %79 to i64
  %arrayidx173 = getelementptr inbounds [4 x i8], [4 x i8]* %octet, i32 0, i64 %idxprom172
  %80 = load i8, i8* %arrayidx173, align 1, !tbaa !39
  %81 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom174 = sext i32 %81 to i64
  %arrayidx175 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom174
  %82 = load i8*, i8** %arrayidx175, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr, i8** %arrayidx175, align 8, !tbaa !1
  store i8 %80, i8* %82, align 1, !tbaa !39
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.171
  %83 = load i32, i32* %j, align 4, !tbaa !27
  %inc177 = add nsw i32 %83, 1
  store i32 %inc177, i32* %j, align 4, !tbaa !27
  br label %for.cond.168

for.end.178:                                      ; preds = %for.cond.168
  %84 = bitcast [4 x i8]* %octet to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.200, %while.end
  %85 = load i32, i32* %j, align 4, !tbaa !27
  %86 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn180 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %86, i32 0, i32 68
  %output_planes = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn180, i32 0, i32 27
  %87 = load i32, i32* %output_planes, align 4, !tbaa !5
  %cmp181 = icmp ult i32 %85, %87
  br i1 %cmp181, label %for.body.183, label %for.end.202

for.body.183:                                     ; preds = %for.cond.179
  %88 = load i32, i32* %length.addr, align 4, !tbaa !27
  %cmp184 = icmp eq i32 %88, 0
  br i1 %cmp184, label %if.then.186, label %if.else

if.then.186:                                      ; preds = %for.body.183
  %89 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom187 = sext i32 %89 to i64
  %90 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %90, i64 %idxprom187
  %length189 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx188, i32 0, i32 1
  store i32 0, i32* %length189, align 4, !tbaa !40
  br label %if.end.199

if.else:                                          ; preds = %for.body.183
  %91 = load i32, i32* %from, align 4, !tbaa !27
  %92 = load i32, i32* %j, align 4, !tbaa !27
  %add = add nsw i32 %91, %92
  %idxprom190 = sext i32 %add to i64
  %arrayidx191 = getelementptr inbounds [4 x i8*], [4 x i8*]* %ptr, i32 0, i64 %idxprom190
  %93 = load i8*, i8** %arrayidx191, align 8, !tbaa !1
  %94 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom192 = sext i32 %94 to i64
  %95 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %95, i64 %idxprom192
  %str194 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx193, i32 0, i32 0
  %96 = load i8*, i8** %str194, align 8, !tbaa !41
  %sub.ptr.lhs.cast = ptrtoint i8* %93 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %96 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv195 = trunc i64 %sub.ptr.sub to i32
  %97 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom196 = sext i32 %97 to i64
  %98 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %98, i64 %idxprom196
  %length198 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx197, i32 0, i32 1
  store i32 %conv195, i32* %length198, align 4, !tbaa !40
  br label %if.end.199

if.end.199:                                       ; preds = %if.else, %if.then.186
  br label %for.inc.200

for.inc.200:                                      ; preds = %if.end.199
  %99 = load i32, i32* %j, align 4, !tbaa !27
  %inc201 = add nsw i32 %99, 1
  store i32 %inc201, i32* %j, align 4, !tbaa !27
  br label %for.cond.179

for.end.202:                                      ; preds = %for.cond.179
  %100 = bitcast [4 x i8*]* %ptr to i8*
  call void @llvm.lifetime.end(i64 32, i8* %100) #1
  %101 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %from to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @split_line_4x2(%struct.eprn_Device* %dev, i8* %line, i32 %length, %struct.eprn_OctetString* %plane) #0 {
entry:
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %line.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %plane.addr = alloca %struct.eprn_OctetString*, align 8
  %pixel = alloca i64, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ptr = alloca [8 x i8*], align 16
  %shift = alloca i32, align 4
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !27
  store %struct.eprn_OctetString* %plane, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %0 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [8 x i8*]* %ptr to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4, !tbaa !27
  %cmp = icmp slt i32 %4, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %6, i64 %idxprom
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx, i32 0, i32 0
  %7 = load i8*, i8** %str, align 8, !tbaa !41
  %8 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom1
  store i8* %7, i8** %arrayidx2, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4, !tbaa !27
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !27
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.98, %for.end
  %10 = load i32, i32* %k, align 4, !tbaa !27
  %11 = load i32, i32* %length.addr, align 4, !tbaa !27
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %for.body.5, label %for.end.100

for.body.5:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %k, align 4, !tbaa !27
  %rem = srem i32 %12, 8
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.12, %if.then
  %13 = load i32, i32* %j, align 4, !tbaa !27
  %cmp8 = icmp slt i32 %13, 8
  br i1 %cmp8, label %for.body.9, label %for.end.14

for.body.9:                                       ; preds = %for.cond.7
  %14 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom10
  %15 = load i8*, i8** %arrayidx11, align 8, !tbaa !1
  store i8 0, i8* %15, align 1, !tbaa !39
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.9
  %16 = load i32, i32* %j, align 4, !tbaa !27
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, i32* %j, align 4, !tbaa !27
  br label %for.cond.7

for.end.14:                                       ; preds = %for.cond.7
  br label %if.end

if.end:                                           ; preds = %for.end.14, %for.body.5
  %17 = load i32, i32* %k, align 4, !tbaa !27
  %idxprom15 = sext i32 %17 to i64
  %18 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 %idxprom15
  %19 = load i8, i8* %arrayidx16, align 1, !tbaa !39
  %conv = zext i8 %19 to i64
  store i64 %conv, i64* %pixel, align 8, !tbaa !29
  %arrayidx17 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 0
  %20 = load i8*, i8** %arrayidx17, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !39
  %conv18 = zext i8 %21 to i32
  %shl = shl i32 %conv18, 1
  %conv19 = sext i32 %shl to i64
  %22 = load i64, i64* %pixel, align 8, !tbaa !29
  %and = and i64 %22, 1
  %or = or i64 %conv19, %and
  %conv20 = trunc i64 %or to i8
  %arrayidx21 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 0
  %23 = load i8*, i8** %arrayidx21, align 8, !tbaa !1
  store i8 %conv20, i8* %23, align 1, !tbaa !39
  %arrayidx22 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 1
  %24 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !39
  %conv23 = zext i8 %25 to i32
  %shl24 = shl i32 %conv23, 1
  %conv25 = sext i32 %shl24 to i64
  %26 = load i64, i64* %pixel, align 8, !tbaa !29
  %shr = lshr i64 %26, 1
  %and26 = and i64 %shr, 1
  %or27 = or i64 %conv25, %and26
  %conv28 = trunc i64 %or27 to i8
  %arrayidx29 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 1
  %27 = load i8*, i8** %arrayidx29, align 8, !tbaa !1
  store i8 %conv28, i8* %27, align 1, !tbaa !39
  %arrayidx30 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 2
  %28 = load i8*, i8** %arrayidx30, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !39
  %conv31 = zext i8 %29 to i32
  %shl32 = shl i32 %conv31, 1
  %conv33 = sext i32 %shl32 to i64
  %30 = load i64, i64* %pixel, align 8, !tbaa !29
  %shr34 = lshr i64 %30, 2
  %and35 = and i64 %shr34, 1
  %or36 = or i64 %conv33, %and35
  %conv37 = trunc i64 %or36 to i8
  %arrayidx38 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 2
  %31 = load i8*, i8** %arrayidx38, align 8, !tbaa !1
  store i8 %conv37, i8* %31, align 1, !tbaa !39
  %arrayidx39 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 3
  %32 = load i8*, i8** %arrayidx39, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !39
  %conv40 = zext i8 %33 to i32
  %shl41 = shl i32 %conv40, 1
  %conv42 = sext i32 %shl41 to i64
  %34 = load i64, i64* %pixel, align 8, !tbaa !29
  %shr43 = lshr i64 %34, 3
  %and44 = and i64 %shr43, 1
  %or45 = or i64 %conv42, %and44
  %conv46 = trunc i64 %or45 to i8
  %arrayidx47 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 3
  %35 = load i8*, i8** %arrayidx47, align 8, !tbaa !1
  store i8 %conv46, i8* %35, align 1, !tbaa !39
  %arrayidx48 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 4
  %36 = load i8*, i8** %arrayidx48, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !39
  %conv49 = zext i8 %37 to i32
  %shl50 = shl i32 %conv49, 1
  %conv51 = sext i32 %shl50 to i64
  %38 = load i64, i64* %pixel, align 8, !tbaa !29
  %shr52 = lshr i64 %38, 4
  %and53 = and i64 %shr52, 1
  %or54 = or i64 %conv51, %and53
  %conv55 = trunc i64 %or54 to i8
  %arrayidx56 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 4
  %39 = load i8*, i8** %arrayidx56, align 8, !tbaa !1
  store i8 %conv55, i8* %39, align 1, !tbaa !39
  %arrayidx57 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 5
  %40 = load i8*, i8** %arrayidx57, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !39
  %conv58 = zext i8 %41 to i32
  %shl59 = shl i32 %conv58, 1
  %conv60 = sext i32 %shl59 to i64
  %42 = load i64, i64* %pixel, align 8, !tbaa !29
  %shr61 = lshr i64 %42, 5
  %and62 = and i64 %shr61, 1
  %or63 = or i64 %conv60, %and62
  %conv64 = trunc i64 %or63 to i8
  %arrayidx65 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 5
  %43 = load i8*, i8** %arrayidx65, align 8, !tbaa !1
  store i8 %conv64, i8* %43, align 1, !tbaa !39
  %arrayidx66 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 6
  %44 = load i8*, i8** %arrayidx66, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !39
  %conv67 = zext i8 %45 to i32
  %shl68 = shl i32 %conv67, 1
  %conv69 = sext i32 %shl68 to i64
  %46 = load i64, i64* %pixel, align 8, !tbaa !29
  %shr70 = lshr i64 %46, 6
  %and71 = and i64 %shr70, 1
  %or72 = or i64 %conv69, %and71
  %conv73 = trunc i64 %or72 to i8
  %arrayidx74 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 6
  %47 = load i8*, i8** %arrayidx74, align 8, !tbaa !1
  store i8 %conv73, i8* %47, align 1, !tbaa !39
  %arrayidx75 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 7
  %48 = load i8*, i8** %arrayidx75, align 8, !tbaa !1
  %49 = load i8, i8* %48, align 1, !tbaa !39
  %conv76 = zext i8 %49 to i32
  %shl77 = shl i32 %conv76, 1
  %conv78 = sext i32 %shl77 to i64
  %50 = load i64, i64* %pixel, align 8, !tbaa !29
  %shr79 = lshr i64 %50, 7
  %and80 = and i64 %shr79, 1
  %or81 = or i64 %conv78, %and80
  %conv82 = trunc i64 %or81 to i8
  %arrayidx83 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 7
  %51 = load i8*, i8** %arrayidx83, align 8, !tbaa !1
  store i8 %conv82, i8* %51, align 1, !tbaa !39
  %52 = load i32, i32* %k, align 4, !tbaa !27
  %rem84 = srem i32 %52, 8
  %cmp85 = icmp eq i32 %rem84, 7
  br i1 %cmp85, label %if.then.87, label %if.end.97

if.then.87:                                       ; preds = %if.end
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.94, %if.then.87
  %53 = load i32, i32* %j, align 4, !tbaa !27
  %cmp89 = icmp slt i32 %53, 8
  br i1 %cmp89, label %for.body.91, label %for.end.96

for.body.91:                                      ; preds = %for.cond.88
  %54 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom92 = sext i32 %54 to i64
  %arrayidx93 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom92
  %55 = load i8*, i8** %arrayidx93, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr, i8** %arrayidx93, align 8, !tbaa !1
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.91
  %56 = load i32, i32* %j, align 4, !tbaa !27
  %inc95 = add nsw i32 %56, 1
  store i32 %inc95, i32* %j, align 4, !tbaa !27
  br label %for.cond.88

for.end.96:                                       ; preds = %for.cond.88
  br label %if.end.97

if.end.97:                                        ; preds = %for.end.96, %if.end
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %57 = load i32, i32* %k, align 4, !tbaa !27
  %inc99 = add nsw i32 %57, 1
  store i32 %inc99, i32* %k, align 4, !tbaa !27
  br label %for.cond.3

for.end.100:                                      ; preds = %for.cond.3
  %58 = load i32, i32* %length.addr, align 4, !tbaa !27
  %rem101 = srem i32 %58, 8
  store i32 %rem101, i32* %k, align 4, !tbaa !27
  %59 = load i32, i32* %k, align 4, !tbaa !27
  %cmp102 = icmp ne i32 %59, 0
  br i1 %cmp102, label %if.then.104, label %if.end.118

if.then.104:                                      ; preds = %for.end.100
  %60 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i32, i32* %k, align 4, !tbaa !27
  %sub = sub nsw i32 8, %61
  store i32 %sub, i32* %shift, align 4, !tbaa !27
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.115, %if.then.104
  %62 = load i32, i32* %j, align 4, !tbaa !27
  %cmp106 = icmp slt i32 %62, 8
  br i1 %cmp106, label %for.body.108, label %for.end.117

for.body.108:                                     ; preds = %for.cond.105
  %63 = load i32, i32* %shift, align 4, !tbaa !27
  %64 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom109 = sext i32 %64 to i64
  %arrayidx110 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom109
  %65 = load i8*, i8** %arrayidx110, align 8, !tbaa !1
  %incdec.ptr111 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr111, i8** %arrayidx110, align 8, !tbaa !1
  %66 = load i8, i8* %65, align 1, !tbaa !39
  %conv112 = zext i8 %66 to i32
  %shl113 = shl i32 %conv112, %63
  %conv114 = trunc i32 %shl113 to i8
  store i8 %conv114, i8* %65, align 1, !tbaa !39
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.108
  %67 = load i32, i32* %j, align 4, !tbaa !27
  %inc116 = add nsw i32 %67, 1
  store i32 %inc116, i32* %j, align 4, !tbaa !27
  br label %for.cond.105

for.end.117:                                      ; preds = %for.cond.105
  %68 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  br label %if.end.118

if.end.118:                                       ; preds = %for.end.117, %for.end.100
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.139, %if.end.118
  %69 = load i32, i32* %j, align 4, !tbaa !27
  %cmp120 = icmp slt i32 %69, 8
  br i1 %cmp120, label %for.body.122, label %for.end.141

for.body.122:                                     ; preds = %for.cond.119
  %70 = load i32, i32* %length.addr, align 4, !tbaa !27
  %cmp123 = icmp eq i32 %70, 0
  br i1 %cmp123, label %if.then.125, label %if.else

if.then.125:                                      ; preds = %for.body.122
  %71 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom126 = sext i32 %71 to i64
  %72 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %72, i64 %idxprom126
  %length128 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx127, i32 0, i32 1
  store i32 0, i32* %length128, align 4, !tbaa !40
  br label %if.end.138

if.else:                                          ; preds = %for.body.122
  %73 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom129 = sext i32 %73 to i64
  %arrayidx130 = getelementptr inbounds [8 x i8*], [8 x i8*]* %ptr, i32 0, i64 %idxprom129
  %74 = load i8*, i8** %arrayidx130, align 8, !tbaa !1
  %75 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom131 = sext i32 %75 to i64
  %76 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %76, i64 %idxprom131
  %str133 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx132, i32 0, i32 0
  %77 = load i8*, i8** %str133, align 8, !tbaa !41
  %sub.ptr.lhs.cast = ptrtoint i8* %74 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %77 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv134 = trunc i64 %sub.ptr.sub to i32
  %78 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom135 = sext i32 %78 to i64
  %79 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %79, i64 %idxprom135
  %length137 = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx136, i32 0, i32 1
  store i32 %conv134, i32* %length137, align 4, !tbaa !40
  br label %if.end.138

if.end.138:                                       ; preds = %if.else, %if.then.125
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %80 = load i32, i32* %j, align 4, !tbaa !27
  %inc140 = add nsw i32 %80, 1
  store i32 %inc140, i32* %j, align 4, !tbaa !27
  br label %for.cond.119

for.end.141:                                      ; preds = %for.cond.119
  %81 = bitcast [8 x i8*]* %ptr to i8*
  call void @llvm.lifetime.end(i64 64, i8* %81) #1
  %82 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @split_line_ge8(%struct.eprn_Device* %dev, i8* %line, i32 %length, %struct.eprn_OctetString* %plane) #0 {
entry:
  %dev.addr = alloca %struct.eprn_Device*, align 8
  %line.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %plane.addr = alloca %struct.eprn_OctetString*, align 8
  %pixel = alloca i64, align 8
  %black_planes = alloca i32, align 4
  %non_black_planes = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %octets_per_pixel = alloca i32, align 4
  %pixels = alloca i32, align 4
  %planes = alloca i32, align 4
  %comp_mask = alloca i8, align 1
  %ptr = alloca [32 x i8*], align 16
  %comp = alloca i8, align 1
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.eprn_Device* %dev, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !27
  store %struct.eprn_OctetString* %plane, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %0 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %black_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %non_black_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %octets_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %6, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %7 = load i16, i16* %depth, align 2, !tbaa !26
  %conv = zext i16 %7 to i32
  %div = sdiv i32 %conv, 8
  store i32 %div, i32* %octets_per_pixel, align 4, !tbaa !27
  %8 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  call void @llvm.lifetime.start(i64 1, i8* %comp_mask) #1
  store i8 0, i8* %comp_mask, align 1, !tbaa !39
  %10 = bitcast [32 x i8*]* %ptr to i8*
  call void @llvm.lifetime.start(i64 256, i8* %10) #1
  %11 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %11, i32 0, i32 68
  %black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn, i32 0, i32 15
  %12 = load i32, i32* %black_levels, align 4, !tbaa !44
  %call = call i32 @eprn_bits_for_levels(i32 %12) #3
  store i32 %call, i32* %black_planes, align 4, !tbaa !27
  %13 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn1 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %13, i32 0, i32 68
  %non_black_levels = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn1, i32 0, i32 16
  %14 = load i32, i32* %non_black_levels, align 4, !tbaa !45
  %call2 = call i32 @eprn_bits_for_levels(i32 %14) #3
  store i32 %call2, i32* %non_black_planes, align 4, !tbaa !27
  %15 = load i32, i32* %black_planes, align 4, !tbaa !27
  %16 = load i32, i32* %non_black_planes, align 4, !tbaa !27
  %mul = mul nsw i32 3, %16
  %add = add nsw i32 %15, %mul
  store i32 %add, i32* %planes, align 4, !tbaa !27
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %j, align 4, !tbaa !27
  %18 = load i32, i32* %planes, align 4, !tbaa !27
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %20, i64 %idxprom
  %str = getelementptr inbounds %struct.eprn_OctetString, %struct.eprn_OctetString* %arrayidx, i32 0, i32 0
  %21 = load i8*, i8** %str, align 8, !tbaa !41
  %22 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom4 = sext i32 %22 to i64
  %arrayidx5 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom4
  store i8* %21, i8** %arrayidx5, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %j, align 4, !tbaa !27
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %for.end
  %24 = load i32, i32* %j, align 4, !tbaa !27
  %25 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn7 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %25, i32 0, i32 68
  %bits_per_colorant = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn7, i32 0, i32 23
  %26 = load i32, i32* %bits_per_colorant, align 4, !tbaa !47
  %cmp8 = icmp ult i32 %24, %26
  br i1 %cmp8, label %for.body.10, label %for.end.15

for.body.10:                                      ; preds = %for.cond.6
  %27 = load i8, i8* %comp_mask, align 1, !tbaa !39
  %conv11 = zext i8 %27 to i32
  %shl = shl i32 %conv11, 1
  %or = or i32 %shl, 1
  %conv12 = trunc i32 %or to i8
  store i8 %conv12, i8* %comp_mask, align 1, !tbaa !39
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.10
  %28 = load i32, i32* %j, align 4, !tbaa !27
  %inc14 = add nsw i32 %28, 1
  store i32 %inc14, i32* %j, align 4, !tbaa !27
  br label %for.cond.6

for.end.15:                                       ; preds = %for.cond.6
  store i32 0, i32* %pixels, align 4, !tbaa !27
  store i32 0, i32* %k, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %if.end.113, %for.end.15
  %29 = load i32, i32* %k, align 4, !tbaa !27
  %30 = load i32, i32* %length.addr, align 4, !tbaa !27
  %cmp16 = icmp slt i32 %29, %30
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %comp) #1
  %31 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i32, i32* %pixels, align 4, !tbaa !27
  %rem = srem i32 %33, 8
  %cmp18 = icmp eq i32 %rem, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.26, %if.then
  %34 = load i32, i32* %j, align 4, !tbaa !27
  %35 = load i32, i32* %planes, align 4, !tbaa !27
  %cmp21 = icmp slt i32 %34, %35
  br i1 %cmp21, label %for.body.23, label %for.end.28

for.body.23:                                      ; preds = %for.cond.20
  %36 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom24 = sext i32 %36 to i64
  %arrayidx25 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom24
  %37 = load i8*, i8** %arrayidx25, align 8, !tbaa !1
  store i8 0, i8* %37, align 1, !tbaa !39
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.23
  %38 = load i32, i32* %j, align 4, !tbaa !27
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, i32* %j, align 4, !tbaa !27
  br label %for.cond.20

for.end.28:                                       ; preds = %for.cond.20
  br label %if.end

if.end:                                           ; preds = %for.end.28, %while.body
  store i32 0, i32* %j, align 4, !tbaa !27
  %39 = load i32, i32* %k, align 4, !tbaa !27
  %idxprom29 = sext i32 %39 to i64
  %40 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %40, i64 %idxprom29
  %41 = load i8, i8* %arrayidx30, align 1, !tbaa !39
  %conv31 = zext i8 %41 to i64
  store i64 %conv31, i64* %pixel, align 8, !tbaa !29
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %42 = load i32, i32* %j, align 4, !tbaa !27
  %inc32 = add nsw i32 %42, 1
  store i32 %inc32, i32* %j, align 4, !tbaa !27
  %43 = load i32, i32* %k, align 4, !tbaa !27
  %inc33 = add nsw i32 %43, 1
  store i32 %inc33, i32* %k, align 4, !tbaa !27
  %44 = load i32, i32* %j, align 4, !tbaa !27
  %45 = load i32, i32* %octets_per_pixel, align 4, !tbaa !27
  %cmp34 = icmp sge i32 %44, %45
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.body
  br label %do.end

if.end.37:                                        ; preds = %do.body
  %46 = load i64, i64* %pixel, align 8, !tbaa !29
  %shl38 = shl i64 %46, 8
  %47 = load i32, i32* %k, align 4, !tbaa !27
  %idxprom39 = sext i32 %47 to i64
  %48 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %48, i64 %idxprom39
  %49 = load i8, i8* %arrayidx40, align 1, !tbaa !39
  %conv41 = zext i8 %49 to i64
  %or42 = or i64 %shl38, %conv41
  store i64 %or42, i64* %pixel, align 8, !tbaa !29
  br label %do.cond

do.cond:                                          ; preds = %if.end.37
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.36
  %50 = load i64, i64* %pixel, align 8, !tbaa !29
  %51 = load i8, i8* %comp_mask, align 1, !tbaa !39
  %conv43 = zext i8 %51 to i64
  %and = and i64 %50, %conv43
  %conv44 = trunc i64 %and to i8
  store i8 %conv44, i8* %comp, align 1, !tbaa !39
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.61, %do.end
  %52 = load i32, i32* %j, align 4, !tbaa !27
  %53 = load i32, i32* %black_planes, align 4, !tbaa !27
  %cmp46 = icmp slt i32 %52, %53
  br i1 %cmp46, label %for.body.48, label %for.end.63

for.body.48:                                      ; preds = %for.cond.45
  %54 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom49 = sext i32 %54 to i64
  %arrayidx50 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom49
  %55 = load i8*, i8** %arrayidx50, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !39
  %conv51 = zext i8 %56 to i32
  %shl52 = shl i32 %conv51, 1
  %57 = load i8, i8* %comp, align 1, !tbaa !39
  %conv53 = zext i8 %57 to i32
  %and54 = and i32 %conv53, 1
  %or55 = or i32 %shl52, %and54
  %conv56 = trunc i32 %or55 to i8
  %58 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom57 = sext i32 %58 to i64
  %arrayidx58 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom57
  %59 = load i8*, i8** %arrayidx58, align 8, !tbaa !1
  store i8 %conv56, i8* %59, align 1, !tbaa !39
  %60 = load i8, i8* %comp, align 1, !tbaa !39
  %conv59 = zext i8 %60 to i32
  %shr = ashr i32 %conv59, 1
  %conv60 = trunc i32 %shr to i8
  store i8 %conv60, i8* %comp, align 1, !tbaa !39
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.48
  %61 = load i32, i32* %j, align 4, !tbaa !27
  %inc62 = add nsw i32 %61, 1
  store i32 %inc62, i32* %j, align 4, !tbaa !27
  br label %for.cond.45

for.end.63:                                       ; preds = %for.cond.45
  store i32 1, i32* %l, align 4, !tbaa !27
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.96, %for.end.63
  %62 = load i32, i32* %l, align 4, !tbaa !27
  %cmp65 = icmp slt i32 %62, 4
  br i1 %cmp65, label %for.body.67, label %for.end.98

for.body.67:                                      ; preds = %for.cond.64
  %63 = load i64, i64* %pixel, align 8, !tbaa !29
  %64 = load i32, i32* %l, align 4, !tbaa !27
  %65 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn68 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %65, i32 0, i32 68
  %bits_per_colorant69 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn68, i32 0, i32 23
  %66 = load i32, i32* %bits_per_colorant69, align 4, !tbaa !47
  %mul70 = mul i32 %64, %66
  %sh_prom = zext i32 %mul70 to i64
  %shr71 = lshr i64 %63, %sh_prom
  %67 = load i8, i8* %comp_mask, align 1, !tbaa !39
  %conv72 = zext i8 %67 to i64
  %and73 = and i64 %shr71, %conv72
  %conv74 = trunc i64 %and73 to i8
  store i8 %conv74, i8* %comp, align 1, !tbaa !39
  store i32 0, i32* %m, align 4, !tbaa !27
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.92, %for.body.67
  %68 = load i32, i32* %m, align 4, !tbaa !27
  %69 = load i32, i32* %non_black_planes, align 4, !tbaa !27
  %cmp76 = icmp slt i32 %68, %69
  br i1 %cmp76, label %for.body.78, label %for.end.95

for.body.78:                                      ; preds = %for.cond.75
  %70 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom79 = sext i32 %70 to i64
  %arrayidx80 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom79
  %71 = load i8*, i8** %arrayidx80, align 8, !tbaa !1
  %72 = load i8, i8* %71, align 1, !tbaa !39
  %conv81 = zext i8 %72 to i32
  %shl82 = shl i32 %conv81, 1
  %73 = load i8, i8* %comp, align 1, !tbaa !39
  %conv83 = zext i8 %73 to i32
  %and84 = and i32 %conv83, 1
  %or85 = or i32 %shl82, %and84
  %conv86 = trunc i32 %or85 to i8
  %74 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom87 = sext i32 %74 to i64
  %arrayidx88 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom87
  %75 = load i8*, i8** %arrayidx88, align 8, !tbaa !1
  store i8 %conv86, i8* %75, align 1, !tbaa !39
  %76 = load i8, i8* %comp, align 1, !tbaa !39
  %conv89 = zext i8 %76 to i32
  %shr90 = ashr i32 %conv89, 1
  %conv91 = trunc i32 %shr90 to i8
  store i8 %conv91, i8* %comp, align 1, !tbaa !39
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.78
  %77 = load i32, i32* %m, align 4, !tbaa !27
  %inc93 = add nsw i32 %77, 1
  store i32 %inc93, i32* %m, align 4, !tbaa !27
  %78 = load i32, i32* %j, align 4, !tbaa !27
  %inc94 = add nsw i32 %78, 1
  store i32 %inc94, i32* %j, align 4, !tbaa !27
  br label %for.cond.75

for.end.95:                                       ; preds = %for.cond.75
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end.95
  %79 = load i32, i32* %l, align 4, !tbaa !27
  %inc97 = add nsw i32 %79, 1
  store i32 %inc97, i32* %l, align 4, !tbaa !27
  br label %for.cond.64

for.end.98:                                       ; preds = %for.cond.64
  %80 = load i32, i32* %pixels, align 4, !tbaa !27
  %inc99 = add nsw i32 %80, 1
  store i32 %inc99, i32* %pixels, align 4, !tbaa !27
  %81 = load i32, i32* %pixels, align 4, !tbaa !27
  %rem100 = srem i32 %81, 8
  %cmp101 = icmp eq i32 %rem100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.113

if.then.103:                                      ; preds = %for.end.98
  store i32 0, i32* %j, align 4, !tbaa !27
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.110, %if.then.103
  %82 = load i32, i32* %j, align 4, !tbaa !27
  %83 = load i32, i32* %planes, align 4, !tbaa !27
  %cmp105 = icmp slt i32 %82, %83
  br i1 %cmp105, label %for.body.107, label %for.end.112

for.body.107:                                     ; preds = %for.cond.104
  %84 = load i32, i32* %j, align 4, !tbaa !27
  %idxprom108 = sext i32 %84 to i64
  %arrayidx109 = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i64 %idxprom108
  %85 = load i8*, i8** %arrayidx109, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr, i8** %arrayidx109, align 8, !tbaa !1
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.107
  %86 = load i32, i32* %j, align 4, !tbaa !27
  %inc111 = add nsw i32 %86, 1
  store i32 %inc111, i32* %j, align 4, !tbaa !27
  br label %for.cond.104

for.end.112:                                      ; preds = %for.cond.104
  br label %if.end.113

if.end.113:                                       ; preds = %for.end.112, %for.end.98
  %87 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  call void @llvm.lifetime.end(i64 1, i8* %comp) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %89 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn114 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %89, i32 0, i32 68
  %colour_model = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn114, i32 0, i32 14
  %90 = load i32, i32* %colour_model, align 4, !tbaa !30
  %cmp115 = icmp eq i32 %90, 1
  %conv116 = zext i1 %cmp115 to i32
  %91 = load %struct.eprn_Device*, %struct.eprn_Device** %dev.addr, align 8, !tbaa !1
  %eprn117 = getelementptr inbounds %struct.eprn_Device, %struct.eprn_Device* %91, i32 0, i32 68
  %non_black_levels118 = getelementptr inbounds %struct.s_eprn_Device, %struct.s_eprn_Device* %eprn117, i32 0, i32 16
  %92 = load i32, i32* %non_black_levels118, align 4, !tbaa !45
  %93 = load i32, i32* %planes, align 4, !tbaa !27
  %94 = load %struct.eprn_OctetString*, %struct.eprn_OctetString** %plane.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [32 x i8*], [32 x i8*]* %ptr, i32 0, i32 0
  %95 = load i32, i32* %pixels, align 4, !tbaa !27
  call void @eprn_finalize(i32 %conv116, i32 %92, i32 %93, %struct.eprn_OctetString* %94, i8** %arraydecay, i32 %95) #3
  %96 = bitcast [32 x i8*]* %ptr to i8*
  call void @llvm.lifetime.end(i64 256, i8* %96) #1
  call void @llvm.lifetime.end(i64 1, i8* %comp_mask) #1
  %97 = bitcast i32* %planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %octets_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %non_black_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %black_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
!5 = !{!6, !7, i64 18644}
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
!25 = !{!6, !7, i64 18640}
!26 = !{!6, !11, i64 108}
!27 = !{!7, !7, i64 0}
!28 = !{!11, !11, i64 0}
!29 = !{!9, !9, i64 0}
!30 = !{!6, !3, i64 18556}
!31 = !{!22, !7, i64 92}
!32 = !{!22, !7, i64 128}
!33 = !{!22, !3, i64 84}
!34 = !{!22, !7, i64 88}
!35 = !{!22, !3, i64 96}
!36 = !{!37, !7, i64 112}
!37 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!38 = !{!37, !7, i64 116}
!39 = !{!3, !3, i64 0}
!40 = !{!24, !7, i64 8}
!41 = !{!24, !2, i64 0}
!42 = !{!6, !7, i64 18648}
!43 = !{!6, !3, i64 18568}
!44 = !{!6, !7, i64 18560}
!45 = !{!6, !7, i64 18564}
!46 = !{i64 0, i64 8, !1, i64 8, i64 4, !27}
!47 = !{!6, !7, i64 18600}
