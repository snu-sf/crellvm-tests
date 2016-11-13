; ModuleID = './gdevbjca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.skip_s = type { i32, i32, i32, i32 }
%struct.gx_device_bjc_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, %struct.anon, i32, i32, [1024 x i32], i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32] }
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
%struct.anon = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\1B@\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[K\02\00\00\0F\00", align 1
@bjc_rand_seed = global [55 x i32] [i32 3627, i32 15177, i32 6104, i32 15555, i32 14210, i32 9940, i32 11987, i32 7070, i32 6147, i32 15691, i32 14536, i32 12896, i32 8959, i32 14926, i32 9034, i32 13544, i32 13665, i32 3175, i32 10177, i32 14856, i32 16042, i32 4265, i32 13976, i32 10805, i32 14817, i32 8216, i32 695, i32 8656, i32 9189, i32 15304, i32 1469, i32 9641, i32 1648, i32 16218, i32 12421, i32 5451, i32 255, i32 11268, i32 16121, i32 11645, i32 1855, i32 5982, i32 9983, i32 1052, i32 5255, i32 15264, i32 6123, i32 3577, i32 9712, i32 14629, i32 4593, i32 15670, i32 0, i32 0, i32 0], align 16
@.str.2 = private unnamed_addr constant [17 x i8] c"bjc error buffer\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"bjc CMY error buffer\00", align 1
@bjc_put_command.tmp = private unnamed_addr constant [3 x i8] c"\1B( ", align 1

; Function Attrs: nounwind uwtable
define void @bjc_put_LF(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 10, %struct._IO_FILE* %0) #4
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @bjc_put_FF(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 12, %struct._IO_FILE* %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_CR(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 13, %struct._IO_FILE* %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_initialize(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_bytes(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bjc_put_bytes(%struct._IO_FILE* %file, i8* %data, i32 %count) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %0, i64 %conv, i64 1, %struct._IO_FILE* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_set_initial(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_bytes(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_set_compression(%struct._IO_FILE* %file, i8 signext %compression) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %compression.addr = alloca i8, align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8 %compression, i8* %compression.addr, align 1, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 98, i32 1) #4
  %1 = load i8, i8* %compression.addr, align 1, !tbaa !7
  %conv = sext i8 %1 to i32
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bjc_put_command(%struct._IO_FILE* %file, i8 signext %command, i32 %count) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %command.addr = alloca i8, align 1
  %count.addr = alloca i32, align 4
  %tmp = alloca [3 x i8], align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8 %command, i8* %command.addr, align 1, !tbaa !7
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = bitcast [3 x i8]* %tmp to i8*
  call void @llvm.lifetime.start(i64 3, i8* %0) #2
  %1 = bitcast [3 x i8]* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @bjc_put_command.tmp, i32 0, i32 0), i64 3, i32 1, i1 false)
  %2 = load i8, i8* %command.addr, align 1, !tbaa !7
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %tmp, i32 0, i64 2
  store i8 %2, i8* %arrayidx, align 1, !tbaa !7
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %tmp, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %arraydecay, i64 3, i64 1, %struct._IO_FILE* %3) #4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %5 = load i32, i32* %count.addr, align 4, !tbaa !5
  call void @bjc_put_lo_hi(%struct._IO_FILE* %4, i32 %5) #4
  %6 = bitcast [3 x i8]* %tmp to i8*
  call void @llvm.lifetime.end(i64 3, i8* %6) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_print_method_short(%struct._IO_FILE* %file, i8 signext %color) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %color.addr = alloca i8, align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8 %color, i8* %color.addr, align 1, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 99, i32 1) #4
  %1 = load i8, i8* %color.addr, align 1, !tbaa !7
  %conv = sext i8 %1 to i32
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_print_method(%struct._IO_FILE* %file, i8 signext %color, i8 signext %media, i8 signext %quality, i8 signext %density) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %color.addr = alloca i8, align 1
  %media.addr = alloca i8, align 1
  %quality.addr = alloca i8, align 1
  %density.addr = alloca i8, align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8 %color, i8* %color.addr, align 1, !tbaa !7
  store i8 %media, i8* %media.addr, align 1, !tbaa !7
  store i8 %quality, i8* %quality.addr, align 1, !tbaa !7
  store i8 %density, i8* %density.addr, align 1, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %1 = load i8, i8* %density.addr, align 1, !tbaa !7
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  %add = add nsw i32 2, %conv1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 99, i32 %add) #4
  %2 = load i8, i8* %color.addr, align 1, !tbaa !7
  %conv2 = sext i8 %2 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv2, %struct._IO_FILE* %3) #4
  %4 = load i8, i8* %media.addr, align 1, !tbaa !7
  %conv3 = sext i8 %4 to i32
  %5 = load i8, i8* %quality.addr, align 1, !tbaa !7
  %conv4 = sext i8 %5 to i32
  %or = or i32 %conv3, %conv4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call5 = call i32 @fputc(i32 %or, %struct._IO_FILE* %6) #4
  %7 = load i8, i8* %density.addr, align 1, !tbaa !7
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8, i8* %density.addr, align 1, !tbaa !7
  %conv6 = sext i8 %8 to i32
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call7 = call i32 @fputc(i32 %conv6, %struct._IO_FILE* %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_raster_resolution(%struct._IO_FILE* %file, i32 %x_resolution, i32 %y_resolution) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %x_resolution.addr = alloca i32, align 4
  %y_resolution.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %x_resolution, i32* %x_resolution.addr, align 4, !tbaa !5
  store i32 %y_resolution, i32* %y_resolution.addr, align 4, !tbaa !5
  %0 = load i32, i32* %x_resolution.addr, align 4, !tbaa !5
  %1 = load i32, i32* %y_resolution.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %2, i8 signext 100, i32 2) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %3, i8 signext 100, i32 4) #4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %5 = load i32, i32* %y_resolution.addr, align 4, !tbaa !5
  call void @bjc_put_hi_lo(%struct._IO_FILE* %4, i32 %5) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %7 = load i32, i32* %x_resolution.addr, align 4, !tbaa !5
  call void @bjc_put_hi_lo(%struct._IO_FILE* %6, i32 %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bjc_put_hi_lo(%struct._IO_FILE* %file, i32 %value) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %value.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  %0 = load i32, i32* %value.addr, align 4, !tbaa !5
  %and = and i32 %0, 65535
  %shr = ashr i32 %and, 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %shr, %struct._IO_FILE* %1) #4
  %2 = load i32, i32* %value.addr, align 4, !tbaa !5
  %and1 = and i32 %2, 255
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %and1, %struct._IO_FILE* %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_raster_skip(%struct._IO_FILE* %file, i32 %skip) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %skip.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %skip, i32* %skip.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 101, i32 2) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %2 = load i32, i32* %skip.addr, align 4, !tbaa !5
  call void @bjc_put_hi_lo(%struct._IO_FILE* %1, i32 %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_page_margins(%struct._IO_FILE* %file, i32 %length, i32 %lm, i32 %rm, i32 %top) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %length.addr = alloca i32, align 4
  %lm.addr = alloca i32, align 4
  %rm.addr = alloca i32, align 4
  %top.addr = alloca i32, align 4
  %parms = alloca [4 x i8], align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  store i32 %lm, i32* %lm.addr, align 4, !tbaa !5
  store i32 %rm, i32* %rm.addr, align 4, !tbaa !5
  store i32 %top, i32* %top.addr, align 4, !tbaa !5
  %0 = bitcast [4 x i8]* %parms to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %length.addr, align 4, !tbaa !5
  %conv = trunc i32 %1 to i8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %parms, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !7
  %2 = load i32, i32* %lm.addr, align 4, !tbaa !5
  %conv1 = trunc i32 %2 to i8
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %parms, i32 0, i64 1
  store i8 %conv1, i8* %arrayidx2, align 1, !tbaa !7
  %3 = load i32, i32* %rm.addr, align 4, !tbaa !5
  %conv3 = trunc i32 %3 to i8
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %parms, i32 0, i64 2
  store i8 %conv3, i8* %arrayidx4, align 1, !tbaa !7
  %4 = load i32, i32* %top.addr, align 4, !tbaa !5
  %conv5 = trunc i32 %4 to i8
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %parms, i32 0, i64 3
  store i8 %conv5, i8* %arrayidx6, align 1, !tbaa !7
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %5, i8 signext 103, i32 4) #4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %parms, i32 0, i32 0
  call void @bjc_put_bytes(%struct._IO_FILE* %6, i8* %arraydecay, i32 4) #4
  %7 = bitcast [4 x i8]* %parms to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @bjc_put_media_supply(%struct._IO_FILE* %file, i8 signext %supply, i8 signext %type) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %supply.addr = alloca i8, align 1
  %type.addr = alloca i8, align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8 %supply, i8* %supply.addr, align 1, !tbaa !7
  store i8 %type, i8* %type.addr, align 1, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 108, i32 2) #4
  %1 = load i8, i8* %supply.addr, align 1, !tbaa !7
  %conv = sext i8 %1 to i32
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %2) #4
  %3 = load i8, i8* %type.addr, align 1, !tbaa !7
  %conv1 = sext i8 %3 to i32
  %shl = shl i32 %conv1, 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %shl, %struct._IO_FILE* %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_cmyk_image(%struct._IO_FILE* %file, i8 signext %component, i8* %data, i32 %count) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %component.addr = alloca i8, align 1
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8 %component, i8* %component.addr, align 1, !tbaa !7
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 65, i32 %add) #4
  %2 = load i8, i8* %component.addr, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %3) #4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %count.addr, align 4, !tbaa !5
  call void @bjc_put_bytes(%struct._IO_FILE* %4, i8* %5, i32 %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_move_lines(%struct._IO_FILE* %file, i32 %lines) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %lines.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %lines, i32* %lines.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 110, i32 2) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %2 = load i32, i32* %lines.addr, align 4, !tbaa !5
  call void @bjc_put_hi_lo(%struct._IO_FILE* %1, i32 %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_move_lines_unit(%struct._IO_FILE* %file, i32 %unit) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %unit.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %unit, i32* %unit.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 111, i32 2) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %2 = load i32, i32* %unit.addr, align 4, !tbaa !5
  call void @bjc_put_hi_lo(%struct._IO_FILE* %1, i32 %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_extended_margins(%struct._IO_FILE* %file, i32 %length, i32 %lm, i32 %rm, i32 %top) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %length.addr = alloca i32, align 4
  %lm.addr = alloca i32, align 4
  %rm.addr = alloca i32, align 4
  %top.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  store i32 %lm, i32* %lm.addr, align 4, !tbaa !5
  store i32 %rm, i32* %rm.addr, align 4, !tbaa !5
  store i32 %top, i32* %top.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 112, i32 8) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %2 = load i32, i32* %length.addr, align 4, !tbaa !5
  call void @bjc_put_hi_lo(%struct._IO_FILE* %1, i32 %2) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %4 = load i32, i32* %lm.addr, align 4, !tbaa !5
  call void @bjc_put_hi_lo(%struct._IO_FILE* %3, i32 %4) #4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %6 = load i32, i32* %rm.addr, align 4, !tbaa !5
  call void @bjc_put_hi_lo(%struct._IO_FILE* %5, i32 %6) #4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %8 = load i32, i32* %top.addr, align 4, !tbaa !5
  call void @bjc_put_hi_lo(%struct._IO_FILE* %7, i32 %8) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_image_format(%struct._IO_FILE* %file, i8 signext %depth, i8 signext %format, i8 signext %ink) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %depth.addr = alloca i8, align 1
  %format.addr = alloca i8, align 1
  %ink.addr = alloca i8, align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8 %depth, i8* %depth.addr, align 1, !tbaa !7
  store i8 %format, i8* %format.addr, align 1, !tbaa !7
  store i8 %ink, i8* %ink.addr, align 1, !tbaa !7
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 116, i32 3) #4
  %1 = load i8, i8* %depth.addr, align 1, !tbaa !7
  %conv = sext i8 %1 to i32
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv, %struct._IO_FILE* %2) #4
  %3 = load i8, i8* %format.addr, align 1, !tbaa !7
  %conv1 = sext i8 %3 to i32
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %conv1, %struct._IO_FILE* %4) #4
  %5 = load i8, i8* %ink.addr, align 1, !tbaa !7
  %conv3 = sext i8 %5 to i32
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call4 = call i32 @fputc(i32 %conv3, %struct._IO_FILE* %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_page_id(%struct._IO_FILE* %file, i32 %id) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %id.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %id, i32* %id.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 113, i32 1) #4
  %1 = load i32, i32* %id.addr, align 4, !tbaa !5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %1, %struct._IO_FILE* %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_continue_image(%struct._IO_FILE* %file, i8* %data, i32 %count) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %1 = load i32, i32* %count.addr, align 4, !tbaa !5
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 70, i32 %1) #4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %count.addr, align 4, !tbaa !5
  call void @bjc_put_bytes(%struct._IO_FILE* %2, i8* %3, i32 %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_put_indexed_image(%struct._IO_FILE* %file, i32 %dot_rows, i32 %dot_cols, i32 %layers) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %dot_rows.addr = alloca i32, align 4
  %dot_cols.addr = alloca i32, align 4
  %layers.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %dot_rows, i32* %dot_rows.addr, align 4, !tbaa !5
  store i32 %dot_cols, i32* %dot_cols.addr, align 4, !tbaa !5
  store i32 %layers, i32* %layers.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  call void @bjc_put_command(%struct._IO_FILE* %0, i8 signext 102, i32 5) #4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 82, %struct._IO_FILE* %1) #4
  %2 = load i32, i32* %dot_rows.addr, align 4, !tbaa !5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call1 = call i32 @fputc(i32 %2, %struct._IO_FILE* %3) #4
  %4 = load i32, i32* %dot_cols.addr, align 4, !tbaa !5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %4, %struct._IO_FILE* %5) #4
  %6 = load i32, i32* %layers.addr, align 4, !tbaa !5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call3 = call i32 @fputc(i32 %6, %struct._IO_FILE* %7) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @bjc_invert_bytes(i8* %row, i32 %raster, i32 %inverse, i8 zeroext %lastmask) #0 {
entry:
  %row.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %inverse.addr = alloca i32, align 4
  %lastmask.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  store i8* %row, i8** %row.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %inverse, i32* %inverse.addr, align 4, !tbaa !5
  store i8 %lastmask, i8* %lastmask.addr, align 1, !tbaa !7
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %ret, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %inverse.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !7
  %conv = zext i8 %4 to i32
  %neg = xor i32 %conv, -1
  %conv1 = trunc i32 %neg to i8
  %5 = load i8*, i8** %row.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %5, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !7
  %tobool2 = icmp ne i8 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %ret, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %8 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %row.addr, align 8, !tbaa !1
  %9 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %dec = add i32 %9, -1
  store i32 %dec, i32* %raster.addr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %inverse.addr, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %for.end
  %11 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !7
  %conv7 = zext i8 %12 to i32
  %xor = xor i32 %conv7, 255
  %conv8 = trunc i32 %xor to i8
  store i8 %conv8, i8* %11, align 1, !tbaa !7
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %for.end
  %13 = load i8, i8* %lastmask.addr, align 1, !tbaa !7
  %conv10 = zext i8 %13 to i32
  %14 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !7
  %conv11 = zext i8 %15 to i32
  %and = and i32 %conv11, %conv10
  %conv12 = trunc i32 %and to i8
  store i8 %conv12, i8* %14, align 1, !tbaa !7
  %16 = load i32, i32* %ret, align 4, !tbaa !5
  %17 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @bjc_invert_cmyk_bytes(i8* %rowC, i8* %rowM, i8* %rowY, i8* %rowK, i32 %raster, i32 %inverse, i8 zeroext %lastmask, %struct.skip_s* %skip) #0 {
entry:
  %rowC.addr = alloca i8*, align 8
  %rowM.addr = alloca i8*, align 8
  %rowY.addr = alloca i8*, align 8
  %rowK.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %inverse.addr = alloca i32, align 4
  %lastmask.addr = alloca i8, align 1
  %skip.addr = alloca %struct.skip_s*, align 8
  %ret = alloca i32, align 4
  %tmpC = alloca i8, align 1
  %tmpM = alloca i8, align 1
  %tmpY = alloca i8, align 1
  store i8* %rowC, i8** %rowC.addr, align 8, !tbaa !1
  store i8* %rowM, i8** %rowM.addr, align 8, !tbaa !1
  store i8* %rowY, i8** %rowY.addr, align 8, !tbaa !1
  store i8* %rowK, i8** %rowK.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %inverse, i32* %inverse.addr, align 4, !tbaa !5
  store i8 %lastmask, i8* %lastmask.addr, align 1, !tbaa !7
  store %struct.skip_s* %skip, %struct.skip_s** %skip.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %ret, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %tmpC) #2
  call void @llvm.lifetime.start(i64 1, i8* %tmpM) #2
  call void @llvm.lifetime.start(i64 1, i8* %tmpY) #2
  %1 = load %struct.skip_s*, %struct.skip_s** %skip.addr, align 8, !tbaa !1
  %skipC = getelementptr inbounds %struct.skip_s, %struct.skip_s* %1, i32 0, i32 0
  store i32 0, i32* %skipC, align 4, !tbaa !8
  %2 = load %struct.skip_s*, %struct.skip_s** %skip.addr, align 8, !tbaa !1
  %skipM = getelementptr inbounds %struct.skip_s, %struct.skip_s* %2, i32 0, i32 1
  store i32 0, i32* %skipM, align 4, !tbaa !10
  %3 = load %struct.skip_s*, %struct.skip_s** %skip.addr, align 8, !tbaa !1
  %skipY = getelementptr inbounds %struct.skip_s, %struct.skip_s* %3, i32 0, i32 2
  store i32 0, i32* %skipY, align 4, !tbaa !11
  %4 = load %struct.skip_s*, %struct.skip_s** %skip.addr, align 8, !tbaa !1
  %skipK = getelementptr inbounds %struct.skip_s, %struct.skip_s* %4, i32 0, i32 3
  store i32 0, i32* %skipK, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %inverse.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %rowC.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !7
  %conv = zext i8 %8 to i32
  %9 = load i8*, i8** %rowK.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !7
  %conv1 = zext i8 %10 to i32
  %or = or i32 %conv, %conv1
  %neg = xor i32 %or, -1
  %conv2 = trunc i32 %neg to i8
  store i8 %conv2, i8* %tmpC, align 1, !tbaa !7
  %11 = load i8*, i8** %rowM.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !7
  %conv3 = zext i8 %12 to i32
  %13 = load i8*, i8** %rowK.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !7
  %conv4 = zext i8 %14 to i32
  %or5 = or i32 %conv3, %conv4
  %neg6 = xor i32 %or5, -1
  %conv7 = trunc i32 %neg6 to i8
  store i8 %conv7, i8* %tmpM, align 1, !tbaa !7
  %15 = load i8*, i8** %rowY.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %conv8 = zext i8 %16 to i32
  %17 = load i8*, i8** %rowK.addr, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !7
  %conv9 = zext i8 %18 to i32
  %or10 = or i32 %conv8, %conv9
  %neg11 = xor i32 %or10, -1
  %conv12 = trunc i32 %neg11 to i8
  store i8 %conv12, i8* %tmpY, align 1, !tbaa !7
  %19 = load i8*, i8** %rowC.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !7
  %conv13 = zext i8 %20 to i32
  %21 = load i8*, i8** %rowM.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %conv14 = zext i8 %22 to i32
  %or15 = or i32 %conv13, %conv14
  %23 = load i8*, i8** %rowY.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !7
  %conv16 = zext i8 %24 to i32
  %or17 = or i32 %or15, %conv16
  %25 = load i8*, i8** %rowK.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !7
  %conv18 = zext i8 %26 to i32
  %or19 = or i32 %or17, %conv18
  %neg20 = xor i32 %or19, -1
  %conv21 = trunc i32 %neg20 to i8
  %27 = load i8*, i8** %rowK.addr, align 8, !tbaa !1
  store i8 %conv21, i8* %27, align 1, !tbaa !7
  %28 = load i8, i8* %tmpC, align 1, !tbaa !7
  %29 = load i8*, i8** %rowC.addr, align 8, !tbaa !1
  store i8 %28, i8* %29, align 1, !tbaa !7
  %30 = load i8, i8* %tmpM, align 1, !tbaa !7
  %31 = load i8*, i8** %rowM.addr, align 8, !tbaa !1
  store i8 %30, i8* %31, align 1, !tbaa !7
  %32 = load i8, i8* %tmpY, align 1, !tbaa !7
  %33 = load i8*, i8** %rowY.addr, align 8, !tbaa !1
  store i8 %32, i8* %33, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %34 = load i8*, i8** %rowC.addr, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !7
  %tobool22 = icmp ne i8 %35, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end
  %36 = load %struct.skip_s*, %struct.skip_s** %skip.addr, align 8, !tbaa !1
  %skipC24 = getelementptr inbounds %struct.skip_s, %struct.skip_s* %36, i32 0, i32 0
  store i32 1, i32* %skipC24, align 4, !tbaa !8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end
  %37 = load i8*, i8** %rowM.addr, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !7
  %tobool26 = icmp ne i8 %38, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.25
  %39 = load %struct.skip_s*, %struct.skip_s** %skip.addr, align 8, !tbaa !1
  %skipM28 = getelementptr inbounds %struct.skip_s, %struct.skip_s* %39, i32 0, i32 1
  store i32 1, i32* %skipM28, align 4, !tbaa !10
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.25
  %40 = load i8*, i8** %rowY.addr, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !7
  %tobool30 = icmp ne i8 %41, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %42 = load %struct.skip_s*, %struct.skip_s** %skip.addr, align 8, !tbaa !1
  %skipY32 = getelementptr inbounds %struct.skip_s, %struct.skip_s* %42, i32 0, i32 2
  store i32 1, i32* %skipY32, align 4, !tbaa !11
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %43 = load i8*, i8** %rowK.addr, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !7
  %tobool34 = icmp ne i8 %44, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %45 = load %struct.skip_s*, %struct.skip_s** %skip.addr, align 8, !tbaa !1
  %skipK36 = getelementptr inbounds %struct.skip_s, %struct.skip_s* %45, i32 0, i32 3
  store i32 1, i32* %skipK36, align 4, !tbaa !12
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  %46 = load i8*, i8** %rowC.addr, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !7
  %conv38 = zext i8 %47 to i32
  %48 = load i8*, i8** %rowM.addr, align 8, !tbaa !1
  %49 = load i8, i8* %48, align 1, !tbaa !7
  %conv39 = zext i8 %49 to i32
  %or40 = or i32 %conv38, %conv39
  %50 = load i8*, i8** %rowY.addr, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !7
  %conv41 = zext i8 %51 to i32
  %or42 = or i32 %or40, %conv41
  %52 = load i8*, i8** %rowK.addr, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !7
  %conv43 = zext i8 %53 to i32
  %or44 = or i32 %or42, %conv43
  %tobool45 = icmp ne i32 %or44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.37
  store i32 1, i32* %ret, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %54 = load i8*, i8** %rowC.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %rowC.addr, align 8, !tbaa !1
  %55 = load i8*, i8** %rowM.addr, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr48, i8** %rowM.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %rowY.addr, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr49, i8** %rowY.addr, align 8, !tbaa !1
  %57 = load i8*, i8** %rowK.addr, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr50, i8** %rowK.addr, align 8, !tbaa !1
  %58 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %dec = add i32 %58, -1
  store i32 %dec, i32* %raster.addr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load i32, i32* %ret, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %tmpY) #2
  call void @llvm.lifetime.end(i64 1, i8* %tmpM) #2
  call void @llvm.lifetime.end(i64 1, i8* %tmpC) #2
  %60 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @bjc_compress(i8* %row, i32 %raster, i8* %compressed) #0 {
entry:
  %row.addr = alloca i8*, align 8
  %raster.addr = alloca i32, align 4
  %compressed.addr = alloca i8*, align 8
  %end_row = alloca i8*, align 8
  %exam = alloca i8*, align 8
  %cptr = alloca i8*, align 8
  %compr = alloca i8*, align 8
  %end_dis = alloca i8*, align 8
  %next = alloca i8*, align 8
  %test = alloca i8, align 1
  %test2 = alloca i8, align 1
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %count56 = alloca i32, align 4
  %this = alloca i32, align 4
  store i8* %row, i8** %row.addr, align 8, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i8* %compressed, i8** %compressed.addr, align 8, !tbaa !1
  %0 = bitcast i8** %end_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %row.addr, align 8, !tbaa !1
  store i8* %1, i8** %end_row, align 8, !tbaa !1
  %2 = bitcast i8** %exam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8*, i8** %row.addr, align 8, !tbaa !1
  store i8* %3, i8** %exam, align 8, !tbaa !1
  %4 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  store i8* %5, i8** %cptr, align 8, !tbaa !1
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %7 = load i8*, i8** %end_row, align 8, !tbaa !1
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %end_row, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.79, %entry
  %8 = load i8*, i8** %exam, align 8, !tbaa !1
  %9 = load i8*, i8** %end_row, align 8, !tbaa !1
  %cmp = icmp ult i8* %8, %9
  br i1 %cmp, label %while.body, label %while.end.80

while.body:                                       ; preds = %while.cond
  %10 = bitcast i8** %compr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load i8*, i8** %exam, align 8, !tbaa !1
  store i8* %11, i8** %compr, align 8, !tbaa !1
  %12 = bitcast i8** %end_dis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i8** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  call void @llvm.lifetime.start(i64 1, i8* %test) #2
  call void @llvm.lifetime.start(i64 1, i8* %test2) #2
  %14 = load i8*, i8** %exam, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !7
  store i8 %15, i8* %test, align 1, !tbaa !7
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %while.body
  %16 = load i8*, i8** %exam, align 8, !tbaa !1
  %17 = load i8*, i8** %end_row, align 8, !tbaa !1
  %cmp2 = icmp ult i8* %16, %17
  br i1 %cmp2, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.1
  %18 = load i8*, i8** %exam, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %exam, align 8, !tbaa !1
  %19 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  store i8 %19, i8* %test2, align 1, !tbaa !7
  %20 = load i8, i8* %test, align 1, !tbaa !7
  %conv = zext i8 %20 to i32
  %21 = load i8, i8* %test2, align 1, !tbaa !7
  %conv4 = zext i8 %21 to i32
  %cmp5 = icmp eq i32 %conv, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.3
  br label %while.end

if.end:                                           ; preds = %while.body.3
  %22 = load i8, i8* %test2, align 1, !tbaa !7
  store i8 %22, i8* %test, align 1, !tbaa !7
  br label %while.cond.1

while.end:                                        ; preds = %if.then, %while.cond.1
  %23 = load i8*, i8** %exam, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %23, i64 -1
  store i8* %add.ptr7, i8** %end_dis, align 8, !tbaa !1
  %24 = load i8*, i8** %exam, align 8, !tbaa !1
  %25 = load i8*, i8** %end_row, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %24, %25
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %while.end
  %26 = load i8*, i8** %end_row, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %incdec.ptr11, i8** %end_row, align 8, !tbaa !1
  store i8* %incdec.ptr11, i8** %next, align 8, !tbaa !1
  br label %if.end.23

if.else:                                          ; preds = %while.end
  %27 = load i8*, i8** %exam, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %add.ptr12, i8** %next, align 8, !tbaa !1
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.20, %if.else
  %28 = load i8*, i8** %next, align 8, !tbaa !1
  %29 = load i8*, i8** %end_row, align 8, !tbaa !1
  %cmp14 = icmp ult i8* %28, %29
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.13
  %30 = load i8*, i8** %next, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !7
  %conv16 = zext i8 %31 to i32
  %32 = load i8, i8* %test, align 1, !tbaa !7
  %conv17 = zext i8 %32 to i32
  %cmp18 = icmp eq i32 %conv16, %conv17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.13
  %33 = phi i1 [ false, %while.cond.13 ], [ %cmp18, %land.rhs ]
  br i1 %33, label %while.body.20, label %while.end.22

while.body.20:                                    ; preds = %land.end
  %34 = load i8*, i8** %next, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr21, i8** %next, align 8, !tbaa !1
  br label %while.cond.13

while.end.22:                                     ; preds = %land.end
  br label %if.end.23

if.end.23:                                        ; preds = %while.end.22, %if.then.10
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end.23
  %35 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %37 = load i8*, i8** %compr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv24 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv24, i32* %count, align 4, !tbaa !5
  %38 = load i32, i32* %count, align 4, !tbaa !5
  switch i32 %38, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %sw.bb.26
    i32 4, label %sw.bb.29
    i32 3, label %sw.bb.32
    i32 2, label %sw.bb.35
    i32 1, label %sw.bb.38
    i32 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %for.cond
  %39 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 5
  %40 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %41 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %41, i64 6
  store i8 %40, i8* %arrayidx25, align 1, !tbaa !7
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %for.cond, %sw.bb
  %42 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %42, i64 4
  %43 = load i8, i8* %arrayidx27, align 1, !tbaa !7
  %44 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %44, i64 5
  store i8 %43, i8* %arrayidx28, align 1, !tbaa !7
  br label %sw.bb.29

sw.bb.29:                                         ; preds = %for.cond, %sw.bb.26
  %45 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %45, i64 3
  %46 = load i8, i8* %arrayidx30, align 1, !tbaa !7
  %47 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %47, i64 4
  store i8 %46, i8* %arrayidx31, align 1, !tbaa !7
  br label %sw.bb.32

sw.bb.32:                                         ; preds = %for.cond, %sw.bb.29
  %48 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %48, i64 2
  %49 = load i8, i8* %arrayidx33, align 1, !tbaa !7
  %50 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %50, i64 3
  store i8 %49, i8* %arrayidx34, align 1, !tbaa !7
  br label %sw.bb.35

sw.bb.35:                                         ; preds = %for.cond, %sw.bb.32
  %51 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx36, align 1, !tbaa !7
  %53 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %53, i64 2
  store i8 %52, i8* %arrayidx37, align 1, !tbaa !7
  br label %sw.bb.38

sw.bb.38:                                         ; preds = %for.cond, %sw.bb.35
  %54 = load i8*, i8** %compr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx39, align 1, !tbaa !7
  %56 = load i8*, i8** %cptr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %56, i64 1
  store i8 %55, i8* %arrayidx40, align 1, !tbaa !7
  %57 = load i32, i32* %count, align 4, !tbaa !5
  %sub = sub i32 %57, 1
  %conv41 = trunc i32 %sub to i8
  %58 = load i8*, i8** %cptr, align 8, !tbaa !1
  store i8 %conv41, i8* %58, align 1, !tbaa !7
  %59 = load i32, i32* %count, align 4, !tbaa !5
  %add = add i32 %59, 1
  %60 = load i8*, i8** %cptr, align 8, !tbaa !1
  %idx.ext42 = zext i32 %add to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %60, i64 %idx.ext42
  store i8* %add.ptr43, i8** %cptr, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %61 = load i32, i32* %count, align 4, !tbaa !5
  %cmp44 = icmp ugt i32 %61, 128
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %sw.default
  store i32 128, i32* %count, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %sw.default
  %62 = load i32, i32* %count, align 4, !tbaa !5
  %sub48 = sub i32 %62, 1
  %conv49 = trunc i32 %sub48 to i8
  %63 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr50, i8** %cptr, align 8, !tbaa !1
  store i8 %conv49, i8* %63, align 1, !tbaa !7
  %64 = load i8*, i8** %cptr, align 8, !tbaa !1
  %65 = load i8*, i8** %compr, align 8, !tbaa !1
  %66 = load i32, i32* %count, align 4, !tbaa !5
  %conv51 = zext i32 %66 to i64
  %call = call i8* @memcpy(i8* %64, i8* %65, i64 %conv51) #5
  %67 = load i32, i32* %count, align 4, !tbaa !5
  %68 = load i8*, i8** %cptr, align 8, !tbaa !1
  %idx.ext52 = zext i32 %67 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %68, i64 %idx.ext52
  store i8* %add.ptr53, i8** %cptr, align 8, !tbaa !1
  %69 = load i32, i32* %count, align 4, !tbaa !5
  %70 = load i8*, i8** %compr, align 8, !tbaa !1
  %idx.ext54 = zext i32 %69 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %70, i64 %idx.ext54
  store i8* %add.ptr55, i8** %compr, align 8, !tbaa !1
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.38, %for.cond
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.47
  %71 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 9, label %for.cond
    i32 8, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  %72 = bitcast i32* %count56 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #2
  %73 = load i8*, i8** %next, align 8, !tbaa !1
  %74 = load i8*, i8** %end_dis, align 8, !tbaa !1
  %sub.ptr.lhs.cast57 = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast58 = ptrtoint i8* %74 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %conv60 = trunc i64 %sub.ptr.sub59 to i32
  store i32 %conv60, i32* %count56, align 4, !tbaa !5
  %75 = load i8*, i8** %next, align 8, !tbaa !1
  %76 = load i8*, i8** %end_row, align 8, !tbaa !1
  %cmp61 = icmp ult i8* %75, %76
  br i1 %cmp61, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %77 = load i8, i8* %test, align 1, !tbaa !7
  %conv63 = zext i8 %77 to i32
  %cmp64 = icmp ne i32 %conv63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %lor.lhs.false, %for.end
  br label %while.cond.67

while.cond.67:                                    ; preds = %cond.end, %if.then.66
  %78 = load i32, i32* %count56, align 4, !tbaa !5
  %cmp68 = icmp sgt i32 %78, 0
  br i1 %cmp68, label %while.body.70, label %while.end.78

while.body.70:                                    ; preds = %while.cond.67
  %79 = bitcast i32* %this to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #2
  %80 = load i32, i32* %count56, align 4, !tbaa !5
  %cmp71 = icmp sgt i32 %80, 128
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.70
  br label %cond.end

cond.false:                                       ; preds = %while.body.70
  %81 = load i32, i32* %count56, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 128, %cond.true ], [ %81, %cond.false ]
  store i32 %cond, i32* %this, align 4, !tbaa !5
  %82 = load i32, i32* %this, align 4, !tbaa !5
  %sub73 = sub nsw i32 257, %82
  %conv74 = trunc i32 %sub73 to i8
  %83 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr75, i8** %cptr, align 8, !tbaa !1
  store i8 %conv74, i8* %83, align 1, !tbaa !7
  %84 = load i8, i8* %test, align 1, !tbaa !7
  %85 = load i8*, i8** %cptr, align 8, !tbaa !1
  %incdec.ptr76 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr76, i8** %cptr, align 8, !tbaa !1
  store i8 %84, i8* %85, align 1, !tbaa !7
  %86 = load i32, i32* %this, align 4, !tbaa !5
  %87 = load i32, i32* %count56, align 4, !tbaa !5
  %sub77 = sub nsw i32 %87, %86
  store i32 %sub77, i32* %count56, align 4, !tbaa !5
  %88 = bitcast i32* %this to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  br label %while.cond.67

while.end.78:                                     ; preds = %while.cond.67
  br label %if.end.79

if.end.79:                                        ; preds = %while.end.78, %lor.lhs.false
  %89 = load i8*, i8** %next, align 8, !tbaa !1
  store i8* %89, i8** %exam, align 8, !tbaa !1
  %90 = bitcast i32* %count56 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  call void @llvm.lifetime.end(i64 1, i8* %test2) #2
  call void @llvm.lifetime.end(i64 1, i8* %test) #2
  %91 = bitcast i8** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast i8** %end_dis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast i8** %compr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  br label %while.cond

while.end.80:                                     ; preds = %while.cond
  %94 = load i8*, i8** %cptr, align 8, !tbaa !1
  %95 = load i8*, i8** %compressed.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast81 = ptrtoint i8* %94 to i64
  %sub.ptr.rhs.cast82 = ptrtoint i8* %95 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %conv84 = trunc i64 %sub.ptr.sub83 to i32
  store i32 1, i32* %cleanup.dest.slot
  %96 = bitcast i8** %cptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  %97 = bitcast i8** %exam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = bitcast i8** %end_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  ret i32 %conv84

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @bjc_rgb_to_cmy(i8 zeroext %r, i8 zeroext %g, i8 zeroext %b, i32* %c, i32* %m, i32* %y) #0 {
entry:
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %c.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i8 %r, i8* %r.addr, align 1, !tbaa !7
  store i8 %g, i8* %g.addr, align 1, !tbaa !7
  store i8 %b, i8* %b.addr, align 1, !tbaa !7
  store i32* %c, i32** %c.addr, align 8, !tbaa !1
  store i32* %m, i32** %m.addr, align 8, !tbaa !1
  store i32* %y, i32** %y.addr, align 8, !tbaa !1
  %0 = load i8, i8* %r.addr, align 1, !tbaa !7
  %conv = zext i8 %0 to i32
  %sub = sub nsw i32 255, %conv
  %1 = load i32*, i32** %c.addr, align 8, !tbaa !1
  store i32 %sub, i32* %1, align 4, !tbaa !5
  %2 = load i8, i8* %g.addr, align 1, !tbaa !7
  %conv1 = zext i8 %2 to i32
  %sub2 = sub nsw i32 255, %conv1
  %3 = load i32*, i32** %m.addr, align 8, !tbaa !1
  store i32 %sub2, i32* %3, align 4, !tbaa !5
  %4 = load i8, i8* %b.addr, align 1, !tbaa !7
  %conv3 = zext i8 %4 to i32
  %sub4 = sub nsw i32 255, %conv3
  %5 = load i32*, i32** %y.addr, align 8, !tbaa !1
  store i32 %sub4, i32* %5, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_rgb_to_gray(i8 zeroext %r, i8 zeroext %g, i8 zeroext %b, i32* %k) #0 {
entry:
  %r.addr = alloca i8, align 1
  %g.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %k.addr = alloca i32*, align 8
  store i8 %r, i8* %r.addr, align 1, !tbaa !7
  store i8 %g, i8* %g.addr, align 1, !tbaa !7
  store i8 %b, i8* %b.addr, align 1, !tbaa !7
  store i32* %k, i32** %k.addr, align 8, !tbaa !1
  %0 = load i8, i8* %r.addr, align 1, !tbaa !7
  %conv = zext i8 %0 to i32
  %mul = mul nsw i32 %conv, 77
  %1 = load i8, i8* %g.addr, align 1, !tbaa !7
  %conv1 = zext i8 %1 to i32
  %mul2 = mul nsw i32 %conv1, 151
  %add = add nsw i32 %mul, %mul2
  %2 = load i8, i8* %b.addr, align 1, !tbaa !7
  %conv3 = zext i8 %2 to i32
  %mul4 = mul nsw i32 %conv3, 28
  %add5 = add nsw i32 %add, %mul4
  %shr = ashr i32 %add5, 8
  %3 = load i32*, i32** %k.addr, align 8, !tbaa !1
  store i32 %shr, i32* %3, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define void @bjc_build_gamma_table(%struct.gx_device_bjc_printer_s* %dev, float %gamma, i8 signext %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_bjc_printer_s*, align 8
  %gamma.addr = alloca float, align 4
  %color.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %table = alloca i32*, align 8
  store %struct.gx_device_bjc_printer_s* %dev, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  store float %gamma, float* %gamma.addr, align 4, !tbaa !13
  store i8 %color, i8* %color.addr, align 1, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i8, i8* %color.addr, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 67, label %sw.bb
    i32 77, label %sw.bb.1
    i32 89, label %sw.bb.3
    i32 75, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableC = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %3, i32 0, i32 98
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableC, i32 0, i32 0
  store i32* %arraydecay, i32** %table, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableM = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %4, i32 0, i32 99
  %arraydecay2 = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableM, i32 0, i32 0
  store i32* %arraydecay2, i32** %table, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableY = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %5, i32 0, i32 100
  %arraydecay4 = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableY, i32 0, i32 0
  store i32* %arraydecay4, i32** %table, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.5
  %6 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableC6 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %6, i32 0, i32 98
  %arraydecay7 = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableC6, i32 0, i32 0
  store i32* %arraydecay7, i32** %table, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.1, %sw.bb
  %7 = load float, float* %gamma.addr, align 4, !tbaa !13
  %conv8 = fpext float %7 to double
  %cmp = fcmp oeq double %conv8, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %8, 256
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 255, %9
  %shl = shl i32 %sub, 4
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %table, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 %shl, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.22, %if.else
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %13, 256
  br i1 %cmp13, label %for.body.15, label %for.end.24

for.body.15:                                      ; preds = %for.cond.12
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %conv16 = sitofp i32 %14 to double
  %div = fdiv double %conv16, 2.550000e+02
  %15 = load float, float* %gamma.addr, align 4, !tbaa !13
  %conv17 = fpext float %15 to double
  %call = call double @pow(double %div, double %conv17) #5
  %mul = fmul double %call, 4.080000e+03
  %add = fadd double %mul, 5.000000e-01
  %conv18 = fptosi double %add to i32
  %sub19 = sub nsw i32 4080, %conv18
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %16 to i64
  %17 = load i32*, i32** %table, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %17, i64 %idxprom20
  store i32 %sub19, i32* %arrayidx21, align 4, !tbaa !5
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.15
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %18, 1
  store i32 %inc23, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.end.24:                                       ; preds = %for.cond.12
  br label %if.end

if.end:                                           ; preds = %for.end.24, %for.end
  %19 = bitcast i32** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define i32 @bjc_rand(%struct.gx_device_bjc_printer_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_bjc_printer_s*, align 8
  %ret = alloca i32, align 4
  store %struct.gx_device_bjc_printer_s* %dev, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_k = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %1, i32 0, i32 85
  %2 = load i32, i32* %bjc_k, align 4, !tbaa !15
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %bjc_k, align 4, !tbaa !15
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [55 x i32], [55 x i32]* @bjc_rand_seed, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %4 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_j = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %4, i32 0, i32 84
  %5 = load i32, i32* %bjc_j, align 4, !tbaa !32
  %inc1 = add nsw i32 %5, 1
  store i32 %inc1, i32* %bjc_j, align 4, !tbaa !32
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [55 x i32], [55 x i32]* @bjc_rand_seed, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %add = add nsw i32 %6, %3
  store i32 %add, i32* %arrayidx3, align 4, !tbaa !5
  store i32 %add, i32* %ret, align 4, !tbaa !5
  %7 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_j4 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %7, i32 0, i32 84
  %8 = load i32, i32* %bjc_j4, align 4, !tbaa !32
  %cmp = icmp eq i32 %8, 55
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_j5 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %9, i32 0, i32 84
  store i32 0, i32* %bjc_j5, align 4, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_k6 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %10, i32 0, i32 85
  %11 = load i32, i32* %bjc_k6, align 4, !tbaa !15
  %cmp7 = icmp eq i32 %11, 55
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %12 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_k9 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %12, i32 0, i32 85
  store i32 0, i32* %bjc_k9, align 4, !tbaa !15
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %13 = load i32, i32* %ret, align 4, !tbaa !5
  %and = and i32 %13, 1023
  %14 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define void @bjc_init_tresh(%struct.gx_device_bjc_printer_s* %dev, i32 %rnd) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_bjc_printer_s*, align 8
  %rnd.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %delta = alloca float, align 4
  store %struct.gx_device_bjc_printer_s* %dev, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  store i32 %rnd, i32* %rnd.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %call = call i64 @time(i64* null) #5
  %and = and i64 %call, 255
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %i, align 4, !tbaa !5
  %1 = bitcast float* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %rnd.addr, align 4, !tbaa !5
  %conv1 = sitofp i32 %2 to double
  %mul = fmul double 4.064000e+01, %conv1
  %conv2 = fptrunc double %mul to float
  store float %conv2, float* %delta, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %call4 = call i32 @bjc_rand(%struct.gx_device_bjc_printer_s* %4) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -512, i32* %i, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.14, %for.end
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, 512
  br i1 %cmp6, label %for.body.8, label %for.end.15

for.body.8:                                       ; preds = %for.cond.5
  %7 = load float, float* %delta, align 4, !tbaa !13
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %conv9 = sitofp i32 %8 to float
  %mul10 = fmul float %7, %conv9
  %conv11 = fpext float %mul10 to double
  %div = fdiv double %conv11, 1.024000e+03
  %add = fadd double %div, 2.040000e+03
  %conv12 = fptosi double %add to i32
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %add13 = add nsw i32 %9, 512
  %idxprom = sext i32 %add13 to i64
  %10 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_treshold = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %10, i32 0, i32 86
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* %bjc_treshold, i32 0, i64 %idxprom
  store i32 %conv12, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.8
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.5

for.end.15:                                       ; preds = %for.cond.5
  %12 = bitcast float* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind uwtable
define i32 @FloydSteinbergInitG(%struct.gx_device_printer_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %i = alloca i32, align 4
  %dev = alloca %struct.gx_device_bjc_printer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_bjc_printer_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_bjc_printer_s*
  store %struct.gx_device_bjc_printer_s* %3, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !33
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %6 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !35
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !33
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 13
  %10 = load i32, i32* %width, align 4, !tbaa !38
  %add = add nsw i32 %10, 3
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %conv2 = trunc i64 %mul to i32
  %call = call i8* %6(%struct.gs_memory_s* %8, i32 %conv2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #4
  %11 = bitcast i8* %call to i32*
  %12 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergErrorsG = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %12, i32 0, i32 92
  store i32* %11, i32** %FloydSteinbergErrorsG, align 8, !tbaa !39
  %13 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergErrorsG3 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %13, i32 0, i32 92
  %14 = load i32*, i32** %FloydSteinbergErrorsG3, align 8, !tbaa !39
  %cmp = icmp eq i32* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergDirectionForward = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %15, i32 0, i32 87
  store i32 1, i32* %FloydSteinbergDirectionForward, align 4, !tbaa !40
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width5, align 4, !tbaa !38
  %add6 = add nsw i32 %18, 3
  %cmp7 = icmp slt i32 %16, %add6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergErrorsG9 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %20, i32 0, i32 92
  %21 = load i32*, i32** %FloydSteinbergErrorsG9, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %paperColor = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %23, i32 0, i32 83
  %red = getelementptr inbounds %struct.anon, %struct.anon* %paperColor, i32 0, i32 0
  %24 = load i32, i32* %red, align 4, !tbaa !41
  %conv10 = trunc i32 %24 to i8
  %25 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %paperColor11 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %25, i32 0, i32 83
  %green = getelementptr inbounds %struct.anon, %struct.anon* %paperColor11, i32 0, i32 1
  %26 = load i32, i32* %green, align 4, !tbaa !42
  %conv12 = trunc i32 %26 to i8
  %27 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %paperColor13 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %27, i32 0, i32 83
  %blue = getelementptr inbounds %struct.anon, %struct.anon* %paperColor13, i32 0, i32 2
  %28 = load i32, i32* %blue, align 4, !tbaa !43
  %conv14 = trunc i32 %28 to i8
  %29 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergG = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %29, i32 0, i32 97
  call void @bjc_rgb_to_gray(i8 zeroext %conv10, i8 zeroext %conv12, i8 zeroext %conv14, i32* %FloydSteinbergG) #4
  %30 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergG15 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %30, i32 0, i32 97
  %31 = load i32, i32* %FloydSteinbergG15, align 4, !tbaa !44
  %sub = sub nsw i32 255, %31
  %shl = shl i32 %sub, 4
  %32 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergG16 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %32, i32 0, i32 97
  store i32 %shl, i32* %FloydSteinbergG16, align 4, !tbaa !44
  %33 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %34 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %rnd = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %34, i32 0, i32 73
  %35 = load i32, i32* %rnd, align 4, !tbaa !45
  call void @bjc_init_tresh(%struct.gx_device_bjc_printer_s* %33, i32 %35) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %36 = bitcast %struct.gx_device_bjc_printer_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define void @FloydSteinbergDitheringG(%struct.gx_device_bjc_printer_s* %dev, i8* %row, i8* %dithered, i32 %width, i32 %raster, i32 %limit_extr) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_bjc_printer_s*, align 8
  %row.addr = alloca i8*, align 8
  %dithered.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %limit_extr.addr = alloca i32, align 4
  %byteG = alloca i8, align 1
  %bitmask = alloca i8, align 1
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  %delta = alloca i32, align 4
  %err_corr = alloca i32, align 4
  %err_vect = alloca i32*, align 8
  store %struct.gx_device_bjc_printer_s* %dev, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  store i8* %row, i8** %row.addr, align 8, !tbaa !1
  store i8* %dithered, i8** %dithered.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %limit_extr, i32* %limit_extr.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %byteG) #2
  store i8 0, i8* %byteG, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %bitmask) #2
  store i8 -128, i8* %bitmask, align 1, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %error, align 4, !tbaa !5
  %2 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %err_corr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32** %err_vect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergDirectionForward = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %5, i32 0, i32 87
  %6 = load i32, i32* %FloydSteinbergDirectionForward, align 4, !tbaa !40
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else.48

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergErrorsG = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %7, i32 0, i32 92
  %8 = load i32*, i32** %FloydSteinbergErrorsG, align 8, !tbaa !39
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 1
  store i32* %add.ptr, i32** %err_vect, align 8, !tbaa !1
  %9 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %9, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !7
  %conv = zext i8 %12 to i32
  %sub = sub nsw i32 255, %conv
  %idxprom = sext i32 %sub to i64
  %13 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableC = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %13, i32 0, i32 98
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableC, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %15 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergG = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %15, i32 0, i32 97
  %16 = load i32, i32* %FloydSteinbergG, align 4, !tbaa !44
  %add = add nsw i32 %14, %16
  store i32 %add, i32* %err_corr, align 4, !tbaa !5
  %17 = load i32, i32* %err_corr, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %17, 4080
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %18 = load i32, i32* %limit_extr.addr, align 4, !tbaa !5
  %tobool3 = icmp ne i32 %18, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  store i32 4080, i32* %err_corr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %for.body
  %19 = load i32, i32* %err_corr, align 4, !tbaa !5
  %20 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %add.ptr5, align 4, !tbaa !5
  %add6 = add nsw i32 %19, %21
  %22 = load i32, i32* %error, align 4, !tbaa !5
  %add7 = add nsw i32 %22, %add6
  store i32 %add7, i32* %error, align 4, !tbaa !5
  %23 = load i32, i32* %error, align 4, !tbaa !5
  %24 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @bjc_rand(%struct.gx_device_bjc_printer_s* %24) #4
  %idxprom8 = zext i32 %call to i64
  %25 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_treshold = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %25, i32 0, i32 86
  %arrayidx9 = getelementptr inbounds [1024 x i32], [1024 x i32]* %bjc_treshold, i32 0, i64 %idxprom8
  %26 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %23, %26
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %27 = load i32, i32* %error, align 4, !tbaa !5
  %sub13 = sub nsw i32 %27, 4080
  store i32 %sub13, i32* %error, align 4, !tbaa !5
  %28 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv14 = zext i8 %28 to i32
  %29 = load i8, i8* %byteG, align 1, !tbaa !7
  %conv15 = zext i8 %29 to i32
  %or = or i32 %conv15, %conv14
  %conv16 = trunc i32 %or to i8
  store i8 %conv16, i8* %byteG, align 1, !tbaa !7
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end
  %30 = load i32, i32* %error, align 4, !tbaa !5
  %add18 = add nsw i32 %30, 8
  %shr = ashr i32 %add18, 4
  %31 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr19 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %shr, i32* %add.ptr19, align 4, !tbaa !5
  %32 = load i32, i32* %error, align 4, !tbaa !5
  %shl = shl i32 %32, 1
  store i32 %shl, i32* %delta, align 4, !tbaa !5
  %33 = load i32, i32* %delta, align 4, !tbaa !5
  %34 = load i32, i32* %error, align 4, !tbaa !5
  %add20 = add nsw i32 %34, %33
  store i32 %add20, i32* %error, align 4, !tbaa !5
  %35 = load i32, i32* %error, align 4, !tbaa !5
  %add21 = add nsw i32 %35, 8
  %shr22 = ashr i32 %add21, 4
  %36 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i32, i32* %36, i64 -1
  %37 = load i32, i32* %add.ptr23, align 4, !tbaa !5
  %add24 = add nsw i32 %37, %shr22
  store i32 %add24, i32* %add.ptr23, align 4, !tbaa !5
  %38 = load i32, i32* %delta, align 4, !tbaa !5
  %39 = load i32, i32* %error, align 4, !tbaa !5
  %add25 = add nsw i32 %39, %38
  store i32 %add25, i32* %error, align 4, !tbaa !5
  %40 = load i32, i32* %error, align 4, !tbaa !5
  %add26 = add nsw i32 %40, 8
  %shr27 = ashr i32 %add26, 4
  %41 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %add28 = add nsw i32 %42, %shr27
  store i32 %add28, i32* %41, align 4, !tbaa !5
  %43 = load i32, i32* %delta, align 4, !tbaa !5
  %add29 = add nsw i32 %43, 8
  %44 = load i32, i32* %error, align 4, !tbaa !5
  %add30 = add nsw i32 %44, %add29
  store i32 %add30, i32* %error, align 4, !tbaa !5
  %45 = load i32, i32* %error, align 4, !tbaa !5
  %shr31 = ashr i32 %45, 4
  store i32 %shr31, i32* %error, align 4, !tbaa !5
  %46 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv32 = zext i8 %46 to i32
  %cmp33 = icmp eq i32 %conv32, 1
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.17
  %47 = load i8, i8* %byteG, align 1, !tbaa !7
  %48 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  store i8 %47, i8* %48, align 1, !tbaa !7
  store i8 -128, i8* %bitmask, align 1, !tbaa !7
  store i8 0, i8* %byteG, align 1, !tbaa !7
  %49 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr, i8** %dithered.addr, align 8, !tbaa !1
  br label %if.end.44

if.else:                                          ; preds = %if.end.17
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %50, 1
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else
  %51 = load i8, i8* %byteG, align 1, !tbaa !7
  %52 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  store i8 %51, i8* %52, align 1, !tbaa !7
  br label %if.end.43

if.else.39:                                       ; preds = %if.else
  %53 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv40 = zext i8 %53 to i32
  %shr41 = ashr i32 %conv40, 1
  %conv42 = trunc i32 %shr41 to i8
  store i8 %conv42, i8* %bitmask, align 1, !tbaa !7
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %55 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr45, i8** %row.addr, align 8, !tbaa !1
  %56 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %incdec.ptr46, i32** %err_vect, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergDirectionForward47 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %57, i32 0, i32 87
  store i32 0, i32* %FloydSteinbergDirectionForward47, align 4, !tbaa !40
  br label %if.end.132

if.else.48:                                       ; preds = %entry
  %58 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub49 = sub i32 %58, 1
  %59 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %sub49 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %59, i64 %idx.ext
  store i8* %add.ptr50, i8** %row.addr, align 8, !tbaa !1
  %60 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %sub51 = sub i32 %60, 1
  %61 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %idx.ext52 = zext i32 %sub51 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %61, i64 %idx.ext52
  store i8* %add.ptr53, i8** %dithered.addr, align 8, !tbaa !1
  %62 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %shl54 = shl i32 %62, 3
  %63 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub55 = sub i32 %shl54, %63
  %shl56 = shl i32 1, %sub55
  %conv57 = trunc i32 %shl56 to i8
  store i8 %conv57, i8* %bitmask, align 1, !tbaa !7
  %64 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergErrorsG58 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %64, i32 0, i32 92
  %65 = load i32*, i32** %FloydSteinbergErrorsG58, align 8, !tbaa !39
  %66 = load i32, i32* %width.addr, align 4, !tbaa !5
  %idx.ext59 = zext i32 %66 to i64
  %add.ptr60 = getelementptr inbounds i32, i32* %65, i64 %idx.ext59
  %add.ptr61 = getelementptr inbounds i32, i32* %add.ptr60, i64 1
  store i32* %add.ptr61, i32** %err_vect, align 8, !tbaa !1
  %67 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %67, i32* %i, align 4, !tbaa !5
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.126, %if.else.48
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %cmp63 = icmp sgt i32 %68, 0
  br i1 %cmp63, label %for.body.65, label %for.end.130

for.body.65:                                      ; preds = %for.cond.62
  %69 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %70 = load i8, i8* %69, align 1, !tbaa !7
  %conv66 = zext i8 %70 to i32
  %sub67 = sub nsw i32 255, %conv66
  %idxprom68 = sext i32 %sub67 to i64
  %71 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableC69 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %71, i32 0, i32 98
  %arrayidx70 = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableC69, i32 0, i64 %idxprom68
  %72 = load i32, i32* %arrayidx70, align 4, !tbaa !5
  %73 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergG71 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %73, i32 0, i32 97
  %74 = load i32, i32* %FloydSteinbergG71, align 4, !tbaa !44
  %add72 = add nsw i32 %72, %74
  store i32 %add72, i32* %err_corr, align 4, !tbaa !5
  %75 = load i32, i32* %err_corr, align 4, !tbaa !5
  %cmp73 = icmp sgt i32 %75, 4080
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.78

land.lhs.true.75:                                 ; preds = %for.body.65
  %76 = load i32, i32* %limit_extr.addr, align 4, !tbaa !5
  %tobool76 = icmp ne i32 %76, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %land.lhs.true.75
  store i32 4080, i32* %err_corr, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %land.lhs.true.75, %for.body.65
  %77 = load i32, i32* %err_corr, align 4, !tbaa !5
  %78 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr79 = getelementptr inbounds i32, i32* %78, i64 -1
  %79 = load i32, i32* %add.ptr79, align 4, !tbaa !5
  %add80 = add nsw i32 %77, %79
  %80 = load i32, i32* %error, align 4, !tbaa !5
  %add81 = add nsw i32 %80, %add80
  store i32 %add81, i32* %error, align 4, !tbaa !5
  %81 = load i32, i32* %error, align 4, !tbaa !5
  %82 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %call82 = call i32 @bjc_rand(%struct.gx_device_bjc_printer_s* %82) #4
  %idxprom83 = zext i32 %call82 to i64
  %83 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_treshold84 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %83, i32 0, i32 86
  %arrayidx85 = getelementptr inbounds [1024 x i32], [1024 x i32]* %bjc_treshold84, i32 0, i64 %idxprom83
  %84 = load i32, i32* %arrayidx85, align 4, !tbaa !5
  %cmp86 = icmp sgt i32 %81, %84
  br i1 %cmp86, label %if.then.88, label %if.end.94

if.then.88:                                       ; preds = %if.end.78
  %85 = load i32, i32* %error, align 4, !tbaa !5
  %sub89 = sub nsw i32 %85, 4080
  store i32 %sub89, i32* %error, align 4, !tbaa !5
  %86 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv90 = zext i8 %86 to i32
  %87 = load i8, i8* %byteG, align 1, !tbaa !7
  %conv91 = zext i8 %87 to i32
  %or92 = or i32 %conv91, %conv90
  %conv93 = trunc i32 %or92 to i8
  store i8 %conv93, i8* %byteG, align 1, !tbaa !7
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.88, %if.end.78
  %88 = load i32, i32* %error, align 4, !tbaa !5
  %add95 = add nsw i32 %88, 8
  %shr96 = ashr i32 %add95, 4
  %89 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr97 = getelementptr inbounds i32, i32* %89, i64 -1
  store i32 %shr96, i32* %add.ptr97, align 4, !tbaa !5
  %90 = load i32, i32* %error, align 4, !tbaa !5
  %shl98 = shl i32 %90, 1
  store i32 %shl98, i32* %delta, align 4, !tbaa !5
  %91 = load i32, i32* %delta, align 4, !tbaa !5
  %92 = load i32, i32* %error, align 4, !tbaa !5
  %add99 = add nsw i32 %92, %91
  store i32 %add99, i32* %error, align 4, !tbaa !5
  %93 = load i32, i32* %error, align 4, !tbaa !5
  %add100 = add nsw i32 %93, 8
  %shr101 = ashr i32 %add100, 4
  %94 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr102 = getelementptr inbounds i32, i32* %94, i64 1
  %95 = load i32, i32* %add.ptr102, align 4, !tbaa !5
  %add103 = add nsw i32 %95, %shr101
  store i32 %add103, i32* %add.ptr102, align 4, !tbaa !5
  %96 = load i32, i32* %delta, align 4, !tbaa !5
  %97 = load i32, i32* %error, align 4, !tbaa !5
  %add104 = add nsw i32 %97, %96
  store i32 %add104, i32* %error, align 4, !tbaa !5
  %98 = load i32, i32* %error, align 4, !tbaa !5
  %add105 = add nsw i32 %98, 8
  %shr106 = ashr i32 %add105, 4
  %99 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %add107 = add nsw i32 %100, %shr106
  store i32 %add107, i32* %99, align 4, !tbaa !5
  %101 = load i32, i32* %delta, align 4, !tbaa !5
  %add108 = add nsw i32 %101, 8
  %102 = load i32, i32* %error, align 4, !tbaa !5
  %add109 = add nsw i32 %102, %add108
  store i32 %add109, i32* %error, align 4, !tbaa !5
  %103 = load i32, i32* %error, align 4, !tbaa !5
  %shr110 = ashr i32 %103, 4
  store i32 %shr110, i32* %error, align 4, !tbaa !5
  %104 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv111 = zext i8 %104 to i32
  %cmp112 = icmp eq i32 %conv111, 128
  br i1 %cmp112, label %if.then.114, label %if.else.116

if.then.114:                                      ; preds = %if.end.94
  %105 = load i8, i8* %byteG, align 1, !tbaa !7
  %106 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  store i8 %105, i8* %106, align 1, !tbaa !7
  store i8 1, i8* %bitmask, align 1, !tbaa !7
  store i8 0, i8* %byteG, align 1, !tbaa !7
  %107 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %incdec.ptr115 = getelementptr inbounds i8, i8* %107, i32 -1
  store i8* %incdec.ptr115, i8** %dithered.addr, align 8, !tbaa !1
  br label %if.end.125

if.else.116:                                      ; preds = %if.end.94
  %108 = load i32, i32* %i, align 4, !tbaa !5
  %cmp117 = icmp eq i32 %108, 1
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.else.116
  %109 = load i8, i8* %byteG, align 1, !tbaa !7
  %110 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  store i8 %109, i8* %110, align 1, !tbaa !7
  br label %if.end.124

if.else.120:                                      ; preds = %if.else.116
  %111 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv121 = zext i8 %111 to i32
  %shl122 = shl i32 %conv121, 1
  %conv123 = trunc i32 %shl122 to i8
  store i8 %conv123, i8* %bitmask, align 1, !tbaa !7
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.120, %if.then.119
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.114
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %dec127 = add nsw i32 %112, -1
  store i32 %dec127, i32* %i, align 4, !tbaa !5
  %113 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %incdec.ptr128 = getelementptr inbounds i8, i8* %113, i32 -1
  store i8* %incdec.ptr128, i8** %row.addr, align 8, !tbaa !1
  %114 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %incdec.ptr129 = getelementptr inbounds i32, i32* %114, i32 -1
  store i32* %incdec.ptr129, i32** %err_vect, align 8, !tbaa !1
  br label %for.cond.62

for.end.130:                                      ; preds = %for.cond.62
  %115 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergDirectionForward131 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %115, i32 0, i32 87
  store i32 1, i32* %FloydSteinbergDirectionForward131, align 4, !tbaa !40
  br label %if.end.132

if.end.132:                                       ; preds = %for.end.130, %for.end
  %116 = bitcast i32** %err_vect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  %117 = bitcast i32* %err_corr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask) #2
  call void @llvm.lifetime.end(i64 1, i8* %byteG) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @FloydSteinbergCloseG(%struct.gx_device_printer_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %dev = alloca %struct.gx_device_bjc_printer_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bjc_printer_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_bjc_printer_s*
  store %struct.gx_device_bjc_printer_s* %2, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !33
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !46
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !33
  %8 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergErrorsG = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %8, i32 0, i32 92
  %9 = load i32*, i32** %FloydSteinbergErrorsG, align 8, !tbaa !39
  %10 = bitcast i32* %9 to i8*
  call void %5(%struct.gs_memory_s* %7, i8* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #4
  %11 = bitcast %struct.gx_device_bjc_printer_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FloydSteinbergInitC(%struct.gx_device_printer_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %i = alloca i32, align 4
  %dev = alloca %struct.gx_device_bjc_printer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_bjc_printer_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_bjc_printer_s*
  store %struct.gx_device_bjc_printer_s* %3, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !33
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %6 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !35
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !33
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 13
  %10 = load i32, i32* %width, align 4, !tbaa !38
  %add = add nsw i32 %10, 3
  %conv = sext i32 %add to i64
  %mul = mul i64 12, %conv
  %conv2 = trunc i64 %mul to i32
  %call = call i8* %6(%struct.gs_memory_s* %8, i32 %conv2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #4
  %11 = bitcast i8* %call to i32*
  %12 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergErrorsC = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %12, i32 0, i32 88
  store i32* %11, i32** %FloydSteinbergErrorsC, align 8, !tbaa !47
  %13 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergErrorsC3 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %13, i32 0, i32 88
  %14 = load i32*, i32** %FloydSteinbergErrorsC3, align 8, !tbaa !47
  %cmp = icmp eq i32* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 13
  %17 = load i32, i32* %width5, align 4, !tbaa !38
  %add6 = add nsw i32 %17, 3
  %mul7 = mul nsw i32 3, %add6
  %cmp8 = icmp slt i32 %15, %mul7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergErrorsC10 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %19, i32 0, i32 88
  %20 = load i32*, i32** %FloydSteinbergErrorsC10, align 8, !tbaa !47
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergDirectionForward = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %22, i32 0, i32 87
  store i32 1, i32* %FloydSteinbergDirectionForward, align 4, !tbaa !40
  %23 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %paperColor = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %23, i32 0, i32 83
  %red = getelementptr inbounds %struct.anon, %struct.anon* %paperColor, i32 0, i32 0
  %24 = load i32, i32* %red, align 4, !tbaa !41
  %conv11 = trunc i32 %24 to i8
  %25 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %paperColor12 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %25, i32 0, i32 83
  %green = getelementptr inbounds %struct.anon, %struct.anon* %paperColor12, i32 0, i32 1
  %26 = load i32, i32* %green, align 4, !tbaa !42
  %conv13 = trunc i32 %26 to i8
  %27 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %paperColor14 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %27, i32 0, i32 83
  %blue = getelementptr inbounds %struct.anon, %struct.anon* %paperColor14, i32 0, i32 2
  %28 = load i32, i32* %blue, align 4, !tbaa !43
  %conv15 = trunc i32 %28 to i8
  %29 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergC = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %29, i32 0, i32 93
  %30 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergM = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %30, i32 0, i32 94
  %31 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergY = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %31, i32 0, i32 95
  call void @bjc_rgb_to_cmy(i8 zeroext %conv11, i8 zeroext %conv13, i8 zeroext %conv15, i32* %FloydSteinbergC, i32* %FloydSteinbergM, i32* %FloydSteinbergY) #4
  %32 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergC16 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %32, i32 0, i32 93
  %33 = load i32, i32* %FloydSteinbergC16, align 4, !tbaa !48
  %shl = shl i32 %33, 4
  store i32 %shl, i32* %FloydSteinbergC16, align 4, !tbaa !48
  %34 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergM17 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %34, i32 0, i32 94
  %35 = load i32, i32* %FloydSteinbergM17, align 4, !tbaa !49
  %shl18 = shl i32 %35, 4
  store i32 %shl18, i32* %FloydSteinbergM17, align 4, !tbaa !49
  %36 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergY19 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %36, i32 0, i32 95
  %37 = load i32, i32* %FloydSteinbergY19, align 4, !tbaa !50
  %shl20 = shl i32 %37, 4
  store i32 %shl20, i32* %FloydSteinbergY19, align 4, !tbaa !50
  %38 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %39 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %rnd = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %39, i32 0, i32 73
  %40 = load i32, i32* %rnd, align 4, !tbaa !45
  call void @bjc_init_tresh(%struct.gx_device_bjc_printer_s* %38, i32 %40) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %41 = bitcast %struct.gx_device_bjc_printer_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define void @FloydSteinbergDitheringC(%struct.gx_device_bjc_printer_s* %dev, i8* %row, i8* %dithered, i32 %width, i32 %raster, i32 %limit_extr, i32 %composeK) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_bjc_printer_s*, align 8
  %row.addr = alloca i8*, align 8
  %dithered.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %limit_extr.addr = alloca i32, align 4
  %composeK.addr = alloca i32, align 4
  %byteC = alloca i8, align 1
  %byteM = alloca i8, align 1
  %byteY = alloca i8, align 1
  %byteK = alloca i8, align 1
  %bitmask = alloca i8, align 1
  %i = alloca i32, align 4
  %errorC = alloca i32, align 4
  %errorM = alloca i32, align 4
  %errorY = alloca i32, align 4
  %delta = alloca i32, align 4
  %err_corrC = alloca i32, align 4
  %err_corrM = alloca i32, align 4
  %err_corrY = alloca i32, align 4
  %err_vect = alloca i32*, align 8
  store %struct.gx_device_bjc_printer_s* %dev, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  store i8* %row, i8** %row.addr, align 8, !tbaa !1
  store i8* %dithered, i8** %dithered.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %limit_extr, i32* %limit_extr.addr, align 4, !tbaa !5
  store i32 %composeK, i32* %composeK.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %byteC) #2
  store i8 0, i8* %byteC, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %byteM) #2
  store i8 0, i8* %byteM, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %byteY) #2
  store i8 0, i8* %byteY, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %byteK) #2
  store i8 0, i8* %byteK, align 1, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %bitmask) #2
  store i8 -128, i8* %bitmask, align 1, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %errorC to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %errorC, align 4, !tbaa !5
  %2 = bitcast i32* %errorM to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %errorM, align 4, !tbaa !5
  %3 = bitcast i32* %errorY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %errorY, align 4, !tbaa !5
  %4 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %err_corrC to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %err_corrM to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %err_corrY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32** %err_vect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergDirectionForward = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %9, i32 0, i32 87
  %10 = load i32, i32* %FloydSteinbergDirectionForward, align 4, !tbaa !40
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else.204

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergErrorsC = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %11, i32 0, i32 88
  %12 = load i32*, i32** %FloydSteinbergErrorsC, align 8, !tbaa !47
  %add.ptr = getelementptr inbounds i32, i32* %12, i64 3
  store i32* %add.ptr, i32** %err_vect, align 8, !tbaa !1
  %13 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %13, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !7
  %conv = zext i8 %16 to i32
  %17 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8, i8* %add.ptr1, align 1, !tbaa !7
  %conv2 = zext i8 %18 to i32
  %add = add nsw i32 %conv, %conv2
  %idxprom = sext i32 %add to i64
  %19 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableC = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %19, i32 0, i32 98
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableC, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %21 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergC = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %21, i32 0, i32 93
  %22 = load i32, i32* %FloydSteinbergC, align 4, !tbaa !48
  %add3 = add nsw i32 %20, %22
  store i32 %add3, i32* %err_corrC, align 4, !tbaa !5
  %23 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %add.ptr4, align 1, !tbaa !7
  %conv5 = zext i8 %24 to i32
  %25 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %25, i64 3
  %26 = load i8, i8* %add.ptr6, align 1, !tbaa !7
  %conv7 = zext i8 %26 to i32
  %add8 = add nsw i32 %conv5, %conv7
  %idxprom9 = sext i32 %add8 to i64
  %27 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableM = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %27, i32 0, i32 99
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableM, i32 0, i64 %idxprom9
  %28 = load i32, i32* %arrayidx10, align 4, !tbaa !5
  %29 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergM = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %29, i32 0, i32 94
  %30 = load i32, i32* %FloydSteinbergM, align 4, !tbaa !49
  %add11 = add nsw i32 %28, %30
  store i32 %add11, i32* %err_corrM, align 4, !tbaa !5
  %31 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i8, i8* %31, i64 2
  %32 = load i8, i8* %add.ptr12, align 1, !tbaa !7
  %conv13 = zext i8 %32 to i32
  %33 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %33, i64 3
  %34 = load i8, i8* %add.ptr14, align 1, !tbaa !7
  %conv15 = zext i8 %34 to i32
  %add16 = add nsw i32 %conv13, %conv15
  %idxprom17 = sext i32 %add16 to i64
  %35 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableY = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %35, i32 0, i32 100
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableY, i32 0, i64 %idxprom17
  %36 = load i32, i32* %arrayidx18, align 4, !tbaa !5
  %37 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergY = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %37, i32 0, i32 95
  %38 = load i32, i32* %FloydSteinbergY, align 4, !tbaa !50
  %add19 = add nsw i32 %36, %38
  store i32 %add19, i32* %err_corrY, align 4, !tbaa !5
  %39 = load i32, i32* %err_corrC, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %39, 4080
  br i1 %cmp20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %40 = load i32, i32* %limit_extr.addr, align 4, !tbaa !5
  %tobool22 = icmp ne i32 %40, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %land.lhs.true
  store i32 4080, i32* %err_corrC, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.23, %land.lhs.true, %for.body
  %41 = load i32, i32* %err_corrM, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %41, 4080
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.29

land.lhs.true.26:                                 ; preds = %if.end
  %42 = load i32, i32* %limit_extr.addr, align 4, !tbaa !5
  %tobool27 = icmp ne i32 %42, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.26
  store i32 4080, i32* %err_corrM, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.26, %if.end
  %43 = load i32, i32* %err_corrY, align 4, !tbaa !5
  %cmp30 = icmp sgt i32 %43, 4080
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.35

land.lhs.true.32:                                 ; preds = %if.end.29
  %44 = load i32, i32* %limit_extr.addr, align 4, !tbaa !5
  %tobool33 = icmp ne i32 %44, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.32
  store i32 4080, i32* %err_corrY, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true.32, %if.end.29
  %45 = load i32, i32* %err_corrC, align 4, !tbaa !5
  %46 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds i32, i32* %46, i64 3
  %47 = load i32, i32* %add.ptr36, align 4, !tbaa !5
  %add37 = add nsw i32 %45, %47
  %48 = load i32, i32* %errorC, align 4, !tbaa !5
  %add38 = add nsw i32 %48, %add37
  store i32 %add38, i32* %errorC, align 4, !tbaa !5
  %49 = load i32, i32* %err_corrM, align 4, !tbaa !5
  %50 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds i32, i32* %50, i64 4
  %51 = load i32, i32* %add.ptr39, align 4, !tbaa !5
  %add40 = add nsw i32 %49, %51
  %52 = load i32, i32* %errorM, align 4, !tbaa !5
  %add41 = add nsw i32 %52, %add40
  store i32 %add41, i32* %errorM, align 4, !tbaa !5
  %53 = load i32, i32* %err_corrY, align 4, !tbaa !5
  %54 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds i32, i32* %54, i64 5
  %55 = load i32, i32* %add.ptr42, align 4, !tbaa !5
  %add43 = add nsw i32 %53, %55
  %56 = load i32, i32* %errorY, align 4, !tbaa !5
  %add44 = add nsw i32 %56, %add43
  store i32 %add44, i32* %errorY, align 4, !tbaa !5
  %57 = load i32, i32* %errorC, align 4, !tbaa !5
  %58 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @bjc_rand(%struct.gx_device_bjc_printer_s* %58) #4
  %idxprom45 = zext i32 %call to i64
  %59 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_treshold = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %59, i32 0, i32 86
  %arrayidx46 = getelementptr inbounds [1024 x i32], [1024 x i32]* %bjc_treshold, i32 0, i64 %idxprom45
  %60 = load i32, i32* %arrayidx46, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %57, %60
  br i1 %cmp47, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.35
  %61 = load i32, i32* %errorC, align 4, !tbaa !5
  %sub = sub nsw i32 %61, 4080
  store i32 %sub, i32* %errorC, align 4, !tbaa !5
  %62 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv50 = zext i8 %62 to i32
  %63 = load i8, i8* %byteC, align 1, !tbaa !7
  %conv51 = zext i8 %63 to i32
  %or = or i32 %conv51, %conv50
  %conv52 = trunc i32 %or to i8
  store i8 %conv52, i8* %byteC, align 1, !tbaa !7
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.35
  %64 = load i32, i32* %errorM, align 4, !tbaa !5
  %65 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %call54 = call i32 @bjc_rand(%struct.gx_device_bjc_printer_s* %65) #4
  %idxprom55 = zext i32 %call54 to i64
  %66 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_treshold56 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %66, i32 0, i32 86
  %arrayidx57 = getelementptr inbounds [1024 x i32], [1024 x i32]* %bjc_treshold56, i32 0, i64 %idxprom55
  %67 = load i32, i32* %arrayidx57, align 4, !tbaa !5
  %cmp58 = icmp sgt i32 %64, %67
  br i1 %cmp58, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %if.end.53
  %68 = load i32, i32* %errorM, align 4, !tbaa !5
  %sub61 = sub nsw i32 %68, 4080
  store i32 %sub61, i32* %errorM, align 4, !tbaa !5
  %69 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv62 = zext i8 %69 to i32
  %70 = load i8, i8* %byteM, align 1, !tbaa !7
  %conv63 = zext i8 %70 to i32
  %or64 = or i32 %conv63, %conv62
  %conv65 = trunc i32 %or64 to i8
  store i8 %conv65, i8* %byteM, align 1, !tbaa !7
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.60, %if.end.53
  %71 = load i32, i32* %errorY, align 4, !tbaa !5
  %72 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %call67 = call i32 @bjc_rand(%struct.gx_device_bjc_printer_s* %72) #4
  %idxprom68 = zext i32 %call67 to i64
  %73 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_treshold69 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %73, i32 0, i32 86
  %arrayidx70 = getelementptr inbounds [1024 x i32], [1024 x i32]* %bjc_treshold69, i32 0, i64 %idxprom68
  %74 = load i32, i32* %arrayidx70, align 4, !tbaa !5
  %cmp71 = icmp sgt i32 %71, %74
  br i1 %cmp71, label %if.then.73, label %if.end.79

if.then.73:                                       ; preds = %if.end.66
  %75 = load i32, i32* %errorY, align 4, !tbaa !5
  %sub74 = sub nsw i32 %75, 4080
  store i32 %sub74, i32* %errorY, align 4, !tbaa !5
  %76 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv75 = zext i8 %76 to i32
  %77 = load i8, i8* %byteY, align 1, !tbaa !7
  %conv76 = zext i8 %77 to i32
  %or77 = or i32 %conv76, %conv75
  %conv78 = trunc i32 %or77 to i8
  store i8 %conv78, i8* %byteY, align 1, !tbaa !7
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.73, %if.end.66
  %78 = load i32, i32* %errorC, align 4, !tbaa !5
  %add80 = add nsw i32 %78, 8
  %shr = ashr i32 %add80, 4
  %79 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr81 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %shr, i32* %add.ptr81, align 4, !tbaa !5
  %80 = load i32, i32* %errorC, align 4, !tbaa !5
  %shl = shl i32 %80, 1
  store i32 %shl, i32* %delta, align 4, !tbaa !5
  %81 = load i32, i32* %delta, align 4, !tbaa !5
  %82 = load i32, i32* %errorC, align 4, !tbaa !5
  %add82 = add nsw i32 %82, %81
  store i32 %add82, i32* %errorC, align 4, !tbaa !5
  %83 = load i32, i32* %errorC, align 4, !tbaa !5
  %add83 = add nsw i32 %83, 8
  %shr84 = ashr i32 %add83, 4
  %84 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr85 = getelementptr inbounds i32, i32* %84, i64 -3
  %85 = load i32, i32* %add.ptr85, align 4, !tbaa !5
  %add86 = add nsw i32 %85, %shr84
  store i32 %add86, i32* %add.ptr85, align 4, !tbaa !5
  %86 = load i32, i32* %delta, align 4, !tbaa !5
  %87 = load i32, i32* %errorC, align 4, !tbaa !5
  %add87 = add nsw i32 %87, %86
  store i32 %add87, i32* %errorC, align 4, !tbaa !5
  %88 = load i32, i32* %errorC, align 4, !tbaa !5
  %add88 = add nsw i32 %88, 8
  %shr89 = ashr i32 %add88, 4
  %89 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %90 = load i32, i32* %89, align 4, !tbaa !5
  %add90 = add nsw i32 %90, %shr89
  store i32 %add90, i32* %89, align 4, !tbaa !5
  %91 = load i32, i32* %delta, align 4, !tbaa !5
  %add91 = add nsw i32 %91, 8
  %92 = load i32, i32* %errorC, align 4, !tbaa !5
  %add92 = add nsw i32 %92, %add91
  store i32 %add92, i32* %errorC, align 4, !tbaa !5
  %93 = load i32, i32* %errorC, align 4, !tbaa !5
  %shr93 = ashr i32 %93, 4
  store i32 %shr93, i32* %errorC, align 4, !tbaa !5
  %94 = load i32, i32* %errorM, align 4, !tbaa !5
  %add94 = add nsw i32 %94, 8
  %shr95 = ashr i32 %add94, 4
  %95 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32 %shr95, i32* %add.ptr96, align 4, !tbaa !5
  %96 = load i32, i32* %errorM, align 4, !tbaa !5
  %shl97 = shl i32 %96, 1
  store i32 %shl97, i32* %delta, align 4, !tbaa !5
  %97 = load i32, i32* %delta, align 4, !tbaa !5
  %98 = load i32, i32* %errorM, align 4, !tbaa !5
  %add98 = add nsw i32 %98, %97
  store i32 %add98, i32* %errorM, align 4, !tbaa !5
  %99 = load i32, i32* %errorM, align 4, !tbaa !5
  %add99 = add nsw i32 %99, 8
  %shr100 = ashr i32 %add99, 4
  %100 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr101 = getelementptr inbounds i32, i32* %100, i64 -2
  %101 = load i32, i32* %add.ptr101, align 4, !tbaa !5
  %add102 = add nsw i32 %101, %shr100
  store i32 %add102, i32* %add.ptr101, align 4, !tbaa !5
  %102 = load i32, i32* %delta, align 4, !tbaa !5
  %103 = load i32, i32* %errorM, align 4, !tbaa !5
  %add103 = add nsw i32 %103, %102
  store i32 %add103, i32* %errorM, align 4, !tbaa !5
  %104 = load i32, i32* %errorM, align 4, !tbaa !5
  %add104 = add nsw i32 %104, 8
  %shr105 = ashr i32 %add104, 4
  %105 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds i32, i32* %105, i64 1
  %106 = load i32, i32* %add.ptr106, align 4, !tbaa !5
  %add107 = add nsw i32 %106, %shr105
  store i32 %add107, i32* %add.ptr106, align 4, !tbaa !5
  %107 = load i32, i32* %delta, align 4, !tbaa !5
  %add108 = add nsw i32 %107, 8
  %108 = load i32, i32* %errorM, align 4, !tbaa !5
  %add109 = add nsw i32 %108, %add108
  store i32 %add109, i32* %errorM, align 4, !tbaa !5
  %109 = load i32, i32* %errorM, align 4, !tbaa !5
  %shr110 = ashr i32 %109, 4
  store i32 %shr110, i32* %errorM, align 4, !tbaa !5
  %110 = load i32, i32* %errorY, align 4, !tbaa !5
  %add111 = add nsw i32 %110, 8
  %shr112 = ashr i32 %add111, 4
  %111 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr113 = getelementptr inbounds i32, i32* %111, i64 5
  store i32 %shr112, i32* %add.ptr113, align 4, !tbaa !5
  %112 = load i32, i32* %errorY, align 4, !tbaa !5
  %shl114 = shl i32 %112, 1
  store i32 %shl114, i32* %delta, align 4, !tbaa !5
  %113 = load i32, i32* %delta, align 4, !tbaa !5
  %114 = load i32, i32* %errorY, align 4, !tbaa !5
  %add115 = add nsw i32 %114, %113
  store i32 %add115, i32* %errorY, align 4, !tbaa !5
  %115 = load i32, i32* %errorY, align 4, !tbaa !5
  %add116 = add nsw i32 %115, 8
  %shr117 = ashr i32 %add116, 4
  %116 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr118 = getelementptr inbounds i32, i32* %116, i64 -1
  %117 = load i32, i32* %add.ptr118, align 4, !tbaa !5
  %add119 = add nsw i32 %117, %shr117
  store i32 %add119, i32* %add.ptr118, align 4, !tbaa !5
  %118 = load i32, i32* %delta, align 4, !tbaa !5
  %119 = load i32, i32* %errorY, align 4, !tbaa !5
  %add120 = add nsw i32 %119, %118
  store i32 %add120, i32* %errorY, align 4, !tbaa !5
  %120 = load i32, i32* %errorY, align 4, !tbaa !5
  %add121 = add nsw i32 %120, 8
  %shr122 = ashr i32 %add121, 4
  %121 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr123 = getelementptr inbounds i32, i32* %121, i64 2
  %122 = load i32, i32* %add.ptr123, align 4, !tbaa !5
  %add124 = add nsw i32 %122, %shr122
  store i32 %add124, i32* %add.ptr123, align 4, !tbaa !5
  %123 = load i32, i32* %delta, align 4, !tbaa !5
  %add125 = add nsw i32 %123, 8
  %124 = load i32, i32* %errorY, align 4, !tbaa !5
  %add126 = add nsw i32 %124, %add125
  store i32 %add126, i32* %errorY, align 4, !tbaa !5
  %125 = load i32, i32* %errorY, align 4, !tbaa !5
  %shr127 = ashr i32 %125, 4
  store i32 %shr127, i32* %errorY, align 4, !tbaa !5
  %126 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv128 = zext i8 %126 to i32
  %cmp129 = icmp eq i32 %conv128, 1
  br i1 %cmp129, label %if.then.131, label %if.else

if.then.131:                                      ; preds = %if.end.79
  store i8 -128, i8* %bitmask, align 1, !tbaa !7
  %127 = load i32, i32* %composeK.addr, align 4, !tbaa !5
  %tobool132 = icmp ne i32 %127, 0
  br i1 %tobool132, label %if.then.133, label %if.end.153

if.then.133:                                      ; preds = %if.then.131
  %128 = load i8, i8* %byteC, align 1, !tbaa !7
  %conv134 = zext i8 %128 to i32
  %129 = load i8, i8* %byteM, align 1, !tbaa !7
  %conv135 = zext i8 %129 to i32
  %and = and i32 %conv134, %conv135
  %130 = load i8, i8* %byteY, align 1, !tbaa !7
  %conv136 = zext i8 %130 to i32
  %and137 = and i32 %and, %conv136
  %conv138 = trunc i32 %and137 to i8
  store i8 %conv138, i8* %byteK, align 1, !tbaa !7
  %131 = load i8, i8* %byteC, align 1, !tbaa !7
  %conv139 = zext i8 %131 to i32
  %132 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv140 = zext i8 %132 to i32
  %neg = xor i32 %conv140, -1
  %and141 = and i32 %conv139, %neg
  %conv142 = trunc i32 %and141 to i8
  store i8 %conv142, i8* %byteC, align 1, !tbaa !7
  %133 = load i8, i8* %byteM, align 1, !tbaa !7
  %conv143 = zext i8 %133 to i32
  %134 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv144 = zext i8 %134 to i32
  %neg145 = xor i32 %conv144, -1
  %and146 = and i32 %conv143, %neg145
  %conv147 = trunc i32 %and146 to i8
  store i8 %conv147, i8* %byteM, align 1, !tbaa !7
  %135 = load i8, i8* %byteY, align 1, !tbaa !7
  %conv148 = zext i8 %135 to i32
  %136 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv149 = zext i8 %136 to i32
  %neg150 = xor i32 %conv149, -1
  %and151 = and i32 %conv148, %neg150
  %conv152 = trunc i32 %and151 to i8
  store i8 %conv152, i8* %byteY, align 1, !tbaa !7
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.133, %if.then.131
  %137 = load i8, i8* %byteC, align 1, !tbaa !7
  %138 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  store i8 %137, i8* %138, align 1, !tbaa !7
  %139 = load i8, i8* %byteM, align 1, !tbaa !7
  %140 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %141 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %141 to i64
  %add.ptr154 = getelementptr inbounds i8, i8* %140, i64 %idx.ext
  store i8 %139, i8* %add.ptr154, align 1, !tbaa !7
  %142 = load i8, i8* %byteY, align 1, !tbaa !7
  %143 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %144 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul i32 2, %144
  %idx.ext155 = zext i32 %mul to i64
  %add.ptr156 = getelementptr inbounds i8, i8* %143, i64 %idx.ext155
  store i8 %142, i8* %add.ptr156, align 1, !tbaa !7
  %145 = load i8, i8* %byteK, align 1, !tbaa !7
  %146 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %147 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul157 = mul i32 3, %147
  %idx.ext158 = zext i32 %mul157 to i64
  %add.ptr159 = getelementptr inbounds i8, i8* %146, i64 %idx.ext158
  store i8 %145, i8* %add.ptr159, align 1, !tbaa !7
  store i8 0, i8* %byteK, align 1, !tbaa !7
  store i8 0, i8* %byteY, align 1, !tbaa !7
  store i8 0, i8* %byteM, align 1, !tbaa !7
  store i8 0, i8* %byteC, align 1, !tbaa !7
  %148 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr, i8** %dithered.addr, align 8, !tbaa !1
  br label %if.end.200

if.else:                                          ; preds = %if.end.79
  %149 = load i32, i32* %i, align 4, !tbaa !5
  %cmp160 = icmp eq i32 %149, 1
  br i1 %cmp160, label %if.then.162, label %if.else.195

if.then.162:                                      ; preds = %if.else
  %150 = load i32, i32* %composeK.addr, align 4, !tbaa !5
  %tobool163 = icmp ne i32 %150, 0
  br i1 %tobool163, label %if.then.164, label %if.end.186

if.then.164:                                      ; preds = %if.then.162
  %151 = load i8, i8* %byteC, align 1, !tbaa !7
  %conv165 = zext i8 %151 to i32
  %152 = load i8, i8* %byteM, align 1, !tbaa !7
  %conv166 = zext i8 %152 to i32
  %and167 = and i32 %conv165, %conv166
  %153 = load i8, i8* %byteY, align 1, !tbaa !7
  %conv168 = zext i8 %153 to i32
  %and169 = and i32 %and167, %conv168
  %conv170 = trunc i32 %and169 to i8
  store i8 %conv170, i8* %byteK, align 1, !tbaa !7
  %154 = load i8, i8* %byteC, align 1, !tbaa !7
  %conv171 = zext i8 %154 to i32
  %155 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv172 = zext i8 %155 to i32
  %neg173 = xor i32 %conv172, -1
  %and174 = and i32 %conv171, %neg173
  %conv175 = trunc i32 %and174 to i8
  store i8 %conv175, i8* %byteC, align 1, !tbaa !7
  %156 = load i8, i8* %byteM, align 1, !tbaa !7
  %conv176 = zext i8 %156 to i32
  %157 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv177 = zext i8 %157 to i32
  %neg178 = xor i32 %conv177, -1
  %and179 = and i32 %conv176, %neg178
  %conv180 = trunc i32 %and179 to i8
  store i8 %conv180, i8* %byteM, align 1, !tbaa !7
  %158 = load i8, i8* %byteY, align 1, !tbaa !7
  %conv181 = zext i8 %158 to i32
  %159 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv182 = zext i8 %159 to i32
  %neg183 = xor i32 %conv182, -1
  %and184 = and i32 %conv181, %neg183
  %conv185 = trunc i32 %and184 to i8
  store i8 %conv185, i8* %byteY, align 1, !tbaa !7
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.164, %if.then.162
  %160 = load i8, i8* %byteC, align 1, !tbaa !7
  %161 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  store i8 %160, i8* %161, align 1, !tbaa !7
  %162 = load i8, i8* %byteM, align 1, !tbaa !7
  %163 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %164 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %idx.ext187 = zext i32 %164 to i64
  %add.ptr188 = getelementptr inbounds i8, i8* %163, i64 %idx.ext187
  store i8 %162, i8* %add.ptr188, align 1, !tbaa !7
  %165 = load i8, i8* %byteY, align 1, !tbaa !7
  %166 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %167 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul189 = mul i32 2, %167
  %idx.ext190 = zext i32 %mul189 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %166, i64 %idx.ext190
  store i8 %165, i8* %add.ptr191, align 1, !tbaa !7
  %168 = load i8, i8* %byteK, align 1, !tbaa !7
  %169 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %170 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul192 = mul i32 3, %170
  %idx.ext193 = zext i32 %mul192 to i64
  %add.ptr194 = getelementptr inbounds i8, i8* %169, i64 %idx.ext193
  store i8 %168, i8* %add.ptr194, align 1, !tbaa !7
  br label %if.end.199

if.else.195:                                      ; preds = %if.else
  %171 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv196 = zext i8 %171 to i32
  %shr197 = ashr i32 %conv196, 1
  %conv198 = trunc i32 %shr197 to i8
  store i8 %conv198, i8* %bitmask, align 1, !tbaa !7
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.195, %if.end.186
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.153
  br label %for.inc

for.inc:                                          ; preds = %if.end.200
  %172 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %172, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %173 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr201 = getelementptr inbounds i8, i8* %173, i64 4
  store i8* %add.ptr201, i8** %row.addr, align 8, !tbaa !1
  %174 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr202 = getelementptr inbounds i32, i32* %174, i64 3
  store i32* %add.ptr202, i32** %err_vect, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %175 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergDirectionForward203 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %175, i32 0, i32 87
  store i32 0, i32* %FloydSteinbergDirectionForward203, align 4, !tbaa !40
  br label %if.end.455

if.else.204:                                      ; preds = %entry
  %176 = load i32, i32* %width.addr, align 4, !tbaa !5
  %shl205 = shl i32 %176, 2
  %sub206 = sub i32 %shl205, 4
  %177 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %idx.ext207 = zext i32 %sub206 to i64
  %add.ptr208 = getelementptr inbounds i8, i8* %177, i64 %idx.ext207
  store i8* %add.ptr208, i8** %row.addr, align 8, !tbaa !1
  %178 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %sub209 = sub i32 %178, 1
  %179 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %idx.ext210 = zext i32 %sub209 to i64
  %add.ptr211 = getelementptr inbounds i8, i8* %179, i64 %idx.ext210
  store i8* %add.ptr211, i8** %dithered.addr, align 8, !tbaa !1
  %180 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergErrorsC212 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %180, i32 0, i32 88
  %181 = load i32*, i32** %FloydSteinbergErrorsC212, align 8, !tbaa !47
  %182 = load i32, i32* %width.addr, align 4, !tbaa !5
  %mul213 = mul i32 3, %182
  %idx.ext214 = zext i32 %mul213 to i64
  %add.ptr215 = getelementptr inbounds i32, i32* %181, i64 %idx.ext214
  %add.ptr216 = getelementptr inbounds i32, i32* %add.ptr215, i64 3
  store i32* %add.ptr216, i32** %err_vect, align 8, !tbaa !1
  %183 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %shl217 = shl i32 %183, 3
  %184 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub218 = sub i32 %shl217, %184
  %shl219 = shl i32 1, %sub218
  %conv220 = trunc i32 %shl219 to i8
  store i8 %conv220, i8* %bitmask, align 1, !tbaa !7
  %185 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %185, i32* %i, align 4, !tbaa !5
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.449, %if.else.204
  %186 = load i32, i32* %i, align 4, !tbaa !5
  %cmp222 = icmp sgt i32 %186, 0
  br i1 %cmp222, label %for.body.224, label %for.end.453

for.body.224:                                     ; preds = %for.cond.221
  %187 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %188 = load i8, i8* %187, align 1, !tbaa !7
  %conv225 = zext i8 %188 to i32
  %189 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr226 = getelementptr inbounds i8, i8* %189, i64 3
  %190 = load i8, i8* %add.ptr226, align 1, !tbaa !7
  %conv227 = zext i8 %190 to i32
  %add228 = add nsw i32 %conv225, %conv227
  %idxprom229 = sext i32 %add228 to i64
  %191 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableC230 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %191, i32 0, i32 98
  %arrayidx231 = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableC230, i32 0, i64 %idxprom229
  %192 = load i32, i32* %arrayidx231, align 4, !tbaa !5
  %193 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergC232 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %193, i32 0, i32 93
  %194 = load i32, i32* %FloydSteinbergC232, align 4, !tbaa !48
  %add233 = add nsw i32 %192, %194
  store i32 %add233, i32* %err_corrC, align 4, !tbaa !5
  %195 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr234 = getelementptr inbounds i8, i8* %195, i64 1
  %196 = load i8, i8* %add.ptr234, align 1, !tbaa !7
  %conv235 = zext i8 %196 to i32
  %197 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr236 = getelementptr inbounds i8, i8* %197, i64 3
  %198 = load i8, i8* %add.ptr236, align 1, !tbaa !7
  %conv237 = zext i8 %198 to i32
  %add238 = add nsw i32 %conv235, %conv237
  %idxprom239 = sext i32 %add238 to i64
  %199 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableM240 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %199, i32 0, i32 99
  %arrayidx241 = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableM240, i32 0, i64 %idxprom239
  %200 = load i32, i32* %arrayidx241, align 4, !tbaa !5
  %201 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergM242 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %201, i32 0, i32 94
  %202 = load i32, i32* %FloydSteinbergM242, align 4, !tbaa !49
  %add243 = add nsw i32 %200, %202
  store i32 %add243, i32* %err_corrM, align 4, !tbaa !5
  %203 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr244 = getelementptr inbounds i8, i8* %203, i64 2
  %204 = load i8, i8* %add.ptr244, align 1, !tbaa !7
  %conv245 = zext i8 %204 to i32
  %205 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr246 = getelementptr inbounds i8, i8* %205, i64 3
  %206 = load i8, i8* %add.ptr246, align 1, !tbaa !7
  %conv247 = zext i8 %206 to i32
  %add248 = add nsw i32 %conv245, %conv247
  %idxprom249 = sext i32 %add248 to i64
  %207 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_gamma_tableY250 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %207, i32 0, i32 100
  %arrayidx251 = getelementptr inbounds [256 x i32], [256 x i32]* %bjc_gamma_tableY250, i32 0, i64 %idxprom249
  %208 = load i32, i32* %arrayidx251, align 4, !tbaa !5
  %209 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergY252 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %209, i32 0, i32 95
  %210 = load i32, i32* %FloydSteinbergY252, align 4, !tbaa !50
  %add253 = add nsw i32 %208, %210
  store i32 %add253, i32* %err_corrY, align 4, !tbaa !5
  %211 = load i32, i32* %err_corrC, align 4, !tbaa !5
  %cmp254 = icmp sgt i32 %211, 4080
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.259

land.lhs.true.256:                                ; preds = %for.body.224
  %212 = load i32, i32* %limit_extr.addr, align 4, !tbaa !5
  %tobool257 = icmp ne i32 %212, 0
  br i1 %tobool257, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %land.lhs.true.256
  store i32 4080, i32* %err_corrC, align 4, !tbaa !5
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %land.lhs.true.256, %for.body.224
  %213 = load i32, i32* %err_corrM, align 4, !tbaa !5
  %cmp260 = icmp sgt i32 %213, 4080
  br i1 %cmp260, label %land.lhs.true.262, label %if.end.265

land.lhs.true.262:                                ; preds = %if.end.259
  %214 = load i32, i32* %limit_extr.addr, align 4, !tbaa !5
  %tobool263 = icmp ne i32 %214, 0
  br i1 %tobool263, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %land.lhs.true.262
  store i32 4080, i32* %err_corrM, align 4, !tbaa !5
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.264, %land.lhs.true.262, %if.end.259
  %215 = load i32, i32* %err_corrY, align 4, !tbaa !5
  %cmp266 = icmp sgt i32 %215, 4080
  br i1 %cmp266, label %land.lhs.true.268, label %if.end.271

land.lhs.true.268:                                ; preds = %if.end.265
  %216 = load i32, i32* %limit_extr.addr, align 4, !tbaa !5
  %tobool269 = icmp ne i32 %216, 0
  br i1 %tobool269, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %land.lhs.true.268
  store i32 4080, i32* %err_corrY, align 4, !tbaa !5
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.270, %land.lhs.true.268, %if.end.265
  %217 = load i32, i32* %err_corrC, align 4, !tbaa !5
  %218 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr272 = getelementptr inbounds i32, i32* %218, i64 -3
  %219 = load i32, i32* %add.ptr272, align 4, !tbaa !5
  %add273 = add nsw i32 %217, %219
  %220 = load i32, i32* %errorC, align 4, !tbaa !5
  %add274 = add nsw i32 %220, %add273
  store i32 %add274, i32* %errorC, align 4, !tbaa !5
  %221 = load i32, i32* %err_corrM, align 4, !tbaa !5
  %222 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr275 = getelementptr inbounds i32, i32* %222, i64 -2
  %223 = load i32, i32* %add.ptr275, align 4, !tbaa !5
  %add276 = add nsw i32 %221, %223
  %224 = load i32, i32* %errorM, align 4, !tbaa !5
  %add277 = add nsw i32 %224, %add276
  store i32 %add277, i32* %errorM, align 4, !tbaa !5
  %225 = load i32, i32* %err_corrY, align 4, !tbaa !5
  %226 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr278 = getelementptr inbounds i32, i32* %226, i64 -1
  %227 = load i32, i32* %add.ptr278, align 4, !tbaa !5
  %add279 = add nsw i32 %225, %227
  %228 = load i32, i32* %errorY, align 4, !tbaa !5
  %add280 = add nsw i32 %228, %add279
  store i32 %add280, i32* %errorY, align 4, !tbaa !5
  %229 = load i32, i32* %errorC, align 4, !tbaa !5
  %230 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %call281 = call i32 @bjc_rand(%struct.gx_device_bjc_printer_s* %230) #4
  %idxprom282 = zext i32 %call281 to i64
  %231 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_treshold283 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %231, i32 0, i32 86
  %arrayidx284 = getelementptr inbounds [1024 x i32], [1024 x i32]* %bjc_treshold283, i32 0, i64 %idxprom282
  %232 = load i32, i32* %arrayidx284, align 4, !tbaa !5
  %cmp285 = icmp sgt i32 %229, %232
  br i1 %cmp285, label %if.then.287, label %if.end.293

if.then.287:                                      ; preds = %if.end.271
  %233 = load i32, i32* %errorC, align 4, !tbaa !5
  %sub288 = sub nsw i32 %233, 4080
  store i32 %sub288, i32* %errorC, align 4, !tbaa !5
  %234 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv289 = zext i8 %234 to i32
  %235 = load i8, i8* %byteC, align 1, !tbaa !7
  %conv290 = zext i8 %235 to i32
  %or291 = or i32 %conv290, %conv289
  %conv292 = trunc i32 %or291 to i8
  store i8 %conv292, i8* %byteC, align 1, !tbaa !7
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.287, %if.end.271
  %236 = load i32, i32* %errorM, align 4, !tbaa !5
  %237 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %call294 = call i32 @bjc_rand(%struct.gx_device_bjc_printer_s* %237) #4
  %idxprom295 = zext i32 %call294 to i64
  %238 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_treshold296 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %238, i32 0, i32 86
  %arrayidx297 = getelementptr inbounds [1024 x i32], [1024 x i32]* %bjc_treshold296, i32 0, i64 %idxprom295
  %239 = load i32, i32* %arrayidx297, align 4, !tbaa !5
  %cmp298 = icmp sgt i32 %236, %239
  br i1 %cmp298, label %if.then.300, label %if.end.306

if.then.300:                                      ; preds = %if.end.293
  %240 = load i32, i32* %errorM, align 4, !tbaa !5
  %sub301 = sub nsw i32 %240, 4080
  store i32 %sub301, i32* %errorM, align 4, !tbaa !5
  %241 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv302 = zext i8 %241 to i32
  %242 = load i8, i8* %byteM, align 1, !tbaa !7
  %conv303 = zext i8 %242 to i32
  %or304 = or i32 %conv303, %conv302
  %conv305 = trunc i32 %or304 to i8
  store i8 %conv305, i8* %byteM, align 1, !tbaa !7
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.300, %if.end.293
  %243 = load i32, i32* %errorY, align 4, !tbaa !5
  %244 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %call307 = call i32 @bjc_rand(%struct.gx_device_bjc_printer_s* %244) #4
  %idxprom308 = zext i32 %call307 to i64
  %245 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %bjc_treshold309 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %245, i32 0, i32 86
  %arrayidx310 = getelementptr inbounds [1024 x i32], [1024 x i32]* %bjc_treshold309, i32 0, i64 %idxprom308
  %246 = load i32, i32* %arrayidx310, align 4, !tbaa !5
  %cmp311 = icmp sgt i32 %243, %246
  br i1 %cmp311, label %if.then.313, label %if.end.319

if.then.313:                                      ; preds = %if.end.306
  %247 = load i32, i32* %errorY, align 4, !tbaa !5
  %sub314 = sub nsw i32 %247, 4080
  store i32 %sub314, i32* %errorY, align 4, !tbaa !5
  %248 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv315 = zext i8 %248 to i32
  %249 = load i8, i8* %byteY, align 1, !tbaa !7
  %conv316 = zext i8 %249 to i32
  %or317 = or i32 %conv316, %conv315
  %conv318 = trunc i32 %or317 to i8
  store i8 %conv318, i8* %byteY, align 1, !tbaa !7
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.313, %if.end.306
  %250 = load i32, i32* %errorC, align 4, !tbaa !5
  %add320 = add nsw i32 %250, 8
  %shr321 = ashr i32 %add320, 4
  %251 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr322 = getelementptr inbounds i32, i32* %251, i64 -3
  store i32 %shr321, i32* %add.ptr322, align 4, !tbaa !5
  %252 = load i32, i32* %errorC, align 4, !tbaa !5
  %shl323 = shl i32 %252, 1
  store i32 %shl323, i32* %delta, align 4, !tbaa !5
  %253 = load i32, i32* %delta, align 4, !tbaa !5
  %254 = load i32, i32* %errorC, align 4, !tbaa !5
  %add324 = add nsw i32 %254, %253
  store i32 %add324, i32* %errorC, align 4, !tbaa !5
  %255 = load i32, i32* %errorC, align 4, !tbaa !5
  %add325 = add nsw i32 %255, 8
  %shr326 = ashr i32 %add325, 4
  %256 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr327 = getelementptr inbounds i32, i32* %256, i64 3
  %257 = load i32, i32* %add.ptr327, align 4, !tbaa !5
  %add328 = add nsw i32 %257, %shr326
  store i32 %add328, i32* %add.ptr327, align 4, !tbaa !5
  %258 = load i32, i32* %delta, align 4, !tbaa !5
  %259 = load i32, i32* %errorC, align 4, !tbaa !5
  %add329 = add nsw i32 %259, %258
  store i32 %add329, i32* %errorC, align 4, !tbaa !5
  %260 = load i32, i32* %errorC, align 4, !tbaa !5
  %add330 = add nsw i32 %260, 8
  %shr331 = ashr i32 %add330, 4
  %261 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %262 = load i32, i32* %261, align 4, !tbaa !5
  %add332 = add nsw i32 %262, %shr331
  store i32 %add332, i32* %261, align 4, !tbaa !5
  %263 = load i32, i32* %delta, align 4, !tbaa !5
  %add333 = add nsw i32 %263, 8
  %264 = load i32, i32* %errorC, align 4, !tbaa !5
  %add334 = add nsw i32 %264, %add333
  store i32 %add334, i32* %errorC, align 4, !tbaa !5
  %265 = load i32, i32* %errorC, align 4, !tbaa !5
  %shr335 = ashr i32 %265, 4
  store i32 %shr335, i32* %errorC, align 4, !tbaa !5
  %266 = load i32, i32* %errorM, align 4, !tbaa !5
  %add336 = add nsw i32 %266, 8
  %shr337 = ashr i32 %add336, 4
  %267 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr338 = getelementptr inbounds i32, i32* %267, i64 -2
  store i32 %shr337, i32* %add.ptr338, align 4, !tbaa !5
  %268 = load i32, i32* %errorM, align 4, !tbaa !5
  %shl339 = shl i32 %268, 1
  store i32 %shl339, i32* %delta, align 4, !tbaa !5
  %269 = load i32, i32* %delta, align 4, !tbaa !5
  %270 = load i32, i32* %errorM, align 4, !tbaa !5
  %add340 = add nsw i32 %270, %269
  store i32 %add340, i32* %errorM, align 4, !tbaa !5
  %271 = load i32, i32* %errorM, align 4, !tbaa !5
  %add341 = add nsw i32 %271, 8
  %shr342 = ashr i32 %add341, 4
  %272 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr343 = getelementptr inbounds i32, i32* %272, i64 4
  %273 = load i32, i32* %add.ptr343, align 4, !tbaa !5
  %add344 = add nsw i32 %273, %shr342
  store i32 %add344, i32* %add.ptr343, align 4, !tbaa !5
  %274 = load i32, i32* %delta, align 4, !tbaa !5
  %275 = load i32, i32* %errorM, align 4, !tbaa !5
  %add345 = add nsw i32 %275, %274
  store i32 %add345, i32* %errorM, align 4, !tbaa !5
  %276 = load i32, i32* %errorM, align 4, !tbaa !5
  %add346 = add nsw i32 %276, 8
  %shr347 = ashr i32 %add346, 4
  %277 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr348 = getelementptr inbounds i32, i32* %277, i64 1
  %278 = load i32, i32* %add.ptr348, align 4, !tbaa !5
  %add349 = add nsw i32 %278, %shr347
  store i32 %add349, i32* %add.ptr348, align 4, !tbaa !5
  %279 = load i32, i32* %delta, align 4, !tbaa !5
  %add350 = add nsw i32 %279, 8
  %280 = load i32, i32* %errorM, align 4, !tbaa !5
  %add351 = add nsw i32 %280, %add350
  store i32 %add351, i32* %errorM, align 4, !tbaa !5
  %281 = load i32, i32* %errorM, align 4, !tbaa !5
  %shr352 = ashr i32 %281, 4
  store i32 %shr352, i32* %errorM, align 4, !tbaa !5
  %282 = load i32, i32* %errorY, align 4, !tbaa !5
  %add353 = add nsw i32 %282, 8
  %shr354 = ashr i32 %add353, 4
  %283 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr355 = getelementptr inbounds i32, i32* %283, i64 -1
  store i32 %shr354, i32* %add.ptr355, align 4, !tbaa !5
  %284 = load i32, i32* %errorY, align 4, !tbaa !5
  %shl356 = shl i32 %284, 1
  store i32 %shl356, i32* %delta, align 4, !tbaa !5
  %285 = load i32, i32* %delta, align 4, !tbaa !5
  %286 = load i32, i32* %errorY, align 4, !tbaa !5
  %add357 = add nsw i32 %286, %285
  store i32 %add357, i32* %errorY, align 4, !tbaa !5
  %287 = load i32, i32* %errorY, align 4, !tbaa !5
  %add358 = add nsw i32 %287, 8
  %shr359 = ashr i32 %add358, 4
  %288 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr360 = getelementptr inbounds i32, i32* %288, i64 5
  %289 = load i32, i32* %add.ptr360, align 4, !tbaa !5
  %add361 = add nsw i32 %289, %shr359
  store i32 %add361, i32* %add.ptr360, align 4, !tbaa !5
  %290 = load i32, i32* %delta, align 4, !tbaa !5
  %291 = load i32, i32* %errorY, align 4, !tbaa !5
  %add362 = add nsw i32 %291, %290
  store i32 %add362, i32* %errorY, align 4, !tbaa !5
  %292 = load i32, i32* %errorY, align 4, !tbaa !5
  %add363 = add nsw i32 %292, 8
  %shr364 = ashr i32 %add363, 4
  %293 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr365 = getelementptr inbounds i32, i32* %293, i64 2
  %294 = load i32, i32* %add.ptr365, align 4, !tbaa !5
  %add366 = add nsw i32 %294, %shr364
  store i32 %add366, i32* %add.ptr365, align 4, !tbaa !5
  %295 = load i32, i32* %delta, align 4, !tbaa !5
  %add367 = add nsw i32 %295, 8
  %296 = load i32, i32* %errorY, align 4, !tbaa !5
  %add368 = add nsw i32 %296, %add367
  store i32 %add368, i32* %errorY, align 4, !tbaa !5
  %297 = load i32, i32* %errorY, align 4, !tbaa !5
  %shr369 = ashr i32 %297, 4
  store i32 %shr369, i32* %errorY, align 4, !tbaa !5
  %298 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv370 = zext i8 %298 to i32
  %cmp371 = icmp eq i32 %conv370, 128
  br i1 %cmp371, label %if.then.373, label %if.else.407

if.then.373:                                      ; preds = %if.end.319
  store i8 1, i8* %bitmask, align 1, !tbaa !7
  %299 = load i32, i32* %composeK.addr, align 4, !tbaa !5
  %tobool374 = icmp ne i32 %299, 0
  br i1 %tobool374, label %if.then.375, label %if.end.397

if.then.375:                                      ; preds = %if.then.373
  %300 = load i8, i8* %byteC, align 1, !tbaa !7
  %conv376 = zext i8 %300 to i32
  %301 = load i8, i8* %byteM, align 1, !tbaa !7
  %conv377 = zext i8 %301 to i32
  %and378 = and i32 %conv376, %conv377
  %302 = load i8, i8* %byteY, align 1, !tbaa !7
  %conv379 = zext i8 %302 to i32
  %and380 = and i32 %and378, %conv379
  %conv381 = trunc i32 %and380 to i8
  store i8 %conv381, i8* %byteK, align 1, !tbaa !7
  %303 = load i8, i8* %byteC, align 1, !tbaa !7
  %conv382 = zext i8 %303 to i32
  %304 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv383 = zext i8 %304 to i32
  %neg384 = xor i32 %conv383, -1
  %and385 = and i32 %conv382, %neg384
  %conv386 = trunc i32 %and385 to i8
  store i8 %conv386, i8* %byteC, align 1, !tbaa !7
  %305 = load i8, i8* %byteM, align 1, !tbaa !7
  %conv387 = zext i8 %305 to i32
  %306 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv388 = zext i8 %306 to i32
  %neg389 = xor i32 %conv388, -1
  %and390 = and i32 %conv387, %neg389
  %conv391 = trunc i32 %and390 to i8
  store i8 %conv391, i8* %byteM, align 1, !tbaa !7
  %307 = load i8, i8* %byteY, align 1, !tbaa !7
  %conv392 = zext i8 %307 to i32
  %308 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv393 = zext i8 %308 to i32
  %neg394 = xor i32 %conv393, -1
  %and395 = and i32 %conv392, %neg394
  %conv396 = trunc i32 %and395 to i8
  store i8 %conv396, i8* %byteY, align 1, !tbaa !7
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.375, %if.then.373
  %309 = load i8, i8* %byteC, align 1, !tbaa !7
  %310 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  store i8 %309, i8* %310, align 1, !tbaa !7
  %311 = load i8, i8* %byteM, align 1, !tbaa !7
  %312 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %313 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %idx.ext398 = zext i32 %313 to i64
  %add.ptr399 = getelementptr inbounds i8, i8* %312, i64 %idx.ext398
  store i8 %311, i8* %add.ptr399, align 1, !tbaa !7
  %314 = load i8, i8* %byteY, align 1, !tbaa !7
  %315 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %316 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul400 = mul i32 2, %316
  %idx.ext401 = zext i32 %mul400 to i64
  %add.ptr402 = getelementptr inbounds i8, i8* %315, i64 %idx.ext401
  store i8 %314, i8* %add.ptr402, align 1, !tbaa !7
  %317 = load i8, i8* %byteK, align 1, !tbaa !7
  %318 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %319 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul403 = mul i32 3, %319
  %idx.ext404 = zext i32 %mul403 to i64
  %add.ptr405 = getelementptr inbounds i8, i8* %318, i64 %idx.ext404
  store i8 %317, i8* %add.ptr405, align 1, !tbaa !7
  store i8 0, i8* %byteK, align 1, !tbaa !7
  store i8 0, i8* %byteY, align 1, !tbaa !7
  store i8 0, i8* %byteM, align 1, !tbaa !7
  store i8 0, i8* %byteC, align 1, !tbaa !7
  %320 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %incdec.ptr406 = getelementptr inbounds i8, i8* %320, i32 -1
  store i8* %incdec.ptr406, i8** %dithered.addr, align 8, !tbaa !1
  br label %if.end.448

if.else.407:                                      ; preds = %if.end.319
  %321 = load i32, i32* %i, align 4, !tbaa !5
  %cmp408 = icmp eq i32 %321, 1
  br i1 %cmp408, label %if.then.410, label %if.else.443

if.then.410:                                      ; preds = %if.else.407
  %322 = load i32, i32* %composeK.addr, align 4, !tbaa !5
  %tobool411 = icmp ne i32 %322, 0
  br i1 %tobool411, label %if.then.412, label %if.end.434

if.then.412:                                      ; preds = %if.then.410
  %323 = load i8, i8* %byteC, align 1, !tbaa !7
  %conv413 = zext i8 %323 to i32
  %324 = load i8, i8* %byteM, align 1, !tbaa !7
  %conv414 = zext i8 %324 to i32
  %and415 = and i32 %conv413, %conv414
  %325 = load i8, i8* %byteY, align 1, !tbaa !7
  %conv416 = zext i8 %325 to i32
  %and417 = and i32 %and415, %conv416
  %conv418 = trunc i32 %and417 to i8
  store i8 %conv418, i8* %byteK, align 1, !tbaa !7
  %326 = load i8, i8* %byteC, align 1, !tbaa !7
  %conv419 = zext i8 %326 to i32
  %327 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv420 = zext i8 %327 to i32
  %neg421 = xor i32 %conv420, -1
  %and422 = and i32 %conv419, %neg421
  %conv423 = trunc i32 %and422 to i8
  store i8 %conv423, i8* %byteC, align 1, !tbaa !7
  %328 = load i8, i8* %byteM, align 1, !tbaa !7
  %conv424 = zext i8 %328 to i32
  %329 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv425 = zext i8 %329 to i32
  %neg426 = xor i32 %conv425, -1
  %and427 = and i32 %conv424, %neg426
  %conv428 = trunc i32 %and427 to i8
  store i8 %conv428, i8* %byteM, align 1, !tbaa !7
  %330 = load i8, i8* %byteY, align 1, !tbaa !7
  %conv429 = zext i8 %330 to i32
  %331 = load i8, i8* %byteK, align 1, !tbaa !7
  %conv430 = zext i8 %331 to i32
  %neg431 = xor i32 %conv430, -1
  %and432 = and i32 %conv429, %neg431
  %conv433 = trunc i32 %and432 to i8
  store i8 %conv433, i8* %byteY, align 1, !tbaa !7
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.412, %if.then.410
  %332 = load i8, i8* %byteC, align 1, !tbaa !7
  %333 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  store i8 %332, i8* %333, align 1, !tbaa !7
  %334 = load i8, i8* %byteM, align 1, !tbaa !7
  %335 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %336 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %idx.ext435 = zext i32 %336 to i64
  %add.ptr436 = getelementptr inbounds i8, i8* %335, i64 %idx.ext435
  store i8 %334, i8* %add.ptr436, align 1, !tbaa !7
  %337 = load i8, i8* %byteY, align 1, !tbaa !7
  %338 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %339 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul437 = mul i32 2, %339
  %idx.ext438 = zext i32 %mul437 to i64
  %add.ptr439 = getelementptr inbounds i8, i8* %338, i64 %idx.ext438
  store i8 %337, i8* %add.ptr439, align 1, !tbaa !7
  %340 = load i8, i8* %byteK, align 1, !tbaa !7
  %341 = load i8*, i8** %dithered.addr, align 8, !tbaa !1
  %342 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul440 = mul i32 3, %342
  %idx.ext441 = zext i32 %mul440 to i64
  %add.ptr442 = getelementptr inbounds i8, i8* %341, i64 %idx.ext441
  store i8 %340, i8* %add.ptr442, align 1, !tbaa !7
  br label %if.end.447

if.else.443:                                      ; preds = %if.else.407
  %343 = load i8, i8* %bitmask, align 1, !tbaa !7
  %conv444 = zext i8 %343 to i32
  %shl445 = shl i32 %conv444, 1
  %conv446 = trunc i32 %shl445 to i8
  store i8 %conv446, i8* %bitmask, align 1, !tbaa !7
  br label %if.end.447

if.end.447:                                       ; preds = %if.else.443, %if.end.434
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %if.end.397
  br label %for.inc.449

for.inc.449:                                      ; preds = %if.end.448
  %344 = load i32, i32* %i, align 4, !tbaa !5
  %dec450 = add nsw i32 %344, -1
  store i32 %dec450, i32* %i, align 4, !tbaa !5
  %345 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %add.ptr451 = getelementptr inbounds i8, i8* %345, i64 -4
  store i8* %add.ptr451, i8** %row.addr, align 8, !tbaa !1
  %346 = load i32*, i32** %err_vect, align 8, !tbaa !1
  %add.ptr452 = getelementptr inbounds i32, i32* %346, i64 -3
  store i32* %add.ptr452, i32** %err_vect, align 8, !tbaa !1
  br label %for.cond.221

for.end.453:                                      ; preds = %for.cond.221
  %347 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev.addr, align 8, !tbaa !1
  %FloydSteinbergDirectionForward454 = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %347, i32 0, i32 87
  store i32 1, i32* %FloydSteinbergDirectionForward454, align 4, !tbaa !40
  br label %if.end.455

if.end.455:                                       ; preds = %for.end.453, %for.end
  %348 = bitcast i32** %err_vect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #2
  %349 = bitcast i32* %err_corrY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %349) #2
  %350 = bitcast i32* %err_corrM to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #2
  %351 = bitcast i32* %err_corrC to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #2
  %352 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %352) #2
  %353 = bitcast i32* %errorY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #2
  %354 = bitcast i32* %errorM to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #2
  %355 = bitcast i32* %errorC to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #2
  %356 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356) #2
  call void @llvm.lifetime.end(i64 1, i8* %bitmask) #2
  call void @llvm.lifetime.end(i64 1, i8* %byteK) #2
  call void @llvm.lifetime.end(i64 1, i8* %byteY) #2
  call void @llvm.lifetime.end(i64 1, i8* %byteM) #2
  call void @llvm.lifetime.end(i64 1, i8* %byteC) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @FloydSteinbergCloseC(%struct.gx_device_printer_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %dev = alloca %struct.gx_device_bjc_printer_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_bjc_printer_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_bjc_printer_s*
  store %struct.gx_device_bjc_printer_s* %2, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !33
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !46
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !33
  %8 = load %struct.gx_device_bjc_printer_s*, %struct.gx_device_bjc_printer_s** %dev, align 8, !tbaa !1
  %FloydSteinbergErrorsC = getelementptr inbounds %struct.gx_device_bjc_printer_s, %struct.gx_device_bjc_printer_s* %8, i32 0, i32 88
  %9 = load i32*, i32** %FloydSteinbergErrorsC, align 8, !tbaa !47
  %10 = bitcast i32* %9 to i8*
  call void %5(%struct.gs_memory_s* %7, i8* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #4
  %11 = bitcast %struct.gx_device_bjc_printer_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @bjc_put_lo_hi(%struct._IO_FILE* %file, i32 %value) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %value.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  %0 = load i32, i32* %value.addr, align 4, !tbaa !5
  %and = and i32 %0, 255
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %and, %struct._IO_FILE* %1) #4
  %2 = load i32, i32* %value.addr, align 4, !tbaa !5
  %and1 = and i32 %2, 65535
  %shr = ashr i32 %and1, 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call2 = call i32 @fputc(i32 %shr, %struct._IO_FILE* %3) #4
  ret void
}

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
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 0}
!9 = !{!"skip_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!10 = !{!9, !6, i64 4}
!11 = !{!9, !6, i64 8}
!12 = !{!9, !6, i64 12}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !3, i64 0}
!15 = !{!16, !6, i64 18548}
!16 = !{!"gx_device_bjc_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !17, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !19, i64 96, !22, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !18, i64 928, !18, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !18, i64 968, !18, i64 976, !23, i64 984, !6, i64 1052, !6, i64 1056, !24, i64 1064, !2, i64 1104, !3, i64 1112, !26, i64 1120, !27, i64 1144, !3, i64 1728, !28, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !18, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !30, i64 17256, !6, i64 17288, !2, i64 17296, !27, i64 17304, !27, i64 17888, !6, i64 18472, !6, i64 18476, !6, i64 18480, !6, i64 18484, !6, i64 18488, !6, i64 18492, !6, i64 18496, !6, i64 18500, !6, i64 18504, !6, i64 18508, !6, i64 18512, !14, i64 18516, !14, i64 18520, !14, i64 18524, !14, i64 18528, !31, i64 18532, !6, i64 18544, !6, i64 18548, !3, i64 18552, !6, i64 22648, !2, i64 22656, !2, i64 22664, !2, i64 22672, !2, i64 22680, !2, i64 22688, !6, i64 22696, !6, i64 22700, !6, i64 22704, !6, i64 22708, !6, i64 22712, !3, i64 22716, !3, i64 23740, !3, i64 24764}
!17 = !{!"rc_header_s", !18, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"long", !3, i64 0}
!19 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !20, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !21, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !18, i64 704, !6, i64 712}
!20 = !{!"short", !3, i64 0}
!21 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!22 = !{!"gx_device_cached_colors_s", !18, i64 0, !18, i64 8}
!23 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!24 = !{!"gdev_space_params_s", !18, i64 0, !18, i64 8, !25, i64 16, !6, i64 32, !3, i64 36}
!25 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !18, i64 8}
!26 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!27 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!28 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !29, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!29 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!30 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!31 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!32 = !{!16, !6, i64 18544}
!33 = !{!34, !2, i64 24}
!34 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !17, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !19, i64 96, !22, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !18, i64 928, !18, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !18, i64 968, !18, i64 976, !23, i64 984, !6, i64 1052, !6, i64 1056, !24, i64 1064, !2, i64 1104, !3, i64 1112, !26, i64 1120, !27, i64 1144, !3, i64 1728, !28, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !18, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !30, i64 17256, !6, i64 17288, !2, i64 17296, !27, i64 17304, !27, i64 17888}
!35 = !{!36, !2, i64 64}
!36 = !{!"gs_memory_s", !2, i64 0, !37, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!37 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!38 = !{!34, !6, i64 832}
!39 = !{!16, !2, i64 22688}
!40 = !{!16, !6, i64 22648}
!41 = !{!16, !6, i64 18532}
!42 = !{!16, !6, i64 18536}
!43 = !{!16, !6, i64 18540}
!44 = !{!16, !6, i64 22712}
!45 = !{!16, !6, i64 18492}
!46 = !{!36, !2, i64 24}
!47 = !{!16, !2, i64 22656}
!48 = !{!16, !6, i64 22696}
!49 = !{!16, !6, i64 22700}
!50 = !{!16, !6, i64 22704}
