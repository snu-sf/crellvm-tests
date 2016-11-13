; ModuleID = './gxblend1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdf14_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gs_devn_params_s, %struct.pdf14_procs_s*, %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_ctx_s*, %struct.pdf14_smaskcolor_s*, float, float, float, i32, i32, i32, i32, i32, i64, %struct.gx_device_s*, i32, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gx_device_color_info_s, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, %struct.pdf14_parent_color_s* }
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gx_pattern_cache_s = type { %struct.gs_memory_s*, %struct.gx_color_tile_s*, i32, i32, i32, i64, i64, void (%struct.gx_pattern_cache_s*)* }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
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
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gx_image_enum_common_s = type opaque
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
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
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_devn_params_s = type { i32, i8**, i32, i32, i32, %struct.gs_separations_s, i32, [70 x i32], %struct.compressed_color_list_s*, %struct.compressed_color_list_s*, %struct.gs_separations_s }
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { [256 x %struct.comp_bit_map_list_s] }
%struct.comp_bit_map_list_s = type { i16, i16, i32, i64, i64 }
%struct.gs_separations_s = type { i32, [64 x %struct.devn_separation_name_s] }
%struct.devn_separation_name_s = type { i32, i8* }
%struct.pdf14_procs_s = type { {}*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.pdf14_ctx_s = type { %struct.pdf14_buf_s*, %struct.pdf14_mask_s*, %struct.gs_memory_s*, %struct.gs_int_rect_s, i32, i32, i32, i32 }
%struct.pdf14_buf_s = type { %struct.pdf14_buf_s*, i8*, i32, i32, i8, i8, i32, i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i8*, i8*, %struct.gs_int_rect_s, %struct.pdf14_mask_s*, i32, i32, i32, %struct.pdf14_parent_color_s*, i32 }
%struct.pdf14_mask_s = type { %struct.pdf14_rcmask_s*, %struct.pdf14_mask_s*, %struct.gs_memory_s* }
%struct.pdf14_rcmask_s = type { %struct.pdf14_buf_s*, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.pdf14_smaskcolor_s = type { %struct.gsicc_smask_s*, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.pdf14_parent_color_s = type { i32, i32, i32, [64 x i8], [64 x i8], i8, i32, i32, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, %struct.pdf14_procs_s*, %struct.pdf14_nonseparable_blending_procs_s*, %struct.cmm_profile_s*, %struct.pdf14_parent_color_s* }

@num_comp_bits = external global [0 x i32], align 4
@comp_bit_factor = external global [0 x i32], align 4
@__func__.pdf14_preserve_backdrop_cm = private unnamed_addr constant [27 x i8] c"pdf14_preserve_backdrop_cm\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"./base/gxblend1.c\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ICC link failed.  Trans backdrop\00", align 1
@DeviceCMYKComponents = external global [0 x i8*], align 8

; Function Attrs: nounwind uwtable
define void @pdf14_unpack_additive(i32 %num_comp, i64 %color, %struct.pdf14_device_s* %p14dev, i8* %out) #0 {
entry:
  %num_comp.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %p14dev.addr = alloca %struct.pdf14_device_s*, align 8
  %out.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !5
  store %struct.pdf14_device_s* %p14dev, %struct.pdf14_device_s** %p14dev.addr, align 8, !tbaa !7
  store i8* %out, i8** %out.addr, align 8, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !1
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %color.addr, align 8, !tbaa !5
  %and = and i64 %3, 255
  %conv = trunc i64 %and to i8
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %out.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !9
  %6 = load i64, i64* %color.addr, align 8, !tbaa !5
  %shr = lshr i64 %6, 8
  store i64 %shr, i64* %color.addr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @pdf14_unpack_subtractive(i32 %num_comp, i64 %color, %struct.pdf14_device_s* %p14dev, i8* %out) #0 {
entry:
  %num_comp.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %p14dev.addr = alloca %struct.pdf14_device_s*, align 8
  %out.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !5
  store %struct.pdf14_device_s* %p14dev, %struct.pdf14_device_s** %p14dev.addr, align 8, !tbaa !7
  store i8* %out, i8** %out.addr, align 8, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !1
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %color.addr, align 8, !tbaa !5
  %and = and i64 %3, 255
  %conv = trunc i64 %and to i8
  %conv1 = zext i8 %conv to i32
  %sub2 = sub nsw i32 255, %conv1
  %conv3 = trunc i32 %sub2 to i8
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %out.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv3, i8* %arrayidx, align 1, !tbaa !9
  %6 = load i64, i64* %color.addr, align 8, !tbaa !5
  %shr = lshr i64 %6, 8
  store i64 %shr, i64* %color.addr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf14_unpack_compressed(i32 %num_comp, i64 %color, %struct.pdf14_device_s* %p14dev, i8* %out) #0 {
entry:
  %num_comp.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %p14dev.addr = alloca %struct.pdf14_device_s*, align 8
  %out.addr = alloca i8*, align 8
  %comp_num = alloca i32, align 4
  %factor = alloca i32, align 4
  %bit_count = alloca i32, align 4
  %bit_mask = alloca i32, align 4
  %pbitmap = alloca %struct.comp_bit_map_list_s*, align 8
  %solid_color = alloca i16, align 2
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !5
  store %struct.pdf14_device_s* %p14dev, %struct.pdf14_device_s** %p14dev.addr, align 8, !tbaa !7
  store i8* %out, i8** %out.addr, align 8, !tbaa !7
  %0 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.pdf14_device_s*, %struct.pdf14_device_s** %p14dev.addr, align 8, !tbaa !7
  %devn_params = getelementptr inbounds %struct.pdf14_device_s, %struct.pdf14_device_s* %1, i32 0, i32 44
  %compressed_color_list = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 8
  %2 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list, align 8, !tbaa !10
  %cmp = icmp eq %struct.compressed_color_list_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %comp_num, align 4, !tbaa !1
  %cmp1 = icmp sge i32 %4, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %color.addr, align 8, !tbaa !5
  %and = and i64 %5, 255
  %conv = trunc i64 %and to i8
  %conv2 = zext i8 %conv to i32
  %sub3 = sub nsw i32 255, %conv2
  %conv4 = trunc i32 %sub3 to i8
  %6 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %out.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 %conv4, i8* %arrayidx, align 1, !tbaa !9
  %8 = load i64, i64* %color.addr, align 8, !tbaa !5
  %shr = lshr i64 %8, 8
  store i64 %shr, i64* %color.addr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %comp_num, align 4, !tbaa !1
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.53

if.else:                                          ; preds = %entry
  %10 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %bit_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %bit_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.comp_bit_map_list_s** %pbitmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i16* %solid_color to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #1
  store i16 255, i16* %solid_color, align 2, !tbaa !25
  %15 = load i64, i64* %color.addr, align 8, !tbaa !5
  %16 = load %struct.pdf14_device_s*, %struct.pdf14_device_s** %p14dev.addr, align 8, !tbaa !7
  %devn_params5 = getelementptr inbounds %struct.pdf14_device_s, %struct.pdf14_device_s* %16, i32 0, i32 44
  %compressed_color_list6 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params5, i32 0, i32 8
  %17 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list6, align 8, !tbaa !10
  %call = call %struct.comp_bit_map_list_s* @find_bit_map(i64 %15, %struct.compressed_color_list_s* %17) #5
  store %struct.comp_bit_map_list_s* %call, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !7
  %18 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !7
  %num_non_solid_comp = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %18, i32 0, i32 1
  %19 = load i16, i16* %num_non_solid_comp, align 2, !tbaa !26
  %idxprom7 = sext i16 %19 to i64
  %arrayidx8 = getelementptr inbounds [0 x i32], [0 x i32]* @num_comp_bits, i32 0, i64 %idxprom7
  %20 = load i32, i32* %arrayidx8, align 4, !tbaa !1
  store i32 %20, i32* %bit_count, align 4, !tbaa !1
  %21 = load i32, i32* %bit_count, align 4, !tbaa !1
  %shl = shl i32 1, %21
  %sub9 = sub nsw i32 %shl, 1
  store i32 %sub9, i32* %bit_mask, align 4, !tbaa !1
  %22 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !7
  %num_non_solid_comp10 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %22, i32 0, i32 1
  %23 = load i16, i16* %num_non_solid_comp10, align 2, !tbaa !26
  %idxprom11 = sext i16 %23 to i64
  %arrayidx12 = getelementptr inbounds [0 x i32], [0 x i32]* @comp_bit_factor, i32 0, i64 %idxprom11
  %24 = load i32, i32* %arrayidx12, align 4, !tbaa !1
  store i32 %24, i32* %factor, align 4, !tbaa !1
  %25 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !7
  %solid_not_100 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %25, i32 0, i32 2
  %26 = load i32, i32* %solid_not_100, align 4, !tbaa !28
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  %27 = load i32, i32* %factor, align 4, !tbaa !1
  %28 = load i64, i64* %color.addr, align 8, !tbaa !5
  %conv14 = trunc i64 %28 to i32
  %29 = load i32, i32* %bit_mask, align 4, !tbaa !1
  %and15 = and i32 %conv14, %29
  %mul = mul nsw i32 %27, %and15
  %shr16 = ashr i32 %mul, 16
  %sub17 = sub nsw i32 255, %shr16
  %conv18 = trunc i32 %sub17 to i16
  store i16 %conv18, i16* %solid_color, align 2, !tbaa !25
  %30 = load i32, i32* %bit_count, align 4, !tbaa !1
  %31 = load i64, i64* %color.addr, align 8, !tbaa !5
  %sh_prom = zext i32 %30 to i64
  %shr19 = lshr i64 %31, %sh_prom
  store i64 %shr19, i64* %color.addr, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.51, %if.end
  %32 = load i32, i32* %comp_num, align 4, !tbaa !1
  %33 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %cmp21 = icmp slt i32 %32, %33
  br i1 %cmp21, label %for.body.23, label %for.end.52

for.body.23:                                      ; preds = %for.cond.20
  %34 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !7
  %colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %34, i32 0, i32 3
  %35 = load i64, i64* %colorants, align 8, !tbaa !29
  %36 = load i32, i32* %comp_num, align 4, !tbaa !1
  %sh_prom24 = zext i32 %36 to i64
  %shr25 = lshr i64 %35, %sh_prom24
  %conv26 = trunc i64 %shr25 to i32
  %and27 = and i32 %conv26, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.48

if.then.29:                                       ; preds = %for.body.23
  %37 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !7
  %solid_colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %37, i32 0, i32 4
  %38 = load i64, i64* %solid_colorants, align 8, !tbaa !30
  %39 = load i32, i32* %comp_num, align 4, !tbaa !1
  %sh_prom30 = zext i32 %39 to i64
  %shr31 = lshr i64 %38, %sh_prom30
  %conv32 = trunc i64 %shr31 to i32
  %and33 = and i32 %conv32, 1
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %if.then.29
  %40 = load i16, i16* %solid_color, align 2, !tbaa !25
  %conv36 = trunc i16 %40 to i8
  %41 = load i8*, i8** %out.addr, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %out.addr, align 8, !tbaa !7
  store i8 %conv36, i8* %41, align 1, !tbaa !9
  br label %if.end.47

if.else.37:                                       ; preds = %if.then.29
  %42 = load i32, i32* %factor, align 4, !tbaa !1
  %43 = load i64, i64* %color.addr, align 8, !tbaa !5
  %conv38 = trunc i64 %43 to i32
  %44 = load i32, i32* %bit_mask, align 4, !tbaa !1
  %and39 = and i32 %conv38, %44
  %mul40 = mul nsw i32 %42, %and39
  %shr41 = ashr i32 %mul40, 16
  %sub42 = sub nsw i32 255, %shr41
  %conv43 = trunc i32 %sub42 to i8
  %45 = load i8*, i8** %out.addr, align 8, !tbaa !7
  %incdec.ptr44 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr44, i8** %out.addr, align 8, !tbaa !7
  store i8 %conv43, i8* %45, align 1, !tbaa !9
  %46 = load i32, i32* %bit_count, align 4, !tbaa !1
  %47 = load i64, i64* %color.addr, align 8, !tbaa !5
  %sh_prom45 = zext i32 %46 to i64
  %shr46 = lshr i64 %47, %sh_prom45
  store i64 %shr46, i64* %color.addr, align 8, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.37, %if.then.35
  br label %if.end.50

if.else.48:                                       ; preds = %for.body.23
  %48 = load i8*, i8** %out.addr, align 8, !tbaa !7
  %incdec.ptr49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr49, i8** %out.addr, align 8, !tbaa !7
  store i8 -1, i8* %48, align 1, !tbaa !9
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.end.47
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %49 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.20

for.end.52:                                       ; preds = %for.cond.20
  %50 = bitcast i16* %solid_color to i8*
  call void @llvm.lifetime.end(i64 2, i8* %50) #1
  %51 = bitcast %struct.comp_bit_map_list_s** %pbitmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %bit_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %bit_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %for.end
  %55 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  ret void
}

declare %struct.comp_bit_map_list_s* @find_bit_map(i64, %struct.compressed_color_list_s*) #2

; Function Attrs: nounwind uwtable
define void @pdf14_unpack_custom(i32 %num_comp, i64 %color, %struct.pdf14_device_s* %p14dev, i8* %out) #0 {
entry:
  %num_comp.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %p14dev.addr = alloca %struct.pdf14_device_s*, align 8
  %out.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tdev = alloca %struct.gx_device_s*, align 8
  %cm_values = alloca [64 x i16], align 16
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !5
  store %struct.pdf14_device_s* %p14dev, %struct.pdf14_device_s** %p14dev.addr, align 8, !tbaa !7
  store i8* %out, i8** %out.addr, align 8, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.pdf14_device_s*, %struct.pdf14_device_s** %p14dev.addr, align 8, !tbaa !7
  %target = getelementptr inbounds %struct.pdf14_device_s, %struct.pdf14_device_s* %2, i32 0, i32 43
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !31
  store %struct.gx_device_s* %3, %struct.gx_device_s** %tdev, align 8, !tbaa !7
  %4 = bitcast [64 x i16]* %cm_values to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 52
  %6 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !32
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !7
  %8 = load i64, i64* %color.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_values, i32 0, i32 0
  %call = call i32 %6(%struct.gx_device_s* %7, i64 %8, i16* %arraydecay) #5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %10 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_values, i32 0, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2, !tbaa !25
  %conv = zext i16 %12 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv1 = trunc i32 %shr to i16
  %conv2 = zext i16 %conv1 to i32
  %sub = sub nsw i32 255, %conv2
  %conv3 = trunc i32 %sub to i8
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom4 = sext i32 %13 to i64
  %14 = load i8*, i8** %out.addr, align 8, !tbaa !7
  %arrayidx5 = getelementptr inbounds i8, i8* %14, i64 %idxprom4
  store i8 %conv3, i8* %arrayidx5, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = bitcast [64 x i16]* %cm_values to i8*
  call void @llvm.lifetime.end(i64 128, i8* %16) #1
  %17 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pdf14_preserve_backdrop_cm(%struct.pdf14_buf_s* %buf, %struct.cmm_profile_s* %group_profile, %struct.pdf14_buf_s* %tos, %struct.cmm_profile_s* %tos_profile, %struct.gs_memory_s* %memory, %struct.gs_imager_state_s* %pis, %struct.gx_device_s* %dev, i32 %knockout_buff) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca %struct.pdf14_buf_s*, align 8
  %group_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %tos.addr = alloca %struct.pdf14_buf_s*, align 8
  %tos_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %knockout_buff.addr = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %buf_plane = alloca i8*, align 8
  %tos_plane = alloca i8*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %icc_link = alloca %struct.gsicc_link_s*, align 8
  %input_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %output_buff_desc = alloca %struct.gsicc_bufferdesc_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pdf14_buf_s* %buf, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  store %struct.cmm_profile_s* %group_profile, %struct.cmm_profile_s** %group_profile.addr, align 8, !tbaa !7
  store %struct.pdf14_buf_s* %tos, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  store %struct.cmm_profile_s* %tos_profile, %struct.cmm_profile_s** %tos_profile.addr, align 8, !tbaa !7
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !7
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !7
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  store i32 %knockout_buff, i32* %knockout_buff.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %1, i32 0, i32 10
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !34
  %3 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect1 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %3, i32 0, i32 10
  %p2 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect1, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p2, i32 0, i32 0
  %4 = load i32, i32* %x3, align 4, !tbaa !34
  %cmp = icmp sgt i32 %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect4 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %5, i32 0, i32 10
  %p5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect4, i32 0, i32 0
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p5, i32 0, i32 0
  %6 = load i32, i32* %x6, align 4, !tbaa !34
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect7 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %7, i32 0, i32 10
  %p8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect7, i32 0, i32 0
  %x9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p8, i32 0, i32 0
  %8 = load i32, i32* %x9, align 4, !tbaa !34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* %x0, align 4, !tbaa !1
  %9 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect10 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %10, i32 0, i32 10
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect10, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %11 = load i32, i32* %x11, align 4, !tbaa !38
  %12 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect12 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %12, i32 0, i32 10
  %q13 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect12, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q13, i32 0, i32 0
  %13 = load i32, i32* %x14, align 4, !tbaa !38
  %cmp15 = icmp slt i32 %11, %13
  br i1 %cmp15, label %cond.true.16, label %cond.false.20

cond.true.16:                                     ; preds = %cond.end
  %14 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect17 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %14, i32 0, i32 10
  %q18 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect17, i32 0, i32 1
  %x19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q18, i32 0, i32 0
  %15 = load i32, i32* %x19, align 4, !tbaa !38
  br label %cond.end.24

cond.false.20:                                    ; preds = %cond.end
  %16 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect21 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %16, i32 0, i32 10
  %q22 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect21, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q22, i32 0, i32 0
  %17 = load i32, i32* %x23, align 4, !tbaa !38
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.20, %cond.true.16
  %cond25 = phi i32 [ %15, %cond.true.16 ], [ %17, %cond.false.20 ]
  store i32 %cond25, i32* %x1, align 4, !tbaa !1
  %18 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect26 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %19, i32 0, i32 10
  %p27 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect26, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p27, i32 0, i32 1
  %20 = load i32, i32* %y, align 4, !tbaa !39
  %21 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect28 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %21, i32 0, i32 10
  %p29 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect28, i32 0, i32 0
  %y30 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p29, i32 0, i32 1
  %22 = load i32, i32* %y30, align 4, !tbaa !39
  %cmp31 = icmp sgt i32 %20, %22
  br i1 %cmp31, label %cond.true.32, label %cond.false.36

cond.true.32:                                     ; preds = %cond.end.24
  %23 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect33 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %23, i32 0, i32 10
  %p34 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect33, i32 0, i32 0
  %y35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p34, i32 0, i32 1
  %24 = load i32, i32* %y35, align 4, !tbaa !39
  br label %cond.end.40

cond.false.36:                                    ; preds = %cond.end.24
  %25 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect37 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %25, i32 0, i32 10
  %p38 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect37, i32 0, i32 0
  %y39 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p38, i32 0, i32 1
  %26 = load i32, i32* %y39, align 4, !tbaa !39
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.36, %cond.true.32
  %cond41 = phi i32 [ %24, %cond.true.32 ], [ %26, %cond.false.36 ]
  store i32 %cond41, i32* %y0, align 4, !tbaa !1
  %27 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect42 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %28, i32 0, i32 10
  %q43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect42, i32 0, i32 1
  %y44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q43, i32 0, i32 1
  %29 = load i32, i32* %y44, align 4, !tbaa !40
  %30 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect45 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %30, i32 0, i32 10
  %q46 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect45, i32 0, i32 1
  %y47 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q46, i32 0, i32 1
  %31 = load i32, i32* %y47, align 4, !tbaa !40
  %cmp48 = icmp slt i32 %29, %31
  br i1 %cmp48, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.end.40
  %32 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect50 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %32, i32 0, i32 10
  %q51 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect50, i32 0, i32 1
  %y52 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q51, i32 0, i32 1
  %33 = load i32, i32* %y52, align 4, !tbaa !40
  br label %cond.end.57

cond.false.53:                                    ; preds = %cond.end.40
  %34 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect54 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %34, i32 0, i32 10
  %q55 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect54, i32 0, i32 1
  %y56 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q55, i32 0, i32 1
  %35 = load i32, i32* %y56, align 4, !tbaa !40
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.53, %cond.true.49
  %cond58 = phi i32 [ %33, %cond.true.49 ], [ %35, %cond.false.53 ]
  store i32 %cond58, i32* %y1, align 4, !tbaa !1
  %36 = load i32, i32* %x0, align 4, !tbaa !1
  %37 = load i32, i32* %x1, align 4, !tbaa !1
  %cmp59 = icmp slt i32 %36, %37
  br i1 %cmp59, label %land.lhs.true, label %if.end.175

land.lhs.true:                                    ; preds = %cond.end.57
  %38 = load i32, i32* %y0, align 4, !tbaa !1
  %39 = load i32, i32* %y1, align 4, !tbaa !1
  %cmp60 = icmp slt i32 %38, %39
  br i1 %cmp60, label %if.then, label %if.end.175

if.then:                                          ; preds = %land.lhs.true
  %40 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %x1, align 4, !tbaa !1
  %42 = load i32, i32* %x0, align 4, !tbaa !1
  %sub = sub nsw i32 %41, %42
  store i32 %sub, i32* %width, align 4, !tbaa !1
  %43 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %y1, align 4, !tbaa !1
  %45 = load i32, i32* %y0, align 4, !tbaa !1
  %sub61 = sub nsw i32 %44, %45
  store i32 %sub61, i32* %height, align 4, !tbaa !1
  %46 = bitcast i8** %buf_plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = bitcast i8** %tos_plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %48) #1
  %49 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %50) #1
  %51 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.start(i64 36, i8* %51) #1
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 1, i32* %black_point_comp, align 4, !tbaa !41
  %graphics_type_tag = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 2, i32* %graphics_type_tag, align 4, !tbaa !43
  %override_icc = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 5
  store i32 0, i32* %override_icc, align 4, !tbaa !44
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 2
  store i32 8, i32* %preserve_black, align 4, !tbaa !45
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 0, i32* %rendering_intent, align 4, !tbaa !46
  %cmm = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 4
  store i32 0, i32* %cmm, align 4, !tbaa !47
  %52 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !7
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %54 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %tos_profile.addr, align 8, !tbaa !7
  %55 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %group_profile.addr, align 8, !tbaa !7
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !7
  %call = call %struct.gsicc_link_s* @gsicc_get_link_profile(%struct.gs_imager_state_s* %52, %struct.gx_device_s* %53, %struct.cmm_profile_s* %54, %struct.cmm_profile_s* %55, %struct.gsicc_rendering_param_s* %rendering_params, %struct.gs_memory_s* %56, i32 0) #5
  store %struct.gsicc_link_s* %call, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !7
  %57 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !7
  %cmp62 = icmp eq %struct.gsicc_link_s* %57, null
  br i1 %cmp62, label %if.then.63, label %if.end

if.then.63:                                       ; preds = %if.then
  %call64 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.pdf14_preserve_backdrop_cm, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 212, i32 0, i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 %call64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %58 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !7
  %is_identity = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %58, i32 0, i32 10
  %59 = load i32, i32* %is_identity, align 4, !tbaa !48
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %if.end
  %60 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %61 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %62 = load i32, i32* %knockout_buff.addr, align 4, !tbaa !1
  call void @pdf14_preserve_backdrop(%struct.pdf14_buf_s* %60, %struct.pdf14_buf_s* %61, i32 %62) #5
  %63 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !7
  call void @gsicc_release_link(%struct.gsicc_link_s* %63) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  %64 = load i32, i32* %knockout_buff.addr, align 4, !tbaa !1
  %tobool66 = icmp ne i32 %64, 0
  br i1 %tobool66, label %if.then.67, label %if.else.99

if.then.67:                                       ; preds = %if.else
  %65 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %backdrop = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %65, i32 0, i32 1
  %66 = load i8*, i8** %backdrop, align 8, !tbaa !52
  %67 = load i32, i32* %x0, align 4, !tbaa !1
  %idx.ext = sext i32 %67 to i64
  %add.ptr = getelementptr inbounds i8, i8* %66, i64 %idx.ext
  %68 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect68 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %68, i32 0, i32 10
  %p69 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect68, i32 0, i32 0
  %x70 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p69, i32 0, i32 0
  %69 = load i32, i32* %x70, align 4, !tbaa !34
  %idx.ext71 = sext i32 %69 to i64
  %idx.neg = sub i64 0, %idx.ext71
  %add.ptr72 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %70 = load i32, i32* %y0, align 4, !tbaa !1
  %71 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect73 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %71, i32 0, i32 10
  %p74 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect73, i32 0, i32 0
  %y75 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p74, i32 0, i32 1
  %72 = load i32, i32* %y75, align 4, !tbaa !39
  %sub76 = sub nsw i32 %70, %72
  %73 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rowstride = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %73, i32 0, i32 11
  %74 = load i32, i32* %rowstride, align 4, !tbaa !53
  %mul = mul nsw i32 %sub76, %74
  %idx.ext77 = sext i32 %mul to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %add.ptr72, i64 %idx.ext77
  store i8* %add.ptr78, i8** %buf_plane, align 8, !tbaa !7
  %75 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %backdrop79 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %75, i32 0, i32 1
  %76 = load i8*, i8** %backdrop79, align 8, !tbaa !52
  %77 = load i32, i32* %x0, align 4, !tbaa !1
  %idx.ext80 = sext i32 %77 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %76, i64 %idx.ext80
  %78 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect82 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %78, i32 0, i32 10
  %p83 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect82, i32 0, i32 0
  %x84 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p83, i32 0, i32 0
  %79 = load i32, i32* %x84, align 4, !tbaa !34
  %idx.ext85 = sext i32 %79 to i64
  %idx.neg86 = sub i64 0, %idx.ext85
  %add.ptr87 = getelementptr inbounds i8, i8* %add.ptr81, i64 %idx.neg86
  %80 = load i32, i32* %y0, align 4, !tbaa !1
  %81 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect88 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %81, i32 0, i32 10
  %p89 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect88, i32 0, i32 0
  %y90 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p89, i32 0, i32 1
  %82 = load i32, i32* %y90, align 4, !tbaa !39
  %sub91 = sub nsw i32 %80, %82
  %83 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rowstride92 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %83, i32 0, i32 11
  %84 = load i32, i32* %rowstride92, align 4, !tbaa !53
  %mul93 = mul nsw i32 %sub91, %84
  %idx.ext94 = sext i32 %mul93 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %add.ptr87, i64 %idx.ext94
  store i8* %add.ptr95, i8** %tos_plane, align 8, !tbaa !7
  %85 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %backdrop96 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %85, i32 0, i32 1
  %86 = load i8*, i8** %backdrop96, align 8, !tbaa !52
  %87 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %n_chan = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %87, i32 0, i32 13
  %88 = load i32, i32* %n_chan, align 4, !tbaa !54
  %89 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %planestride = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %89, i32 0, i32 12
  %90 = load i32, i32* %planestride, align 4, !tbaa !55
  %mul97 = mul nsw i32 %88, %90
  %conv = sext i32 %mul97 to i64
  %call98 = call i8* @memset(i8* %86, i32 0, i64 %conv) #6
  br label %if.end.138

if.else.99:                                       ; preds = %if.else
  %91 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %data = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %91, i32 0, i32 15
  %92 = load i8*, i8** %data, align 8, !tbaa !56
  %93 = load i32, i32* %x0, align 4, !tbaa !1
  %idx.ext100 = sext i32 %93 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %92, i64 %idx.ext100
  %94 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect102 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %94, i32 0, i32 10
  %p103 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect102, i32 0, i32 0
  %x104 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p103, i32 0, i32 0
  %95 = load i32, i32* %x104, align 4, !tbaa !34
  %idx.ext105 = sext i32 %95 to i64
  %idx.neg106 = sub i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr101, i64 %idx.neg106
  %96 = load i32, i32* %y0, align 4, !tbaa !1
  %97 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect108 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %97, i32 0, i32 10
  %p109 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect108, i32 0, i32 0
  %y110 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p109, i32 0, i32 1
  %98 = load i32, i32* %y110, align 4, !tbaa !39
  %sub111 = sub nsw i32 %96, %98
  %99 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rowstride112 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %99, i32 0, i32 11
  %100 = load i32, i32* %rowstride112, align 4, !tbaa !53
  %mul113 = mul nsw i32 %sub111, %100
  %idx.ext114 = sext i32 %mul113 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %add.ptr107, i64 %idx.ext114
  store i8* %add.ptr115, i8** %buf_plane, align 8, !tbaa !7
  %101 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %data116 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %101, i32 0, i32 15
  %102 = load i8*, i8** %data116, align 8, !tbaa !56
  %103 = load i32, i32* %x0, align 4, !tbaa !1
  %idx.ext117 = sext i32 %103 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %102, i64 %idx.ext117
  %104 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect119 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %104, i32 0, i32 10
  %p120 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect119, i32 0, i32 0
  %x121 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p120, i32 0, i32 0
  %105 = load i32, i32* %x121, align 4, !tbaa !34
  %idx.ext122 = sext i32 %105 to i64
  %idx.neg123 = sub i64 0, %idx.ext122
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr118, i64 %idx.neg123
  %106 = load i32, i32* %y0, align 4, !tbaa !1
  %107 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect125 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %107, i32 0, i32 10
  %p126 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect125, i32 0, i32 0
  %y127 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p126, i32 0, i32 1
  %108 = load i32, i32* %y127, align 4, !tbaa !39
  %sub128 = sub nsw i32 %106, %108
  %109 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rowstride129 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %109, i32 0, i32 11
  %110 = load i32, i32* %rowstride129, align 4, !tbaa !53
  %mul130 = mul nsw i32 %sub128, %110
  %idx.ext131 = sext i32 %mul130 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %add.ptr124, i64 %idx.ext131
  store i8* %add.ptr132, i8** %tos_plane, align 8, !tbaa !7
  %111 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %data133 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %111, i32 0, i32 15
  %112 = load i8*, i8** %data133, align 8, !tbaa !56
  %113 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %n_planes = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %113, i32 0, i32 14
  %114 = load i32, i32* %n_planes, align 4, !tbaa !57
  %115 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %planestride134 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %115, i32 0, i32 12
  %116 = load i32, i32* %planestride134, align 4, !tbaa !55
  %mul135 = mul nsw i32 %114, %116
  %conv136 = sext i32 %mul135 to i64
  %call137 = call i8* @memset(i8* %112, i32 0, i64 %conv136) #6
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.99, %if.then.67
  %117 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %tos_profile.addr, align 8, !tbaa !7
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %117, i32 0, i32 0
  %118 = load i8, i8* %num_comps, align 1, !tbaa !58
  %119 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %planestride139 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %119, i32 0, i32 12
  %120 = load i32, i32* %planestride139, align 4, !tbaa !55
  %121 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rowstride140 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %121, i32 0, i32 11
  %122 = load i32, i32* %rowstride140, align 4, !tbaa !53
  %123 = load i32, i32* %height, align 4, !tbaa !1
  %124 = load i32, i32* %width, align 4, !tbaa !1
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %input_buff_desc, i8 zeroext %118, i8 zeroext 1, i32 0, i32 0, i32 1, i32 %120, i32 %122, i32 %123, i32 %124) #5
  %125 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %group_profile.addr, align 8, !tbaa !7
  %num_comps141 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %125, i32 0, i32 0
  %126 = load i8, i8* %num_comps141, align 1, !tbaa !58
  %127 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %planestride142 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %127, i32 0, i32 12
  %128 = load i32, i32* %planestride142, align 4, !tbaa !55
  %129 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rowstride143 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %129, i32 0, i32 11
  %130 = load i32, i32* %rowstride143, align 4, !tbaa !53
  %131 = load i32, i32* %height, align 4, !tbaa !1
  %132 = load i32, i32* %width, align 4, !tbaa !1
  call void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s* %output_buff_desc, i8 zeroext %126, i8 zeroext 1, i32 0, i32 0, i32 1, i32 %128, i32 %130, i32 %131, i32 %132) #5
  %133 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gsicc_link_s, %struct.gsicc_link_s* %133, i32 0, i32 1
  %map_buffer = getelementptr inbounds %struct.gscms_procs_s, %struct.gscms_procs_s* %procs, i32 0, i32 0
  %134 = load void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)** %map_buffer, align 8, !tbaa !61
  %135 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %136 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !7
  %137 = load i8*, i8** %tos_plane, align 8, !tbaa !7
  %138 = load i8*, i8** %buf_plane, align 8, !tbaa !7
  call void %134(%struct.gx_device_s* %135, %struct.gsicc_link_s* %136, %struct.gsicc_bufferdesc_s* %input_buff_desc, %struct.gsicc_bufferdesc_s* %output_buff_desc, i8* %137, i8* %138) #5
  %139 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !7
  call void @gsicc_release_link(%struct.gsicc_link_s* %139) #5
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.138
  %140 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %planestride145 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %140, i32 0, i32 12
  %141 = load i32, i32* %planestride145, align 4, !tbaa !55
  %142 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %n_chan146 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %142, i32 0, i32 13
  %143 = load i32, i32* %n_chan146, align 4, !tbaa !54
  %sub147 = sub nsw i32 %143, 1
  %mul148 = mul nsw i32 %141, %sub147
  %144 = load i8*, i8** %buf_plane, align 8, !tbaa !7
  %idx.ext149 = sext i32 %mul148 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %144, i64 %idx.ext149
  store i8* %add.ptr150, i8** %buf_plane, align 8, !tbaa !7
  %145 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %planestride151 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %145, i32 0, i32 12
  %146 = load i32, i32* %planestride151, align 4, !tbaa !55
  %147 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %n_chan152 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %147, i32 0, i32 13
  %148 = load i32, i32* %n_chan152, align 4, !tbaa !54
  %sub153 = sub nsw i32 %148, 1
  %mul154 = mul nsw i32 %146, %sub153
  %149 = load i8*, i8** %tos_plane, align 8, !tbaa !7
  %idx.ext155 = sext i32 %mul154 to i64
  %add.ptr156 = getelementptr inbounds i8, i8* %149, i64 %idx.ext155
  store i8* %add.ptr156, i8** %tos_plane, align 8, !tbaa !7
  %150 = load i8*, i8** %buf_plane, align 8, !tbaa !7
  %151 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rowstride157 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %151, i32 0, i32 11
  %152 = load i32, i32* %rowstride157, align 4, !tbaa !53
  %153 = load i8*, i8** %tos_plane, align 8, !tbaa !7
  %154 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rowstride158 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %154, i32 0, i32 11
  %155 = load i32, i32* %rowstride158, align 4, !tbaa !53
  %156 = load i32, i32* %width, align 4, !tbaa !1
  %157 = load i32, i32* %height, align 4, !tbaa !1
  call void @copy_plane_part(i8* %150, i32 %152, i8* %153, i32 %155, i32 %156, i32 %157) #5
  %158 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %planestride159 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %158, i32 0, i32 12
  %159 = load i32, i32* %planestride159, align 4, !tbaa !55
  %160 = load i8*, i8** %buf_plane, align 8, !tbaa !7
  %idx.ext160 = sext i32 %159 to i64
  %add.ptr161 = getelementptr inbounds i8, i8* %160, i64 %idx.ext160
  store i8* %add.ptr161, i8** %buf_plane, align 8, !tbaa !7
  %161 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %planestride162 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %161, i32 0, i32 12
  %162 = load i32, i32* %planestride162, align 4, !tbaa !55
  %163 = load i8*, i8** %tos_plane, align 8, !tbaa !7
  %idx.ext163 = sext i32 %162 to i64
  %add.ptr164 = getelementptr inbounds i8, i8* %163, i64 %idx.ext163
  store i8* %add.ptr164, i8** %tos_plane, align 8, !tbaa !7
  %164 = load i32, i32* %knockout_buff.addr, align 4, !tbaa !1
  %tobool165 = icmp ne i32 %164, 0
  br i1 %tobool165, label %if.end.167, label %if.then.166

if.then.166:                                      ; preds = %if.end.144
  %165 = load i8*, i8** %buf_plane, align 8, !tbaa !7
  %166 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %167 = load i8*, i8** %tos_plane, align 8, !tbaa !7
  %168 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %169 = load i32, i32* %width, align 4, !tbaa !1
  %170 = load i32, i32* %height, align 4, !tbaa !1
  call void @copy_extra_planes(i8* %165, %struct.pdf14_buf_s* %166, i8* %167, %struct.pdf14_buf_s* %168, i32 %169, i32 %170) #5
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.end.144
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.167, %if.then.65, %if.then.63
  %171 = bitcast %struct.gsicc_bufferdesc_s* %output_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %171) #1
  %172 = bitcast %struct.gsicc_bufferdesc_s* %input_buff_desc to i8*
  call void @llvm.lifetime.end(i64 36, i8* %172) #1
  %173 = bitcast %struct.gsicc_link_s** %icc_link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %174) #1
  %175 = bitcast i8** %tos_plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast i8** %buf_plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.176 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.175

if.end.175:                                       ; preds = %cleanup.cont, %land.lhs.true, %cond.end.57
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.176

cleanup.176:                                      ; preds = %if.end.175, %cleanup
  %179 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = load i32, i32* %retval
  ret i32 %183
}

declare %struct.gsicc_link_s* @gsicc_get_link_profile(%struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_rendering_param_s*, %struct.gs_memory_s*, i32) #2

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @pdf14_preserve_backdrop(%struct.pdf14_buf_s* %buf, %struct.pdf14_buf_s* %tos, i32 %knockout_buff) #0 {
entry:
  %buf.addr = alloca %struct.pdf14_buf_s*, align 8
  %tos.addr = alloca %struct.pdf14_buf_s*, align 8
  %knockout_buff.addr = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %buf_plane = alloca i8*, align 8
  %tos_plane = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.pdf14_buf_s* %buf, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  store %struct.pdf14_buf_s* %tos, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  store i32 %knockout_buff, i32* %knockout_buff.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %1, i32 0, i32 10
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !34
  %3 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect1 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %3, i32 0, i32 10
  %p2 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect1, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p2, i32 0, i32 0
  %4 = load i32, i32* %x3, align 4, !tbaa !34
  %cmp = icmp sgt i32 %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect4 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %5, i32 0, i32 10
  %p5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect4, i32 0, i32 0
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p5, i32 0, i32 0
  %6 = load i32, i32* %x6, align 4, !tbaa !34
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect7 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %7, i32 0, i32 10
  %p8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect7, i32 0, i32 0
  %x9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p8, i32 0, i32 0
  %8 = load i32, i32* %x9, align 4, !tbaa !34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* %x0, align 4, !tbaa !1
  %9 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect10 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %10, i32 0, i32 10
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect10, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %11 = load i32, i32* %x11, align 4, !tbaa !38
  %12 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect12 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %12, i32 0, i32 10
  %q13 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect12, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q13, i32 0, i32 0
  %13 = load i32, i32* %x14, align 4, !tbaa !38
  %cmp15 = icmp slt i32 %11, %13
  br i1 %cmp15, label %cond.true.16, label %cond.false.20

cond.true.16:                                     ; preds = %cond.end
  %14 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect17 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %14, i32 0, i32 10
  %q18 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect17, i32 0, i32 1
  %x19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q18, i32 0, i32 0
  %15 = load i32, i32* %x19, align 4, !tbaa !38
  br label %cond.end.24

cond.false.20:                                    ; preds = %cond.end
  %16 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect21 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %16, i32 0, i32 10
  %q22 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect21, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q22, i32 0, i32 0
  %17 = load i32, i32* %x23, align 4, !tbaa !38
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.20, %cond.true.16
  %cond25 = phi i32 [ %15, %cond.true.16 ], [ %17, %cond.false.20 ]
  store i32 %cond25, i32* %x1, align 4, !tbaa !1
  %18 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect26 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %19, i32 0, i32 10
  %p27 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect26, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p27, i32 0, i32 1
  %20 = load i32, i32* %y, align 4, !tbaa !39
  %21 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect28 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %21, i32 0, i32 10
  %p29 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect28, i32 0, i32 0
  %y30 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p29, i32 0, i32 1
  %22 = load i32, i32* %y30, align 4, !tbaa !39
  %cmp31 = icmp sgt i32 %20, %22
  br i1 %cmp31, label %cond.true.32, label %cond.false.36

cond.true.32:                                     ; preds = %cond.end.24
  %23 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect33 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %23, i32 0, i32 10
  %p34 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect33, i32 0, i32 0
  %y35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p34, i32 0, i32 1
  %24 = load i32, i32* %y35, align 4, !tbaa !39
  br label %cond.end.40

cond.false.36:                                    ; preds = %cond.end.24
  %25 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect37 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %25, i32 0, i32 10
  %p38 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect37, i32 0, i32 0
  %y39 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p38, i32 0, i32 1
  %26 = load i32, i32* %y39, align 4, !tbaa !39
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.36, %cond.true.32
  %cond41 = phi i32 [ %24, %cond.true.32 ], [ %26, %cond.false.36 ]
  store i32 %cond41, i32* %y0, align 4, !tbaa !1
  %27 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect42 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %28, i32 0, i32 10
  %q43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect42, i32 0, i32 1
  %y44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q43, i32 0, i32 1
  %29 = load i32, i32* %y44, align 4, !tbaa !40
  %30 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect45 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %30, i32 0, i32 10
  %q46 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect45, i32 0, i32 1
  %y47 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q46, i32 0, i32 1
  %31 = load i32, i32* %y47, align 4, !tbaa !40
  %cmp48 = icmp slt i32 %29, %31
  br i1 %cmp48, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.end.40
  %32 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect50 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %32, i32 0, i32 10
  %q51 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect50, i32 0, i32 1
  %y52 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q51, i32 0, i32 1
  %33 = load i32, i32* %y52, align 4, !tbaa !40
  br label %cond.end.57

cond.false.53:                                    ; preds = %cond.end.40
  %34 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect54 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %34, i32 0, i32 10
  %q55 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect54, i32 0, i32 1
  %y56 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q55, i32 0, i32 1
  %35 = load i32, i32* %y56, align 4, !tbaa !40
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.53, %cond.true.49
  %cond58 = phi i32 [ %33, %cond.true.49 ], [ %35, %cond.false.53 ]
  store i32 %cond58, i32* %y1, align 4, !tbaa !1
  %36 = load i32, i32* %x0, align 4, !tbaa !1
  %37 = load i32, i32* %x1, align 4, !tbaa !1
  %cmp59 = icmp slt i32 %36, %37
  br i1 %cmp59, label %land.lhs.true, label %if.end.145

land.lhs.true:                                    ; preds = %cond.end.57
  %38 = load i32, i32* %y0, align 4, !tbaa !1
  %39 = load i32, i32* %y1, align 4, !tbaa !1
  %cmp60 = icmp slt i32 %38, %39
  br i1 %cmp60, label %if.then, label %if.end.145

if.then:                                          ; preds = %land.lhs.true
  %40 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %x1, align 4, !tbaa !1
  %42 = load i32, i32* %x0, align 4, !tbaa !1
  %sub = sub nsw i32 %41, %42
  store i32 %sub, i32* %width, align 4, !tbaa !1
  %43 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %y1, align 4, !tbaa !1
  %45 = load i32, i32* %y0, align 4, !tbaa !1
  %sub61 = sub nsw i32 %44, %45
  store i32 %sub61, i32* %height, align 4, !tbaa !1
  %46 = bitcast i8** %buf_plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = bitcast i8** %tos_plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %knockout_buff.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.then
  %50 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %backdrop = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %50, i32 0, i32 1
  %51 = load i8*, i8** %backdrop, align 8, !tbaa !52
  %52 = load i32, i32* %x0, align 4, !tbaa !1
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %idx.ext
  %53 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect63 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %53, i32 0, i32 10
  %p64 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect63, i32 0, i32 0
  %x65 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p64, i32 0, i32 0
  %54 = load i32, i32* %x65, align 4, !tbaa !34
  %idx.ext66 = sext i32 %54 to i64
  %idx.neg = sub i64 0, %idx.ext66
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %55 = load i32, i32* %y0, align 4, !tbaa !1
  %56 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect68 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %56, i32 0, i32 10
  %p69 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect68, i32 0, i32 0
  %y70 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p69, i32 0, i32 1
  %57 = load i32, i32* %y70, align 4, !tbaa !39
  %sub71 = sub nsw i32 %55, %57
  %58 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rowstride = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %58, i32 0, i32 11
  %59 = load i32, i32* %rowstride, align 4, !tbaa !53
  %mul = mul nsw i32 %sub71, %59
  %idx.ext72 = sext i32 %mul to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr67, i64 %idx.ext72
  store i8* %add.ptr73, i8** %buf_plane, align 8, !tbaa !7
  %60 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %backdrop74 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %60, i32 0, i32 1
  %61 = load i8*, i8** %backdrop74, align 8, !tbaa !52
  %62 = load i32, i32* %x0, align 4, !tbaa !1
  %idx.ext75 = sext i32 %62 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %61, i64 %idx.ext75
  %63 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect77 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %63, i32 0, i32 10
  %p78 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect77, i32 0, i32 0
  %x79 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p78, i32 0, i32 0
  %64 = load i32, i32* %x79, align 4, !tbaa !34
  %idx.ext80 = sext i32 %64 to i64
  %idx.neg81 = sub i64 0, %idx.ext80
  %add.ptr82 = getelementptr inbounds i8, i8* %add.ptr76, i64 %idx.neg81
  %65 = load i32, i32* %y0, align 4, !tbaa !1
  %66 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect83 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %66, i32 0, i32 10
  %p84 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect83, i32 0, i32 0
  %y85 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p84, i32 0, i32 1
  %67 = load i32, i32* %y85, align 4, !tbaa !39
  %sub86 = sub nsw i32 %65, %67
  %68 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rowstride87 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %68, i32 0, i32 11
  %69 = load i32, i32* %rowstride87, align 4, !tbaa !53
  %mul88 = mul nsw i32 %sub86, %69
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %add.ptr82, i64 %idx.ext89
  store i8* %add.ptr90, i8** %tos_plane, align 8, !tbaa !7
  %70 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %backdrop91 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %70, i32 0, i32 1
  %71 = load i8*, i8** %backdrop91, align 8, !tbaa !52
  %72 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %n_chan = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %72, i32 0, i32 13
  %73 = load i32, i32* %n_chan, align 4, !tbaa !54
  %74 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %planestride = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %74, i32 0, i32 12
  %75 = load i32, i32* %planestride, align 4, !tbaa !55
  %mul92 = mul nsw i32 %73, %75
  %conv = sext i32 %mul92 to i64
  %call = call i8* @memset(i8* %71, i32 0, i64 %conv) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  %76 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %data = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %76, i32 0, i32 15
  %77 = load i8*, i8** %data, align 8, !tbaa !56
  %78 = load i32, i32* %x0, align 4, !tbaa !1
  %idx.ext93 = sext i32 %78 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %77, i64 %idx.ext93
  %79 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect95 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %79, i32 0, i32 10
  %p96 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect95, i32 0, i32 0
  %x97 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p96, i32 0, i32 0
  %80 = load i32, i32* %x97, align 4, !tbaa !34
  %idx.ext98 = sext i32 %80 to i64
  %idx.neg99 = sub i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr94, i64 %idx.neg99
  %81 = load i32, i32* %y0, align 4, !tbaa !1
  %82 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rect101 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %82, i32 0, i32 10
  %p102 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect101, i32 0, i32 0
  %y103 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p102, i32 0, i32 1
  %83 = load i32, i32* %y103, align 4, !tbaa !39
  %sub104 = sub nsw i32 %81, %83
  %84 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rowstride105 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %84, i32 0, i32 11
  %85 = load i32, i32* %rowstride105, align 4, !tbaa !53
  %mul106 = mul nsw i32 %sub104, %85
  %idx.ext107 = sext i32 %mul106 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %add.ptr100, i64 %idx.ext107
  store i8* %add.ptr108, i8** %buf_plane, align 8, !tbaa !7
  %86 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %data109 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %86, i32 0, i32 15
  %87 = load i8*, i8** %data109, align 8, !tbaa !56
  %88 = load i32, i32* %x0, align 4, !tbaa !1
  %idx.ext110 = sext i32 %88 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %87, i64 %idx.ext110
  %89 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect112 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %89, i32 0, i32 10
  %p113 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect112, i32 0, i32 0
  %x114 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p113, i32 0, i32 0
  %90 = load i32, i32* %x114, align 4, !tbaa !34
  %idx.ext115 = sext i32 %90 to i64
  %idx.neg116 = sub i64 0, %idx.ext115
  %add.ptr117 = getelementptr inbounds i8, i8* %add.ptr111, i64 %idx.neg116
  %91 = load i32, i32* %y0, align 4, !tbaa !1
  %92 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect118 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %92, i32 0, i32 10
  %p119 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect118, i32 0, i32 0
  %y120 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p119, i32 0, i32 1
  %93 = load i32, i32* %y120, align 4, !tbaa !39
  %sub121 = sub nsw i32 %91, %93
  %94 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rowstride122 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %94, i32 0, i32 11
  %95 = load i32, i32* %rowstride122, align 4, !tbaa !53
  %mul123 = mul nsw i32 %sub121, %95
  %idx.ext124 = sext i32 %mul123 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %add.ptr117, i64 %idx.ext124
  store i8* %add.ptr125, i8** %tos_plane, align 8, !tbaa !7
  %96 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %data126 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %96, i32 0, i32 15
  %97 = load i8*, i8** %data126, align 8, !tbaa !56
  %98 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %n_planes = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %98, i32 0, i32 14
  %99 = load i32, i32* %n_planes, align 4, !tbaa !57
  %100 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %planestride127 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %100, i32 0, i32 12
  %101 = load i32, i32* %planestride127, align 4, !tbaa !55
  %mul128 = mul nsw i32 %99, %101
  %conv129 = sext i32 %mul128 to i64
  %call130 = call i8* @memset(i8* %97, i32 0, i64 %conv129) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.62
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %103 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %n_chan131 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %103, i32 0, i32 13
  %104 = load i32, i32* %n_chan131, align 4, !tbaa !54
  %cmp132 = icmp slt i32 %102, %104
  br i1 %cmp132, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %105 = load i8*, i8** %buf_plane, align 8, !tbaa !7
  %106 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %rowstride134 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %106, i32 0, i32 11
  %107 = load i32, i32* %rowstride134, align 4, !tbaa !53
  %108 = load i8*, i8** %tos_plane, align 8, !tbaa !7
  %109 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rowstride135 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %109, i32 0, i32 11
  %110 = load i32, i32* %rowstride135, align 4, !tbaa !53
  %111 = load i32, i32* %width, align 4, !tbaa !1
  %112 = load i32, i32* %height, align 4, !tbaa !1
  call void @copy_plane_part(i8* %105, i32 %107, i8* %108, i32 %110, i32 %111, i32 %112) #5
  %113 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %planestride136 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %113, i32 0, i32 12
  %114 = load i32, i32* %planestride136, align 4, !tbaa !55
  %115 = load i8*, i8** %buf_plane, align 8, !tbaa !7
  %idx.ext137 = sext i32 %114 to i64
  %add.ptr138 = getelementptr inbounds i8, i8* %115, i64 %idx.ext137
  store i8* %add.ptr138, i8** %buf_plane, align 8, !tbaa !7
  %116 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %planestride139 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %116, i32 0, i32 12
  %117 = load i32, i32* %planestride139, align 4, !tbaa !55
  %118 = load i8*, i8** %tos_plane, align 8, !tbaa !7
  %idx.ext140 = sext i32 %117 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %118, i64 %idx.ext140
  store i8* %add.ptr141, i8** %tos_plane, align 8, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %120 = load i32, i32* %knockout_buff.addr, align 4, !tbaa !1
  %tobool142 = icmp ne i32 %120, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %for.end
  %121 = load i8*, i8** %buf_plane, align 8, !tbaa !7
  %122 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %buf.addr, align 8, !tbaa !7
  %123 = load i8*, i8** %tos_plane, align 8, !tbaa !7
  %124 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %125 = load i32, i32* %width, align 4, !tbaa !1
  %126 = load i32, i32* %height, align 4, !tbaa !1
  call void @copy_extra_planes(i8* %121, %struct.pdf14_buf_s* %122, i8* %123, %struct.pdf14_buf_s* %124, i32 %125, i32 %126) #5
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %for.end
  %127 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i8** %tos_plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i8** %buf_plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %land.lhs.true, %cond.end.57
  %132 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  ret void
}

declare void @gsicc_release_link(%struct.gsicc_link_s*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare void @gsicc_init_buffer(%struct.gsicc_bufferdesc_s*, i8 zeroext, i8 zeroext, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @copy_plane_part(i8* %des_ptr, i32 %des_rowstride, i8* %src_ptr, i32 %src_rowstride, i32 %width, i32 %height) #0 {
entry:
  %des_ptr.addr = alloca i8*, align 8
  %des_rowstride.addr = alloca i32, align 4
  %src_ptr.addr = alloca i8*, align 8
  %src_rowstride.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %des_ptr, i8** %des_ptr.addr, align 8, !tbaa !7
  store i32 %des_rowstride, i32* %des_rowstride.addr, align 4, !tbaa !1
  store i8* %src_ptr, i8** %src_ptr.addr, align 8, !tbaa !7
  store i32 %src_rowstride, i32* %src_rowstride.addr, align 4, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !1
  %0 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %y, align 4, !tbaa !1
  %2 = load i32, i32* %height.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %des_ptr.addr, align 8, !tbaa !7
  %4 = load i8*, i8** %src_ptr.addr, align 8, !tbaa !7
  %5 = load i32, i32* %width.addr, align 4, !tbaa !1
  %conv = sext i32 %5 to i64
  %call = call i8* @memcpy(i8* %3, i8* %4, i64 %conv) #6
  %6 = load i32, i32* %des_rowstride.addr, align 4, !tbaa !1
  %7 = load i8*, i8** %des_ptr.addr, align 8, !tbaa !7
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %des_ptr.addr, align 8, !tbaa !7
  %8 = load i32, i32* %src_rowstride.addr, align 4, !tbaa !1
  %9 = load i8*, i8** %src_ptr.addr, align 8, !tbaa !7
  %idx.ext1 = sext i32 %8 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %9, i64 %idx.ext1
  store i8* %add.ptr2, i8** %src_ptr.addr, align 8, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %y, align 4, !tbaa !1
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_extra_planes(i8* %des_buf, %struct.pdf14_buf_s* %des_info, i8* %src_buf, %struct.pdf14_buf_s* %src_info, i32 %width, i32 %height) #0 {
entry:
  %des_buf.addr = alloca i8*, align 8
  %des_info.addr = alloca %struct.pdf14_buf_s*, align 8
  %src_buf.addr = alloca i8*, align 8
  %src_info.addr = alloca %struct.pdf14_buf_s*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i8* %des_buf, i8** %des_buf.addr, align 8, !tbaa !7
  store %struct.pdf14_buf_s* %des_info, %struct.pdf14_buf_s** %des_info.addr, align 8, !tbaa !7
  store i8* %src_buf, i8** %src_buf.addr, align 8, !tbaa !7
  store %struct.pdf14_buf_s* %src_info, %struct.pdf14_buf_s** %src_info.addr, align 8, !tbaa !7
  store i32 %width, i32* %width.addr, align 4, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !1
  %0 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %des_info.addr, align 8, !tbaa !7
  %planestride = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %0, i32 0, i32 12
  %1 = load i32, i32* %planestride, align 4, !tbaa !55
  %2 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %des_info.addr, align 8, !tbaa !7
  %has_shape = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %2, i32 0, i32 8
  %3 = load i32, i32* %has_shape, align 4, !tbaa !62
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %4 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %des_info.addr, align 8, !tbaa !7
  %has_alpha_g = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %4, i32 0, i32 7
  %5 = load i32, i32* %has_alpha_g, align 4, !tbaa !63
  %tobool1 = icmp ne i32 %5, 0
  %cond2 = select i1 %tobool1, i32 1, i32 0
  %add = add nsw i32 %cond, %cond2
  %mul = mul nsw i32 %1, %add
  %6 = load i8*, i8** %des_buf.addr, align 8, !tbaa !7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %des_buf.addr, align 8, !tbaa !7
  %7 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %src_info.addr, align 8, !tbaa !7
  %planestride3 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %7, i32 0, i32 12
  %8 = load i32, i32* %planestride3, align 4, !tbaa !55
  %9 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %src_info.addr, align 8, !tbaa !7
  %has_shape4 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %9, i32 0, i32 8
  %10 = load i32, i32* %has_shape4, align 4, !tbaa !62
  %tobool5 = icmp ne i32 %10, 0
  %cond6 = select i1 %tobool5, i32 1, i32 0
  %11 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %src_info.addr, align 8, !tbaa !7
  %has_alpha_g7 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %11, i32 0, i32 7
  %12 = load i32, i32* %has_alpha_g7, align 4, !tbaa !63
  %tobool8 = icmp ne i32 %12, 0
  %cond9 = select i1 %tobool8, i32 1, i32 0
  %add10 = add nsw i32 %cond6, %cond9
  %mul11 = mul nsw i32 %8, %add10
  %13 = load i8*, i8** %src_buf.addr, align 8, !tbaa !7
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %13, i64 %idx.ext12
  store i8* %add.ptr13, i8** %src_buf.addr, align 8, !tbaa !7
  %14 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %des_info.addr, align 8, !tbaa !7
  %has_tags = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %14, i32 0, i32 9
  %15 = load i32, i32* %has_tags, align 4, !tbaa !64
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %16 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %src_info.addr, align 8, !tbaa !7
  %has_tags15 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %16, i32 0, i32 9
  %17 = load i32, i32* %has_tags15, align 4, !tbaa !64
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %18 = load i8*, i8** %des_buf.addr, align 8, !tbaa !7
  %19 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %des_info.addr, align 8, !tbaa !7
  %rowstride = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %19, i32 0, i32 11
  %20 = load i32, i32* %rowstride, align 4, !tbaa !53
  %21 = load i8*, i8** %src_buf.addr, align 8, !tbaa !7
  %22 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %src_info.addr, align 8, !tbaa !7
  %rowstride18 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %22, i32 0, i32 11
  %23 = load i32, i32* %rowstride18, align 4, !tbaa !53
  %24 = load i32, i32* %width.addr, align 4, !tbaa !1
  %25 = load i32, i32* %height.addr, align 4, !tbaa !1
  call void @copy_plane_part(i8* %18, i32 %20, i8* %21, i32 %23, i32 %24, i32 %25) #5
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf14_compose_group(%struct.pdf14_buf_s* %tos, %struct.pdf14_buf_s* %nos, %struct.pdf14_buf_s* %maskbuf, i32 %x0, i32 %x1, i32 %y0, i32 %y1, i32 %n_chan, i32 %additive, %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, i32 %overprint, i64 %drawn_comps, i32 %blendspot, %struct.gs_memory_s* %memory) #0 {
entry:
  %tos.addr = alloca %struct.pdf14_buf_s*, align 8
  %nos.addr = alloca %struct.pdf14_buf_s*, align 8
  %maskbuf.addr = alloca %struct.pdf14_buf_s*, align 8
  %x0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %n_chan.addr = alloca i32, align 4
  %additive.addr = alloca i32, align 4
  %pblend_procs.addr = alloca %struct.pdf14_nonseparable_blending_procs_s*, align 8
  %overprint.addr = alloca i32, align 4
  %drawn_comps.addr = alloca i64, align 8
  %blendspot.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %alpha = alloca i8, align 1
  %shape = alloca i8, align 1
  %blend_mode = alloca i32, align 4
  %tos_ptr = alloca i8*, align 8
  %nos_ptr = alloca i8*, align 8
  %mask_row_ptr = alloca i8*, align 8
  %mask_curr_ptr = alloca i8*, align 8
  %tos_planestride = alloca i32, align 4
  %nos_planestride = alloca i32, align 4
  %mask_planestride = alloca i32, align 4
  %mask_bg_alpha = alloca i8, align 1
  %width = alloca i32, align 4
  %x29 = alloca i32, align 4
  %y30 = alloca i32, align 4
  %i = alloca i32, align 4
  %tos_pixel = alloca [67 x i8], align 16
  %nos_pixel = alloca [67 x i8], align 16
  %back_drop = alloca [67 x i8], align 16
  %tos_isolated = alloca i32, align 4
  %nos_knockout = alloca i32, align 4
  %nos_alpha_g_ptr = alloca i8*, align 8
  %tos_shape_offset = alloca i32, align 4
  %tos_alpha_g_offset = alloca i32, align 4
  %tos_has_tag = alloca i32, align 4
  %tos_tag_offset = alloca i32, align 4
  %nos_shape_offset = alloca i32, align 4
  %nos_alpha_g_offset = alloca i32, align 4
  %nos_tag_offset = alloca i32, align 4
  %mask_tr_fn = alloca i8*, align 8
  %comps = alloca i64, align 8
  %has_mask = alloca i32, align 4
  %in_mask_rect_y = alloca i32, align 4
  %in_mask_rect = alloca i32, align 4
  %pix_alpha = alloca i8, align 1
  %has_backdrop = alloca i32, align 4
  %backdrop_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca i32, align 4
  %mask = alloca i8, align 1
  %tmp289 = alloca i32, align 4
  %nos_shape_ptr = alloca i8*, align 8
  %nos_tag_ptr = alloca i8*, align 8
  %tos_shape = alloca i8, align 1
  %tos_tag = alloca i8, align 1
  %tos_alpha_g = alloca i8, align 1
  %temp = alloca i32, align 4
  store %struct.pdf14_buf_s* %tos, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  store %struct.pdf14_buf_s* %nos, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  store %struct.pdf14_buf_s* %maskbuf, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !1
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !1
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !1
  store i32 %n_chan, i32* %n_chan.addr, align 4, !tbaa !1
  store i32 %additive, i32* %additive.addr, align 4, !tbaa !1
  store %struct.pdf14_nonseparable_blending_procs_s* %pblend_procs, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !7
  store i32 %overprint, i32* %overprint.addr, align 4, !tbaa !1
  store i64 %drawn_comps, i64* %drawn_comps.addr, align 8, !tbaa !5
  store i32 %blendspot, i32* %blendspot.addr, align 4, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %alpha) #1
  %0 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %alpha1 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %0, i32 0, i32 4
  %1 = load i8, i8* %alpha1, align 1, !tbaa !65
  store i8 %1, i8* %alpha, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %shape) #1
  %2 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %shape2 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %2, i32 0, i32 5
  %3 = load i8, i8* %shape2, align 1, !tbaa !66
  store i8 %3, i8* %shape, align 1, !tbaa !9
  %4 = bitcast i32* %blend_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %blend_mode3 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %5, i32 0, i32 6
  %6 = load i32, i32* %blend_mode3, align 4, !tbaa !67
  store i32 %6, i32* %blend_mode, align 4, !tbaa !9
  %7 = bitcast i8** %tos_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %data = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %8, i32 0, i32 15
  %9 = load i8*, i8** %data, align 8, !tbaa !56
  %10 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %11 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %11, i32 0, i32 10
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %12 = load i32, i32* %x, align 4, !tbaa !34
  %idx.ext4 = sext i32 %12 to i64
  %idx.neg = sub i64 0, %idx.ext4
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %13 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %14 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rect6 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %14, i32 0, i32 10
  %p7 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect6, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p7, i32 0, i32 1
  %15 = load i32, i32* %y, align 4, !tbaa !39
  %sub = sub nsw i32 %13, %15
  %16 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rowstride = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %16, i32 0, i32 11
  %17 = load i32, i32* %rowstride, align 4, !tbaa !53
  %mul = mul nsw i32 %sub, %17
  %idx.ext8 = sext i32 %mul to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr5, i64 %idx.ext8
  store i8* %add.ptr9, i8** %tos_ptr, align 8, !tbaa !7
  %18 = bitcast i8** %nos_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %data10 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %19, i32 0, i32 15
  %20 = load i8*, i8** %data10, align 8, !tbaa !56
  %21 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %idx.ext11 = sext i32 %21 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %20, i64 %idx.ext11
  %22 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %rect13 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %22, i32 0, i32 10
  %p14 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect13, i32 0, i32 0
  %x15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p14, i32 0, i32 0
  %23 = load i32, i32* %x15, align 4, !tbaa !34
  %idx.ext16 = sext i32 %23 to i64
  %idx.neg17 = sub i64 0, %idx.ext16
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr12, i64 %idx.neg17
  %24 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %25 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %rect19 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %25, i32 0, i32 10
  %p20 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect19, i32 0, i32 0
  %y21 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p20, i32 0, i32 1
  %26 = load i32, i32* %y21, align 4, !tbaa !39
  %sub22 = sub nsw i32 %24, %26
  %27 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %rowstride23 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %27, i32 0, i32 11
  %28 = load i32, i32* %rowstride23, align 4, !tbaa !53
  %mul24 = mul nsw i32 %sub22, %28
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr18, i64 %idx.ext25
  store i8* %add.ptr26, i8** %nos_ptr, align 8, !tbaa !7
  %29 = bitcast i8** %mask_row_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i8* null, i8** %mask_row_ptr, align 8, !tbaa !7
  %30 = bitcast i8** %mask_curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i8* null, i8** %mask_curr_ptr, align 8, !tbaa !7
  %31 = bitcast i32* %tos_planestride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %planestride = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %32, i32 0, i32 12
  %33 = load i32, i32* %planestride, align 4, !tbaa !55
  store i32 %33, i32* %tos_planestride, align 4, !tbaa !1
  %34 = bitcast i32* %nos_planestride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %planestride27 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %35, i32 0, i32 12
  %36 = load i32, i32* %planestride27, align 4, !tbaa !55
  store i32 %36, i32* %nos_planestride, align 4, !tbaa !1
  %37 = bitcast i32* %mask_planestride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 195948557, i32* %mask_planestride, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %mask_bg_alpha) #1
  store i8 0, i8* %mask_bg_alpha, align 1, !tbaa !9
  %38 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %x1.addr, align 4, !tbaa !1
  %40 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %sub28 = sub nsw i32 %39, %40
  store i32 %sub28, i32* %width, align 4, !tbaa !1
  %41 = bitcast i32* %x29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %y30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast [67 x i8]* %tos_pixel to i8*
  call void @llvm.lifetime.start(i64 67, i8* %44) #1
  %45 = bitcast [67 x i8]* %nos_pixel to i8*
  call void @llvm.lifetime.start(i64 67, i8* %45) #1
  %46 = bitcast [67 x i8]* %back_drop to i8*
  call void @llvm.lifetime.start(i64 67, i8* %46) #1
  %47 = bitcast i32* %tos_isolated to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %isolated = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %48, i32 0, i32 2
  %49 = load i32, i32* %isolated, align 4, !tbaa !68
  store i32 %49, i32* %tos_isolated, align 4, !tbaa !1
  %50 = bitcast i32* %nos_knockout to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %knockout = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %51, i32 0, i32 3
  %52 = load i32, i32* %knockout, align 4, !tbaa !69
  store i32 %52, i32* %nos_knockout, align 4, !tbaa !1
  %53 = bitcast i8** %nos_alpha_g_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = bitcast i32* %tos_shape_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %56 = load i32, i32* %tos_planestride, align 4, !tbaa !1
  %mul31 = mul nsw i32 %55, %56
  store i32 %mul31, i32* %tos_shape_offset, align 4, !tbaa !1
  %57 = bitcast i32* %tos_alpha_g_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load i32, i32* %tos_shape_offset, align 4, !tbaa !1
  %59 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %has_shape = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %59, i32 0, i32 8
  %60 = load i32, i32* %has_shape, align 4, !tbaa !62
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %61 = load i32, i32* %tos_planestride, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %61, %cond.true ], [ 0, %cond.false ]
  %add = add nsw i32 %58, %cond
  store i32 %add, i32* %tos_alpha_g_offset, align 4, !tbaa !1
  %62 = bitcast i32* %tos_has_tag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %has_tags = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %63, i32 0, i32 9
  %64 = load i32, i32* %has_tags, align 4, !tbaa !64
  store i32 %64, i32* %tos_has_tag, align 4, !tbaa !1
  %65 = bitcast i32* %tos_tag_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load i32, i32* %tos_planestride, align 4, !tbaa !1
  %67 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %n_planes = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %67, i32 0, i32 14
  %68 = load i32, i32* %n_planes, align 4, !tbaa !57
  %sub32 = sub nsw i32 %68, 1
  %mul33 = mul nsw i32 %66, %sub32
  store i32 %mul33, i32* %tos_tag_offset, align 4, !tbaa !1
  %69 = bitcast i32* %nos_shape_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %71 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul34 = mul nsw i32 %70, %71
  store i32 %mul34, i32* %nos_shape_offset, align 4, !tbaa !1
  %72 = bitcast i32* %nos_alpha_g_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = load i32, i32* %nos_shape_offset, align 4, !tbaa !1
  %74 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %has_shape35 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %74, i32 0, i32 8
  %75 = load i32, i32* %has_shape35, align 4, !tbaa !62
  %tobool36 = icmp ne i32 %75, 0
  br i1 %tobool36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end
  %76 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.end
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi i32 [ %76, %cond.true.37 ], [ 0, %cond.false.38 ]
  %add41 = add nsw i32 %73, %cond40
  store i32 %add41, i32* %nos_alpha_g_offset, align 4, !tbaa !1
  %77 = bitcast i32* %nos_tag_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %79 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %n_planes42 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %79, i32 0, i32 14
  %80 = load i32, i32* %n_planes42, align 4, !tbaa !57
  %sub43 = sub nsw i32 %80, 1
  %mul44 = mul nsw i32 %78, %sub43
  store i32 %mul44, i32* %nos_tag_offset, align 4, !tbaa !1
  %81 = bitcast i8** %mask_tr_fn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  store i8* null, i8** %mask_tr_fn, align 8, !tbaa !7
  %82 = bitcast i64* %comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = bitcast i32* %has_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  store i32 0, i32* %has_mask, align 4, !tbaa !1
  %84 = bitcast i32* %in_mask_rect_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  store i32 0, i32* %in_mask_rect_y, align 4, !tbaa !1
  %85 = bitcast i32* %in_mask_rect to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  store i32 0, i32* %in_mask_rect, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %pix_alpha) #1
  %86 = bitcast i32* %has_backdrop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  store i32 0, i32* %has_backdrop, align 4, !tbaa !1
  %87 = bitcast i8** %backdrop_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  store i8* null, i8** %backdrop_ptr, align 8, !tbaa !7
  %88 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %n_chan45 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %88, i32 0, i32 13
  %89 = load i32, i32* %n_chan45, align 4, !tbaa !54
  %cmp = icmp eq i32 %89, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.39
  %90 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %n_chan46 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %90, i32 0, i32 13
  %91 = load i32, i32* %n_chan46, align 4, !tbaa !54
  %cmp47 = icmp eq i32 %91, 0
  br i1 %cmp47, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end.39
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %92 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %dirty = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %92, i32 0, i32 17
  %p48 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty, i32 0, i32 0
  %x49 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p48, i32 0, i32 0
  %93 = load i32, i32* %x49, align 4, !tbaa !70
  %94 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %dirty50 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %94, i32 0, i32 17
  %p51 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty50, i32 0, i32 0
  %x52 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p51, i32 0, i32 0
  %95 = load i32, i32* %x52, align 4, !tbaa !70
  %cmp53 = icmp slt i32 %93, %95
  br i1 %cmp53, label %if.then.54, label %if.end.61

if.then.54:                                       ; preds = %do.body
  %96 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %dirty55 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %96, i32 0, i32 17
  %p56 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty55, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p56, i32 0, i32 0
  %97 = load i32, i32* %x57, align 4, !tbaa !70
  %98 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %dirty58 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %98, i32 0, i32 17
  %p59 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty58, i32 0, i32 0
  %x60 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p59, i32 0, i32 0
  store i32 %97, i32* %x60, align 4, !tbaa !70
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.54, %do.body
  %99 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %dirty62 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %99, i32 0, i32 17
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty62, i32 0, i32 1
  %x63 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %100 = load i32, i32* %x63, align 4, !tbaa !71
  %101 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %dirty64 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %101, i32 0, i32 17
  %q65 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty64, i32 0, i32 1
  %x66 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q65, i32 0, i32 0
  %102 = load i32, i32* %x66, align 4, !tbaa !71
  %cmp67 = icmp sgt i32 %100, %102
  br i1 %cmp67, label %if.then.68, label %if.end.75

if.then.68:                                       ; preds = %if.end.61
  %103 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %dirty69 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %103, i32 0, i32 17
  %q70 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty69, i32 0, i32 1
  %x71 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q70, i32 0, i32 0
  %104 = load i32, i32* %x71, align 4, !tbaa !71
  %105 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %dirty72 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %105, i32 0, i32 17
  %q73 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty72, i32 0, i32 1
  %x74 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q73, i32 0, i32 0
  store i32 %104, i32* %x74, align 4, !tbaa !71
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.68, %if.end.61
  %106 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %dirty76 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %106, i32 0, i32 17
  %p77 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty76, i32 0, i32 0
  %y78 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p77, i32 0, i32 1
  %107 = load i32, i32* %y78, align 4, !tbaa !72
  %108 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %dirty79 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %108, i32 0, i32 17
  %p80 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty79, i32 0, i32 0
  %y81 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p80, i32 0, i32 1
  %109 = load i32, i32* %y81, align 4, !tbaa !72
  %cmp82 = icmp slt i32 %107, %109
  br i1 %cmp82, label %if.then.83, label %if.end.90

if.then.83:                                       ; preds = %if.end.75
  %110 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %dirty84 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %110, i32 0, i32 17
  %p85 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty84, i32 0, i32 0
  %y86 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p85, i32 0, i32 1
  %111 = load i32, i32* %y86, align 4, !tbaa !72
  %112 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %dirty87 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %112, i32 0, i32 17
  %p88 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty87, i32 0, i32 0
  %y89 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p88, i32 0, i32 1
  store i32 %111, i32* %y89, align 4, !tbaa !72
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.83, %if.end.75
  %113 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %dirty91 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %113, i32 0, i32 17
  %q92 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty91, i32 0, i32 1
  %y93 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q92, i32 0, i32 1
  %114 = load i32, i32* %y93, align 4, !tbaa !73
  %115 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %dirty94 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %115, i32 0, i32 17
  %q95 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty94, i32 0, i32 1
  %y96 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q95, i32 0, i32 1
  %116 = load i32, i32* %y96, align 4, !tbaa !73
  %cmp97 = icmp sgt i32 %114, %116
  br i1 %cmp97, label %if.then.98, label %if.end.105

if.then.98:                                       ; preds = %if.end.90
  %117 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %dirty99 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %117, i32 0, i32 17
  %q100 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty99, i32 0, i32 1
  %y101 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q100, i32 0, i32 1
  %118 = load i32, i32* %y101, align 4, !tbaa !73
  %119 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %dirty102 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %119, i32 0, i32 17
  %q103 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %dirty102, i32 0, i32 1
  %y104 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q103, i32 0, i32 1
  store i32 %118, i32* %y104, align 4, !tbaa !73
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.98, %if.end.90
  br label %do.cond

do.cond:                                          ; preds = %if.end.105
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.106

do.body.106:                                      ; preds = %do.end
  br label %do.cond.107

do.cond.107:                                      ; preds = %do.body.106
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  %120 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %has_shape109 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %120, i32 0, i32 8
  %121 = load i32, i32* %has_shape109, align 4, !tbaa !62
  %tobool110 = icmp ne i32 %121, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %do.end.108
  store i32 0, i32* %nos_shape_offset, align 4, !tbaa !1
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %do.end.108
  %122 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %has_tags113 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %122, i32 0, i32 9
  %123 = load i32, i32* %has_tags113, align 4, !tbaa !64
  %tobool114 = icmp ne i32 %123, 0
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %if.end.112
  store i32 0, i32* %nos_tag_offset, align 4, !tbaa !1
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %if.end.112
  %124 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %has_alpha_g = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %124, i32 0, i32 7
  %125 = load i32, i32* %has_alpha_g, align 4, !tbaa !63
  %tobool117 = icmp ne i32 %125, 0
  br i1 %tobool117, label %if.then.118, label %if.else

if.then.118:                                      ; preds = %if.end.116
  %126 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %127 = load i32, i32* %nos_alpha_g_offset, align 4, !tbaa !1
  %idx.ext119 = sext i32 %127 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %126, i64 %idx.ext119
  store i8* %add.ptr120, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  br label %if.end.121

if.else:                                          ; preds = %if.end.116
  store i8* null, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  br label %if.end.121

if.end.121:                                       ; preds = %if.else, %if.then.118
  %128 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %backdrop = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %128, i32 0, i32 1
  %129 = load i8*, i8** %backdrop, align 8, !tbaa !52
  %cmp122 = icmp ne i8* %129, null
  br i1 %cmp122, label %if.then.123, label %if.end.141

if.then.123:                                      ; preds = %if.end.121
  store i32 1, i32* %has_backdrop, align 4, !tbaa !1
  %130 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %backdrop124 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %130, i32 0, i32 1
  %131 = load i8*, i8** %backdrop124, align 8, !tbaa !52
  %132 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %idx.ext125 = sext i32 %132 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %131, i64 %idx.ext125
  %133 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %rect127 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %133, i32 0, i32 10
  %p128 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect127, i32 0, i32 0
  %x129 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p128, i32 0, i32 0
  %134 = load i32, i32* %x129, align 4, !tbaa !34
  %idx.ext130 = sext i32 %134 to i64
  %idx.neg131 = sub i64 0, %idx.ext130
  %add.ptr132 = getelementptr inbounds i8, i8* %add.ptr126, i64 %idx.neg131
  %135 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %136 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %rect133 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %136, i32 0, i32 10
  %p134 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect133, i32 0, i32 0
  %y135 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p134, i32 0, i32 1
  %137 = load i32, i32* %y135, align 4, !tbaa !39
  %sub136 = sub nsw i32 %135, %137
  %138 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %rowstride137 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %138, i32 0, i32 11
  %139 = load i32, i32* %rowstride137, align 4, !tbaa !53
  %mul138 = mul nsw i32 %sub136, %139
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds i8, i8* %add.ptr132, i64 %idx.ext139
  store i8* %add.ptr140, i8** %backdrop_ptr, align 8, !tbaa !7
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.123, %if.end.121
  %140 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %cmp142 = icmp ne %struct.pdf14_buf_s* %140, null
  br i1 %cmp142, label %if.then.143, label %if.end.173

if.then.143:                                      ; preds = %if.end.141
  %141 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  %142 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %transfer_fn = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %142, i32 0, i32 16
  %143 = load i8*, i8** %transfer_fn, align 8, !tbaa !74
  store i8* %143, i8** %mask_tr_fn, align 8, !tbaa !7
  %144 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %data144 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %144, i32 0, i32 15
  %145 = load i8*, i8** %data144, align 8, !tbaa !56
  %cmp145 = icmp ne i8* %145, null
  br i1 %cmp145, label %if.then.146, label %if.end.165

if.then.146:                                      ; preds = %if.then.143
  %146 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %data147 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %146, i32 0, i32 15
  %147 = load i8*, i8** %data147, align 8, !tbaa !56
  %148 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %idx.ext148 = sext i32 %148 to i64
  %add.ptr149 = getelementptr inbounds i8, i8* %147, i64 %idx.ext148
  %149 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %rect150 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %149, i32 0, i32 10
  %p151 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect150, i32 0, i32 0
  %x152 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p151, i32 0, i32 0
  %150 = load i32, i32* %x152, align 4, !tbaa !34
  %idx.ext153 = sext i32 %150 to i64
  %idx.neg154 = sub i64 0, %idx.ext153
  %add.ptr155 = getelementptr inbounds i8, i8* %add.ptr149, i64 %idx.neg154
  %151 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %152 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %rect156 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %152, i32 0, i32 10
  %p157 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect156, i32 0, i32 0
  %y158 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p157, i32 0, i32 1
  %153 = load i32, i32* %y158, align 4, !tbaa !39
  %sub159 = sub nsw i32 %151, %153
  %154 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %rowstride160 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %154, i32 0, i32 11
  %155 = load i32, i32* %rowstride160, align 4, !tbaa !53
  %mul161 = mul nsw i32 %sub159, %155
  %idx.ext162 = sext i32 %mul161 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %add.ptr155, i64 %idx.ext162
  store i8* %add.ptr163, i8** %mask_row_ptr, align 8, !tbaa !7
  %156 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %planestride164 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %156, i32 0, i32 12
  %157 = load i32, i32* %planestride164, align 4, !tbaa !55
  store i32 %157, i32* %mask_planestride, align 4, !tbaa !1
  store i32 1, i32* %has_mask, align 4, !tbaa !1
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.146, %if.then.143
  %158 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %alpha166 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %158, i32 0, i32 4
  %159 = load i8, i8* %alpha166, align 1, !tbaa !65
  store i8 %159, i8* %mask_bg_alpha, align 1, !tbaa !9
  %160 = load i8, i8* %mask_bg_alpha, align 1, !tbaa !9
  %idxprom = zext i8 %160 to i64
  %161 = load i8*, i8** %mask_tr_fn, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* %161, i64 %idxprom
  %162 = load i8, i8* %arrayidx, align 1, !tbaa !9
  store i8 %162, i8* %mask_bg_alpha, align 1, !tbaa !9
  %163 = load i8, i8* %alpha, align 1, !tbaa !9
  %conv = zext i8 %163 to i32
  %164 = load i8, i8* %mask_bg_alpha, align 1, !tbaa !9
  %conv167 = zext i8 %164 to i32
  %mul168 = mul nsw i32 %conv, %conv167
  %add169 = add nsw i32 %mul168, 128
  store i32 %add169, i32* %tmp, align 4, !tbaa !1
  %165 = load i32, i32* %tmp, align 4, !tbaa !1
  %166 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %166, 8
  %add170 = add nsw i32 %165, %shr
  %shr171 = ashr i32 %add170, 8
  %conv172 = trunc i32 %shr171 to i8
  store i8 %conv172, i8* %mask_bg_alpha, align 1, !tbaa !9
  %167 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.165, %if.end.141
  %168 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %dec = add nsw i32 %168, -1
  store i32 %dec, i32* %n_chan.addr, align 4, !tbaa !1
  %169 = load i32, i32* %y1.addr, align 4, !tbaa !1
  %170 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %sub174 = sub nsw i32 %169, %170
  store i32 %sub174, i32* %y30, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.576, %if.end.173
  %171 = load i32, i32* %y30, align 4, !tbaa !1
  %cmp175 = icmp sgt i32 %171, 0
  br i1 %cmp175, label %for.body, label %for.end.578

for.body:                                         ; preds = %for.cond
  %172 = load i8*, i8** %mask_row_ptr, align 8, !tbaa !7
  store i8* %172, i8** %mask_curr_ptr, align 8, !tbaa !7
  %173 = load i32, i32* %has_mask, align 4, !tbaa !1
  %tobool177 = icmp ne i32 %173, 0
  br i1 %tobool177, label %land.lhs.true, label %if.else.192

land.lhs.true:                                    ; preds = %for.body
  %174 = load i32, i32* %y1.addr, align 4, !tbaa !1
  %175 = load i32, i32* %y30, align 4, !tbaa !1
  %sub178 = sub nsw i32 %174, %175
  %176 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %rect179 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %176, i32 0, i32 10
  %p180 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect179, i32 0, i32 0
  %y181 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p180, i32 0, i32 1
  %177 = load i32, i32* %y181, align 4, !tbaa !39
  %cmp182 = icmp sge i32 %sub178, %177
  br i1 %cmp182, label %land.lhs.true.184, label %if.else.192

land.lhs.true.184:                                ; preds = %land.lhs.true
  %178 = load i32, i32* %y1.addr, align 4, !tbaa !1
  %179 = load i32, i32* %y30, align 4, !tbaa !1
  %sub185 = sub nsw i32 %178, %179
  %180 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %rect186 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %180, i32 0, i32 10
  %q187 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect186, i32 0, i32 1
  %y188 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q187, i32 0, i32 1
  %181 = load i32, i32* %y188, align 4, !tbaa !40
  %cmp189 = icmp slt i32 %sub185, %181
  br i1 %cmp189, label %if.then.191, label %if.else.192

if.then.191:                                      ; preds = %land.lhs.true.184
  store i32 1, i32* %in_mask_rect_y, align 4, !tbaa !1
  br label %if.end.193

if.else.192:                                      ; preds = %land.lhs.true.184, %land.lhs.true, %for.body
  store i32 0, i32* %in_mask_rect_y, align 4, !tbaa !1
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.192, %if.then.191
  store i32 0, i32* %x29, align 4, !tbaa !1
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.543, %if.end.193
  %182 = load i32, i32* %x29, align 4, !tbaa !1
  %183 = load i32, i32* %width, align 4, !tbaa !1
  %cmp195 = icmp slt i32 %182, %183
  br i1 %cmp195, label %for.body.197, label %for.end.545

for.body.197:                                     ; preds = %for.cond.194
  %184 = load i32, i32* %in_mask_rect_y, align 4, !tbaa !1
  %tobool198 = icmp ne i32 %184, 0
  br i1 %tobool198, label %land.lhs.true.199, label %if.else.216

land.lhs.true.199:                                ; preds = %for.body.197
  %185 = load i32, i32* %has_mask, align 4, !tbaa !1
  %tobool200 = icmp ne i32 %185, 0
  br i1 %tobool200, label %land.lhs.true.201, label %if.else.216

land.lhs.true.201:                                ; preds = %land.lhs.true.199
  %186 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %187 = load i32, i32* %x29, align 4, !tbaa !1
  %add202 = add nsw i32 %186, %187
  %188 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %rect203 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %188, i32 0, i32 10
  %p204 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect203, i32 0, i32 0
  %x205 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p204, i32 0, i32 0
  %189 = load i32, i32* %x205, align 4, !tbaa !34
  %cmp206 = icmp sge i32 %add202, %189
  br i1 %cmp206, label %land.lhs.true.208, label %if.else.216

land.lhs.true.208:                                ; preds = %land.lhs.true.201
  %190 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %191 = load i32, i32* %x29, align 4, !tbaa !1
  %add209 = add nsw i32 %190, %191
  %192 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %rect210 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %192, i32 0, i32 10
  %q211 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect210, i32 0, i32 1
  %x212 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q211, i32 0, i32 0
  %193 = load i32, i32* %x212, align 4, !tbaa !38
  %cmp213 = icmp slt i32 %add209, %193
  br i1 %cmp213, label %if.then.215, label %if.else.216

if.then.215:                                      ; preds = %land.lhs.true.208
  store i32 1, i32* %in_mask_rect, align 4, !tbaa !1
  br label %if.end.217

if.else.216:                                      ; preds = %land.lhs.true.208, %land.lhs.true.201, %land.lhs.true.199, %for.body.197
  store i32 0, i32* %in_mask_rect, align 4, !tbaa !1
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.216, %if.then.215
  %194 = load i8, i8* %alpha, align 1, !tbaa !9
  store i8 %194, i8* %pix_alpha, align 1, !tbaa !9
  %195 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %cmp218 = icmp ne %struct.pdf14_buf_s* %195, null
  br i1 %cmp218, label %if.then.220, label %if.end.228

if.then.220:                                      ; preds = %if.end.217
  %196 = load i32, i32* %in_mask_rect, align 4, !tbaa !1
  %tobool221 = icmp ne i32 %196, 0
  br i1 %tobool221, label %if.else.223, label %if.then.222

if.then.222:                                      ; preds = %if.then.220
  %197 = load i8, i8* %mask_bg_alpha, align 1, !tbaa !9
  store i8 %197, i8* %pix_alpha, align 1, !tbaa !9
  br label %if.end.227

if.else.223:                                      ; preds = %if.then.220
  %198 = load i32, i32* %tos_isolated, align 4, !tbaa !1
  %tobool224 = icmp ne i32 %198, 0
  br i1 %tobool224, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.else.223
  store i8 -1, i8* %pix_alpha, align 1, !tbaa !9
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.225, %if.else.223
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.then.222
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.end.217
  %199 = load i32, i32* %additive.addr, align 4, !tbaa !1
  %tobool229 = icmp ne i32 %199, 0
  br i1 %tobool229, label %if.then.230, label %if.else.245

if.then.230:                                      ; preds = %if.end.228
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc, %if.then.230
  %200 = load i32, i32* %i, align 4, !tbaa !1
  %201 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp232 = icmp sle i32 %200, %201
  br i1 %cmp232, label %for.body.234, label %for.end

for.body.234:                                     ; preds = %for.cond.231
  %202 = load i32, i32* %i, align 4, !tbaa !1
  %203 = load i32, i32* %tos_planestride, align 4, !tbaa !1
  %mul235 = mul nsw i32 %202, %203
  %idxprom236 = sext i32 %mul235 to i64
  %204 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %arrayidx237 = getelementptr inbounds i8, i8* %204, i64 %idxprom236
  %205 = load i8, i8* %arrayidx237, align 1, !tbaa !9
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom238 = sext i32 %206 to i64
  %arrayidx239 = getelementptr inbounds [67 x i8], [67 x i8]* %tos_pixel, i32 0, i64 %idxprom238
  store i8 %205, i8* %arrayidx239, align 1, !tbaa !9
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul240 = mul nsw i32 %207, %208
  %idxprom241 = sext i32 %mul240 to i64
  %209 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx242 = getelementptr inbounds i8, i8* %209, i64 %idxprom241
  %210 = load i8, i8* %arrayidx242, align 1, !tbaa !9
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom243 = sext i32 %211 to i64
  %arrayidx244 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i64 %idxprom243
  store i8 %210, i8* %arrayidx244, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body.234
  %212 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %212, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond.231

for.end:                                          ; preds = %for.cond.231
  br label %if.end.279

if.else.245:                                      ; preds = %if.end.228
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.266, %if.else.245
  %213 = load i32, i32* %i, align 4, !tbaa !1
  %214 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp247 = icmp slt i32 %213, %214
  br i1 %cmp247, label %for.body.249, label %for.end.268

for.body.249:                                     ; preds = %for.cond.246
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = load i32, i32* %tos_planestride, align 4, !tbaa !1
  %mul250 = mul nsw i32 %215, %216
  %idxprom251 = sext i32 %mul250 to i64
  %217 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds i8, i8* %217, i64 %idxprom251
  %218 = load i8, i8* %arrayidx252, align 1, !tbaa !9
  %conv253 = zext i8 %218 to i32
  %sub254 = sub nsw i32 255, %conv253
  %conv255 = trunc i32 %sub254 to i8
  %219 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom256 = sext i32 %219 to i64
  %arrayidx257 = getelementptr inbounds [67 x i8], [67 x i8]* %tos_pixel, i32 0, i64 %idxprom256
  store i8 %conv255, i8* %arrayidx257, align 1, !tbaa !9
  %220 = load i32, i32* %i, align 4, !tbaa !1
  %221 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul258 = mul nsw i32 %220, %221
  %idxprom259 = sext i32 %mul258 to i64
  %222 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx260 = getelementptr inbounds i8, i8* %222, i64 %idxprom259
  %223 = load i8, i8* %arrayidx260, align 1, !tbaa !9
  %conv261 = zext i8 %223 to i32
  %sub262 = sub nsw i32 255, %conv261
  %conv263 = trunc i32 %sub262 to i8
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom264 = sext i32 %224 to i64
  %arrayidx265 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i64 %idxprom264
  store i8 %conv263, i8* %arrayidx265, align 1, !tbaa !9
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.body.249
  %225 = load i32, i32* %i, align 4, !tbaa !1
  %inc267 = add nsw i32 %225, 1
  store i32 %inc267, i32* %i, align 4, !tbaa !1
  br label %for.cond.246

for.end.268:                                      ; preds = %for.cond.246
  %226 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %227 = load i32, i32* %tos_planestride, align 4, !tbaa !1
  %mul269 = mul nsw i32 %226, %227
  %idxprom270 = sext i32 %mul269 to i64
  %228 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %arrayidx271 = getelementptr inbounds i8, i8* %228, i64 %idxprom270
  %229 = load i8, i8* %arrayidx271, align 1, !tbaa !9
  %230 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom272 = sext i32 %230 to i64
  %arrayidx273 = getelementptr inbounds [67 x i8], [67 x i8]* %tos_pixel, i32 0, i64 %idxprom272
  store i8 %229, i8* %arrayidx273, align 1, !tbaa !9
  %231 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %232 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul274 = mul nsw i32 %231, %232
  %idxprom275 = sext i32 %mul274 to i64
  %233 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx276 = getelementptr inbounds i8, i8* %233, i64 %idxprom275
  %234 = load i8, i8* %arrayidx276, align 1, !tbaa !9
  %235 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom277 = sext i32 %235 to i64
  %arrayidx278 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i64 %idxprom277
  store i8 %234, i8* %arrayidx278, align 1, !tbaa !9
  br label %if.end.279

if.end.279:                                       ; preds = %for.end.268, %for.end
  %236 = load i8*, i8** %mask_curr_ptr, align 8, !tbaa !7
  %cmp280 = icmp ne i8* %236, null
  br i1 %cmp280, label %if.then.282, label %if.end.301

if.then.282:                                      ; preds = %if.end.279
  %237 = load i32, i32* %in_mask_rect, align 4, !tbaa !1
  %tobool283 = icmp ne i32 %237, 0
  br i1 %tobool283, label %if.then.284, label %if.else.298

if.then.284:                                      ; preds = %if.then.282
  call void @llvm.lifetime.start(i64 1, i8* %mask) #1
  %238 = load i8*, i8** %mask_curr_ptr, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %incdec.ptr, i8** %mask_curr_ptr, align 8, !tbaa !7
  %239 = load i8, i8* %238, align 1, !tbaa !9
  %idxprom286 = zext i8 %239 to i64
  %240 = load i8*, i8** %mask_tr_fn, align 8, !tbaa !7
  %arrayidx287 = getelementptr inbounds i8, i8* %240, i64 %idxprom286
  %241 = load i8, i8* %arrayidx287, align 1, !tbaa !9
  store i8 %241, i8* %mask, align 1, !tbaa !9
  %242 = bitcast i32* %tmp289 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %242) #1
  %243 = load i8, i8* %pix_alpha, align 1, !tbaa !9
  %conv290 = zext i8 %243 to i32
  %244 = load i8, i8* %mask, align 1, !tbaa !9
  %conv291 = zext i8 %244 to i32
  %mul292 = mul nsw i32 %conv290, %conv291
  %add293 = add nsw i32 %mul292, 128
  store i32 %add293, i32* %tmp289, align 4, !tbaa !1
  %245 = load i32, i32* %tmp289, align 4, !tbaa !1
  %246 = load i32, i32* %tmp289, align 4, !tbaa !1
  %shr294 = ashr i32 %246, 8
  %add295 = add nsw i32 %245, %shr294
  %shr296 = ashr i32 %add295, 8
  %conv297 = trunc i32 %shr296 to i8
  store i8 %conv297, i8* %pix_alpha, align 1, !tbaa !9
  %247 = bitcast i32* %tmp289 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  call void @llvm.lifetime.end(i64 1, i8* %mask) #1
  br label %if.end.300

if.else.298:                                      ; preds = %if.then.282
  %248 = load i8*, i8** %mask_curr_ptr, align 8, !tbaa !7
  %incdec.ptr299 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %incdec.ptr299, i8** %mask_curr_ptr, align 8, !tbaa !7
  br label %if.end.300

if.end.300:                                       ; preds = %if.else.298, %if.then.284
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %if.end.279
  %249 = load i32, i32* %nos_knockout, align 4, !tbaa !1
  %tobool302 = icmp ne i32 %249, 0
  br i1 %tobool302, label %if.then.303, label %if.else.380

if.then.303:                                      ; preds = %if.end.301
  %250 = bitcast i8** %nos_shape_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %250) #1
  %251 = load i32, i32* %nos_shape_offset, align 4, !tbaa !1
  %tobool305 = icmp ne i32 %251, 0
  br i1 %tobool305, label %cond.true.306, label %cond.false.309

cond.true.306:                                    ; preds = %if.then.303
  %252 = load i32, i32* %nos_shape_offset, align 4, !tbaa !1
  %idxprom307 = sext i32 %252 to i64
  %253 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx308 = getelementptr inbounds i8, i8* %253, i64 %idxprom307
  br label %cond.end.310

cond.false.309:                                   ; preds = %if.then.303
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.309, %cond.true.306
  %cond311 = phi i8* [ %arrayidx308, %cond.true.306 ], [ null, %cond.false.309 ]
  store i8* %cond311, i8** %nos_shape_ptr, align 8, !tbaa !7
  %254 = bitcast i8** %nos_tag_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  %255 = load i32, i32* %nos_tag_offset, align 4, !tbaa !1
  %tobool313 = icmp ne i32 %255, 0
  br i1 %tobool313, label %cond.true.314, label %cond.false.317

cond.true.314:                                    ; preds = %cond.end.310
  %256 = load i32, i32* %nos_tag_offset, align 4, !tbaa !1
  %idxprom315 = sext i32 %256 to i64
  %257 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx316 = getelementptr inbounds i8, i8* %257, i64 %idxprom315
  br label %cond.end.318

cond.false.317:                                   ; preds = %cond.end.310
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.317, %cond.true.314
  %cond319 = phi i8* [ %arrayidx316, %cond.true.314 ], [ null, %cond.false.317 ]
  store i8* %cond319, i8** %nos_tag_ptr, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %tos_shape) #1
  call void @llvm.lifetime.start(i64 1, i8* %tos_tag) #1
  %258 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %has_shape322 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %258, i32 0, i32 8
  %259 = load i32, i32* %has_shape322, align 4, !tbaa !62
  %tobool323 = icmp ne i32 %259, 0
  br i1 %tobool323, label %if.then.324, label %if.else.327

if.then.324:                                      ; preds = %cond.end.318
  %260 = load i32, i32* %tos_shape_offset, align 4, !tbaa !1
  %idxprom325 = sext i32 %260 to i64
  %261 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %arrayidx326 = getelementptr inbounds i8, i8* %261, i64 %idxprom325
  %262 = load i8, i8* %arrayidx326, align 1, !tbaa !9
  store i8 %262, i8* %tos_shape, align 1, !tbaa !9
  br label %if.end.328

if.else.327:                                      ; preds = %cond.end.318
  store i8 -1, i8* %tos_shape, align 1, !tbaa !9
  br label %if.end.328

if.end.328:                                       ; preds = %if.else.327, %if.then.324
  %263 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %has_tags329 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %263, i32 0, i32 9
  %264 = load i32, i32* %has_tags329, align 4, !tbaa !64
  %tobool330 = icmp ne i32 %264, 0
  br i1 %tobool330, label %if.then.331, label %if.else.334

if.then.331:                                      ; preds = %if.end.328
  %265 = load i32, i32* %tos_tag_offset, align 4, !tbaa !1
  %idxprom332 = sext i32 %265 to i64
  %266 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %arrayidx333 = getelementptr inbounds i8, i8* %266, i64 %idxprom332
  %267 = load i8, i8* %arrayidx333, align 1, !tbaa !9
  store i8 %267, i8* %tos_tag, align 1, !tbaa !9
  br label %if.end.335

if.else.334:                                      ; preds = %if.end.328
  store i8 -1, i8* %tos_tag, align 1, !tbaa !9
  br label %if.end.335

if.end.335:                                       ; preds = %if.else.334, %if.then.331
  %268 = load i32, i32* %tos_isolated, align 4, !tbaa !1
  %tobool336 = icmp ne i32 %268, 0
  br i1 %tobool336, label %if.then.337, label %if.else.339

if.then.337:                                      ; preds = %if.end.335
  %arraydecay = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i32 0
  %269 = load i8*, i8** %nos_shape_ptr, align 8, !tbaa !7
  %270 = load i8*, i8** %nos_tag_ptr, align 8, !tbaa !7
  %arraydecay338 = getelementptr inbounds [67 x i8], [67 x i8]* %tos_pixel, i32 0, i32 0
  %271 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %272 = load i8, i8* %tos_shape, align 1, !tbaa !9
  %273 = load i8, i8* %tos_tag, align 1, !tbaa !9
  %274 = load i8, i8* %pix_alpha, align 1, !tbaa !9
  %275 = load i8, i8* %shape, align 1, !tbaa !9
  %276 = load i32, i32* %has_mask, align 4, !tbaa !1
  call void @art_pdf_composite_knockout_isolated_8(i8* %arraydecay, i8* %269, i8* %270, i8* %arraydecay338, i32 %271, i8 zeroext %272, i8 zeroext %273, i8 zeroext %274, i8 zeroext %275, i32 %276) #5
  br label %if.end.379

if.else.339:                                      ; preds = %if.end.335
  %277 = load i32, i32* %additive.addr, align 4, !tbaa !1
  %tobool340 = icmp ne i32 %277, 0
  br i1 %tobool340, label %if.then.341, label %if.else.354

if.then.341:                                      ; preds = %if.else.339
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.342

for.cond.342:                                     ; preds = %for.inc.351, %if.then.341
  %278 = load i32, i32* %i, align 4, !tbaa !1
  %279 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp343 = icmp sle i32 %278, %279
  br i1 %cmp343, label %for.body.345, label %for.end.353

for.body.345:                                     ; preds = %for.cond.342
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul346 = mul nsw i32 %280, %281
  %idxprom347 = sext i32 %mul346 to i64
  %282 = load i8*, i8** %backdrop_ptr, align 8, !tbaa !7
  %arrayidx348 = getelementptr inbounds i8, i8* %282, i64 %idxprom347
  %283 = load i8, i8* %arrayidx348, align 1, !tbaa !9
  %284 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom349 = sext i32 %284 to i64
  %arrayidx350 = getelementptr inbounds [67 x i8], [67 x i8]* %back_drop, i32 0, i64 %idxprom349
  store i8 %283, i8* %arrayidx350, align 1, !tbaa !9
  br label %for.inc.351

for.inc.351:                                      ; preds = %for.body.345
  %285 = load i32, i32* %i, align 4, !tbaa !1
  %inc352 = add nsw i32 %285, 1
  store i32 %inc352, i32* %i, align 4, !tbaa !1
  br label %for.cond.342

for.end.353:                                      ; preds = %for.cond.342
  br label %if.end.375

if.else.354:                                      ; preds = %if.else.339
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.367, %if.else.354
  %286 = load i32, i32* %i, align 4, !tbaa !1
  %287 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp356 = icmp slt i32 %286, %287
  br i1 %cmp356, label %for.body.358, label %for.end.369

for.body.358:                                     ; preds = %for.cond.355
  %288 = load i32, i32* %i, align 4, !tbaa !1
  %289 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul359 = mul nsw i32 %288, %289
  %idxprom360 = sext i32 %mul359 to i64
  %290 = load i8*, i8** %backdrop_ptr, align 8, !tbaa !7
  %arrayidx361 = getelementptr inbounds i8, i8* %290, i64 %idxprom360
  %291 = load i8, i8* %arrayidx361, align 1, !tbaa !9
  %conv362 = zext i8 %291 to i32
  %sub363 = sub nsw i32 255, %conv362
  %conv364 = trunc i32 %sub363 to i8
  %292 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom365 = sext i32 %292 to i64
  %arrayidx366 = getelementptr inbounds [67 x i8], [67 x i8]* %back_drop, i32 0, i64 %idxprom365
  store i8 %conv364, i8* %arrayidx366, align 1, !tbaa !9
  br label %for.inc.367

for.inc.367:                                      ; preds = %for.body.358
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %inc368 = add nsw i32 %293, 1
  store i32 %inc368, i32* %i, align 4, !tbaa !1
  br label %for.cond.355

for.end.369:                                      ; preds = %for.cond.355
  %294 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %295 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul370 = mul nsw i32 %294, %295
  %idxprom371 = sext i32 %mul370 to i64
  %296 = load i8*, i8** %backdrop_ptr, align 8, !tbaa !7
  %arrayidx372 = getelementptr inbounds i8, i8* %296, i64 %idxprom371
  %297 = load i8, i8* %arrayidx372, align 1, !tbaa !9
  %298 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom373 = sext i32 %298 to i64
  %arrayidx374 = getelementptr inbounds [67 x i8], [67 x i8]* %back_drop, i32 0, i64 %idxprom373
  store i8 %297, i8* %arrayidx374, align 1, !tbaa !9
  br label %if.end.375

if.end.375:                                       ; preds = %for.end.369, %for.end.353
  %arraydecay376 = getelementptr inbounds [67 x i8], [67 x i8]* %back_drop, i32 0, i32 0
  %299 = load i8, i8* %tos_shape, align 1, !tbaa !9
  %arraydecay377 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i32 0
  %300 = load i8*, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  %arraydecay378 = getelementptr inbounds [67 x i8], [67 x i8]* %tos_pixel, i32 0, i32 0
  %301 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %302 = load i8, i8* %pix_alpha, align 1, !tbaa !9
  %303 = load i32, i32* %blend_mode, align 4, !tbaa !9
  %304 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !7
  call void @art_pdf_composite_knockout_group_8(i8* %arraydecay376, i8 zeroext %299, i8* %arraydecay377, i8* %300, i8* %arraydecay378, i32 %301, i8 zeroext %302, i32 %303, %struct.pdf14_nonseparable_blending_procs_s* %304) #5
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.375, %if.then.337
  call void @llvm.lifetime.end(i64 1, i8* %tos_tag) #1
  call void @llvm.lifetime.end(i64 1, i8* %tos_shape) #1
  %305 = bitcast i8** %nos_tag_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = bitcast i8** %nos_shape_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  br label %if.end.431

if.else.380:                                      ; preds = %if.end.301
  %307 = load i32, i32* %tos_isolated, align 4, !tbaa !1
  %tobool381 = icmp ne i32 %307, 0
  br i1 %tobool381, label %if.then.388, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %if.else.380
  %308 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %saved = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %308, i32 0, i32 0
  %309 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %saved, align 8, !tbaa !75
  %cmp383 = icmp eq %struct.pdf14_buf_s* %309, null
  br i1 %cmp383, label %land.lhs.true.385, label %if.else.391

land.lhs.true.385:                                ; preds = %lor.lhs.false.382
  %310 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %knockout386 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %310, i32 0, i32 3
  %311 = load i32, i32* %knockout386, align 4, !tbaa !69
  %tobool387 = icmp ne i32 %311, 0
  br i1 %tobool387, label %if.then.388, label %if.else.391

if.then.388:                                      ; preds = %land.lhs.true.385, %if.else.380
  %arraydecay389 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i32 0
  %312 = load i8*, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  %arraydecay390 = getelementptr inbounds [67 x i8], [67 x i8]* %tos_pixel, i32 0, i32 0
  %313 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %314 = load i8, i8* %pix_alpha, align 1, !tbaa !9
  %315 = load i32, i32* %blend_mode, align 4, !tbaa !9
  %316 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !7
  call void @art_pdf_composite_group_8(i8* %arraydecay389, i8* %312, i8* %arraydecay390, i32 %313, i8 zeroext %314, i32 %315, %struct.pdf14_nonseparable_blending_procs_s* %316) #5
  br label %if.end.397

if.else.391:                                      ; preds = %land.lhs.true.385, %lor.lhs.false.382
  call void @llvm.lifetime.start(i64 1, i8* %tos_alpha_g) #1
  %317 = load i32, i32* %tos_alpha_g_offset, align 4, !tbaa !1
  %idxprom393 = sext i32 %317 to i64
  %318 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %arrayidx394 = getelementptr inbounds i8, i8* %318, i64 %idxprom393
  %319 = load i8, i8* %arrayidx394, align 1, !tbaa !9
  store i8 %319, i8* %tos_alpha_g, align 1, !tbaa !9
  %arraydecay395 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i32 0
  %320 = load i8*, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  %arraydecay396 = getelementptr inbounds [67 x i8], [67 x i8]* %tos_pixel, i32 0, i32 0
  %321 = load i8, i8* %tos_alpha_g, align 1, !tbaa !9
  %322 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %323 = load i8, i8* %pix_alpha, align 1, !tbaa !9
  %324 = load i32, i32* %blend_mode, align 4, !tbaa !9
  %325 = load %struct.pdf14_nonseparable_blending_procs_s*, %struct.pdf14_nonseparable_blending_procs_s** %pblend_procs.addr, align 8, !tbaa !7
  call void @art_pdf_recomposite_group_8(i8* %arraydecay395, i8* %320, i8* %arraydecay396, i8 zeroext %321, i32 %322, i8 zeroext %323, i32 %324, %struct.pdf14_nonseparable_blending_procs_s* %325) #5
  call void @llvm.lifetime.end(i64 1, i8* %tos_alpha_g) #1
  br label %if.end.397

if.end.397:                                       ; preds = %if.else.391, %if.then.388
  %326 = load i32, i32* %tos_has_tag, align 4, !tbaa !1
  %tobool398 = icmp ne i32 %326, 0
  br i1 %tobool398, label %if.then.399, label %if.end.430

if.then.399:                                      ; preds = %if.end.397
  %327 = load i8, i8* %pix_alpha, align 1, !tbaa !9
  %conv400 = zext i8 %327 to i32
  %cmp401 = icmp eq i32 %conv400, 255
  br i1 %cmp401, label %if.then.403, label %if.else.408

if.then.403:                                      ; preds = %if.then.399
  %328 = load i32, i32* %tos_tag_offset, align 4, !tbaa !1
  %idxprom404 = sext i32 %328 to i64
  %329 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %arrayidx405 = getelementptr inbounds i8, i8* %329, i64 %idxprom404
  %330 = load i8, i8* %arrayidx405, align 1, !tbaa !9
  %331 = load i32, i32* %nos_tag_offset, align 4, !tbaa !1
  %idxprom406 = sext i32 %331 to i64
  %332 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx407 = getelementptr inbounds i8, i8* %332, i64 %idxprom406
  store i8 %330, i8* %arrayidx407, align 1, !tbaa !9
  br label %if.end.429

if.else.408:                                      ; preds = %if.then.399
  %333 = load i8, i8* %pix_alpha, align 1, !tbaa !9
  %conv409 = zext i8 %333 to i32
  %cmp410 = icmp ne i32 %conv409, 0
  br i1 %cmp410, label %land.lhs.true.412, label %if.end.428

land.lhs.true.412:                                ; preds = %if.else.408
  %334 = load i32, i32* %tos_tag_offset, align 4, !tbaa !1
  %idxprom413 = sext i32 %334 to i64
  %335 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %arrayidx414 = getelementptr inbounds i8, i8* %335, i64 %idxprom413
  %336 = load i8, i8* %arrayidx414, align 1, !tbaa !9
  %conv415 = zext i8 %336 to i32
  %cmp416 = icmp ne i32 %conv415, 8
  br i1 %cmp416, label %if.then.418, label %if.end.428

if.then.418:                                      ; preds = %land.lhs.true.412
  %337 = load i32, i32* %nos_tag_offset, align 4, !tbaa !1
  %idxprom419 = sext i32 %337 to i64
  %338 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx420 = getelementptr inbounds i8, i8* %338, i64 %idxprom419
  %339 = load i8, i8* %arrayidx420, align 1, !tbaa !9
  %conv421 = zext i8 %339 to i32
  %340 = load i32, i32* %tos_tag_offset, align 4, !tbaa !1
  %idxprom422 = sext i32 %340 to i64
  %341 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %arrayidx423 = getelementptr inbounds i8, i8* %341, i64 %idxprom422
  %342 = load i8, i8* %arrayidx423, align 1, !tbaa !9
  %conv424 = zext i8 %342 to i32
  %or = or i32 %conv421, %conv424
  %and = and i32 %or, -9
  %conv425 = trunc i32 %and to i8
  %343 = load i32, i32* %nos_tag_offset, align 4, !tbaa !1
  %idxprom426 = sext i32 %343 to i64
  %344 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx427 = getelementptr inbounds i8, i8* %344, i64 %idxprom426
  store i8 %conv425, i8* %arrayidx427, align 1, !tbaa !9
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.418, %land.lhs.true.412, %if.else.408
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %if.then.403
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %if.end.397
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %if.end.379
  %345 = load i32, i32* %nos_shape_offset, align 4, !tbaa !1
  %tobool432 = icmp ne i32 %345, 0
  br i1 %tobool432, label %if.then.433, label %if.end.440

if.then.433:                                      ; preds = %if.end.431
  %346 = load i32, i32* %nos_shape_offset, align 4, !tbaa !1
  %idxprom434 = sext i32 %346 to i64
  %347 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx435 = getelementptr inbounds i8, i8* %347, i64 %idxprom434
  %348 = load i8, i8* %arrayidx435, align 1, !tbaa !9
  %349 = load i32, i32* %tos_shape_offset, align 4, !tbaa !1
  %idxprom436 = sext i32 %349 to i64
  %350 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %arrayidx437 = getelementptr inbounds i8, i8* %350, i64 %idxprom436
  %351 = load i8, i8* %arrayidx437, align 1, !tbaa !9
  %352 = load i8, i8* %shape, align 1, !tbaa !9
  %call = call zeroext i8 @art_pdf_union_mul_8(i8 zeroext %348, i8 zeroext %351, i8 zeroext %352) #5
  %353 = load i32, i32* %nos_shape_offset, align 4, !tbaa !1
  %idxprom438 = sext i32 %353 to i64
  %354 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx439 = getelementptr inbounds i8, i8* %354, i64 %idxprom438
  store i8 %call, i8* %arrayidx439, align 1, !tbaa !9
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.433, %if.end.431
  %355 = load i32, i32* %additive.addr, align 4, !tbaa !1
  %tobool441 = icmp ne i32 %355, 0
  br i1 %tobool441, label %if.then.442, label %if.else.455

if.then.442:                                      ; preds = %if.end.440
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.443

for.cond.443:                                     ; preds = %for.inc.452, %if.then.442
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp444 = icmp sle i32 %356, %357
  br i1 %cmp444, label %for.body.446, label %for.end.454

for.body.446:                                     ; preds = %for.cond.443
  %358 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom447 = sext i32 %358 to i64
  %arrayidx448 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i64 %idxprom447
  %359 = load i8, i8* %arrayidx448, align 1, !tbaa !9
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul449 = mul nsw i32 %360, %361
  %idxprom450 = sext i32 %mul449 to i64
  %362 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx451 = getelementptr inbounds i8, i8* %362, i64 %idxprom450
  store i8 %359, i8* %arrayidx451, align 1, !tbaa !9
  br label %for.inc.452

for.inc.452:                                      ; preds = %for.body.446
  %363 = load i32, i32* %i, align 4, !tbaa !1
  %inc453 = add nsw i32 %363, 1
  store i32 %inc453, i32* %i, align 4, !tbaa !1
  br label %for.cond.443

for.end.454:                                      ; preds = %for.cond.443
  br label %if.end.528

if.else.455:                                      ; preds = %if.end.440
  %364 = load i32, i32* %overprint.addr, align 4, !tbaa !1
  %tobool456 = icmp ne i32 %364, 0
  br i1 %tobool456, label %if.then.457, label %if.else.506

if.then.457:                                      ; preds = %if.else.455
  %365 = load i32, i32* %blendspot.addr, align 4, !tbaa !1
  %tobool458 = icmp ne i32 %365, 0
  br i1 %tobool458, label %if.then.459, label %if.else.483

if.then.459:                                      ; preds = %if.then.457
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.460

for.cond.460:                                     ; preds = %for.inc.480, %if.then.459
  %366 = load i32, i32* %i, align 4, !tbaa !1
  %367 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp461 = icmp slt i32 %366, %367
  br i1 %cmp461, label %for.body.463, label %for.end.482

for.body.463:                                     ; preds = %for.cond.460
  %368 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %368) #1
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul465 = mul nsw i32 %369, %370
  %idxprom466 = sext i32 %mul465 to i64
  %371 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx467 = getelementptr inbounds i8, i8* %371, i64 %idxprom466
  %372 = load i8, i8* %arrayidx467, align 1, !tbaa !9
  %conv468 = zext i8 %372 to i32
  %sub469 = sub nsw i32 255, %conv468
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom470 = sext i32 %373 to i64
  %arrayidx471 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i64 %idxprom470
  %374 = load i8, i8* %arrayidx471, align 1, !tbaa !9
  %conv472 = zext i8 %374 to i32
  %mul473 = mul nsw i32 %sub469, %conv472
  store i32 %mul473, i32* %temp, align 4, !tbaa !1
  %375 = load i32, i32* %temp, align 4, !tbaa !1
  %shr474 = ashr i32 %375, 8
  store i32 %shr474, i32* %temp, align 4, !tbaa !1
  %376 = load i32, i32* %temp, align 4, !tbaa !1
  %sub475 = sub nsw i32 255, %376
  %conv476 = trunc i32 %sub475 to i8
  %377 = load i32, i32* %i, align 4, !tbaa !1
  %378 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul477 = mul nsw i32 %377, %378
  %idxprom478 = sext i32 %mul477 to i64
  %379 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx479 = getelementptr inbounds i8, i8* %379, i64 %idxprom478
  store i8 %conv476, i8* %arrayidx479, align 1, !tbaa !9
  %380 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #1
  br label %for.inc.480

for.inc.480:                                      ; preds = %for.body.463
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %inc481 = add nsw i32 %381, 1
  store i32 %inc481, i32* %i, align 4, !tbaa !1
  br label %for.cond.460

for.end.482:                                      ; preds = %for.cond.460
  br label %if.end.505

if.else.483:                                      ; preds = %if.then.457
  store i32 0, i32* %i, align 4, !tbaa !1
  %382 = load i64, i64* %drawn_comps.addr, align 8, !tbaa !5
  store i64 %382, i64* %comps, align 8, !tbaa !5
  br label %for.cond.484

for.cond.484:                                     ; preds = %for.inc.501, %if.else.483
  %383 = load i64, i64* %comps, align 8, !tbaa !5
  %cmp485 = icmp ne i64 %383, 0
  br i1 %cmp485, label %for.body.487, label %for.end.504

for.body.487:                                     ; preds = %for.cond.484
  %384 = load i64, i64* %comps, align 8, !tbaa !5
  %and488 = and i64 %384, 1
  %cmp489 = icmp ne i64 %and488, 0
  br i1 %cmp489, label %if.then.491, label %if.end.500

if.then.491:                                      ; preds = %for.body.487
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom492 = sext i32 %385 to i64
  %arrayidx493 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i64 %idxprom492
  %386 = load i8, i8* %arrayidx493, align 1, !tbaa !9
  %conv494 = zext i8 %386 to i32
  %sub495 = sub nsw i32 255, %conv494
  %conv496 = trunc i32 %sub495 to i8
  %387 = load i32, i32* %i, align 4, !tbaa !1
  %388 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul497 = mul nsw i32 %387, %388
  %idxprom498 = sext i32 %mul497 to i64
  %389 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx499 = getelementptr inbounds i8, i8* %389, i64 %idxprom498
  store i8 %conv496, i8* %arrayidx499, align 1, !tbaa !9
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.491, %for.body.487
  br label %for.inc.501

for.inc.501:                                      ; preds = %if.end.500
  %390 = load i32, i32* %i, align 4, !tbaa !1
  %inc502 = add nsw i32 %390, 1
  store i32 %inc502, i32* %i, align 4, !tbaa !1
  %391 = load i64, i64* %comps, align 8, !tbaa !5
  %shr503 = lshr i64 %391, 1
  store i64 %shr503, i64* %comps, align 8, !tbaa !5
  br label %for.cond.484

for.end.504:                                      ; preds = %for.cond.484
  br label %if.end.505

if.end.505:                                       ; preds = %for.end.504, %for.end.482
  br label %if.end.522

if.else.506:                                      ; preds = %if.else.455
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.507

for.cond.507:                                     ; preds = %for.inc.519, %if.else.506
  %392 = load i32, i32* %i, align 4, !tbaa !1
  %393 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %cmp508 = icmp slt i32 %392, %393
  br i1 %cmp508, label %for.body.510, label %for.end.521

for.body.510:                                     ; preds = %for.cond.507
  %394 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom511 = sext i32 %394 to i64
  %arrayidx512 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i64 %idxprom511
  %395 = load i8, i8* %arrayidx512, align 1, !tbaa !9
  %conv513 = zext i8 %395 to i32
  %sub514 = sub nsw i32 255, %conv513
  %conv515 = trunc i32 %sub514 to i8
  %396 = load i32, i32* %i, align 4, !tbaa !1
  %397 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul516 = mul nsw i32 %396, %397
  %idxprom517 = sext i32 %mul516 to i64
  %398 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx518 = getelementptr inbounds i8, i8* %398, i64 %idxprom517
  store i8 %conv515, i8* %arrayidx518, align 1, !tbaa !9
  br label %for.inc.519

for.inc.519:                                      ; preds = %for.body.510
  %399 = load i32, i32* %i, align 4, !tbaa !1
  %inc520 = add nsw i32 %399, 1
  store i32 %inc520, i32* %i, align 4, !tbaa !1
  br label %for.cond.507

for.end.521:                                      ; preds = %for.cond.507
  br label %if.end.522

if.end.522:                                       ; preds = %for.end.521, %if.end.505
  %400 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %idxprom523 = sext i32 %400 to i64
  %arrayidx524 = getelementptr inbounds [67 x i8], [67 x i8]* %nos_pixel, i32 0, i64 %idxprom523
  %401 = load i8, i8* %arrayidx524, align 1, !tbaa !9
  %402 = load i32, i32* %n_chan.addr, align 4, !tbaa !1
  %403 = load i32, i32* %nos_planestride, align 4, !tbaa !1
  %mul525 = mul nsw i32 %402, %403
  %idxprom526 = sext i32 %mul525 to i64
  %404 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %arrayidx527 = getelementptr inbounds i8, i8* %404, i64 %idxprom526
  store i8 %401, i8* %arrayidx527, align 1, !tbaa !9
  br label %if.end.528

if.end.528:                                       ; preds = %if.end.522, %for.end.454
  br label %do.body.529

do.body.529:                                      ; preds = %if.end.528
  br label %do.cond.530

do.cond.530:                                      ; preds = %do.body.529
  br label %do.end.531

do.end.531:                                       ; preds = %do.cond.530
  %405 = load i8*, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  %cmp532 = icmp ne i8* %405, null
  br i1 %cmp532, label %if.then.534, label %if.end.536

if.then.534:                                      ; preds = %do.end.531
  %406 = load i8*, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  %incdec.ptr535 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %incdec.ptr535, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  br label %if.end.536

if.end.536:                                       ; preds = %if.then.534, %do.end.531
  %407 = load i32, i32* %has_backdrop, align 4, !tbaa !1
  %tobool537 = icmp ne i32 %407, 0
  br i1 %tobool537, label %if.then.538, label %if.end.540

if.then.538:                                      ; preds = %if.end.536
  %408 = load i8*, i8** %backdrop_ptr, align 8, !tbaa !7
  %incdec.ptr539 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %incdec.ptr539, i8** %backdrop_ptr, align 8, !tbaa !7
  br label %if.end.540

if.end.540:                                       ; preds = %if.then.538, %if.end.536
  %409 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %incdec.ptr541 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %incdec.ptr541, i8** %tos_ptr, align 8, !tbaa !7
  %410 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %incdec.ptr542 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %incdec.ptr542, i8** %nos_ptr, align 8, !tbaa !7
  br label %for.inc.543

for.inc.543:                                      ; preds = %if.end.540
  %411 = load i32, i32* %x29, align 4, !tbaa !1
  %inc544 = add nsw i32 %411, 1
  store i32 %inc544, i32* %x29, align 4, !tbaa !1
  br label %for.cond.194

for.end.545:                                      ; preds = %for.cond.194
  %412 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %tos.addr, align 8, !tbaa !7
  %rowstride546 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %412, i32 0, i32 11
  %413 = load i32, i32* %rowstride546, align 4, !tbaa !53
  %414 = load i32, i32* %width, align 4, !tbaa !1
  %sub547 = sub nsw i32 %413, %414
  %415 = load i8*, i8** %tos_ptr, align 8, !tbaa !7
  %idx.ext548 = sext i32 %sub547 to i64
  %add.ptr549 = getelementptr inbounds i8, i8* %415, i64 %idx.ext548
  store i8* %add.ptr549, i8** %tos_ptr, align 8, !tbaa !7
  %416 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %rowstride550 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %416, i32 0, i32 11
  %417 = load i32, i32* %rowstride550, align 4, !tbaa !53
  %418 = load i32, i32* %width, align 4, !tbaa !1
  %sub551 = sub nsw i32 %417, %418
  %419 = load i8*, i8** %nos_ptr, align 8, !tbaa !7
  %idx.ext552 = sext i32 %sub551 to i64
  %add.ptr553 = getelementptr inbounds i8, i8* %419, i64 %idx.ext552
  store i8* %add.ptr553, i8** %nos_ptr, align 8, !tbaa !7
  %420 = load i8*, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  %cmp554 = icmp ne i8* %420, null
  br i1 %cmp554, label %if.then.556, label %if.end.561

if.then.556:                                      ; preds = %for.end.545
  %421 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %rowstride557 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %421, i32 0, i32 11
  %422 = load i32, i32* %rowstride557, align 4, !tbaa !53
  %423 = load i32, i32* %width, align 4, !tbaa !1
  %sub558 = sub nsw i32 %422, %423
  %424 = load i8*, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  %idx.ext559 = sext i32 %sub558 to i64
  %add.ptr560 = getelementptr inbounds i8, i8* %424, i64 %idx.ext559
  store i8* %add.ptr560, i8** %nos_alpha_g_ptr, align 8, !tbaa !7
  br label %if.end.561

if.end.561:                                       ; preds = %if.then.556, %for.end.545
  %425 = load i8*, i8** %mask_row_ptr, align 8, !tbaa !7
  %cmp562 = icmp ne i8* %425, null
  br i1 %cmp562, label %if.then.564, label %if.end.568

if.then.564:                                      ; preds = %if.end.561
  %426 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %maskbuf.addr, align 8, !tbaa !7
  %rowstride565 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %426, i32 0, i32 11
  %427 = load i32, i32* %rowstride565, align 4, !tbaa !53
  %428 = load i8*, i8** %mask_row_ptr, align 8, !tbaa !7
  %idx.ext566 = sext i32 %427 to i64
  %add.ptr567 = getelementptr inbounds i8, i8* %428, i64 %idx.ext566
  store i8* %add.ptr567, i8** %mask_row_ptr, align 8, !tbaa !7
  br label %if.end.568

if.end.568:                                       ; preds = %if.then.564, %if.end.561
  %429 = load i32, i32* %has_backdrop, align 4, !tbaa !1
  %tobool569 = icmp ne i32 %429, 0
  br i1 %tobool569, label %if.then.570, label %if.end.575

if.then.570:                                      ; preds = %if.end.568
  %430 = load %struct.pdf14_buf_s*, %struct.pdf14_buf_s** %nos.addr, align 8, !tbaa !7
  %rowstride571 = getelementptr inbounds %struct.pdf14_buf_s, %struct.pdf14_buf_s* %430, i32 0, i32 11
  %431 = load i32, i32* %rowstride571, align 4, !tbaa !53
  %432 = load i32, i32* %width, align 4, !tbaa !1
  %sub572 = sub nsw i32 %431, %432
  %433 = load i8*, i8** %backdrop_ptr, align 8, !tbaa !7
  %idx.ext573 = sext i32 %sub572 to i64
  %add.ptr574 = getelementptr inbounds i8, i8* %433, i64 %idx.ext573
  store i8* %add.ptr574, i8** %backdrop_ptr, align 8, !tbaa !7
  br label %if.end.575

if.end.575:                                       ; preds = %if.then.570, %if.end.568
  br label %for.inc.576

for.inc.576:                                      ; preds = %if.end.575
  %434 = load i32, i32* %y30, align 4, !tbaa !1
  %dec577 = add nsw i32 %434, -1
  store i32 %dec577, i32* %y30, align 4, !tbaa !1
  br label %for.cond

for.end.578:                                      ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.578, %if.then
  %435 = bitcast i8** %backdrop_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %435) #1
  %436 = bitcast i32* %has_backdrop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #1
  call void @llvm.lifetime.end(i64 1, i8* %pix_alpha) #1
  %437 = bitcast i32* %in_mask_rect to i8*
  call void @llvm.lifetime.end(i64 4, i8* %437) #1
  %438 = bitcast i32* %in_mask_rect_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %438) #1
  %439 = bitcast i32* %has_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %439) #1
  %440 = bitcast i64* %comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %440) #1
  %441 = bitcast i8** %mask_tr_fn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %441) #1
  %442 = bitcast i32* %nos_tag_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %442) #1
  %443 = bitcast i32* %nos_alpha_g_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %443) #1
  %444 = bitcast i32* %nos_shape_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %444) #1
  %445 = bitcast i32* %tos_tag_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %445) #1
  %446 = bitcast i32* %tos_has_tag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %446) #1
  %447 = bitcast i32* %tos_alpha_g_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %447) #1
  %448 = bitcast i32* %tos_shape_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %448) #1
  %449 = bitcast i8** %nos_alpha_g_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %449) #1
  %450 = bitcast i32* %nos_knockout to i8*
  call void @llvm.lifetime.end(i64 4, i8* %450) #1
  %451 = bitcast i32* %tos_isolated to i8*
  call void @llvm.lifetime.end(i64 4, i8* %451) #1
  %452 = bitcast [67 x i8]* %back_drop to i8*
  call void @llvm.lifetime.end(i64 67, i8* %452) #1
  %453 = bitcast [67 x i8]* %nos_pixel to i8*
  call void @llvm.lifetime.end(i64 67, i8* %453) #1
  %454 = bitcast [67 x i8]* %tos_pixel to i8*
  call void @llvm.lifetime.end(i64 67, i8* %454) #1
  %455 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %455) #1
  %456 = bitcast i32* %y30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %456) #1
  %457 = bitcast i32* %x29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %457) #1
  %458 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %458) #1
  call void @llvm.lifetime.end(i64 1, i8* %mask_bg_alpha) #1
  %459 = bitcast i32* %mask_planestride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %459) #1
  %460 = bitcast i32* %nos_planestride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %460) #1
  %461 = bitcast i32* %tos_planestride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %461) #1
  %462 = bitcast i8** %mask_curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %462) #1
  %463 = bitcast i8** %mask_row_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %463) #1
  %464 = bitcast i8** %nos_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %464) #1
  %465 = bitcast i8** %tos_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %465) #1
  %466 = bitcast i32* %blend_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %466) #1
  call void @llvm.lifetime.end(i64 1, i8* %shape) #1
  call void @llvm.lifetime.end(i64 1, i8* %alpha) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @art_pdf_composite_knockout_isolated_8(i8*, i8*, i8*, i8*, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i32) #2

declare void @art_pdf_composite_knockout_group_8(i8*, i8 zeroext, i8*, i8*, i8*, i32, i8 zeroext, i32, %struct.pdf14_nonseparable_blending_procs_s*) #2

declare void @art_pdf_composite_group_8(i8*, i8*, i8*, i32, i8 zeroext, i32, %struct.pdf14_nonseparable_blending_procs_s*) #2

declare void @art_pdf_recomposite_group_8(i8*, i8*, i8*, i8 zeroext, i32, i8 zeroext, i32, %struct.pdf14_nonseparable_blending_procs_s*) #2

declare zeroext i8 @art_pdf_union_mul_8(i8 zeroext, i8 zeroext, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define i64 @pdf14_encode_color(%struct.gx_device_s* %dev, i16* %colors) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %colors.addr = alloca i16*, align 8
  %color = alloca i64, align 8
  %i = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %COLROUND_M = alloca i32, align 4
  %COLROUND_S = alloca i32, align 4
  %COLROUND_R = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  store i16* %colors, i16** %colors.addr, align 8, !tbaa !7
  %0 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %color, align 8, !tbaa !5
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %4, i32* %ncomp, align 4, !tbaa !1
  %5 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 65281, i32* %COLROUND_M, align 4, !tbaa !1
  store i32 24, i32* %COLROUND_S, align 4, !tbaa !1
  %8 = load i32, i32* %COLROUND_S, align 4, !tbaa !1
  %sub = sub i32 %8, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* %COLROUND_R, align 4, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %10 = load i32, i32* %ncomp, align 4, !tbaa !1
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* %color, align 8, !tbaa !5
  %shl1 = shl i64 %11, 8
  store i64 %shl1, i64* %color, align 8, !tbaa !5
  %12 = load i32, i32* %COLROUND_M, align 4, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %13 to i64
  %14 = load i16*, i16** %colors.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !25
  %conv = zext i16 %15 to i32
  %mul = mul i32 %12, %conv
  %16 = load i32, i32* %COLROUND_R, align 4, !tbaa !1
  %add = add i32 %mul, %16
  %17 = load i32, i32* %COLROUND_S, align 4, !tbaa !1
  %shr = lshr i32 %add, %17
  %conv2 = zext i32 %shr to i64
  %18 = load i64, i64* %color, align 8, !tbaa !5
  %or = or i64 %18, %conv2
  store i64 %or, i64* %color, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i64, i64* %color, align 8, !tbaa !5
  %cmp3 = icmp eq i64 %20, -1
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %21 = load i64, i64* %color, align 8, !tbaa !5
  %xor = xor i64 %21, 1
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %22 = load i64, i64* %color, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %22, %cond.false ]
  %23 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i64 @pdf14_encode_color_tag(%struct.gx_device_s* %dev, i16* %colors) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %colors.addr = alloca i16*, align 8
  %color = alloca i64, align 8
  %i = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %COLROUND_M = alloca i32, align 4
  %COLROUND_S = alloca i32, align 4
  %COLROUND_R = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  store i16* %colors, i16** %colors.addr, align 8, !tbaa !7
  %0 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %4, i32* %ncomp, align 4, !tbaa !1
  %5 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 65281, i32* %COLROUND_M, align 4, !tbaa !1
  store i32 24, i32* %COLROUND_S, align 4, !tbaa !1
  %8 = load i32, i32* %COLROUND_S, align 4, !tbaa !1
  %sub = sub i32 %8, 1
  %shl = shl i32 1, %sub
  store i32 %shl, i32* %COLROUND_R, align 4, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 40
  %10 = load i32, i32* %graphics_type_tag, align 4, !tbaa !77
  %and = and i32 %10, -129
  %conv = zext i32 %and to i64
  store i64 %conv, i64* %color, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %12 = load i32, i32* %ncomp, align 4, !tbaa !1
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %color, align 8, !tbaa !5
  %shl2 = shl i64 %13, 8
  store i64 %shl2, i64* %color, align 8, !tbaa !5
  %14 = load i32, i32* %COLROUND_M, align 4, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %15 to i64
  %16 = load i16*, i16** %colors.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i16, i16* %16, i64 %idxprom
  %17 = load i16, i16* %arrayidx, align 2, !tbaa !25
  %conv3 = zext i16 %17 to i32
  %mul = mul i32 %14, %conv3
  %18 = load i32, i32* %COLROUND_R, align 4, !tbaa !1
  %add = add i32 %mul, %18
  %19 = load i32, i32* %COLROUND_S, align 4, !tbaa !1
  %shr = lshr i32 %add, %19
  %conv4 = zext i32 %shr to i64
  %20 = load i64, i64* %color, align 8, !tbaa !5
  %or = or i64 %20, %conv4
  store i64 %or, i64* %color, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i64, i64* %color, align 8, !tbaa !5
  %cmp5 = icmp eq i64 %22, -1
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %23 = load i64, i64* %color, align 8, !tbaa !5
  %xor = xor i64 %23, 1
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %24 = load i64, i64* %color, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %24, %cond.false ]
  %25 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @pdf14_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %ncomp = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  store i64 %color, i64* %color.addr, align 8, !tbaa !5
  store i16* %out, i16** %out.addr, align 8, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %3, i32* %ncomp, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %5 = load i32, i32* %ncomp, align 4, !tbaa !1
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %color.addr, align 8, !tbaa !5
  %and = and i64 %6, 255
  %mul = mul i64 %and, 257
  %conv = trunc i64 %mul to i16
  %7 = load i32, i32* %ncomp, align 4, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %sub = sub nsw i32 %7, %8
  %sub1 = sub nsw i32 %sub, 1
  %idxprom = sext i32 %sub1 to i64
  %9 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !25
  %10 = load i64, i64* %color.addr, align 8, !tbaa !5
  %shr = lshr i64 %10, 8
  store i64 %shr, i64* %color.addr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @pdf14_compressed_encode_color(%struct.gx_device_s* %dev, i16* %colors) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %colors.addr = alloca i16*, align 8
  %pdevn_params = alloca %struct.gs_devn_params_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  store i16* %colors, i16** %colors.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gs_devn_params_s** %pdevn_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.gs_devn_params_s* null, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !7
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 60
  %2 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !78
  %cmp = icmp ne %struct.gs_devn_params_s* (%struct.gx_device_s*)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %ret_devn_params2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 60
  %4 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params2, align 8, !tbaa !78
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %call = call %struct.gs_devn_params_s* %4(%struct.gx_device_s* %5) #5
  store %struct.gs_devn_params_s* %call, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !7
  %cmp3 = icmp eq %struct.gs_devn_params_s* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %8 = bitcast %struct.gx_device_s* %7 to %struct.pdf14_device_s*
  %devn_params = getelementptr inbounds %struct.pdf14_device_s, %struct.pdf14_device_s* %8, i32 0, i32 44
  store %struct.gs_devn_params_s* %devn_params, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !7
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %10 = load i16*, i16** %colors.addr, align 8, !tbaa !7
  %11 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !7
  %call6 = call i64 @devn_encode_compressed_color(%struct.gx_device_s* %9, i16* %10, %struct.gs_devn_params_s* %11) #5
  %12 = bitcast %struct.gs_devn_params_s** %pdevn_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i64 %call6
}

declare i64 @devn_encode_compressed_color(%struct.gx_device_s*, i16*, %struct.gs_devn_params_s*) #2

; Function Attrs: nounwind uwtable
define i32 @pdf14_compressed_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %out.addr = alloca i16*, align 8
  %pdevn_params = alloca %struct.gs_devn_params_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  store i64 %color, i64* %color.addr, align 8, !tbaa !5
  store i16* %out, i16** %out.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gs_devn_params_s** %pdevn_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.gs_devn_params_s* null, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !7
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 60
  %2 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !78
  %cmp = icmp ne %struct.gs_devn_params_s* (%struct.gx_device_s*)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %ret_devn_params2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 60
  %4 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params2, align 8, !tbaa !78
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %call = call %struct.gs_devn_params_s* %4(%struct.gx_device_s* %5) #5
  store %struct.gs_devn_params_s* %call, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !7
  %cmp3 = icmp eq %struct.gs_devn_params_s* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %8 = bitcast %struct.gx_device_s* %7 to %struct.pdf14_device_s*
  %devn_params = getelementptr inbounds %struct.pdf14_device_s, %struct.pdf14_device_s* %8, i32 0, i32 44
  store %struct.gs_devn_params_s* %devn_params, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !7
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %10 = load i64, i64* %color.addr, align 8, !tbaa !5
  %11 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %12 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params, align 8, !tbaa !7
  %call6 = call i32 @devn_decode_compressed_color(%struct.gx_device_s* %9, i64 %10, i16* %11, %struct.gs_devn_params_s* %12) #5
  %13 = bitcast %struct.gs_devn_params_s** %pdevn_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret i32 %call6
}

declare i32 @devn_decode_compressed_color(%struct.gx_device_s*, i64, i16*, %struct.gs_devn_params_s*) #2

; Function Attrs: nounwind uwtable
define void @pdf14_gray_cs_to_cmyk_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %num_comp = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !25
  store i16* %out, i16** %out.addr, align 8, !tbaa !7
  %0 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %2, i32* %num_comp, align 4, !tbaa !1
  %3 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !25
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx1 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !25
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 0, i16* %arrayidx2, align 2, !tbaa !25
  %6 = load i16, i16* %gray.addr, align 2, !tbaa !25
  %conv = sext i16 %6 to i32
  %sub = sub nsw i32 32760, %conv
  %conv3 = trunc i32 %sub to i16
  %7 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds i16, i16* %7, i64 3
  store i16 %conv3, i16* %arrayidx4, align 2, !tbaa !25
  %8 = load i32, i32* %num_comp, align 4, !tbaa !1
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %num_comp, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %num_comp, align 4, !tbaa !1
  %cmp = icmp sgt i32 %9, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %num_comp, align 4, !tbaa !1
  %idxprom = sext i32 %10 to i64
  %11 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx6 = getelementptr inbounds i16, i16* %11, i64 %idxprom
  store i16 0, i16* %arrayidx6, align 2, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %num_comp, align 4, !tbaa !1
  %dec7 = add nsw i32 %12, -1
  store i32 %dec7, i32* %num_comp, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @pdf14_rgb_cs_to_cmyk_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %num_comp = alloca i32, align 4
  %c = alloca i16, align 2
  %m = alloca i16, align 2
  %y = alloca i16, align 2
  %k = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !7
  store i16 %r, i16* %r.addr, align 2, !tbaa !25
  store i16 %g, i16* %g.addr, align 2, !tbaa !25
  store i16 %b, i16* %b.addr, align 2, !tbaa !25
  store i16* %out, i16** %out.addr, align 8, !tbaa !7
  %0 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %2, i32* %num_comp, align 4, !tbaa !1
  %3 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !7
  %cmp = icmp ne %struct.gs_imager_state_s* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i16, i16* %r.addr, align 2, !tbaa !25
  %5 = load i16, i16* %g.addr, align 2, !tbaa !25
  %6 = load i16, i16* %b.addr, align 2, !tbaa !25
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !7
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !79
  call void @color_rgb_to_cmyk(i16 signext %4, i16 signext %5, i16 signext %6, %struct.gs_imager_state_s* %7, i16* %8, %struct.gs_memory_s* %10) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  %12 = load i16, i16* %r.addr, align 2, !tbaa !25
  %conv = sext i16 %12 to i32
  %sub = sub nsw i32 32760, %conv
  %conv1 = trunc i32 %sub to i16
  store i16 %conv1, i16* %c, align 2, !tbaa !25
  %13 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  %14 = load i16, i16* %g.addr, align 2, !tbaa !25
  %conv2 = sext i16 %14 to i32
  %sub3 = sub nsw i32 32760, %conv2
  %conv4 = trunc i32 %sub3 to i16
  store i16 %conv4, i16* %m, align 2, !tbaa !25
  %15 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  %16 = load i16, i16* %b.addr, align 2, !tbaa !25
  %conv5 = sext i16 %16 to i32
  %sub6 = sub nsw i32 32760, %conv5
  %conv7 = trunc i32 %sub6 to i16
  store i16 %conv7, i16* %y, align 2, !tbaa !25
  %17 = bitcast i16* %k to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  %18 = load i16, i16* %c, align 2, !tbaa !25
  %conv8 = sext i16 %18 to i32
  %19 = load i16, i16* %m, align 2, !tbaa !25
  %conv9 = sext i16 %19 to i32
  %20 = load i16, i16* %y, align 2, !tbaa !25
  %conv10 = sext i16 %20 to i32
  %cmp11 = icmp slt i32 %conv9, %conv10
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %21 = load i16, i16* %m, align 2, !tbaa !25
  %conv13 = sext i16 %21 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %22 = load i16, i16* %y, align 2, !tbaa !25
  %conv14 = sext i16 %22 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv13, %cond.true ], [ %conv14, %cond.false ]
  %cmp15 = icmp slt i32 %conv8, %cond
  br i1 %cmp15, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %cond.end
  %23 = load i16, i16* %c, align 2, !tbaa !25
  %conv18 = sext i16 %23 to i32
  br label %cond.end.30

cond.false.19:                                    ; preds = %cond.end
  %24 = load i16, i16* %m, align 2, !tbaa !25
  %conv20 = sext i16 %24 to i32
  %25 = load i16, i16* %y, align 2, !tbaa !25
  %conv21 = sext i16 %25 to i32
  %cmp22 = icmp slt i32 %conv20, %conv21
  br i1 %cmp22, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.false.19
  %26 = load i16, i16* %m, align 2, !tbaa !25
  %conv25 = sext i16 %26 to i32
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.false.19
  %27 = load i16, i16* %y, align 2, !tbaa !25
  %conv27 = sext i16 %27 to i32
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi i32 [ %conv25, %cond.true.24 ], [ %conv27, %cond.false.26 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true.17
  %cond31 = phi i32 [ %conv18, %cond.true.17 ], [ %cond29, %cond.end.28 ]
  %conv32 = trunc i32 %cond31 to i16
  store i16 %conv32, i16* %k, align 2, !tbaa !25
  %28 = load i16, i16* %c, align 2, !tbaa !25
  %conv33 = sext i16 %28 to i32
  %29 = load i16, i16* %k, align 2, !tbaa !25
  %conv34 = sext i16 %29 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  %conv36 = trunc i32 %sub35 to i16
  %30 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i16, i16* %30, i64 0
  store i16 %conv36, i16* %arrayidx, align 2, !tbaa !25
  %31 = load i16, i16* %m, align 2, !tbaa !25
  %conv37 = sext i16 %31 to i32
  %32 = load i16, i16* %k, align 2, !tbaa !25
  %conv38 = sext i16 %32 to i32
  %sub39 = sub nsw i32 %conv37, %conv38
  %conv40 = trunc i32 %sub39 to i16
  %33 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx41 = getelementptr inbounds i16, i16* %33, i64 1
  store i16 %conv40, i16* %arrayidx41, align 2, !tbaa !25
  %34 = load i16, i16* %y, align 2, !tbaa !25
  %conv42 = sext i16 %34 to i32
  %35 = load i16, i16* %k, align 2, !tbaa !25
  %conv43 = sext i16 %35 to i32
  %sub44 = sub nsw i32 %conv42, %conv43
  %conv45 = trunc i32 %sub44 to i16
  %36 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx46 = getelementptr inbounds i16, i16* %36, i64 2
  store i16 %conv45, i16* %arrayidx46, align 2, !tbaa !25
  %37 = load i16, i16* %k, align 2, !tbaa !25
  %38 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx47 = getelementptr inbounds i16, i16* %38, i64 3
  store i16 %37, i16* %arrayidx47, align 2, !tbaa !25
  %39 = bitcast i16* %k to i8*
  call void @llvm.lifetime.end(i64 2, i8* %39) #1
  %40 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %40) #1
  %41 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %41) #1
  %42 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %42) #1
  br label %if.end

if.end:                                           ; preds = %cond.end.30, %if.then
  %43 = load i32, i32* %num_comp, align 4, !tbaa !1
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %num_comp, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %44 = load i32, i32* %num_comp, align 4, !tbaa !1
  %cmp48 = icmp sgt i32 %44, 3
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %num_comp, align 4, !tbaa !1
  %idxprom = sext i32 %45 to i64
  %46 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx50 = getelementptr inbounds i16, i16* %46, i64 %idxprom
  store i16 0, i16* %arrayidx50, align 2, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %num_comp, align 4, !tbaa !1
  %dec51 = add nsw i32 %47, -1
  store i32 %dec51, i32* %num_comp, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  ret void
}

declare void @color_rgb_to_cmyk(i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define void @pdf14_cmyk_cs_to_cmyk_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %num_comp = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  store i16 %c, i16* %c.addr, align 2, !tbaa !25
  store i16 %m, i16* %m.addr, align 2, !tbaa !25
  store i16 %y, i16* %y.addr, align 2, !tbaa !25
  store i16 %k, i16* %k.addr, align 2, !tbaa !25
  store i16* %out, i16** %out.addr, align 8, !tbaa !7
  %0 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !7
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %2, i32* %num_comp, align 4, !tbaa !1
  %3 = load i16, i16* %c.addr, align 2, !tbaa !25
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %3, i16* %arrayidx, align 2, !tbaa !25
  %5 = load i16, i16* %m.addr, align 2, !tbaa !25
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx1 = getelementptr inbounds i16, i16* %6, i64 1
  store i16 %5, i16* %arrayidx1, align 2, !tbaa !25
  %7 = load i16, i16* %y.addr, align 2, !tbaa !25
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx2 = getelementptr inbounds i16, i16* %8, i64 2
  store i16 %7, i16* %arrayidx2, align 2, !tbaa !25
  %9 = load i16, i16* %k.addr, align 2, !tbaa !25
  %10 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 3
  store i16 %9, i16* %arrayidx3, align 2, !tbaa !25
  %11 = load i32, i32* %num_comp, align 4, !tbaa !1
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %num_comp, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %num_comp, align 4, !tbaa !1
  %cmp = icmp sgt i32 %12, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %num_comp, align 4, !tbaa !1
  %idxprom = sext i32 %13 to i64
  %14 = load i16*, i16** %out.addr, align 8, !tbaa !7
  %arrayidx4 = getelementptr inbounds i16, i16* %14, i64 %idxprom
  store i16 0, i16* %arrayidx4, align 2, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %num_comp, align 4, !tbaa !1
  %dec5 = add nsw i32 %15, -1
  store i32 %dec5, i32* %num_comp, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_build_blended_image_row(i8* %buf_ptr, i32 %y, i32 %planestride, i32 %width, i32 %num_comp, i8 zeroext %bg, i8* %linebuf) #0 {
entry:
  %buf_ptr.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %planestride.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %num_comp.addr = alloca i32, align 4
  %bg.addr = alloca i8, align 1
  %linebuf.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %comp = alloca i8, align 1
  %a = alloca i8, align 1
  %tmp = alloca i32, align 4
  %comp_num = alloca i32, align 4
  store i8* %buf_ptr, i8** %buf_ptr.addr, align 8, !tbaa !7
  store i32 %y, i32* %y.addr, align 4, !tbaa !1
  store i32 %planestride, i32* %planestride.addr, align 4, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !1
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !1
  store i8 %bg, i8* %bg.addr, align 1, !tbaa !9
  store i8* %linebuf, i8** %linebuf.addr, align 8, !tbaa !7
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %entry
  %1 = load i32, i32* %x, align 4, !tbaa !1
  %2 = load i32, i32* %width.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %comp) #1
  call void @llvm.lifetime.start(i64 1, i8* %a) #1
  %3 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %x, align 4, !tbaa !1
  %6 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %7 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %5, %mul
  %idxprom = sext i32 %add to i64
  %8 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !9
  store i8 %9, i8* %a, align 1, !tbaa !9
  %10 = load i8, i8* %a, align 1, !tbaa !9
  %conv = zext i8 %10 to i32
  %add2 = add nsw i32 %conv, 1
  %and = and i32 %add2, 254
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i8, i8* %a, align 1, !tbaa !9
  %conv3 = zext i8 %11 to i32
  %xor = xor i32 %conv3, 255
  %conv4 = trunc i32 %xor to i8
  store i8 %conv4, i8* %a, align 1, !tbaa !9
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then
  %12 = load i32, i32* %comp_num, align 4, !tbaa !1
  %13 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %14 = load i32, i32* %x, align 4, !tbaa !1
  %15 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %16 = load i32, i32* %comp_num, align 4, !tbaa !1
  %mul9 = mul nsw i32 %15, %16
  %add10 = add nsw i32 %14, %mul9
  %idxprom11 = sext i32 %add10 to i64
  %17 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds i8, i8* %17, i64 %idxprom11
  %18 = load i8, i8* %arrayidx12, align 1, !tbaa !9
  store i8 %18, i8* %comp, align 1, !tbaa !9
  %19 = load i8, i8* %bg.addr, align 1, !tbaa !9
  %conv13 = zext i8 %19 to i32
  %20 = load i8, i8* %comp, align 1, !tbaa !9
  %conv14 = zext i8 %20 to i32
  %sub = sub nsw i32 %conv13, %conv14
  %21 = load i8, i8* %a, align 1, !tbaa !9
  %conv15 = zext i8 %21 to i32
  %mul16 = mul nsw i32 %sub, %conv15
  %add17 = add nsw i32 %mul16, 128
  store i32 %add17, i32* %tmp, align 4, !tbaa !1
  %22 = load i32, i32* %tmp, align 4, !tbaa !1
  %23 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %23, 8
  %add18 = add nsw i32 %22, %shr
  %shr19 = ashr i32 %add18, 8
  %24 = load i8, i8* %comp, align 1, !tbaa !9
  %conv20 = zext i8 %24 to i32
  %add21 = add nsw i32 %conv20, %shr19
  %conv22 = trunc i32 %add21 to i8
  store i8 %conv22, i8* %comp, align 1, !tbaa !9
  %25 = load i8, i8* %comp, align 1, !tbaa !9
  %26 = load i32, i32* %x, align 4, !tbaa !1
  %27 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %mul23 = mul nsw i32 %26, %27
  %28 = load i32, i32* %comp_num, align 4, !tbaa !1
  %add24 = add nsw i32 %mul23, %28
  %idxprom25 = sext i32 %add24 to i64
  %29 = load i8*, i8** %linebuf.addr, align 8, !tbaa !7
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 %idxprom25
  store i8 %25, i8* %arrayidx26, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %30 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %if.end.58

if.else:                                          ; preds = %for.body
  %31 = load i8, i8* %a, align 1, !tbaa !9
  %conv27 = zext i8 %31 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then.30, label %if.else.42

if.then.30:                                       ; preds = %if.else
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.39, %if.then.30
  %32 = load i32, i32* %comp_num, align 4, !tbaa !1
  %33 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %cmp32 = icmp slt i32 %32, %33
  br i1 %cmp32, label %for.body.34, label %for.end.41

for.body.34:                                      ; preds = %for.cond.31
  %34 = load i8, i8* %bg.addr, align 1, !tbaa !9
  %35 = load i32, i32* %x, align 4, !tbaa !1
  %36 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %mul35 = mul nsw i32 %35, %36
  %37 = load i32, i32* %comp_num, align 4, !tbaa !1
  %add36 = add nsw i32 %mul35, %37
  %idxprom37 = sext i32 %add36 to i64
  %38 = load i8*, i8** %linebuf.addr, align 8, !tbaa !7
  %arrayidx38 = getelementptr inbounds i8, i8* %38, i64 %idxprom37
  store i8 %34, i8* %arrayidx38, align 1, !tbaa !9
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.34
  %39 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc40 = add nsw i32 %39, 1
  store i32 %inc40, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.31

for.end.41:                                       ; preds = %for.cond.31
  br label %if.end

if.else.42:                                       ; preds = %if.else
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.55, %if.else.42
  %40 = load i32, i32* %comp_num, align 4, !tbaa !1
  %41 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %cmp44 = icmp slt i32 %40, %41
  br i1 %cmp44, label %for.body.46, label %for.end.57

for.body.46:                                      ; preds = %for.cond.43
  %42 = load i32, i32* %x, align 4, !tbaa !1
  %43 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %44 = load i32, i32* %comp_num, align 4, !tbaa !1
  %mul47 = mul nsw i32 %43, %44
  %add48 = add nsw i32 %42, %mul47
  %idxprom49 = sext i32 %add48 to i64
  %45 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx50 = getelementptr inbounds i8, i8* %45, i64 %idxprom49
  %46 = load i8, i8* %arrayidx50, align 1, !tbaa !9
  store i8 %46, i8* %comp, align 1, !tbaa !9
  %47 = load i8, i8* %comp, align 1, !tbaa !9
  %48 = load i32, i32* %x, align 4, !tbaa !1
  %49 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %mul51 = mul nsw i32 %48, %49
  %50 = load i32, i32* %comp_num, align 4, !tbaa !1
  %add52 = add nsw i32 %mul51, %50
  %idxprom53 = sext i32 %add52 to i64
  %51 = load i8*, i8** %linebuf.addr, align 8, !tbaa !7
  %arrayidx54 = getelementptr inbounds i8, i8* %51, i64 %idxprom53
  store i8 %47, i8* %arrayidx54, align 1, !tbaa !9
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.46
  %52 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc56 = add nsw i32 %52, 1
  store i32 %inc56, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.43

for.end.57:                                       ; preds = %for.cond.43
  br label %if.end

if.end:                                           ; preds = %for.end.57, %for.end.41
  br label %if.end.58

if.end.58:                                        ; preds = %if.end, %for.end
  %53 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  call void @llvm.lifetime.end(i64 1, i8* %a) #1
  call void @llvm.lifetime.end(i64 1, i8* %comp) #1
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %55 = load i32, i32* %x, align 4, !tbaa !1
  %inc60 = add nsw i32 %55, 1
  store i32 %inc60, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %56 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_blend_image_buffer(i8* %buf_ptr, i32 %width, i32 %height, i32 %rowstride, i32 %planestride, i32 %num_comp, i8 zeroext %bg) #0 {
entry:
  %buf_ptr.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %rowstride.addr = alloca i32, align 4
  %planestride.addr = alloca i32, align 4
  %num_comp.addr = alloca i32, align 4
  %bg.addr = alloca i8, align 1
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %position = alloca i32, align 4
  %comp = alloca i8, align 1
  %a = alloca i8, align 1
  %tmp = alloca i32, align 4
  %comp_num = alloca i32, align 4
  store i8* %buf_ptr, i8** %buf_ptr.addr, align 8, !tbaa !7
  store i32 %width, i32* %width.addr, align 4, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !1
  store i32 %rowstride, i32* %rowstride.addr, align 4, !tbaa !1
  store i32 %planestride, i32* %planestride.addr, align 4, !tbaa !1
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !1
  store i8 %bg, i8* %bg.addr, align 1, !tbaa !9
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  call void @llvm.lifetime.start(i64 1, i8* %comp) #1
  call void @llvm.lifetime.start(i64 1, i8* %a) #1
  %3 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %entry
  %5 = load i32, i32* %y, align 4, !tbaa !1
  %6 = load i32, i32* %height.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %y, align 4, !tbaa !1
  %8 = load i32, i32* %rowstride.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %7, %8
  store i32 %mul, i32* %position, align 4, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !1
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.48, %for.body
  %9 = load i32, i32* %x, align 4, !tbaa !1
  %10 = load i32, i32* %width.addr, align 4, !tbaa !1
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body.4, label %for.end.50

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %position, align 4, !tbaa !1
  %12 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %13 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %mul5 = mul nsw i32 %12, %13
  %add = add nsw i32 %11, %mul5
  %idxprom = sext i32 %add to i64
  %14 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !9
  store i8 %15, i8* %a, align 1, !tbaa !9
  %16 = load i8, i8* %a, align 1, !tbaa !9
  %conv = zext i8 %16 to i32
  %add6 = add nsw i32 %conv, 1
  %and = and i32 %add6, 254
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.4
  %17 = load i8, i8* %a, align 1, !tbaa !9
  %conv7 = zext i8 %17 to i32
  %xor = xor i32 %conv7, 255
  %conv8 = trunc i32 %xor to i8
  store i8 %conv8, i8* %a, align 1, !tbaa !9
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then
  %18 = load i32, i32* %comp_num, align 4, !tbaa !1
  %19 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %cmp10 = icmp slt i32 %18, %19
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %20 = load i32, i32* %position, align 4, !tbaa !1
  %21 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %22 = load i32, i32* %comp_num, align 4, !tbaa !1
  %mul13 = mul nsw i32 %21, %22
  %add14 = add nsw i32 %20, %mul13
  %idxprom15 = sext i32 %add14 to i64
  %23 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx16 = getelementptr inbounds i8, i8* %23, i64 %idxprom15
  %24 = load i8, i8* %arrayidx16, align 1, !tbaa !9
  store i8 %24, i8* %comp, align 1, !tbaa !9
  %25 = load i8, i8* %bg.addr, align 1, !tbaa !9
  %conv17 = zext i8 %25 to i32
  %26 = load i8, i8* %comp, align 1, !tbaa !9
  %conv18 = zext i8 %26 to i32
  %sub = sub nsw i32 %conv17, %conv18
  %27 = load i8, i8* %a, align 1, !tbaa !9
  %conv19 = zext i8 %27 to i32
  %mul20 = mul nsw i32 %sub, %conv19
  %add21 = add nsw i32 %mul20, 128
  store i32 %add21, i32* %tmp, align 4, !tbaa !1
  %28 = load i32, i32* %tmp, align 4, !tbaa !1
  %29 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %29, 8
  %add22 = add nsw i32 %28, %shr
  %shr23 = ashr i32 %add22, 8
  %30 = load i8, i8* %comp, align 1, !tbaa !9
  %conv24 = zext i8 %30 to i32
  %add25 = add nsw i32 %conv24, %shr23
  %conv26 = trunc i32 %add25 to i8
  store i8 %conv26, i8* %comp, align 1, !tbaa !9
  %31 = load i8, i8* %comp, align 1, !tbaa !9
  %32 = load i32, i32* %position, align 4, !tbaa !1
  %33 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %34 = load i32, i32* %comp_num, align 4, !tbaa !1
  %mul27 = mul nsw i32 %33, %34
  %add28 = add nsw i32 %32, %mul27
  %idxprom29 = sext i32 %add28 to i64
  %35 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx30 = getelementptr inbounds i8, i8* %35, i64 %idxprom29
  store i8 %31, i8* %arrayidx30, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %36 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %if.end.46

if.else:                                          ; preds = %for.body.4
  %37 = load i8, i8* %a, align 1, !tbaa !9
  %conv31 = zext i8 %37 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %if.else
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.43, %if.then.34
  %38 = load i32, i32* %comp_num, align 4, !tbaa !1
  %39 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %cmp36 = icmp slt i32 %38, %39
  br i1 %cmp36, label %for.body.38, label %for.end.45

for.body.38:                                      ; preds = %for.cond.35
  %40 = load i8, i8* %bg.addr, align 1, !tbaa !9
  %41 = load i32, i32* %position, align 4, !tbaa !1
  %42 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %43 = load i32, i32* %comp_num, align 4, !tbaa !1
  %mul39 = mul nsw i32 %42, %43
  %add40 = add nsw i32 %41, %mul39
  %idxprom41 = sext i32 %add40 to i64
  %44 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx42 = getelementptr inbounds i8, i8* %44, i64 %idxprom41
  store i8 %40, i8* %arrayidx42, align 1, !tbaa !9
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.38
  %45 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc44 = add nsw i32 %45, 1
  store i32 %inc44, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.35

for.end.45:                                       ; preds = %for.cond.35
  br label %if.end

if.end:                                           ; preds = %for.end.45, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end, %for.end
  %46 = load i32, i32* %position, align 4, !tbaa !1
  %add47 = add nsw i32 %46, 1
  store i32 %add47, i32* %position, align 4, !tbaa !1
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.46
  %47 = load i32, i32* %x, align 4, !tbaa !1
  %inc49 = add nsw i32 %47, 1
  store i32 %inc49, i32* %x, align 4, !tbaa !1
  br label %for.cond.2

for.end.50:                                       ; preds = %for.cond.2
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %48 = load i32, i32* %y, align 4, !tbaa !1
  %inc52 = add nsw i32 %48, 1
  store i32 %inc52, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  %49 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  call void @llvm.lifetime.end(i64 1, i8* %a) #1
  call void @llvm.lifetime.end(i64 1, i8* %comp) #1
  %51 = bitcast i32* %position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_put_blended_image_cmykspot(%struct.gx_device_s* %target, i8* %buf_ptr, i32 %planestride, i32 %rowstride, i32 %x0, i32 %y0, i32 %width, i32 %height, i32 %num_comp, i8 zeroext %bg, i32 %has_tags, %struct.gs_int_rect_s* byval align 8 %rect, %struct.gs_separations_s* %pseparations) #0 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca %struct.gx_device_s*, align 8
  %buf_ptr.addr = alloca i8*, align 8
  %planestride.addr = alloca i32, align 4
  %rowstride.addr = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %num_comp.addr = alloca i32, align 4
  %bg.addr = alloca i8, align 1
  %has_tags.addr = alloca i32, align 4
  %pseparations.addr = alloca %struct.gs_separations_s*, align 8
  %code = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %comp_num = alloca i32, align 4
  %output_comp_num = alloca i32, align 4
  %color = alloca i64, align 8
  %cv = alloca [64 x i16], align 16
  %comp = alloca i16, align 2
  %a = alloca i8, align 1
  %input_map = alloca [64 x i32], align 16
  %output_map = alloca [64 x i32], align 16
  %num_known_comp = alloca i32, align 4
  %output_num_comp = alloca i32, align 4
  %num_sep = alloca i32, align 4
  %num_rows_left = alloca i32, align 4
  %pcomp_name = alloca i8*, align 8
  %alpha_offset = alloca i32, align 4
  %tag_offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  store i8* %buf_ptr, i8** %buf_ptr.addr, align 8, !tbaa !7
  store i32 %planestride, i32* %planestride.addr, align 4, !tbaa !1
  store i32 %rowstride, i32* %rowstride.addr, align 4, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !1
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !1
  store i8 %bg, i8* %bg.addr, align 1, !tbaa !9
  store i32 %has_tags, i32* %has_tags.addr, align 4, !tbaa !1
  store %struct.gs_separations_s* %pseparations, %struct.gs_separations_s** %pseparations.addr, align 8, !tbaa !7
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !1
  %1 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %output_comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %7) #1
  %8 = bitcast i16* %comp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #1
  call void @llvm.lifetime.start(i64 1, i8* %a) #1
  %9 = bitcast [64 x i32]* %input_map to i8*
  call void @llvm.lifetime.start(i64 256, i8* %9) #1
  %10 = bitcast [64 x i32]* %output_map to i8*
  call void @llvm.lifetime.start(i64 256, i8* %10) #1
  %11 = bitcast i32* %num_known_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %num_known_comp, align 4, !tbaa !1
  %12 = bitcast i32* %output_num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %14 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %14, i32* %output_num_comp, align 4, !tbaa !1
  %15 = bitcast i32* %num_sep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_separations_s*, %struct.gs_separations_s** %pseparations.addr, align 8, !tbaa !7
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %16, i32 0, i32 0
  %17 = load i32, i32* %num_separations, align 4, !tbaa !80
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %num_separations, align 4, !tbaa !80
  store i32 %17, i32* %num_sep, align 4, !tbaa !1
  %18 = bitcast i32* %num_rows_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %comp_num, align 4, !tbaa !1
  %cmp = icmp slt i32 %19, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = bitcast i8** %pcomp_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @DeviceCMYKComponents, i32 0, i64 %idxprom
  %22 = load i8*, i8** %arrayidx, align 8, !tbaa !7
  store i8* %22, i8** %pcomp_name, align 8, !tbaa !7
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 50
  %24 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !81
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %26 = load i8*, i8** %pcomp_name, align 8, !tbaa !7
  %27 = load i8*, i8** %pcomp_name, align 8, !tbaa !7
  %call = call i64 @strlen(i8* %27) #7
  %conv = trunc i64 %call to i32
  %call14 = call i32 %24(%struct.gx_device_s* %25, i8* %26, i32 %conv, i32 0) #5
  store i32 %call14, i32* %output_comp_num, align 4, !tbaa !1
  %28 = load i32, i32* %output_comp_num, align 4, !tbaa !1
  %cmp15 = icmp sge i32 %28, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %29 = load i32, i32* %output_comp_num, align 4, !tbaa !1
  %cmp17 = icmp slt i32 %29, 64
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %30 = load i32, i32* %output_comp_num, align 4, !tbaa !1
  %31 = load i32, i32* %num_known_comp, align 4, !tbaa !1
  %idxprom19 = sext i32 %31 to i64
  %arrayidx20 = getelementptr inbounds [64 x i32], [64 x i32]* %output_map, i32 0, i64 %idxprom19
  store i32 %30, i32* %arrayidx20, align 4, !tbaa !1
  %32 = load i32, i32* %comp_num, align 4, !tbaa !1
  %33 = load i32, i32* %num_known_comp, align 4, !tbaa !1
  %inc21 = add nsw i32 %33, 1
  store i32 %inc21, i32* %num_known_comp, align 4, !tbaa !1
  %idxprom22 = sext i32 %33 to i64
  %arrayidx23 = getelementptr inbounds [64 x i32], [64 x i32]* %input_map, i32 0, i64 %idxprom22
  store i32 %32, i32* %arrayidx23, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %34 = bitcast i8** %pcomp_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %35 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc24 = add nsw i32 %35, 1
  store i32 %inc24, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.49, %for.end
  %36 = load i32, i32* %comp_num, align 4, !tbaa !1
  %37 = load i32, i32* %num_sep, align 4, !tbaa !1
  %cmp26 = icmp slt i32 %36, %37
  br i1 %cmp26, label %for.body.28, label %for.end.51

for.body.28:                                      ; preds = %for.cond.25
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %procs29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 42
  %get_color_comp_index30 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs29, i32 0, i32 50
  %39 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index30, align 8, !tbaa !81
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %41 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom31 = sext i32 %41 to i64
  %42 = load %struct.gs_separations_s*, %struct.gs_separations_s** %pseparations.addr, align 8, !tbaa !7
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %42, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom31
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx32, i32 0, i32 1
  %43 = load i8*, i8** %data, align 8, !tbaa !82
  %44 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.gs_separations_s*, %struct.gs_separations_s** %pseparations.addr, align 8, !tbaa !7
  %names34 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %45, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names34, i32 0, i64 %idxprom33
  %size = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx35, i32 0, i32 0
  %46 = load i32, i32* %size, align 4, !tbaa !84
  %call36 = call i32 %39(%struct.gx_device_s* %40, i8* %43, i32 %46, i32 0) #5
  store i32 %call36, i32* %output_comp_num, align 4, !tbaa !1
  %47 = load i32, i32* %output_comp_num, align 4, !tbaa !1
  %cmp37 = icmp sge i32 %47, 0
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.48

land.lhs.true.39:                                 ; preds = %for.body.28
  %48 = load i32, i32* %output_comp_num, align 4, !tbaa !1
  %cmp40 = icmp slt i32 %48, 64
  br i1 %cmp40, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %land.lhs.true.39
  %49 = load i32, i32* %output_comp_num, align 4, !tbaa !1
  %50 = load i32, i32* %num_known_comp, align 4, !tbaa !1
  %idxprom43 = sext i32 %50 to i64
  %arrayidx44 = getelementptr inbounds [64 x i32], [64 x i32]* %output_map, i32 0, i64 %idxprom43
  store i32 %49, i32* %arrayidx44, align 4, !tbaa !1
  %51 = load i32, i32* %comp_num, align 4, !tbaa !1
  %add = add nsw i32 %51, 4
  %52 = load i32, i32* %num_known_comp, align 4, !tbaa !1
  %inc45 = add nsw i32 %52, 1
  store i32 %inc45, i32* %num_known_comp, align 4, !tbaa !1
  %idxprom46 = sext i32 %52 to i64
  %arrayidx47 = getelementptr inbounds [64 x i32], [64 x i32]* %input_map, i32 0, i64 %idxprom46
  store i32 %add, i32* %arrayidx47, align 4, !tbaa !1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.42, %land.lhs.true.39, %for.body.28
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %53 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc50 = add nsw i32 %53, 1
  store i32 %inc50, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.25

for.end.51:                                       ; preds = %for.cond.25
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %procs52 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 42
  %put_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs52, i32 0, i32 64
  %55 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %put_image, align 8, !tbaa !85
  %cmp53 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %55, null
  br i1 %cmp53, label %if.then.55, label %if.end.96

if.then.55:                                       ; preds = %for.end.51
  %56 = bitcast i32* %alpha_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  store i32 %57, i32* %alpha_offset, align 4, !tbaa !1
  %58 = bitcast i32* %tag_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load i32, i32* %has_tags.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.55
  %60 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %add58 = add nsw i32 %60, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add58, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %tag_offset, align 4, !tbaa !1
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %procs59 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 42
  %put_image60 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs59, i32 0, i32 64
  %62 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %put_image60, align 8, !tbaa !85
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %64 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %65 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x61 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %66 = load i32, i32* %x61, align 4, !tbaa !86
  %p62 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y63 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p62, i32 0, i32 1
  %67 = load i32, i32* %y63, align 4, !tbaa !87
  %68 = load i32, i32* %width.addr, align 4, !tbaa !1
  %69 = load i32, i32* %height.addr, align 4, !tbaa !1
  %70 = load i32, i32* %rowstride.addr, align 4, !tbaa !1
  %71 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %72 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %73 = load i32, i32* %tag_offset, align 4, !tbaa !1
  %call64 = call i32 %62(%struct.gx_device_s* %63, i8* %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73) #5
  store i32 %call64, i32* %code, align 4, !tbaa !1
  %74 = load i32, i32* %code, align 4, !tbaa !1
  %cmp65 = icmp eq i32 %74, 0
  br i1 %cmp65, label %if.then.67, label %if.end.75

if.then.67:                                       ; preds = %cond.end
  %75 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %76 = load i32, i32* %width.addr, align 4, !tbaa !1
  %77 = load i32, i32* %height.addr, align 4, !tbaa !1
  %78 = load i32, i32* %rowstride.addr, align 4, !tbaa !1
  %79 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %80 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %81 = load i8, i8* %bg.addr, align 1, !tbaa !9
  call void @gx_blend_image_buffer(i8* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i8 zeroext %81) #5
  store i32 0, i32* %alpha_offset, align 4, !tbaa !1
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %procs68 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %82, i32 0, i32 42
  %put_image69 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs68, i32 0, i32 64
  %83 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %put_image69, align 8, !tbaa !85
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %85 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %86 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %p70 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x71 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p70, i32 0, i32 0
  %87 = load i32, i32* %x71, align 4, !tbaa !86
  %p72 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y73 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p72, i32 0, i32 1
  %88 = load i32, i32* %y73, align 4, !tbaa !87
  %89 = load i32, i32* %width.addr, align 4, !tbaa !1
  %90 = load i32, i32* %height.addr, align 4, !tbaa !1
  %91 = load i32, i32* %rowstride.addr, align 4, !tbaa !1
  %92 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %93 = load i32, i32* %alpha_offset, align 4, !tbaa !1
  %94 = load i32, i32* %tag_offset, align 4, !tbaa !1
  %call74 = call i32 %83(%struct.gx_device_s* %84, i8* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94) #5
  store i32 %call74, i32* %code, align 4, !tbaa !1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.67, %cond.end
  %95 = load i32, i32* %code, align 4, !tbaa !1
  %cmp76 = icmp sgt i32 %95, 0
  br i1 %cmp76, label %if.then.78, label %if.end.94

if.then.78:                                       ; preds = %if.end.75
  %96 = load i32, i32* %height.addr, align 4, !tbaa !1
  %97 = load i32, i32* %code, align 4, !tbaa !1
  %sub = sub nsw i32 %96, %97
  store i32 %sub, i32* %num_rows_left, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.92, %if.then.78
  %98 = load i32, i32* %num_rows_left, align 4, !tbaa !1
  %cmp79 = icmp sgt i32 %98, 0
  br i1 %cmp79, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %procs81 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %99, i32 0, i32 42
  %put_image82 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs81, i32 0, i32 64
  %100 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %put_image82, align 8, !tbaa !85
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %102 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %103 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %p83 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x84 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p83, i32 0, i32 0
  %104 = load i32, i32* %x84, align 4, !tbaa !86
  %p85 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y86 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p85, i32 0, i32 1
  %105 = load i32, i32* %y86, align 4, !tbaa !87
  %106 = load i32, i32* %code, align 4, !tbaa !1
  %add87 = add nsw i32 %105, %106
  %107 = load i32, i32* %width.addr, align 4, !tbaa !1
  %108 = load i32, i32* %num_rows_left, align 4, !tbaa !1
  %109 = load i32, i32* %rowstride.addr, align 4, !tbaa !1
  %110 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %111 = load i32, i32* %alpha_offset, align 4, !tbaa !1
  %112 = load i32, i32* %tag_offset, align 4, !tbaa !1
  %call88 = call i32 %100(%struct.gx_device_s* %101, i8* %102, i32 %103, i32 %104, i32 %add87, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112) #5
  store i32 %call88, i32* %code, align 4, !tbaa !1
  %113 = load i32, i32* %code, align 4, !tbaa !1
  %cmp89 = icmp slt i32 %113, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %while.body
  %114 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %while.body
  %115 = load i32, i32* %num_rows_left, align 4, !tbaa !1
  %116 = load i32, i32* %code, align 4, !tbaa !1
  %sub93 = sub nsw i32 %115, %116
  store i32 %sub93, i32* %num_rows_left, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.94:                                        ; preds = %if.end.75
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.94, %while.end, %if.then.91
  %117 = bitcast i32* %tag_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %alpha_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.206 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.96

if.end.96:                                        ; preds = %cleanup.cont, %for.end.51
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.103, %if.end.96
  %119 = load i32, i32* %comp_num, align 4, !tbaa !1
  %120 = load i32, i32* %output_num_comp, align 4, !tbaa !1
  %cmp98 = icmp slt i32 %119, %120
  br i1 %cmp98, label %for.body.100, label %for.end.105

for.body.100:                                     ; preds = %for.cond.97
  %121 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom101 = sext i32 %121 to i64
  %arrayidx102 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom101
  store i16 0, i16* %arrayidx102, align 2, !tbaa !25
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.100
  %122 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc104 = add nsw i32 %122, 1
  store i32 %inc104, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.97

for.end.105:                                      ; preds = %for.cond.97
  store i32 0, i32* %y, align 4, !tbaa !1
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.203, %for.end.105
  %123 = load i32, i32* %y, align 4, !tbaa !1
  %124 = load i32, i32* %height.addr, align 4, !tbaa !1
  %cmp107 = icmp slt i32 %123, %124
  br i1 %cmp107, label %for.body.109, label %for.end.205

for.body.109:                                     ; preds = %for.cond.106
  store i32 0, i32* %x, align 4, !tbaa !1
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.200, %for.body.109
  %125 = load i32, i32* %x, align 4, !tbaa !1
  %126 = load i32, i32* %width.addr, align 4, !tbaa !1
  %cmp111 = icmp slt i32 %125, %126
  br i1 %cmp111, label %for.body.113, label %for.end.202

for.body.113:                                     ; preds = %for.cond.110
  %127 = load i32, i32* %x, align 4, !tbaa !1
  %128 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %129 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %128, %129
  %add114 = add nsw i32 %127, %mul
  %idxprom115 = sext i32 %add114 to i64
  %130 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx116 = getelementptr inbounds i8, i8* %130, i64 %idxprom115
  %131 = load i8, i8* %arrayidx116, align 1, !tbaa !9
  store i8 %131, i8* %a, align 1, !tbaa !9
  %132 = load i8, i8* %a, align 1, !tbaa !9
  %conv117 = zext i8 %132 to i32
  %add118 = add nsw i32 %conv117, 1
  %and = and i32 %add118, 254
  %tobool119 = icmp ne i32 %and, 0
  br i1 %tobool119, label %if.then.120, label %if.else

if.then.120:                                      ; preds = %for.body.113
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.146, %if.then.120
  %133 = load i32, i32* %comp_num, align 4, !tbaa !1
  %134 = load i32, i32* %num_known_comp, align 4, !tbaa !1
  %cmp122 = icmp slt i32 %133, %134
  br i1 %cmp122, label %for.body.124, label %for.end.148

for.body.124:                                     ; preds = %for.cond.121
  %135 = load i32, i32* %x, align 4, !tbaa !1
  %136 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %137 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom125 = sext i32 %137 to i64
  %arrayidx126 = getelementptr inbounds [64 x i32], [64 x i32]* %input_map, i32 0, i64 %idxprom125
  %138 = load i32, i32* %arrayidx126, align 4, !tbaa !1
  %mul127 = mul nsw i32 %136, %138
  %add128 = add nsw i32 %135, %mul127
  %idxprom129 = sext i32 %add128 to i64
  %139 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx130 = getelementptr inbounds i8, i8* %139, i64 %idxprom129
  %140 = load i8, i8* %arrayidx130, align 1, !tbaa !9
  %conv131 = zext i8 %140 to i16
  store i16 %conv131, i16* %comp, align 2, !tbaa !25
  %141 = load i16, i16* %comp, align 2, !tbaa !25
  %conv132 = zext i16 %141 to i32
  %142 = load i8, i8* %bg.addr, align 1, !tbaa !9
  %conv133 = zext i8 %142 to i32
  %sub134 = sub nsw i32 %conv132, %conv133
  %143 = load i8, i8* %a, align 1, !tbaa !9
  %conv135 = zext i8 %143 to i32
  %mul136 = mul nsw i32 %sub134, %conv135
  %add137 = add nsw i32 %mul136, 128
  store i32 %add137, i32* %tmp, align 4, !tbaa !1
  %144 = load i32, i32* %tmp, align 4, !tbaa !1
  %145 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %145, 8
  %add138 = add nsw i32 %144, %shr
  %146 = load i16, i16* %comp, align 2, !tbaa !25
  %conv139 = zext i16 %146 to i32
  %add140 = add nsw i32 %conv139, %add138
  %conv141 = trunc i32 %add140 to i16
  store i16 %conv141, i16* %comp, align 2, !tbaa !25
  %147 = load i16, i16* %comp, align 2, !tbaa !25
  %148 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom142 = sext i32 %148 to i64
  %arrayidx143 = getelementptr inbounds [64 x i32], [64 x i32]* %output_map, i32 0, i64 %idxprom142
  %149 = load i32, i32* %arrayidx143, align 4, !tbaa !1
  %idxprom144 = sext i32 %149 to i64
  %arrayidx145 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom144
  store i16 %147, i16* %arrayidx145, align 2, !tbaa !25
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.124
  %150 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc147 = add nsw i32 %150, 1
  store i32 %inc147, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.121

for.end.148:                                      ; preds = %for.cond.121
  br label %if.end.189

if.else:                                          ; preds = %for.body.113
  %151 = load i8, i8* %a, align 1, !tbaa !9
  %conv149 = zext i8 %151 to i32
  %cmp150 = icmp eq i32 %conv149, 0
  br i1 %cmp150, label %if.then.152, label %if.else.165

if.then.152:                                      ; preds = %if.else
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.162, %if.then.152
  %152 = load i32, i32* %comp_num, align 4, !tbaa !1
  %153 = load i32, i32* %num_known_comp, align 4, !tbaa !1
  %cmp154 = icmp slt i32 %152, %153
  br i1 %cmp154, label %for.body.156, label %for.end.164

for.body.156:                                     ; preds = %for.cond.153
  %154 = load i8, i8* %bg.addr, align 1, !tbaa !9
  %conv157 = zext i8 %154 to i16
  %155 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom158 = sext i32 %155 to i64
  %arrayidx159 = getelementptr inbounds [64 x i32], [64 x i32]* %output_map, i32 0, i64 %idxprom158
  %156 = load i32, i32* %arrayidx159, align 4, !tbaa !1
  %idxprom160 = sext i32 %156 to i64
  %arrayidx161 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom160
  store i16 %conv157, i16* %arrayidx161, align 2, !tbaa !25
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.156
  %157 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc163 = add nsw i32 %157, 1
  store i32 %inc163, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.153

for.end.164:                                      ; preds = %for.cond.153
  br label %if.end.188

if.else.165:                                      ; preds = %if.else
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.185, %if.else.165
  %158 = load i32, i32* %comp_num, align 4, !tbaa !1
  %159 = load i32, i32* %num_known_comp, align 4, !tbaa !1
  %cmp167 = icmp slt i32 %158, %159
  br i1 %cmp167, label %for.body.169, label %for.end.187

for.body.169:                                     ; preds = %for.cond.166
  %160 = load i32, i32* %x, align 4, !tbaa !1
  %161 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %162 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom170 = sext i32 %162 to i64
  %arrayidx171 = getelementptr inbounds [64 x i32], [64 x i32]* %input_map, i32 0, i64 %idxprom170
  %163 = load i32, i32* %arrayidx171, align 4, !tbaa !1
  %mul172 = mul nsw i32 %161, %163
  %add173 = add nsw i32 %160, %mul172
  %idxprom174 = sext i32 %add173 to i64
  %164 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx175 = getelementptr inbounds i8, i8* %164, i64 %idxprom174
  %165 = load i8, i8* %arrayidx175, align 1, !tbaa !9
  %conv176 = zext i8 %165 to i16
  store i16 %conv176, i16* %comp, align 2, !tbaa !25
  %166 = load i16, i16* %comp, align 2, !tbaa !25
  %conv177 = zext i16 %166 to i32
  %shl = shl i32 %conv177, 8
  %167 = load i16, i16* %comp, align 2, !tbaa !25
  %conv178 = zext i16 %167 to i32
  %add179 = add nsw i32 %shl, %conv178
  %conv180 = trunc i32 %add179 to i16
  %168 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom181 = sext i32 %168 to i64
  %arrayidx182 = getelementptr inbounds [64 x i32], [64 x i32]* %output_map, i32 0, i64 %idxprom181
  %169 = load i32, i32* %arrayidx182, align 4, !tbaa !1
  %idxprom183 = sext i32 %169 to i64
  %arrayidx184 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom183
  store i16 %conv180, i16* %arrayidx184, align 2, !tbaa !25
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.169
  %170 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc186 = add nsw i32 %170, 1
  store i32 %inc186, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.166

for.end.187:                                      ; preds = %for.cond.166
  br label %if.end.188

if.end.188:                                       ; preds = %for.end.187, %for.end.164
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %for.end.148
  %171 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %procs190 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %171, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs190, i32 0, i32 51
  %172 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !88
  %173 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call191 = call i64 %172(%struct.gx_device_s* %173, i16* %arraydecay) #5
  store i64 %call191, i64* %color, align 8, !tbaa !5
  %174 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %procs192 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %174, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs192, i32 0, i32 7
  %175 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !89
  %176 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %177 = load i32, i32* %x, align 4, !tbaa !1
  %178 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %add193 = add nsw i32 %177, %178
  %179 = load i32, i32* %y, align 4, !tbaa !1
  %180 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %add194 = add nsw i32 %179, %180
  %181 = load i64, i64* %color, align 8, !tbaa !5
  %call195 = call i32 %175(%struct.gx_device_s* %176, i32 %add193, i32 %add194, i32 1, i32 1, i64 %181) #5
  store i32 %call195, i32* %code, align 4, !tbaa !1
  %182 = load i32, i32* %code, align 4, !tbaa !1
  %cmp196 = icmp slt i32 %182, 0
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.end.189
  %183 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %183, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

if.end.199:                                       ; preds = %if.end.189
  br label %for.inc.200

for.inc.200:                                      ; preds = %if.end.199
  %184 = load i32, i32* %x, align 4, !tbaa !1
  %inc201 = add nsw i32 %184, 1
  store i32 %inc201, i32* %x, align 4, !tbaa !1
  br label %for.cond.110

for.end.202:                                      ; preds = %for.cond.110
  %185 = load i32, i32* %rowstride.addr, align 4, !tbaa !1
  %186 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %idx.ext = sext i32 %185 to i64
  %add.ptr = getelementptr inbounds i8, i8* %186, i64 %idx.ext
  store i8* %add.ptr, i8** %buf_ptr.addr, align 8, !tbaa !7
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.end.202
  %187 = load i32, i32* %y, align 4, !tbaa !1
  %inc204 = add nsw i32 %187, 1
  store i32 %inc204, i32* %y, align 4, !tbaa !1
  br label %for.cond.106

for.end.205:                                      ; preds = %for.cond.106
  %188 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %188, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.206

cleanup.206:                                      ; preds = %for.end.205, %if.then.198, %cleanup
  %189 = bitcast i32* %num_rows_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %num_sep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %output_num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %num_known_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast [64 x i32]* %output_map to i8*
  call void @llvm.lifetime.end(i64 256, i8* %193) #1
  %194 = bitcast [64 x i32]* %input_map to i8*
  call void @llvm.lifetime.end(i64 256, i8* %194) #1
  call void @llvm.lifetime.end(i64 1, i8* %a) #1
  %195 = bitcast i16* %comp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %195) #1
  %196 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %196) #1
  %197 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast i32* %output_comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = load i32, i32* %retval
  ret i32 %204
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @gx_put_blended_image_custom(%struct.gx_device_s* %target, i8* %buf_ptr, i32 %planestride, i32 %rowstride, i32 %x0, i32 %y0, i32 %width, i32 %height, i32 %num_comp, i8 zeroext %bg) #0 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca %struct.gx_device_s*, align 8
  %buf_ptr.addr = alloca i8*, align 8
  %planestride.addr = alloca i32, align 4
  %rowstride.addr = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %num_comp.addr = alloca i32, align 4
  %bg.addr = alloca i8, align 1
  %code = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %comp_num = alloca i32, align 4
  %color = alloca i64, align 8
  %cv = alloca [64 x i16], align 16
  %comp = alloca i16, align 2
  %a = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  store i8* %buf_ptr, i8** %buf_ptr.addr, align 8, !tbaa !7
  store i32 %planestride, i32* %planestride.addr, align 4, !tbaa !1
  store i32 %rowstride, i32* %rowstride.addr, align 4, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !1
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !1
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !1
  store i8 %bg, i8* %bg.addr, align 1, !tbaa !9
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !1
  %1 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %6) #1
  %7 = bitcast i16* %comp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  call void @llvm.lifetime.start(i64 1, i8* %a) #1
  store i32 0, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.77, %entry
  %8 = load i32, i32* %y, align 4, !tbaa !1
  %9 = load i32, i32* %height.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.79

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4, !tbaa !1
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.74, %for.body
  %10 = load i32, i32* %x, align 4, !tbaa !1
  %11 = load i32, i32* %width.addr, align 4, !tbaa !1
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body.8, label %for.end.76

for.body.8:                                       ; preds = %for.cond.6
  %12 = load i32, i32* %x, align 4, !tbaa !1
  %13 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %14 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %13, %14
  %add = add nsw i32 %12, %mul
  %idxprom = sext i32 %add to i64
  %15 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !9
  store i8 %16, i8* %a, align 1, !tbaa !9
  %17 = load i8, i8* %a, align 1, !tbaa !9
  %conv = zext i8 %17 to i32
  %add9 = add nsw i32 %conv, 1
  %and = and i32 %add9, 254
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.8
  %18 = load i8, i8* %a, align 1, !tbaa !9
  %conv10 = zext i8 %18 to i32
  %xor = xor i32 %conv10, 255
  %conv11 = trunc i32 %xor to i8
  store i8 %conv11, i8* %a, align 1, !tbaa !9
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then
  %19 = load i32, i32* %comp_num, align 4, !tbaa !1
  %20 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %cmp13 = icmp slt i32 %19, %20
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %21 = load i32, i32* %x, align 4, !tbaa !1
  %22 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %23 = load i32, i32* %comp_num, align 4, !tbaa !1
  %mul16 = mul nsw i32 %22, %23
  %add17 = add nsw i32 %21, %mul16
  %idxprom18 = sext i32 %add17 to i64
  %24 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx19 = getelementptr inbounds i8, i8* %24, i64 %idxprom18
  %25 = load i8, i8* %arrayidx19, align 1, !tbaa !9
  %conv20 = zext i8 %25 to i16
  store i16 %conv20, i16* %comp, align 2, !tbaa !25
  %26 = load i8, i8* %bg.addr, align 1, !tbaa !9
  %conv21 = zext i8 %26 to i32
  %27 = load i16, i16* %comp, align 2, !tbaa !25
  %conv22 = zext i16 %27 to i32
  %sub = sub nsw i32 %conv21, %conv22
  %28 = load i8, i8* %a, align 1, !tbaa !9
  %conv23 = zext i8 %28 to i32
  %mul24 = mul nsw i32 %sub, %conv23
  %add25 = add nsw i32 %mul24, 128
  store i32 %add25, i32* %tmp, align 4, !tbaa !1
  %29 = load i32, i32* %tmp, align 4, !tbaa !1
  %30 = load i32, i32* %tmp, align 4, !tbaa !1
  %shr = ashr i32 %30, 8
  %add26 = add nsw i32 %29, %shr
  %31 = load i16, i16* %comp, align 2, !tbaa !25
  %conv27 = zext i16 %31 to i32
  %add28 = add nsw i32 %conv27, %add26
  %conv29 = trunc i32 %add28 to i16
  store i16 %conv29, i16* %comp, align 2, !tbaa !25
  %32 = load i16, i16* %comp, align 2, !tbaa !25
  %33 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom30 = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom30
  store i16 %32, i16* %arrayidx31, align 2, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %34 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %if.end.65

if.else:                                          ; preds = %for.body.8
  %35 = load i8, i8* %a, align 1, !tbaa !9
  %conv32 = zext i8 %35 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %if.then.35, label %if.else.46

if.then.35:                                       ; preds = %if.else
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.43, %if.then.35
  %36 = load i32, i32* %comp_num, align 4, !tbaa !1
  %37 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %cmp37 = icmp slt i32 %36, %37
  br i1 %cmp37, label %for.body.39, label %for.end.45

for.body.39:                                      ; preds = %for.cond.36
  %38 = load i8, i8* %bg.addr, align 1, !tbaa !9
  %conv40 = zext i8 %38 to i16
  %39 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom41 = sext i32 %39 to i64
  %arrayidx42 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom41
  store i16 %conv40, i16* %arrayidx42, align 2, !tbaa !25
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.39
  %40 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc44 = add nsw i32 %40, 1
  store i32 %inc44, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.36

for.end.45:                                       ; preds = %for.cond.36
  br label %if.end

if.else.46:                                       ; preds = %if.else
  store i32 0, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.62, %if.else.46
  %41 = load i32, i32* %comp_num, align 4, !tbaa !1
  %42 = load i32, i32* %num_comp.addr, align 4, !tbaa !1
  %cmp48 = icmp slt i32 %41, %42
  br i1 %cmp48, label %for.body.50, label %for.end.64

for.body.50:                                      ; preds = %for.cond.47
  %43 = load i32, i32* %x, align 4, !tbaa !1
  %44 = load i32, i32* %planestride.addr, align 4, !tbaa !1
  %45 = load i32, i32* %comp_num, align 4, !tbaa !1
  %mul51 = mul nsw i32 %44, %45
  %add52 = add nsw i32 %43, %mul51
  %idxprom53 = sext i32 %add52 to i64
  %46 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %arrayidx54 = getelementptr inbounds i8, i8* %46, i64 %idxprom53
  %47 = load i8, i8* %arrayidx54, align 1, !tbaa !9
  %conv55 = zext i8 %47 to i16
  store i16 %conv55, i16* %comp, align 2, !tbaa !25
  %48 = load i16, i16* %comp, align 2, !tbaa !25
  %conv56 = zext i16 %48 to i32
  %shl = shl i32 %conv56, 8
  %49 = load i16, i16* %comp, align 2, !tbaa !25
  %conv57 = zext i16 %49 to i32
  %add58 = add nsw i32 %shl, %conv57
  %conv59 = trunc i32 %add58 to i16
  %50 = load i32, i32* %comp_num, align 4, !tbaa !1
  %idxprom60 = sext i32 %50 to i64
  %arrayidx61 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom60
  store i16 %conv59, i16* %arrayidx61, align 2, !tbaa !25
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.50
  %51 = load i32, i32* %comp_num, align 4, !tbaa !1
  %inc63 = add nsw i32 %51, 1
  store i32 %inc63, i32* %comp_num, align 4, !tbaa !1
  br label %for.cond.47

for.end.64:                                       ; preds = %for.cond.47
  br label %if.end

if.end:                                           ; preds = %for.end.64, %for.end.45
  br label %if.end.65

if.end.65:                                        ; preds = %if.end, %for.end
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  %53 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !88
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call = call i64 %53(%struct.gx_device_s* %54, i16* %arraydecay) #5
  store i64 %call, i64* %color, align 8, !tbaa !5
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %procs66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs66, i32 0, i32 7
  %56 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !89
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !7
  %58 = load i32, i32* %x, align 4, !tbaa !1
  %59 = load i32, i32* %x0.addr, align 4, !tbaa !1
  %add67 = add nsw i32 %58, %59
  %60 = load i32, i32* %y, align 4, !tbaa !1
  %61 = load i32, i32* %y0.addr, align 4, !tbaa !1
  %add68 = add nsw i32 %60, %61
  %62 = load i64, i64* %color, align 8, !tbaa !5
  %call69 = call i32 %56(%struct.gx_device_s* %57, i32 %add67, i32 %add68, i32 1, i32 1, i64 %62) #5
  store i32 %call69, i32* %code, align 4, !tbaa !1
  %63 = load i32, i32* %code, align 4, !tbaa !1
  %cmp70 = icmp slt i32 %63, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.65
  %64 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.end.65
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %65 = load i32, i32* %x, align 4, !tbaa !1
  %inc75 = add nsw i32 %65, 1
  store i32 %inc75, i32* %x, align 4, !tbaa !1
  br label %for.cond.6

for.end.76:                                       ; preds = %for.cond.6
  %66 = load i32, i32* %rowstride.addr, align 4, !tbaa !1
  %67 = load i8*, i8** %buf_ptr.addr, align 8, !tbaa !7
  %idx.ext = sext i32 %66 to i64
  %add.ptr = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  store i8* %add.ptr, i8** %buf_ptr.addr, align 8, !tbaa !7
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %68 = load i32, i32* %y, align 4, !tbaa !1
  %inc78 = add nsw i32 %68, 1
  store i32 %inc78, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end.79:                                       ; preds = %for.cond
  %69 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.79, %if.then.72
  call void @llvm.lifetime.end(i64 1, i8* %a) #1
  %70 = bitcast i16* %comp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %70) #1
  %71 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %71) #1
  %72 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

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
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !8, i64 3088}
!11 = !{!"pdf14_device_s", !2, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !12, i64 56, !2, i64 80, !2, i64 84, !2, i64 88, !13, i64 96, !16, i64 816, !2, i64 832, !2, i64 836, !2, i64 840, !2, i64 844, !2, i64 848, !2, i64 852, !3, i64 856, !3, i64 864, !2, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !6, i64 928, !6, i64 936, !2, i64 944, !2, i64 948, !2, i64 952, !2, i64 956, !2, i64 960, !6, i64 968, !6, i64 976, !17, i64 984, !2, i64 1052, !2, i64 1056, !18, i64 1064, !8, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !8, i64 1728, !22, i64 1736, !8, i64 4136, !8, i64 4144, !8, i64 4152, !8, i64 4160, !24, i64 4168, !24, i64 4172, !24, i64 4176, !3, i64 4180, !2, i64 4184, !2, i64 4188, !2, i64 4192, !2, i64 4196, !6, i64 4200, !8, i64 4208, !2, i64 4216, !8, i64 4224, !13, i64 4232, !8, i64 4952, !8, i64 4960, !8, i64 4968, !8, i64 4976, !8, i64 4984, !8, i64 4992, !8, i64 5000, !8, i64 5008, !8, i64 5016}
!12 = !{!"rc_header_s", !6, i64 0, !8, i64 8, !8, i64 16}
!13 = !{!"gx_device_color_info_s", !2, i64 0, !2, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !8, i64 688, !3, i64 696, !6, i64 704, !2, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !2, i64 0, !2, i64 4}
!16 = !{!"gx_device_cached_colors_s", !6, i64 0, !6, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !2, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !6, i64 0, !6, i64 8, !19, i64 16, !2, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !2, i64 0, !2, i64 4, !6, i64 8}
!20 = !{!"gx_page_device_procs_s", !8, i64 0, !8, i64 8, !8, i64 16}
!21 = !{!"gx_device_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !8, i64 512, !8, i64 520, !8, i64 528, !8, i64 536, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576}
!22 = !{!"gs_devn_params_s", !2, i64 0, !8, i64 8, !2, i64 16, !2, i64 20, !2, i64 24, !23, i64 32, !2, i64 1064, !3, i64 1068, !8, i64 1352, !8, i64 1360, !23, i64 1368}
!23 = !{!"gs_separations_s", !2, i64 0, !3, i64 8}
!24 = !{!"float", !3, i64 0}
!25 = !{!14, !14, i64 0}
!26 = !{!27, !14, i64 2}
!27 = !{!"comp_bit_map_list_s", !14, i64 0, !14, i64 2, !2, i64 4, !6, i64 8, !6, i64 16}
!28 = !{!27, !2, i64 4}
!29 = !{!27, !6, i64 8}
!30 = !{!27, !6, i64 16}
!31 = !{!11, !8, i64 1728}
!32 = !{!33, !8, i64 1560}
!33 = !{!"gx_device_s", !2, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !12, i64 56, !2, i64 80, !2, i64 84, !2, i64 88, !13, i64 96, !16, i64 816, !2, i64 832, !2, i64 836, !2, i64 840, !2, i64 844, !2, i64 848, !2, i64 852, !3, i64 856, !3, i64 864, !2, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !6, i64 928, !6, i64 936, !2, i64 944, !2, i64 948, !2, i64 952, !2, i64 956, !2, i64 960, !6, i64 968, !6, i64 976, !17, i64 984, !2, i64 1052, !2, i64 1056, !18, i64 1064, !8, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!34 = !{!35, !2, i64 44}
!35 = !{!"pdf14_buf_s", !8, i64 0, !8, i64 8, !2, i64 16, !2, i64 20, !3, i64 24, !3, i64 25, !3, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !36, i64 44, !2, i64 60, !2, i64 64, !2, i64 68, !2, i64 72, !8, i64 80, !8, i64 88, !36, i64 96, !8, i64 112, !2, i64 120, !3, i64 124, !2, i64 128, !8, i64 136, !3, i64 144}
!36 = !{!"gs_int_rect_s", !37, i64 0, !37, i64 8}
!37 = !{!"gs_int_point_s", !2, i64 0, !2, i64 4}
!38 = !{!35, !2, i64 52}
!39 = !{!35, !2, i64 48}
!40 = !{!35, !2, i64 56}
!41 = !{!42, !3, i64 4}
!42 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !2, i64 20}
!43 = !{!42, !3, i64 12}
!44 = !{!42, !2, i64 20}
!45 = !{!42, !3, i64 8}
!46 = !{!42, !3, i64 0}
!47 = !{!42, !3, i64 16}
!48 = !{!49, !2, i64 116}
!49 = !{!"gsicc_link_s", !8, i64 0, !50, i64 8, !51, i64 40, !8, i64 72, !2, i64 80, !8, i64 88, !8, i64 96, !2, i64 104, !2, i64 108, !2, i64 112, !2, i64 116, !2, i64 120, !2, i64 124, !50, i64 128, !3, i64 160, !2, i64 164, !2, i64 168}
!50 = !{!"gscms_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!51 = !{!"gsicc_hashlink_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!52 = !{!35, !8, i64 8}
!53 = !{!35, !2, i64 60}
!54 = !{!35, !2, i64 68}
!55 = !{!35, !2, i64 64}
!56 = !{!35, !8, i64 80}
!57 = !{!35, !2, i64 72}
!58 = !{!59, !3, i64 0}
!59 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !2, i64 4, !2, i64 8, !3, i64 12, !3, i64 16, !60, i64 20, !6, i64 144, !2, i64 152, !3, i64 156, !2, i64 216, !2, i64 220, !2, i64 224, !42, i64 228, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !12, i64 288, !2, i64 312, !8, i64 320, !8, i64 328, !8, i64 336}
!60 = !{!"gs_range_icc_s", !3, i64 0}
!61 = !{!49, !8, i64 8}
!62 = !{!35, !2, i64 36}
!63 = !{!35, !2, i64 32}
!64 = !{!35, !2, i64 40}
!65 = !{!35, !3, i64 24}
!66 = !{!35, !3, i64 25}
!67 = !{!35, !3, i64 28}
!68 = !{!35, !2, i64 16}
!69 = !{!35, !2, i64 20}
!70 = !{!35, !2, i64 96}
!71 = !{!35, !2, i64 104}
!72 = !{!35, !2, i64 100}
!73 = !{!35, !2, i64 108}
!74 = !{!35, !8, i64 88}
!75 = !{!35, !8, i64 0}
!76 = !{!33, !2, i64 100}
!77 = !{!33, !3, i64 1112}
!78 = !{!33, !8, i64 1624}
!79 = !{!33, !8, i64 24}
!80 = !{!23, !2, i64 0}
!81 = !{!33, !8, i64 1544}
!82 = !{!83, !8, i64 8}
!83 = !{!"devn_separation_name_s", !2, i64 0, !8, i64 8}
!84 = !{!83, !2, i64 0}
!85 = !{!33, !8, i64 1656}
!86 = !{!36, !2, i64 0}
!87 = !{!36, !2, i64 4}
!88 = !{!33, !8, i64 1552}
!89 = !{!33, !8, i64 1200}
