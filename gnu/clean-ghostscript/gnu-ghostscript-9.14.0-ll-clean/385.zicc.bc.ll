; ModuleID = './zicc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
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
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.0 }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_fixed_point_s = type { i32, i32 }
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
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.9 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.8, %struct.anon.8, %struct.anon.8, %struct.anon.8 }
%struct.anon.8 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.9 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
%struct.gx_cie_vector_cache3_s = type { [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.cie_interpolation_range_s] }
%struct.gx_cie_vector_cache_s = type { %struct.cie_cache_floats_s, %struct.cie_cache_vectors_s }
%struct.cie_cache_floats_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, double, double, %struct.cie_linear_params_s }
%struct.cie_linear_params_s = type { i32, float, float }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { float, float, float, [3 x %struct.cie_interpolation_range_s] }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.cie_interpolation_range_s = type { float, float }
%struct.gx_cie_float_fixed_cache_s = type { %struct.cie_cache_floats_s, %union.if_ }
%union.if_ = type { %struct.cie_cache_ints_s }
%struct.cie_cache_ints_s = type { %struct.cie_cache_params_s, [512 x i32] }
%union.gx_cie_scalar_cache_s = type { %struct.cie_cache_floats_s }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%union.anon.0 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }

@seticc.icc_std_profile_names = internal constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"srgb.icc\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sgray.icc\00", align 1
@seticc.icc_std_profile_keys = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"srgb\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sgray\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"DataSource\00", align 1
@__func__.seticc = private unnamed_addr constant [7 x i8] c"seticc\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"./psi/zicc.c\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"building color space object\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@seticc_lab.rfs = internal constant i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"lab.icc\00", align 1
@__func__.seticc_lab = private unnamed_addr constant [11 x i8] c"seticc_lab\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"cannot find lab icc profile\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"installing the lab profile\00", align 1
@__func__.seticc_cal = private unnamed_addr constant [11 x i8] c"seticc_cal\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"creating the cal profile\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"installing the cal profile\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ll3dict\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"1.seticcspace\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"1.set_outputintent\00", align 1
@zicc_ll3_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zseticcspace }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zset_outputintent }, %struct.op_def zeroinitializer], align 16
@zseticcspace.dflt_range = internal constant [8 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"zset_outputintent\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"OIProfile\00", align 1

; Function Attrs: nounwind uwtable
define i32 @seticc(%struct.gs_context_state_s* %i_ctx_p, i32 %ncomps, %struct.ref_s* %ICCdict, float* %range_buff) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ncomps.addr = alloca i32, align 4
  %ICCdict.addr = alloca %struct.ref_s*, align 8
  %range_buff.addr = alloca float*, align 8
  %code = alloca i32, align 4
  %k = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %palt_cs = alloca %struct.gs_color_space_s*, align 8
  %pstrmval = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %picc_profile = alloca %struct.cmm_profile_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %i = alloca i32, align 4
  %expected = alloca i32, align 4
  %pnameval = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  %size = alloca i32, align 4
  %str = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %ncomps, i32* %ncomps.addr, align 4, !tbaa !5
  store %struct.ref_s* %ICCdict, %struct.ref_s** %ICCdict.addr, align 8, !tbaa !1
  store float* %range_buff, float** %range_buff.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.ref_s** %pstrmval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.stream_s* null, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = bitcast %struct.cmm_profile_s** %picc_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %10 = bitcast %struct.gs_state_s* %9 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %10, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %expected, align 4, !tbaa !5
  %13 = bitcast %struct.ref_s** %pnameval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 0
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !7
  %call = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %15) #5
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %ICCdict.addr, align 8, !tbaa !1
  %call2 = call i32 @dict_find_string(%struct.ref_s* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %pstrmval) #5
  %cmp = icmp sle i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.572

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %18 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv = zext i16 %18 to i32
  %and = and i32 %conv, 16160
  %cmp3 = icmp eq i32 %and, 800
  br i1 %cmp3, label %if.end.12, label %if.then.5

if.then.5:                                        ; preds = %do.body
  %19 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %20 = bitcast i16* %type_attrs7 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv8 = zext i8 %21 to i32
  %cmp9 = icmp eq i32 %conv8, 3
  br i1 %cmp9, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.5
  %22 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %call11 = call i32 @check_type_failed(%struct.ref_s* %22) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call11, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.572

if.end.12:                                        ; preds = %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.12
  %23 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %24 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %24, %struct.stream_s** %s, align 8, !tbaa !1
  %25 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 19
  %26 = load i16, i16* %read_id, align 2, !tbaa !22
  %conv14 = zext i16 %26 to i32
  %27 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 2
  %28 = load i32, i32* %rsize, align 4, !tbaa !27
  %cmp16 = icmp ne i32 %conv14, %28
  br i1 %cmp16, label %if.then.18, label %if.end.35

if.then.18:                                       ; preds = %do.body.13
  %29 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id19 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 19
  %30 = load i16, i16* %read_id19, align 2, !tbaa !22
  %conv20 = zext i16 %30 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.18
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 20
  %32 = load i16, i16* %write_id, align 2, !tbaa !28
  %conv23 = zext i16 %32 to i32
  %33 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %rsize25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 2
  %34 = load i32, i32* %rsize25, align 4, !tbaa !27
  %cmp26 = icmp eq i32 %conv23, %34
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %land.lhs.true
  %35 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %call29 = call i32 @file_switch_to_read(%struct.ref_s* %36) #5
  store i32 %call29, i32* %fcode, align 4, !tbaa !5
  %37 = load i32, i32* %fcode, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %37, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.28
  %38 = load i32, i32* %fcode, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32
  %39 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.572 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %if.then.18
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 18
  %41 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !29
  store %struct.stream_s* %41, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %do.body.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.35
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.36

do.cond.36:                                       ; preds = %do.end
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 0
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs38, align 8, !tbaa !7
  %call39 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %43) #5
  %call40 = call i32 @gs_cspace_build_ICC(%struct.gs_color_space_s** %pcs, i8* null, %struct.gs_memory_s* %call39) #5
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %44, 0
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %do.end.37
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %call44 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 72, i32 1, i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 %call44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.572

if.end.45:                                        ; preds = %do.end.37
  %46 = load %struct.ref_s*, %struct.ref_s** %ICCdict.addr, align 8, !tbaa !1
  %call46 = call i32 @dict_find_string(%struct.ref_s* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s** %pnameval) #5
  %cmp47 = icmp sgt i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.else.79

if.then.49:                                       ; preds = %if.end.45
  %47 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load %struct.ref_s*, %struct.ref_s** %pnameval, align 8, !tbaa !1
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %rsize51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 2
  %49 = load i32, i32* %rsize51, align 4, !tbaa !27
  store i32 %49, i32* %size, align 4, !tbaa !5
  %50 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 0
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs52, align 8, !tbaa !7
  %call53 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %52) #5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %call53, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %53 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %54 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs54 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %54, i32 0, i32 0
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs54, align 8, !tbaa !7
  %call55 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %55) #5
  %56 = load i32, i32* %size, align 4, !tbaa !5
  %add = add i32 %56, 1
  %call56 = call i8* %53(%struct.gs_memory_s* %call55, i32 %add, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  store i8* %call56, i8** %str, align 8, !tbaa !1
  %57 = load i8*, i8** %str, align 8, !tbaa !1
  %58 = load %struct.ref_s*, %struct.ref_s** %pnameval, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  %bytes = bitcast %union.v* %value57 to i8**
  %59 = load i8*, i8** %bytes, align 8, !tbaa !1
  %60 = load i32, i32* %size, align 4, !tbaa !5
  %conv58 = zext i32 %60 to i64
  %call59 = call i8* @memcpy(i8* %57, i8* %59, i64 %conv58) #6
  %61 = load i32, i32* %size, align 4, !tbaa !5
  %idxprom = zext i32 %61 to i64
  %62 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %62, i64 %idxprom
  store i8 0, i8* %arrayidx60, align 1, !tbaa !21
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.49
  %63 = load i32, i32* %k, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %63, 2
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = load i8*, i8** %str, align 8, !tbaa !1
  %67 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom63 = sext i32 %67 to i64
  %arrayidx64 = getelementptr inbounds [2 x i8*], [2 x i8*]* @seticc.icc_std_profile_keys, i32 0, i64 %idxprom63
  %68 = load i8*, i8** %arrayidx64, align 8, !tbaa !1
  %call65 = call i32 @strcmp(i8* %66, i8* %68) #6
  store i32 %call65, i32* %tmp, !tbaa !5
  %69 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = load i32, i32* %tmp, !tbaa !5
  %cmp66 = icmp eq i32 %71, 0
  br i1 %cmp66, label %if.then.68, label %if.end.78

if.then.68:                                       ; preds = %for.body
  %72 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom69 = sext i32 %72 to i64
  %arrayidx70 = getelementptr inbounds [2 x i8*], [2 x i8*]* @seticc.icc_std_profile_names, i32 0, i64 %idxprom69
  %73 = load i8*, i8** %arrayidx70, align 8, !tbaa !1
  %74 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom71 = sext i32 %74 to i64
  %arrayidx72 = getelementptr inbounds [2 x i8*], [2 x i8*]* @seticc.icc_std_profile_names, i32 0, i64 %idxprom71
  %75 = load i8*, i8** %arrayidx72, align 8, !tbaa !1
  %call73 = call i64 @strlen(i8* %75) #7
  %conv74 = trunc i64 %call73 to i32
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs75 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 0
  %77 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs75, align 8, !tbaa !7
  %call76 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %77) #5
  %call77 = call %struct.cmm_profile_s* @gsicc_get_profile_handle_file(i8* %73, i32 %conv74, %struct.gs_memory_s* %call76) #5
  store %struct.cmm_profile_s* %call77, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  br label %for.end

if.end.78:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %78 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.68, %for.cond
  %79 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  br label %if.end.83

if.else.79:                                       ; preds = %if.end.45
  %81 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %82 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %82, i32 0, i32 0
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs80, align 8, !tbaa !7
  %call81 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %83) #5
  %call82 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* %81, %struct.gs_memory_s* %call81, i8* null, i32 0) #5
  store %struct.cmm_profile_s* %call82, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.79, %for.end
  %84 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %cmp84 = icmp eq %struct.cmm_profile_s* %84, null
  br i1 %cmp84, label %if.then.86, label %if.end.150

if.then.86:                                       ; preds = %if.end.83
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.86
  %85 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmm_profile_s* %85, null
  br i1 %tobool, label %if.then.88, label %if.end.113

if.then.88:                                       ; preds = %do.body.87
  br label %do.body.89

do.body.89:                                       ; preds = %if.then.88
  br label %do.body.90

do.body.90:                                       ; preds = %do.body.89
  br label %do.cond.91

do.cond.91:                                       ; preds = %do.body.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  %86 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %86, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %87 = load i64, i64* %ref_count, align 8, !tbaa !33
  %add93 = add nsw i64 %87, -1
  store i64 %add93, i64* %ref_count, align 8, !tbaa !33
  br label %do.cond.94

do.cond.94:                                       ; preds = %do.end.92
  br label %do.end.95

do.end.95:                                        ; preds = %do.cond.94
  %88 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc96 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %88, i32 0, i32 18
  %ref_count97 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc96, i32 0, i32 0
  %89 = load i64, i64* %ref_count97, align 8, !tbaa !33
  %tobool98 = icmp ne i64 %89, 0
  br i1 %tobool98, label %if.else.108, label %if.then.99

if.then.99:                                       ; preds = %do.end.95
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.body.100
  br label %do.cond.102

do.cond.102:                                      ; preds = %do.body.101
  br label %do.end.103

do.end.103:                                       ; preds = %do.cond.102
  %90 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc104 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %90, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc104, i32 0, i32 2
  %91 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !38
  %92 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc105 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %92, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc105, i32 0, i32 1
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !39
  %94 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %95 = bitcast %struct.cmm_profile_s* %94 to i8*
  call void %91(%struct.gs_memory_s* %93, i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.106

do.cond.106:                                      ; preds = %do.end.103
  br label %do.end.107

do.end.107:                                       ; preds = %do.cond.106
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  br label %if.end.112

if.else.108:                                      ; preds = %do.end.95
  br label %do.body.109

do.body.109:                                      ; preds = %if.else.108
  br label %do.cond.110

do.cond.110:                                      ; preds = %do.body.109
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %do.end.107
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %do.body.87
  br label %do.cond.114

do.cond.114:                                      ; preds = %if.end.113
  br label %do.end.115

do.end.115:                                       ; preds = %do.cond.114
  br label %do.body.116

do.body.116:                                      ; preds = %do.end.115
  %96 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool117 = icmp ne %struct.gs_color_space_s* %96, null
  br i1 %tobool117, label %if.then.118, label %if.end.147

if.then.118:                                      ; preds = %do.body.116
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.118
  br label %do.body.120

do.body.120:                                      ; preds = %do.body.119
  br label %do.cond.121

do.cond.121:                                      ; preds = %do.body.120
  br label %do.end.122

do.end.122:                                       ; preds = %do.cond.121
  %97 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc123 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %97, i32 0, i32 1
  %ref_count124 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc123, i32 0, i32 0
  %98 = load i64, i64* %ref_count124, align 8, !tbaa !40
  %add125 = add nsw i64 %98, -1
  store i64 %add125, i64* %ref_count124, align 8, !tbaa !40
  br label %do.cond.126

do.cond.126:                                      ; preds = %do.end.122
  br label %do.end.127

do.end.127:                                       ; preds = %do.cond.126
  %99 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc128 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %99, i32 0, i32 1
  %ref_count129 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc128, i32 0, i32 0
  %100 = load i64, i64* %ref_count129, align 8, !tbaa !40
  %tobool130 = icmp ne i64 %100, 0
  br i1 %tobool130, label %if.else.142, label %if.then.131

if.then.131:                                      ; preds = %do.end.127
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.131
  br label %do.body.133

do.body.133:                                      ; preds = %do.body.132
  br label %do.cond.134

do.cond.134:                                      ; preds = %do.body.133
  br label %do.end.135

do.end.135:                                       ; preds = %do.cond.134
  %101 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc136 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %101, i32 0, i32 1
  %free137 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc136, i32 0, i32 2
  %102 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free137, align 8, !tbaa !42
  %103 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc138 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %103, i32 0, i32 1
  %memory139 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc138, i32 0, i32 1
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory139, align 8, !tbaa !43
  %105 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %106 = bitcast %struct.gs_color_space_s* %105 to i8*
  call void %102(%struct.gs_memory_s* %104, i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.140

do.cond.140:                                      ; preds = %do.end.135
  br label %do.end.141

do.end.141:                                       ; preds = %do.cond.140
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.146

if.else.142:                                      ; preds = %do.end.127
  br label %do.body.143

do.body.143:                                      ; preds = %if.else.142
  br label %do.cond.144

do.cond.144:                                      ; preds = %do.body.143
  br label %do.end.145

do.end.145:                                       ; preds = %do.cond.144
  br label %if.end.146

if.end.146:                                       ; preds = %do.end.145, %do.end.141
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %do.body.116
  br label %do.cond.148

do.cond.148:                                      ; preds = %if.end.147
  br label %do.end.149

do.end.149:                                       ; preds = %do.cond.148
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.572

if.end.150:                                       ; preds = %if.end.83
  %107 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %108 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs151 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 0
  %110 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs151, align 8, !tbaa !7
  %call152 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %110) #5
  %call153 = call i32 @gsicc_set_gscs_profile(%struct.gs_color_space_s* %107, %struct.cmm_profile_s* %108, %struct.gs_memory_s* %call152) #5
  store i32 %call153, i32* %code, align 4, !tbaa !5
  %111 = load i32, i32* %code, align 4, !tbaa !5
  %cmp154 = icmp slt i32 %111, 0
  br i1 %cmp154, label %if.then.156, label %if.end.225

if.then.156:                                      ; preds = %if.end.150
  br label %do.body.157

do.body.157:                                      ; preds = %if.then.156
  %112 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool158 = icmp ne %struct.cmm_profile_s* %112, null
  br i1 %tobool158, label %if.then.159, label %if.end.188

if.then.159:                                      ; preds = %do.body.157
  br label %do.body.160

do.body.160:                                      ; preds = %if.then.159
  br label %do.body.161

do.body.161:                                      ; preds = %do.body.160
  br label %do.cond.162

do.cond.162:                                      ; preds = %do.body.161
  br label %do.end.163

do.end.163:                                       ; preds = %do.cond.162
  %113 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc164 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %113, i32 0, i32 18
  %ref_count165 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc164, i32 0, i32 0
  %114 = load i64, i64* %ref_count165, align 8, !tbaa !33
  %add166 = add nsw i64 %114, -1
  store i64 %add166, i64* %ref_count165, align 8, !tbaa !33
  br label %do.cond.167

do.cond.167:                                      ; preds = %do.end.163
  br label %do.end.168

do.end.168:                                       ; preds = %do.cond.167
  %115 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc169 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %115, i32 0, i32 18
  %ref_count170 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc169, i32 0, i32 0
  %116 = load i64, i64* %ref_count170, align 8, !tbaa !33
  %tobool171 = icmp ne i64 %116, 0
  br i1 %tobool171, label %if.else.183, label %if.then.172

if.then.172:                                      ; preds = %do.end.168
  br label %do.body.173

do.body.173:                                      ; preds = %if.then.172
  br label %do.body.174

do.body.174:                                      ; preds = %do.body.173
  br label %do.cond.175

do.cond.175:                                      ; preds = %do.body.174
  br label %do.end.176

do.end.176:                                       ; preds = %do.cond.175
  %117 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc177 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %117, i32 0, i32 18
  %free178 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc177, i32 0, i32 2
  %118 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free178, align 8, !tbaa !38
  %119 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc179 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %119, i32 0, i32 18
  %memory180 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc179, i32 0, i32 1
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory180, align 8, !tbaa !39
  %121 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %122 = bitcast %struct.cmm_profile_s* %121 to i8*
  call void %118(%struct.gs_memory_s* %120, i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.181

do.cond.181:                                      ; preds = %do.end.176
  br label %do.end.182

do.end.182:                                       ; preds = %do.cond.181
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  br label %if.end.187

if.else.183:                                      ; preds = %do.end.168
  br label %do.body.184

do.body.184:                                      ; preds = %if.else.183
  br label %do.cond.185

do.cond.185:                                      ; preds = %do.body.184
  br label %do.end.186

do.end.186:                                       ; preds = %do.cond.185
  br label %if.end.187

if.end.187:                                       ; preds = %do.end.186, %do.end.182
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %do.body.157
  br label %do.cond.189

do.cond.189:                                      ; preds = %if.end.188
  br label %do.end.190

do.end.190:                                       ; preds = %do.cond.189
  br label %do.body.191

do.body.191:                                      ; preds = %do.end.190
  %123 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool192 = icmp ne %struct.gs_color_space_s* %123, null
  br i1 %tobool192, label %if.then.193, label %if.end.222

if.then.193:                                      ; preds = %do.body.191
  br label %do.body.194

do.body.194:                                      ; preds = %if.then.193
  br label %do.body.195

do.body.195:                                      ; preds = %do.body.194
  br label %do.cond.196

do.cond.196:                                      ; preds = %do.body.195
  br label %do.end.197

do.end.197:                                       ; preds = %do.cond.196
  %124 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc198 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %124, i32 0, i32 1
  %ref_count199 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc198, i32 0, i32 0
  %125 = load i64, i64* %ref_count199, align 8, !tbaa !40
  %add200 = add nsw i64 %125, -1
  store i64 %add200, i64* %ref_count199, align 8, !tbaa !40
  br label %do.cond.201

do.cond.201:                                      ; preds = %do.end.197
  br label %do.end.202

do.end.202:                                       ; preds = %do.cond.201
  %126 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc203 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %126, i32 0, i32 1
  %ref_count204 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc203, i32 0, i32 0
  %127 = load i64, i64* %ref_count204, align 8, !tbaa !40
  %tobool205 = icmp ne i64 %127, 0
  br i1 %tobool205, label %if.else.217, label %if.then.206

if.then.206:                                      ; preds = %do.end.202
  br label %do.body.207

do.body.207:                                      ; preds = %if.then.206
  br label %do.body.208

do.body.208:                                      ; preds = %do.body.207
  br label %do.cond.209

do.cond.209:                                      ; preds = %do.body.208
  br label %do.end.210

do.end.210:                                       ; preds = %do.cond.209
  %128 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc211 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %128, i32 0, i32 1
  %free212 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc211, i32 0, i32 2
  %129 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free212, align 8, !tbaa !42
  %130 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc213 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %130, i32 0, i32 1
  %memory214 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc213, i32 0, i32 1
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory214, align 8, !tbaa !43
  %132 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %133 = bitcast %struct.gs_color_space_s* %132 to i8*
  call void %129(%struct.gs_memory_s* %131, i8* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.215

do.cond.215:                                      ; preds = %do.end.210
  br label %do.end.216

do.end.216:                                       ; preds = %do.cond.215
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.221

if.else.217:                                      ; preds = %do.end.202
  br label %do.body.218

do.body.218:                                      ; preds = %if.else.217
  br label %do.cond.219

do.cond.219:                                      ; preds = %do.body.218
  br label %do.end.220

do.end.220:                                       ; preds = %do.cond.219
  br label %if.end.221

if.end.221:                                       ; preds = %do.end.220, %do.end.216
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %do.body.191
  br label %do.cond.223

do.cond.223:                                      ; preds = %if.end.222
  br label %do.end.224

do.end.224:                                       ; preds = %do.cond.223
  %134 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %134, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.572

if.end.225:                                       ; preds = %if.end.150
  %135 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %conv226 = trunc i32 %135 to i8
  %136 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %136, i32 0, i32 0
  store i8 %conv226, i8* %num_comps, align 1, !tbaa !44
  %137 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %137, i32 0, i32 14
  %138 = load i8*, i8** %buffer, align 8, !tbaa !45
  %139 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %139, i32 0, i32 11
  %140 = load i32, i32* %buffer_size, align 4, !tbaa !46
  %141 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs227 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %141, i32 0, i32 0
  %142 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs227, align 8, !tbaa !7
  %call228 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %142) #5
  %call229 = call i8* @gsicc_get_profile_handle_buffer(i8* %138, i32 %140, %struct.gs_memory_s* %call228) #5
  %143 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %143, i32 0, i32 17
  store i8* %call229, i8** %profile_handle, align 8, !tbaa !47
  %144 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %profile_handle230 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %144, i32 0, i32 17
  %145 = load i8*, i8** %profile_handle230, align 8, !tbaa !47
  %cmp231 = icmp eq i8* %145, null
  br i1 %cmp231, label %if.then.233, label %if.end.302

if.then.233:                                      ; preds = %if.end.225
  br label %do.body.234

do.body.234:                                      ; preds = %if.then.233
  %146 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool235 = icmp ne %struct.cmm_profile_s* %146, null
  br i1 %tobool235, label %if.then.236, label %if.end.265

if.then.236:                                      ; preds = %do.body.234
  br label %do.body.237

do.body.237:                                      ; preds = %if.then.236
  br label %do.body.238

do.body.238:                                      ; preds = %do.body.237
  br label %do.cond.239

do.cond.239:                                      ; preds = %do.body.238
  br label %do.end.240

do.end.240:                                       ; preds = %do.cond.239
  %147 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc241 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %147, i32 0, i32 18
  %ref_count242 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc241, i32 0, i32 0
  %148 = load i64, i64* %ref_count242, align 8, !tbaa !33
  %add243 = add nsw i64 %148, -1
  store i64 %add243, i64* %ref_count242, align 8, !tbaa !33
  br label %do.cond.244

do.cond.244:                                      ; preds = %do.end.240
  br label %do.end.245

do.end.245:                                       ; preds = %do.cond.244
  %149 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc246 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %149, i32 0, i32 18
  %ref_count247 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc246, i32 0, i32 0
  %150 = load i64, i64* %ref_count247, align 8, !tbaa !33
  %tobool248 = icmp ne i64 %150, 0
  br i1 %tobool248, label %if.else.260, label %if.then.249

if.then.249:                                      ; preds = %do.end.245
  br label %do.body.250

do.body.250:                                      ; preds = %if.then.249
  br label %do.body.251

do.body.251:                                      ; preds = %do.body.250
  br label %do.cond.252

do.cond.252:                                      ; preds = %do.body.251
  br label %do.end.253

do.end.253:                                       ; preds = %do.cond.252
  %151 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc254 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %151, i32 0, i32 18
  %free255 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc254, i32 0, i32 2
  %152 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free255, align 8, !tbaa !38
  %153 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc256 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %153, i32 0, i32 18
  %memory257 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc256, i32 0, i32 1
  %154 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory257, align 8, !tbaa !39
  %155 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %156 = bitcast %struct.cmm_profile_s* %155 to i8*
  call void %152(%struct.gs_memory_s* %154, i8* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.258

do.cond.258:                                      ; preds = %do.end.253
  br label %do.end.259

do.end.259:                                       ; preds = %do.cond.258
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  br label %if.end.264

if.else.260:                                      ; preds = %do.end.245
  br label %do.body.261

do.body.261:                                      ; preds = %if.else.260
  br label %do.cond.262

do.cond.262:                                      ; preds = %do.body.261
  br label %do.end.263

do.end.263:                                       ; preds = %do.cond.262
  br label %if.end.264

if.end.264:                                       ; preds = %do.end.263, %do.end.259
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %do.body.234
  br label %do.cond.266

do.cond.266:                                      ; preds = %if.end.265
  br label %do.end.267

do.end.267:                                       ; preds = %do.cond.266
  br label %do.body.268

do.body.268:                                      ; preds = %do.end.267
  %157 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool269 = icmp ne %struct.gs_color_space_s* %157, null
  br i1 %tobool269, label %if.then.270, label %if.end.299

if.then.270:                                      ; preds = %do.body.268
  br label %do.body.271

do.body.271:                                      ; preds = %if.then.270
  br label %do.body.272

do.body.272:                                      ; preds = %do.body.271
  br label %do.cond.273

do.cond.273:                                      ; preds = %do.body.272
  br label %do.end.274

do.end.274:                                       ; preds = %do.cond.273
  %158 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc275 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %158, i32 0, i32 1
  %ref_count276 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc275, i32 0, i32 0
  %159 = load i64, i64* %ref_count276, align 8, !tbaa !40
  %add277 = add nsw i64 %159, -1
  store i64 %add277, i64* %ref_count276, align 8, !tbaa !40
  br label %do.cond.278

do.cond.278:                                      ; preds = %do.end.274
  br label %do.end.279

do.end.279:                                       ; preds = %do.cond.278
  %160 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc280 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %160, i32 0, i32 1
  %ref_count281 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc280, i32 0, i32 0
  %161 = load i64, i64* %ref_count281, align 8, !tbaa !40
  %tobool282 = icmp ne i64 %161, 0
  br i1 %tobool282, label %if.else.294, label %if.then.283

if.then.283:                                      ; preds = %do.end.279
  br label %do.body.284

do.body.284:                                      ; preds = %if.then.283
  br label %do.body.285

do.body.285:                                      ; preds = %do.body.284
  br label %do.cond.286

do.cond.286:                                      ; preds = %do.body.285
  br label %do.end.287

do.end.287:                                       ; preds = %do.cond.286
  %162 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc288 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %162, i32 0, i32 1
  %free289 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc288, i32 0, i32 2
  %163 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free289, align 8, !tbaa !42
  %164 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc290 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %164, i32 0, i32 1
  %memory291 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc290, i32 0, i32 1
  %165 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory291, align 8, !tbaa !43
  %166 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %167 = bitcast %struct.gs_color_space_s* %166 to i8*
  call void %163(%struct.gs_memory_s* %165, i8* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.292

do.cond.292:                                      ; preds = %do.end.287
  br label %do.end.293

do.end.293:                                       ; preds = %do.cond.292
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.298

if.else.294:                                      ; preds = %do.end.279
  br label %do.body.295

do.body.295:                                      ; preds = %if.else.294
  br label %do.cond.296

do.cond.296:                                      ; preds = %do.body.295
  br label %do.end.297

do.end.297:                                       ; preds = %do.cond.296
  br label %if.end.298

if.end.298:                                       ; preds = %do.end.297, %do.end.293
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %do.body.268
  br label %do.cond.300

do.cond.300:                                      ; preds = %if.end.299
  br label %do.end.301

do.end.301:                                       ; preds = %do.cond.300
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.572

if.end.302:                                       ; preds = %if.end.225
  %168 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %profile_handle303 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %168, i32 0, i32 17
  %169 = load i8*, i8** %profile_handle303, align 8, !tbaa !47
  %call304 = call i32 @gscms_get_profile_data_space(i8* %169) #5
  %170 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %170, i32 0, i32 5
  store i32 %call304, i32* %data_cs, align 4, !tbaa !48
  %171 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %data_cs305 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %171, i32 0, i32 5
  %172 = load i32, i32* %data_cs305, align 4, !tbaa !48
  switch i32 %172, label %sw.epilog [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.306
    i32 3, label %sw.bb.307
    i32 4, label %sw.bb.308
    i32 7, label %sw.bb.308
    i32 0, label %sw.bb.308
  ]

sw.bb:                                            ; preds = %if.end.302, %if.end.302, %if.end.302
  store i32 3, i32* %expected, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.306:                                        ; preds = %if.end.302
  store i32 1, i32* %expected, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.307:                                        ; preds = %if.end.302
  store i32 4, i32* %expected, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.308:                                        ; preds = %if.end.302, %if.end.302, %if.end.302
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.302, %sw.bb.308, %sw.bb.307, %sw.bb.306, %sw.bb
  %173 = load i32, i32* %expected, align 4, !tbaa !5
  %tobool309 = icmp ne i32 %173, 0
  br i1 %tobool309, label %lor.lhs.false, label %if.then.312

lor.lhs.false:                                    ; preds = %sw.epilog
  %174 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %175 = load i32, i32* %expected, align 4, !tbaa !5
  %cmp310 = icmp ne i32 %174, %175
  br i1 %cmp310, label %if.then.312, label %if.end.381

if.then.312:                                      ; preds = %lor.lhs.false, %sw.epilog
  br label %do.body.313

do.body.313:                                      ; preds = %if.then.312
  %176 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool314 = icmp ne %struct.cmm_profile_s* %176, null
  br i1 %tobool314, label %if.then.315, label %if.end.344

if.then.315:                                      ; preds = %do.body.313
  br label %do.body.316

do.body.316:                                      ; preds = %if.then.315
  br label %do.body.317

do.body.317:                                      ; preds = %do.body.316
  br label %do.cond.318

do.cond.318:                                      ; preds = %do.body.317
  br label %do.end.319

do.end.319:                                       ; preds = %do.cond.318
  %177 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc320 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %177, i32 0, i32 18
  %ref_count321 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc320, i32 0, i32 0
  %178 = load i64, i64* %ref_count321, align 8, !tbaa !33
  %add322 = add nsw i64 %178, -1
  store i64 %add322, i64* %ref_count321, align 8, !tbaa !33
  br label %do.cond.323

do.cond.323:                                      ; preds = %do.end.319
  br label %do.end.324

do.end.324:                                       ; preds = %do.cond.323
  %179 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc325 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %179, i32 0, i32 18
  %ref_count326 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc325, i32 0, i32 0
  %180 = load i64, i64* %ref_count326, align 8, !tbaa !33
  %tobool327 = icmp ne i64 %180, 0
  br i1 %tobool327, label %if.else.339, label %if.then.328

if.then.328:                                      ; preds = %do.end.324
  br label %do.body.329

do.body.329:                                      ; preds = %if.then.328
  br label %do.body.330

do.body.330:                                      ; preds = %do.body.329
  br label %do.cond.331

do.cond.331:                                      ; preds = %do.body.330
  br label %do.end.332

do.end.332:                                       ; preds = %do.cond.331
  %181 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc333 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %181, i32 0, i32 18
  %free334 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc333, i32 0, i32 2
  %182 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free334, align 8, !tbaa !38
  %183 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc335 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %183, i32 0, i32 18
  %memory336 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc335, i32 0, i32 1
  %184 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory336, align 8, !tbaa !39
  %185 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %186 = bitcast %struct.cmm_profile_s* %185 to i8*
  call void %182(%struct.gs_memory_s* %184, i8* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.337

do.cond.337:                                      ; preds = %do.end.332
  br label %do.end.338

do.end.338:                                       ; preds = %do.cond.337
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  br label %if.end.343

if.else.339:                                      ; preds = %do.end.324
  br label %do.body.340

do.body.340:                                      ; preds = %if.else.339
  br label %do.cond.341

do.cond.341:                                      ; preds = %do.body.340
  br label %do.end.342

do.end.342:                                       ; preds = %do.cond.341
  br label %if.end.343

if.end.343:                                       ; preds = %do.end.342, %do.end.338
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %do.body.313
  br label %do.cond.345

do.cond.345:                                      ; preds = %if.end.344
  br label %do.end.346

do.end.346:                                       ; preds = %do.cond.345
  br label %do.body.347

do.body.347:                                      ; preds = %do.end.346
  %187 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool348 = icmp ne %struct.gs_color_space_s* %187, null
  br i1 %tobool348, label %if.then.349, label %if.end.378

if.then.349:                                      ; preds = %do.body.347
  br label %do.body.350

do.body.350:                                      ; preds = %if.then.349
  br label %do.body.351

do.body.351:                                      ; preds = %do.body.350
  br label %do.cond.352

do.cond.352:                                      ; preds = %do.body.351
  br label %do.end.353

do.end.353:                                       ; preds = %do.cond.352
  %188 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc354 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %188, i32 0, i32 1
  %ref_count355 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc354, i32 0, i32 0
  %189 = load i64, i64* %ref_count355, align 8, !tbaa !40
  %add356 = add nsw i64 %189, -1
  store i64 %add356, i64* %ref_count355, align 8, !tbaa !40
  br label %do.cond.357

do.cond.357:                                      ; preds = %do.end.353
  br label %do.end.358

do.end.358:                                       ; preds = %do.cond.357
  %190 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc359 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %190, i32 0, i32 1
  %ref_count360 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc359, i32 0, i32 0
  %191 = load i64, i64* %ref_count360, align 8, !tbaa !40
  %tobool361 = icmp ne i64 %191, 0
  br i1 %tobool361, label %if.else.373, label %if.then.362

if.then.362:                                      ; preds = %do.end.358
  br label %do.body.363

do.body.363:                                      ; preds = %if.then.362
  br label %do.body.364

do.body.364:                                      ; preds = %do.body.363
  br label %do.cond.365

do.cond.365:                                      ; preds = %do.body.364
  br label %do.end.366

do.end.366:                                       ; preds = %do.cond.365
  %192 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc367 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %192, i32 0, i32 1
  %free368 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc367, i32 0, i32 2
  %193 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free368, align 8, !tbaa !42
  %194 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc369 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %194, i32 0, i32 1
  %memory370 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc369, i32 0, i32 1
  %195 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory370, align 8, !tbaa !43
  %196 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %197 = bitcast %struct.gs_color_space_s* %196 to i8*
  call void %193(%struct.gs_memory_s* %195, i8* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.371

do.cond.371:                                      ; preds = %do.end.366
  br label %do.end.372

do.end.372:                                       ; preds = %do.cond.371
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  br label %if.end.377

if.else.373:                                      ; preds = %do.end.358
  br label %do.body.374

do.body.374:                                      ; preds = %if.else.373
  br label %do.cond.375

do.cond.375:                                      ; preds = %do.body.374
  br label %do.end.376

do.end.376:                                       ; preds = %do.cond.375
  br label %if.end.377

if.end.377:                                       ; preds = %do.end.376, %do.end.372
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %do.body.347
  br label %do.cond.379

do.cond.379:                                      ; preds = %if.end.378
  br label %do.end.380

do.end.380:                                       ; preds = %do.cond.379
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.572

if.end.381:                                       ; preds = %lor.lhs.false
  %198 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %199 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  call void @gsicc_init_hash_cs(%struct.cmm_profile_s* %198, %struct.gs_imager_state_s* %199) #5
  %200 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %data_cs382 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %200, i32 0, i32 5
  %201 = load i32, i32* %data_cs382, align 4, !tbaa !48
  %cmp383 = icmp eq i32 %201, 6
  br i1 %cmp383, label %if.then.385, label %if.else.406

if.then.385:                                      ; preds = %if.end.381
  %202 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %202, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx386, i32 0, i32 0
  store float 0.000000e+00, float* %rmin, align 4, !tbaa !49
  %203 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %Range387 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %203, i32 0, i32 6
  %ranges388 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range387, i32 0, i32 0
  %arrayidx389 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges388, i32 0, i64 0
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx389, i32 0, i32 1
  store float 1.000000e+02, float* %rmax, align 4, !tbaa !52
  %204 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %Range390 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %204, i32 0, i32 6
  %ranges391 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range390, i32 0, i32 0
  %arrayidx392 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges391, i32 0, i64 1
  %rmin393 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx392, i32 0, i32 0
  store float -1.280000e+02, float* %rmin393, align 4, !tbaa !49
  %205 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %Range394 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %205, i32 0, i32 6
  %ranges395 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range394, i32 0, i32 0
  %arrayidx396 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges395, i32 0, i64 1
  %rmax397 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx396, i32 0, i32 1
  store float 1.270000e+02, float* %rmax397, align 4, !tbaa !52
  %206 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %Range398 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %206, i32 0, i32 6
  %ranges399 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range398, i32 0, i32 0
  %arrayidx400 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges399, i32 0, i64 2
  %rmin401 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx400, i32 0, i32 0
  store float -1.280000e+02, float* %rmin401, align 4, !tbaa !49
  %207 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %Range402 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %207, i32 0, i32 6
  %ranges403 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range402, i32 0, i32 0
  %arrayidx404 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges403, i32 0, i64 2
  %rmax405 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx404, i32 0, i32 1
  store float 1.270000e+02, float* %rmax405, align 4, !tbaa !52
  %208 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %islab = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %208, i32 0, i32 2
  store i32 1, i32* %islab, align 4, !tbaa !53
  br label %if.end.430

if.else.406:                                      ; preds = %if.end.381
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.407

for.cond.407:                                     ; preds = %for.inc.427, %if.else.406
  %209 = load i32, i32* %i, align 4, !tbaa !5
  %210 = load i32, i32* %ncomps.addr, align 4, !tbaa !5
  %cmp408 = icmp slt i32 %209, %210
  br i1 %cmp408, label %for.body.410, label %for.end.429

for.body.410:                                     ; preds = %for.cond.407
  %211 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 2, %211
  %idxprom411 = sext i32 %mul to i64
  %212 = load float*, float** %range_buff.addr, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds float, float* %212, i64 %idxprom411
  %213 = load float, float* %arrayidx412, align 4, !tbaa !54
  %214 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom413 = sext i32 %214 to i64
  %215 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %Range414 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %215, i32 0, i32 6
  %ranges415 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range414, i32 0, i32 0
  %arrayidx416 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges415, i32 0, i64 %idxprom413
  %rmin417 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx416, i32 0, i32 0
  store float %213, float* %rmin417, align 4, !tbaa !49
  %216 = load i32, i32* %i, align 4, !tbaa !5
  %mul418 = mul nsw i32 2, %216
  %add419 = add nsw i32 %mul418, 1
  %idxprom420 = sext i32 %add419 to i64
  %217 = load float*, float** %range_buff.addr, align 8, !tbaa !1
  %arrayidx421 = getelementptr inbounds float, float* %217, i64 %idxprom420
  %218 = load float, float* %arrayidx421, align 4, !tbaa !54
  %219 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom422 = sext i32 %219 to i64
  %220 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %Range423 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %220, i32 0, i32 6
  %ranges424 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range423, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges424, i32 0, i64 %idxprom422
  %rmax426 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx425, i32 0, i32 1
  store float %218, float* %rmax426, align 4, !tbaa !52
  br label %for.inc.427

for.inc.427:                                      ; preds = %for.body.410
  %221 = load i32, i32* %i, align 4, !tbaa !5
  %inc428 = add nsw i32 %221, 1
  store i32 %inc428, i32* %i, align 4, !tbaa !5
  br label %for.cond.407

for.end.429:                                      ; preds = %for.cond.407
  br label %if.end.430

if.end.430:                                       ; preds = %for.end.429, %if.then.385
  %222 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %call431 = call i32 @gs_currentoverrideicc(%struct.gs_imager_state_s* %222) #5
  %tobool432 = icmp ne i32 %call431, 0
  br i1 %tobool432, label %land.lhs.true.433, label %if.end.498

land.lhs.true.433:                                ; preds = %if.end.430
  %223 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %data_cs434 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %223, i32 0, i32 5
  %224 = load i32, i32* %data_cs434, align 4, !tbaa !48
  %cmp435 = icmp ne i32 %224, 6
  br i1 %cmp435, label %if.then.437, label %if.end.498

if.then.437:                                      ; preds = %land.lhs.true.433
  %225 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %data_cs438 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %225, i32 0, i32 5
  %226 = load i32, i32* %data_cs438, align 4, !tbaa !48
  switch i32 %226, label %sw.default [
    i32 2, label %sw.bb.439
    i32 1, label %sw.bb.440
    i32 3, label %sw.bb.443
  ]

sw.bb.439:                                        ; preds = %if.then.437
  %227 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %227, i32 0, i32 35
  %228 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !55
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %228, i32 0, i32 2
  %229 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !68
  %230 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %230, i32 0, i32 6
  store %struct.cmm_profile_s* %229, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !70
  br label %sw.epilog.446

sw.bb.440:                                        ; preds = %if.then.437
  %231 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %icc_manager441 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %231, i32 0, i32 35
  %232 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager441, align 8, !tbaa !55
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %232, i32 0, i32 1
  %233 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !71
  %234 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data442 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %234, i32 0, i32 6
  store %struct.cmm_profile_s* %233, %struct.cmm_profile_s** %cmm_icc_profile_data442, align 8, !tbaa !70
  br label %sw.epilog.446

sw.bb.443:                                        ; preds = %if.then.437
  %235 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %icc_manager444 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %235, i32 0, i32 35
  %236 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager444, align 8, !tbaa !55
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %236, i32 0, i32 3
  %237 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !72
  %238 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data445 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %238, i32 0, i32 6
  store %struct.cmm_profile_s* %237, %struct.cmm_profile_s** %cmm_icc_profile_data445, align 8, !tbaa !70
  br label %sw.epilog.446

sw.default:                                       ; preds = %if.then.437
  br label %sw.epilog.446

sw.epilog.446:                                    ; preds = %sw.default, %sw.bb.443, %sw.bb.440, %sw.bb.439
  br label %do.body.447

do.body.447:                                      ; preds = %sw.epilog.446
  %239 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool448 = icmp ne %struct.cmm_profile_s* %239, null
  br i1 %tobool448, label %if.then.449, label %if.end.478

if.then.449:                                      ; preds = %do.body.447
  br label %do.body.450

do.body.450:                                      ; preds = %if.then.449
  br label %do.body.451

do.body.451:                                      ; preds = %do.body.450
  br label %do.cond.452

do.cond.452:                                      ; preds = %do.body.451
  br label %do.end.453

do.end.453:                                       ; preds = %do.cond.452
  %240 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc454 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %240, i32 0, i32 18
  %ref_count455 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc454, i32 0, i32 0
  %241 = load i64, i64* %ref_count455, align 8, !tbaa !33
  %add456 = add nsw i64 %241, -2
  store i64 %add456, i64* %ref_count455, align 8, !tbaa !33
  br label %do.cond.457

do.cond.457:                                      ; preds = %do.end.453
  br label %do.end.458

do.end.458:                                       ; preds = %do.cond.457
  %242 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc459 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %242, i32 0, i32 18
  %ref_count460 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc459, i32 0, i32 0
  %243 = load i64, i64* %ref_count460, align 8, !tbaa !33
  %tobool461 = icmp ne i64 %243, 0
  br i1 %tobool461, label %if.else.473, label %if.then.462

if.then.462:                                      ; preds = %do.end.458
  br label %do.body.463

do.body.463:                                      ; preds = %if.then.462
  br label %do.body.464

do.body.464:                                      ; preds = %do.body.463
  br label %do.cond.465

do.cond.465:                                      ; preds = %do.body.464
  br label %do.end.466

do.end.466:                                       ; preds = %do.cond.465
  %244 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc467 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %244, i32 0, i32 18
  %free468 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc467, i32 0, i32 2
  %245 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free468, align 8, !tbaa !38
  %246 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc469 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %246, i32 0, i32 18
  %memory470 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc469, i32 0, i32 1
  %247 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory470, align 8, !tbaa !39
  %248 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %249 = bitcast %struct.cmm_profile_s* %248 to i8*
  call void %245(%struct.gs_memory_s* %247, i8* %249, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.471

do.cond.471:                                      ; preds = %do.end.466
  br label %do.end.472

do.end.472:                                       ; preds = %do.cond.471
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  br label %if.end.477

if.else.473:                                      ; preds = %do.end.458
  br label %do.body.474

do.body.474:                                      ; preds = %if.else.473
  br label %do.cond.475

do.cond.475:                                      ; preds = %do.body.474
  br label %do.end.476

do.end.476:                                       ; preds = %do.cond.475
  br label %if.end.477

if.end.477:                                       ; preds = %do.end.476, %do.end.472
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %do.body.447
  br label %do.cond.479

do.cond.479:                                      ; preds = %if.end.478
  br label %do.end.480

do.end.480:                                       ; preds = %do.cond.479
  br label %do.body.481

do.body.481:                                      ; preds = %do.end.480
  %250 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data482 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %250, i32 0, i32 6
  %251 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data482, align 8, !tbaa !70
  %tobool483 = icmp ne %struct.cmm_profile_s* %251, null
  br i1 %tobool483, label %if.then.484, label %if.end.495

if.then.484:                                      ; preds = %do.body.481
  br label %do.body.485

do.body.485:                                      ; preds = %if.then.484
  %252 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data486 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %252, i32 0, i32 6
  %253 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data486, align 8, !tbaa !70
  %rc487 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %253, i32 0, i32 18
  %ref_count488 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc487, i32 0, i32 0
  %254 = load i64, i64* %ref_count488, align 8, !tbaa !33
  %inc489 = add nsw i64 %254, 1
  store i64 %inc489, i64* %ref_count488, align 8, !tbaa !33
  br label %do.body.490

do.body.490:                                      ; preds = %do.body.485
  br label %do.cond.491

do.cond.491:                                      ; preds = %do.body.490
  br label %do.end.492

do.end.492:                                       ; preds = %do.cond.491
  br label %do.cond.493

do.cond.493:                                      ; preds = %do.end.492
  br label %do.end.494

do.end.494:                                       ; preds = %do.cond.493
  br label %if.end.495

if.end.495:                                       ; preds = %do.end.494, %do.body.481
  br label %do.cond.496

do.cond.496:                                      ; preds = %if.end.495
  br label %do.end.497

do.end.497:                                       ; preds = %do.cond.496
  br label %if.end.498

if.end.498:                                       ; preds = %do.end.497, %land.lhs.true.433, %if.end.430
  %255 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs499 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %255, i32 0, i32 0
  %256 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs499, align 8, !tbaa !7
  %257 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call500 = call i32 @gs_setcolorspace(%struct.gs_state_s* %256, %struct.gs_color_space_s* %257) #5
  store i32 %call500, i32* %code, align 4, !tbaa !5
  br label %do.body.501

do.body.501:                                      ; preds = %if.end.498
  %258 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %tobool502 = icmp ne %struct.gs_color_space_s* %258, null
  br i1 %tobool502, label %if.then.503, label %if.end.535

if.then.503:                                      ; preds = %do.body.501
  br label %do.body.504

do.body.504:                                      ; preds = %if.then.503
  br label %do.body.505

do.body.505:                                      ; preds = %do.body.504
  br label %do.cond.506

do.cond.506:                                      ; preds = %do.body.505
  br label %do.end.507

do.end.507:                                       ; preds = %do.cond.506
  %259 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc508 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %259, i32 0, i32 1
  %ref_count509 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc508, i32 0, i32 0
  %260 = load i64, i64* %ref_count509, align 8, !tbaa !40
  %add510 = add nsw i64 %260, -1
  store i64 %add510, i64* %ref_count509, align 8, !tbaa !40
  br label %do.cond.511

do.cond.511:                                      ; preds = %do.end.507
  br label %do.end.512

do.end.512:                                       ; preds = %do.cond.511
  %261 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc513 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %261, i32 0, i32 1
  %ref_count514 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc513, i32 0, i32 0
  %262 = load i64, i64* %ref_count514, align 8, !tbaa !40
  %tobool515 = icmp ne i64 %262, 0
  br i1 %tobool515, label %if.else.530, label %if.then.516

if.then.516:                                      ; preds = %do.end.512
  br label %do.body.517

do.body.517:                                      ; preds = %if.then.516
  br label %do.body.518

do.body.518:                                      ; preds = %do.body.517
  br label %do.cond.519

do.cond.519:                                      ; preds = %do.body.518
  br label %do.end.520

do.end.520:                                       ; preds = %do.cond.519
  %263 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc521 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %263, i32 0, i32 1
  %free522 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc521, i32 0, i32 2
  %264 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free522, align 8, !tbaa !42
  %265 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %rc523 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %265, i32 0, i32 1
  %memory524 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc523, i32 0, i32 1
  %266 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory524, align 8, !tbaa !43
  %267 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %268 = bitcast %struct.gs_color_space_s* %267 to i8*
  call void %264(%struct.gs_memory_s* %266, i8* %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.525

do.cond.525:                                      ; preds = %do.end.520
  br label %do.end.526

do.end.526:                                       ; preds = %do.cond.525
  br label %do.body.527

do.body.527:                                      ; preds = %do.end.526
  br label %do.cond.528

do.cond.528:                                      ; preds = %do.body.527
  br label %do.end.529

do.end.529:                                       ; preds = %do.cond.528
  br label %if.end.534

if.else.530:                                      ; preds = %do.end.512
  br label %do.body.531

do.body.531:                                      ; preds = %if.else.530
  br label %do.cond.532

do.cond.532:                                      ; preds = %do.body.531
  br label %do.end.533

do.end.533:                                       ; preds = %do.cond.532
  br label %if.end.534

if.end.534:                                       ; preds = %do.end.533, %do.end.529
  br label %if.end.535

if.end.535:                                       ; preds = %if.end.534, %do.body.501
  br label %do.cond.536

do.cond.536:                                      ; preds = %if.end.535
  br label %do.end.537

do.end.537:                                       ; preds = %do.cond.536
  br label %do.body.538

do.body.538:                                      ; preds = %do.end.537
  %269 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool539 = icmp ne %struct.cmm_profile_s* %269, null
  br i1 %tobool539, label %if.then.540, label %if.end.569

if.then.540:                                      ; preds = %do.body.538
  br label %do.body.541

do.body.541:                                      ; preds = %if.then.540
  br label %do.body.542

do.body.542:                                      ; preds = %do.body.541
  br label %do.cond.543

do.cond.543:                                      ; preds = %do.body.542
  br label %do.end.544

do.end.544:                                       ; preds = %do.cond.543
  %270 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc545 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %270, i32 0, i32 18
  %ref_count546 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc545, i32 0, i32 0
  %271 = load i64, i64* %ref_count546, align 8, !tbaa !33
  %add547 = add nsw i64 %271, -1
  store i64 %add547, i64* %ref_count546, align 8, !tbaa !33
  br label %do.cond.548

do.cond.548:                                      ; preds = %do.end.544
  br label %do.end.549

do.end.549:                                       ; preds = %do.cond.548
  %272 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc550 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %272, i32 0, i32 18
  %ref_count551 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc550, i32 0, i32 0
  %273 = load i64, i64* %ref_count551, align 8, !tbaa !33
  %tobool552 = icmp ne i64 %273, 0
  br i1 %tobool552, label %if.else.564, label %if.then.553

if.then.553:                                      ; preds = %do.end.549
  br label %do.body.554

do.body.554:                                      ; preds = %if.then.553
  br label %do.body.555

do.body.555:                                      ; preds = %do.body.554
  br label %do.cond.556

do.cond.556:                                      ; preds = %do.body.555
  br label %do.end.557

do.end.557:                                       ; preds = %do.cond.556
  %274 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc558 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %274, i32 0, i32 18
  %free559 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc558, i32 0, i32 2
  %275 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free559, align 8, !tbaa !38
  %276 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc560 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %276, i32 0, i32 18
  %memory561 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc560, i32 0, i32 1
  %277 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory561, align 8, !tbaa !39
  %278 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %279 = bitcast %struct.cmm_profile_s* %278 to i8*
  call void %275(%struct.gs_memory_s* %277, i8* %279, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.seticc, i32 0, i32 0)) #5
  br label %do.cond.562

do.cond.562:                                      ; preds = %do.end.557
  br label %do.end.563

do.end.563:                                       ; preds = %do.cond.562
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  br label %if.end.568

if.else.564:                                      ; preds = %do.end.549
  br label %do.body.565

do.body.565:                                      ; preds = %if.else.564
  br label %do.cond.566

do.cond.566:                                      ; preds = %do.body.565
  br label %do.end.567

do.end.567:                                       ; preds = %do.cond.566
  br label %if.end.568

if.end.568:                                       ; preds = %do.end.567, %do.end.563
  br label %if.end.569

if.end.569:                                       ; preds = %if.end.568, %do.body.538
  br label %do.cond.570

do.cond.570:                                      ; preds = %if.end.569
  br label %do.end.571

do.end.571:                                       ; preds = %do.cond.570
  %280 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %280, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %281 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !73
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %281, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !73
  %282 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %282, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.572

cleanup.572:                                      ; preds = %do.end.571, %do.end.380, %do.end.301, %do.end.224, %do.end.149, %if.then.43, %cleanup, %cond.end, %if.then
  %283 = bitcast %struct.ref_s** %pnameval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %284 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #1
  %287 = bitcast %struct.cmm_profile_s** %picc_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #1
  %289 = bitcast %struct.ref_s** %pstrmval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = load i32, i32* %retval
  ret i32 %294
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @file_switch_to_read(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_cspace_build_ICC(%struct.gs_color_space_s**, i8*, %struct.gs_memory_s*) #2

declare %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s*) #2

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

declare %struct.cmm_profile_s* @gsicc_get_profile_handle_file(i8*, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s*, %struct.gs_memory_s*, i8*, i32) #2

declare i32 @gsicc_set_gscs_profile(%struct.gs_color_space_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*) #2

declare i8* @gsicc_get_profile_handle_buffer(i8*, i32, %struct.gs_memory_s*) #2

declare i32 @gscms_get_profile_data_space(i8*) #2

declare void @gsicc_init_hash_cs(%struct.cmm_profile_s*, %struct.gs_imager_state_s*) #2

declare i32 @gs_currentoverrideicc(%struct.gs_imager_state_s*) #2

declare i32 @gs_setcolorspace(%struct.gs_state_s*, %struct.gs_color_space_s*) #2

; Function Attrs: nounwind uwtable
define i32 @seticc_lab(%struct.gs_context_state_s* %i_ctx_p, float* %white, float* %black, float* %range_buff) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %white.addr = alloca float*, align 8
  %black.addr = alloca float*, align 8
  %range_buff.addr = alloca float*, align 8
  %code = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %palt_cs = alloca %struct.gs_color_space_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %i = alloca i32, align 4
  %val = alloca %struct.gs_param_string_s, align 8
  %pval = alloca %struct.gs_param_string_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store float* %white, float** %white.addr, align 8, !tbaa !1
  store float* %black, float** %black.addr, align 8, !tbaa !1
  store float* %range_buff, float** %range_buff.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %6 = bitcast %struct.gs_state_s* %5 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %6, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gs_param_string_s* %val to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast %struct.gs_param_string_s** %pval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** @seticc_lab.rfs, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %val, i32 0, i32 0
  store i8* %10, i8** %data, align 8, !tbaa !74
  %11 = load i8*, i8** @seticc_lab.rfs, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %11) #7
  %conv = trunc i64 %call to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %val, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !76
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %val, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !77
  store %struct.gs_param_string_s* %val, %struct.gs_param_string_s** %pval, align 8, !tbaa !1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !7
  %call2 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %13) #5
  store %struct.gs_color_space_s* %call2, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 0
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs3, align 8, !tbaa !7
  %call4 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %15) #5
  %call5 = call i32 @gs_cspace_build_ICC(%struct.gs_color_space_s** %pcs, i8* null, %struct.gs_memory_s* %call4) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call7 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.seticc_lab, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 495, i32 1, i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %icc_manager = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %18, i32 0, i32 35
  %19 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !55
  %lab_profile = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %19, i32 0, i32 4
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile, align 8, !tbaa !78
  %cmp8 = icmp eq %struct.cmm_profile_s* %20, null
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %call11 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.seticc_lab, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 505, i32 1, i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)) #5
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %22 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %23 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %icc_manager13 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %23, i32 0, i32 35
  %24 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager13, align 8, !tbaa !55
  %lab_profile14 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %24, i32 0, i32 4
  %25 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile14, align 8, !tbaa !78
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 0
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs15, align 8, !tbaa !7
  %call16 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %27) #5
  %call17 = call i32 @gsicc_set_gscs_profile(%struct.gs_color_space_s* %22, %struct.cmm_profile_s* %25, %struct.gs_memory_s* %call16) #5
  store i32 %call17, i32* %code, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %icc_manager18 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %28, i32 0, i32 35
  %29 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager18, align 8, !tbaa !55
  %lab_profile19 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %29, i32 0, i32 4
  %30 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile19, align 8, !tbaa !78
  %tobool = icmp ne %struct.cmm_profile_s* %30, null
  br i1 %tobool, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %do.body
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %icc_manager22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %31, i32 0, i32 35
  %32 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager22, align 8, !tbaa !55
  %lab_profile23 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %32, i32 0, i32 4
  %33 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %lab_profile23, align 8, !tbaa !78
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %33, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %34 = load i64, i64* %ref_count, align 8, !tbaa !33
  %inc = add nsw i64 %34, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !33
  br label %do.body.24

do.body.24:                                       ; preds = %do.body.21
  br label %do.cond

do.cond:                                          ; preds = %do.body.24
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.end
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  br label %if.end.27

if.end.27:                                        ; preds = %do.end.26, %do.body
  br label %do.cond.28

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %35, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %do.end.29
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %call33 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.seticc_lab, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 511, i32 1, i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0)) #5
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %do.end.29
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %37, i32 0, i32 6
  %38 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !70
  %Range = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %38, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range, i32 0, i32 0
  %arrayidx = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  store float 0.000000e+00, float* %rmin, align 4, !tbaa !49
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data35 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %39, i32 0, i32 6
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data35, align 8, !tbaa !70
  %Range36 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %40, i32 0, i32 6
  %ranges37 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range36, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges37, i32 0, i64 0
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx38, i32 0, i32 1
  store float 1.000000e+02, float* %rmax, align 4, !tbaa !52
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %41, 3
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %42, 1
  %mul = mul nsw i32 2, %sub
  %idxprom = sext i32 %mul to i64
  %43 = load float*, float** %range_buff.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds float, float* %43, i64 %idxprom
  %44 = load float, float* %arrayidx41, align 4, !tbaa !54
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %45 to i64
  %46 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data43 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %46, i32 0, i32 6
  %47 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data43, align 8, !tbaa !70
  %Range44 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %47, i32 0, i32 6
  %ranges45 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range44, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges45, i32 0, i64 %idxprom42
  %rmin47 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx46, i32 0, i32 0
  store float %44, float* %rmin47, align 4, !tbaa !49
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %sub48 = sub nsw i32 %48, 1
  %mul49 = mul nsw i32 2, %sub48
  %add = add nsw i32 %mul49, 1
  %idxprom50 = sext i32 %add to i64
  %49 = load float*, float** %range_buff.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds float, float* %49, i64 %idxprom50
  %50 = load float, float* %arrayidx51, align 4, !tbaa !54
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %51 to i64
  %52 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data53 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %52, i32 0, i32 6
  %53 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data53, align 8, !tbaa !70
  %Range54 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %53, i32 0, i32 6
  %ranges55 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range54, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges55, i32 0, i64 %idxprom52
  %rmax57 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx56, i32 0, i32 1
  store float %50, float* %rmax57, align 4, !tbaa !52
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %inc58 = add nsw i32 %54, 1
  store i32 %inc58, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 0
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs59, align 8, !tbaa !7
  %57 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call60 = call i32 @gs_setcolorspace(%struct.gs_state_s* %56, %struct.gs_color_space_s* %57) #5
  store i32 %call60, i32* %code, align 4, !tbaa !5
  %58 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.32, %if.then.10, %if.then
  %59 = bitcast %struct.gs_param_string_s** %pval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.gs_param_string_s* %val to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define i32 @seticc_cal(%struct.gs_context_state_s* %i_ctx_p, float* %white, float* %black, float* %gamma, float* %matrix, i32 %num_colorants, i64 %dictkey) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %white.addr = alloca float*, align 8
  %black.addr = alloca float*, align 8
  %gamma.addr = alloca float*, align 8
  %matrix.addr = alloca float*, align 8
  %num_colorants.addr = alloca i32, align 4
  %dictkey.addr = alloca i64, align 8
  %code = alloca i32, align 4
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  %cal_profile = alloca %struct.cmm_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store float* %white, float** %white.addr, align 8, !tbaa !1
  store float* %black, float** %black.addr, align 8, !tbaa !1
  store float* %gamma, float** %gamma.addr, align 8, !tbaa !1
  store float* %matrix, float** %matrix.addr, align 8, !tbaa !1
  store i32 %num_colorants, i32* %num_colorants.addr, align 4, !tbaa !5
  store i64 %dictkey, i64* %dictkey.addr, align 8, !tbaa !79
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 0
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %5 = bitcast %struct.gs_state_s* %4 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %5, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %6 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !80
  store %struct.gs_memory_s* %8, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.cmm_profile_s** %cal_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i64, i64* %dictkey.addr, align 8, !tbaa !79
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !7
  %call = call %struct.gs_color_space_s* @gsicc_find_cs(i64 %11, %struct.gs_state_s* %13) #5
  store %struct.gs_color_space_s* %call, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %14 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_space_s* %14, null
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 0
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !81
  %call2 = call i32 @gs_cspace_build_ICC(%struct.gs_color_space_s** %pcs, i8* null, %struct.gs_memory_s* %16) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %17, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %call5 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.seticc_cal, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 546, i32 1, i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %19 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %base_space = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %19, i32 0, i32 3
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %base_space, align 8, !tbaa !82
  %20 = load float*, float** %white.addr, align 8, !tbaa !1
  %21 = load float*, float** %black.addr, align 8, !tbaa !1
  %22 = load float*, float** %gamma.addr, align 8, !tbaa !1
  %23 = load float*, float** %matrix.addr, align 8, !tbaa !1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %stable_memory6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 0
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory6, align 8, !tbaa !81
  %26 = load i32, i32* %num_colorants.addr, align 4, !tbaa !5
  %call7 = call %struct.cmm_profile_s* @gsicc_create_from_cal(float* %20, float* %21, float* %22, float* %23, %struct.gs_memory_s* %25, i32 %26) #5
  store %struct.cmm_profile_s* %call7, %struct.cmm_profile_s** %cal_profile, align 8, !tbaa !1
  %27 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cal_profile, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.cmm_profile_s* %27, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %call10 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.seticc_cal, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 553, i32 1, i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0)) #5
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %28 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %29 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cal_profile, align 8, !tbaa !1
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %stable_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 0
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory12, align 8, !tbaa !81
  %call13 = call i32 @gsicc_set_gscs_profile(%struct.gs_color_space_s* %28, %struct.cmm_profile_s* %29, %struct.gs_memory_s* %31) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %32, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.11
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %call16 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.seticc_cal, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 557, i32 1, i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0)) #5
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.11
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %35 = load i32, i32* %num_colorants.addr, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %34, %35
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %37, i32 0, i32 6
  %38 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data, align 8, !tbaa !70
  %Range = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %38, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range, i32 0, i32 0
  %arrayidx = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  store float 0.000000e+00, float* %rmin, align 4, !tbaa !49
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %39 to i64
  %40 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %cmm_icc_profile_data20 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %40, i32 0, i32 6
  %41 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmm_icc_profile_data20, align 8, !tbaa !70
  %Range21 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %41, i32 0, i32 6
  %ranges22 = getelementptr inbounds %struct.gs_range_icc_s, %struct.gs_range_icc_s* %Range21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [15 x %struct.gs_range_s], [15 x %struct.gs_range_s]* %ranges22, i32 0, i64 %idxprom19
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx23, i32 0, i32 1
  store float 1.000000e+00, float* %rmax, align 4, !tbaa !52
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 0
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs24, align 8, !tbaa !7
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %46 = load i64, i64* %dictkey.addr, align 8, !tbaa !79
  call void @gsicc_add_cs(%struct.gs_state_s* %44, %struct.gs_color_space_s* %45, i64 %46) #5
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %entry
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 0
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs26, align 8, !tbaa !7
  %49 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call27 = call i32 @gs_setcolorspace(%struct.gs_state_s* %48, %struct.gs_color_space_s* %49) #5
  store i32 %call27, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.15, %if.then.9, %if.then.4
  %51 = bitcast %struct.cmm_profile_s** %cal_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare %struct.gs_color_space_s* @gsicc_find_cs(i64, %struct.gs_state_s*) #2

declare %struct.cmm_profile_s* @gsicc_create_from_cal(float*, float*, float*, float*, %struct.gs_memory_s*, i32) #2

declare void @gsicc_add_cs(%struct.gs_state_s*, %struct.gs_color_space_s*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @zseticcspace(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %palt_cs = alloca %struct.gs_color_space_s*, align 8
  %pnval = alloca %struct.ref_s*, align 8
  %pstrmval = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %range_buff = alloca [8 x float], align 16
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !73
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.ref_s** %pnval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.ref_s** %pstrmval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast [8 x float]* %range_buff to i8*
  call void @llvm.lifetime.start(i64 32, i8* %10) #1
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), %struct.ref_s** %pnval) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end:                                           ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %pnval, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %15 = load i64, i64* %intval, align 8, !tbaa !79
  %conv = trunc i64 %15 to i32
  store i32 %conv, i32* %ncomps, align 4, !tbaa !5
  %16 = load i32, i32* %ncomps, align 4, !tbaa !5
  %mul = mul nsw i32 2, %16
  %conv1 = sext i32 %mul to i64
  %cmp2 = icmp ugt i64 %conv1, 8
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end.5:                                         ; preds = %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call6 = call i32 @dict_find_string(%struct.ref_s* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %pstrmval) #5
  %cmp7 = icmp sle i32 %call6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end.10:                                        ; preds = %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %18 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %19 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv11 = zext i16 %19 to i32
  %and = and i32 %conv11, 16160
  %cmp12 = icmp eq i32 %and, 800
  br i1 %cmp12, label %if.end.21, label %if.then.14

if.then.14:                                       ; preds = %do.body
  %20 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %21 = bitcast i16* %type_attrs16 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv17 = zext i8 %22 to i32
  %cmp18 = icmp eq i32 %conv17, 3
  br i1 %cmp18, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.14
  %23 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %call20 = call i32 @check_type_failed(%struct.ref_s* %23) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call20, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end.21:                                        ; preds = %do.body
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %24 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %pfile = bitcast %union.v* %value23 to %struct.stream_s**
  %25 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %25, %struct.stream_s** %s, align 8, !tbaa !1
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 19
  %27 = load i16, i16* %read_id, align 2, !tbaa !22
  %conv24 = zext i16 %27 to i32
  %28 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 2
  %29 = load i32, i32* %rsize, align 4, !tbaa !27
  %cmp26 = icmp ne i32 %conv24, %29
  br i1 %cmp26, label %if.then.28, label %if.end.45

if.then.28:                                       ; preds = %do.body.22
  %30 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id29 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 19
  %31 = load i16, i16* %read_id29, align 2, !tbaa !22
  %conv30 = zext i16 %31 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.28
  %32 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %32, i32 0, i32 20
  %33 = load i16, i16* %write_id, align 2, !tbaa !28
  %conv33 = zext i16 %33 to i32
  %34 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %rsize35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 2
  %35 = load i32, i32* %rsize35, align 4, !tbaa !27
  %cmp36 = icmp eq i32 %conv33, %35
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %land.lhs.true
  %36 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %call39 = call i32 @file_switch_to_read(%struct.ref_s* %37) #5
  store i32 %call39, i32* %fcode, align 4, !tbaa !5
  %38 = load i32, i32* %fcode, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %38, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.38
  %39 = load i32, i32* %fcode, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.42
  %40 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.72 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.44

if.else:                                          ; preds = %land.lhs.true, %if.then.28
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 18
  %42 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !29
  store %struct.stream_s* %42, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %do.body.22
  br label %do.cond

do.cond:                                          ; preds = %if.end.45
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 0
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %call48 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %44) #5
  store %struct.gs_color_space_s* %call48, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %45 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %45, i32 0, i32 0
  %46 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !83
  %can_be_alt_space = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %46, i32 0, i32 2
  %47 = load i32, i32* %can_be_alt_space, align 4, !tbaa !84
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.52

lor.lhs.false:                                    ; preds = %do.end.47
  %48 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %palt_cs, align 8, !tbaa !1
  %call49 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %48) #5
  %cmp50 = icmp eq i32 %call49, 12
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false, %do.end.47
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end.53:                                        ; preds = %lor.lhs.false
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !86
  %51 = bitcast %struct.gs_ref_memory_s* %50 to %struct.gs_memory_s*
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %53 = load i32, i32* %ncomps, align 4, !tbaa !5
  %mul54 = mul nsw i32 2, %53
  %arraydecay = getelementptr inbounds [8 x float], [8 x float]* %range_buff, i32 0, i32 0
  %call55 = call i32 @dict_floats_param(%struct.gs_memory_s* %51, %struct.ref_s* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %mul54, float* %arraydecay, float* getelementptr inbounds ([8 x float], [8 x float]* @zseticcspace.dflt_range, i32 0, i32 0)) #5
  store i32 %call55, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.53
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %55 = load i32, i32* %ncomps, align 4, !tbaa !5
  %mul56 = mul nsw i32 2, %55
  %cmp57 = icmp slt i32 %54, %mul56
  br i1 %cmp57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %56, 1
  %idxprom = sext i32 %add to i64
  %arrayidx59 = getelementptr inbounds [8 x float], [8 x float]* %range_buff, i32 0, i64 %idxprom
  %57 = load float, float* %arrayidx59, align 4, !tbaa !54
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %58 to i64
  %arrayidx61 = getelementptr inbounds [8 x float], [8 x float]* %range_buff, i32 0, i64 %idxprom60
  %59 = load float, float* %arrayidx61, align 4, !tbaa !54
  %cmp62 = fcmp oge float %57, %59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %60 = phi i1 [ false, %for.cond ], [ %cmp62, %land.rhs ]
  br i1 %60, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %add64 = add nsw i32 %61, 2
  store i32 %add64, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %63 = load i32, i32* %ncomps, align 4, !tbaa !5
  %mul65 = mul nsw i32 2, %63
  %cmp66 = icmp ne i32 %62, %mul65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

if.end.69:                                        ; preds = %for.end
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %65 = load i32, i32* %ncomps, align 4, !tbaa !5
  %66 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay70 = getelementptr inbounds [8 x float], [8 x float]* %range_buff, i32 0, i32 0
  %call71 = call i32 @seticc(%struct.gs_context_state_s* %64, i32 %65, %struct.ref_s* %66, float* %arraydecay70) #5
  store i32 %call71, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.72

cleanup.72:                                       ; preds = %if.end.69, %if.then.68, %if.then.52, %cleanup, %cond.end, %if.then.9, %if.then.4, %if.then
  %67 = bitcast [8 x float]* %range_buff to i8*
  call void @llvm.lifetime.end(i64 32, i8* %67) #1
  %68 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.ref_s** %pstrmval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.ref_s** %pnval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.gs_color_space_s** %palt_cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @zset_outputintent(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %pnval = alloca %struct.ref_s*, align 8
  %pstrmval = alloca %struct.ref_s*, align 8
  %ncomps = alloca i32, align 4
  %dev_comps = alloca i32, align 4
  %picc_profile = alloca %struct.cmm_profile_s*, align 8
  %expected = alloca i32, align 4
  %index = alloca i32, align 4
  %icc_manager = alloca %struct.gsicc_manager_s*, align 8
  %source_profile = alloca %struct.cmm_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !73
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 0
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %6) #5
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %7 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !7
  %10 = bitcast %struct.gs_state_s* %9 to %struct.gs_imager_state_s*
  store %struct.gs_imager_state_s* %10, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %11 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %struct.stream_s* null, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = bitcast %struct.ref_s** %pnval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast %struct.ref_s** %pstrmval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %dev_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast %struct.cmm_profile_s** %picc_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %expected, align 4, !tbaa !5
  %19 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast %struct.gsicc_manager_s** %icc_manager to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %icc_manager2 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %21, i32 0, i32 35
  %22 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager2, align 8, !tbaa !55
  store %struct.gsicc_manager_s* %22, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %23 = bitcast %struct.cmm_profile_s** %source_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %source_profile, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %25 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %26 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call4 = call i32 @check_type_failed(%struct.ref_s* %27) #5
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %29 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %29, i32 0, i32 0
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %30 = load i16, i16* %type_attrs6, align 2, !tbaa !20
  %conv7 = zext i16 %30 to i32
  %and = and i32 %conv7, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.9:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.10

do.body.10:                                       ; preds = %do.end
  br label %do.cond.11

do.cond.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %32 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !87
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call13 = call i32 %32(%struct.gx_device_s* %33, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %34 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.cmm_dev_profile_s* %34, null
  br i1 %cmp14, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %do.end.12
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call17 = call i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %35, i8* null, i32 0) #5
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 42
  %get_profile19 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs18, i32 0, i32 67
  %37 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile19, align 8, !tbaa !87
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call20 = call i32 %37(%struct.gx_device_s* %38, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call20, i32* %code, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %do.end.12
  %39 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %oi_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %39, i32 0, i32 3
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %oi_profile, align 8, !tbaa !97
  %cmp22 = icmp ne %struct.cmm_profile_s* %40, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.25:                                        ; preds = %if.end.21
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call26 = call i32 @dict_find_string(%struct.ref_s* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), %struct.ref_s** %pnval) #5
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %42, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  %43 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.30:                                        ; preds = %if.end.25
  %44 = load %struct.ref_s*, %struct.ref_s** %pnval, align 8, !tbaa !1
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  %intval = bitcast %union.v* %value31 to i64*
  %45 = load i64, i64* %intval, align 8, !tbaa !79
  %conv32 = trunc i64 %45 to i32
  store i32 %conv32, i32* %ncomps, align 4, !tbaa !5
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call33 = call i32 @dict_find_string(%struct.ref_s* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %pstrmval) #5
  %cmp34 = icmp sle i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.30
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.37:                                        ; preds = %if.end.30
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %47 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  %48 = load i16, i16* %type_attrs40, align 2, !tbaa !20
  %conv41 = zext i16 %48 to i32
  %and42 = and i32 %conv41, 16160
  %cmp43 = icmp eq i32 %and42, 800
  br i1 %cmp43, label %if.end.53, label %if.then.45

if.then.45:                                       ; preds = %do.body.38
  %49 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  %50 = bitcast i16* %type_attrs47 to i8*
  %arrayidx48 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx48, align 1, !tbaa !21
  %conv49 = zext i8 %51 to i32
  %cmp50 = icmp eq i32 %conv49, 3
  br i1 %cmp50, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.45
  %52 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %call52 = call i32 @check_type_failed(%struct.ref_s* %52) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call52, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.53:                                        ; preds = %do.body.38
  br label %do.body.54

do.body.54:                                       ; preds = %if.end.53
  %53 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  %pfile = bitcast %union.v* %value55 to %struct.stream_s**
  %54 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %54, %struct.stream_s** %s, align 8, !tbaa !1
  %55 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 19
  %56 = load i16, i16* %read_id, align 2, !tbaa !22
  %conv56 = zext i16 %56 to i32
  %57 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas57, i32 0, i32 2
  %58 = load i32, i32* %rsize, align 4, !tbaa !27
  %cmp58 = icmp ne i32 %conv56, %58
  br i1 %cmp58, label %if.then.60, label %if.end.77

if.then.60:                                       ; preds = %do.body.54
  %59 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id61 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 19
  %60 = load i16, i16* %read_id61, align 2, !tbaa !22
  %conv62 = zext i16 %60 to i32
  %cmp63 = icmp eq i32 %conv62, 0
  br i1 %cmp63, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.60
  %61 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %61, i32 0, i32 20
  %62 = load i16, i16* %write_id, align 2, !tbaa !28
  %conv65 = zext i16 %62 to i32
  %63 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %tas66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %rsize67 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas66, i32 0, i32 2
  %64 = load i32, i32* %rsize67, align 4, !tbaa !27
  %cmp68 = icmp eq i32 %conv65, %64
  br i1 %cmp68, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %land.lhs.true
  %65 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load %struct.ref_s*, %struct.ref_s** %pstrmval, align 8, !tbaa !1
  %call71 = call i32 @file_switch_to_read(%struct.ref_s* %66) #5
  store i32 %call71, i32* %fcode, align 4, !tbaa !5
  %67 = load i32, i32* %fcode, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %67, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.70
  %68 = load i32, i32* %fcode, align 4, !tbaa !5
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %if.then.70
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.75, %if.then.74
  %69 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.520 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.76

if.else:                                          ; preds = %land.lhs.true, %if.then.60
  %70 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %70, i32 0, i32 18
  %71 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !29
  store %struct.stream_s* %71, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %do.body.54
  br label %do.cond.78

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  br label %do.cond.80

do.cond.80:                                       ; preds = %do.end.79
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  %72 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs82 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 0
  %74 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs82, align 8, !tbaa !7
  %call83 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %74) #5
  %call84 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* %72, %struct.gs_memory_s* %call83, i8* null, i32 0) #5
  store %struct.cmm_profile_s* %call84, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %75 = load i32, i32* %ncomps, align 4, !tbaa !5
  %conv85 = trunc i32 %75 to i8
  %76 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %76, i32 0, i32 0
  store i8 %conv85, i8* %num_comps, align 1, !tbaa !44
  %77 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %77, i32 0, i32 14
  %78 = load i8*, i8** %buffer, align 8, !tbaa !45
  %79 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %79, i32 0, i32 11
  %80 = load i32, i32* %buffer_size, align 4, !tbaa !46
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs86 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 0
  %82 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs86, align 8, !tbaa !7
  %call87 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %82) #5
  %call88 = call i8* @gsicc_get_profile_handle_buffer(i8* %78, i32 %80, %struct.gs_memory_s* %call87) #5
  %83 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %profile_handle = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %83, i32 0, i32 17
  store i8* %call88, i8** %profile_handle, align 8, !tbaa !47
  %84 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %profile_handle89 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %84, i32 0, i32 17
  %85 = load i8*, i8** %profile_handle89, align 8, !tbaa !47
  %cmp90 = icmp eq i8* %85, null
  br i1 %cmp90, label %if.then.92, label %if.end.122

if.then.92:                                       ; preds = %do.end.81
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.92
  %86 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool94 = icmp ne %struct.cmm_profile_s* %86, null
  br i1 %tobool94, label %if.then.95, label %if.end.119

if.then.95:                                       ; preds = %do.body.93
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.body.96
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.body.97
  br label %do.end.99

do.end.99:                                        ; preds = %do.cond.98
  %87 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %87, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %88 = load i64, i64* %ref_count, align 8, !tbaa !33
  %add = add nsw i64 %88, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !33
  br label %do.cond.100

do.cond.100:                                      ; preds = %do.end.99
  br label %do.end.101

do.end.101:                                       ; preds = %do.cond.100
  %89 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc102 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %89, i32 0, i32 18
  %ref_count103 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc102, i32 0, i32 0
  %90 = load i64, i64* %ref_count103, align 8, !tbaa !33
  %tobool104 = icmp ne i64 %90, 0
  br i1 %tobool104, label %if.else.114, label %if.then.105

if.then.105:                                      ; preds = %do.end.101
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  br label %do.body.107

do.body.107:                                      ; preds = %do.body.106
  br label %do.cond.108

do.cond.108:                                      ; preds = %do.body.107
  br label %do.end.109

do.end.109:                                       ; preds = %do.cond.108
  %91 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc110 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %91, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc110, i32 0, i32 2
  %92 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !38
  %93 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc111 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %93, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc111, i32 0, i32 1
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !39
  %95 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %96 = bitcast %struct.cmm_profile_s* %95 to i8*
  call void %92(%struct.gs_memory_s* %94, i8* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #5
  br label %do.cond.112

do.cond.112:                                      ; preds = %do.end.109
  br label %do.end.113

do.end.113:                                       ; preds = %do.cond.112
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  br label %if.end.118

if.else.114:                                      ; preds = %do.end.101
  br label %do.body.115

do.body.115:                                      ; preds = %if.else.114
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %if.end.118

if.end.118:                                       ; preds = %do.end.117, %do.end.113
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %do.body.93
  br label %do.cond.120

do.cond.120:                                      ; preds = %if.end.119
  br label %do.end.121

do.end.121:                                       ; preds = %do.cond.120
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.122:                                       ; preds = %do.end.81
  %97 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %profile_handle123 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %97, i32 0, i32 17
  %98 = load i8*, i8** %profile_handle123, align 8, !tbaa !47
  %call124 = call i32 @gscms_get_profile_data_space(i8* %98) #5
  %99 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %99, i32 0, i32 5
  store i32 %call124, i32* %data_cs, align 4, !tbaa !48
  %100 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %data_cs125 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %100, i32 0, i32 5
  %101 = load i32, i32* %data_cs125, align 4, !tbaa !48
  switch i32 %101, label %sw.epilog [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.126
    i32 3, label %sw.bb.127
    i32 4, label %sw.bb.128
    i32 7, label %sw.bb.129
    i32 0, label %sw.bb.129
  ]

sw.bb:                                            ; preds = %if.end.122, %if.end.122, %if.end.122
  store i32 3, i32* %expected, align 4, !tbaa !5
  %102 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %102, i32 0, i32 2
  %103 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb, align 8, !tbaa !68
  store %struct.cmm_profile_s* %103, %struct.cmm_profile_s** %source_profile, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.126:                                        ; preds = %if.end.122
  store i32 1, i32* %expected, align 4, !tbaa !5
  %104 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %104, i32 0, i32 1
  %105 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray, align 8, !tbaa !71
  store %struct.cmm_profile_s* %105, %struct.cmm_profile_s** %source_profile, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.127:                                        ; preds = %if.end.122
  store i32 4, i32* %expected, align 4, !tbaa !5
  %106 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %106, i32 0, i32 3
  %107 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk, align 8, !tbaa !72
  store %struct.cmm_profile_s* %107, %struct.cmm_profile_s** %source_profile, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.128:                                        ; preds = %if.end.122
  store i32 0, i32* %expected, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.129:                                        ; preds = %if.end.122, %if.end.122
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.122, %sw.bb.129, %sw.bb.128, %sw.bb.127, %sw.bb.126, %sw.bb
  %108 = load i32, i32* %expected, align 4, !tbaa !5
  %tobool130 = icmp ne i32 %108, 0
  br i1 %tobool130, label %land.lhs.true.131, label %if.end.169

land.lhs.true.131:                                ; preds = %sw.epilog
  %109 = load i32, i32* %ncomps, align 4, !tbaa !5
  %110 = load i32, i32* %expected, align 4, !tbaa !5
  %cmp132 = icmp ne i32 %109, %110
  br i1 %cmp132, label %if.then.134, label %if.end.169

if.then.134:                                      ; preds = %land.lhs.true.131
  br label %do.body.135

do.body.135:                                      ; preds = %if.then.134
  %111 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool136 = icmp ne %struct.cmm_profile_s* %111, null
  br i1 %tobool136, label %if.then.137, label %if.end.166

if.then.137:                                      ; preds = %do.body.135
  br label %do.body.138

do.body.138:                                      ; preds = %if.then.137
  br label %do.body.139

do.body.139:                                      ; preds = %do.body.138
  br label %do.cond.140

do.cond.140:                                      ; preds = %do.body.139
  br label %do.end.141

do.end.141:                                       ; preds = %do.cond.140
  %112 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc142 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %112, i32 0, i32 18
  %ref_count143 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc142, i32 0, i32 0
  %113 = load i64, i64* %ref_count143, align 8, !tbaa !33
  %add144 = add nsw i64 %113, -1
  store i64 %add144, i64* %ref_count143, align 8, !tbaa !33
  br label %do.cond.145

do.cond.145:                                      ; preds = %do.end.141
  br label %do.end.146

do.end.146:                                       ; preds = %do.cond.145
  %114 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc147 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %114, i32 0, i32 18
  %ref_count148 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc147, i32 0, i32 0
  %115 = load i64, i64* %ref_count148, align 8, !tbaa !33
  %tobool149 = icmp ne i64 %115, 0
  br i1 %tobool149, label %if.else.161, label %if.then.150

if.then.150:                                      ; preds = %do.end.146
  br label %do.body.151

do.body.151:                                      ; preds = %if.then.150
  br label %do.body.152

do.body.152:                                      ; preds = %do.body.151
  br label %do.cond.153

do.cond.153:                                      ; preds = %do.body.152
  br label %do.end.154

do.end.154:                                       ; preds = %do.cond.153
  %116 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc155 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %116, i32 0, i32 18
  %free156 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc155, i32 0, i32 2
  %117 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free156, align 8, !tbaa !38
  %118 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc157 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %118, i32 0, i32 18
  %memory158 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc157, i32 0, i32 1
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory158, align 8, !tbaa !39
  %120 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %121 = bitcast %struct.cmm_profile_s* %120 to i8*
  call void %117(%struct.gs_memory_s* %119, i8* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #5
  br label %do.cond.159

do.cond.159:                                      ; preds = %do.end.154
  br label %do.end.160

do.end.160:                                       ; preds = %do.cond.159
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  br label %if.end.165

if.else.161:                                      ; preds = %do.end.146
  br label %do.body.162

do.body.162:                                      ; preds = %if.else.161
  br label %do.cond.163

do.cond.163:                                      ; preds = %do.body.162
  br label %do.end.164

do.end.164:                                       ; preds = %do.cond.163
  br label %if.end.165

if.end.165:                                       ; preds = %do.end.164, %do.end.160
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %do.body.135
  br label %do.cond.167

do.cond.167:                                      ; preds = %if.end.166
  br label %do.end.168

do.end.168:                                       ; preds = %do.cond.167
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.169:                                       ; preds = %land.lhs.true.131, %sw.epilog
  %122 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %123 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  call void @gsicc_init_hash_cs(%struct.cmm_profile_s* %122, %struct.gs_imager_state_s* %123) #5
  %124 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %125 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %oi_profile170 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %125, i32 0, i32 3
  store %struct.cmm_profile_s* %124, %struct.cmm_profile_s** %oi_profile170, align 8, !tbaa !97
  %126 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %memory171 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %126, i32 0, i32 21
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory171, align 8, !tbaa !99
  %procs172 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %127, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs172, i32 0, i32 7
  %128 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !30
  %129 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %memory173 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %129, i32 0, i32 21
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory173, align 8, !tbaa !99
  %call174 = call i8* %128(%struct.gs_memory_s* %130, i32 17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #5
  %131 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %131, i32 0, i32 20
  store i8* %call174, i8** %name, align 8, !tbaa !100
  %132 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %name175 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %132, i32 0, i32 20
  %133 = load i8*, i8** %name175, align 8, !tbaa !100
  %call176 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #7
  %call177 = call i8* @strncpy(i8* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i64 %call176) #6
  %call178 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #7
  %134 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %name179 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %134, i32 0, i32 20
  %135 = load i8*, i8** %name179, align 8, !tbaa !100
  %arrayidx180 = getelementptr inbounds i8, i8* %135, i64 %call178
  store i8 0, i8* %arrayidx180, align 1, !tbaa !21
  %call181 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)) #7
  %conv182 = trunc i64 %call181 to i32
  %136 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %name_length = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %136, i32 0, i32 19
  store i32 %conv182, i32* %name_length, align 4, !tbaa !101
  call void @gscms_set_icc_range(%struct.cmm_profile_s** %picc_profile) #5
  %137 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %137, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %138 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx183, align 8, !tbaa !1
  %num_comps184 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %138, i32 0, i32 0
  %139 = load i8, i8* %num_comps184, align 1, !tbaa !44
  %conv185 = zext i8 %139 to i32
  store i32 %conv185, i32* %dev_comps, align 4, !tbaa !5
  %140 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile186 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %140, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile186, i32 0, i64 0
  %141 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx187, align 8, !tbaa !1
  %call188 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %141) #5
  store i32 %call188, i32* %index, align 4, !tbaa !21
  %142 = load i32, i32* %ncomps, align 4, !tbaa !5
  %143 = load i32, i32* %dev_comps, align 4, !tbaa !5
  %cmp189 = icmp eq i32 %142, %143
  br i1 %cmp189, label %land.lhs.true.191, label %if.else.272

land.lhs.true.191:                                ; preds = %if.end.169
  %144 = load i32, i32* %index, align 4, !tbaa !21
  %cmp192 = icmp ult i32 %144, 3
  br i1 %cmp192, label %if.then.194, label %if.else.272

if.then.194:                                      ; preds = %land.lhs.true.191
  br label %do.body.195

do.body.195:                                      ; preds = %if.then.194
  %145 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile196 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %145, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile196, i32 0, i64 0
  %146 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx197, align 8, !tbaa !1
  %147 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %cmp198 = icmp ne %struct.cmm_profile_s* %146, %147
  br i1 %cmp198, label %if.then.200, label %if.end.266

if.then.200:                                      ; preds = %do.body.195
  br label %do.body.201

do.body.201:                                      ; preds = %if.then.200
  %148 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool202 = icmp ne %struct.cmm_profile_s* %148, null
  br i1 %tobool202, label %if.then.203, label %if.end.212

if.then.203:                                      ; preds = %do.body.201
  br label %do.body.204

do.body.204:                                      ; preds = %if.then.203
  %149 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc205 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %149, i32 0, i32 18
  %ref_count206 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc205, i32 0, i32 0
  %150 = load i64, i64* %ref_count206, align 8, !tbaa !33
  %inc = add nsw i64 %150, 1
  store i64 %inc, i64* %ref_count206, align 8, !tbaa !33
  br label %do.body.207

do.body.207:                                      ; preds = %do.body.204
  br label %do.cond.208

do.cond.208:                                      ; preds = %do.body.207
  br label %do.end.209

do.end.209:                                       ; preds = %do.cond.208
  br label %do.cond.210

do.cond.210:                                      ; preds = %do.end.209
  br label %do.end.211

do.end.211:                                       ; preds = %do.cond.210
  br label %if.end.212

if.end.212:                                       ; preds = %do.end.211, %do.body.201
  br label %do.cond.213

do.cond.213:                                      ; preds = %if.end.212
  br label %do.end.214

do.end.214:                                       ; preds = %do.cond.213
  br label %do.body.215

do.body.215:                                      ; preds = %do.end.214
  %151 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile216 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %151, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile216, i32 0, i64 0
  %152 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx217, align 8, !tbaa !1
  %tobool218 = icmp ne %struct.cmm_profile_s* %152, null
  br i1 %tobool218, label %if.then.219, label %if.end.261

if.then.219:                                      ; preds = %do.body.215
  br label %do.body.220

do.body.220:                                      ; preds = %if.then.219
  br label %do.body.221

do.body.221:                                      ; preds = %do.body.220
  br label %do.cond.222

do.cond.222:                                      ; preds = %do.body.221
  br label %do.end.223

do.end.223:                                       ; preds = %do.cond.222
  %153 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile224 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %153, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile224, i32 0, i64 0
  %154 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx225, align 8, !tbaa !1
  %rc226 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %154, i32 0, i32 18
  %ref_count227 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc226, i32 0, i32 0
  %155 = load i64, i64* %ref_count227, align 8, !tbaa !33
  %add228 = add nsw i64 %155, -1
  store i64 %add228, i64* %ref_count227, align 8, !tbaa !33
  br label %do.cond.229

do.cond.229:                                      ; preds = %do.end.223
  br label %do.end.230

do.end.230:                                       ; preds = %do.cond.229
  %156 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile231 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %156, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile231, i32 0, i64 0
  %157 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx232, align 8, !tbaa !1
  %rc233 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %157, i32 0, i32 18
  %ref_count234 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc233, i32 0, i32 0
  %158 = load i64, i64* %ref_count234, align 8, !tbaa !33
  %tobool235 = icmp ne i64 %158, 0
  br i1 %tobool235, label %if.else.256, label %if.then.236

if.then.236:                                      ; preds = %do.end.230
  br label %do.body.237

do.body.237:                                      ; preds = %if.then.236
  br label %do.body.238

do.body.238:                                      ; preds = %do.body.237
  br label %do.cond.239

do.cond.239:                                      ; preds = %do.body.238
  br label %do.end.240

do.end.240:                                       ; preds = %do.cond.239
  %159 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile241 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %159, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile241, i32 0, i64 0
  %160 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx242, align 8, !tbaa !1
  %rc243 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %160, i32 0, i32 18
  %free244 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc243, i32 0, i32 2
  %161 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free244, align 8, !tbaa !38
  %162 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile245 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %162, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile245, i32 0, i64 0
  %163 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx246, align 8, !tbaa !1
  %rc247 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %163, i32 0, i32 18
  %memory248 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc247, i32 0, i32 1
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory248, align 8, !tbaa !39
  %165 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile249 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %165, i32 0, i32 0
  %arrayidx250 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile249, i32 0, i64 0
  %166 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx250, align 8, !tbaa !1
  %167 = bitcast %struct.cmm_profile_s* %166 to i8*
  call void %161(%struct.gs_memory_s* %164, i8* %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #5
  br label %do.cond.251

do.cond.251:                                      ; preds = %do.end.240
  br label %do.end.252

do.end.252:                                       ; preds = %do.cond.251
  br label %do.body.253

do.body.253:                                      ; preds = %do.end.252
  br label %do.cond.254

do.cond.254:                                      ; preds = %do.body.253
  br label %do.end.255

do.end.255:                                       ; preds = %do.cond.254
  br label %if.end.260

if.else.256:                                      ; preds = %do.end.230
  br label %do.body.257

do.body.257:                                      ; preds = %if.else.256
  br label %do.cond.258

do.cond.258:                                      ; preds = %do.body.257
  br label %do.end.259

do.end.259:                                       ; preds = %do.cond.258
  br label %if.end.260

if.end.260:                                       ; preds = %do.end.259, %do.end.255
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %do.body.215
  br label %do.cond.262

do.cond.262:                                      ; preds = %if.end.261
  br label %do.end.263

do.end.263:                                       ; preds = %do.cond.262
  %168 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %169 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile264 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %169, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile264, i32 0, i64 0
  store %struct.cmm_profile_s* %168, %struct.cmm_profile_s** %arrayidx265, align 8, !tbaa !1
  br label %if.end.266

if.end.266:                                       ; preds = %do.end.263, %do.body.195
  br label %do.cond.267

do.cond.267:                                      ; preds = %if.end.266
  br label %do.end.268

do.end.268:                                       ; preds = %do.cond.267
  br label %do.body.269

do.body.269:                                      ; preds = %do.end.268
  br label %do.cond.270

do.cond.270:                                      ; preds = %do.body.269
  br label %do.end.271

do.end.271:                                       ; preds = %do.cond.270
  br label %if.end.296

if.else.272:                                      ; preds = %land.lhs.true.191, %if.end.169
  %170 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %proof_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %170, i32 0, i32 1
  %171 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile, align 8, !tbaa !102
  %cmp273 = icmp eq %struct.cmm_profile_s* %171, null
  br i1 %cmp273, label %if.then.275, label %if.end.295

if.then.275:                                      ; preds = %if.else.272
  %172 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %173 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %proof_profile276 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %173, i32 0, i32 1
  store %struct.cmm_profile_s* %172, %struct.cmm_profile_s** %proof_profile276, align 8, !tbaa !102
  br label %do.body.277

do.body.277:                                      ; preds = %if.then.275
  %174 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool278 = icmp ne %struct.cmm_profile_s* %174, null
  br i1 %tobool278, label %if.then.279, label %if.end.289

if.then.279:                                      ; preds = %do.body.277
  br label %do.body.280

do.body.280:                                      ; preds = %if.then.279
  %175 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc281 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %175, i32 0, i32 18
  %ref_count282 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc281, i32 0, i32 0
  %176 = load i64, i64* %ref_count282, align 8, !tbaa !33
  %inc283 = add nsw i64 %176, 1
  store i64 %inc283, i64* %ref_count282, align 8, !tbaa !33
  br label %do.body.284

do.body.284:                                      ; preds = %do.body.280
  br label %do.cond.285

do.cond.285:                                      ; preds = %do.body.284
  br label %do.end.286

do.end.286:                                       ; preds = %do.cond.285
  br label %do.cond.287

do.cond.287:                                      ; preds = %do.end.286
  br label %do.end.288

do.end.288:                                       ; preds = %do.cond.287
  br label %if.end.289

if.end.289:                                       ; preds = %do.end.288, %do.body.277
  br label %do.cond.290

do.cond.290:                                      ; preds = %if.end.289
  br label %do.end.291

do.end.291:                                       ; preds = %do.cond.290
  br label %do.body.292

do.body.292:                                      ; preds = %do.end.291
  br label %do.cond.293

do.cond.293:                                      ; preds = %do.body.292
  br label %do.end.294

do.end.294:                                       ; preds = %do.cond.293
  br label %if.end.295

if.end.295:                                       ; preds = %do.end.294, %if.else.272
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %do.end.271
  %177 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %source_profile, align 8, !tbaa !1
  %call297 = call i32 @gsicc_get_default_type(%struct.cmm_profile_s* %177) #5
  store i32 %call297, i32* %index, align 4, !tbaa !21
  %178 = load i32, i32* %index, align 4, !tbaa !21
  %cmp298 = icmp ult i32 %178, 3
  br i1 %cmp298, label %if.then.300, label %if.end.516

if.then.300:                                      ; preds = %if.end.296
  %179 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %data_cs301 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %179, i32 0, i32 5
  %180 = load i32, i32* %data_cs301, align 4, !tbaa !48
  switch i32 %180, label %sw.default [
    i32 1, label %sw.bb.302
    i32 2, label %sw.bb.373
    i32 3, label %sw.bb.444
  ]

sw.bb.302:                                        ; preds = %if.then.300
  br label %do.body.303

do.body.303:                                      ; preds = %sw.bb.302
  br label %do.cond.304

do.cond.304:                                      ; preds = %do.body.303
  br label %do.end.305

do.end.305:                                       ; preds = %do.cond.304
  br label %do.body.306

do.body.306:                                      ; preds = %do.end.305
  %181 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray307 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %181, i32 0, i32 1
  %182 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray307, align 8, !tbaa !71
  %183 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %cmp308 = icmp ne %struct.cmm_profile_s* %182, %183
  br i1 %cmp308, label %if.then.310, label %if.end.370

if.then.310:                                      ; preds = %do.body.306
  br label %do.body.311

do.body.311:                                      ; preds = %if.then.310
  %184 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool312 = icmp ne %struct.cmm_profile_s* %184, null
  br i1 %tobool312, label %if.then.313, label %if.end.323

if.then.313:                                      ; preds = %do.body.311
  br label %do.body.314

do.body.314:                                      ; preds = %if.then.313
  %185 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc315 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %185, i32 0, i32 18
  %ref_count316 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc315, i32 0, i32 0
  %186 = load i64, i64* %ref_count316, align 8, !tbaa !33
  %inc317 = add nsw i64 %186, 1
  store i64 %inc317, i64* %ref_count316, align 8, !tbaa !33
  br label %do.body.318

do.body.318:                                      ; preds = %do.body.314
  br label %do.cond.319

do.cond.319:                                      ; preds = %do.body.318
  br label %do.end.320

do.end.320:                                       ; preds = %do.cond.319
  br label %do.cond.321

do.cond.321:                                      ; preds = %do.end.320
  br label %do.end.322

do.end.322:                                       ; preds = %do.cond.321
  br label %if.end.323

if.end.323:                                       ; preds = %do.end.322, %do.body.311
  br label %do.cond.324

do.cond.324:                                      ; preds = %if.end.323
  br label %do.end.325

do.end.325:                                       ; preds = %do.cond.324
  br label %do.body.326

do.body.326:                                      ; preds = %do.end.325
  %187 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray327 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %187, i32 0, i32 1
  %188 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray327, align 8, !tbaa !71
  %tobool328 = icmp ne %struct.cmm_profile_s* %188, null
  br i1 %tobool328, label %if.then.329, label %if.end.366

if.then.329:                                      ; preds = %do.body.326
  br label %do.body.330

do.body.330:                                      ; preds = %if.then.329
  br label %do.body.331

do.body.331:                                      ; preds = %do.body.330
  br label %do.cond.332

do.cond.332:                                      ; preds = %do.body.331
  br label %do.end.333

do.end.333:                                       ; preds = %do.cond.332
  %189 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray334 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %189, i32 0, i32 1
  %190 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray334, align 8, !tbaa !71
  %rc335 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %190, i32 0, i32 18
  %ref_count336 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc335, i32 0, i32 0
  %191 = load i64, i64* %ref_count336, align 8, !tbaa !33
  %add337 = add nsw i64 %191, -1
  store i64 %add337, i64* %ref_count336, align 8, !tbaa !33
  br label %do.cond.338

do.cond.338:                                      ; preds = %do.end.333
  br label %do.end.339

do.end.339:                                       ; preds = %do.cond.338
  %192 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray340 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %192, i32 0, i32 1
  %193 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray340, align 8, !tbaa !71
  %rc341 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %193, i32 0, i32 18
  %ref_count342 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc341, i32 0, i32 0
  %194 = load i64, i64* %ref_count342, align 8, !tbaa !33
  %tobool343 = icmp ne i64 %194, 0
  br i1 %tobool343, label %if.else.361, label %if.then.344

if.then.344:                                      ; preds = %do.end.339
  br label %do.body.345

do.body.345:                                      ; preds = %if.then.344
  br label %do.body.346

do.body.346:                                      ; preds = %do.body.345
  br label %do.cond.347

do.cond.347:                                      ; preds = %do.body.346
  br label %do.end.348

do.end.348:                                       ; preds = %do.cond.347
  %195 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray349 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %195, i32 0, i32 1
  %196 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray349, align 8, !tbaa !71
  %rc350 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %196, i32 0, i32 18
  %free351 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc350, i32 0, i32 2
  %197 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free351, align 8, !tbaa !38
  %198 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray352 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %198, i32 0, i32 1
  %199 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray352, align 8, !tbaa !71
  %rc353 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %199, i32 0, i32 18
  %memory354 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc353, i32 0, i32 1
  %200 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory354, align 8, !tbaa !39
  %201 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray355 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %201, i32 0, i32 1
  %202 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_gray355, align 8, !tbaa !71
  %203 = bitcast %struct.cmm_profile_s* %202 to i8*
  call void %197(%struct.gs_memory_s* %200, i8* %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #5
  br label %do.cond.356

do.cond.356:                                      ; preds = %do.end.348
  br label %do.end.357

do.end.357:                                       ; preds = %do.cond.356
  br label %do.body.358

do.body.358:                                      ; preds = %do.end.357
  br label %do.cond.359

do.cond.359:                                      ; preds = %do.body.358
  br label %do.end.360

do.end.360:                                       ; preds = %do.cond.359
  br label %if.end.365

if.else.361:                                      ; preds = %do.end.339
  br label %do.body.362

do.body.362:                                      ; preds = %if.else.361
  br label %do.cond.363

do.cond.363:                                      ; preds = %do.body.362
  br label %do.end.364

do.end.364:                                       ; preds = %do.cond.363
  br label %if.end.365

if.end.365:                                       ; preds = %do.end.364, %do.end.360
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %do.body.326
  br label %do.cond.367

do.cond.367:                                      ; preds = %if.end.366
  br label %do.end.368

do.end.368:                                       ; preds = %do.cond.367
  %204 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %205 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_gray369 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %205, i32 0, i32 1
  store %struct.cmm_profile_s* %204, %struct.cmm_profile_s** %default_gray369, align 8, !tbaa !71
  br label %if.end.370

if.end.370:                                       ; preds = %do.end.368, %do.body.306
  br label %do.cond.371

do.cond.371:                                      ; preds = %if.end.370
  br label %do.end.372

do.end.372:                                       ; preds = %do.cond.371
  br label %sw.epilog.515

sw.bb.373:                                        ; preds = %if.then.300
  br label %do.body.374

do.body.374:                                      ; preds = %sw.bb.373
  br label %do.cond.375

do.cond.375:                                      ; preds = %do.body.374
  br label %do.end.376

do.end.376:                                       ; preds = %do.cond.375
  br label %do.body.377

do.body.377:                                      ; preds = %do.end.376
  %206 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb378 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %206, i32 0, i32 2
  %207 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb378, align 8, !tbaa !68
  %208 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %cmp379 = icmp ne %struct.cmm_profile_s* %207, %208
  br i1 %cmp379, label %if.then.381, label %if.end.441

if.then.381:                                      ; preds = %do.body.377
  br label %do.body.382

do.body.382:                                      ; preds = %if.then.381
  %209 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool383 = icmp ne %struct.cmm_profile_s* %209, null
  br i1 %tobool383, label %if.then.384, label %if.end.394

if.then.384:                                      ; preds = %do.body.382
  br label %do.body.385

do.body.385:                                      ; preds = %if.then.384
  %210 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc386 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %210, i32 0, i32 18
  %ref_count387 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc386, i32 0, i32 0
  %211 = load i64, i64* %ref_count387, align 8, !tbaa !33
  %inc388 = add nsw i64 %211, 1
  store i64 %inc388, i64* %ref_count387, align 8, !tbaa !33
  br label %do.body.389

do.body.389:                                      ; preds = %do.body.385
  br label %do.cond.390

do.cond.390:                                      ; preds = %do.body.389
  br label %do.end.391

do.end.391:                                       ; preds = %do.cond.390
  br label %do.cond.392

do.cond.392:                                      ; preds = %do.end.391
  br label %do.end.393

do.end.393:                                       ; preds = %do.cond.392
  br label %if.end.394

if.end.394:                                       ; preds = %do.end.393, %do.body.382
  br label %do.cond.395

do.cond.395:                                      ; preds = %if.end.394
  br label %do.end.396

do.end.396:                                       ; preds = %do.cond.395
  br label %do.body.397

do.body.397:                                      ; preds = %do.end.396
  %212 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb398 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %212, i32 0, i32 2
  %213 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb398, align 8, !tbaa !68
  %tobool399 = icmp ne %struct.cmm_profile_s* %213, null
  br i1 %tobool399, label %if.then.400, label %if.end.437

if.then.400:                                      ; preds = %do.body.397
  br label %do.body.401

do.body.401:                                      ; preds = %if.then.400
  br label %do.body.402

do.body.402:                                      ; preds = %do.body.401
  br label %do.cond.403

do.cond.403:                                      ; preds = %do.body.402
  br label %do.end.404

do.end.404:                                       ; preds = %do.cond.403
  %214 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb405 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %214, i32 0, i32 2
  %215 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb405, align 8, !tbaa !68
  %rc406 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %215, i32 0, i32 18
  %ref_count407 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc406, i32 0, i32 0
  %216 = load i64, i64* %ref_count407, align 8, !tbaa !33
  %add408 = add nsw i64 %216, -1
  store i64 %add408, i64* %ref_count407, align 8, !tbaa !33
  br label %do.cond.409

do.cond.409:                                      ; preds = %do.end.404
  br label %do.end.410

do.end.410:                                       ; preds = %do.cond.409
  %217 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb411 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %217, i32 0, i32 2
  %218 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb411, align 8, !tbaa !68
  %rc412 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %218, i32 0, i32 18
  %ref_count413 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc412, i32 0, i32 0
  %219 = load i64, i64* %ref_count413, align 8, !tbaa !33
  %tobool414 = icmp ne i64 %219, 0
  br i1 %tobool414, label %if.else.432, label %if.then.415

if.then.415:                                      ; preds = %do.end.410
  br label %do.body.416

do.body.416:                                      ; preds = %if.then.415
  br label %do.body.417

do.body.417:                                      ; preds = %do.body.416
  br label %do.cond.418

do.cond.418:                                      ; preds = %do.body.417
  br label %do.end.419

do.end.419:                                       ; preds = %do.cond.418
  %220 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb420 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %220, i32 0, i32 2
  %221 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb420, align 8, !tbaa !68
  %rc421 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %221, i32 0, i32 18
  %free422 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc421, i32 0, i32 2
  %222 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free422, align 8, !tbaa !38
  %223 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb423 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %223, i32 0, i32 2
  %224 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb423, align 8, !tbaa !68
  %rc424 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %224, i32 0, i32 18
  %memory425 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc424, i32 0, i32 1
  %225 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory425, align 8, !tbaa !39
  %226 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb426 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %226, i32 0, i32 2
  %227 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_rgb426, align 8, !tbaa !68
  %228 = bitcast %struct.cmm_profile_s* %227 to i8*
  call void %222(%struct.gs_memory_s* %225, i8* %228, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #5
  br label %do.cond.427

do.cond.427:                                      ; preds = %do.end.419
  br label %do.end.428

do.end.428:                                       ; preds = %do.cond.427
  br label %do.body.429

do.body.429:                                      ; preds = %do.end.428
  br label %do.cond.430

do.cond.430:                                      ; preds = %do.body.429
  br label %do.end.431

do.end.431:                                       ; preds = %do.cond.430
  br label %if.end.436

if.else.432:                                      ; preds = %do.end.410
  br label %do.body.433

do.body.433:                                      ; preds = %if.else.432
  br label %do.cond.434

do.cond.434:                                      ; preds = %do.body.433
  br label %do.end.435

do.end.435:                                       ; preds = %do.cond.434
  br label %if.end.436

if.end.436:                                       ; preds = %do.end.435, %do.end.431
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.436, %do.body.397
  br label %do.cond.438

do.cond.438:                                      ; preds = %if.end.437
  br label %do.end.439

do.end.439:                                       ; preds = %do.cond.438
  %229 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %230 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_rgb440 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %230, i32 0, i32 2
  store %struct.cmm_profile_s* %229, %struct.cmm_profile_s** %default_rgb440, align 8, !tbaa !68
  br label %if.end.441

if.end.441:                                       ; preds = %do.end.439, %do.body.377
  br label %do.cond.442

do.cond.442:                                      ; preds = %if.end.441
  br label %do.end.443

do.end.443:                                       ; preds = %do.cond.442
  br label %sw.epilog.515

sw.bb.444:                                        ; preds = %if.then.300
  br label %do.body.445

do.body.445:                                      ; preds = %sw.bb.444
  br label %do.cond.446

do.cond.446:                                      ; preds = %do.body.445
  br label %do.end.447

do.end.447:                                       ; preds = %do.cond.446
  br label %do.body.448

do.body.448:                                      ; preds = %do.end.447
  %231 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk449 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %231, i32 0, i32 3
  %232 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk449, align 8, !tbaa !72
  %233 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %cmp450 = icmp ne %struct.cmm_profile_s* %232, %233
  br i1 %cmp450, label %if.then.452, label %if.end.512

if.then.452:                                      ; preds = %do.body.448
  br label %do.body.453

do.body.453:                                      ; preds = %if.then.452
  %234 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %tobool454 = icmp ne %struct.cmm_profile_s* %234, null
  br i1 %tobool454, label %if.then.455, label %if.end.465

if.then.455:                                      ; preds = %do.body.453
  br label %do.body.456

do.body.456:                                      ; preds = %if.then.455
  %235 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %rc457 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %235, i32 0, i32 18
  %ref_count458 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc457, i32 0, i32 0
  %236 = load i64, i64* %ref_count458, align 8, !tbaa !33
  %inc459 = add nsw i64 %236, 1
  store i64 %inc459, i64* %ref_count458, align 8, !tbaa !33
  br label %do.body.460

do.body.460:                                      ; preds = %do.body.456
  br label %do.cond.461

do.cond.461:                                      ; preds = %do.body.460
  br label %do.end.462

do.end.462:                                       ; preds = %do.cond.461
  br label %do.cond.463

do.cond.463:                                      ; preds = %do.end.462
  br label %do.end.464

do.end.464:                                       ; preds = %do.cond.463
  br label %if.end.465

if.end.465:                                       ; preds = %do.end.464, %do.body.453
  br label %do.cond.466

do.cond.466:                                      ; preds = %if.end.465
  br label %do.end.467

do.end.467:                                       ; preds = %do.cond.466
  br label %do.body.468

do.body.468:                                      ; preds = %do.end.467
  %237 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk469 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %237, i32 0, i32 3
  %238 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk469, align 8, !tbaa !72
  %tobool470 = icmp ne %struct.cmm_profile_s* %238, null
  br i1 %tobool470, label %if.then.471, label %if.end.508

if.then.471:                                      ; preds = %do.body.468
  br label %do.body.472

do.body.472:                                      ; preds = %if.then.471
  br label %do.body.473

do.body.473:                                      ; preds = %do.body.472
  br label %do.cond.474

do.cond.474:                                      ; preds = %do.body.473
  br label %do.end.475

do.end.475:                                       ; preds = %do.cond.474
  %239 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk476 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %239, i32 0, i32 3
  %240 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk476, align 8, !tbaa !72
  %rc477 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %240, i32 0, i32 18
  %ref_count478 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc477, i32 0, i32 0
  %241 = load i64, i64* %ref_count478, align 8, !tbaa !33
  %add479 = add nsw i64 %241, -1
  store i64 %add479, i64* %ref_count478, align 8, !tbaa !33
  br label %do.cond.480

do.cond.480:                                      ; preds = %do.end.475
  br label %do.end.481

do.end.481:                                       ; preds = %do.cond.480
  %242 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk482 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %242, i32 0, i32 3
  %243 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk482, align 8, !tbaa !72
  %rc483 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %243, i32 0, i32 18
  %ref_count484 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc483, i32 0, i32 0
  %244 = load i64, i64* %ref_count484, align 8, !tbaa !33
  %tobool485 = icmp ne i64 %244, 0
  br i1 %tobool485, label %if.else.503, label %if.then.486

if.then.486:                                      ; preds = %do.end.481
  br label %do.body.487

do.body.487:                                      ; preds = %if.then.486
  br label %do.body.488

do.body.488:                                      ; preds = %do.body.487
  br label %do.cond.489

do.cond.489:                                      ; preds = %do.body.488
  br label %do.end.490

do.end.490:                                       ; preds = %do.cond.489
  %245 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk491 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %245, i32 0, i32 3
  %246 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk491, align 8, !tbaa !72
  %rc492 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %246, i32 0, i32 18
  %free493 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc492, i32 0, i32 2
  %247 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free493, align 8, !tbaa !38
  %248 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk494 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %248, i32 0, i32 3
  %249 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk494, align 8, !tbaa !72
  %rc495 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %249, i32 0, i32 18
  %memory496 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc495, i32 0, i32 1
  %250 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory496, align 8, !tbaa !39
  %251 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk497 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %251, i32 0, i32 3
  %252 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %default_cmyk497, align 8, !tbaa !72
  %253 = bitcast %struct.cmm_profile_s* %252 to i8*
  call void %247(%struct.gs_memory_s* %250, i8* %253, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #5
  br label %do.cond.498

do.cond.498:                                      ; preds = %do.end.490
  br label %do.end.499

do.end.499:                                       ; preds = %do.cond.498
  br label %do.body.500

do.body.500:                                      ; preds = %do.end.499
  br label %do.cond.501

do.cond.501:                                      ; preds = %do.body.500
  br label %do.end.502

do.end.502:                                       ; preds = %do.cond.501
  br label %if.end.507

if.else.503:                                      ; preds = %do.end.481
  br label %do.body.504

do.body.504:                                      ; preds = %if.else.503
  br label %do.cond.505

do.cond.505:                                      ; preds = %do.body.504
  br label %do.end.506

do.end.506:                                       ; preds = %do.cond.505
  br label %if.end.507

if.end.507:                                       ; preds = %do.end.506, %do.end.502
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %do.body.468
  br label %do.cond.509

do.cond.509:                                      ; preds = %if.end.508
  br label %do.end.510

do.end.510:                                       ; preds = %do.cond.509
  %254 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %picc_profile, align 8, !tbaa !1
  %255 = load %struct.gsicc_manager_s*, %struct.gsicc_manager_s** %icc_manager, align 8, !tbaa !1
  %default_cmyk511 = getelementptr inbounds %struct.gsicc_manager_s, %struct.gsicc_manager_s* %255, i32 0, i32 3
  store %struct.cmm_profile_s* %254, %struct.cmm_profile_s** %default_cmyk511, align 8, !tbaa !72
  br label %if.end.512

if.end.512:                                       ; preds = %do.end.510, %do.body.448
  br label %do.cond.513

do.cond.513:                                      ; preds = %if.end.512
  br label %do.end.514

do.end.514:                                       ; preds = %do.cond.513
  br label %sw.epilog.515

sw.default:                                       ; preds = %if.then.300
  br label %sw.epilog.515

sw.epilog.515:                                    ; preds = %sw.default, %do.end.514, %do.end.443, %do.end.372
  br label %if.end.516

if.end.516:                                       ; preds = %sw.epilog.515, %if.end.296
  %256 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack517 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %256, i32 0, i32 26
  %stack518 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack517, i32 0, i32 0
  %p519 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack518, i32 0, i32 0
  %257 = load %struct.ref_s*, %struct.ref_s** %p519, align 8, !tbaa !73
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %257, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p519, align 8, !tbaa !73
  %258 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %258, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

cleanup.520:                                      ; preds = %if.end.516, %do.end.168, %do.end.121, %cleanup, %cond.end, %if.then.36, %if.then.29, %if.then.24, %if.then.8, %if.then
  %259 = bitcast %struct.cmm_profile_s** %source_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast %struct.gsicc_manager_s** %icc_manager to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast %struct.cmm_profile_s** %picc_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast i32* %dev_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast %struct.ref_s** %pstrmval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #1
  %267 = bitcast %struct.ref_s** %pnval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  %268 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  %269 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %270 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  %272 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = load i32, i32* %retval
  ret i32 %274
}

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @dict_floats_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, float*, float*) #2

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

declare i32 @gsicc_init_device_profile_struct(%struct.gx_device_s*, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare void @gscms_set_icc_range(%struct.cmm_profile_s**) #2

declare i32 @gsicc_get_default_type(%struct.cmm_profile_s*) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"gs_context_state_s", !2, i64 0, !9, i64 8, !6, i64 80, !11, i64 88, !11, i64 104, !14, i64 120, !14, i64 128, !14, i64 136, !6, i64 144, !6, i64 148, !11, i64 152, !11, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !15, i64 264, !15, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !16, i64 368, !18, i64 520, !19, i64 624, !2, i64 720}
!9 = !{!"gs_dual_memory_s", !2, i64 0, !10, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!10 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!11 = !{!"ref_s", !12, i64 0, !3, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2, !6, i64 4}
!13 = !{!"short", !3, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!"op_array_table_s", !11, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!16 = !{!"dict_stack_s", !17, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !11, i64 136}
!17 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !6, i64 40, !6, i64 44, !11, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!18 = !{!"exec_stack_s", !17, i64 0, !2, i64 96}
!19 = !{!"op_stack_s", !17, i64 0}
!20 = !{!11, !13, i64 0}
!21 = !{!3, !3, i64 0}
!22 = !{!23, !13, i64 264}
!23 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !13, i64 152, !3, i64 154, !3, i64 155, !24, i64 160, !14, i64 176, !25, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !13, i64 264, !13, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !26, i64 312, !6, i64 328, !14, i64 336, !14, i64 344}
!24 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!25 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!26 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!27 = !{!11, !6, i64 4}
!28 = !{!23, !13, i64 266}
!29 = !{!8, !2, i64 256}
!30 = !{!31, !2, i64 64}
!31 = !{!"gs_memory_s", !2, i64 0, !32, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!32 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!33 = !{!34, !14, i64 288}
!34 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !35, i64 20, !14, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !36, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !37, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!35 = !{!"gs_range_icc_s", !3, i64 0}
!36 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!37 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!38 = !{!34, !2, i64 304}
!39 = !{!34, !2, i64 296}
!40 = !{!41, !14, i64 8}
!41 = !{!"gs_color_space_s", !2, i64 0, !37, i64 8, !14, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!42 = !{!41, !2, i64 24}
!43 = !{!41, !2, i64 16}
!44 = !{!34, !3, i64 0}
!45 = !{!34, !2, i64 256}
!46 = !{!34, !6, i64 220}
!47 = !{!34, !2, i64 280}
!48 = !{!34, !3, i64 16}
!49 = !{!50, !51, i64 0}
!50 = !{!"gs_range_s", !51, i64 0, !51, i64 4}
!51 = !{!"float", !3, i64 0}
!52 = !{!50, !51, i64 4}
!53 = !{!34, !6, i64 4}
!54 = !{!51, !51, i64 0}
!55 = !{!56, !2, i64 336}
!56 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !57, i64 24, !6, i64 128, !60, i64 132, !6, i64 168, !61, i64 176, !61, i64 192, !6, i64 208, !6, i64 212, !13, i64 216, !3, i64 220, !63, i64 224, !63, i64 228, !64, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !51, i64 296, !65, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !51, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !66, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !67, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !67, i64 1336}
!57 = !{!"gx_line_params_s", !51, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !6, i64 36, !58, i64 40, !59, i64 64}
!58 = !{!"gs_matrix_s", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20}
!59 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !51, i64 12, !6, i64 16, !51, i64 20, !6, i64 24, !6, i64 28, !51, i64 32}
!60 = !{!"gs_matrix_fixed_s", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!61 = !{!"gs_point_s", !62, i64 0, !62, i64 8}
!62 = !{!"double", !3, i64 0}
!63 = !{!"gs_transparency_source_s", !51, i64 0}
!64 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!65 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!66 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!67 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !3, i64 24}
!68 = !{!69, !2, i64 16}
!69 = !{!"gsicc_manager_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !2, i64 72, !2, i64 80, !37, i64 88}
!70 = !{!41, !2, i64 64}
!71 = !{!69, !2, i64 8}
!72 = !{!69, !2, i64 24}
!73 = !{!8, !2, i64 624}
!74 = !{!75, !2, i64 0}
!75 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!76 = !{!75, !6, i64 8}
!77 = !{!75, !6, i64 12}
!78 = !{!69, !2, i64 32}
!79 = !{!14, !14, i64 0}
!80 = !{!56, !2, i64 8}
!81 = !{!31, !2, i64 0}
!82 = !{!41, !2, i64 40}
!83 = !{!41, !2, i64 0}
!84 = !{!85, !6, i64 8}
!85 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!86 = !{!8, !2, i64 8}
!87 = !{!88, !2, i64 1680}
!88 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !37, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !89, i64 96, !91, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !92, i64 984, !6, i64 1052, !6, i64 1056, !93, i64 1064, !2, i64 1104, !3, i64 1112, !95, i64 1120, !96, i64 1144}
!89 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !90, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !6, i64 712}
!90 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!91 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!92 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!93 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !94, i64 16, !6, i64 32, !3, i64 36}
!94 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !14, i64 8}
!95 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!96 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!97 = !{!98, !2, i64 48}
!98 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !37, i64 200}
!99 = !{!34, !2, i64 328}
!100 = !{!34, !2, i64 320}
!101 = !{!34, !6, i64 312}
!102 = !{!98, !2, i64 32}
