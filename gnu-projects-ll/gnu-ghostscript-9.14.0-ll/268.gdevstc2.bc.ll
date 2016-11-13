; ModuleID = './gdevstc2.bc'
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

@pixelconversion = internal constant [5 x i8*] [i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @grayvals, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @rgbvals, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cmykvals, i32 0, i32 0)], align 16
@grayvals = internal constant [2 x i8] c"\00\01", align 1
@rgbvals = internal constant [8 x i8] c"\00\04\02\06\01\05\03\07", align 1
@cmykvals = internal constant [16 x i8] c"\00\08\04\0C\02\0A\06\01\01\01\01\01\01\01\01\01", align 16

; Function Attrs: nounwind uwtable
define i32 @stc_fs(%struct.stcolor_device_s* %sdev, i32 %npixel, i8* %bin, i8* %bbuf, i8* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %sdev.addr = alloca %struct.stcolor_device_s*, align 8
  %npixel.addr = alloca i32, align 4
  %bin.addr = alloca i8*, align 8
  %bbuf.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %in = alloca i64*, align 8
  %buf = alloca i64*, align 8
  %bstep = alloca i32, align 4
  %pstart = alloca i32, align 4
  %pstop = alloca i32, align 4
  %pstep = alloca i32, align 4
  %p = alloca i32, align 4
  %spotsize = alloca i64, align 8
  %threshold = alloca i64, align 8
  %errc = alloca i64*, align 8
  %errv = alloca i64*, align 8
  %pixel2stc = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %c = alloca i32, align 4
  %pixel = alloca i32, align 4
  %cv = alloca i64, align 8
  %i = alloca i32, align 4
  %i2do = alloca i32, align 4
  %rand_max = alloca i64, align 8
  %offset = alloca double, align 8
  %scale = alloca double, align 8
  store %struct.stcolor_device_s* %sdev, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  store i32 %npixel, i32* %npixel.addr, align 4, !tbaa !5
  store i8* %bin, i8** %bin.addr, align 8, !tbaa !1
  store i8* %bbuf, i8** %bbuf.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  %0 = bitcast i64** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %bin.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %in, align 8, !tbaa !1
  %3 = bitcast i64** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %bbuf.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %buf, align 8, !tbaa !1
  %6 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else.90

if.then:                                          ; preds = %entry
  %7 = bitcast i32* %bstep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %pstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %pstop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %pstep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i64* %spotsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %threshold to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64** %errc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64** %errv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i8** %pixel2stc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %17, i64 0
  %18 = load i64, i64* %arrayidx, align 8, !tbaa !7
  %cmp1 = icmp sge i64 %18, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %19 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 -1, i64* %arrayidx3, align 8, !tbaa !7
  store i32 1, i32* %bstep, align 4, !tbaa !5
  %20 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %20, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %21 = load i32, i32* %num_components, align 4, !tbaa !9
  store i32 %21, i32* %pstep, align 4, !tbaa !5
  store i32 0, i32* %pstart, align 4, !tbaa !5
  %22 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %23 = load i32, i32* %pstep, align 4, !tbaa !5
  %mul = mul nsw i32 %22, %23
  store i32 %mul, i32* %pstop, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %24 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 1, i64* %arrayidx4, align 8, !tbaa !7
  store i32 -1, i32* %bstep, align 4, !tbaa !5
  %25 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %25, i32 0, i32 11
  %num_components6 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %26 = load i32, i32* %num_components6, align 4, !tbaa !9
  %sub = sub nsw i32 0, %26
  store i32 %sub, i32* %pstep, align 4, !tbaa !5
  %27 = load i32, i32* %pstep, align 4, !tbaa !5
  store i32 %27, i32* %pstop, align 4, !tbaa !5
  %28 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %sub7 = sub nsw i32 1, %28
  %29 = load i32, i32* %pstep, align 4, !tbaa !5
  %mul8 = mul nsw i32 %sub7, %29
  store i32 %mul8, i32* %pstart, align 4, !tbaa !5
  %30 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %30, 1
  %31 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %sub9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %out.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %32 = load i64*, i64** %in, align 8, !tbaa !1
  %cmp10 = icmp eq i64* %32, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %33 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i64, i64* %33, i64 1
  %34 = load i64, i64* %arrayidx13, align 8, !tbaa !7
  store i64 %34, i64* %spotsize, align 8, !tbaa !7
  %35 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %35, i64 2
  %36 = load i64, i64* %arrayidx14, align 8, !tbaa !7
  store i64 %36, i64* %threshold, align 8, !tbaa !7
  %37 = load i64*, i64** %buf, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds i64, i64* %37, i64 3
  store i64* %add.ptr15, i64** %errc, align 8, !tbaa !1
  %38 = load i64*, i64** %errc, align 8, !tbaa !1
  %39 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info16 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %39, i32 0, i32 11
  %num_components17 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info16, i32 0, i32 1
  %40 = load i32, i32* %num_components17, align 4, !tbaa !9
  %mul18 = mul nsw i32 2, %40
  %idx.ext19 = sext i32 %mul18 to i64
  %add.ptr20 = getelementptr inbounds i64, i64* %38, i64 %idx.ext19
  store i64* %add.ptr20, i64** %errv, align 8, !tbaa !1
  %41 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info21 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %41, i32 0, i32 11
  %num_components22 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info21, i32 0, i32 1
  %42 = load i32, i32* %num_components22, align 4, !tbaa !9
  %idxprom = sext i32 %42 to i64
  %arrayidx23 = getelementptr inbounds [5 x i8*], [5 x i8*]* @pixelconversion, i32 0, i64 %idxprom
  %43 = load i8*, i8** %arrayidx23, align 8, !tbaa !1
  store i8* %43, i8** %pixel2stc, align 8, !tbaa !1
  %44 = load i32, i32* %pstart, align 4, !tbaa !5
  store i32 %44, i32* %p, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %if.end.12
  %45 = load i32, i32* %p, align 4, !tbaa !5
  %46 = load i32, i32* %pstop, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %45, %46
  br i1 %cmp24, label %for.body, label %for.end.80

for.body:                                         ; preds = %for.cond
  %47 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 0, i32* %pixel, align 4, !tbaa !5
  store i32 0, i32* %c, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %49 = load i32, i32* %c, align 4, !tbaa !5
  %50 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info26 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %50, i32 0, i32 11
  %num_components27 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info26, i32 0, i32 1
  %51 = load i32, i32* %num_components27, align 4, !tbaa !9
  %cmp28 = icmp slt i32 %49, %51
  br i1 %cmp28, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.25
  %52 = bitcast i64* %cv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = load i32, i32* %p, align 4, !tbaa !5
  %54 = load i32, i32* %c, align 4, !tbaa !5
  %add = add nsw i32 %53, %54
  %idxprom30 = sext i32 %add to i64
  %55 = load i64*, i64** %in, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i64, i64* %55, i64 %idxprom30
  %56 = load i64, i64* %arrayidx31, align 8, !tbaa !7
  %57 = load i32, i32* %p, align 4, !tbaa !5
  %58 = load i32, i32* %c, align 4, !tbaa !5
  %add32 = add nsw i32 %57, %58
  %idxprom33 = sext i32 %add32 to i64
  %59 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i64, i64* %59, i64 %idxprom33
  %60 = load i64, i64* %arrayidx34, align 8, !tbaa !7
  %add35 = add nsw i64 %56, %60
  %61 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom36 = sext i32 %61 to i64
  %62 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i64, i64* %62, i64 %idxprom36
  %63 = load i64, i64* %arrayidx37, align 8, !tbaa !7
  %add38 = add nsw i64 %add35, %63
  %64 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom39 = sext i32 %64 to i64
  %65 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i64, i64* %65, i64 %idxprom39
  %66 = load i64, i64* %arrayidx40, align 8, !tbaa !7
  %add41 = add nsw i64 %66, 4
  %shr = ashr i64 %add41, 3
  %sub42 = sub nsw i64 %add38, %shr
  store i64 %sub42, i64* %cv, align 8, !tbaa !7
  %67 = load i64, i64* %cv, align 8, !tbaa !7
  %68 = load i64, i64* %threshold, align 8, !tbaa !7
  %cmp43 = icmp sgt i64 %67, %68
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.body.29
  %69 = load i32, i32* %c, align 4, !tbaa !5
  %shl = shl i32 1, %69
  %70 = load i32, i32* %pixel, align 4, !tbaa !5
  %or = or i32 %70, %shl
  store i32 %or, i32* %pixel, align 4, !tbaa !5
  %71 = load i64, i64* %spotsize, align 8, !tbaa !7
  %72 = load i64, i64* %cv, align 8, !tbaa !7
  %sub45 = sub nsw i64 %72, %71
  store i64 %sub45, i64* %cv, align 8, !tbaa !7
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %for.body.29
  %73 = load i64, i64* %cv, align 8, !tbaa !7
  %mul47 = mul nsw i64 3, %73
  %add48 = add nsw i64 %mul47, 8
  %shr49 = ashr i64 %add48, 4
  %74 = load i32, i32* %p, align 4, !tbaa !5
  %75 = load i32, i32* %c, align 4, !tbaa !5
  %add50 = add nsw i32 %74, %75
  %76 = load i32, i32* %pstep, align 4, !tbaa !5
  %sub51 = sub nsw i32 %add50, %76
  %idxprom52 = sext i32 %sub51 to i64
  %77 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i64, i64* %77, i64 %idxprom52
  %78 = load i64, i64* %arrayidx53, align 8, !tbaa !7
  %add54 = add nsw i64 %78, %shr49
  store i64 %add54, i64* %arrayidx53, align 8, !tbaa !7
  %79 = load i64, i64* %cv, align 8, !tbaa !7
  %mul55 = mul nsw i64 5, %79
  %shr56 = ashr i64 %mul55, 4
  %80 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom57 = sext i32 %80 to i64
  %81 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i64, i64* %81, i64 %idxprom57
  %82 = load i64, i64* %arrayidx58, align 8, !tbaa !7
  %add59 = add nsw i64 %82, 4
  %shr60 = ashr i64 %add59, 3
  %add61 = add nsw i64 %shr56, %shr60
  %83 = load i32, i32* %p, align 4, !tbaa !5
  %84 = load i32, i32* %c, align 4, !tbaa !5
  %add62 = add nsw i32 %83, %84
  %idxprom63 = sext i32 %add62 to i64
  %85 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i64, i64* %85, i64 %idxprom63
  store i64 %add61, i64* %arrayidx64, align 8, !tbaa !7
  %86 = load i64, i64* %cv, align 8, !tbaa !7
  %87 = load i64, i64* %cv, align 8, !tbaa !7
  %mul65 = mul nsw i64 5, %87
  %shr66 = ashr i64 %mul65, 4
  %sub67 = sub nsw i64 %86, %shr66
  %88 = load i64, i64* %cv, align 8, !tbaa !7
  %mul68 = mul nsw i64 3, %88
  %add69 = add nsw i64 %mul68, 8
  %shr70 = ashr i64 %add69, 4
  %sub71 = sub nsw i64 %sub67, %shr70
  %89 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom72 = sext i32 %89 to i64
  %90 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i64, i64* %90, i64 %idxprom72
  store i64 %sub71, i64* %arrayidx73, align 8, !tbaa !7
  %91 = bitcast i64* %cv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %92 = load i32, i32* %c, align 4, !tbaa !5
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %c, align 4, !tbaa !5
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %93 = load i32, i32* %pixel, align 4, !tbaa !5
  %idxprom74 = sext i32 %93 to i64
  %94 = load i8*, i8** %pixel2stc, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %94, i64 %idxprom74
  %95 = load i8, i8* %arrayidx75, align 1, !tbaa !27
  %96 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8 %95, i8* %96, align 1, !tbaa !27
  %97 = load i32, i32* %bstep, align 4, !tbaa !5
  %98 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %idx.ext76 = sext i32 %97 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %98, i64 %idx.ext76
  store i8* %add.ptr77, i8** %out.addr, align 8, !tbaa !1
  %99 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end
  %101 = load i32, i32* %pstep, align 4, !tbaa !5
  %102 = load i32, i32* %p, align 4, !tbaa !5
  %add79 = add nsw i32 %102, %101
  store i32 %add79, i32* %p, align 4, !tbaa !5
  br label %for.cond

for.end.80:                                       ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.80, %if.then.11
  %103 = bitcast i8** %pixel2stc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i64** %errv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i64** %errc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast i64* %threshold to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast i64* %spotsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %pstep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %pstop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %pstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %bstep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.263 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.262

if.else.90:                                       ; preds = %entry
  %113 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = bitcast i32* %i2do to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  %115 = bitcast i64* %rand_max to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = bitcast double* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  %117 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %118 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info91 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %118, i32 0, i32 11
  %num_components92 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info91, i32 0, i32 1
  %119 = load i32, i32* %num_components92, align 4, !tbaa !9
  %cmp93 = icmp slt i32 %119, 0
  br i1 %cmp93, label %if.then.105, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.90
  %120 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info94 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %120, i32 0, i32 11
  %num_components95 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info94, i32 0, i32 1
  %121 = load i32, i32* %num_components95, align 4, !tbaa !9
  %conv = sext i32 %121 to i64
  %cmp96 = icmp uge i64 %conv, 5
  br i1 %cmp96, label %if.then.105, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %lor.lhs.false
  %122 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info99 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %122, i32 0, i32 11
  %num_components100 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info99, i32 0, i32 1
  %123 = load i32, i32* %num_components100, align 4, !tbaa !9
  %idxprom101 = sext i32 %123 to i64
  %arrayidx102 = getelementptr inbounds [5 x i8*], [5 x i8*]* @pixelconversion, i32 0, i64 %idxprom101
  %124 = load i8*, i8** %arrayidx102, align 8, !tbaa !1
  %cmp103 = icmp eq i8* %124, null
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %lor.lhs.false.98, %lor.lhs.false, %if.else.90
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.255

if.end.106:                                       ; preds = %lor.lhs.false.98
  %125 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %125, i32 0, i32 68
  %dither = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc, i32 0, i32 2
  %126 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither, align 8, !tbaa !28
  %cmp107 = icmp eq %struct.stc_dither_s* %126, null
  br i1 %cmp107, label %if.then.114, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %if.end.106
  %127 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc110 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %127, i32 0, i32 68
  %dither111 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc110, i32 0, i32 2
  %128 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither111, align 8, !tbaa !28
  %flags = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %128, i32 0, i32 2
  %129 = load i32, i32* %flags, align 4, !tbaa !29
  %and = and i32 %129, 24
  %cmp112 = icmp ne i32 %and, 16
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %lor.lhs.false.109, %if.end.106
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.255

if.end.115:                                       ; preds = %lor.lhs.false.109
  %130 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc116 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %130, i32 0, i32 68
  %dither117 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc116, i32 0, i32 2
  %131 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither117, align 8, !tbaa !28
  %flags118 = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %131, i32 0, i32 2
  %132 = load i32, i32* %flags118, align 4, !tbaa !29
  %div = udiv i32 %132, 256
  %cmp119 = icmp ult i32 %div, 1
  br i1 %cmp119, label %if.then.130, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.end.115
  %133 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc122 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %133, i32 0, i32 68
  %dither123 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc122, i32 0, i32 2
  %134 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither123, align 8, !tbaa !28
  %bufadd = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %134, i32 0, i32 3
  %135 = load i32, i32* %bufadd, align 4, !tbaa !31
  %136 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info124 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %136, i32 0, i32 11
  %num_components125 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info124, i32 0, i32 1
  %137 = load i32, i32* %num_components125, align 4, !tbaa !9
  %mul126 = mul nsw i32 3, %137
  %add127 = add nsw i32 3, %mul126
  %cmp128 = icmp ult i32 %135, %add127
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %lor.lhs.false.121, %if.end.115
  store i32 -3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.255

if.end.131:                                       ; preds = %lor.lhs.false.121
  %138 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc132 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %138, i32 0, i32 68
  %dither133 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc132, i32 0, i32 2
  %139 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither133, align 8, !tbaa !28
  %flags134 = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %139, i32 0, i32 2
  %140 = load i32, i32* %flags134, align 4, !tbaa !29
  %and135 = and i32 %140, 192
  %tobool = icmp ne i32 %and135, 0
  br i1 %tobool, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.131
  store i32 -4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.255

if.end.137:                                       ; preds = %if.end.131
  %141 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i64, i64* %141, i64 0
  store i64 1, i64* %arrayidx138, align 8, !tbaa !7
  %142 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc139 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %142, i32 0, i32 68
  %dither140 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc139, i32 0, i32 2
  %143 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither140, align 8, !tbaa !28
  %minmax = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %143, i32 0, i32 4
  %arrayidx141 = getelementptr inbounds [2 x double], [2 x double]* %minmax, i32 0, i64 1
  %144 = load double, double* %arrayidx141, align 8, !tbaa !32
  store double %144, double* %scale, align 8, !tbaa !32
  %145 = load double, double* %scale, align 8, !tbaa !32
  %146 = load double, double* %scale, align 8, !tbaa !32
  %cmp142 = fcmp ogt double %146, 0.000000e+00
  %cond = select i1 %cmp142, double 5.000000e-01, double -5.000000e-01
  %add144 = fadd double %145, %cond
  %conv145 = fptosi double %add144 to i64
  %147 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i64, i64* %147, i64 1
  store i64 %conv145, i64* %arrayidx146, align 8, !tbaa !7
  %148 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc147 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %148, i32 0, i32 68
  %dither148 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc147, i32 0, i32 2
  %149 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither148, align 8, !tbaa !28
  %minmax149 = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %149, i32 0, i32 4
  %arrayidx150 = getelementptr inbounds [2 x double], [2 x double]* %minmax149, i32 0, i64 0
  %150 = load double, double* %arrayidx150, align 8, !tbaa !32
  store double %150, double* %offset, align 8, !tbaa !32
  %151 = load double, double* %offset, align 8, !tbaa !32
  %152 = load double, double* %scale, align 8, !tbaa !32
  %sub151 = fsub double %152, %151
  store double %sub151, double* %scale, align 8, !tbaa !32
  %153 = load double, double* %offset, align 8, !tbaa !32
  %154 = load double, double* %scale, align 8, !tbaa !32
  %mul152 = fmul double 5.000000e-01, %154
  %add153 = fadd double %153, %mul152
  %cmp154 = fcmp ogt double %add153, 0.000000e+00
  br i1 %cmp154, label %if.then.156, label %if.else.162

if.then.156:                                      ; preds = %if.end.137
  %155 = load double, double* %offset, align 8, !tbaa !32
  %156 = load double, double* %scale, align 8, !tbaa !32
  %mul157 = fmul double 5.000000e-01, %156
  %add158 = fadd double %155, %mul157
  %add159 = fadd double %add158, 5.000000e-01
  %conv160 = fptosi double %add159 to i64
  %157 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i64, i64* %157, i64 2
  store i64 %conv160, i64* %arrayidx161, align 8, !tbaa !7
  br label %if.end.168

if.else.162:                                      ; preds = %if.end.137
  %158 = load double, double* %offset, align 8, !tbaa !32
  %159 = load double, double* %scale, align 8, !tbaa !32
  %mul163 = fmul double 5.000000e-01, %159
  %add164 = fadd double %158, %mul163
  %sub165 = fsub double %add164, 5.000000e-01
  %conv166 = fptosi double %sub165 to i64
  %160 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i64, i64* %160, i64 2
  store i64 %conv166, i64* %arrayidx167, align 8, !tbaa !7
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.162, %if.then.156
  %161 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info169 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %161, i32 0, i32 11
  %num_components170 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info169, i32 0, i32 1
  %162 = load i32, i32* %num_components170, align 4, !tbaa !9
  %163 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %sub171 = sub nsw i32 3, %163
  %mul172 = mul nsw i32 %162, %sub171
  store i32 %mul172, i32* %i2do, align 4, !tbaa !5
  store i64 0, i64* %rand_max, align 8, !tbaa !7
  %164 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc173 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %164, i32 0, i32 68
  %flags174 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc173, i32 0, i32 0
  %165 = load i64, i64* %flags174, align 8, !tbaa !34
  %and175 = and i64 %165, 1
  %tobool176 = icmp ne i64 %and175, 0
  br i1 %tobool176, label %if.then.177, label %if.else.188

if.then.177:                                      ; preds = %if.end.168
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.185, %if.then.177
  %166 = load i32, i32* %i, align 4, !tbaa !5
  %167 = load i32, i32* %i2do, align 4, !tbaa !5
  %cmp179 = icmp slt i32 %166, %167
  br i1 %cmp179, label %for.body.181, label %for.end.187

for.body.181:                                     ; preds = %for.cond.178
  %168 = load i32, i32* %i, align 4, !tbaa !5
  %add182 = add nsw i32 %168, 3
  %idxprom183 = sext i32 %add182 to i64
  %169 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i64, i64* %169, i64 %idxprom183
  store i64 0, i64* %arrayidx184, align 8, !tbaa !7
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.181
  %170 = load i32, i32* %i, align 4, !tbaa !5
  %inc186 = add nsw i32 %170, 1
  store i32 %inc186, i32* %i, align 4, !tbaa !5
  br label %for.cond.178

for.end.187:                                      ; preds = %for.cond.178
  br label %if.end.254

if.else.188:                                      ; preds = %if.end.168
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.207, %if.else.188
  %171 = load i32, i32* %i, align 4, !tbaa !5
  %172 = load i32, i32* %i2do, align 4, !tbaa !5
  %cmp190 = icmp slt i32 %171, %172
  br i1 %cmp190, label %for.body.192, label %for.end.209

for.body.192:                                     ; preds = %for.cond.189
  %call = call i32 @rand() #3
  %conv193 = sext i32 %call to i64
  %173 = load i32, i32* %i, align 4, !tbaa !5
  %add194 = add nsw i32 %173, 3
  %idxprom195 = sext i32 %add194 to i64
  %174 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i64, i64* %174, i64 %idxprom195
  store i64 %conv193, i64* %arrayidx196, align 8, !tbaa !7
  %175 = load i32, i32* %i, align 4, !tbaa !5
  %add197 = add nsw i32 %175, 3
  %idxprom198 = sext i32 %add197 to i64
  %176 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i64, i64* %176, i64 %idxprom198
  %177 = load i64, i64* %arrayidx199, align 8, !tbaa !7
  %178 = load i64, i64* %rand_max, align 8, !tbaa !7
  %cmp200 = icmp sgt i64 %177, %178
  br i1 %cmp200, label %if.then.202, label %if.end.206

if.then.202:                                      ; preds = %for.body.192
  %179 = load i32, i32* %i, align 4, !tbaa !5
  %add203 = add nsw i32 %179, 3
  %idxprom204 = sext i32 %add203 to i64
  %180 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i64, i64* %180, i64 %idxprom204
  %181 = load i64, i64* %arrayidx205, align 8, !tbaa !7
  store i64 %181, i64* %rand_max, align 8, !tbaa !7
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.202, %for.body.192
  br label %for.inc.207

for.inc.207:                                      ; preds = %if.end.206
  %182 = load i32, i32* %i, align 4, !tbaa !5
  %inc208 = add nsw i32 %182, 1
  store i32 %inc208, i32* %i, align 4, !tbaa !5
  br label %for.cond.189

for.end.209:                                      ; preds = %for.cond.189
  %183 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i64, i64* %183, i64 1
  %184 = load i64, i64* %arrayidx210, align 8, !tbaa !7
  %conv211 = sitofp i64 %184 to double
  %185 = load i64, i64* %rand_max, align 8, !tbaa !7
  %conv212 = sitofp i64 %185 to double
  %div213 = fdiv double %conv211, %conv212
  store double %div213, double* %scale, align 8, !tbaa !32
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.232, %for.end.209
  %186 = load i32, i32* %i, align 4, !tbaa !5
  %187 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info215 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %187, i32 0, i32 11
  %num_components216 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info215, i32 0, i32 1
  %188 = load i32, i32* %num_components216, align 4, !tbaa !9
  %cmp217 = icmp slt i32 %186, %188
  br i1 %cmp217, label %for.body.219, label %for.end.234

for.body.219:                                     ; preds = %for.cond.214
  %189 = load double, double* %scale, align 8, !tbaa !32
  %mul220 = fmul double 2.500000e-01, %189
  %190 = load i32, i32* %i, align 4, !tbaa !5
  %add221 = add nsw i32 %190, 3
  %idxprom222 = sext i32 %add221 to i64
  %191 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i64, i64* %191, i64 %idxprom222
  %192 = load i64, i64* %arrayidx223, align 8, !tbaa !7
  %193 = load i64, i64* %rand_max, align 8, !tbaa !7
  %div224 = sdiv i64 %193, 2
  %sub225 = sub nsw i64 %192, %div224
  %conv226 = sitofp i64 %sub225 to double
  %mul227 = fmul double %mul220, %conv226
  %conv228 = fptosi double %mul227 to i64
  %194 = load i32, i32* %i, align 4, !tbaa !5
  %add229 = add nsw i32 %194, 3
  %idxprom230 = sext i32 %add229 to i64
  %195 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i64, i64* %195, i64 %idxprom230
  store i64 %conv228, i64* %arrayidx231, align 8, !tbaa !7
  br label %for.inc.232

for.inc.232:                                      ; preds = %for.body.219
  %196 = load i32, i32* %i, align 4, !tbaa !5
  %inc233 = add nsw i32 %196, 1
  store i32 %inc233, i32* %i, align 4, !tbaa !5
  br label %for.cond.214

for.end.234:                                      ; preds = %for.cond.214
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.251, %for.end.234
  %197 = load i32, i32* %i, align 4, !tbaa !5
  %198 = load i32, i32* %i2do, align 4, !tbaa !5
  %cmp236 = icmp slt i32 %197, %198
  br i1 %cmp236, label %for.body.238, label %for.end.253

for.body.238:                                     ; preds = %for.cond.235
  %199 = load double, double* %scale, align 8, !tbaa !32
  %mul239 = fmul double 2.812500e-01, %199
  %200 = load i32, i32* %i, align 4, !tbaa !5
  %add240 = add nsw i32 %200, 3
  %idxprom241 = sext i32 %add240 to i64
  %201 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i64, i64* %201, i64 %idxprom241
  %202 = load i64, i64* %arrayidx242, align 8, !tbaa !7
  %203 = load i64, i64* %rand_max, align 8, !tbaa !7
  %div243 = sdiv i64 %203, 2
  %sub244 = sub nsw i64 %202, %div243
  %conv245 = sitofp i64 %sub244 to double
  %mul246 = fmul double %mul239, %conv245
  %conv247 = fptosi double %mul246 to i64
  %204 = load i32, i32* %i, align 4, !tbaa !5
  %add248 = add nsw i32 %204, 3
  %idxprom249 = sext i32 %add248 to i64
  %205 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i64, i64* %205, i64 %idxprom249
  store i64 %conv247, i64* %arrayidx250, align 8, !tbaa !7
  br label %for.inc.251

for.inc.251:                                      ; preds = %for.body.238
  %206 = load i32, i32* %i, align 4, !tbaa !5
  %inc252 = add nsw i32 %206, 1
  store i32 %inc252, i32* %i, align 4, !tbaa !5
  br label %for.cond.235

for.end.253:                                      ; preds = %for.cond.235
  br label %if.end.254

if.end.254:                                       ; preds = %for.end.253, %for.end.187
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.255

cleanup.255:                                      ; preds = %if.end.254, %if.then.136, %if.then.130, %if.then.114, %if.then.105
  %207 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast double* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i64* %rand_max to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i32* %i2do to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %cleanup.dest.260 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.260, label %cleanup.263 [
    i32 0, label %cleanup.cont.261
  ]

cleanup.cont.261:                                 ; preds = %cleanup.255
  br label %if.end.262

if.end.262:                                       ; preds = %cleanup.cont.261, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.263

cleanup.263:                                      ; preds = %if.end.262, %cleanup.255, %cleanup
  %212 = bitcast i64** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast i64** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = load i32, i32* %retval
  ret i32 %214
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @rand() #2

; Function Attrs: nounwind uwtable
define i32 @stc_fscmyk(%struct.stcolor_device_s* %sdev, i32 %npixel, i8* %bin, i8* %bbuf, i8* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %sdev.addr = alloca %struct.stcolor_device_s*, align 8
  %npixel.addr = alloca i32, align 4
  %bin.addr = alloca i8*, align 8
  %bbuf.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %in = alloca i64*, align 8
  %buf = alloca i64*, align 8
  %bstep = alloca i32, align 4
  %pstart = alloca i32, align 4
  %pstop = alloca i32, align 4
  %pstep = alloca i32, align 4
  %p = alloca i32, align 4
  %spotsize = alloca i64, align 8
  %threshold = alloca i64, align 8
  %errc = alloca i64*, align 8
  %errv = alloca i64*, align 8
  %c = alloca i32, align 4
  %pixel = alloca i32, align 4
  %cv = alloca i64, align 8
  %k = alloca i64, align 8
  %i = alloca i32, align 4
  %i2do = alloca i32, align 4
  %rand_max = alloca i64, align 8
  %offset = alloca double, align 8
  %scale = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stcolor_device_s* %sdev, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  store i32 %npixel, i32* %npixel.addr, align 4, !tbaa !5
  store i8* %bin, i8** %bin.addr, align 8, !tbaa !1
  store i8* %bbuf, i8** %bbuf.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  %0 = bitcast i64** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %bin.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %in, align 8, !tbaa !1
  %3 = bitcast i64** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %bbuf.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to i64*
  store i64* %5, i64** %buf, align 8, !tbaa !1
  %6 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else.196

if.then:                                          ; preds = %entry
  %7 = bitcast i32* %bstep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %pstart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %pstop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %pstep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i64* %spotsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %threshold to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64** %errc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64** %errv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %16, i64 0
  %17 = load i64, i64* %arrayidx, align 8, !tbaa !7
  %cmp1 = icmp sge i64 %17, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %18 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 -1, i64* %arrayidx3, align 8, !tbaa !7
  store i32 1, i32* %bstep, align 4, !tbaa !5
  store i32 4, i32* %pstep, align 4, !tbaa !5
  store i32 0, i32* %pstart, align 4, !tbaa !5
  %19 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %20 = load i32, i32* %pstep, align 4, !tbaa !5
  %mul = mul nsw i32 %19, %20
  store i32 %mul, i32* %pstop, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 1, i64* %arrayidx4, align 8, !tbaa !7
  store i32 -1, i32* %bstep, align 4, !tbaa !5
  store i32 -4, i32* %pstep, align 4, !tbaa !5
  %22 = load i32, i32* %pstep, align 4, !tbaa !5
  store i32 %22, i32* %pstop, align 4, !tbaa !5
  %23 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %sub = sub nsw i32 1, %23
  %24 = load i32, i32* %pstep, align 4, !tbaa !5
  %mul5 = mul nsw i32 %sub, %24
  store i32 %mul5, i32* %pstart, align 4, !tbaa !5
  %25 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %sub6 = sub nsw i32 %25, 1
  %26 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %sub6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %out.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %27 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i64, i64* %27, i64 1
  %28 = load i64, i64* %arrayidx7, align 8, !tbaa !7
  store i64 %28, i64* %spotsize, align 8, !tbaa !7
  %29 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i64, i64* %29, i64 2
  %30 = load i64, i64* %arrayidx8, align 8, !tbaa !7
  store i64 %30, i64* %threshold, align 8, !tbaa !7
  %31 = load i64*, i64** %buf, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds i64, i64* %31, i64 3
  store i64* %add.ptr9, i64** %errc, align 8, !tbaa !1
  %32 = load i64*, i64** %errc, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i64, i64* %32, i64 8
  store i64* %add.ptr10, i64** %errv, align 8, !tbaa !1
  store i32 0, i32* %p, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %33 = load i32, i32* %p, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %33, 4
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %p, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %35 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i64, i64* %35, i64 %idxprom
  store i64 0, i64* %arrayidx12, align 8, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %p, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %p, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %pstart, align 4, !tbaa !5
  store i32 %37, i32* %p, align 4, !tbaa !5
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.193, %for.end
  %38 = load i32, i32* %p, align 4, !tbaa !5
  %39 = load i32, i32* %pstop, align 4, !tbaa !5
  %cmp14 = icmp ne i32 %38, %39
  br i1 %cmp14, label %for.body.15, label %for.end.195

for.body.15:                                      ; preds = %for.cond.13
  %40 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i64* %cv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = bitcast i64* %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load i32, i32* %p, align 4, !tbaa !5
  %add = add nsw i32 %44, 3
  %idxprom16 = sext i32 %add to i64
  %45 = load i64*, i64** %in, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i64, i64* %45, i64 %idxprom16
  %46 = load i64, i64* %arrayidx17, align 8, !tbaa !7
  store i64 %46, i64* %k, align 8, !tbaa !7
  %47 = load i64, i64* %k, align 8, !tbaa !7
  %48 = load i32, i32* %p, align 4, !tbaa !5
  %add18 = add nsw i32 %48, 3
  %idxprom19 = sext i32 %add18 to i64
  %49 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i64, i64* %49, i64 %idxprom19
  %50 = load i64, i64* %arrayidx20, align 8, !tbaa !7
  %add21 = add nsw i64 %47, %50
  %51 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i64, i64* %51, i64 3
  %52 = load i64, i64* %arrayidx22, align 8, !tbaa !7
  %add23 = add nsw i64 %add21, %52
  %53 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i64, i64* %53, i64 3
  %54 = load i64, i64* %arrayidx24, align 8, !tbaa !7
  %add25 = add nsw i64 %54, 4
  %shr = ashr i64 %add25, 3
  %sub26 = sub nsw i64 %add23, %shr
  store i64 %sub26, i64* %cv, align 8, !tbaa !7
  %55 = load i64, i64* %cv, align 8, !tbaa !7
  %56 = load i64, i64* %threshold, align 8, !tbaa !7
  %cmp27 = icmp sgt i64 %55, %56
  br i1 %cmp27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %for.body.15
  store i32 1, i32* %pixel, align 4, !tbaa !5
  %57 = load i64, i64* %spotsize, align 8, !tbaa !7
  %58 = load i64, i64* %cv, align 8, !tbaa !7
  %sub29 = sub nsw i64 %58, %57
  store i64 %sub29, i64* %cv, align 8, !tbaa !7
  br label %if.end.31

if.else.30:                                       ; preds = %for.body.15
  store i32 0, i32* %pixel, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.28
  %59 = load i64, i64* %cv, align 8, !tbaa !7
  %mul32 = mul nsw i64 3, %59
  %add33 = add nsw i64 %mul32, 8
  %shr34 = ashr i64 %add33, 4
  %60 = load i32, i32* %p, align 4, !tbaa !5
  %add35 = add nsw i32 %60, 3
  %61 = load i32, i32* %pstep, align 4, !tbaa !5
  %sub36 = sub nsw i32 %add35, %61
  %idxprom37 = sext i32 %sub36 to i64
  %62 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i64, i64* %62, i64 %idxprom37
  %63 = load i64, i64* %arrayidx38, align 8, !tbaa !7
  %add39 = add nsw i64 %63, %shr34
  store i64 %add39, i64* %arrayidx38, align 8, !tbaa !7
  %64 = load i64, i64* %cv, align 8, !tbaa !7
  %mul40 = mul nsw i64 5, %64
  %shr41 = ashr i64 %mul40, 4
  %65 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i64, i64* %65, i64 3
  %66 = load i64, i64* %arrayidx42, align 8, !tbaa !7
  %add43 = add nsw i64 %66, 4
  %shr44 = ashr i64 %add43, 3
  %add45 = add nsw i64 %shr41, %shr44
  %67 = load i32, i32* %p, align 4, !tbaa !5
  %add46 = add nsw i32 %67, 3
  %idxprom47 = sext i32 %add46 to i64
  %68 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i64, i64* %68, i64 %idxprom47
  store i64 %add45, i64* %arrayidx48, align 8, !tbaa !7
  %69 = load i64, i64* %cv, align 8, !tbaa !7
  %70 = load i64, i64* %cv, align 8, !tbaa !7
  %mul49 = mul nsw i64 5, %70
  %shr50 = ashr i64 %mul49, 4
  %sub51 = sub nsw i64 %69, %shr50
  %71 = load i64, i64* %cv, align 8, !tbaa !7
  %mul52 = mul nsw i64 3, %71
  %add53 = add nsw i64 %mul52, 8
  %shr54 = ashr i64 %add53, 4
  %sub55 = sub nsw i64 %sub51, %shr54
  %72 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i64, i64* %72, i64 3
  store i64 %sub55, i64* %arrayidx56, align 8, !tbaa !7
  %73 = load i32, i32* %pixel, align 4, !tbaa !5
  %tobool = icmp ne i32 %73, 0
  br i1 %tobool, label %if.then.57, label %if.else.117

if.then.57:                                       ; preds = %if.end.31
  store i32 0, i32* %c, align 4, !tbaa !5
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.114, %if.then.57
  %74 = load i32, i32* %c, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %74, 3
  br i1 %cmp59, label %for.body.60, label %for.end.116

for.body.60:                                      ; preds = %for.cond.58
  %75 = load i32, i32* %p, align 4, !tbaa !5
  %76 = load i32, i32* %c, align 4, !tbaa !5
  %add61 = add nsw i32 %75, %76
  %idxprom62 = sext i32 %add61 to i64
  %77 = load i64*, i64** %in, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i64, i64* %77, i64 %idxprom62
  %78 = load i64, i64* %arrayidx63, align 8, !tbaa !7
  %79 = load i64, i64* %k, align 8, !tbaa !7
  %cmp64 = icmp sgt i64 %78, %79
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.60
  %80 = load i32, i32* %p, align 4, !tbaa !5
  %81 = load i32, i32* %c, align 4, !tbaa !5
  %add65 = add nsw i32 %80, %81
  %idxprom66 = sext i32 %add65 to i64
  %82 = load i64*, i64** %in, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i64, i64* %82, i64 %idxprom66
  %83 = load i64, i64* %arrayidx67, align 8, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %for.body.60
  %84 = load i64, i64* %k, align 8, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %83, %cond.true ], [ %84, %cond.false ]
  store i64 %cond, i64* %cv, align 8, !tbaa !7
  %85 = load i32, i32* %p, align 4, !tbaa !5
  %86 = load i32, i32* %c, align 4, !tbaa !5
  %add68 = add nsw i32 %85, %86
  %idxprom69 = sext i32 %add68 to i64
  %87 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i64, i64* %87, i64 %idxprom69
  %88 = load i64, i64* %arrayidx70, align 8, !tbaa !7
  %89 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom71 = sext i32 %89 to i64
  %90 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i64, i64* %90, i64 %idxprom71
  %91 = load i64, i64* %arrayidx72, align 8, !tbaa !7
  %add73 = add nsw i64 %88, %91
  %92 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom74 = sext i32 %92 to i64
  %93 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i64, i64* %93, i64 %idxprom74
  %94 = load i64, i64* %arrayidx75, align 8, !tbaa !7
  %add76 = add nsw i64 %94, 4
  %shr77 = ashr i64 %add76, 3
  %sub78 = sub nsw i64 %add73, %shr77
  %95 = load i64, i64* %spotsize, align 8, !tbaa !7
  %sub79 = sub nsw i64 %sub78, %95
  %96 = load i64, i64* %cv, align 8, !tbaa !7
  %add80 = add nsw i64 %96, %sub79
  store i64 %add80, i64* %cv, align 8, !tbaa !7
  %97 = load i64, i64* %cv, align 8, !tbaa !7
  %98 = load i64, i64* %threshold, align 8, !tbaa !7
  %99 = load i64, i64* %spotsize, align 8, !tbaa !7
  %sub81 = sub nsw i64 %98, %99
  %cmp82 = icmp sle i64 %97, %sub81
  br i1 %cmp82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %cond.end
  %100 = load i64, i64* %threshold, align 8, !tbaa !7
  %101 = load i64, i64* %spotsize, align 8, !tbaa !7
  %sub84 = sub nsw i64 %100, %101
  %add85 = add nsw i64 %sub84, 1
  store i64 %add85, i64* %cv, align 8, !tbaa !7
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %cond.end
  %102 = load i64, i64* %cv, align 8, !tbaa !7
  %mul87 = mul nsw i64 3, %102
  %add88 = add nsw i64 %mul87, 8
  %shr89 = ashr i64 %add88, 4
  %103 = load i32, i32* %p, align 4, !tbaa !5
  %104 = load i32, i32* %c, align 4, !tbaa !5
  %add90 = add nsw i32 %103, %104
  %105 = load i32, i32* %pstep, align 4, !tbaa !5
  %sub91 = sub nsw i32 %add90, %105
  %idxprom92 = sext i32 %sub91 to i64
  %106 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i64, i64* %106, i64 %idxprom92
  %107 = load i64, i64* %arrayidx93, align 8, !tbaa !7
  %add94 = add nsw i64 %107, %shr89
  store i64 %add94, i64* %arrayidx93, align 8, !tbaa !7
  %108 = load i64, i64* %cv, align 8, !tbaa !7
  %mul95 = mul nsw i64 5, %108
  %shr96 = ashr i64 %mul95, 4
  %109 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom97 = sext i32 %109 to i64
  %110 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i64, i64* %110, i64 %idxprom97
  %111 = load i64, i64* %arrayidx98, align 8, !tbaa !7
  %add99 = add nsw i64 %111, 4
  %shr100 = ashr i64 %add99, 3
  %add101 = add nsw i64 %shr96, %shr100
  %112 = load i32, i32* %p, align 4, !tbaa !5
  %113 = load i32, i32* %c, align 4, !tbaa !5
  %add102 = add nsw i32 %112, %113
  %idxprom103 = sext i32 %add102 to i64
  %114 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i64, i64* %114, i64 %idxprom103
  store i64 %add101, i64* %arrayidx104, align 8, !tbaa !7
  %115 = load i64, i64* %cv, align 8, !tbaa !7
  %116 = load i64, i64* %cv, align 8, !tbaa !7
  %mul105 = mul nsw i64 5, %116
  %shr106 = ashr i64 %mul105, 4
  %sub107 = sub nsw i64 %115, %shr106
  %117 = load i64, i64* %cv, align 8, !tbaa !7
  %mul108 = mul nsw i64 3, %117
  %add109 = add nsw i64 %mul108, 8
  %shr110 = ashr i64 %add109, 4
  %sub111 = sub nsw i64 %sub107, %shr110
  %118 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom112 = sext i32 %118 to i64
  %119 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i64, i64* %119, i64 %idxprom112
  store i64 %sub111, i64* %arrayidx113, align 8, !tbaa !7
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.86
  %120 = load i32, i32* %c, align 4, !tbaa !5
  %inc115 = add nsw i32 %120, 1
  store i32 %inc115, i32* %c, align 4, !tbaa !5
  br label %for.cond.58

for.end.116:                                      ; preds = %for.cond.58
  br label %if.end.190

if.else.117:                                      ; preds = %if.end.31
  store i32 0, i32* %c, align 4, !tbaa !5
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.187, %if.else.117
  %121 = load i32, i32* %c, align 4, !tbaa !5
  %cmp119 = icmp slt i32 %121, 3
  br i1 %cmp119, label %for.body.120, label %for.end.189

for.body.120:                                     ; preds = %for.cond.118
  %122 = load i32, i32* %p, align 4, !tbaa !5
  %123 = load i32, i32* %c, align 4, !tbaa !5
  %add121 = add nsw i32 %122, %123
  %idxprom122 = sext i32 %add121 to i64
  %124 = load i64*, i64** %in, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i64, i64* %124, i64 %idxprom122
  %125 = load i64, i64* %arrayidx123, align 8, !tbaa !7
  store i64 %125, i64* %cv, align 8, !tbaa !7
  %126 = load i64, i64* %cv, align 8, !tbaa !7
  %127 = load i64, i64* %k, align 8, !tbaa !7
  %cmp124 = icmp sgt i64 %126, %127
  br i1 %cmp124, label %if.then.125, label %if.else.143

if.then.125:                                      ; preds = %for.body.120
  %128 = load i32, i32* %p, align 4, !tbaa !5
  %129 = load i32, i32* %c, align 4, !tbaa !5
  %add126 = add nsw i32 %128, %129
  %idxprom127 = sext i32 %add126 to i64
  %130 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i64, i64* %130, i64 %idxprom127
  %131 = load i64, i64* %arrayidx128, align 8, !tbaa !7
  %132 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom129 = sext i32 %132 to i64
  %133 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i64, i64* %133, i64 %idxprom129
  %134 = load i64, i64* %arrayidx130, align 8, !tbaa !7
  %add131 = add nsw i64 %131, %134
  %135 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom132 = sext i32 %135 to i64
  %136 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i64, i64* %136, i64 %idxprom132
  %137 = load i64, i64* %arrayidx133, align 8, !tbaa !7
  %add134 = add nsw i64 %137, 4
  %shr135 = ashr i64 %add134, 3
  %sub136 = sub nsw i64 %add131, %shr135
  %138 = load i64, i64* %cv, align 8, !tbaa !7
  %add137 = add nsw i64 %138, %sub136
  store i64 %add137, i64* %cv, align 8, !tbaa !7
  %139 = load i64, i64* %cv, align 8, !tbaa !7
  %140 = load i64, i64* %threshold, align 8, !tbaa !7
  %cmp138 = icmp sgt i64 %139, %140
  br i1 %cmp138, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %if.then.125
  %141 = load i64, i64* %spotsize, align 8, !tbaa !7
  %142 = load i64, i64* %cv, align 8, !tbaa !7
  %sub140 = sub nsw i64 %142, %141
  store i64 %sub140, i64* %cv, align 8, !tbaa !7
  %143 = load i32, i32* %c, align 4, !tbaa !5
  %shr141 = ashr i32 8, %143
  %144 = load i32, i32* %pixel, align 4, !tbaa !5
  %or = or i32 %144, %shr141
  store i32 %or, i32* %pixel, align 4, !tbaa !5
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.139, %if.then.125
  br label %if.end.159

if.else.143:                                      ; preds = %for.body.120
  %145 = load i64, i64* %k, align 8, !tbaa !7
  %146 = load i32, i32* %p, align 4, !tbaa !5
  %147 = load i32, i32* %c, align 4, !tbaa !5
  %add144 = add nsw i32 %146, %147
  %idxprom145 = sext i32 %add144 to i64
  %148 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i64, i64* %148, i64 %idxprom145
  %149 = load i64, i64* %arrayidx146, align 8, !tbaa !7
  %add147 = add nsw i64 %145, %149
  %150 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom148 = sext i32 %150 to i64
  %151 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i64, i64* %151, i64 %idxprom148
  %152 = load i64, i64* %arrayidx149, align 8, !tbaa !7
  %add150 = add nsw i64 %add147, %152
  %153 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom151 = sext i32 %153 to i64
  %154 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i64, i64* %154, i64 %idxprom151
  %155 = load i64, i64* %arrayidx152, align 8, !tbaa !7
  %add153 = add nsw i64 %155, 4
  %shr154 = ashr i64 %add153, 3
  %sub155 = sub nsw i64 %add150, %shr154
  store i64 %sub155, i64* %cv, align 8, !tbaa !7
  %156 = load i64, i64* %cv, align 8, !tbaa !7
  %157 = load i64, i64* %threshold, align 8, !tbaa !7
  %cmp156 = icmp sgt i64 %156, %157
  br i1 %cmp156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.else.143
  %158 = load i64, i64* %threshold, align 8, !tbaa !7
  store i64 %158, i64* %cv, align 8, !tbaa !7
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.else.143
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.142
  %159 = load i64, i64* %cv, align 8, !tbaa !7
  %mul160 = mul nsw i64 3, %159
  %add161 = add nsw i64 %mul160, 8
  %shr162 = ashr i64 %add161, 4
  %160 = load i32, i32* %p, align 4, !tbaa !5
  %161 = load i32, i32* %c, align 4, !tbaa !5
  %add163 = add nsw i32 %160, %161
  %162 = load i32, i32* %pstep, align 4, !tbaa !5
  %sub164 = sub nsw i32 %add163, %162
  %idxprom165 = sext i32 %sub164 to i64
  %163 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i64, i64* %163, i64 %idxprom165
  %164 = load i64, i64* %arrayidx166, align 8, !tbaa !7
  %add167 = add nsw i64 %164, %shr162
  store i64 %add167, i64* %arrayidx166, align 8, !tbaa !7
  %165 = load i64, i64* %cv, align 8, !tbaa !7
  %mul168 = mul nsw i64 5, %165
  %shr169 = ashr i64 %mul168, 4
  %166 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom170 = sext i32 %166 to i64
  %167 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i64, i64* %167, i64 %idxprom170
  %168 = load i64, i64* %arrayidx171, align 8, !tbaa !7
  %add172 = add nsw i64 %168, 4
  %shr173 = ashr i64 %add172, 3
  %add174 = add nsw i64 %shr169, %shr173
  %169 = load i32, i32* %p, align 4, !tbaa !5
  %170 = load i32, i32* %c, align 4, !tbaa !5
  %add175 = add nsw i32 %169, %170
  %idxprom176 = sext i32 %add175 to i64
  %171 = load i64*, i64** %errv, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i64, i64* %171, i64 %idxprom176
  store i64 %add174, i64* %arrayidx177, align 8, !tbaa !7
  %172 = load i64, i64* %cv, align 8, !tbaa !7
  %173 = load i64, i64* %cv, align 8, !tbaa !7
  %mul178 = mul nsw i64 5, %173
  %shr179 = ashr i64 %mul178, 4
  %sub180 = sub nsw i64 %172, %shr179
  %174 = load i64, i64* %cv, align 8, !tbaa !7
  %mul181 = mul nsw i64 3, %174
  %add182 = add nsw i64 %mul181, 8
  %shr183 = ashr i64 %add182, 4
  %sub184 = sub nsw i64 %sub180, %shr183
  %175 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom185 = sext i32 %175 to i64
  %176 = load i64*, i64** %errc, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i64, i64* %176, i64 %idxprom185
  store i64 %sub184, i64* %arrayidx186, align 8, !tbaa !7
  br label %for.inc.187

for.inc.187:                                      ; preds = %if.end.159
  %177 = load i32, i32* %c, align 4, !tbaa !5
  %inc188 = add nsw i32 %177, 1
  store i32 %inc188, i32* %c, align 4, !tbaa !5
  br label %for.cond.118

for.end.189:                                      ; preds = %for.cond.118
  br label %if.end.190

if.end.190:                                       ; preds = %for.end.189, %for.end.116
  %178 = load i32, i32* %pixel, align 4, !tbaa !5
  %conv = trunc i32 %178 to i8
  %179 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8 %conv, i8* %179, align 1, !tbaa !27
  %180 = load i32, i32* %bstep, align 4, !tbaa !5
  %181 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %idx.ext191 = sext i32 %180 to i64
  %add.ptr192 = getelementptr inbounds i8, i8* %181, i64 %idx.ext191
  store i8* %add.ptr192, i8** %out.addr, align 8, !tbaa !1
  %182 = bitcast i64* %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast i64* %cv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  br label %for.inc.193

for.inc.193:                                      ; preds = %if.end.190
  %186 = load i32, i32* %pstep, align 4, !tbaa !5
  %187 = load i32, i32* %p, align 4, !tbaa !5
  %add194 = add nsw i32 %187, %186
  store i32 %add194, i32* %p, align 4, !tbaa !5
  br label %for.cond.13

for.end.195:                                      ; preds = %for.cond.13
  %188 = bitcast i64** %errv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast i64** %errc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast i64* %threshold to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i64* %spotsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %pstep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %pstop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %pstart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %bstep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  br label %if.end.379

if.else.196:                                      ; preds = %entry
  %197 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %197) #1
  %198 = bitcast i32* %i2do to i8*
  call void @llvm.lifetime.start(i64 4, i8* %198) #1
  %199 = bitcast i64* %rand_max to i8*
  call void @llvm.lifetime.start(i64 8, i8* %199) #1
  %200 = bitcast double* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %200) #1
  %201 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %201) #1
  %202 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %202, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %203 = load i32, i32* %num_components, align 4, !tbaa !9
  %cmp197 = icmp ne i32 %203, 4
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.else.196
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.200:                                       ; preds = %if.else.196
  %204 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %204, i32 0, i32 68
  %dither = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc, i32 0, i32 2
  %205 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither, align 8, !tbaa !28
  %cmp201 = icmp eq %struct.stc_dither_s* %205, null
  br i1 %cmp201, label %if.then.207, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.200
  %206 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc203 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %206, i32 0, i32 68
  %dither204 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc203, i32 0, i32 2
  %207 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither204, align 8, !tbaa !28
  %flags = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %207, i32 0, i32 2
  %208 = load i32, i32* %flags, align 4, !tbaa !29
  %and = and i32 %208, 24
  %cmp205 = icmp ne i32 %and, 16
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %lor.lhs.false, %if.end.200
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.208:                                       ; preds = %lor.lhs.false
  %209 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc209 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %209, i32 0, i32 68
  %dither210 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc209, i32 0, i32 2
  %210 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither210, align 8, !tbaa !28
  %flags211 = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %210, i32 0, i32 2
  %211 = load i32, i32* %flags211, align 4, !tbaa !29
  %div = udiv i32 %211, 256
  %cmp212 = icmp ult i32 %div, 1
  br i1 %cmp212, label %if.then.223, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %if.end.208
  %212 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc215 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %212, i32 0, i32 68
  %dither216 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc215, i32 0, i32 2
  %213 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither216, align 8, !tbaa !28
  %bufadd = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %213, i32 0, i32 3
  %214 = load i32, i32* %bufadd, align 4, !tbaa !31
  %215 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info217 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %215, i32 0, i32 11
  %num_components218 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info217, i32 0, i32 1
  %216 = load i32, i32* %num_components218, align 4, !tbaa !9
  %mul219 = mul nsw i32 3, %216
  %add220 = add nsw i32 3, %mul219
  %cmp221 = icmp ult i32 %214, %add220
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %lor.lhs.false.214, %if.end.208
  store i32 -3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.224:                                       ; preds = %lor.lhs.false.214
  %217 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc225 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %217, i32 0, i32 68
  %dither226 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc225, i32 0, i32 2
  %218 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither226, align 8, !tbaa !28
  %flags227 = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %218, i32 0, i32 2
  %219 = load i32, i32* %flags227, align 4, !tbaa !29
  %and228 = and i32 %219, 192
  %tobool229 = icmp ne i32 %and228, 0
  br i1 %tobool229, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.end.224
  store i32 -4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.231:                                       ; preds = %if.end.224
  %220 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i64, i64* %220, i64 0
  store i64 1, i64* %arrayidx232, align 8, !tbaa !7
  %221 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc233 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %221, i32 0, i32 68
  %dither234 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc233, i32 0, i32 2
  %222 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither234, align 8, !tbaa !28
  %minmax = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %222, i32 0, i32 4
  %arrayidx235 = getelementptr inbounds [2 x double], [2 x double]* %minmax, i32 0, i64 1
  %223 = load double, double* %arrayidx235, align 8, !tbaa !32
  store double %223, double* %scale, align 8, !tbaa !32
  %224 = load double, double* %scale, align 8, !tbaa !32
  %225 = load double, double* %scale, align 8, !tbaa !32
  %cmp236 = fcmp ogt double %225, 0.000000e+00
  %cond238 = select i1 %cmp236, double 5.000000e-01, double -5.000000e-01
  %add239 = fadd double %224, %cond238
  %conv240 = fptosi double %add239 to i64
  %226 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx241 = getelementptr inbounds i64, i64* %226, i64 1
  store i64 %conv240, i64* %arrayidx241, align 8, !tbaa !7
  %227 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc242 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %227, i32 0, i32 68
  %dither243 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc242, i32 0, i32 2
  %228 = load %struct.stc_dither_s*, %struct.stc_dither_s** %dither243, align 8, !tbaa !28
  %minmax244 = getelementptr inbounds %struct.stc_dither_s, %struct.stc_dither_s* %228, i32 0, i32 4
  %arrayidx245 = getelementptr inbounds [2 x double], [2 x double]* %minmax244, i32 0, i64 0
  %229 = load double, double* %arrayidx245, align 8, !tbaa !32
  store double %229, double* %offset, align 8, !tbaa !32
  %230 = load double, double* %offset, align 8, !tbaa !32
  %231 = load double, double* %scale, align 8, !tbaa !32
  %sub246 = fsub double %231, %230
  store double %sub246, double* %scale, align 8, !tbaa !32
  %232 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc247 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %232, i32 0, i32 68
  %flags248 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc247, i32 0, i32 0
  %233 = load i64, i64* %flags248, align 8, !tbaa !34
  %and249 = and i64 %233, 2
  %tobool250 = icmp ne i64 %and249, 0
  br i1 %tobool250, label %if.then.251, label %if.else.270

if.then.251:                                      ; preds = %if.end.231
  %234 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc252 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %234, i32 0, i32 68
  %sizv = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc252, i32 0, i32 8
  %arrayidx253 = getelementptr inbounds [4 x i32], [4 x i32]* %sizv, i32 0, i64 0
  %235 = load i32, i32* %arrayidx253, align 4, !tbaa !5
  %sub254 = sub i32 %235, 1
  %idxprom255 = zext i32 %sub254 to i64
  %236 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc256 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %236, i32 0, i32 68
  %extv = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc256, i32 0, i32 7
  %arrayidx257 = getelementptr inbounds [4 x float*], [4 x float*]* %extv, i32 0, i64 0
  %237 = load float*, float** %arrayidx257, align 8, !tbaa !1
  %arrayidx258 = getelementptr inbounds float, float* %237, i64 %idxprom255
  %238 = load float, float* %arrayidx258, align 4, !tbaa !35
  %239 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc259 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %239, i32 0, i32 68
  %extv260 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc259, i32 0, i32 7
  %arrayidx261 = getelementptr inbounds [4 x float*], [4 x float*]* %extv260, i32 0, i64 0
  %240 = load float*, float** %arrayidx261, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds float, float* %240, i64 0
  %241 = load float, float* %arrayidx262, align 4, !tbaa !35
  %sub263 = fsub float %238, %241
  %conv264 = fpext float %sub263 to double
  %242 = load double, double* %scale, align 8, !tbaa !32
  %mul265 = fmul double %conv264, %242
  %div266 = fdiv double %mul265, 2.000000e+00
  %243 = load double, double* %offset, align 8, !tbaa !32
  %add267 = fadd double %div266, %243
  %conv268 = fptosi double %add267 to i64
  %244 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i64, i64* %244, i64 2
  store i64 %conv268, i64* %arrayidx269, align 8, !tbaa !7
  br label %if.end.288

if.else.270:                                      ; preds = %if.end.231
  %245 = load double, double* %offset, align 8, !tbaa !32
  %246 = load double, double* %scale, align 8, !tbaa !32
  %mul271 = fmul double 5.000000e-01, %246
  %add272 = fadd double %245, %mul271
  %cmp273 = fcmp ogt double %add272, 0.000000e+00
  br i1 %cmp273, label %if.then.275, label %if.else.281

if.then.275:                                      ; preds = %if.else.270
  %247 = load double, double* %offset, align 8, !tbaa !32
  %248 = load double, double* %scale, align 8, !tbaa !32
  %mul276 = fmul double 5.000000e-01, %248
  %add277 = fadd double %247, %mul276
  %add278 = fadd double %add277, 5.000000e-01
  %conv279 = fptosi double %add278 to i64
  %249 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx280 = getelementptr inbounds i64, i64* %249, i64 2
  store i64 %conv279, i64* %arrayidx280, align 8, !tbaa !7
  br label %if.end.287

if.else.281:                                      ; preds = %if.else.270
  %250 = load double, double* %offset, align 8, !tbaa !32
  %251 = load double, double* %scale, align 8, !tbaa !32
  %mul282 = fmul double 5.000000e-01, %251
  %add283 = fadd double %250, %mul282
  %sub284 = fsub double %add283, 5.000000e-01
  %conv285 = fptosi double %sub284 to i64
  %252 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds i64, i64* %252, i64 2
  store i64 %conv285, i64* %arrayidx286, align 8, !tbaa !7
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.281, %if.then.275
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.then.251
  %253 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info289 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %253, i32 0, i32 11
  %num_components290 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info289, i32 0, i32 1
  %254 = load i32, i32* %num_components290, align 4, !tbaa !9
  %255 = load i32, i32* %npixel.addr, align 4, !tbaa !5
  %sub291 = sub nsw i32 3, %255
  %mul292 = mul nsw i32 %254, %sub291
  store i32 %mul292, i32* %i2do, align 4, !tbaa !5
  store i64 0, i64* %rand_max, align 8, !tbaa !7
  %256 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %stc293 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %256, i32 0, i32 68
  %flags294 = getelementptr inbounds %struct.stc_s, %struct.stc_s* %stc293, i32 0, i32 0
  %257 = load i64, i64* %flags294, align 8, !tbaa !34
  %and295 = and i64 %257, 1
  %tobool296 = icmp ne i64 %and295, 0
  br i1 %tobool296, label %if.then.297, label %if.else.308

if.then.297:                                      ; preds = %if.end.288
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.305, %if.then.297
  %258 = load i32, i32* %i, align 4, !tbaa !5
  %259 = load i32, i32* %i2do, align 4, !tbaa !5
  %cmp299 = icmp slt i32 %258, %259
  br i1 %cmp299, label %for.body.301, label %for.end.307

for.body.301:                                     ; preds = %for.cond.298
  %260 = load i32, i32* %i, align 4, !tbaa !5
  %add302 = add nsw i32 %260, 3
  %idxprom303 = sext i32 %add302 to i64
  %261 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx304 = getelementptr inbounds i64, i64* %261, i64 %idxprom303
  store i64 0, i64* %arrayidx304, align 8, !tbaa !7
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.body.301
  %262 = load i32, i32* %i, align 4, !tbaa !5
  %inc306 = add nsw i32 %262, 1
  store i32 %inc306, i32* %i, align 4, !tbaa !5
  br label %for.cond.298

for.end.307:                                      ; preds = %for.cond.298
  br label %if.end.374

if.else.308:                                      ; preds = %if.end.288
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.327, %if.else.308
  %263 = load i32, i32* %i, align 4, !tbaa !5
  %264 = load i32, i32* %i2do, align 4, !tbaa !5
  %cmp310 = icmp slt i32 %263, %264
  br i1 %cmp310, label %for.body.312, label %for.end.329

for.body.312:                                     ; preds = %for.cond.309
  %call = call i32 @rand() #3
  %conv313 = sext i32 %call to i64
  %265 = load i32, i32* %i, align 4, !tbaa !5
  %add314 = add nsw i32 %265, 3
  %idxprom315 = sext i32 %add314 to i64
  %266 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx316 = getelementptr inbounds i64, i64* %266, i64 %idxprom315
  store i64 %conv313, i64* %arrayidx316, align 8, !tbaa !7
  %267 = load i32, i32* %i, align 4, !tbaa !5
  %add317 = add nsw i32 %267, 3
  %idxprom318 = sext i32 %add317 to i64
  %268 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx319 = getelementptr inbounds i64, i64* %268, i64 %idxprom318
  %269 = load i64, i64* %arrayidx319, align 8, !tbaa !7
  %270 = load i64, i64* %rand_max, align 8, !tbaa !7
  %cmp320 = icmp sgt i64 %269, %270
  br i1 %cmp320, label %if.then.322, label %if.end.326

if.then.322:                                      ; preds = %for.body.312
  %271 = load i32, i32* %i, align 4, !tbaa !5
  %add323 = add nsw i32 %271, 3
  %idxprom324 = sext i32 %add323 to i64
  %272 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx325 = getelementptr inbounds i64, i64* %272, i64 %idxprom324
  %273 = load i64, i64* %arrayidx325, align 8, !tbaa !7
  store i64 %273, i64* %rand_max, align 8, !tbaa !7
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.322, %for.body.312
  br label %for.inc.327

for.inc.327:                                      ; preds = %if.end.326
  %274 = load i32, i32* %i, align 4, !tbaa !5
  %inc328 = add nsw i32 %274, 1
  store i32 %inc328, i32* %i, align 4, !tbaa !5
  br label %for.cond.309

for.end.329:                                      ; preds = %for.cond.309
  %275 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx330 = getelementptr inbounds i64, i64* %275, i64 1
  %276 = load i64, i64* %arrayidx330, align 8, !tbaa !7
  %conv331 = sitofp i64 %276 to double
  %277 = load i64, i64* %rand_max, align 8, !tbaa !7
  %conv332 = sitofp i64 %277 to double
  %div333 = fdiv double %conv331, %conv332
  store double %div333, double* %scale, align 8, !tbaa !32
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.352, %for.end.329
  %278 = load i32, i32* %i, align 4, !tbaa !5
  %279 = load %struct.stcolor_device_s*, %struct.stcolor_device_s** %sdev.addr, align 8, !tbaa !1
  %color_info335 = getelementptr inbounds %struct.stcolor_device_s, %struct.stcolor_device_s* %279, i32 0, i32 11
  %num_components336 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info335, i32 0, i32 1
  %280 = load i32, i32* %num_components336, align 4, !tbaa !9
  %cmp337 = icmp slt i32 %278, %280
  br i1 %cmp337, label %for.body.339, label %for.end.354

for.body.339:                                     ; preds = %for.cond.334
  %281 = load double, double* %scale, align 8, !tbaa !32
  %mul340 = fmul double 2.500000e-01, %281
  %282 = load i32, i32* %i, align 4, !tbaa !5
  %add341 = add nsw i32 %282, 3
  %idxprom342 = sext i32 %add341 to i64
  %283 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx343 = getelementptr inbounds i64, i64* %283, i64 %idxprom342
  %284 = load i64, i64* %arrayidx343, align 8, !tbaa !7
  %285 = load i64, i64* %rand_max, align 8, !tbaa !7
  %div344 = sdiv i64 %285, 2
  %sub345 = sub nsw i64 %284, %div344
  %conv346 = sitofp i64 %sub345 to double
  %mul347 = fmul double %mul340, %conv346
  %conv348 = fptosi double %mul347 to i64
  %286 = load i32, i32* %i, align 4, !tbaa !5
  %add349 = add nsw i32 %286, 3
  %idxprom350 = sext i32 %add349 to i64
  %287 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx351 = getelementptr inbounds i64, i64* %287, i64 %idxprom350
  store i64 %conv348, i64* %arrayidx351, align 8, !tbaa !7
  br label %for.inc.352

for.inc.352:                                      ; preds = %for.body.339
  %288 = load i32, i32* %i, align 4, !tbaa !5
  %inc353 = add nsw i32 %288, 1
  store i32 %inc353, i32* %i, align 4, !tbaa !5
  br label %for.cond.334

for.end.354:                                      ; preds = %for.cond.334
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.371, %for.end.354
  %289 = load i32, i32* %i, align 4, !tbaa !5
  %290 = load i32, i32* %i2do, align 4, !tbaa !5
  %cmp356 = icmp slt i32 %289, %290
  br i1 %cmp356, label %for.body.358, label %for.end.373

for.body.358:                                     ; preds = %for.cond.355
  %291 = load double, double* %scale, align 8, !tbaa !32
  %mul359 = fmul double 2.812500e-01, %291
  %292 = load i32, i32* %i, align 4, !tbaa !5
  %add360 = add nsw i32 %292, 3
  %idxprom361 = sext i32 %add360 to i64
  %293 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx362 = getelementptr inbounds i64, i64* %293, i64 %idxprom361
  %294 = load i64, i64* %arrayidx362, align 8, !tbaa !7
  %295 = load i64, i64* %rand_max, align 8, !tbaa !7
  %div363 = sdiv i64 %295, 2
  %sub364 = sub nsw i64 %294, %div363
  %conv365 = sitofp i64 %sub364 to double
  %mul366 = fmul double %mul359, %conv365
  %conv367 = fptosi double %mul366 to i64
  %296 = load i32, i32* %i, align 4, !tbaa !5
  %add368 = add nsw i32 %296, 3
  %idxprom369 = sext i32 %add368 to i64
  %297 = load i64*, i64** %buf, align 8, !tbaa !1
  %arrayidx370 = getelementptr inbounds i64, i64* %297, i64 %idxprom369
  store i64 %conv367, i64* %arrayidx370, align 8, !tbaa !7
  br label %for.inc.371

for.inc.371:                                      ; preds = %for.body.358
  %298 = load i32, i32* %i, align 4, !tbaa !5
  %inc372 = add nsw i32 %298, 1
  store i32 %inc372, i32* %i, align 4, !tbaa !5
  br label %for.cond.355

for.end.373:                                      ; preds = %for.cond.355
  br label %if.end.374

if.end.374:                                       ; preds = %for.end.373, %for.end.307
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.374, %if.then.230, %if.then.223, %if.then.207, %if.then.199
  %299 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast double* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast i64* %rand_max to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  %302 = bitcast i32* %i2do to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.380 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.379

if.end.379:                                       ; preds = %cleanup.cont, %for.end.195
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.380

cleanup.380:                                      ; preds = %if.end.379, %cleanup
  %304 = bitcast i64** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  %305 = bitcast i64** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = load i32, i32* %retval
  ret i32 %306
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !6, i64 100}
!10 = !{!"stcolor_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !3, i64 1728, !21, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !8, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !23, i64 17256, !6, i64 17288, !2, i64 17296, !20, i64 17304, !20, i64 17888, !24, i64 18472}
!11 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !14, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !6, i64 712}
!13 = !{!"short", !3, i64 0}
!14 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!15 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!16 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!17 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !18, i64 16, !6, i64 32, !3, i64 36}
!18 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !8, i64 8}
!19 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!21 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !22, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!22 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!23 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!24 = !{!"stc_s", !8, i64 0, !6, i64 8, !2, i64 16, !2, i64 24, !3, i64 32, !3, i64 64, !3, i64 80, !3, i64 112, !3, i64 144, !3, i64 160, !3, i64 192, !3, i64 204, !25, i64 216, !26, i64 232, !26, i64 248, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !3, i64 368, !6, i64 400}
!25 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!26 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!27 = !{!3, !3, i64 0}
!28 = !{!10, !2, i64 18488}
!29 = !{!30, !6, i64 16}
!30 = !{!"stc_dither_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !3, i64 24}
!31 = !{!30, !6, i64 20}
!32 = !{!33, !33, i64 0}
!33 = !{!"double", !3, i64 0}
!34 = !{!10, !8, i64 18472}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !3, i64 0}
