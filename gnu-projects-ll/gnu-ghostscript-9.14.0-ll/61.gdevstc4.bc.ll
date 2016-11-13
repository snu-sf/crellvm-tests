; ModuleID = './gdevstc4.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stcolor_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.stc_s }
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
%struct.stc_s = type { i64, i32, %struct.stc_dither_s*, float*, [4 x float*], [4 x i32], [4 x i16*], [4 x float*], [4 x i32], [4 x i8*], [3 x i32], [3 x i32], %struct.gs_param_string_array_s, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8**, i8*, [4 x i8*], i32 }
%struct.stc_dither_s = type { i8*, {}*, i32, i32, [2 x double] }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }

@escp2c_pick_best.colour = internal global [8 x [3 x i8]] [[3 x i8] zeroinitializer, [3 x i8] c"\FF\00\00", [3 x i8] c"\00\FF\00", [3 x i8] c"\FF\FF\00", [3 x i8] c"\00\00\FF", [3 x i8] c"\FF\00\FF", [3 x i8] c"\00\FF\FF", [3 x i8] c"\FF\FF\FF"], align 16

; Function Attrs: nounwind uwtable
define i32 @stc_fs2(%struct.stcolor_device_s* %sd, i32 %npixel, i8* %in, i8* %buf, i8* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %sd.addr = alloca %struct.stcolor_device_s*, align 8
  %npixel.addr = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %fullcolor_line_size = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %e = alloca i32, align 4
  %l = alloca i32, align 4
  %i2 = alloca i32, align 4
  %below = alloca [3 x [3 x i32]], align 16
  %fb = alloca i32*, align 8
  %b = alloca i32*, align 8
  %bb = alloca i32*, align 8
  %tb = alloca i32*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stcolor_device_s* %sd, %struct.stcolor_device_s** %sd.addr, align 8, !tbaa !1
  store i32 %npixel, i32* %npixel.addr, align 4, !tbaa !5
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fullcolor_line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %1, 3
  store i32 %mul, i32* %fullcolor_line_size, align 4, !tbaa !5
  %2 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else.210

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %5 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  %conv = sext i32 %5 to i64
  %call = call i8* @memset(i8* %4, i32 0, i64 %conv) #4
  br label %if.end.209

if.else:                                          ; preds = %if.then
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast [3 x [3 x i32]]* %below to i8*
  call void @llvm.lifetime.start(i64 36, i8* %12) #1
  %13 = bitcast i32** %fb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32** %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32** %bb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32** %tb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %20, i8** %p, align 8, !tbaa !1
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %conv3 = zext i8 %22 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  %sub = sub nsw i32 %25, 1
  %conv6 = sext i32 %sub to i64
  %call7 = call i32 @memcmp(i8* %23, i8* %add.ptr, i64 %conv6) #5
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end.25

if.then.8:                                        ; preds = %lor.lhs.false, %if.else
  %26 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %26, i8** %p, align 8, !tbaa !1
  %27 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %27, i8** %q, align 8, !tbaa !1
  %28 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  store i32 %28, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %29, 0
  br i1 %tobool9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %conv10 = zext i8 %31 to i32
  %32 = load i8*, i8** %q, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !7
  %conv11 = zext i8 %33 to i32
  %and = and i32 %conv11, 128
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %34 = load i8*, i8** %q, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !7
  %conv13 = zext i8 %35 to i32
  %sub14 = sub nsw i32 %conv13, 256
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %36 = load i8*, i8** %q, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !7
  %conv15 = zext i8 %37 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub14, %cond.true ], [ %conv15, %cond.false ]
  %add = add nsw i32 %conv10, %cond
  store i32 %add, i32* %j, align 4, !tbaa !5
  %38 = load i32, i32* %j, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %38, 255
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %cond.end
  store i32 255, i32* %j, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.18, %cond.end
  %39 = load i32, i32* %j, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %39, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end
  %40 = load i32, i32* %j, align 4, !tbaa !5
  %conv23 = trunc i32 %40 to i8
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 %conv23, i8* %41, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %43 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr24, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %lor.lhs.false
  %44 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %44, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %below, i32 0, i64 2
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i32 0
  store i32* %arraydecay, i32** %fb, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %below, i32 0, i64 1
  %arraydecay27 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx26, i32 0, i32 0
  store i32* %arraydecay27, i32** %b, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %below, i32 0, i64 0
  %arraydecay29 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx28, i32 0, i32 0
  store i32* %arraydecay29, i32** %bb, align 8, !tbaa !1
  %45 = load i32*, i32** %bb, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 0, i32* %arrayidx30, align 4, !tbaa !5
  %46 = load i32*, i32** %bb, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 0, i32* %arrayidx31, align 4, !tbaa !5
  %47 = load i32*, i32** %bb, align 8, !tbaa !1
  store i32 0, i32* %47, align 4, !tbaa !5
  %48 = load i32*, i32** %b, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 0, i32* %arrayidx32, align 4, !tbaa !5
  %49 = load i32*, i32** %b, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 0, i32* %arrayidx33, align 4, !tbaa !5
  %50 = load i32*, i32** %b, align 8, !tbaa !1
  store i32 0, i32* %50, align 4, !tbaa !5
  %51 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sd.addr, align 8, !tbaa !1
  %stc = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %51, i32 0, i32 68
  %dir = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc, i32 0, i32 38
  %52 = load i32, i32* %dir, align 4, !tbaa !8
  %tobool34 = icmp ne i32 %52, 0
  br i1 %tobool34, label %if.then.35, label %if.else.118

if.then.35:                                       ; preds = %if.end.25
  %53 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %53, i8** %p, align 8, !tbaa !1
  %54 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds i8, i8* %54, i64 -3
  store i8* %add.ptr36, i8** %q, align 8, !tbaa !1
  %55 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  store i32 %55, i32* %i, align 4, !tbaa !5
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.106, %if.then.35
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %tobool38 = icmp ne i32 %56, 0
  br i1 %tobool38, label %for.body.39, label %for.end.108

for.body.39:                                      ; preds = %for.cond.37
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %call40 = call i8* @escp2c_pick_best(i8* %57) #6
  store i8* %call40, i8** %cp, align 8, !tbaa !1
  store i32 3, i32* %i2, align 4, !tbaa !5
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.96, %for.body.39
  %58 = load i32, i32* %i2, align 4, !tbaa !5
  %dec42 = add nsw i32 %58, -1
  store i32 %dec42, i32* %i2, align 4, !tbaa !5
  %tobool43 = icmp ne i32 %58, 0
  br i1 %tobool43, label %for.body.44, label %for.end.102

for.body.44:                                      ; preds = %for.cond.41
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !7
  %conv45 = zext i8 %60 to i32
  store i32 %conv45, i32* %j, align 4, !tbaa !5
  %61 = load i8*, i8** %cp, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr46, i8** %cp, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !7
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 %62, i8* %63, align 1, !tbaa !7
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !7
  %conv47 = zext i8 %65 to i32
  %66 = load i32, i32* %j, align 4, !tbaa !5
  %sub48 = sub nsw i32 %66, %conv47
  store i32 %sub48, i32* %j, align 4, !tbaa !5
  %67 = load i32, i32* %j, align 4, !tbaa !5
  %cmp49 = icmp ne i32 %67, 0
  br i1 %cmp49, label %if.then.51, label %if.else.94

if.then.51:                                       ; preds = %for.body.44
  %68 = load i32, i32* %j, align 4, !tbaa !5
  %shr = ashr i32 %68, 1
  store i32 %shr, i32* %e, align 4, !tbaa !5
  %69 = load i32, i32* %j, align 4, !tbaa !5
  %shr52 = ashr i32 %69, 4
  %70 = load i32*, i32** %fb, align 8, !tbaa !1
  store i32 %shr52, i32* %70, align 4, !tbaa !5
  %sub53 = sub nsw i32 %shr, %shr52
  store i32 %sub53, i32* %l, align 4, !tbaa !5
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %cmp54 = icmp sgt i32 %71, 2
  br i1 %cmp54, label %if.then.56, label %if.end.70

if.then.56:                                       ; preds = %if.then.51
  %72 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %72, i64 3
  %73 = load i8, i8* %arrayidx57, align 1, !tbaa !7
  %conv58 = zext i8 %73 to i32
  %74 = load i32, i32* %l, align 4, !tbaa !5
  %add59 = add nsw i32 %conv58, %74
  store i32 %add59, i32* %k, align 4, !tbaa !5
  %75 = load i32, i32* %k, align 4, !tbaa !5
  %cmp60 = icmp sgt i32 %75, 255
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.56
  store i32 255, i32* %k, align 4, !tbaa !5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.then.56
  %76 = load i32, i32* %k, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %76, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.63
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.63
  %77 = load i32, i32* %k, align 4, !tbaa !5
  %conv68 = trunc i32 %77 to i8
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %78, i64 3
  store i8 %conv68, i8* %arrayidx69, align 1, !tbaa !7
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.67, %if.then.51
  %79 = load i32, i32* %e, align 4, !tbaa !5
  %80 = load i32, i32* %j, align 4, !tbaa !5
  %shr71 = ashr i32 %80, 2
  %81 = load i32*, i32** %fb, align 8, !tbaa !1
  %82 = load i32, i32* %81, align 4, !tbaa !5
  %sub72 = sub nsw i32 %shr71, %82
  store i32 %sub72, i32* %l, align 4, !tbaa !5
  %sub73 = sub nsw i32 %79, %sub72
  %83 = load i32*, i32** %b, align 8, !tbaa !1
  %84 = load i32, i32* %83, align 4, !tbaa !5
  %add74 = add nsw i32 %84, %sub73
  store i32 %add74, i32* %83, align 4, !tbaa !5
  %85 = load i32, i32* %i, align 4, !tbaa !5
  %86 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %85, %86
  br i1 %cmp75, label %if.then.77, label %if.end.93

if.then.77:                                       ; preds = %if.end.70
  %87 = load i32*, i32** %bb, align 8, !tbaa !1
  %88 = load i32, i32* %87, align 4, !tbaa !5
  %89 = load i32, i32* %l, align 4, !tbaa !5
  %add78 = add nsw i32 %89, %88
  store i32 %add78, i32* %l, align 4, !tbaa !5
  %90 = load i32, i32* %l, align 4, !tbaa !5
  %cmp79 = icmp sgt i32 %90, 127
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.77
  store i32 127, i32* %l, align 4, !tbaa !5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.then.77
  %91 = load i32, i32* %l, align 4, !tbaa !5
  %cmp83 = icmp slt i32 %91, -128
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.82
  store i32 -128, i32* %l, align 4, !tbaa !5
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.end.82
  %92 = load i32, i32* %l, align 4, !tbaa !5
  %cmp87 = icmp slt i32 %92, 0
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.86
  %93 = load i32, i32* %l, align 4, !tbaa !5
  %add90 = add nsw i32 %93, 256
  store i32 %add90, i32* %l, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.86
  %94 = load i32, i32* %l, align 4, !tbaa !5
  %conv92 = trunc i32 %94 to i8
  %95 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv92, i8* %95, align 1, !tbaa !7
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.91, %if.end.70
  br label %if.end.95

if.else.94:                                       ; preds = %for.body.44
  %96 = load i32*, i32** %fb, align 8, !tbaa !1
  store i32 0, i32* %96, align 4, !tbaa !5
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.end.93
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %97 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr97, i8** %p, align 8, !tbaa !1
  %98 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr98, i8** %q, align 8, !tbaa !1
  %99 = load i32*, i32** %fb, align 8, !tbaa !1
  %incdec.ptr99 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %incdec.ptr99, i32** %fb, align 8, !tbaa !1
  %100 = load i32*, i32** %b, align 8, !tbaa !1
  %incdec.ptr100 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %incdec.ptr100, i32** %b, align 8, !tbaa !1
  %101 = load i32*, i32** %bb, align 8, !tbaa !1
  %incdec.ptr101 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %incdec.ptr101, i32** %bb, align 8, !tbaa !1
  br label %for.cond.41

for.end.102:                                      ; preds = %for.cond.41
  %102 = load i32*, i32** %bb, align 8, !tbaa !1
  %add.ptr103 = getelementptr inbounds i32, i32* %102, i64 -3
  store i32* %add.ptr103, i32** %tb, align 8, !tbaa !1
  %103 = load i32*, i32** %b, align 8, !tbaa !1
  %add.ptr104 = getelementptr inbounds i32, i32* %103, i64 -3
  store i32* %add.ptr104, i32** %bb, align 8, !tbaa !1
  %104 = load i32*, i32** %fb, align 8, !tbaa !1
  %add.ptr105 = getelementptr inbounds i32, i32* %104, i64 -3
  store i32* %add.ptr105, i32** %b, align 8, !tbaa !1
  %105 = load i32*, i32** %tb, align 8, !tbaa !1
  store i32* %105, i32** %fb, align 8, !tbaa !1
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.102
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %sub107 = sub nsw i32 %106, 3
  store i32 %sub107, i32* %i, align 4, !tbaa !5
  br label %for.cond.37

for.end.108:                                      ; preds = %for.cond.37
  %107 = load i32*, i32** %bb, align 8, !tbaa !1
  %108 = load i32, i32* %107, align 4, !tbaa !5
  %conv109 = trunc i32 %108 to i8
  %109 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv109, i8* %109, align 1, !tbaa !7
  %110 = load i32*, i32** %bb, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i32, i32* %110, i64 1
  %111 = load i32, i32* %arrayidx110, align 4, !tbaa !5
  %conv111 = trunc i32 %111 to i8
  %112 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %112, i64 1
  store i8 %conv111, i8* %arrayidx112, align 1, !tbaa !7
  %113 = load i32*, i32** %bb, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i32, i32* %113, i64 2
  %114 = load i32, i32* %arrayidx113, align 4, !tbaa !5
  %conv114 = trunc i32 %114 to i8
  %115 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %115, i64 2
  store i8 %conv114, i8* %arrayidx115, align 1, !tbaa !7
  %116 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sd.addr, align 8, !tbaa !1
  %stc116 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %116, i32 0, i32 68
  %dir117 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc116, i32 0, i32 38
  store i32 0, i32* %dir117, align 4, !tbaa !8
  br label %if.end.208

if.else.118:                                      ; preds = %if.end.25
  %117 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %118 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  %idx.ext = sext i32 %118 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %117, i64 %idx.ext
  %add.ptr120 = getelementptr inbounds i8, i8* %add.ptr119, i64 -1
  store i8* %add.ptr120, i8** %p, align 8, !tbaa !1
  %119 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %120 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  %idx.ext121 = sext i32 %120 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %119, i64 %idx.ext121
  %add.ptr123 = getelementptr inbounds i8, i8* %add.ptr122, i64 2
  store i8* %add.ptr123, i8** %q, align 8, !tbaa !1
  %121 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  store i32 %121, i32* %i, align 4, !tbaa !5
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.196, %if.else.118
  %122 = load i32, i32* %i, align 4, !tbaa !5
  %tobool125 = icmp ne i32 %122, 0
  br i1 %tobool125, label %for.body.126, label %for.end.198

for.body.126:                                     ; preds = %for.cond.124
  %123 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr127 = getelementptr inbounds i8, i8* %123, i64 -2
  %call128 = call i8* @escp2c_pick_best(i8* %add.ptr127) #6
  %add.ptr129 = getelementptr inbounds i8, i8* %call128, i64 2
  store i8* %add.ptr129, i8** %cp, align 8, !tbaa !1
  store i32 3, i32* %i2, align 4, !tbaa !5
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.186, %for.body.126
  %124 = load i32, i32* %i2, align 4, !tbaa !5
  %dec131 = add nsw i32 %124, -1
  store i32 %dec131, i32* %i2, align 4, !tbaa !5
  %tobool132 = icmp ne i32 %124, 0
  br i1 %tobool132, label %for.body.133, label %for.end.192

for.body.133:                                     ; preds = %for.cond.130
  %125 = load i8*, i8** %p, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !7
  %conv134 = zext i8 %126 to i32
  store i32 %conv134, i32* %j, align 4, !tbaa !5
  %127 = load i8*, i8** %cp, align 8, !tbaa !1
  %incdec.ptr135 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %incdec.ptr135, i8** %cp, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !7
  %129 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 %128, i8* %129, align 1, !tbaa !7
  %130 = load i8*, i8** %p, align 8, !tbaa !1
  %131 = load i8, i8* %130, align 1, !tbaa !7
  %conv136 = zext i8 %131 to i32
  %132 = load i32, i32* %j, align 4, !tbaa !5
  %sub137 = sub nsw i32 %132, %conv136
  store i32 %sub137, i32* %j, align 4, !tbaa !5
  %133 = load i32, i32* %j, align 4, !tbaa !5
  %cmp138 = icmp ne i32 %133, 0
  br i1 %cmp138, label %if.then.140, label %if.else.184

if.then.140:                                      ; preds = %for.body.133
  %134 = load i32, i32* %j, align 4, !tbaa !5
  %shr141 = ashr i32 %134, 1
  store i32 %shr141, i32* %e, align 4, !tbaa !5
  %135 = load i32, i32* %j, align 4, !tbaa !5
  %shr142 = ashr i32 %135, 4
  %136 = load i32*, i32** %fb, align 8, !tbaa !1
  store i32 %shr142, i32* %136, align 4, !tbaa !5
  %sub143 = sub nsw i32 %shr141, %shr142
  store i32 %sub143, i32* %l, align 4, !tbaa !5
  %137 = load i32, i32* %i, align 4, !tbaa !5
  %cmp144 = icmp sgt i32 %137, 2
  br i1 %cmp144, label %if.then.146, label %if.end.160

if.then.146:                                      ; preds = %if.then.140
  %138 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %138, i64 -3
  %139 = load i8, i8* %arrayidx147, align 1, !tbaa !7
  %conv148 = zext i8 %139 to i32
  %140 = load i32, i32* %l, align 4, !tbaa !5
  %add149 = add nsw i32 %conv148, %140
  store i32 %add149, i32* %k, align 4, !tbaa !5
  %141 = load i32, i32* %k, align 4, !tbaa !5
  %cmp150 = icmp sgt i32 %141, 255
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.then.146
  store i32 255, i32* %k, align 4, !tbaa !5
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.then.146
  %142 = load i32, i32* %k, align 4, !tbaa !5
  %cmp154 = icmp slt i32 %142, 0
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.153
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %if.end.153
  %143 = load i32, i32* %k, align 4, !tbaa !5
  %conv158 = trunc i32 %143 to i8
  %144 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i8, i8* %144, i64 -3
  store i8 %conv158, i8* %arrayidx159, align 1, !tbaa !7
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.157, %if.then.140
  %145 = load i32, i32* %e, align 4, !tbaa !5
  %146 = load i32, i32* %j, align 4, !tbaa !5
  %shr161 = ashr i32 %146, 2
  %147 = load i32*, i32** %fb, align 8, !tbaa !1
  %148 = load i32, i32* %147, align 4, !tbaa !5
  %sub162 = sub nsw i32 %shr161, %148
  store i32 %sub162, i32* %l, align 4, !tbaa !5
  %sub163 = sub nsw i32 %145, %sub162
  %149 = load i32*, i32** %b, align 8, !tbaa !1
  %150 = load i32, i32* %149, align 4, !tbaa !5
  %add164 = add nsw i32 %150, %sub163
  store i32 %add164, i32* %149, align 4, !tbaa !5
  %151 = load i32, i32* %i, align 4, !tbaa !5
  %152 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  %cmp165 = icmp slt i32 %151, %152
  br i1 %cmp165, label %if.then.167, label %if.end.183

if.then.167:                                      ; preds = %if.end.160
  %153 = load i32*, i32** %bb, align 8, !tbaa !1
  %154 = load i32, i32* %153, align 4, !tbaa !5
  %155 = load i32, i32* %l, align 4, !tbaa !5
  %add168 = add nsw i32 %155, %154
  store i32 %add168, i32* %l, align 4, !tbaa !5
  %156 = load i32, i32* %l, align 4, !tbaa !5
  %cmp169 = icmp sgt i32 %156, 127
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.then.167
  store i32 127, i32* %l, align 4, !tbaa !5
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.then.167
  %157 = load i32, i32* %l, align 4, !tbaa !5
  %cmp173 = icmp slt i32 %157, -128
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.172
  store i32 -128, i32* %l, align 4, !tbaa !5
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.175, %if.end.172
  %158 = load i32, i32* %l, align 4, !tbaa !5
  %cmp177 = icmp slt i32 %158, 0
  br i1 %cmp177, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %if.end.176
  %159 = load i32, i32* %l, align 4, !tbaa !5
  %add180 = add nsw i32 %159, 256
  store i32 %add180, i32* %l, align 4, !tbaa !5
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %if.end.176
  %160 = load i32, i32* %l, align 4, !tbaa !5
  %conv182 = trunc i32 %160 to i8
  %161 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv182, i8* %161, align 1, !tbaa !7
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.181, %if.end.160
  br label %if.end.185

if.else.184:                                      ; preds = %for.body.133
  %162 = load i32*, i32** %fb, align 8, !tbaa !1
  store i32 0, i32* %162, align 4, !tbaa !5
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.184, %if.end.183
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %163 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr187 = getelementptr inbounds i8, i8* %163, i32 -1
  store i8* %incdec.ptr187, i8** %p, align 8, !tbaa !1
  %164 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr188 = getelementptr inbounds i8, i8* %164, i32 -1
  store i8* %incdec.ptr188, i8** %q, align 8, !tbaa !1
  %165 = load i32*, i32** %fb, align 8, !tbaa !1
  %incdec.ptr189 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %incdec.ptr189, i32** %fb, align 8, !tbaa !1
  %166 = load i32*, i32** %b, align 8, !tbaa !1
  %incdec.ptr190 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %incdec.ptr190, i32** %b, align 8, !tbaa !1
  %167 = load i32*, i32** %bb, align 8, !tbaa !1
  %incdec.ptr191 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %incdec.ptr191, i32** %bb, align 8, !tbaa !1
  br label %for.cond.130

for.end.192:                                      ; preds = %for.cond.130
  %168 = load i32*, i32** %bb, align 8, !tbaa !1
  %add.ptr193 = getelementptr inbounds i32, i32* %168, i64 -3
  store i32* %add.ptr193, i32** %tb, align 8, !tbaa !1
  %169 = load i32*, i32** %b, align 8, !tbaa !1
  %add.ptr194 = getelementptr inbounds i32, i32* %169, i64 -3
  store i32* %add.ptr194, i32** %bb, align 8, !tbaa !1
  %170 = load i32*, i32** %fb, align 8, !tbaa !1
  %add.ptr195 = getelementptr inbounds i32, i32* %170, i64 -3
  store i32* %add.ptr195, i32** %b, align 8, !tbaa !1
  %171 = load i32*, i32** %tb, align 8, !tbaa !1
  store i32* %171, i32** %fb, align 8, !tbaa !1
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.end.192
  %172 = load i32, i32* %i, align 4, !tbaa !5
  %sub197 = sub nsw i32 %172, 3
  store i32 %sub197, i32* %i, align 4, !tbaa !5
  br label %for.cond.124

for.end.198:                                      ; preds = %for.cond.124
  %173 = load i32*, i32** %bb, align 8, !tbaa !1
  %174 = load i32, i32* %173, align 4, !tbaa !5
  %conv199 = trunc i32 %174 to i8
  %175 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv199, i8* %175, align 1, !tbaa !7
  %176 = load i32*, i32** %bb, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i32, i32* %176, i64 1
  %177 = load i32, i32* %arrayidx200, align 4, !tbaa !5
  %conv201 = trunc i32 %177 to i8
  %178 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i8, i8* %178, i64 1
  store i8 %conv201, i8* %arrayidx202, align 1, !tbaa !7
  %179 = load i32*, i32** %bb, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i32, i32* %179, i64 2
  %180 = load i32, i32* %arrayidx203, align 4, !tbaa !5
  %conv204 = trunc i32 %180 to i8
  %181 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %181, i64 2
  store i8 %conv204, i8* %arrayidx205, align 1, !tbaa !7
  %182 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sd.addr, align 8, !tbaa !1
  %stc206 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %182, i32 0, i32 68
  %dir207 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc206, i32 0, i32 38
  store i32 1, i32* %dir207, align 4, !tbaa !8
  br label %if.end.208

if.end.208:                                       ; preds = %for.end.198, %for.end.108
  %183 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %184 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %185 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  call void @escp2c_conv_stc(i8* %183, i8* %184, i32 %185) #6
  %186 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast i32** %tb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast i32** %bb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i32** %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i32** %fb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast [3 x [3 x i32]]* %below to i8*
  call void @llvm.lifetime.end(i64 36, i8* %193) #1
  %194 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.2
  br label %if.end.236

if.else.210:                                      ; preds = %entry
  %200 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sd.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %200, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %201 = load i32, i32* %num_components, align 4, !tbaa !27
  %cmp211 = icmp ne i32 %201, 3
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.else.210
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.214:                                       ; preds = %if.else.210
  %202 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sd.addr, align 8, !tbaa !1
  %stc215 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %202, i32 0, i32 68
  %dither = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc215, i32 0, i32 2
  %203 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither, align 8, !tbaa !28
  %cmp216 = icmp eq %struct.stc_dither_s* %203, null
  br i1 %cmp216, label %if.then.224, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %if.end.214
  %204 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sd.addr, align 8, !tbaa !1
  %stc219 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %204, i32 0, i32 68
  %dither220 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc219, i32 0, i32 2
  %205 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither220, align 8, !tbaa !28
  %flags = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %205, i32 0, i32 2
  %206 = load i32, i32* %flags, align 4, !tbaa !29
  %and221 = and i32 %206, 24
  %cmp222 = icmp ne i32 %and221, 8
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %lor.lhs.false.218, %if.end.214
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.225:                                       ; preds = %lor.lhs.false.218
  %207 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sd.addr, align 8, !tbaa !1
  %stc226 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %207, i32 0, i32 68
  %dither227 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc226, i32 0, i32 2
  %208 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither227, align 8, !tbaa !28
  %flags228 = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %208, i32 0, i32 2
  %209 = load i32, i32* %flags228, align 4, !tbaa !29
  %div = udiv i32 %209, 256
  %cmp229 = icmp ult i32 %div, 1
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.end.225
  store i32 -3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.232:                                       ; preds = %if.end.225
  %210 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %211 = load i32, i32* %fullcolor_line_size, align 4, !tbaa !5
  %sub233 = sub nsw i32 0, %211
  %conv234 = sext i32 %sub233 to i64
  %call235 = call i8* @memset(i8* %210, i32 0, i64 %conv234) #4
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.232, %if.end.209
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.236, %if.then.231, %if.then.224, %if.then.213
  %212 = bitcast i32* %fullcolor_line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = load i32, i32* %retval
  ret i32 %213
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i8* @escp2c_pick_best(i8* %col) #0 {
entry:
  %col.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dz = alloca i32, align 4
  %dz2 = alloca i32, align 4
  %dx2 = alloca i32, align 4
  %dx3 = alloca i32, align 4
  %dx4 = alloca i32, align 4
  %p = alloca i8*, align 8
  %md = alloca i64, align 8
  %d = alloca i64, align 8
  store i8* %col, i8** %col.addr, align 8, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %z to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %dz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %dz2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %dx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %dx3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %dx4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %md to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 16777216, i64* %md, align 8, !tbaa !31
  %13 = load i8*, i8** %col.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %x, align 4, !tbaa !5
  %15 = load i8*, i8** %col.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %conv2 = zext i8 %16 to i32
  store i32 %conv2, i32* %y, align 4, !tbaa !5
  %17 = load i8*, i8** %col.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %18 to i32
  store i32 %conv4, i32* %z, align 4, !tbaa !5
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %20 = load i32, i32* %x, align 4, !tbaa !5
  %21 = load i32, i32* %y, align 4, !tbaa !5
  %shr = ashr i32 %21, 1
  %sub = sub nsw i32 %20, %shr
  %mul = mul nsw i32 %19, %sub
  store i32 %mul, i32* %dx, align 4, !tbaa !5
  %22 = load i32, i32* %y, align 4, !tbaa !5
  %23 = load i32, i32* %y, align 4, !tbaa !5
  %24 = load i32, i32* %z, align 4, !tbaa !5
  %shr5 = ashr i32 %24, 1
  %sub6 = sub nsw i32 %23, %shr5
  %mul7 = mul nsw i32 %22, %sub6
  store i32 %mul7, i32* %dy, align 4, !tbaa !5
  %25 = load i32, i32* %z, align 4, !tbaa !5
  %26 = load i32, i32* %z, align 4, !tbaa !5
  %27 = load i32, i32* %x, align 4, !tbaa !5
  %shr8 = ashr i32 %27, 1
  %sub9 = sub nsw i32 %26, %shr8
  %mul10 = mul nsw i32 %25, %sub9
  store i32 %mul10, i32* %dz, align 4, !tbaa !5
  %28 = load i32, i32* %dx, align 4, !tbaa !5
  %29 = load i32, i32* %dy, align 4, !tbaa !5
  %add = add nsw i32 %28, %29
  %30 = load i32, i32* %dz, align 4, !tbaa !5
  %add11 = add nsw i32 %add, %30
  %conv12 = sext i32 %add11 to i64
  store i64 %conv12, i64* %md, align 8, !tbaa !31
  store i8* getelementptr inbounds ([8 x [3 x i8]], [8 x [3 x i8]]* @escp2c_pick_best.colour, i32 0, i64 0, i32 0), i8** %p, align 8, !tbaa !1
  %31 = load i32, i32* %x, align 4, !tbaa !5
  %sub13 = sub nsw i32 %31, 255
  store i32 %sub13, i32* %x, align 4, !tbaa !5
  %32 = load i32, i32* %x, align 4, !tbaa !5
  %33 = load i32, i32* %x, align 4, !tbaa !5
  %34 = load i32, i32* %y, align 4, !tbaa !5
  %shr14 = ashr i32 %34, 1
  %sub15 = sub nsw i32 %33, %shr14
  %mul16 = mul nsw i32 %32, %sub15
  store i32 %mul16, i32* %dx2, align 4, !tbaa !5
  %35 = load i32, i32* %z, align 4, !tbaa !5
  %36 = load i32, i32* %z, align 4, !tbaa !5
  %37 = load i32, i32* %x, align 4, !tbaa !5
  %shr17 = ashr i32 %37, 1
  %sub18 = sub nsw i32 %36, %shr17
  %mul19 = mul nsw i32 %35, %sub18
  store i32 %mul19, i32* %dz2, align 4, !tbaa !5
  %38 = load i32, i32* %dx2, align 4, !tbaa !5
  %39 = load i32, i32* %dy, align 4, !tbaa !5
  %add20 = add nsw i32 %38, %39
  %40 = load i32, i32* %dz2, align 4, !tbaa !5
  %add21 = add nsw i32 %add20, %40
  %conv22 = sext i32 %add21 to i64
  store i64 %conv22, i64* %d, align 8, !tbaa !31
  %41 = load i64, i64* %md, align 8, !tbaa !31
  %cmp = icmp slt i64 %conv22, %41
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %42 = load i64, i64* %d, align 8, !tbaa !31
  store i64 %42, i64* %md, align 8, !tbaa !31
  store i8* getelementptr inbounds ([8 x [3 x i8]], [8 x [3 x i8]]* @escp2c_pick_best.colour, i32 0, i64 1, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %43 = load i32, i32* %y, align 4, !tbaa !5
  %sub24 = sub nsw i32 %43, 255
  store i32 %sub24, i32* %y, align 4, !tbaa !5
  %44 = load i32, i32* %x, align 4, !tbaa !5
  %45 = load i32, i32* %x, align 4, !tbaa !5
  %46 = load i32, i32* %y, align 4, !tbaa !5
  %shr25 = ashr i32 %46, 1
  %sub26 = sub nsw i32 %45, %shr25
  %mul27 = mul nsw i32 %44, %sub26
  store i32 %mul27, i32* %dx3, align 4, !tbaa !5
  %47 = load i32, i32* %y, align 4, !tbaa !5
  %48 = load i32, i32* %y, align 4, !tbaa !5
  %49 = load i32, i32* %z, align 4, !tbaa !5
  %shr28 = ashr i32 %49, 1
  %sub29 = sub nsw i32 %48, %shr28
  %mul30 = mul nsw i32 %47, %sub29
  store i32 %mul30, i32* %dy, align 4, !tbaa !5
  %50 = load i32, i32* %dx3, align 4, !tbaa !5
  %51 = load i32, i32* %dy, align 4, !tbaa !5
  %add31 = add nsw i32 %50, %51
  %52 = load i32, i32* %dz2, align 4, !tbaa !5
  %add32 = add nsw i32 %add31, %52
  %conv33 = sext i32 %add32 to i64
  store i64 %conv33, i64* %d, align 8, !tbaa !31
  %53 = load i64, i64* %md, align 8, !tbaa !31
  %cmp34 = icmp slt i64 %conv33, %53
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end
  %54 = load i64, i64* %d, align 8, !tbaa !31
  store i64 %54, i64* %md, align 8, !tbaa !31
  store i8* getelementptr inbounds ([8 x [3 x i8]], [8 x [3 x i8]]* @escp2c_pick_best.colour, i32 0, i64 3, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end
  %55 = load i32, i32* %x, align 4, !tbaa !5
  %add38 = add nsw i32 %55, 255
  store i32 %add38, i32* %x, align 4, !tbaa !5
  %56 = load i32, i32* %x, align 4, !tbaa !5
  %57 = load i32, i32* %x, align 4, !tbaa !5
  %58 = load i32, i32* %y, align 4, !tbaa !5
  %shr39 = ashr i32 %58, 1
  %sub40 = sub nsw i32 %57, %shr39
  %mul41 = mul nsw i32 %56, %sub40
  store i32 %mul41, i32* %dx4, align 4, !tbaa !5
  %59 = load i32, i32* %dx4, align 4, !tbaa !5
  %60 = load i32, i32* %dy, align 4, !tbaa !5
  %add42 = add nsw i32 %59, %60
  %61 = load i32, i32* %dz, align 4, !tbaa !5
  %add43 = add nsw i32 %add42, %61
  %conv44 = sext i32 %add43 to i64
  store i64 %conv44, i64* %d, align 8, !tbaa !31
  %62 = load i64, i64* %md, align 8, !tbaa !31
  %cmp45 = icmp slt i64 %conv44, %62
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.37
  %63 = load i64, i64* %d, align 8, !tbaa !31
  store i64 %63, i64* %md, align 8, !tbaa !31
  store i8* getelementptr inbounds ([8 x [3 x i8]], [8 x [3 x i8]]* @escp2c_pick_best.colour, i32 0, i64 2, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.37
  %64 = load i32, i32* %z, align 4, !tbaa !5
  %sub49 = sub nsw i32 %64, 255
  store i32 %sub49, i32* %z, align 4, !tbaa !5
  %65 = load i32, i32* %y, align 4, !tbaa !5
  %66 = load i32, i32* %y, align 4, !tbaa !5
  %67 = load i32, i32* %z, align 4, !tbaa !5
  %shr50 = ashr i32 %67, 1
  %sub51 = sub nsw i32 %66, %shr50
  %mul52 = mul nsw i32 %65, %sub51
  store i32 %mul52, i32* %dy, align 4, !tbaa !5
  %68 = load i32, i32* %z, align 4, !tbaa !5
  %69 = load i32, i32* %z, align 4, !tbaa !5
  %70 = load i32, i32* %x, align 4, !tbaa !5
  %shr53 = ashr i32 %70, 1
  %sub54 = sub nsw i32 %69, %shr53
  %mul55 = mul nsw i32 %68, %sub54
  store i32 %mul55, i32* %dz, align 4, !tbaa !5
  %71 = load i32, i32* %dx4, align 4, !tbaa !5
  %72 = load i32, i32* %dy, align 4, !tbaa !5
  %add56 = add nsw i32 %71, %72
  %73 = load i32, i32* %dz, align 4, !tbaa !5
  %add57 = add nsw i32 %add56, %73
  %conv58 = sext i32 %add57 to i64
  store i64 %conv58, i64* %d, align 8, !tbaa !31
  %74 = load i64, i64* %md, align 8, !tbaa !31
  %cmp59 = icmp slt i64 %conv58, %74
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.48
  %75 = load i64, i64* %d, align 8, !tbaa !31
  store i64 %75, i64* %md, align 8, !tbaa !31
  store i8* getelementptr inbounds ([8 x [3 x i8]], [8 x [3 x i8]]* @escp2c_pick_best.colour, i32 0, i64 6, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.48
  %76 = load i32, i32* %x, align 4, !tbaa !5
  %sub63 = sub nsw i32 %76, 255
  store i32 %sub63, i32* %x, align 4, !tbaa !5
  %77 = load i32, i32* %z, align 4, !tbaa !5
  %78 = load i32, i32* %z, align 4, !tbaa !5
  %79 = load i32, i32* %x, align 4, !tbaa !5
  %shr64 = ashr i32 %79, 1
  %sub65 = sub nsw i32 %78, %shr64
  %mul66 = mul nsw i32 %77, %sub65
  store i32 %mul66, i32* %dz2, align 4, !tbaa !5
  %80 = load i32, i32* %dx3, align 4, !tbaa !5
  %81 = load i32, i32* %dy, align 4, !tbaa !5
  %add67 = add nsw i32 %80, %81
  %82 = load i32, i32* %dz2, align 4, !tbaa !5
  %add68 = add nsw i32 %add67, %82
  %conv69 = sext i32 %add68 to i64
  store i64 %conv69, i64* %d, align 8, !tbaa !31
  %83 = load i64, i64* %md, align 8, !tbaa !31
  %cmp70 = icmp slt i64 %conv69, %83
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.62
  %84 = load i64, i64* %d, align 8, !tbaa !31
  store i64 %84, i64* %md, align 8, !tbaa !31
  store i8* getelementptr inbounds ([8 x [3 x i8]], [8 x [3 x i8]]* @escp2c_pick_best.colour, i32 0, i64 7, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.62
  %85 = load i32, i32* %y, align 4, !tbaa !5
  %add74 = add nsw i32 %85, 255
  store i32 %add74, i32* %y, align 4, !tbaa !5
  %86 = load i32, i32* %y, align 4, !tbaa !5
  %87 = load i32, i32* %y, align 4, !tbaa !5
  %88 = load i32, i32* %z, align 4, !tbaa !5
  %shr75 = ashr i32 %88, 1
  %sub76 = sub nsw i32 %87, %shr75
  %mul77 = mul nsw i32 %86, %sub76
  store i32 %mul77, i32* %dy, align 4, !tbaa !5
  %89 = load i32, i32* %dx2, align 4, !tbaa !5
  %90 = load i32, i32* %dy, align 4, !tbaa !5
  %add78 = add nsw i32 %89, %90
  %91 = load i32, i32* %dz2, align 4, !tbaa !5
  %add79 = add nsw i32 %add78, %91
  %conv80 = sext i32 %add79 to i64
  store i64 %conv80, i64* %d, align 8, !tbaa !31
  %92 = load i64, i64* %md, align 8, !tbaa !31
  %cmp81 = icmp slt i64 %conv80, %92
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.73
  %93 = load i64, i64* %d, align 8, !tbaa !31
  store i64 %93, i64* %md, align 8, !tbaa !31
  store i8* getelementptr inbounds ([8 x [3 x i8]], [8 x [3 x i8]]* @escp2c_pick_best.colour, i32 0, i64 5, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.73
  %94 = load i32, i32* %dx, align 4, !tbaa !5
  %95 = load i32, i32* %dy, align 4, !tbaa !5
  %add85 = add nsw i32 %94, %95
  %96 = load i32, i32* %dz, align 4, !tbaa !5
  %add86 = add nsw i32 %add85, %96
  %conv87 = sext i32 %add86 to i64
  store i64 %conv87, i64* %d, align 8, !tbaa !31
  %97 = load i64, i64* %md, align 8, !tbaa !31
  %cmp88 = icmp slt i64 %conv87, %97
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.84
  store i8* getelementptr inbounds ([8 x [3 x i8]], [8 x [3 x i8]]* @escp2c_pick_best.colour, i32 0, i64 4, i32 0), i8** %p, align 8, !tbaa !1
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.84
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  %99 = bitcast i64* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i64* %md to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32* %dx4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %dx3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %dx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %dz2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %dz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %z to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  ret i8* %98
}

; Function Attrs: nounwind uwtable
define internal void @escp2c_conv_stc(i8* %p, i8* %q, i32 %i) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %q.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8* %q, i8** %q.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !7
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 4
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv1 = zext i8 %4 to i32
  %and2 = and i32 %conv1, 2
  %or = or i32 %and, %and2
  %5 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx3, align 1, !tbaa !7
  %conv4 = zext i8 %6 to i32
  %and5 = and i32 %conv4, 1
  %or6 = or i32 %or, %and5
  %conv7 = trunc i32 %or6 to i8
  %7 = load i8*, i8** %q.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q.addr, align 8, !tbaa !1
  store i8 %conv7, i8* %7, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 3
  store i8* %add.ptr, i8** %p.addr, align 8, !tbaa !1
  %9 = load i32, i32* %i.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, 3
  store i32 %sub, i32* %i.addr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin nounwind readonly }
attributes #6 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 18872}
!9 = !{!"stcolor_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !10, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !3, i64 1728, !21, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !11, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !23, i64 17256, !6, i64 17288, !2, i64 17296, !20, i64 17304, !20, i64 17888, !24, i64 18472}
!10 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!11 = !{!"long", !3, i64 0}
!12 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !14, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !6, i64 712}
!13 = !{!"short", !3, i64 0}
!14 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!15 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!16 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!17 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !18, i64 16, !6, i64 32, !3, i64 36}
!18 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !11, i64 8}
!19 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!21 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !22, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!22 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!23 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!24 = !{!"stc_s", !11, i64 0, !6, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !3, i64 64, !3, i64 80, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 204, !25, i64 216, !26, i64 232, !26, i64 248, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !3, i64 368, !6, i64 400}
!25 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!26 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!27 = !{!9, !6, i64 100}
!28 = !{!9, !2, i64 18488}
!29 = !{!30, !6, i64 16}
!30 = !{!"stc_dither_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !3, i64 24}
!31 = !{!11, !11, i64 0}
