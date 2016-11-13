; ModuleID = './gdevdljm.bc'
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
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
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

@dljet_mono_print_page_copies.from2to3 = internal constant i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [6 x i8] c"\1B*b3M\00", align 1
@dljet_mono_print_page_copies.from3to2 = internal constant i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B*b2M\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"hpjet_print_page\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\1B%-12345X@PJL\0D\0A@PJL ENTER LANGUAGE = PCL\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\1BE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\1B&l%dO\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\1B&l%dA\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\1B&l1S\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\1B&l2S\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\1B&l0S\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\1B&l0l0E\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\1B&l%dX\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"\1B*rB\1B*p0x0Y\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\1B*t%dR\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\1B*p+%dY\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\1B*r1A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"\1B*b0W\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\1B*bW\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"\1B*b1Y\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"\1B*b%dY\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"\1B*b%dW\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"\1B*rB\0C\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dljet_mono_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %dots_per_inch, i32 %features, i8* %page_init) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %dots_per_inch.addr = alloca i32, align 4
  %features.addr = alloca i32, align 4
  %page_init.addr = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %dots_per_inch, i32* %dots_per_inch.addr, align 4, !tbaa !5
  store i32 %features, i32* %features.addr, align 4, !tbaa !5
  store i8* %page_init, i8** %page_init.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %2 = load i32, i32* %dots_per_inch.addr, align 4, !tbaa !5
  %3 = load i32, i32* %features.addr, align 4, !tbaa !5
  %4 = load i8*, i8** %page_init.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %page_init.addr, align 8, !tbaa !1
  %call = call i32 @dljet_mono_print_page_copies(%struct.gx_device_printer_s* %0, %struct._IO_FILE* %1, i32 1, i32 %2, i32 %3, i8* %4, i8* %5, i32 0) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @dljet_mono_print_page_copies(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream, i32 %num_copies, i32 %dots_per_inch, i32 %features, i8* %odd_page_init, i8* %even_page_init, i32 %tumble) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %num_copies.addr = alloca i32, align 4
  %dots_per_inch.addr = alloca i32, align 4
  %features.addr = alloca i32, align 4
  %odd_page_init.addr = alloca i8*, align 8
  %even_page_init.addr = alloca i8*, align 8
  %tumble.addr = alloca i32, align 4
  %line_size = alloca i32, align 4
  %line_size_words = alloca i32, align 4
  %storage_size_words = alloca i32, align 4
  %storage = alloca i64*, align 8
  %data_words = alloca i64*, align 8
  %out_row_words = alloca i64*, align 8
  %out_row_alt_words = alloca i64*, align 8
  %prev_row_words = alloca i64*, align 8
  %out_data = alloca i8*, align 8
  %x_dpi = alloca i32, align 4
  %y_dpi = alloca i32, align 4
  %y_dots_per_pixel = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %out_count = alloca i32, align 4
  %compression = alloca i32, align 4
  %penalty_from2to3 = alloca i32, align 4
  %penalty_from3to2 = alloca i32, align 4
  %paper_size = alloca i32, align 4
  %page_orientation = alloca i32, align 4
  %code = alloca i32, align 4
  %dup = alloca i32, align 4
  %dupset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %lnum = alloca i32, align 4
  %num_blank_lines = alloca i32, align 4
  %rmask = alloca i64, align 8
  %end_data = alloca i64*, align 8
  %mode_3ns = alloca i32, align 4
  %count3 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %penalty3 = alloca i32, align 4
  %penalty2 = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !5
  store i32 %dots_per_inch, i32* %dots_per_inch.addr, align 4, !tbaa !5
  store i32 %features, i32* %features.addr, align 4, !tbaa !5
  store i8* %odd_page_init, i8** %odd_page_init.addr, align 8, !tbaa !1
  store i8* %even_page_init, i8** %even_page_init.addr, align 8, !tbaa !1
  store i32 %tumble, i32* %tumble.addr, align 4, !tbaa !5
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_printer_s*
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %4, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %5 = bitcast i32* %line_size_words to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %line_size, align 4, !tbaa !5
  %conv = sext i32 %6 to i64
  %add = add i64 %conv, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %line_size_words, align 4, !tbaa !5
  %7 = bitcast i32* %storage_size_words to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %mul = mul nsw i32 %8, 8
  store i32 %mul, i32* %storage_size_words, align 4, !tbaa !5
  %9 = bitcast i64** %storage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64** %data_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64** %out_row_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64** %out_row_alt_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64** %prev_row_words to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %out_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %17 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv2 = fptosi float %17 to i32
  store i32 %conv2, i32* %x_dpi, align 4, !tbaa !5
  %18 = bitcast i32* %y_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 22
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution3, i32 0, i64 1
  %20 = load float, float* %arrayidx4, align 4, !tbaa !7
  %conv5 = fptosi float %20 to i32
  store i32 %conv5, i32* %y_dpi, align 4, !tbaa !5
  %21 = bitcast i32* %y_dots_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %dots_per_inch.addr, align 4, !tbaa !5
  %23 = load i32, i32* %y_dpi, align 4, !tbaa !5
  %div6 = sdiv i32 %22, %23
  store i32 %div6, i32* %y_dots_per_pixel, align 4, !tbaa !5
  %24 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_printer_s* %25 to %struct.gx_device_s*
  %call7 = call i32 @gdev_prn_print_scan_lines(%struct.gx_device_s* %26) #5
  store i32 %call7, i32* %num_rows, align 4, !tbaa !5
  %27 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %compression to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 -1, i32* %compression, align 4, !tbaa !5
  %29 = bitcast i32* %penalty_from2to3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i8*, i8** @dljet_mono_print_page_copies.from2to3, align 8, !tbaa !1
  %call8 = call i64 @strlen(i8* %30) #6
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, i32* %penalty_from2to3, align 4, !tbaa !5
  %31 = bitcast i32* %penalty_from3to2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i8*, i8** @dljet_mono_print_page_copies.from3to2, align 8, !tbaa !1
  %call10 = call i64 @strlen(i8* %32) #6
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, i32* %penalty_from3to2, align 4, !tbaa !5
  %33 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %35 = bitcast %struct.gx_device_printer_s* %34 to %struct.gx_device_s*
  %call12 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %35) #5
  store i32 %call12, i32* %paper_size, align 4, !tbaa !5
  %36 = bitcast i32* %page_orientation to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gx_device_printer_s* %37 to %struct.gx_device_s*
  %call13 = call i32 @gdev_pcl_page_orientation(%struct.gx_device_s* %38) #5
  store i32 %call13, i32* %page_orientation, align 4, !tbaa !5
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %40 = bitcast i32* %dup to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %Duplex = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 49
  %42 = load i32, i32* %Duplex, align 4, !tbaa !9
  store i32 %42, i32* %dup, align 4, !tbaa !5
  %43 = bitcast i32* %dupset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %Duplex_set = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %44, i32 0, i32 50
  %45 = load i32, i32* %Duplex_set, align 4, !tbaa !25
  %cmp = icmp sge i32 %45, 0
  %conv14 = zext i1 %cmp to i32
  store i32 %conv14, i32* %dupset, align 4, !tbaa !5
  %46 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %cmp15 = icmp ne i32 %46, 1
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %47 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and = and i32 %47, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %48 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %50 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call17 = call i32 @gx_default_print_page_copies(%struct.gx_device_printer_s* %48, %struct._IO_FILE* %49, i32 %50) #5
  store i32 %call17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end:                                           ; preds = %land.lhs.true, %entry
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !26
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %53 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !27
  %54 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %54, i32 0, i32 3
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !26
  %56 = load i32, i32* %storage_size_words, align 4, !tbaa !5
  %call19 = call i8* %53(%struct.gs_memory_s* %55, i32 %56, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #5
  %57 = bitcast i8* %call19 to i64*
  store i64* %57, i64** %storage, align 8, !tbaa !1
  %58 = load i64*, i64** %storage, align 8, !tbaa !1
  %cmp20 = icmp eq i64* %58, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end.23:                                        ; preds = %if.end
  %59 = load i64*, i64** %storage, align 8, !tbaa !1
  store i64* %59, i64** %data_words, align 8, !tbaa !1
  %60 = load i64*, i64** %data_words, align 8, !tbaa !1
  %61 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %mul24 = mul nsw i32 %61, 2
  %idx.ext = sext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds i64, i64* %60, i64 %idx.ext
  store i64* %add.ptr, i64** %out_row_words, align 8, !tbaa !1
  %62 = load i64*, i64** %out_row_words, align 8, !tbaa !1
  %63 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %mul25 = mul nsw i32 %63, 2
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds i64, i64* %62, i64 %idx.ext26
  store i64* %add.ptr27, i64** %out_row_alt_words, align 8, !tbaa !1
  %64 = load i64*, i64** %out_row_alt_words, align 8, !tbaa !1
  %65 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %mul28 = mul nsw i32 %65, 2
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i64, i64* %64, i64 %idx.ext29
  store i64* %add.ptr30, i64** %prev_row_words, align 8, !tbaa !1
  %66 = load i64*, i64** %data_words, align 8, !tbaa !1
  %67 = bitcast i64* %66 to i8*
  %68 = load i32, i32* %storage_size_words, align 4, !tbaa !5
  %conv31 = zext i32 %68 to i64
  %mul32 = mul i64 %conv31, 8
  %call33 = call i8* @memset(i8* %67, i32 0, i64 %mul32) #7
  %69 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %69, i32 0, i32 26
  %70 = load i64, i64* %PageCount, align 8, !tbaa !30
  %cmp34 = icmp eq i64 %70, 0
  br i1 %cmp34, label %if.then.36, label %if.end.78

if.then.36:                                       ; preds = %if.end.23
  %71 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and37 = and i32 %71, 512
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.then.36
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call40 = call i32 @fputs(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %72) #5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.then.36
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call42 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %73) #5
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %75 = load i32, i32* %page_orientation, align 4, !tbaa !5
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %75) #5
  %76 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and44 = and i32 %76, 128
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.41
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %78 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %78) #5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.41
  %79 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and49 = and i32 %79, 64
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.77

if.then.51:                                       ; preds = %if.end.48
  %80 = load i32, i32* %dupset, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %80, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.else

land.lhs.true.53:                                 ; preds = %if.then.51
  %81 = load i32, i32* %dup, align 4, !tbaa !5
  %tobool54 = icmp ne i32 %81, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.else

land.lhs.true.55:                                 ; preds = %land.lhs.true.53
  %82 = load i32, i32* %tumble.addr, align 4, !tbaa !5
  %tobool56 = icmp ne i32 %82, 0
  br i1 %tobool56, label %if.else, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true.55
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call58 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %83) #5
  br label %if.end.76

if.else:                                          ; preds = %land.lhs.true.55, %land.lhs.true.53, %if.then.51
  %84 = load i32, i32* %dupset, align 4, !tbaa !5
  %tobool59 = icmp ne i32 %84, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.else.66

land.lhs.true.60:                                 ; preds = %if.else
  %85 = load i32, i32* %dup, align 4, !tbaa !5
  %tobool61 = icmp ne i32 %85, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.66

land.lhs.true.62:                                 ; preds = %land.lhs.true.60
  %86 = load i32, i32* %tumble.addr, align 4, !tbaa !5
  %tobool63 = icmp ne i32 %86, 0
  br i1 %tobool63, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %land.lhs.true.62
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call65 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %87) #5
  br label %if.end.75

if.else.66:                                       ; preds = %land.lhs.true.62, %land.lhs.true.60, %if.else
  %88 = load i32, i32* %dupset, align 4, !tbaa !5
  %tobool67 = icmp ne i32 %88, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.72

land.lhs.true.68:                                 ; preds = %if.else.66
  %89 = load i32, i32* %dup, align 4, !tbaa !5
  %tobool69 = icmp ne i32 %89, 0
  br i1 %tobool69, label %if.else.72, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.68
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call71 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %90) #5
  br label %if.end.74

if.else.72:                                       ; preds = %land.lhs.true.68, %if.else.66
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call73 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %91) #5
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.70
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.64
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.57
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.48
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.23
  %92 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and79 = and i32 %92, 64
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.103

land.lhs.true.81:                                 ; preds = %if.end.78
  %93 = load i32, i32* %dupset, align 4, !tbaa !5
  %tobool82 = icmp ne i32 %93, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.else.103

land.lhs.true.83:                                 ; preds = %land.lhs.true.81
  %94 = load i32, i32* %dup, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %94, 0
  br i1 %tobool84, label %if.then.85, label %if.else.103

if.then.85:                                       ; preds = %land.lhs.true.83
  %95 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount86 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %95, i32 0, i32 26
  %96 = load i64, i64* %PageCount86, align 8, !tbaa !30
  %97 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %conv87 = sext i32 %97 to i64
  %div88 = sdiv i64 %96, %conv87
  %rem = srem i64 %div88, 2
  %cmp89 = icmp eq i64 %rem, 0
  br i1 %cmp89, label %if.then.91, label %if.else.100

if.then.91:                                       ; preds = %if.then.85
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %99 = load i32, i32* %page_orientation, align 4, !tbaa !5
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %99) #5
  %100 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and93 = and i32 %100, 128
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.then.91
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %102 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %102) #5
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.then.91
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call98 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %103) #5
  %104 = load i8*, i8** %odd_page_init.addr, align 8, !tbaa !1
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call99 = call i32 @fputs(i8* %104, %struct._IO_FILE* %105) #5
  br label %if.end.102

if.else.100:                                      ; preds = %if.then.85
  %106 = load i8*, i8** %even_page_init.addr, align 8, !tbaa !1
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call101 = call i32 @fputs(i8* %106, %struct._IO_FILE* %107) #5
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.100, %if.end.97
  br label %if.end.112

if.else.103:                                      ; preds = %land.lhs.true.83, %land.lhs.true.81, %if.end.78
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %109 = load i32, i32* %page_orientation, align 4, !tbaa !5
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %109) #5
  %110 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and105 = and i32 %110, 128
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.else.103
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %112 = load i32, i32* %paper_size, align 4, !tbaa !5
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %112) #5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.else.103
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call110 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %113) #5
  %114 = load i8*, i8** %odd_page_init.addr, align 8, !tbaa !1
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call111 = call i32 @fputs(i8* %114, %struct._IO_FILE* %115) #5
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.109, %if.end.102
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %117 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %117) #5
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call114 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %118) #5
  %119 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and115 = and i32 %119, 32
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %if.end.112
  %120 = load i8*, i8** %odd_page_init.addr, align 8, !tbaa !1
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call118 = call i32 @fputs(i8* %120, %struct._IO_FILE* %121) #5
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %123 = load i32, i32* %num_copies.addr, align 4, !tbaa !5
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %123) #5
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %if.end.112
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %125 = load i32, i32* %x_dpi, align 4, !tbaa !5
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 %125) #5
  %126 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #1
  %127 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #1
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !5
  %128 = bitcast i64* %rmask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #1
  %129 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %129, i32 0, i32 13
  %130 = load i32, i32* %width, align 4, !tbaa !31
  %sub122 = sub nsw i32 0, %130
  %conv123 = sext i32 %sub122 to i64
  %and124 = and i64 %conv123, 63
  %shl = shl i64 -1, %and124
  store i64 %shl, i64* %rmask, align 8, !tbaa !32
  store i32 0, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.281, %if.end.120
  %131 = load i32, i32* %lnum, align 4, !tbaa !5
  %132 = load i32, i32* %num_rows, align 4, !tbaa !5
  %cmp125 = icmp slt i32 %131, %132
  br i1 %cmp125, label %for.body, label %for.end.283

for.body:                                         ; preds = %for.cond
  %133 = bitcast i64** %end_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  %134 = load i64*, i64** %data_words, align 8, !tbaa !1
  %135 = load i32, i32* %line_size_words, align 4, !tbaa !5
  %idx.ext127 = sext i32 %135 to i64
  %add.ptr128 = getelementptr inbounds i64, i64* %134, i64 %idx.ext127
  store i64* %add.ptr128, i64** %end_data, align 8, !tbaa !1
  %136 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %137 = load i32, i32* %lnum, align 4, !tbaa !5
  %138 = load i64*, i64** %data_words, align 8, !tbaa !1
  %139 = bitcast i64* %138 to i8*
  %140 = load i32, i32* %line_size, align 4, !tbaa !5
  %call129 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %136, i32 %137, i8* %139, i32 %140) #5
  store i32 %call129, i32* %code, align 4, !tbaa !5
  %141 = load i32, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %141, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.133:                                       ; preds = %for.body
  %142 = load i64, i64* %rmask, align 8, !tbaa !32
  %143 = load i64*, i64** %end_data, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i64, i64* %143, i64 -1
  %144 = load i64, i64* %arrayidx134, align 8, !tbaa !32
  %and135 = and i64 %144, %142
  store i64 %and135, i64* %arrayidx134, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.133
  %145 = load i64*, i64** %end_data, align 8, !tbaa !1
  %146 = load i64*, i64** %data_words, align 8, !tbaa !1
  %cmp136 = icmp ugt i64* %145, %146
  br i1 %cmp136, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %147 = load i64*, i64** %end_data, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i64, i64* %147, i64 -1
  %148 = load i64, i64* %arrayidx138, align 8, !tbaa !32
  %cmp139 = icmp eq i64 %148, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %149 = phi i1 [ false, %while.cond ], [ %cmp139, %land.rhs ]
  br i1 %149, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %150 = load i64*, i64** %end_data, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %150, i32 -1
  store i64* %incdec.ptr, i64** %end_data, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %151 = load i64*, i64** %end_data, align 8, !tbaa !1
  %152 = load i64*, i64** %data_words, align 8, !tbaa !1
  %cmp141 = icmp eq i64* %151, %152
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %while.end
  %153 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %num_blank_lines, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.144:                                       ; preds = %while.end
  %154 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %155 = load i32, i32* %lnum, align 4, !tbaa !5
  %cmp145 = icmp eq i32 %154, %155
  br i1 %cmp145, label %if.then.147, label %if.else.176

if.then.147:                                      ; preds = %if.end.144
  %156 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and148 = and i32 %156, 7
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %if.then.150, label %if.else.158

if.then.150:                                      ; preds = %if.then.147
  %157 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %cmp151 = icmp sgt i32 %157, 0
  br i1 %cmp151, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.then.150
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %159 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %160 = load i32, i32* %y_dots_per_pixel, align 4, !tbaa !5
  %mul154 = mul nsw i32 %159, %160
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %mul154) #5
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.then.150
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call157 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %161) #5
  br label %if.end.175

if.else.158:                                      ; preds = %if.then.147
  %162 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and159 = and i32 %162, 16
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.then.161, label %if.else.168

if.then.161:                                      ; preds = %if.else.158
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call162 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %163) #5
  %164 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %cmp163 = icmp sgt i32 %164, 0
  br i1 %cmp163, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %if.then.161
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call166 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %165) #5
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %if.then.161
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !5
  br label %if.end.174

if.else.168:                                      ; preds = %if.else.158
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call169 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %166) #5
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc, %if.else.168
  %167 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %tobool171 = icmp ne i32 %167, 0
  br i1 %tobool171, label %for.body.172, label %for.end

for.body.172:                                     ; preds = %for.cond.170
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call173 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %168) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body.172
  %169 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %dec = add nsw i32 %169, -1
  store i32 %dec, i32* %num_blank_lines, align 4, !tbaa !5
  br label %for.cond.170

for.end:                                          ; preds = %for.cond.170
  br label %if.end.174

if.end.174:                                       ; preds = %for.end, %if.end.167
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.156
  br label %if.end.238

if.else.176:                                      ; preds = %if.end.144
  %170 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %cmp177 = icmp ne i32 %170, 0
  br i1 %cmp177, label %if.then.179, label %if.end.237

if.then.179:                                      ; preds = %if.else.176
  %171 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %cmp180 = icmp slt i32 %171, 7
  br i1 %cmp180, label %land.lhs.true.182, label %lor.lhs.false

land.lhs.true.182:                                ; preds = %if.then.179
  %172 = load i32, i32* %compression, align 4, !tbaa !5
  %cmp183 = icmp ne i32 %172, 3
  br i1 %cmp183, label %if.then.187, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.182, %if.then.179
  %173 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and185 = and i32 %173, 7
  %tobool186 = icmp ne i32 %and185, 0
  br i1 %tobool186, label %if.else.225, label %if.then.187

if.then.187:                                      ; preds = %lor.lhs.false, %land.lhs.true.182
  %174 = bitcast i32* %mode_3ns to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #1
  %175 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and188 = and i32 %175, 16
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %land.rhs.190, label %land.end.193

land.rhs.190:                                     ; preds = %if.then.187
  %176 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and191 = and i32 %176, 7
  %tobool192 = icmp ne i32 %and191, 0
  %lnot = xor i1 %tobool192, true
  br label %land.end.193

land.end.193:                                     ; preds = %land.rhs.190, %if.then.187
  %177 = phi i1 [ false, %if.then.187 ], [ %lnot, %land.rhs.190 ]
  %land.ext = zext i1 %177 to i32
  store i32 %land.ext, i32* %mode_3ns, align 4, !tbaa !5
  %178 = load i32, i32* %mode_3ns, align 4, !tbaa !5
  %tobool194 = icmp ne i32 %178, 0
  br i1 %tobool194, label %land.lhs.true.195, label %if.end.200

land.lhs.true.195:                                ; preds = %land.end.193
  %179 = load i32, i32* %compression, align 4, !tbaa !5
  %cmp196 = icmp ne i32 %179, 2
  br i1 %cmp196, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %land.lhs.true.195
  %180 = load i8*, i8** @dljet_mono_print_page_copies.from3to2, align 8, !tbaa !1
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call199 = call i32 @fputs(i8* %180, %struct._IO_FILE* %181) #5
  store i32 2, i32* %compression, align 4, !tbaa !5
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.198, %land.lhs.true.195, %land.end.193
  %182 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and201 = and i32 %182, 16
  %tobool202 = icmp ne i32 %and201, 0
  br i1 %tobool202, label %if.then.203, label %if.end.206

if.then.203:                                      ; preds = %if.end.200
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call204 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %183) #5
  %184 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %dec205 = add nsw i32 %184, -1
  store i32 %dec205, i32* %num_blank_lines, align 4, !tbaa !5
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.203, %if.end.200
  %185 = load i32, i32* %mode_3ns, align 4, !tbaa !5
  %tobool207 = icmp ne i32 %185, 0
  br i1 %tobool207, label %if.then.208, label %if.else.216

if.then.208:                                      ; preds = %if.end.206
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.213, %if.then.208
  %186 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %tobool210 = icmp ne i32 %186, 0
  br i1 %tobool210, label %for.body.211, label %for.end.215

for.body.211:                                     ; preds = %for.cond.209
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call212 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %187) #5
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.211
  %188 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %dec214 = add nsw i32 %188, -1
  store i32 %dec214, i32* %num_blank_lines, align 4, !tbaa !5
  br label %for.cond.209

for.end.215:                                      ; preds = %for.cond.209
  br label %if.end.224

if.else.216:                                      ; preds = %if.end.206
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.221, %if.else.216
  %189 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %tobool218 = icmp ne i32 %189, 0
  br i1 %tobool218, label %for.body.219, label %for.end.223

for.body.219:                                     ; preds = %for.cond.217
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call220 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %190) #5
  br label %for.inc.221

for.inc.221:                                      ; preds = %for.body.219
  %191 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %dec222 = add nsw i32 %191, -1
  store i32 %dec222, i32* %num_blank_lines, align 4, !tbaa !5
  br label %for.cond.217

for.end.223:                                      ; preds = %for.cond.217
  br label %if.end.224

if.end.224:                                       ; preds = %for.end.223, %for.end.215
  %192 = bitcast i32* %mode_3ns to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  br label %if.end.234

if.else.225:                                      ; preds = %lor.lhs.false
  %193 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and226 = and i32 %193, 1
  %tobool227 = icmp ne i32 %and226, 0
  br i1 %tobool227, label %if.then.228, label %if.else.231

if.then.228:                                      ; preds = %if.else.225
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %195 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %196 = load i32, i32* %y_dots_per_pixel, align 4, !tbaa !5
  %mul229 = mul nsw i32 %195, %196
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %mul229) #5
  br label %if.end.233

if.else.231:                                      ; preds = %if.else.225
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %198 = load i32, i32* %num_blank_lines, align 4, !tbaa !5
  %call232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 %198) #5
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.231, %if.then.228
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.end.224
  %199 = load i64*, i64** %prev_row_words, align 8, !tbaa !1
  %200 = bitcast i64* %199 to i8*
  %201 = load i32, i32* %line_size, align 4, !tbaa !5
  %conv235 = sext i32 %201 to i64
  %call236 = call i8* @memset(i8* %200, i32 0, i64 %conv235) #7
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.234, %if.else.176
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.end.175
  store i32 0, i32* %num_blank_lines, align 4, !tbaa !5
  %202 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and239 = and i32 %202, 16
  %tobool240 = icmp ne i32 %and239, 0
  br i1 %tobool240, label %if.then.241, label %if.else.269

if.then.241:                                      ; preds = %if.end.238
  %203 = bitcast i32* %count3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %203) #1
  %204 = load i32, i32* %line_size, align 4, !tbaa !5
  %205 = load i64*, i64** %data_words, align 8, !tbaa !1
  %206 = bitcast i64* %205 to i8*
  %207 = load i64*, i64** %prev_row_words, align 8, !tbaa !1
  %208 = bitcast i64* %207 to i8*
  %209 = load i64*, i64** %out_row_words, align 8, !tbaa !1
  %210 = bitcast i64* %209 to i8*
  %call242 = call i32 @gdev_pcl_mode3compress(i32 %204, i8* %206, i8* %208, i8* %210) #5
  store i32 %call242, i32* %count3, align 4, !tbaa !5
  %211 = bitcast i32* %count2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  %212 = load i64*, i64** %data_words, align 8, !tbaa !1
  %213 = load i64*, i64** %end_data, align 8, !tbaa !1
  %214 = load i64*, i64** %out_row_alt_words, align 8, !tbaa !1
  %215 = bitcast i64* %214 to i8*
  %call243 = call i32 @gdev_pcl_mode2compress(i64* %212, i64* %213, i8* %215) #5
  store i32 %call243, i32* %count2, align 4, !tbaa !5
  %216 = bitcast i32* %penalty3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %216) #1
  %217 = load i32, i32* %compression, align 4, !tbaa !5
  %cmp244 = icmp eq i32 %217, 3
  br i1 %cmp244, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.241
  br label %cond.end

cond.false:                                       ; preds = %if.then.241
  %218 = load i32, i32* %penalty_from2to3, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %218, %cond.false ]
  store i32 %cond, i32* %penalty3, align 4, !tbaa !5
  %219 = bitcast i32* %penalty2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %219) #1
  %220 = load i32, i32* %compression, align 4, !tbaa !5
  %cmp246 = icmp eq i32 %220, 2
  br i1 %cmp246, label %cond.true.248, label %cond.false.249

cond.true.248:                                    ; preds = %cond.end
  br label %cond.end.250

cond.false.249:                                   ; preds = %cond.end
  %221 = load i32, i32* %penalty_from3to2, align 4, !tbaa !5
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.249, %cond.true.248
  %cond251 = phi i32 [ 0, %cond.true.248 ], [ %221, %cond.false.249 ]
  store i32 %cond251, i32* %penalty2, align 4, !tbaa !5
  %222 = load i32, i32* %count3, align 4, !tbaa !5
  %223 = load i32, i32* %penalty3, align 4, !tbaa !5
  %add252 = add nsw i32 %222, %223
  %224 = load i32, i32* %count2, align 4, !tbaa !5
  %225 = load i32, i32* %penalty2, align 4, !tbaa !5
  %add253 = add nsw i32 %224, %225
  %cmp254 = icmp slt i32 %add252, %add253
  br i1 %cmp254, label %if.then.256, label %if.else.262

if.then.256:                                      ; preds = %cond.end.250
  %226 = load i32, i32* %compression, align 4, !tbaa !5
  %cmp257 = icmp ne i32 %226, 3
  br i1 %cmp257, label %if.then.259, label %if.end.261

if.then.259:                                      ; preds = %if.then.256
  %227 = load i8*, i8** @dljet_mono_print_page_copies.from2to3, align 8, !tbaa !1
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call260 = call i32 @fputs(i8* %227, %struct._IO_FILE* %228) #5
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.259, %if.then.256
  store i32 3, i32* %compression, align 4, !tbaa !5
  %229 = load i64*, i64** %out_row_words, align 8, !tbaa !1
  %230 = bitcast i64* %229 to i8*
  store i8* %230, i8** %out_data, align 8, !tbaa !1
  %231 = load i32, i32* %count3, align 4, !tbaa !5
  store i32 %231, i32* %out_count, align 4, !tbaa !5
  br label %if.end.268

if.else.262:                                      ; preds = %cond.end.250
  %232 = load i32, i32* %compression, align 4, !tbaa !5
  %cmp263 = icmp ne i32 %232, 2
  br i1 %cmp263, label %if.then.265, label %if.end.267

if.then.265:                                      ; preds = %if.else.262
  %233 = load i8*, i8** @dljet_mono_print_page_copies.from3to2, align 8, !tbaa !1
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call266 = call i32 @fputs(i8* %233, %struct._IO_FILE* %234) #5
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.265, %if.else.262
  store i32 2, i32* %compression, align 4, !tbaa !5
  %235 = load i64*, i64** %out_row_alt_words, align 8, !tbaa !1
  %236 = bitcast i64* %235 to i8*
  store i8* %236, i8** %out_data, align 8, !tbaa !1
  %237 = load i32, i32* %count2, align 4, !tbaa !5
  store i32 %237, i32* %out_count, align 4, !tbaa !5
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.end.261
  %238 = bitcast i32* %penalty2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i32* %penalty3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %count2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %count3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  br label %if.end.277

if.else.269:                                      ; preds = %if.end.238
  %242 = load i32, i32* %features.addr, align 4, !tbaa !5
  %and270 = and i32 %242, 8
  %tobool271 = icmp ne i32 %and270, 0
  br i1 %tobool271, label %if.then.272, label %if.else.274

if.then.272:                                      ; preds = %if.else.269
  %243 = load i64*, i64** %out_row_words, align 8, !tbaa !1
  %244 = bitcast i64* %243 to i8*
  store i8* %244, i8** %out_data, align 8, !tbaa !1
  %245 = load i64*, i64** %data_words, align 8, !tbaa !1
  %246 = load i64*, i64** %end_data, align 8, !tbaa !1
  %247 = load i64*, i64** %out_row_words, align 8, !tbaa !1
  %248 = bitcast i64* %247 to i8*
  %call273 = call i32 @gdev_pcl_mode2compress(i64* %245, i64* %246, i8* %248) #5
  store i32 %call273, i32* %out_count, align 4, !tbaa !5
  br label %if.end.276

if.else.274:                                      ; preds = %if.else.269
  %249 = load i64*, i64** %data_words, align 8, !tbaa !1
  %250 = bitcast i64* %249 to i8*
  store i8* %250, i8** %out_data, align 8, !tbaa !1
  %251 = load i64*, i64** %end_data, align 8, !tbaa !1
  %252 = bitcast i64* %251 to i8*
  %253 = load i64*, i64** %data_words, align 8, !tbaa !1
  %254 = bitcast i64* %253 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %252 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %254 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv275 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv275, i32* %out_count, align 4, !tbaa !5
  br label %if.end.276

if.end.276:                                       ; preds = %if.else.274, %if.then.272
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.end.268
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %256 = load i32, i32* %out_count, align 4, !tbaa !5
  %call278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %255, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 %256) #5
  %257 = load i8*, i8** %out_data, align 8, !tbaa !1
  %258 = load i32, i32* %out_count, align 4, !tbaa !5
  %conv279 = sext i32 %258 to i64
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call280 = call i64 @fwrite(i8* %257, i64 1, i64 %conv279, %struct._IO_FILE* %259) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.277, %if.then.143, %if.then.132
  %260 = bitcast i64** %end_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end.283
    i32 4, label %for.inc.281
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.281

for.inc.281:                                      ; preds = %cleanup.cont, %cleanup
  %261 = load i32, i32* %lnum, align 4, !tbaa !5
  %inc282 = add nsw i32 %261, 1
  store i32 %inc282, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.end.283:                                      ; preds = %cleanup, %for.cond
  %262 = bitcast i64* %rmask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast i32* %num_blank_lines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call284 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %265) #5
  %266 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory285 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %266, i32 0, i32 3
  %267 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory285, align 8, !tbaa !26
  %procs286 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %267, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs286, i32 0, i32 2
  %268 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %269 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory287 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %269, i32 0, i32 3
  %270 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory287, align 8, !tbaa !26
  %271 = load i64*, i64** %storage, align 8, !tbaa !1
  %272 = bitcast i64* %271 to i8*
  call void %268(%struct.gs_memory_s* %270, i8* %272, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #5
  %273 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %273, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.288

cleanup.288:                                      ; preds = %for.end.283, %if.then.22, %if.then
  %274 = bitcast i32* %dupset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast i32* %dup to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i32* %page_orientation to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = bitcast i32* %paper_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast i32* %penalty_from3to2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  %280 = bitcast i32* %penalty_from2to3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i32* %compression to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i32* %out_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast i32* %y_dots_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i32* %y_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast i8** %out_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast i64** %prev_row_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #1
  %289 = bitcast i64** %out_row_alt_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast i64** %out_row_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = bitcast i64** %data_words to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i64** %storage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  %293 = bitcast i32* %storage_size_words to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %line_size_words to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = load i32, i32* %retval
  ret i32 %296

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #2

declare i32 @gdev_prn_print_scan_lines(%struct.gx_device_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @gdev_pcl_paper_size(%struct.gx_device_s*) #2

declare i32 @gdev_pcl_page_orientation(%struct.gx_device_s*) #2

declare i32 @gx_default_print_page_copies(%struct.gx_device_printer_s*, %struct._IO_FILE*, i32) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gdev_pcl_mode3compress(i32, i8*, i8*, i8*) #2

declare i32 @gdev_pcl_mode2compress(i64*, i64*, i8*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !3, i64 0}
!9 = !{!10, !6, i64 17164}
!10 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !24, i64 17256, !6, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !6, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !6, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!25 = !{!10, !6, i64 17168}
!26 = !{!10, !2, i64 24}
!27 = !{!28, !2, i64 88}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!10, !12, i64 928}
!31 = !{!10, !6, i64 832}
!32 = !{!12, !12, i64 0}
!33 = !{!28, !2, i64 24}
