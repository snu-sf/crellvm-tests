; ModuleID = './gdevpdft.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cos_object_procs_s = type { void (%struct.cos_object_s*, i8*)*, i32 (%struct.cos_object_s*, %struct.gx_device_pdf_s*, i64)*, i32 (%struct.cos_object_s*, %struct.cos_object_s*, %struct.gx_device_pdf_s*)*, i32 (%struct.cos_object_s*, %struct.gs_md5_state_s*, i8*, %struct.gx_device_pdf_s*)* }
%struct.cos_object_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_element_s = type opaque
%struct.cos_stream_piece_s = type opaque
%struct.gx_device_pdf_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64, i32, i32, i32, i32, i32, double, %struct.psdf_distiller_params_s, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_param_float_array_s, %struct.gs_param_float_array_s, i32, i32, i32, i64, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.gs_param_int_array_s, %struct.gs_param_string_s, %struct.gs_param_string_s, i32, i32, i32, %struct.gs_param_string_s, i32, i32, [32 x i8], [32 x i8], [16 x i8], i32, i32, i32, %struct.gs_rect_s, %struct.pdf_page_dsc_info_s, %struct.pdf_page_dsc_info_s, i32, i32, i32, i32, i32, i64, [4 x i64], i32, i64, i64, i32, i32, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, %struct.pdf_temp_file_s, i64, %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, i64, i32, i32, i64, i32, i64, i64, i32, %struct.pdf_text_data_s*, %struct.pdf_text_rotation_s, %struct.pdf_page_s*, i32, i64, [15 x %struct.pdf_resource_list_s], [5 x %struct.pdf_resource_s*], [2 x %struct.pdf_resource_s*], %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, %struct.pdf_outline_level_s*, i32, i32, i32, i32, %struct.pdf_article_s*, %struct.cos_dict_s*, %struct.cos_dict_s*, [16 x i8], [2 x i64], %struct.cos_dict_s*, %struct.cos_dict_s*, %struct.cos_array_s*, %struct.cos_array_s*, %struct.pdf_font_cache_elem_s*, %struct.gs_point_s, %struct.gx_path_s*, %struct.cos_array_s*, i32, %struct.cos_dict_s*, %struct.gs_text_enum_s*, %struct.pdf_viewer_state_s*, i32, i32, i32, %struct.pdf_viewer_state_s, i32, i32, i32, %struct.pdf_substream_save_s*, i32, i32, i32, %struct.gs_matrix_s, %struct.cos_dict_s*, i32, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, %struct.gs_matrix_fixed_s, i32, %struct.gs_rect_s, i32, i32, i32, %struct.pdf_char_glyph_pairs_s*, i32, i32, i64, i32, i32, i32, %struct.gs_matrix_s, double, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.linearisation_record_s*, i32, i32 }
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
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
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
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_dir_s = type opaque
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_device_vector_procs_s = type { i32 (%struct.gx_device_vector_s*)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, float*, i32, double)*, i32 (%struct.gx_device_vector_s*, double)*, i32 (%struct.gx_device_vector_s*, i32, i32)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_vector_s*, %struct.gx_path_s*, i32, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_vector_s*, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_vector_s*, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, double, double, double, double, i32)*, i32 (%struct.gx_device_vector_s*, i32)* }
%struct.gx_device_vector_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gs_memory_s*, %struct.gx_device_vector_procs_s*, [4096 x i8], %struct._IO_FILE*, %struct.stream_s*, i8*, i32, i32, %struct.gs_imager_state_s, float*, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, i64, i64, i32, i32, %struct.gs_point_s, i32, %struct.gx_device_bbox_s*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_hl_saved_color_s = type { i64, i64, i32, %struct.gs_client_color_s, %struct.gx_device_color_saved_s }
%struct.gx_device_bbox_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.psdf_distiller_params_s = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32, i32, %struct.gs_param_string_s, %struct.gs_param_string_array_s }
%struct.psdf_image_params_s = type { %struct.gs_c_param_list_s*, i32, i32, i32, %struct.gs_c_param_list_s*, i32, float, i32, i32, i8*, i32, i8*, %struct.stream_template_s* }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type opaque
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
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
%struct.gs_point_s = type { double, double }
%struct.gx_path_s = type opaque
%struct.cos_array_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_array_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_array_element_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.pdf_viewer_state_s = type { i32, [4 x i64], float, float, i32, i64, i64, i64, i32, float, float, i32, i32, i32, i32, i32, i32, %struct.gx_hl_saved_color_s, %struct.gx_hl_saved_color_s, %struct.gx_line_params_s, float*, i32, i64 }
%struct.pdf_substream_save_s = type { i32, %struct.pdf_text_state_s*, %struct.gx_path_s*, i64, i32, %struct.stream_s*, %struct.cos_dict_s*, i32, i32, %struct.pdf_resource_s*, %struct.pdf_resource_s*, i32, i32, %struct.pdf_resource_s*, %struct.gs_const_string_s, i32 }
%struct.pdf_text_state_s = type opaque
%struct.cos_dict_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_dict_element_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.pdf_char_glyph_pairs_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.linearisation_record_s = type { i32, i32, i32*, i32, i64, i64, i64 }
%struct.pdf_resource_s = type { %struct.pdf_resource_s*, %struct.pdf_resource_s*, i64, i32, i32, [24 x i8], i64, %struct.cos_object_s* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.pdf_color_space_names_s = type { i8*, i8*, i8*, i8* }
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_pdf14trans_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s*, %struct.gs_pdf14trans_params_s }
%struct.gs_pdf14trans_params_s = type { i32, i32, i32, i32, i32, i32, %struct.gs_rect_s, i32, i32, i32, i32, [64 x float], float, %struct.gs_function_s*, [256 x i8], i32, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, i32, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s*, i32, i32 }
%struct.gs_function_s = type opaque
%struct.cos_stream_s = type { %struct.cos_object_procs_s*, i64, %struct.cos_dict_element_s*, %struct.cos_stream_piece_s*, %struct.gx_device_pdf_s*, %struct.pdf_resource_s*, i8, i8, i8, i64, %struct.stream_s*, %struct.gs_md5_state_s, i32, [16 x i8], i32, [16 x i8] }
%struct.cos_value_s = type { i32, %union.vc_ }
%union.vc_ = type { %struct.gs_string_s }

@.str = private unnamed_addr constant [21 x i8] c"pdf_group(Resources)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/Resources\00", align 1
@cos_dict_procs = external constant %struct.cos_object_procs_s, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"/Type\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"/Group\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"/S\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"/Transparency\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"/I\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"/K\00", align 1
@pdf_color_space_names = external constant %struct.pdf_color_space_names_s, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"/CS\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"/XObject\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"/Subtype\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"/Form\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"/FormType\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"/Matrix\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"[1 0 0 1 0 0]\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"pdf_begin_transparency_group\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"/BBox\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" Do\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"/Alpha\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"/Luminosity\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"pdf_write_soft_mask_dict\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"/BC\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" %ld 0 R\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"/TR\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"%ld 0 R\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"/G\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_create_compositor(%struct.gx_device_s* %dev, %struct.gx_device_s** %pcdev, %struct.gs_composite_s* %pct, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %memory, %struct.gx_device_s* %cdev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %pct.addr = alloca %struct.gs_composite_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %cdev.addr = alloca %struct.gx_device_s*, align 8
  %pdev = alloca %struct.gx_device_pdf_s*, align 8
  %pcte = alloca %struct.gs_pdf14trans_s*, align 8
  %params = alloca %struct.gs_pdf14trans_params_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pct, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %cdev, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_pdf_s*
  store %struct.gx_device_pdf_s* %2, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %HaveTransparency = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 106
  %4 = load i32, i32* %HaveTransparency, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %CompatibilityLevel = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 75
  %6 = load double, double* %CompatibilityLevel, align 8, !tbaa !49
  %cmp = fcmp oge double %6, 1.400000e+00
  br i1 %cmp, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %7 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %7, i32 0, i32 0
  %8 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type, align 8, !tbaa !50
  %comp_id = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %8, i32 0, i32 0
  %9 = load i8, i8* %comp_id, align 1, !tbaa !52
  %conv = zext i8 %9 to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.1
  %10 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %PDFA = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %10, i32 0, i32 109
  %11 = load i32, i32* %PDFA, align 4, !tbaa !55
  %cmp5 = icmp ne i32 %11, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %12 = bitcast %struct.gs_pdf14trans_s** %pcte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_composite_s* %13 to %struct.gs_pdf14trans_s*
  store %struct.gs_pdf14trans_s* %14, %struct.gs_pdf14trans_s** %pcte, align 8, !tbaa !1
  %15 = bitcast %struct.gs_pdf14trans_params_s** %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_pdf14trans_s*, %struct.gs_pdf14trans_s** %pcte, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_pdf14trans_s, %struct.gs_pdf14trans_s* %16, i32 0, i32 5
  store %struct.gs_pdf14trans_params_s* %params7, %struct.gs_pdf14trans_params_s** %params, align 8, !tbaa !1
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %17, %struct.gx_device_s** %18, align 8, !tbaa !1
  %19 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %params, align 8, !tbaa !1
  %pdf14_op = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %19, i32 0, i32 0
  %20 = load i32, i32* %pdf14_op, align 4, !tbaa !56
  switch i32 %20, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.11
    i32 5, label %sw.bb.13
    i32 6, label %sw.bb.15
    i32 7, label %sw.bb.17
    i32 8, label %sw.bb.19
    i32 9, label %sw.bb.20
    i32 10, label %sw.bb.21
    i32 11, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.9:                                          ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.10:                                         ; preds = %if.then
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %23 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %params, align 8, !tbaa !1
  %call = call i32 @pdf_begin_transparency_group(%struct.gs_imager_state_s* %21, %struct.gx_device_pdf_s* %22, %struct.gs_pdf14trans_params_s* %23) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.11:                                         ; preds = %if.then
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %call12 = call i32 @pdf_end_transparency_group(%struct.gs_imager_state_s* %24, %struct.gx_device_pdf_s* %25) #4
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.13:                                         ; preds = %if.then
  %26 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %28 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %params, align 8, !tbaa !1
  %call14 = call i32 @pdf_begin_transparency_mask(%struct.gs_imager_state_s* %26, %struct.gx_device_pdf_s* %27, %struct.gs_pdf14trans_params_s* %28) #4
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.15:                                         ; preds = %if.then
  %29 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %31 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %params, align 8, !tbaa !1
  %call16 = call i32 @pdf_end_transparency_mask(%struct.gs_imager_state_s* %29, %struct.gx_device_pdf_s* %30, %struct.gs_pdf14trans_params_s* %31) #4
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.17:                                         ; preds = %if.then
  %32 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev, align 8, !tbaa !1
  %34 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %params, align 8, !tbaa !1
  %call18 = call i32 @pdf_set_blend_params(%struct.gs_imager_state_s* %32, %struct.gx_device_pdf_s* %33, %struct.gs_pdf14trans_params_s* %34) #4
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.19:                                         ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.20:                                         ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.21:                                         ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.22:                                         ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.then
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb
  %35 = bitcast %struct.gs_pdf14trans_params_s** %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.gs_pdf14trans_s** %pcte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  br label %cleanup.25

if.end:                                           ; preds = %land.lhs.true.4, %land.lhs.true.1, %land.lhs.true, %entry
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %38 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  %39 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pct.addr, align 8, !tbaa !1
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %call24 = call i32 @psdf_create_compositor(%struct.gx_device_s* %37, %struct.gx_device_s** %38, %struct.gs_composite_s* %39, %struct.gs_imager_state_s* %40, %struct.gs_memory_s* %41, %struct.gx_device_s* %42) #4
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

cleanup.25:                                       ; preds = %if.end, %cleanup
  %43 = bitcast %struct.gx_device_pdf_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @pdf_begin_transparency_group(%struct.gs_imager_state_s* %pis, %struct.gx_device_pdf_s* %pdev, %struct.gs_pdf14trans_params_s* %pparams) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  %group_dict = alloca %struct.cos_dict_s*, align 8
  %in_page = alloca i32, align 4
  %gstate = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pres = alloca %struct.pdf_resource_s*, align 8
  %pres_gstate = alloca %struct.pdf_resource_s*, align 8
  %pcd = alloca %struct.cos_dict_s*, align 8
  %pcd_Resources = alloca %struct.cos_dict_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_dict_s** %group_dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %in_page to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %contents_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 155
  %3 = load i64, i64* %contents_id, align 8, !tbaa !58
  %cmp = icmp ne i64 %3, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %in_page, align 4, !tbaa !59
  %4 = bitcast %struct.gs_state_s** %gstate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s* %5) #4
  store %struct.gs_state_s* %call, %struct.gs_state_s** %gstate, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %gstate, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_state_s* %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call3 = call i32 @pdf_make_group_dict(%struct.gx_device_pdf_s* %8, %struct.gs_pdf14trans_params_s* %9, %struct.gs_imager_state_s* %10, %struct.cos_dict_s** %group_dict) #4
  store i32 %call3, i32* %code, align 4, !tbaa !59
  %11 = load i32, i32* %code, align 4, !tbaa !59
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.7:                                         ; preds = %if.end
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call8 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %13, i32 1) #4
  store i32 %call8, i32* %code, align 4, !tbaa !59
  %14 = load i32, i32* %code, align 4, !tbaa !59
  %cmp9 = icmp slt i32 %14, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %15 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.12:                                        ; preds = %if.end.7
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %gstate, align 8, !tbaa !1
  %clip_path = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %17, i32 0, i32 62
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path, align 8, !tbaa !60
  %call13 = call i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s* %16, %struct.gx_clip_path_s* %18) #4
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.end.12
  %19 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %gstate, align 8, !tbaa !1
  %clip_path15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %20, i32 0, i32 62
  %21 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %clip_path15, align 8, !tbaa !60
  %call16 = call i32 @pdf_put_clip_path(%struct.gx_device_pdf_s* %19, %struct.gx_clip_path_s* %21) #4
  store i32 %call16, i32* %code, align 4, !tbaa !59
  %22 = load i32, i32* %code, align 4, !tbaa !59
  %cmp17 = icmp slt i32 %22, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.14
  %23 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.20:                                        ; preds = %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.12
  %24 = load i32, i32* %in_page, align 4, !tbaa !59
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.else, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %25 = load %struct.cos_dict_s*, %struct.cos_dict_s** %group_dict, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %25, i32 0, i32 1
  %26 = load i64, i64* %id, align 8, !tbaa !63
  %27 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %27, i32 0, i32 153
  %28 = load i32, i32* %next_page, align 4, !tbaa !66
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %29, i32 0, i32 162
  %30 = load %struct.pdf_page_s*, %struct.pdf_page_s** %pages, align 8, !tbaa !67
  %arrayidx = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %30, i64 %idxprom
  %group_id = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %arrayidx, i32 0, i32 5
  store i64 %26, i64* %group_id, align 8, !tbaa !68
  br label %if.end.64

if.else:                                          ; preds = %if.end.21
  %31 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %image_with_SMask = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %31, i32 0, i32 5
  %32 = load i32, i32* %image_with_SMask, align 4, !tbaa !70
  %tobool24 = icmp ne i32 %32, 0
  br i1 %tobool24, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.else
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FormDepth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 201
  %34 = load i32, i32* %FormDepth, align 4, !tbaa !71
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %FormDepth, align 4, !tbaa !71
  %shl = shl i32 1, %inc
  %35 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_with_SMask26 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %35, i32 0, i32 223
  %36 = load i32, i32* %image_with_SMask26, align 4, !tbaa !72
  %or = or i32 %36, %shl
  store i32 %or, i32* %image_with_SMask26, align 4, !tbaa !72
  br label %if.end.63

if.else.27:                                       ; preds = %if.else
  %37 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = bitcast %struct.pdf_resource_s** %pres_gstate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres_gstate, align 8, !tbaa !1
  %39 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %40 = bitcast %struct.cos_dict_s** %pcd_Resources to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %42 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call28 = call i32 @pdf_prepare_drawing(%struct.gx_device_pdf_s* %41, %struct.gs_imager_state_s* %42, %struct.pdf_resource_s** %pres_gstate) #4
  store i32 %call28, i32* %code, align 4, !tbaa !59
  %43 = load i32, i32* %code, align 4, !tbaa !59
  %cmp29 = icmp slt i32 %43, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else.27
  %44 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.else.27
  %45 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %46 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_gstate, align 8, !tbaa !1
  %call33 = call i32 @pdf_end_gstate(%struct.gx_device_pdf_s* %45, %struct.pdf_resource_s* %46) #4
  store i32 %call33, i32* %code, align 4, !tbaa !59
  %47 = load i32, i32* %code, align 4, !tbaa !59
  %cmp34 = icmp slt i32 %47, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  %48 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.32
  %49 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 73
  %CompressPages = getelementptr inbounds %struct.psdf_distiller_params_s, %struct.psdf_distiller_params_s* %params, i32 0, i32 3
  %51 = load i32, i32* %CompressPages, align 4, !tbaa !73
  %call38 = call i32 @pdf_enter_substream(%struct.gx_device_pdf_s* %49, i32 4, i64 0, %struct.pdf_resource_s** %pres, i32 0, i32 %51) #4
  store i32 %call38, i32* %code, align 4, !tbaa !59
  %52 = load i32, i32* %code, align 4, !tbaa !59
  %cmp39 = icmp slt i32 %52, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  %53 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.37
  %54 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FormDepth43 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %54, i32 0, i32 201
  %55 = load i32, i32* %FormDepth43, align 4, !tbaa !71
  %inc44 = add nsw i32 %55, 1
  store i32 %inc44, i32* %FormDepth43, align 4, !tbaa !71
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %57 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %58 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %59 = load %struct.cos_dict_s*, %struct.cos_dict_s** %group_dict, align 8, !tbaa !1
  %60 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %60, i32 0, i32 7
  %61 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !74
  %62 = bitcast %struct.cos_object_s* %61 to %struct.cos_dict_s*
  %call45 = call i32 @pdf_make_form_dict(%struct.gx_device_pdf_s* %56, %struct.gs_pdf14trans_params_s* %57, %struct.gs_imager_state_s* %58, %struct.cos_dict_s* %59, %struct.cos_dict_s* %62) #4
  store i32 %call45, i32* %code, align 4, !tbaa !59
  %63 = load i32, i32* %code, align 4, !tbaa !59
  %cmp46 = icmp slt i32 %63, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.42
  %64 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.end.42
  %65 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %object50 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %65, i32 0, i32 7
  %66 = load %struct.cos_object_s*, %struct.cos_object_s** %object50, align 8, !tbaa !74
  %67 = bitcast %struct.cos_object_s* %66 to %struct.cos_stream_s*
  %call51 = call %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s* %67) #4
  store %struct.cos_dict_s* %call51, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %68 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call52 = call %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #4
  store %struct.cos_dict_s* %call52, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %69 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %cmp53 = icmp eq %struct.cos_dict_s* %69, null
  br i1 %cmp53, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.49
  %70 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %cmp55 = icmp eq %struct.cos_dict_s* %70, null
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false, %if.end.49
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %lor.lhs.false
  %71 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd, align 8, !tbaa !1
  %72 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %cos_procs = getelementptr inbounds %struct.cos_dict_s, %struct.cos_dict_s* %72, i32 0, i32 0
  %73 = bitcast %struct.cos_object_procs_s** %cos_procs to %struct.cos_object_s*
  %call59 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct.cos_object_s* %73) #4
  store i32 %call59, i32* %code, align 4, !tbaa !59
  %74 = load %struct.cos_dict_s*, %struct.cos_dict_s** %pcd_Resources, align 8, !tbaa !1
  %75 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %75, i32 0, i32 205
  store %struct.cos_dict_s* %74, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !76
  %76 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.57, %if.then.48, %if.then.41, %if.then.36, %if.then.31
  %77 = bitcast %struct.cos_dict_s** %pcd_Resources to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.cos_dict_s** %pcd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.pdf_resource_s** %pres_gstate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  br label %cleanup.65

if.end.63:                                        ; preds = %if.then.25
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %if.end.64, %cleanup, %if.then.19, %if.then.11, %if.then.6, %if.then
  %81 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast %struct.gs_state_s** %gstate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i32* %in_page to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast %struct.cos_dict_s** %group_dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_end_transparency_group(%struct.gs_imager_state_s* %pis, %struct.gx_device_pdf_s* %pdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %bottom = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pres = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %ignore = alloca i32, align 4
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %ResourcesBeforeUsage = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %1, i32 0, i32 102
  %2 = load i32, i32* %ResourcesBeforeUsage, align 4, !tbaa !77
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %bottom, align 4, !tbaa !59
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %contents_id = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %3, i32 0, i32 155
  %4 = load i64, i64* %contents_id, align 8, !tbaa !58
  %cmp = icmp ne i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_with_SMask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %5, i32 0, i32 223
  %6 = load i32, i32* %image_with_SMask, align 4, !tbaa !72
  %7 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FormDepth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %7, i32 0, i32 201
  %8 = load i32, i32* %FormDepth, align 4, !tbaa !71
  %shl = shl i32 1, %8
  %and = and i32 %6, %shl
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FormDepth3 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 201
  %10 = load i32, i32* %FormDepth3, align 4, !tbaa !71
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %FormDepth3, align 4, !tbaa !71
  %shl4 = shl i32 1, %10
  %neg = xor i32 %shl4, -1
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_with_SMask5 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %11, i32 0, i32 223
  %12 = load i32, i32* %image_with_SMask5, align 4, !tbaa !72
  %and6 = and i32 %12, %neg
  store i32 %and6, i32* %image_with_SMask5, align 4, !tbaa !72
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.else:                                          ; preds = %if.end
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %sbstack_depth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 199
  %14 = load i32, i32* %sbstack_depth, align 4, !tbaa !78
  %15 = load i32, i32* %bottom, align 4, !tbaa !59
  %cmp7 = icmp eq i32 %14, %15
  br i1 %cmp7, label %if.then.8, label %if.else.12

if.then.8:                                        ; preds = %if.else
  %16 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %next_page = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %16, i32 0, i32 153
  %17 = load i32, i32* %next_page, align 4, !tbaa !66
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 162
  %19 = load %struct.pdf_page_s*, %struct.pdf_page_s** %pages, align 8, !tbaa !67
  %arrayidx = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %19, i64 %idxprom
  %group_id = getelementptr inbounds %struct.pdf_page_s, %struct.pdf_page_s* %arrayidx, i32 0, i32 5
  %20 = load i64, i64* %group_id, align 8, !tbaa !68
  %cmp9 = icmp eq i64 %20, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.end.11:                                        ; preds = %if.then.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

if.else.12:                                       ; preds = %if.else
  %21 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %22, i32 0, i32 210
  %23 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !79
  store %struct.pdf_resource_s* %23, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FormDepth13 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %26, i32 0, i32 201
  %27 = load i32, i32* %FormDepth13, align 4, !tbaa !71
  %dec14 = add nsw i32 %27, -1
  store i32 %dec14, i32* %FormDepth13, align 4, !tbaa !71
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_exit_substream(%struct.gx_device_pdf_s* %28) #4
  store i32 %call, i32* %code, align 4, !tbaa !59
  %29 = load i32, i32* %code, align 4, !tbaa !59
  %cmp15 = icmp slt i32 %29, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else.12
  %30 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.else.12
  %31 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call18 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %31, %struct.pdf_resource_s** %pres, i32 4, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 0) #4
  store i32 %call18, i32* %code, align 4, !tbaa !59
  %32 = load i32, i32* %code, align 4, !tbaa !59
  %cmp19 = icmp slt i32 %32, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  %33 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  %34 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %34, i32 0, i32 164
  %35 = load i64, i64* %used_mask, align 8, !tbaa !80
  %36 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %36, i32 0, i32 6
  %37 = load i64, i64* %where_used, align 8, !tbaa !81
  %or = or i64 %37, %35
  store i64 %or, i64* %where_used, align 8, !tbaa !81
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 47
  %39 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !82
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %40 = load i8*, i8** %ptr, align 8, !tbaa !83
  %41 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm22 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %41, i32 0, i32 47
  %42 = load %struct.stream_s*, %struct.stream_s** %strm22, align 8, !tbaa !82
  %cursor23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 5
  %w24 = bitcast %union.stream_cursor_s* %cursor23 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w24, i32 0, i32 2
  %43 = load i8*, i8** %limit, align 8, !tbaa !85
  %cmp25 = icmp uge i8* %40, %43
  br i1 %cmp25, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.21
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm26 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %44, i32 0, i32 47
  %45 = load %struct.stream_s*, %struct.stream_s** %strm26, align 8, !tbaa !82
  %cursor27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %45, i32 0, i32 5
  %w28 = bitcast %union.stream_cursor_s* %cursor27 to %struct.stream_cursor_write_s*
  %ptr29 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w28, i32 0, i32 1
  %46 = load i8*, i8** %ptr29, align 8, !tbaa !83
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %ptr29, align 8, !tbaa !83
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm30 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 47
  %48 = load %struct.stream_s*, %struct.stream_s** %strm30, align 8, !tbaa !82
  %cursor31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %48, i32 0, i32 5
  %w32 = bitcast %union.stream_cursor_s* %cursor31 to %struct.stream_cursor_write_s*
  %ptr33 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w32, i32 0, i32 1
  %49 = load i8*, i8** %ptr33, align 8, !tbaa !83
  store i8 47, i8* %49, align 1, !tbaa !86
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  %50 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm34 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %50, i32 0, i32 47
  %51 = load %struct.stream_s*, %struct.stream_s** %strm34, align 8, !tbaa !82
  %call35 = call i32 @spputc(%struct.stream_s* %51, i8 zeroext 47) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond36 = phi i32 [ 0, %cond.true ], [ %call35, %cond.false ]
  %52 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm37 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %52, i32 0, i32 47
  %53 = load %struct.stream_s*, %struct.stream_s** %strm37, align 8, !tbaa !82
  %54 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %rname = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %54, i32 0, i32 5
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %rname, i32 0, i32 0
  %55 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %rname38 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %55, i32 0, i32 5
  %arraydecay39 = getelementptr inbounds [24 x i8], [24 x i8]* %rname38, i32 0, i32 0
  %call40 = call i64 @strlen(i8* %arraydecay39) #5
  %conv = trunc i64 %call40 to i32
  %call41 = call i32 @sputs(%struct.stream_s* %53, i8* %arraydecay, i32 %conv, i32* %ignore) #4
  %56 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %strm42 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %56, i32 0, i32 47
  %57 = load %struct.stream_s*, %struct.stream_s** %strm42, align 8, !tbaa !82
  %call43 = call i32 @sputs(%struct.stream_s* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 4, i32* %ignore) #4
  %58 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %59 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %substream_Resources = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %59, i32 0, i32 205
  %60 = load %struct.cos_dict_s*, %struct.cos_dict_s** %substream_Resources, align 8, !tbaa !76
  %61 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call44 = call i32 @pdf_add_resource(%struct.gx_device_pdf_s* %58, %struct.cos_dict_s* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.pdf_resource_s* %61) #4
  store i32 %call44, i32* %code, align 4, !tbaa !59
  %62 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.20, %if.then.16
  %63 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  br label %cleanup.47

cleanup.47:                                       ; preds = %cleanup, %if.end.11, %if.then.10, %if.then.2, %if.then
  %66 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_begin_transparency_mask(%struct.gs_imager_state_s* %pis, %struct.gx_device_pdf_s* %pdev, %struct.gs_pdf14trans_params_s* %pparams) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %mask_is_image = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %0, i32 0, i32 19
  %1 = load i32, i32* %mask_is_image, align 4, !tbaa !87
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_skip = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 222
  store i32 1, i32* %image_mask_skip, align 4, !tbaa !88
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %call = call i32 @pdf_make_soft_mask_dict(%struct.gx_device_pdf_s* %4, %struct.gs_pdf14trans_params_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !59
  %6 = load i32, i32* %code, align 4, !tbaa !59
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  %7 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @pdf_open_page(%struct.gx_device_pdf_s* %8, i32 1) #4
  store i32 %call2, i32* %code, align 4, !tbaa !59
  %9 = load i32, i32* %code, align 4, !tbaa !59
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %13 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %call6 = call i32 @pdf_begin_transparency_group(%struct.gs_imager_state_s* %11, %struct.gx_device_pdf_s* %12, %struct.gs_pdf14trans_params_s* %13) #4
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then.1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_end_transparency_mask(%struct.gs_imager_state_s* %pis, %struct.gx_device_pdf_s* %pdev, %struct.gs_pdf14trans_params_s* %pparams) #0 {
entry:
  %retval = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  %pres = alloca %struct.pdf_resource_s*, align 8
  %code = alloca i32, align 4
  %buf = alloca [20 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_skip = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %0, i32 0, i32 222
  %1 = load i32, i32* %image_mask_skip, align 4, !tbaa !88
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %image_mask_skip1 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %2, i32 0, i32 222
  store i32 0, i32* %image_mask_skip1, align 4, !tbaa !88
  br label %if.end.32

if.else:                                          ; preds = %entry
  %3 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %accumulating_substream_resource = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %4, i32 0, i32 210
  %5 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %accumulating_substream_resource, align 8, !tbaa !79
  store %struct.pdf_resource_s* %5, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 20, i8* %7) #1
  %8 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_exit_substream(%struct.gx_device_pdf_s* %8) #4
  store i32 %call, i32* %code, align 4, !tbaa !59
  %9 = load i32, i32* %code, align 4, !tbaa !59
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %10 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %11 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call3 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %11, %struct.pdf_resource_s** %pres, i32 4, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 0) #4
  store i32 %call3, i32* %code, align 4, !tbaa !59
  %12 = load i32, i32* %code, align 4, !tbaa !59
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %13 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %13, i32 0, i32 164
  %14 = load i64, i64* %used_mask, align 8, !tbaa !80
  %15 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %15, i32 0, i32 6
  %16 = load i64, i64* %where_used, align 8, !tbaa !81
  %or = or i64 %16, %14
  store i64 %or, i64* %where_used, align 8, !tbaa !81
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %17 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres, align 8, !tbaa !1
  %call7 = call i64 @pdf_resource_id(%struct.pdf_resource_s* %17) #4
  %call8 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i64 %call7) #4
  %18 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres_soft_mask_dict = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %18, i32 0, i32 226
  %19 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_soft_mask_dict, align 8, !tbaa !89
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %19, i32 0, i32 7
  %20 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !74
  %21 = bitcast %struct.cos_object_s* %20 to %struct.cos_dict_s*
  %arraydecay9 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call11 = call i64 @strlen(i8* %arraydecay10) #5
  %conv = trunc i64 %call11 to i32
  %call12 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* %arraydecay9, i32 %conv) #4
  store i32 %call12, i32* %code, align 4, !tbaa !59
  %22 = load i32, i32* %code, align 4, !tbaa !59
  %cmp13 = icmp slt i32 %22, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.6
  %23 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.6
  %24 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres_soft_mask_dict17 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %25, i32 0, i32 226
  %call18 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %24, %struct.pdf_resource_s** %pres_soft_mask_dict17, i32 12, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 0) #4
  store i32 %call18, i32* %code, align 4, !tbaa !59
  %26 = load i32, i32* %code, align 4, !tbaa !59
  %cmp19 = icmp slt i32 %26, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  %27 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.16
  %28 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask23 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %28, i32 0, i32 164
  %29 = load i64, i64* %used_mask23, align 8, !tbaa !80
  %30 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres_soft_mask_dict24 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %30, i32 0, i32 226
  %31 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_soft_mask_dict24, align 8, !tbaa !89
  %where_used25 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %31, i32 0, i32 6
  %32 = load i64, i64* %where_used25, align 8, !tbaa !81
  %or26 = or i64 %32, %29
  store i64 %or26, i64* %where_used25, align 8, !tbaa !81
  %33 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres_soft_mask_dict27 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %33, i32 0, i32 226
  %34 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_soft_mask_dict27, align 8, !tbaa !89
  %object28 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %34, i32 0, i32 7
  %35 = load %struct.cos_object_s*, %struct.cos_object_s** %object28, align 8, !tbaa !74
  %id = getelementptr inbounds %struct.cos_object_s, %struct.cos_object_s* %35, i32 0, i32 1
  %36 = load i64, i64* %id, align 8, !tbaa !90
  %37 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %soft_mask_id = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %37, i32 0, i32 16
  store i64 %36, i64* %soft_mask_id, align 8, !tbaa !92
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres_soft_mask_dict29 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %38, i32 0, i32 226
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres_soft_mask_dict29, align 8, !tbaa !89
  %39 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %FormDepth = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %39, i32 0, i32 201
  %40 = load i32, i32* %FormDepth, align 4, !tbaa !71
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %FormDepth, align 4, !tbaa !71
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21, %if.then.15, %if.then.5, %if.then.2
  %41 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 20, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct.pdf_resource_s** %pres to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.32

if.end.32:                                        ; preds = %cleanup.cont, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %cleanup
  %44 = load i32, i32* %retval
  ret i32 %44

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @pdf_set_blend_params(%struct.gs_imager_state_s* %pis, %struct.gx_device_pdf_s* %dev, %struct.gs_pdf14trans_params_s* %pparams) #0 {
entry:
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %dev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_pdf_s* %dev, %struct.gx_device_pdf_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @psdf_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_begin_transparency_group(%struct.gx_device_s* %dev, %struct.gs_transparency_group_params_s* %ptgp, %struct.gs_rect_s* %pbbox, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ptgp.addr = alloca %struct.gs_transparency_group_params_s*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_transparency_group_params_s* %ptgp, %struct.gs_transparency_group_params_s** %ptgp.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_end_transparency_group(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_begin_transparency_mask(%struct.gx_device_s* %dev, %struct.gx_transparency_mask_params_s* %ptmp, %struct.gs_rect_s* %pbbox, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %ptmp.addr = alloca %struct.gx_transparency_mask_params_s*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_transparency_mask_params_s* %ptmp, %struct.gx_transparency_mask_params_s** %ptmp.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gdev_pdf_end_transparency_mask(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  ret i32 0
}

declare %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_make_group_dict(%struct.gx_device_pdf_s* %pdev, %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_imager_state_s* %pis, %struct.cos_dict_s** %pdict) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdict.addr = alloca %struct.cos_dict_s**, align 8
  %pres_group = alloca %struct.pdf_resource_s*, align 8
  %group_dict = alloca %struct.cos_dict_s*, align 8
  %code = alloca i32, align 4
  %gstate = alloca %struct.gs_state_s*, align 8
  %cs_value = alloca %struct.cos_value_s, align 8
  %cleanup.dest.slot = alloca i32
  %cs = alloca %struct.gs_color_space_s*, align 8
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.cos_dict_s** %pdict, %struct.cos_dict_s*** %pdict.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_resource_s** %pres_group to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cos_dict_s** %group_dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_state_s** %gstate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %call = call %struct.gs_state_s* @gx_hld_get_gstate_ptr(%struct.gs_imager_state_s* %4) #4
  store %struct.gs_state_s* %call, %struct.gs_state_s** %gstate, align 8, !tbaa !1
  %5 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %6, i32 11, i64 0, %struct.pdf_resource_s** %pres_group, i64 -1) #4
  store i32 %call1, i32* %code, align 4, !tbaa !59
  %7 = load i32, i32* %code, align 4, !tbaa !59
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end:                                           ; preds = %entry
  %9 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_group, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %9, i32 0, i32 7
  %10 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !74
  %call2 = call i32 @cos_become(%struct.cos_object_s* %10, %struct.cos_object_procs_s* @cos_dict_procs) #4
  %11 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_group, align 8, !tbaa !1
  %object3 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %11, i32 0, i32 7
  %12 = load %struct.cos_object_s*, %struct.cos_object_s** %object3, align 8, !tbaa !74
  %13 = bitcast %struct.cos_object_s* %12 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %13, %struct.cos_dict_s** %group_dict, align 8, !tbaa !1
  %14 = load %struct.cos_dict_s*, %struct.cos_dict_s** %group_dict, align 8, !tbaa !1
  %call4 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 6) #4
  store i32 %call4, i32* %code, align 4, !tbaa !59
  %15 = load i32, i32* %code, align 4, !tbaa !59
  %cmp5 = icmp slt i32 %15, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.7:                                         ; preds = %if.end
  %17 = load %struct.cos_dict_s*, %struct.cos_dict_s** %group_dict, align 8, !tbaa !1
  %call8 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 13) #4
  store i32 %call8, i32* %code, align 4, !tbaa !59
  %18 = load i32, i32* %code, align 4, !tbaa !59
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %19 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.11:                                        ; preds = %if.end.7
  %20 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Isolated = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %20, i32 0, i32 3
  %21 = load i32, i32* %Isolated, align 4, !tbaa !93
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.11
  %22 = load %struct.cos_dict_s*, %struct.cos_dict_s** %group_dict, align 8, !tbaa !1
  %call13 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 1) #4
  store i32 %call13, i32* %code, align 4, !tbaa !59
  %23 = load i32, i32* %code, align 4, !tbaa !59
  %cmp14 = icmp slt i32 %23, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  %24 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.11
  %25 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Knockout = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %25, i32 0, i32 4
  %26 = load i32, i32* %Knockout, align 4, !tbaa !94
  %tobool18 = icmp ne i32 %26, 0
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.17
  %27 = load %struct.cos_dict_s*, %struct.cos_dict_s** %group_dict, align 8, !tbaa !1
  %call20 = call i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 1) #4
  store i32 %call20, i32* %code, align 4, !tbaa !59
  %28 = load i32, i32* %code, align 4, !tbaa !59
  %cmp21 = icmp slt i32 %28, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  %29 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.23:                                        ; preds = %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.17
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %gstate, align 8, !tbaa !1
  %cmp25 = icmp ne %struct.gs_state_s* %30, null
  br i1 %cmp25, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.24
  %31 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %group_color = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %31, i32 0, i32 28
  %32 = load i32, i32* %group_color, align 4, !tbaa !95
  %cmp26 = icmp ne i32 %32, 6
  br i1 %cmp26, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %land.lhs.true
  %33 = bitcast %struct.gs_color_space_s** %cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %gstate, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 69
  %arrayidx = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %color, i32 0, i64 0
  %color_space = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %35 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %color_space, align 8, !tbaa !96
  store %struct.gs_color_space_s* %35, %struct.gs_color_space_s** %cs, align 8, !tbaa !1
  %36 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cs, align 8, !tbaa !1
  %call28 = call i32 @pdf_color_space_named(%struct.gx_device_pdf_s* %36, %struct.cos_value_s* %cs_value, %struct.gs_range_s** null, %struct.gs_color_space_s* %37, %struct.pdf_color_space_names_s* @pdf_color_space_names, i32 0, i8* null, i32 0, i32 0) #4
  store i32 %call28, i32* %code, align 4, !tbaa !59
  %38 = load i32, i32* %code, align 4, !tbaa !59
  %cmp29 = icmp slt i32 %38, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.27
  %39 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.then.27
  %40 = load %struct.cos_dict_s*, %struct.cos_dict_s** %group_dict, align 8, !tbaa !1
  %call32 = call i32 @cos_dict_put_c_key(%struct.cos_dict_s* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), %struct.cos_value_s* %cs_value) #4
  store i32 %call32, i32* %code, align 4, !tbaa !59
  %41 = load i32, i32* %code, align 4, !tbaa !59
  %cmp33 = icmp slt i32 %41, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  %42 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.31
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.34, %if.then.30
  %43 = bitcast %struct.gs_color_space_s** %cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.42 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.36

if.end.36:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end.24
  store %struct.cos_dict_s* null, %struct.cos_dict_s** %group_dict, align 8, !tbaa !1
  %44 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call37 = call i32 @pdf_substitute_resource(%struct.gx_device_pdf_s* %44, %struct.pdf_resource_s** %pres_group, i32 11, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)* null, i32 0) #4
  store i32 %call37, i32* %code, align 4, !tbaa !59
  %45 = load i32, i32* %code, align 4, !tbaa !59
  %cmp38 = icmp slt i32 %45, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %46 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.40:                                        ; preds = %if.end.36
  %47 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %used_mask = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %47, i32 0, i32 164
  %48 = load i64, i64* %used_mask, align 8, !tbaa !80
  %49 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_group, align 8, !tbaa !1
  %where_used = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %49, i32 0, i32 6
  %50 = load i64, i64* %where_used, align 8, !tbaa !81
  %or = or i64 %50, %48
  store i64 %or, i64* %where_used, align 8, !tbaa !81
  %51 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_group, align 8, !tbaa !1
  %object41 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %51, i32 0, i32 7
  %52 = load %struct.cos_object_s*, %struct.cos_object_s** %object41, align 8, !tbaa !74
  %53 = bitcast %struct.cos_object_s* %52 to %struct.cos_dict_s*
  %54 = load %struct.cos_dict_s**, %struct.cos_dict_s*** %pdict.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %53, %struct.cos_dict_s** %54, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

cleanup.42:                                       ; preds = %if.end.40, %if.then.39, %cleanup, %if.then.22, %if.then.15, %if.then.10, %if.then.6, %if.then
  %55 = bitcast %struct.cos_value_s* %cs_value to i8*
  call void @llvm.lifetime.end(i64 24, i8* %55) #1
  %56 = bitcast %struct.gs_state_s** %gstate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.cos_dict_s** %group_dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.pdf_resource_s** %pres_group to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i32 @pdf_open_page(%struct.gx_device_pdf_s*, i32) #2

declare i32 @pdf_must_put_clip_path(%struct.gx_device_pdf_s*, %struct.gx_clip_path_s*) #2

declare i32 @pdf_put_clip_path(%struct.gx_device_pdf_s*, %struct.gx_clip_path_s*) #2

declare i32 @pdf_prepare_drawing(%struct.gx_device_pdf_s*, %struct.gs_imager_state_s*, %struct.pdf_resource_s**) #2

declare i32 @pdf_end_gstate(%struct.gx_device_pdf_s*, %struct.pdf_resource_s*) #2

declare i32 @pdf_enter_substream(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_make_form_dict(%struct.gx_device_pdf_s* %pdev, %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_imager_state_s* %pis, %struct.cos_dict_s* %group_dict, %struct.cos_dict_s* %form_dict) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %group_dict.addr = alloca %struct.cos_dict_s*, align 8
  %form_dict.addr = alloca %struct.cos_dict_s*, align 8
  %bbox_array = alloca %struct.cos_array_s*, align 8
  %bbox = alloca [4 x float], align 16
  %bbox_rect = alloca %struct.gs_rect_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %group_dict, %struct.cos_dict_s** %group_dict.addr, align 8, !tbaa !1
  store %struct.cos_dict_s* %form_dict, %struct.cos_dict_s** %form_dict.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cos_array_s** %bbox_array to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [4 x float]* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.gs_rect_s* %bbox_rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %bbox1 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %4, i32 0, i32 6
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %5, i32 0, i32 5
  %6 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call = call i32 @gs_bbox_transform(%struct.gs_rect_s* %bbox1, %struct.gs_matrix_s* %6, %struct.gs_rect_s* %bbox_rect) #4
  store i32 %call, i32* %code, align 4, !tbaa !59
  %7 = load i32, i32* %code, align 4, !tbaa !59
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %9 = load double, double* %x, align 8, !tbaa !98
  %conv = fptrunc double %9 to float
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 0
  store float %conv, float* %arrayidx, align 4, !tbaa !99
  %p2 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p2, i32 0, i32 1
  %10 = load double, double* %y, align 8, !tbaa !100
  %conv3 = fptrunc double %10 to float
  %arrayidx4 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 1
  store float %conv3, float* %arrayidx4, align 4, !tbaa !99
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_rect, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %11 = load double, double* %x5, align 8, !tbaa !101
  %conv6 = fptrunc double %11 to float
  %arrayidx7 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 2
  store float %conv6, float* %arrayidx7, align 4, !tbaa !99
  %q8 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %bbox_rect, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q8, i32 0, i32 1
  %12 = load double, double* %y9, align 8, !tbaa !102
  %conv10 = fptrunc double %12 to float
  %arrayidx11 = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i64 3
  store float %conv10, float* %arrayidx11, align 4, !tbaa !99
  %13 = load %struct.cos_dict_s*, %struct.cos_dict_s** %form_dict.addr, align 8, !tbaa !1
  %call12 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 8) #4
  store i32 %call12, i32* %code, align 4, !tbaa !59
  %14 = load i32, i32* %code, align 4, !tbaa !59
  %cmp13 = icmp slt i32 %14, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %15 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end
  %16 = load %struct.cos_dict_s*, %struct.cos_dict_s** %form_dict.addr, align 8, !tbaa !1
  %call17 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 5) #4
  store i32 %call17, i32* %code, align 4, !tbaa !59
  %17 = load i32, i32* %code, align 4, !tbaa !59
  %cmp18 = icmp slt i32 %17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %18 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.16
  %19 = load %struct.cos_dict_s*, %struct.cos_dict_s** %form_dict.addr, align 8, !tbaa !1
  %call22 = call i32 @cos_dict_put_c_key_int(%struct.cos_dict_s* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 1) #4
  store i32 %call22, i32* %code, align 4, !tbaa !59
  %20 = load i32, i32* %code, align 4, !tbaa !59
  %cmp23 = icmp slt i32 %20, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %21 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %22 = load %struct.cos_dict_s*, %struct.cos_dict_s** %form_dict.addr, align 8, !tbaa !1
  %call27 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 13) #4
  store i32 %call27, i32* %code, align 4, !tbaa !59
  %23 = load i32, i32* %code, align 4, !tbaa !59
  %cmp28 = icmp slt i32 %23, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  %24 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.26
  %25 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %bbox, i32 0, i32 0
  %call32 = call %struct.cos_array_s* @cos_array_from_floats(%struct.gx_device_pdf_s* %25, float* %arraydecay, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0)) #4
  store %struct.cos_array_s* %call32, %struct.cos_array_s** %bbox_array, align 8, !tbaa !1
  %26 = load %struct.cos_array_s*, %struct.cos_array_s** %bbox_array, align 8, !tbaa !1
  %cmp33 = icmp eq %struct.cos_array_s* %26, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.31
  %27 = load %struct.cos_dict_s*, %struct.cos_dict_s** %form_dict.addr, align 8, !tbaa !1
  %28 = load %struct.cos_array_s*, %struct.cos_array_s** %bbox_array, align 8, !tbaa !1
  %29 = bitcast %struct.cos_array_s* %28 to %struct.cos_object_s*
  %call37 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct.cos_object_s* %29) #4
  store i32 %call37, i32* %code, align 4, !tbaa !59
  %30 = load i32, i32* %code, align 4, !tbaa !59
  %cmp38 = icmp slt i32 %30, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  %31 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.36
  %32 = load %struct.cos_dict_s*, %struct.cos_dict_s** %form_dict.addr, align 8, !tbaa !1
  %33 = load %struct.cos_dict_s*, %struct.cos_dict_s** %group_dict.addr, align 8, !tbaa !1
  %34 = bitcast %struct.cos_dict_s* %33 to %struct.cos_object_s*
  %call42 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct.cos_object_s* %34) #4
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %if.then.40, %if.then.35, %if.then.30, %if.then.25, %if.then.20, %if.then.15, %if.then
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct.gs_rect_s* %bbox_rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %36) #1
  %37 = bitcast [4 x float]* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #1
  %38 = bitcast %struct.cos_array_s** %bbox_array to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare %struct.cos_dict_s* @cos_stream_dict(%struct.cos_stream_s*) #2

declare %struct.cos_dict_s* @cos_dict_alloc(%struct.gx_device_pdf_s*, i8*) #2

declare i32 @cos_dict_put_c_key_object(%struct.cos_dict_s*, i8*, %struct.cos_object_s*) #2

declare i32 @pdf_alloc_resource(%struct.gx_device_pdf_s*, i32, i64, %struct.pdf_resource_s**, i64) #2

declare i32 @cos_become(%struct.cos_object_s*, %struct.cos_object_procs_s*) #2

declare i32 @cos_dict_put_c_key_string(%struct.cos_dict_s*, i8*, i8*, i32) #2

declare i32 @cos_dict_put_c_key_bool(%struct.cos_dict_s*, i8*, i32) #2

declare i32 @pdf_color_space_named(%struct.gx_device_pdf_s*, %struct.cos_value_s*, %struct.gs_range_s**, %struct.gs_color_space_s*, %struct.pdf_color_space_names_s*, i32, i8*, i32, i32) #2

declare i32 @cos_dict_put_c_key(%struct.cos_dict_s*, i8*, %struct.cos_value_s*) #2

declare i32 @pdf_substitute_resource(%struct.gx_device_pdf_s*, %struct.pdf_resource_s**, i32, i32 (%struct.gx_device_pdf_s*, %struct.pdf_resource_s*, %struct.pdf_resource_s*)*, i32) #2

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #2

declare i32 @cos_dict_put_c_key_int(%struct.cos_dict_s*, i8*, i32) #2

declare %struct.cos_array_s* @cos_array_from_floats(%struct.gx_device_pdf_s*, float*, i32, i8*) #2

declare i32 @pdf_exit_substream(%struct.gx_device_pdf_s*) #2

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @pdf_add_resource(%struct.gx_device_pdf_s*, %struct.cos_dict_s*, i8*, %struct.pdf_resource_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pdf_make_soft_mask_dict(%struct.gx_device_pdf_s* %pdev, %struct.gs_pdf14trans_params_s* %pparams) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_pdf_s*, align 8
  %pparams.addr = alloca %struct.gs_pdf14trans_params_s*, align 8
  %pres_soft_mask_dict = alloca %struct.pdf_resource_s*, align 8
  %soft_mask_dict = alloca %struct.cos_dict_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %Background = alloca %struct.cos_array_s*, align 8
  %id = alloca i64, align 8
  %buf = alloca [20 x i8], align 16
  store %struct.gx_device_pdf_s* %pdev, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_pdf14trans_params_s* %pparams, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %0 = bitcast %struct.pdf_resource_s** %pres_soft_mask_dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.pdf_resource_s* null, %struct.pdf_resource_s** %pres_soft_mask_dict, align 8, !tbaa !1
  %1 = bitcast %struct.cos_dict_s** %soft_mask_dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @pdf_alloc_resource(%struct.gx_device_pdf_s* %3, i32 12, i64 0, %struct.pdf_resource_s** %pres_soft_mask_dict, i64 -1) #4
  store i32 %call, i32* %code, align 4, !tbaa !59
  %4 = load i32, i32* %code, align 4, !tbaa !59
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

if.end:                                           ; preds = %entry
  %6 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_soft_mask_dict, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %6, i32 0, i32 7
  %7 = load %struct.cos_object_s*, %struct.cos_object_s** %object, align 8, !tbaa !74
  %call1 = call i32 @cos_become(%struct.cos_object_s* %7, %struct.cos_object_procs_s* @cos_dict_procs) #4
  %8 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_soft_mask_dict, align 8, !tbaa !1
  %9 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %pres_soft_mask_dict2 = getelementptr inbounds %struct.gx_device_pdf_s, %struct.gx_device_pdf_s* %9, i32 0, i32 226
  store %struct.pdf_resource_s* %8, %struct.pdf_resource_s** %pres_soft_mask_dict2, align 8, !tbaa !89
  %10 = load %struct.pdf_resource_s*, %struct.pdf_resource_s** %pres_soft_mask_dict, align 8, !tbaa !1
  %object3 = getelementptr inbounds %struct.pdf_resource_s, %struct.pdf_resource_s* %10, i32 0, i32 7
  %11 = load %struct.cos_object_s*, %struct.cos_object_s** %object3, align 8, !tbaa !74
  %12 = bitcast %struct.cos_object_s* %11 to %struct.cos_dict_s*
  store %struct.cos_dict_s* %12, %struct.cos_dict_s** %soft_mask_dict, align 8, !tbaa !1
  %13 = load %struct.cos_dict_s*, %struct.cos_dict_s** %soft_mask_dict, align 8, !tbaa !1
  %14 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %subtype = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %14, i32 0, i32 8
  %15 = load i32, i32* %subtype, align 4, !tbaa !103
  %cmp4 = icmp eq i32 %15, 0
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0)
  %16 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %subtype5 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %16, i32 0, i32 8
  %17 = load i32, i32* %subtype5, align 4, !tbaa !103
  %cmp6 = icmp eq i32 %17, 0
  %cond7 = select i1 %cmp6, i32 6, i32 11
  %call8 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %cond, i32 %cond7) #4
  store i32 %call8, i32* %code, align 4, !tbaa !59
  %18 = load i32, i32* %code, align 4, !tbaa !59
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

if.end.11:                                        ; preds = %if.end
  %20 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Background_components = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %20, i32 0, i32 9
  %21 = load i32, i32* %Background_components, align 4, !tbaa !104
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %if.end.11
  %22 = bitcast %struct.cos_array_s** %Background to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %24 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Background13 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %24, i32 0, i32 11
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %Background13, i32 0, i32 0
  %25 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %Background_components14 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %25, i32 0, i32 9
  %26 = load i32, i32* %Background_components14, align 4, !tbaa !104
  %call15 = call %struct.cos_array_s* @cos_array_from_floats(%struct.gx_device_pdf_s* %23, float* %arraydecay, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0)) #4
  store %struct.cos_array_s* %call15, %struct.cos_array_s** %Background, align 8, !tbaa !1
  %27 = load %struct.cos_array_s*, %struct.cos_array_s** %Background, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.cos_array_s* %27, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.12
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.12
  %28 = load %struct.cos_dict_s*, %struct.cos_dict_s** %soft_mask_dict, align 8, !tbaa !1
  %29 = load %struct.cos_array_s*, %struct.cos_array_s** %Background, align 8, !tbaa !1
  %30 = bitcast %struct.cos_array_s* %29 to %struct.cos_object_s*
  %call19 = call i32 @cos_dict_put_c_key_object(%struct.cos_dict_s* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), %struct.cos_object_s* %30) #4
  store i32 %call19, i32* %code, align 4, !tbaa !59
  %31 = load i32, i32* %code, align 4, !tbaa !59
  %cmp20 = icmp slt i32 %31, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %32 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21, %if.then.17
  %33 = bitcast %struct.cos_array_s** %Background to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.46 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.23

if.end.23:                                        ; preds = %cleanup.cont, %if.end.11
  %34 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %transfer_function = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %34, i32 0, i32 13
  %35 = load %struct.gs_function_s*, %struct.gs_function_s** %transfer_function, align 8, !tbaa !105
  %cmp24 = icmp ne %struct.gs_function_s* %35, null
  br i1 %cmp24, label %if.then.25, label %if.end.45

if.then.25:                                       ; preds = %if.end.23
  %36 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 20, i8* %37) #1
  %38 = load %struct.gx_device_pdf_s*, %struct.gx_device_pdf_s** %pdev.addr, align 8, !tbaa !1
  %39 = load %struct.gs_pdf14trans_params_s*, %struct.gs_pdf14trans_params_s** %pparams.addr, align 8, !tbaa !1
  %transfer_function26 = getelementptr inbounds %struct.gs_pdf14trans_params_s, %struct.gs_pdf14trans_params_s* %39, i32 0, i32 13
  %40 = load %struct.gs_function_s*, %struct.gs_function_s** %transfer_function26, align 8, !tbaa !105
  %call27 = call i32 @pdf_write_function(%struct.gx_device_pdf_s* %38, %struct.gs_function_s* %40, i64* %id) #4
  store i32 %call27, i32* %code, align 4, !tbaa !59
  %41 = load i32, i32* %code, align 4, !tbaa !59
  %cmp28 = icmp slt i32 %41, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.25
  %42 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end.30:                                        ; preds = %if.then.25
  %arraydecay31 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %43 = load i64, i64* %id, align 8, !tbaa !106
  %call32 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i64 %43) #4
  %44 = load %struct.cos_dict_s*, %struct.cos_dict_s** %soft_mask_dict, align 8, !tbaa !1
  %arraydecay33 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call35 = call i64 @strlen(i8* %arraydecay34) #5
  %conv = trunc i64 %call35 to i32
  %call36 = call i32 @cos_dict_put_c_key_string(%struct.cos_dict_s* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay33, i32 %conv) #4
  store i32 %call36, i32* %code, align 4, !tbaa !59
  %45 = load i32, i32* %code, align 4, !tbaa !59
  %cmp37 = icmp slt i32 %45, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.30
  %46 = load i32, i32* %code, align 4, !tbaa !59
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end.40:                                        ; preds = %if.end.30
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.41

cleanup.41:                                       ; preds = %if.end.40, %if.then.39, %if.then.29
  %47 = bitcast [20 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 20, i8* %47) #1
  %48 = bitcast i64* %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %cleanup.dest.43 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.43, label %cleanup.46 [
    i32 0, label %cleanup.cont.44
  ]

cleanup.cont.44:                                  ; preds = %cleanup.41
  br label %if.end.45

if.end.45:                                        ; preds = %cleanup.cont.44, %if.end.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

cleanup.46:                                       ; preds = %if.end.45, %cleanup.41, %cleanup, %if.then.10, %if.then
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.cos_dict_s** %soft_mask_dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.pdf_resource_s** %pres_soft_mask_dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @pdf_write_function(%struct.gx_device_pdf_s*, %struct.gs_function_s*, i64*) #2

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare i64 @pdf_resource_id(%struct.pdf_resource_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 9552}
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
!49 = !{!6, !26, i64 9368}
!50 = !{!51, !2, i64 0}
!51 = !{!"gs_composite_s", !2, i64 0, !9, i64 8, !7, i64 16, !2, i64 24, !2, i64 32}
!52 = !{!53, !3, i64 0}
!53 = !{!"gs_composite_type_s", !3, i64 0, !54, i64 8}
!54 = !{!"gs_composite_type_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!55 = !{!6, !7, i64 9564}
!56 = !{!57, !3, i64 0}
!57 = !{!"gs_pdf14trans_params_s", !3, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !44, i64 24, !3, i64 56, !3, i64 60, !7, i64 64, !7, i64 68, !3, i64 72, !21, i64 328, !2, i64 336, !3, i64 344, !3, i64 600, !7, i64 604, !27, i64 608, !27, i64 612, !7, i64 616, !22, i64 620, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !7, i64 668, !3, i64 672, !9, i64 680, !2, i64 688, !7, i64 696, !7, i64 700}
!58 = !{!6, !9, i64 26552}
!59 = !{!7, !7, i64 0}
!60 = !{!61, !2, i64 1688}
!61 = !{!"gs_state_s", !7, i64 0, !2, i64 8, !2, i64 16, !20, i64 24, !7, i64 128, !24, i64 132, !7, i64 168, !25, i64 176, !25, i64 192, !7, i64 208, !7, i64 212, !11, i64 216, !3, i64 220, !27, i64 224, !27, i64 228, !28, i64 232, !9, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !2, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !21, i64 296, !29, i64 300, !7, i64 308, !7, i64 312, !7, i64 316, !21, i64 320, !7, i64 324, !7, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !7, i64 408, !2, i64 416, !2, i64 424, !30, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !31, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !31, i64 1336, !2, i64 1616, !22, i64 1624, !7, i64 1648, !22, i64 1652, !7, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !9, i64 1712, !9, i64 1720, !2, i64 1728, !7, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !24, i64 1808, !7, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !7, i64 1864, !2, i64 1872, !2, i64 1880, !62, i64 1888}
!62 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!63 = !{!64, !9, i64 8}
!64 = !{!"cos_dict_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !9, i64 56, !2, i64 64, !65, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!65 = !{!"gs_md5_state_s", !3, i64 0, !3, i64 8, !3, i64 24}
!66 = !{!6, !7, i64 26544}
!67 = !{!6, !2, i64 26648}
!68 = !{!69, !9, i64 96}
!69 = !{!"pdf_page_s", !2, i64 0, !25, i64 8, !3, i64 24, !9, i64 32, !3, i64 40, !9, i64 96, !2, i64 104, !47, i64 112, !45, i64 160, !7, i64 200, !7, i64 204}
!70 = !{!57, !7, i64 20}
!71 = !{!6, !7, i64 30408}
!72 = !{!6, !7, i64 30608}
!73 = !{!6, !7, i64 8892}
!74 = !{!75, !2, i64 64}
!75 = !{!"pdf_resource_s", !2, i64 0, !2, i64 8, !9, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !9, i64 56, !2, i64 64}
!76 = !{!6, !2, i64 30448}
!77 = !{!6, !7, i64 9536}
!78 = !{!6, !7, i64 30392}
!79 = !{!6, !2, i64 30480}
!80 = !{!6, !9, i64 26664}
!81 = !{!75, !9, i64 56}
!82 = !{!6, !2, i64 5848}
!83 = !{!84, !2, i64 8}
!84 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!85 = !{!84, !2, i64 16}
!86 = !{!3, !3, i64 0}
!87 = !{!57, !7, i64 616}
!88 = !{!6, !7, i64 30604}
!89 = !{!6, !2, i64 30648}
!90 = !{!91, !9, i64 8}
!91 = !{!"cos_object_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !3, i64 48, !3, i64 49, !3, i64 50, !9, i64 56, !2, i64 64, !65, i64 72, !7, i64 160, !3, i64 164, !7, i64 180, !3, i64 184}
!92 = !{!19, !9, i64 240}
!93 = !{!57, !7, i64 12}
!94 = !{!57, !7, i64 16}
!95 = !{!57, !3, i64 672}
!96 = !{!97, !2, i64 0}
!97 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16}
!98 = !{!44, !26, i64 0}
!99 = !{!21, !21, i64 0}
!100 = !{!44, !26, i64 8}
!101 = !{!44, !26, i64 16}
!102 = !{!44, !26, i64 24}
!103 = !{!57, !3, i64 60}
!104 = !{!57, !7, i64 64}
!105 = !{!57, !2, i64 336}
!106 = !{!9, !9, i64 0}
