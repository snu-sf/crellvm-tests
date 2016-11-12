; ModuleID = './zfapi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.gs_font_dir_s = type { %struct.gs_font_s*, %struct.gs_font_s*, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32, i32, i32, i8*, %struct.gs_memory_s*, %struct.ttfInterpreter_s*, %struct.gx_ttfMemory_s*, i32, %struct.gx_device_spot_analyzer_s*, i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)*, i64 }
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gx_xfont_s = type opaque
%struct.ttfFont_s = type opaque
%struct.gx_ttfReader_s = type opaque
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_fapi_server_s = type { %struct.gs_fapi_server_instance_s, i8*, i32, %struct.gs_fapi_face_s, %struct.gs_fapi_font_s, i32, i32, i32, %struct.gs_matrix_s, i32 (%struct.gs_fapi_server_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i8**)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i8*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_raster*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_path_s*)*, i32 (%struct.gs_fapi_server_s*)*, i32 (%struct.gs_fapi_server_s*, i8*)*, i32 (%struct.gs_fapi_server_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i32, i8*, i32*)* }
%struct.gs_fapi_server_instance_s = type { %struct.gs_fapi_server_descriptor_s* }
%struct.gs_fapi_server_descriptor_s = type { i8*, i8*, void (%struct.gs_fapi_server_s**)* }
%struct.gs_fapi_face_s = type { i64, %struct.gs_matrix_s, %struct.gs_log2_scale_point_s, i32, [2 x float] }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_fapi_font_s = type { i8*, i32, %struct.gs_memory_s*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [10 x %struct.gs_fapi_ttf_cmap_request], i8*, i8*, i8*, i8*, i32, float, i16 (%struct.gs_fapi_font_s*, i32, i32)*, i64 (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i8*, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8**)*, i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)*, i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)* }
%struct.gs_fapi_ttf_cmap_request = type { i32, i32 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
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
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
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
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
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
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.gx_band_page_info_s = type { [4096 x i8], i8*, [4096 x i8], i8*, %struct.clist_io_procs_s*, i32, i64, i64, %struct.gx_band_params_s }
%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
%struct.clist_icctable_s = type { i32, %struct.gs_memory_s*, %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s* }
%struct.clist_icctable_entry_s = type { %struct.clist_icc_serial_entry_s, %struct.clist_icctable_entry_s*, %struct.cmm_profile_s*, i32 }
%struct.clist_icc_serial_entry_s = type { i64, i64, i32 }
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_fapi_char_ref = type { i64, [4 x i64], i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_font_scale_s = type { [6 x i32], [2 x i32], [2 x i32], i32 }
%struct.gs_fapi_raster = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_metrics_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_path_s = type { i8*, i32, i32, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)*, i32 (%struct.gs_fapi_path_s*)* }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
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
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.2 }
%union.anon.2 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_ht_cache_s = type opaque
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon.4 }
%union.anon.4 = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type { %struct.i_plugin_holder_s*, %struct.i_plugin_instance_s* }
%struct.i_plugin_instance_s = type { %struct.i_plugin_descriptor_s* }
%struct.i_plugin_descriptor_s = type { i8*, i8*, void (%struct.i_plugin_instance_s*, %struct.i_plugin_client_memory_s*)* }
%struct.i_plugin_client_memory_s = type { i8*, i8* (%struct.i_plugin_client_memory_s*, i32, i8*)*, void (%struct.i_plugin_client_memory_s*, i8*, i8*)* }
%struct.sfnts_writer_s = type { i8*, i8*, i32, void (%struct.sfnts_writer_s*, i8)*, void (%struct.sfnts_writer_s*, i16)*, void (%struct.sfnts_writer_s*, i64)*, void (%struct.sfnts_writer_s*, i8*, i32)* }
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct.name_s = type opaque
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon.5, float, i32, %struct.anon.6, %struct.anon.7, i32, %struct.anon.8, i32, %struct.anon.9, %struct.anon.10, %struct.anon.11, %struct.anon.12, %struct.anon.13, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type1_state_s = type opaque
%struct.anon.5 = type { i32, [14 x float] }
%struct.anon.6 = type { i32, [14 x float] }
%struct.anon.7 = type { i32, [10 x float] }
%struct.anon.8 = type { i32, [10 x float] }
%struct.anon.9 = type { i32, [1 x float] }
%struct.anon.10 = type { i32, [1 x float] }
%struct.anon.11 = type { i32, [12 x float] }
%struct.anon.12 = type { i32, [12 x float] }
%struct.anon.13 = type { i32, [16 x float] }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.sfnts_reader_s = type { %struct.ref_s*, %struct.gs_memory_s*, i8*, i64, i32, i32, i32, i8 (%struct.sfnts_reader_s*)*, i16 (%struct.sfnts_reader_s*)*, i64 (%struct.sfnts_reader_s*)*, i32 (%struct.sfnts_reader_s*, i8*, i32)*, void (%struct.sfnts_reader_s*, i64)* }
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }
%struct.anon.14 = type { [4 x i8], i64, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"1.FAPIavailable\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"2.FAPIpassfont\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"2.FAPIrebuildfont\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"2.FAPIBuildChar\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"2.FAPIBuildGlyph\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"2.FAPIBuildGlyph9\00", align 1
@zfapi_op_defs = constant [7 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zFAPIavailable }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zFAPIpassfont }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zFAPIrebuildfont }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zFAPIBuildChar }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zFAPIBuildGlyph }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zFAPIBuildGlyph9 }, %struct.op_def zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"zFAPIavailable\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SubfontId\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"FAPIPlugInReq\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"zFAPIpassfont\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"font file path\00", align 1
@ps_ff_stub = internal constant %struct.gs_fapi_font_s { i8* null, i32 0, %struct.gs_memory_s* null, i8* null, i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [10 x %struct.gs_fapi_ttf_cmap_request] [%struct.gs_fapi_ttf_cmap_request { i32 -1, i32 -1 }, %struct.gs_fapi_ttf_cmap_request zeroinitializer, %struct.gs_fapi_ttf_cmap_request zeroinitializer, %struct.gs_fapi_ttf_cmap_request zeroinitializer, %struct.gs_fapi_ttf_cmap_request zeroinitializer, %struct.gs_fapi_ttf_cmap_request zeroinitializer, %struct.gs_fapi_ttf_cmap_request zeroinitializer, %struct.gs_fapi_ttf_cmap_request zeroinitializer, %struct.gs_fapi_ttf_cmap_request zeroinitializer, %struct.gs_fapi_ttf_cmap_request zeroinitializer], i8* null, i8* null, i8* null, i8* null, i32 0, float 0.000000e+00, i16 (%struct.gs_fapi_font_s*, i32, i32)* @FAPI_FF_get_word, i64 (%struct.gs_fapi_font_s*, i32, i32)* @FAPI_FF_get_long, float (%struct.gs_fapi_font_s*, i32, i32)* @FAPI_FF_get_float, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*, i32)* @FAPI_FF_get_name, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*)* @FAPI_FF_get_proc, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)* @FAPI_FF_get_gsubr, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)* @FAPI_FF_get_subr, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)* @FAPI_FF_get_raw_subr, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)* @FAPI_FF_get_glyph, i16 (%struct.gs_fapi_font_s*, i8*, i32)* @FAPI_FF_serialize_tt_font, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)* @FAPI_FF_get_charstring, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)* @FAPI_FF_get_charstring_name, i32 (%struct.gs_fapi_font_s*, i32, i8**)* @ps_get_GlyphDirectory_data_ptr, i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)* @ps_get_glyphname_or_cid, i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)* @ps_fapi_get_metrics, i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)* @ps_fapi_set_cache }, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"do_FAPIpassfont\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"FAPI\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c".xlatmap\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Private\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"GlobalSubrs\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Subrs\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"CharStrings\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"$Blend\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"FontInfo\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"BlendAxisTypes\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"WeightVector\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"BlendDesignPositions\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"BlendDesignMap\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@op_defs_all = external constant [0 x %struct.op_def*], align 8
@FAPI_FF_get_long.name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)], align 16
@.str.28 = private unnamed_addr constant [6 x i8] c"sfnts\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"glyf\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"glyx\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"loca\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"locx\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"cmap\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"StandardEncoding\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c".render_notdef\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c".notdef~GS\00", align 1
@sfnts_writer_stub = internal constant %struct.sfnts_writer_s { i8* null, i8* null, i32 0, void (%struct.sfnts_writer_s*, i8)* @sfnts_writer_wbyte, void (%struct.sfnts_writer_s*, i16)* @sfnts_writer_wword, void (%struct.sfnts_writer_s*, i64)* @sfnts_writer_wlong, void (%struct.sfnts_writer_s*, i8*, i32)* @sfnts_writer_wstring }, align 8
@.str.38 = private unnamed_addr constant [15 x i8] c"GlyphDirectory\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"Decoding\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"SubstNWP\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"TT_cmap\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"CIDSystemInfo\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Ordering\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"Identity\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"GDBytes\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"CIDMap\00", align 1
@gx_extendeg_glyph_name_separator = external constant [0 x i8], align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"Wrong decoding entry for the character '%s'.\0A\00", align 1
@.str.49 = private unnamed_addr constant [53 x i8] c"Error: Font Renderer Plugin ( %s ) return code = %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c".FAPIconfig\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"ServerOptions\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c".FAPIBuildGlyph9\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c".FAPIBuildChar\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c".FAPIBuildGlyph\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"FAPI_refine_font_BBox\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"FDArray\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zFAPIavailable(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %serv_name = alloca i8*, align 8
  %name_ref = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i8** %serv_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* null, i8** %serv_name, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s* %name_ref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 2
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 16
  %12 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %12, %struct.ref_s* %13, %struct.ref_s* %name_ref) #6
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !20
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %call = call i8* @ref_to_string(%struct.ref_s* %name_ref, %struct.gs_memory_s* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #6
  store i8* %call, i8** %serv_name, align 8, !tbaa !1
  %17 = load i8*, i8** %serv_name, align 8, !tbaa !1
  %tobool = icmp ne i8* %17, null
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current7, align 8, !tbaa !20
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %21 = load i8*, i8** %serv_name, align 8, !tbaa !1
  %call8 = call i32 @gs_fapi_available(%struct.gs_memory_s* %20, i8* %21) #6
  %conv9 = trunc i32 %call8 to i16
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv9, i16* %boolval, align 2, !tbaa !26
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  store i16 256, i16* %type_attrs11, align 2, !tbaa !27
  %24 = load i8*, i8** %serv_name, align 8, !tbaa !1
  %tobool12 = icmp ne i8* %24, null
  br i1 %tobool12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end.5
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %current15 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory14, i32 0, i32 0
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current15, align 8, !tbaa !20
  %27 = bitcast %struct.gs_ref_memory_s* %26 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %28 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !28
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current17 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory16, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current17, align 8, !tbaa !20
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %32 = load i8*, i8** %serv_name, align 8, !tbaa !1
  %33 = load i8*, i8** %serv_name, align 8, !tbaa !1
  %call18 = call i64 @strlen(i8* %33) #7
  %add = add i64 %call18, 1
  %conv19 = trunc i64 %add to i32
  call void %28(%struct.gs_memory_s* %31, i8* %32, i32 %conv19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #6
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.13, %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.4
  %34 = bitcast %struct.ref_s* %name_ref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %34) #1
  %35 = bitcast i8** %serv_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @zFAPIpassfont(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %font_file_path = alloca i8*, align 8
  %v = alloca %struct.ref_s*, align 8
  %xlatmap = alloca i8*, align 8
  %fapi_request = alloca i8*, align 8
  %fapi_id = alloca i8*, align 8
  %reqstr = alloca %struct.ref_s, align 8
  %subfont = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %FAPI_ID = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %font_file_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8* null, i8** %font_file_path, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %xlatmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8* null, i8** %xlatmap, align 8, !tbaa !1
  %8 = bitcast i8** %fapi_request to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* null, i8** %fapi_request, align 8, !tbaa !1
  %9 = bitcast i8** %fapi_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8* null, i8** %fapi_id, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s* %reqstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast i32* %subfont to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %14 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %15) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end:                                           ; preds = %entry
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p4, align 8, !tbaa !5
  %call5 = call i32 @font_param(%struct.ref_s* %17, %struct.gs_font_s** %pfont) #6
  store i32 %call5, i32* %code, align 4, !tbaa !29
  %18 = load i32, i32* %code, align 4, !tbaa !29
  %cmp6 = icmp slt i32 %18, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end.9:                                         ; preds = %if.end
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call10 = call i32 @dict_find_string(%struct.ref_s* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s** %v) #6
  %cmp11 = icmp sge i32 %call10, 0
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.9
  %21 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %22 = bitcast i16* %type_attrs14 to i8*
  %arrayidx15 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx15, align 1, !tbaa !19
  %conv16 = zext i8 %23 to i32
  %cmp17 = icmp eq i32 %conv16, 11
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true
  %24 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %25 = load i64, i64* %intval, align 8, !tbaa !30
  %conv20 = trunc i64 %25 to i32
  store i32 %conv20, i32* %subfont, align 4, !tbaa !29
  br label %if.end.21

if.else:                                          ; preds = %land.lhs.true, %if.end.9
  store i32 0, i32* %subfont, align 4, !tbaa !29
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.19
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call22 = call i32 @FAPI_get_xlatmap(%struct.gs_context_state_s* %26, i8** %xlatmap) #6
  store i32 %call22, i32* %code, align 4, !tbaa !29
  %27 = load i32, i32* %code, align 4, !tbaa !29
  %cmp23 = icmp slt i32 %27, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %28 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end.26:                                        ; preds = %if.end.21
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call27 = call i32 @dict_find_string(%struct.ref_s* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), %struct.ref_s** %v) #6
  %cmp28 = icmp sge i32 %call27, 0
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.41

land.lhs.true.30:                                 ; preds = %if.end.26
  %30 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  %31 = bitcast i16* %type_attrs32 to i8*
  %arrayidx33 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx33, align 1, !tbaa !19
  %conv34 = zext i8 %32 to i32
  %cmp35 = icmp eq i32 %conv34, 13
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %land.lhs.true.30
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 2
  %36 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %36, i32 0, i32 16
  %37 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  %38 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %37, %struct.ref_s* %38, %struct.ref_s* %reqstr) #6
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %39, i32 0, i32 1
  %current39 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory38, i32 0, i32 0
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current39, align 8, !tbaa !20
  %41 = bitcast %struct.gs_ref_memory_s* %40 to %struct.gs_memory_s*
  %call40 = call i8* @ref_to_string(%struct.ref_s* %reqstr, %struct.gs_memory_s* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)) #6
  store i8* %call40, i8** %fapi_request, align 8, !tbaa !1
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %land.lhs.true.30, %if.end.26
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call42 = call i32 @dict_find_string(%struct.ref_s* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s** %v) #6
  %cmp43 = icmp sgt i32 %call42, 0
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.55

land.lhs.true.45:                                 ; preds = %if.end.41
  %43 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  %44 = bitcast i16* %type_attrs47 to i8*
  %arrayidx48 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx48, align 1, !tbaa !19
  %conv49 = zext i8 %45 to i32
  %cmp50 = icmp eq i32 %conv49, 18
  br i1 %cmp50, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %land.lhs.true.45
  %46 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory53, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.4* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !31
  %49 = bitcast %struct.gs_ref_memory_s* %48 to %struct.gs_memory_s*
  %call54 = call i8* @ref_to_string(%struct.ref_s* %46, %struct.gs_memory_s* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #6
  store i8* %call54, i8** %font_file_path, align 8, !tbaa !1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %land.lhs.true.45, %if.end.41
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory56 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 1
  %current57 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory56, i32 0, i32 0
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current57, align 8, !tbaa !20
  %52 = bitcast %struct.gs_ref_memory_s* %51 to %struct.gs_memory_s*
  %53 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %54 = bitcast %struct.gs_context_state_s* %53 to i8*
  call void @gs_fapi_set_servers_client_data(%struct.gs_memory_s* %52, %struct.gs_fapi_font_s* @ps_ff_stub, i8* %54) #6
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %56 = load i32, i32* %subfont, align 4, !tbaa !29
  %57 = load i8*, i8** %font_file_path, align 8, !tbaa !1
  %58 = load i8*, i8** %fapi_request, align 8, !tbaa !1
  %59 = load i8*, i8** %xlatmap, align 8, !tbaa !1
  %call58 = call i32 @gs_fapi_passfont(%struct.gs_font_s* %55, i32 %56, i8* %57, %struct.gs_string_s* null, i8* %58, i8* %59, i8** %fapi_id, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)* bitcast (void (%struct.gs_fapi_server_s*, i8*, i8**, i32*)* @ps_get_server_param to i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*)) #6
  store i32 %call58, i32* %code, align 4, !tbaa !29
  %60 = load i8*, i8** %font_file_path, align 8, !tbaa !1
  %cmp59 = icmp ne i8* %60, null
  br i1 %cmp59, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %if.end.55
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 1
  %spaces63 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory62, i32 0, i32 1
  %memories64 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces63, i32 0, i32 1
  %named65 = bitcast %union.anon.4* %memories64 to %struct._ssn*
  %global66 = getelementptr inbounds %struct._ssn, %struct._ssn* %named65, i32 0, i32 2
  %62 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global66, align 8, !tbaa !31
  %63 = bitcast %struct.gs_ref_memory_s* %62 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %64 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !28
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 1
  %spaces68 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory67, i32 0, i32 1
  %memories69 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces68, i32 0, i32 1
  %named70 = bitcast %union.anon.4* %memories69 to %struct._ssn*
  %global71 = getelementptr inbounds %struct._ssn, %struct._ssn* %named70, i32 0, i32 2
  %66 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global71, align 8, !tbaa !31
  %67 = bitcast %struct.gs_ref_memory_s* %66 to %struct.gs_memory_s*
  %68 = load i8*, i8** %font_file_path, align 8, !tbaa !1
  %69 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 2
  %70 = load i32, i32* %rsize, align 4, !tbaa !33
  %add = add i32 %70, 1
  call void %64(%struct.gs_memory_s* %67, i8* %68, i32 %add, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.61, %if.end.55
  %71 = load i8*, i8** %fapi_request, align 8, !tbaa !1
  %cmp74 = icmp ne i8* %71, null
  br i1 %cmp74, label %if.then.76, label %if.end.86

if.then.76:                                       ; preds = %if.end.73
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 1
  %current78 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory77, i32 0, i32 0
  %73 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current78, align 8, !tbaa !20
  %74 = bitcast %struct.gs_ref_memory_s* %73 to %struct.gs_memory_s*
  %procs79 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 1
  %free_string80 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs79, i32 0, i32 19
  %75 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string80, align 8, !tbaa !28
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory81 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 1
  %current82 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory81, i32 0, i32 0
  %77 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current82, align 8, !tbaa !20
  %78 = bitcast %struct.gs_ref_memory_s* %77 to %struct.gs_memory_s*
  %79 = load i8*, i8** %fapi_request, align 8, !tbaa !1
  %80 = load i8*, i8** %fapi_request, align 8, !tbaa !1
  %call83 = call i64 @strlen(i8* %80) #7
  %add84 = add i64 %call83, 1
  %conv85 = trunc i64 %add84 to i32
  call void %75(%struct.gs_memory_s* %78, i8* %79, i32 %conv85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)) #6
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.76, %if.end.73
  %81 = load i32, i32* %code, align 4, !tbaa !29
  %cmp87 = icmp ne i32 %81, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  %82 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.end.90:                                        ; preds = %if.end.86
  %83 = load i32, i32* %code, align 4, !tbaa !29
  %cmp91 = icmp sge i32 %83, 0
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.113

land.lhs.true.93:                                 ; preds = %if.end.90
  %84 = load i8*, i8** %fapi_id, align 8, !tbaa !1
  %cmp94 = icmp ne i8* %84, null
  br i1 %cmp94, label %if.then.96, label %if.end.113

if.then.96:                                       ; preds = %land.lhs.true.93
  %85 = bitcast %struct.ref_s* %FAPI_ID to i8*
  call void @llvm.lifetime.start(i64 16, i8* %85) #1
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory97 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 1
  %current98 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory97, i32 0, i32 0
  %87 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current98, align 8, !tbaa !20
  %88 = bitcast %struct.gs_ref_memory_s* %87 to %struct.gs_memory_s*
  %gs_lib_ctx99 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %88, i32 0, i32 2
  %89 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx99, align 8, !tbaa !21
  %gs_name_table100 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %89, i32 0, i32 16
  %90 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table100, align 8, !tbaa !24
  %91 = load i8*, i8** %fapi_id, align 8, !tbaa !1
  %92 = load i8*, i8** %fapi_id, align 8, !tbaa !1
  %call101 = call i64 @strlen(i8* %92) #7
  %conv102 = trunc i64 %call101 to i32
  %call103 = call i32 @names_ref(%struct.name_table_s* %90, i8* %91, i32 %conv102, %struct.ref_s* %FAPI_ID, i32 0) #6
  store i32 %call103, i32* %code, align 4, !tbaa !29
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.96
  %93 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.107:                                       ; preds = %if.then.96
  %94 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call108 = call i32 @dict_put_string(%struct.ref_s* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct.ref_s* %FAPI_ID, %struct.dict_stack_s* null) #6
  store i32 %call108, i32* %code, align 4, !tbaa !29
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.107
  %95 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.112:                                       ; preds = %if.end.107
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.112, %if.then.111, %if.then.106
  %96 = bitcast %struct.ref_s* %FAPI_ID to i8*
  call void @llvm.lifetime.end(i64 16, i8* %96) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.132 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.113

if.end.113:                                       ; preds = %cleanup.cont, %land.lhs.true.93, %if.end.90
  br label %do.body

do.body:                                          ; preds = %if.end.113
  %97 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %98 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack114 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %98, i32 0, i32 26
  %stack115 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack114, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack115, i32 0, i32 2
  %99 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp116 = icmp ugt %struct.ref_s* %add.ptr, %99
  br i1 %cmp116, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %do.body
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %100, i32 0, i32 26
  %stack120 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack119, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack120, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

if.else.121:                                      ; preds = %do.body
  %101 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %102 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack122 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %102, i32 0, i32 26
  %stack123 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack122, i32 0, i32 0
  %p124 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack123, i32 0, i32 0
  store %struct.ref_s* %101, %struct.ref_s** %p124, align 8, !tbaa !5
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.121
  br label %do.cond

do.cond:                                          ; preds = %if.end.125
  br label %do.end

do.end:                                           ; preds = %do.cond
  %103 = load i8*, i8** %fapi_id, align 8, !tbaa !1
  %cmp126 = icmp ne i8* %103, null
  %conv127 = zext i1 %cmp126 to i32
  %conv128 = trunc i32 %conv127 to i16
  %104 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i32 0, i32 1
  %boolval = bitcast %union.v* %value129 to i16*
  store i16 %conv128, i16* %boolval, align 2, !tbaa !26
  %105 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 0, i32 0
  %type_attrs131 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas130, i32 0, i32 0
  store i16 256, i16* %type_attrs131, align 2, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132

cleanup.132:                                      ; preds = %do.end, %if.then.118, %cleanup, %if.then.89, %if.then.25, %if.then.8, %if.then
  %106 = bitcast i32* %subfont to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast %struct.ref_s* %reqstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %107) #1
  %108 = bitcast i8** %fapi_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i8** %fapi_request to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i8** %xlatmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i8** %font_file_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = load i32, i32* %retval
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define internal i32 @zFAPIrebuildfont(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %build = alloca %struct.build_proc_refs_s, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %v = alloca %struct.ref_s*, align 8
  %font_file_path = alloca i8*, align 8
  %FAPI_ID = alloca [20 x i8], align 16
  %pchars = alloca i8*, align 8
  %len = alloca i32, align 4
  %pdata = alloca %struct.font_data_s*, align 8
  %I = alloca %struct.gs_fapi_server_s*, align 8
  %has_buildglyph = alloca i32, align 4
  %has_buildchar = alloca i32, align 4
  %subfont = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %call = call i32 @font_param(%struct.ref_s* %add.ptr, %struct.gs_font_s** %pfont) #6
  store i32 %call, i32* %code, align 4, !tbaa !29
  %7 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %9 = bitcast %struct.gs_font_s* %8 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %9, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %font_file_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* null, i8** %font_file_path, align 8, !tbaa !1
  %12 = bitcast [20 x i8]* %FAPI_ID to i8*
  call void @llvm.lifetime.start(i64 20, i8* %12) #1
  %13 = bitcast i8** %pchars to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %has_buildglyph to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %has_buildchar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %subfont to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %code, align 4, !tbaa !29
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %23 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %24 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call4 = call i32 @check_type_failed(%struct.ref_s* %25) #6
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %26 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %26, i32 0, i32 25
  %27 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !36
  %cmp6 = icmp eq %struct.gs_fapi_server_s* %27, null
  br i1 %cmp6, label %if.then.8, label %if.end.43

if.then.8:                                        ; preds = %if.end.5
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %call10 = call i32 @dict_find_string(%struct.ref_s* %add.ptr9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct.ref_s** %v) #6
  %cmp11 = icmp sle i32 %call10, 0
  br i1 %cmp11, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %29 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %30 = bitcast i16* %type_attrs14 to i8*
  %arrayidx15 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx15, align 1, !tbaa !19
  %conv16 = zext i8 %31 to i32
  %cmp17 = icmp eq i32 %conv16, 13
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false, %if.then.8
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %lor.lhs.false
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  %35 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %call21 = call i32 @obj_string_data(%struct.gs_memory_s* %34, %struct.ref_s* %35, i8** %pchars, i32* %len) #6
  %36 = load i32, i32* %len, align 4, !tbaa !29
  %conv22 = zext i32 %36 to i64
  %cmp23 = icmp ult i64 %conv22, 19
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %37 = load i32, i32* %len, align 4, !tbaa !29
  %conv25 = zext i32 %37 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv25, %cond.true ], [ 19, %cond.false ]
  %conv26 = trunc i64 %cond to i32
  store i32 %conv26, i32* %len, align 4, !tbaa !29
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %FAPI_ID, i32 0, i32 0
  %38 = load i8*, i8** %pchars, align 8, !tbaa !1
  %39 = load i32, i32* %len, align 4, !tbaa !29
  %conv27 = zext i32 %39 to i64
  %call28 = call i8* @strncpy(i8* %arraydecay, i8* %38, i64 %conv27) #8
  %40 = load i32, i32* %len, align 4, !tbaa !29
  %idxprom = zext i32 %40 to i64
  %arrayidx29 = getelementptr inbounds [20 x i8], [20 x i8]* %FAPI_ID, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx29, align 1, !tbaa !19
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 1
  %current31 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory30, i32 0, i32 0
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current31, align 8, !tbaa !20
  %43 = bitcast %struct.gs_ref_memory_s* %42 to %struct.gs_memory_s*
  %44 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gs_context_state_s* %44 to i8*
  call void @gs_fapi_set_servers_client_data(%struct.gs_memory_s* %43, %struct.gs_fapi_font_s* @ps_ff_stub, i8* %45) #6
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current33 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current33, align 8, !tbaa !20
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %arraydecay34 = getelementptr inbounds [20 x i8], [20 x i8]* %FAPI_ID, i32 0, i32 0
  %49 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI35 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %49, i32 0, i32 25
  %call36 = call i32 @gs_fapi_find_server(%struct.gs_memory_s* %48, i8* %arraydecay34, %struct.gs_fapi_server_s** %FAPI35, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)* bitcast (void (%struct.gs_fapi_server_s*, i8*, i8**, i32*)* @ps_get_server_param to i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*)) #6
  store i32 %call36, i32* %code, align 4, !tbaa !29
  %50 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI37 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %50, i32 0, i32 25
  %51 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI37, align 8, !tbaa !36
  %tobool = icmp ne %struct.gs_fapi_server_s* %51, null
  br i1 %tobool, label %lor.lhs.false.38, label %if.then.41

lor.lhs.false.38:                                 ; preds = %cond.end
  %52 = load i32, i32* %code, align 4, !tbaa !29
  %cmp39 = icmp slt i32 %52, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false.38, %cond.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %lor.lhs.false.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.5
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %53, i32 0, i32 8
  %54 = load i8*, i8** %client_data, align 8, !tbaa !47
  %55 = bitcast i8* %54 to %struct.font_data_s*
  store %struct.font_data_s* %55, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %56 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI44 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %56, i32 0, i32 25
  %57 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI44, align 8, !tbaa !36
  store %struct.gs_fapi_server_s* %57, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %58 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -1
  %call46 = call i32 @dict_find_string(%struct.ref_s* %add.ptr45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s** %v) #6
  %cmp47 = icmp sge i32 %call46, 0
  br i1 %cmp47, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.43
  %59 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %type_attrs50 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas49, i32 0, i32 0
  %60 = bitcast i16* %type_attrs50 to i8*
  %arrayidx51 = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %arrayidx51, align 1, !tbaa !19
  %conv52 = zext i8 %61 to i32
  %cmp53 = icmp eq i32 %conv52, 11
  br i1 %cmp53, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %land.lhs.true
  %62 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %63 = load i64, i64* %intval, align 8, !tbaa !30
  %conv56 = trunc i64 %63 to i32
  store i32 %conv56, i32* %subfont, align 4, !tbaa !29
  br label %if.end.57

if.else:                                          ; preds = %land.lhs.true, %if.end.43
  store i32 0, i32* %subfont, align 4, !tbaa !29
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.55
  %64 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildGlyph = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %64, i32 0, i32 2
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph, i32 0, i32 0
  %type_attrs59 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 0
  %65 = bitcast i16* %type_attrs59 to i8*
  %arrayidx60 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = load i8, i8* %arrayidx60, align 1, !tbaa !19
  %conv61 = zext i8 %66 to i32
  %cmp62 = icmp ne i32 %conv61, 14
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.57
  store i32 1, i32* %has_buildglyph, align 4, !tbaa !29
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.57
  store i32 0, i32* %has_buildglyph, align 4, !tbaa !29
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %if.then.64
  %67 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildChar = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %67, i32 0, i32 1
  %tas67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar, i32 0, i32 0
  %type_attrs68 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas67, i32 0, i32 0
  %68 = bitcast i16* %type_attrs68 to i8*
  %arrayidx69 = getelementptr inbounds i8, i8* %68, i64 1
  %69 = load i8, i8* %arrayidx69, align 1, !tbaa !19
  %conv70 = zext i8 %69 to i32
  %cmp71 = icmp ne i32 %conv70, 14
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.66
  store i32 1, i32* %has_buildchar, align 4, !tbaa !29
  br label %if.end.75

if.else.74:                                       ; preds = %if.end.66
  store i32 0, i32* %has_buildchar, align 4, !tbaa !29
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  %70 = load i32, i32* %has_buildglyph, align 4, !tbaa !29
  %cmp76 = icmp eq i32 %70, 0
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.82

land.lhs.true.78:                                 ; preds = %if.end.75
  %71 = load i32, i32* %has_buildchar, align 4, !tbaa !29
  %cmp79 = icmp eq i32 %71, 0
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %land.lhs.true.78
  store i32 1, i32* %has_buildglyph, align 4, !tbaa !29
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %land.lhs.true.78, %if.end.75
  %72 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -1
  %call84 = call i32 @dict_find_string(%struct.ref_s* %add.ptr83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s** %v) #6
  %cmp85 = icmp sle i32 %call84, 0
  br i1 %cmp85, label %if.then.94, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %if.end.82
  %73 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %type_attrs89 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas88, i32 0, i32 0
  %74 = bitcast i16* %type_attrs89 to i8*
  %arrayidx90 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load i8, i8* %arrayidx90, align 1, !tbaa !19
  %conv91 = zext i8 %75 to i32
  %cmp92 = icmp eq i32 %conv91, 18
  br i1 %cmp92, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %lor.lhs.false.87, %if.end.82
  store %struct.ref_s* null, %struct.ref_s** %v, align 8, !tbaa !1
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %lor.lhs.false.87
  %76 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %76, i32 0, i32 11
  %77 = load i32, i32* %FontType, align 4, !tbaa !49
  %cmp96 = icmp eq i32 %77, 9
  br i1 %cmp96, label %land.lhs.true.98, label %if.else.109

land.lhs.true.98:                                 ; preds = %if.end.95
  %78 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %cmp99 = icmp eq %struct.ref_s* %78, null
  br i1 %cmp99, label %if.then.101, label %if.else.109

if.then.101:                                      ; preds = %land.lhs.true.98
  %79 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %79, i32 0, i32 1
  %current103 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory102, i32 0, i32 0
  %80 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current103, align 8, !tbaa !20
  %81 = bitcast %struct.gs_ref_memory_s* %80 to %struct.gs_memory_s*
  %call104 = call i32 @build_proc_name_refs(%struct.gs_memory_s* %81, %struct.build_proc_refs_s* %build, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0)) #6
  store i32 %call104, i32* %code, align 4, !tbaa !29
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.then.101
  %82 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.108:                                       ; preds = %if.then.101
  br label %if.end.117

if.else.109:                                      ; preds = %land.lhs.true.98, %if.end.95
  %83 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory110 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %83, i32 0, i32 1
  %current111 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory110, i32 0, i32 0
  %84 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current111, align 8, !tbaa !20
  %85 = bitcast %struct.gs_ref_memory_s* %84 to %struct.gs_memory_s*
  %call112 = call i32 @build_proc_name_refs(%struct.gs_memory_s* %85, %struct.build_proc_refs_s* %build, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0)) #6
  store i32 %call112, i32* %code, align 4, !tbaa !29
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.else.109
  %86 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %if.else.109
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.108
  %87 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildChar118 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %87, i32 0, i32 1
  %tas119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar118, i32 0, i32 0
  %type_attrs120 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas119, i32 0, i32 0
  %88 = bitcast i16* %type_attrs120 to i8*
  %arrayidx121 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx121, align 1, !tbaa !19
  %conv122 = zext i8 %89 to i32
  %cmp123 = icmp ne i32 %conv122, 14
  br i1 %cmp123, label %land.lhs.true.125, label %lor.lhs.false.147

land.lhs.true.125:                                ; preds = %if.end.117
  %90 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildChar126 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %90, i32 0, i32 1
  %value127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar126, i32 0, i32 1
  %pname = bitcast %union.v* %value127 to %struct.name_s**
  %91 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %tobool128 = icmp ne %struct.name_s* %91, null
  br i1 %tobool128, label %land.lhs.true.129, label %lor.lhs.false.147

land.lhs.true.129:                                ; preds = %land.lhs.true.125
  %BuildChar130 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %build, i32 0, i32 0
  %value131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar130, i32 0, i32 1
  %pname132 = bitcast %union.v* %value131 to %struct.name_s**
  %92 = load %struct.name_s*, %struct.name_s** %pname132, align 8, !tbaa !1
  %tobool133 = icmp ne %struct.name_s* %92, null
  br i1 %tobool133, label %land.lhs.true.134, label %lor.lhs.false.147

land.lhs.true.134:                                ; preds = %land.lhs.true.129
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory135 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 1
  %current136 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory135, i32 0, i32 0
  %94 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current136, align 8, !tbaa !20
  %95 = bitcast %struct.gs_ref_memory_s* %94 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 2
  %96 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %96, i32 0, i32 16
  %97 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  %98 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildChar137 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %98, i32 0, i32 1
  %call138 = call i32 @names_index(%struct.name_table_s* %97, %struct.ref_s* %BuildChar137) #6
  %99 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory139 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %99, i32 0, i32 1
  %current140 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory139, i32 0, i32 0
  %100 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current140, align 8, !tbaa !20
  %101 = bitcast %struct.gs_ref_memory_s* %100 to %struct.gs_memory_s*
  %gs_lib_ctx141 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %101, i32 0, i32 2
  %102 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx141, align 8, !tbaa !21
  %gs_name_table142 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %102, i32 0, i32 16
  %103 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table142, align 8, !tbaa !24
  %BuildChar143 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %build, i32 0, i32 0
  %call144 = call i32 @names_index(%struct.name_table_s* %103, %struct.ref_s* %BuildChar143) #6
  %cmp145 = icmp eq i32 %call138, %call144
  br i1 %cmp145, label %if.end.239, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %land.lhs.true.134, %land.lhs.true.129, %land.lhs.true.125, %if.end.117
  %104 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildGlyph148 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %104, i32 0, i32 2
  %tas149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph148, i32 0, i32 0
  %type_attrs150 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas149, i32 0, i32 0
  %105 = bitcast i16* %type_attrs150 to i8*
  %arrayidx151 = getelementptr inbounds i8, i8* %105, i64 1
  %106 = load i8, i8* %arrayidx151, align 1, !tbaa !19
  %conv152 = zext i8 %106 to i32
  %cmp153 = icmp ne i32 %conv152, 14
  br i1 %cmp153, label %land.lhs.true.155, label %if.then.180

land.lhs.true.155:                                ; preds = %lor.lhs.false.147
  %107 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildGlyph156 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %107, i32 0, i32 2
  %value157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph156, i32 0, i32 1
  %pname158 = bitcast %union.v* %value157 to %struct.name_s**
  %108 = load %struct.name_s*, %struct.name_s** %pname158, align 8, !tbaa !1
  %tobool159 = icmp ne %struct.name_s* %108, null
  br i1 %tobool159, label %land.lhs.true.160, label %if.then.180

land.lhs.true.160:                                ; preds = %land.lhs.true.155
  %BuildGlyph161 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %build, i32 0, i32 1
  %value162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph161, i32 0, i32 1
  %pname163 = bitcast %union.v* %value162 to %struct.name_s**
  %109 = load %struct.name_s*, %struct.name_s** %pname163, align 8, !tbaa !1
  %tobool164 = icmp ne %struct.name_s* %109, null
  br i1 %tobool164, label %land.lhs.true.165, label %if.then.180

land.lhs.true.165:                                ; preds = %land.lhs.true.160
  %110 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory166 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %110, i32 0, i32 1
  %current167 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory166, i32 0, i32 0
  %111 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current167, align 8, !tbaa !20
  %112 = bitcast %struct.gs_ref_memory_s* %111 to %struct.gs_memory_s*
  %gs_lib_ctx168 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %112, i32 0, i32 2
  %113 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx168, align 8, !tbaa !21
  %gs_name_table169 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %113, i32 0, i32 16
  %114 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table169, align 8, !tbaa !24
  %115 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildGlyph170 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %115, i32 0, i32 2
  %call171 = call i32 @names_index(%struct.name_table_s* %114, %struct.ref_s* %BuildGlyph170) #6
  %116 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory172 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %116, i32 0, i32 1
  %current173 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory172, i32 0, i32 0
  %117 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current173, align 8, !tbaa !20
  %118 = bitcast %struct.gs_ref_memory_s* %117 to %struct.gs_memory_s*
  %gs_lib_ctx174 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %118, i32 0, i32 2
  %119 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx174, align 8, !tbaa !21
  %gs_name_table175 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %119, i32 0, i32 16
  %120 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table175, align 8, !tbaa !24
  %BuildGlyph176 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %build, i32 0, i32 1
  %call177 = call i32 @names_index(%struct.name_table_s* %120, %struct.ref_s* %BuildGlyph176) #6
  %cmp178 = icmp eq i32 %call171, %call177
  br i1 %cmp178, label %if.end.239, label %if.then.180

if.then.180:                                      ; preds = %land.lhs.true.165, %land.lhs.true.160, %land.lhs.true.155, %lor.lhs.false.147
  %121 = load i32, i32* %has_buildchar, align 4, !tbaa !29
  %cmp181 = icmp eq i32 %121, 1
  br i1 %cmp181, label %if.then.183, label %if.else.192

if.then.183:                                      ; preds = %if.then.180
  %122 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildChar184 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %122, i32 0, i32 1
  %BuildChar185 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %build, i32 0, i32 0
  %123 = bitcast %struct.ref_s* %BuildChar184 to i8*
  %124 = bitcast %struct.ref_s* %BuildChar185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 16, i32 8, i1 false), !tbaa.struct !50
  %125 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory186 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %125, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory186, i32 0, i32 5
  %126 = load i32, i32* %new_mask, align 4, !tbaa !52
  %127 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildChar187 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %127, i32 0, i32 1
  %tas188 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar187, i32 0, i32 0
  %type_attrs189 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas188, i32 0, i32 0
  %128 = load i16, i16* %type_attrs189, align 2, !tbaa !27
  %conv190 = zext i16 %128 to i32
  %or = or i32 %conv190, %126
  %conv191 = trunc i32 %or to i16
  store i16 %conv191, i16* %type_attrs189, align 2, !tbaa !27
  br label %if.end.196

if.else.192:                                      ; preds = %if.then.180
  %129 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildChar193 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %129, i32 0, i32 1
  %tas194 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar193, i32 0, i32 0
  %type_attrs195 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas194, i32 0, i32 0
  store i16 3584, i16* %type_attrs195, align 2, !tbaa !27
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.192, %if.then.183
  %130 = load i32, i32* %has_buildglyph, align 4, !tbaa !29
  %cmp197 = icmp eq i32 %130, 1
  br i1 %cmp197, label %if.then.199, label %if.else.210

if.then.199:                                      ; preds = %if.end.196
  %131 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildGlyph200 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %131, i32 0, i32 2
  %BuildGlyph201 = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %build, i32 0, i32 1
  %132 = bitcast %struct.ref_s* %BuildGlyph200 to i8*
  %133 = bitcast %struct.ref_s* %BuildGlyph201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 16, i32 8, i1 false), !tbaa.struct !50
  %134 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory202 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %134, i32 0, i32 1
  %new_mask203 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory202, i32 0, i32 5
  %135 = load i32, i32* %new_mask203, align 4, !tbaa !52
  %136 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildGlyph204 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %136, i32 0, i32 2
  %tas205 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph204, i32 0, i32 0
  %type_attrs206 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas205, i32 0, i32 0
  %137 = load i16, i16* %type_attrs206, align 2, !tbaa !27
  %conv207 = zext i16 %137 to i32
  %or208 = or i32 %conv207, %135
  %conv209 = trunc i32 %or208 to i16
  store i16 %conv209, i16* %type_attrs206, align 2, !tbaa !27
  br label %if.end.214

if.else.210:                                      ; preds = %if.end.196
  %138 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %BuildGlyph211 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %138, i32 0, i32 2
  %tas212 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildGlyph211, i32 0, i32 0
  %type_attrs213 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas212, i32 0, i32 0
  store i16 3584, i16* %type_attrs213, align 2, !tbaa !27
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.210, %if.then.199
  %139 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %cmp215 = icmp ne %struct.ref_s* %139, null
  br i1 %cmp215, label %if.then.217, label %if.end.220

if.then.217:                                      ; preds = %if.end.214
  %140 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %141 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory218 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %141, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory218, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon.4* %memories to %struct._ssn*
  %global = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %142 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global, align 8, !tbaa !31
  %143 = bitcast %struct.gs_ref_memory_s* %142 to %struct.gs_memory_s*
  %call219 = call i8* @ref_to_string(%struct.ref_s* %140, %struct.gs_memory_s* %143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #6
  store i8* %call219, i8** %font_file_path, align 8, !tbaa !1
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.217, %if.end.214
  %144 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %145 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr221 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %145, i64 -1
  %146 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %147 = load i32, i32* %subfont, align 4, !tbaa !29
  %148 = load i8*, i8** %font_file_path, align 8, !tbaa !1
  %call222 = call i32 @FAPI_refine_font(%struct.gs_context_state_s* %144, %struct.ref_s* %add.ptr221, %struct.gs_font_s* %146, i32 %147, i8* %148) #6
  store i32 %call222, i32* %code, align 4, !tbaa !29
  %149 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %initial_FontMatrix = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %149, i32 0, i32 8
  %150 = bitcast %struct.gs_matrix_s* %initial_FontMatrix to i8*
  %151 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %151, i32 0, i32 9
  %152 = bitcast %struct.gs_matrix_s* %FontMatrix to i8*
  %call223 = call i8* @memcpy(i8* %150, i8* %152, i64 24) #8
  %153 = load i8*, i8** %font_file_path, align 8, !tbaa !1
  %cmp224 = icmp ne i8* %153, null
  br i1 %cmp224, label %if.then.226, label %if.end.238

if.then.226:                                      ; preds = %if.end.220
  %154 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory227 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %154, i32 0, i32 1
  %spaces228 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory227, i32 0, i32 1
  %memories229 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces228, i32 0, i32 1
  %named230 = bitcast %union.anon.4* %memories229 to %struct._ssn*
  %global231 = getelementptr inbounds %struct._ssn, %struct._ssn* %named230, i32 0, i32 2
  %155 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global231, align 8, !tbaa !31
  %156 = bitcast %struct.gs_ref_memory_s* %155 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %156, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %157 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !28
  %158 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory232 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %158, i32 0, i32 1
  %spaces233 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory232, i32 0, i32 1
  %memories234 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces233, i32 0, i32 1
  %named235 = bitcast %union.anon.4* %memories234 to %struct._ssn*
  %global236 = getelementptr inbounds %struct._ssn, %struct._ssn* %named235, i32 0, i32 2
  %159 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global236, align 8, !tbaa !31
  %160 = bitcast %struct.gs_ref_memory_s* %159 to %struct.gs_memory_s*
  %161 = load i8*, i8** %font_file_path, align 8, !tbaa !1
  %162 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas237 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %162, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas237, i32 0, i32 2
  %163 = load i32, i32* %rsize, align 4, !tbaa !33
  %add = add i32 %163, 1
  call void %157(%struct.gs_memory_s* %160, i8* %161, i32 %add, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.226, %if.end.220
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %land.lhs.true.165, %land.lhs.true.134
  %164 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack240 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %164, i32 0, i32 26
  %stack241 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack240, i32 0, i32 0
  %p242 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack241, i32 0, i32 0
  %165 = load %struct.ref_s*, %struct.ref_s** %p242, align 8, !tbaa !5
  %add.ptr243 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %165, i64 -1
  store %struct.ref_s* %add.ptr243, %struct.ref_s** %p242, align 8, !tbaa !5
  %166 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.239, %if.then.115, %if.then.107, %if.then.41, %if.then.19, %if.then.3, %if.then
  %167 = bitcast i32* %subfont to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %has_buildchar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %has_buildglyph to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i8** %pchars to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast [20 x i8]* %FAPI_ID to i8*
  call void @llvm.lifetime.end(i64 20, i8* %174) #1
  %175 = bitcast i8** %font_file_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.end(i64 32, i8* %180) #1
  %181 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = load i32, i32* %retval
  ret i32 %182
}

; Function Attrs: nounwind uwtable
define internal i32 @zFAPIBuildChar(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @FAPI_char(%struct.gs_context_state_s* %0, i32 0, %struct.ref_s* null) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zFAPIBuildGlyph(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @FAPI_char(%struct.gs_context_state_s* %0, i32 1, %struct.ref_s* null) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zFAPIBuildGlyph9(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %lop = alloca %struct.ref_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cid = alloca i32, align 4
  %code = alloca i32, align 4
  %s = alloca i32, align 4
  %font9 = alloca %struct.ref_s, align 8
  %rFDArray = alloca %struct.ref_s*, align 8
  %f = alloca %struct.ref_s, align 8
  %font_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %ind = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %lop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %3, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %8 = load i32, i32* %current_space, align 4, !tbaa !53
  store i32 %8, i32* %s, align 4, !tbaa !19
  %9 = bitcast %struct.ref_s* %font9 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !54
  %call = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %11) #6
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call, i32 0, i32 8
  %12 = load i8*, i8** %client_data, align 8, !tbaa !47
  %13 = bitcast i8* %12 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %13, i32 0, i32 0
  %14 = bitcast %struct.ref_s* %font9 to i8*
  %15 = bitcast %struct.ref_s* %dict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !50
  %16 = bitcast %struct.ref_s** %rFDArray to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s* %f to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %20 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx1, align 1, !tbaa !19
  %conv = zext i8 %21 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 0
  %call4 = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #6
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx5, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %24 = bitcast i16* %type_attrs7 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx8, align 1, !tbaa !19
  %conv9 = zext i8 %25 to i32
  %cmp10 = icmp eq i32 %conv9, 2
  br i1 %cmp10, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %call14 = call i32 @check_type_failed(%struct.ref_s* %arrayidx13) #6
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx16, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %28 = load i64, i64* %intval, align 8, !tbaa !30
  %conv17 = trunc i64 %28 to i32
  store i32 %conv17, i32* %cid, align 4, !tbaa !29
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack19 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack18, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack19, i32 0, i32 2
  %31 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp20 = icmp ugt %struct.ref_s* %add.ptr, %31
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 26
  %stack24 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack23, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack26 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack26, i32 0, i32 0
  store %struct.ref_s* %33, %struct.ref_s** %p27, align 8, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 0
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs30, align 8, !tbaa !54
  %call31 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %37) #6
  %client_data32 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call31, i32 0, i32 8
  %38 = load i8*, i8** %client_data32, align 8, !tbaa !47
  %39 = bitcast i8* %38 to %struct.font_data_s*
  %dict33 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %39, i32 0, i32 0
  %40 = bitcast %struct.ref_s* %arrayidx29 to i8*
  %41 = bitcast %struct.ref_s* %dict33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !tbaa.struct !50
  %42 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 0
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -2
  %44 = bitcast %struct.ref_s* %arrayidx34 to i8*
  %45 = bitcast %struct.ref_s* %arrayidx35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false), !tbaa.struct !50
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -3
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr37, i32 0, i32 0
  %type_attrs39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 0
  %48 = load i16, i16* %type_attrs39, align 2, !tbaa !27
  %conv40 = zext i16 %48 to i32
  %and = and i32 %conv40, 12
  %cmp41 = icmp eq i32 %and, 12
  %cond = select i1 %cmp41, i32 8, i32 12
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory36, i32 %cond) #6
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call43 = call i32 @ztype9mapcid(%struct.gs_context_state_s* %49) #6
  store i32 %call43, i32* %code, align 4, !tbaa !29
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end
  %50 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %do.end
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 0
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx48, i32 0, i32 1
  %intval50 = bitcast %union.v* %value49 to i64*
  %52 = load i64, i64* %intval50, align 8, !tbaa !30
  %conv51 = trunc i64 %52 to i32
  store i32 %conv51, i32* %font_index, align 4, !tbaa !29
  %call52 = call i32 @dict_find_string(%struct.ref_s* %font9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), %struct.ref_s** %rFDArray) #6
  %cmp53 = icmp sle i32 %call52, 0
  br i1 %cmp53, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.47
  %53 = load %struct.ref_s*, %struct.ref_s** %rFDArray, align 8, !tbaa !1
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  %54 = bitcast i16* %type_attrs56 to i8*
  %arrayidx57 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx57, align 1, !tbaa !19
  %conv58 = zext i8 %55 to i32
  %cmp59 = icmp ne i32 %conv58, 4
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false, %if.end.47
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %lor.lhs.false
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory63, i32 0, i32 0
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %58 = bitcast %struct.gs_ref_memory_s* %57 to %struct.gs_memory_s*
  %59 = load %struct.ref_s*, %struct.ref_s** %rFDArray, align 8, !tbaa !1
  %60 = load i32, i32* %font_index, align 4, !tbaa !29
  %conv64 = sext i32 %60 to i64
  %call65 = call i32 @array_get(%struct.gs_memory_s* %58, %struct.ref_s* %59, i64 %conv64, %struct.ref_s* %f) #6
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then.75, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.end.62
  %tas69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %f, i32 0, i32 0
  %type_attrs70 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas69, i32 0, i32 0
  %61 = bitcast i16* %type_attrs70 to i8*
  %arrayidx71 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx71, align 1, !tbaa !19
  %conv72 = zext i8 %62 to i32
  %cmp73 = icmp ne i32 %conv72, 2
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.68, %if.end.62
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %lor.lhs.false.68
  %63 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 0
  %64 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 -2
  %65 = bitcast %struct.ref_s* %arrayidx77 to i8*
  %66 = bitcast %struct.ref_s* %arrayidx78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 16, i32 8, i1 false), !tbaa.struct !50
  %67 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -2
  %68 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -1
  %69 = bitcast %struct.ref_s* %arrayidx79 to i8*
  %70 = bitcast %struct.ref_s* %arrayidx80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 16, i32 8, i1 false), !tbaa.struct !50
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 -1
  %72 = bitcast %struct.ref_s* %arrayidx81 to i8*
  %73 = bitcast %struct.ref_s* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 16, i32 8, i1 false), !tbaa.struct !50
  %74 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %75 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 -2
  %call83 = call i32 @FAPI_char(%struct.gs_context_state_s* %74, i32 1, %struct.ref_s* %add.ptr82) #6
  store i32 %call83, i32* %code, align 4, !tbaa !29
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.76
  %76 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.end.76
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 26
  %stack89 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack88, i32 0, i32 0
  %p90 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack89, i32 0, i32 0
  %78 = load %struct.ref_s*, %struct.ref_s** %p90, align 8, !tbaa !5
  store %struct.ref_s* %78, %struct.ref_s** %lop, align 8, !tbaa !1
  %79 = load i32, i32* %code, align 4, !tbaa !29
  %cmp91 = icmp eq i32 %79, 5
  br i1 %cmp91, label %if.then.93, label %if.else.109

if.then.93:                                       ; preds = %if.end.87
  %80 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = bitcast i32* %ind to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = load %struct.ref_s*, %struct.ref_s** %lop, align 8, !tbaa !1
  %83 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %82 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %83 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %conv94 = trunc i64 %sub.ptr.div to i32
  store i32 %conv94, i32* %ind, align 4, !tbaa !29
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack95 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 26
  %stack96 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack95, i32 0, i32 0
  %p97 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack96, i32 0, i32 0
  %85 = load %struct.ref_s*, %struct.ref_s** %p97, align 8, !tbaa !5
  store %struct.ref_s* %85, %struct.ref_s** %op, align 8, !tbaa !1
  %86 = load i32, i32* %ind, align 4, !tbaa !29
  store i32 %86, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.93
  %87 = load i32, i32* %i, align 4, !tbaa !29
  %cmp98 = icmp sge i32 %87, 0
  br i1 %cmp98, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %88 = load i32, i32* %i, align 4, !tbaa !29
  %sub = sub nsw i32 0, %88
  %sub100 = sub nsw i32 %sub, 2
  %idxprom = sext i32 %sub100 to i64
  %89 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i64 %idxprom
  %90 = load i32, i32* %i, align 4, !tbaa !29
  %sub102 = sub nsw i32 0, %90
  %idxprom103 = sext i32 %sub102 to i64
  %91 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 %idxprom103
  %92 = bitcast %struct.ref_s* %arrayidx101 to i8*
  %93 = bitcast %struct.ref_s* %arrayidx104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 16, i32 8, i1 false), !tbaa.struct !50
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %94 = load i32, i32* %i, align 4, !tbaa !29
  %dec = add nsw i32 %94, -1
  store i32 %dec, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack105 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %95, i32 0, i32 26
  %stack106 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack105, i32 0, i32 0
  %p107 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack106, i32 0, i32 0
  %96 = load %struct.ref_s*, %struct.ref_s** %p107, align 8, !tbaa !5
  %add.ptr108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i64 -2
  store %struct.ref_s* %add.ptr108, %struct.ref_s** %p107, align 8, !tbaa !5
  %97 = bitcast i32* %ind to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  br label %if.end.134

if.else.109:                                      ; preds = %if.end.87
  %99 = load i32, i32* %code, align 4, !tbaa !29
  %cmp110 = icmp slt i32 %99, 0
  br i1 %cmp110, label %if.then.112, label %if.else.124

if.then.112:                                      ; preds = %if.else.109
  %100 = load i32, i32* %cid, align 4, !tbaa !29
  %conv113 = sext i32 %100 to i64
  %101 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i64 -2
  %value115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr114, i32 0, i32 1
  %intval116 = bitcast %union.v* %value115 to i64*
  store i64 %conv113, i64* %intval116, align 8, !tbaa !30
  %102 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i64 -2
  %tas118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr117, i32 0, i32 0
  %type_attrs119 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas118, i32 0, i32 0
  store i16 2816, i16* %type_attrs119, align 2, !tbaa !27
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack120 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 26
  %stack121 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack120, i32 0, i32 0
  %p122 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack121, i32 0, i32 0
  %104 = load %struct.ref_s*, %struct.ref_s** %p122, align 8, !tbaa !5
  %add.ptr123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i64 -2
  store %struct.ref_s* %add.ptr123, %struct.ref_s** %p122, align 8, !tbaa !5
  br label %if.end.133

if.else.124:                                      ; preds = %if.else.109
  %105 = load i32, i32* %code, align 4, !tbaa !29
  %cmp125 = icmp ne i32 %105, 5
  br i1 %cmp125, label %if.then.127, label %if.end.132

if.then.127:                                      ; preds = %if.else.124
  %106 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack128 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %106, i32 0, i32 26
  %stack129 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack128, i32 0, i32 0
  %p130 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack129, i32 0, i32 0
  %107 = load %struct.ref_s*, %struct.ref_s** %p130, align 8, !tbaa !5
  %add.ptr131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i64 -2
  store %struct.ref_s* %add.ptr131, %struct.ref_s** %p130, align 8, !tbaa !5
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.127, %if.else.124
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.112
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %for.end
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory135 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 1
  %109 = load i32, i32* %s, align 4, !tbaa !19
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory135, i32 %109) #6
  %110 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.134, %if.then.86, %if.then.75, %if.then.61, %if.then.46, %if.then.22, %if.then.12, %if.then
  %111 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast %struct.ref_s* %f to i8*
  call void @llvm.lifetime.end(i64 16, i8* %112) #1
  %113 = bitcast %struct.ref_s** %rFDArray to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast %struct.ref_s* %font9 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %114) #1
  %115 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast %struct.ref_s** %lop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = load i32, i32* %retval
  ret i32 %120
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i8* @ref_to_string(%struct.ref_s*, %struct.gs_memory_s*, i8*) #2

declare i32 @gs_fapi_available(%struct.gs_memory_s*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @font_param(%struct.ref_s*, %struct.gs_font_s**) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @FAPI_get_xlatmap(%struct.gs_context_state_s* %i_ctx_p, i8** %xlatmap) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %xlatmap.addr = alloca i8**, align 8
  %pref = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i8** %xlatmap, i8*** %xlatmap.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct.ref_s** %pref) #6
  store i32 %call, i32* %code, align 4, !tbaa !29
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %6 to i32
  %cmp1 = icmp ne i32 %conv, 18
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %8 = load i8*, i8** %bytes, align 8, !tbaa !1
  %9 = load i8**, i8*** %xlatmap.addr, align 8, !tbaa !1
  store i8* %8, i8** %9, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @gs_fapi_set_servers_client_data(%struct.gs_memory_s*, %struct.gs_fapi_font_s*, i8*) #2

declare i32 @gs_fapi_passfont(%struct.gs_font_s*, i32, i8*, %struct.gs_string_s*, i8*, i8*, i8**, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*) #2

; Function Attrs: nounwind uwtable
define internal void @ps_get_server_param(%struct.gs_fapi_server_s* %I, i8* %subtype, i8** %server_param, i32* %server_param_size) #0 {
entry:
  %I.addr = alloca %struct.gs_fapi_server_s*, align 8
  %subtype.addr = alloca i8*, align 8
  %server_param.addr = alloca i8**, align 8
  %server_param_size.addr = alloca i32*, align 8
  %FAPIconfig = alloca %struct.ref_s*, align 8
  %options = alloca %struct.ref_s*, align 8
  %server_options = alloca %struct.ref_s*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_fapi_server_s* %I, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  store i8* %subtype, i8** %subtype.addr, align 8, !tbaa !1
  store i8** %server_param, i8*** %server_param.addr, align 8, !tbaa !1
  store i32* %server_param_size, i32** %server_param_size.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %FAPIconfig to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.ref_s** %server_options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %client_ctx_p = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %client_ctx_p, align 8, !tbaa !55
  %6 = bitcast i8* %5 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %6, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), %struct.ref_s** %FAPIconfig) #6
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %FAPIconfig, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %10 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.then, label %if.end.27

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.ref_s*, %struct.ref_s** %FAPIconfig, align 8, !tbaa !1
  %call3 = call i32 @dict_find_string(%struct.ref_s* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), %struct.ref_s** %options) #6
  %cmp4 = icmp sge i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.26

land.lhs.true.6:                                  ; preds = %if.then
  %12 = load %struct.ref_s*, %struct.ref_s** %options, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  %13 = bitcast i16* %type_attrs8 to i8*
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx9, align 1, !tbaa !19
  %conv10 = zext i8 %14 to i32
  %cmp11 = icmp eq i32 %conv10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %land.lhs.true.6
  %15 = load %struct.ref_s*, %struct.ref_s** %options, align 8, !tbaa !1
  %16 = load i8*, i8** %subtype.addr, align 8, !tbaa !1
  %call14 = call i32 @dict_find_string(%struct.ref_s* %15, i8* %16, %struct.ref_s** %server_options) #6
  %cmp15 = icmp sge i32 %call14, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %if.then.13
  %17 = load %struct.ref_s*, %struct.ref_s** %server_options, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %18 = bitcast i16* %type_attrs19 to i8*
  %arrayidx20 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx20, align 1, !tbaa !19
  %conv21 = zext i8 %19 to i32
  %cmp22 = icmp eq i32 %conv21, 18
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %land.lhs.true.17
  %20 = load %struct.ref_s*, %struct.ref_s** %server_options, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %21 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %22 = load i8**, i8*** %server_param.addr, align 8, !tbaa !1
  store i8* %21, i8** %22, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %server_options, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 2
  %24 = load i32, i32* %rsize, align 4, !tbaa !33
  %25 = load i32*, i32** %server_param_size.addr, align 8, !tbaa !1
  store i32 %24, i32* %25, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then.24, %land.lhs.true.17, %if.then.13
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %land.lhs.true.6, %if.then
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true, %entry
  %26 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.ref_s** %server_options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.ref_s** %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.ref_s** %FAPIconfig to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret void
}

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #2

declare i32 @dict_put_string(%struct.ref_s*, i8*, %struct.ref_s*, %struct.dict_stack_s*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i16 @FAPI_FF_get_word(%struct.gs_fapi_font_s* %ff, i32 %var_id, i32 %index) #0 {
entry:
  %retval = alloca i16, align 2
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %var_id.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %pdr = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %Private = alloca %struct.ref_s*, align 8
  %GlobalSubrs = alloca %struct.ref_s*, align 8
  %Private148 = alloca %struct.ref_s*, align 8
  %Subrs = alloca %struct.ref_s*, align 8
  %CharStrings = alloca %struct.ref_s*, align 8
  %DBlend = alloca %struct.ref_s*, align 8
  %Info = alloca %struct.ref_s*, align 8
  %Axes = alloca %struct.ref_s*, align 8
  %Info197 = alloca %struct.ref_s*, align 8
  %FontInfo = alloca %struct.ref_s*, align 8
  %Info213 = alloca %struct.ref_s*, align 8
  %Private214 = alloca %struct.ref_s*, align 8
  %Array = alloca %struct.ref_s*, align 8
  %Info240 = alloca %struct.ref_s*, align 8
  %Array241 = alloca %struct.ref_s*, align 8
  %Info258 = alloca %struct.ref_s*, align 8
  %Array259 = alloca %struct.ref_s*, align 8
  %Info276 = alloca %struct.ref_s*, align 8
  %Array277 = alloca %struct.ref_s*, align 8
  %SubArray = alloca %struct.ref_s, align 8
  %DBlend301 = alloca %struct.ref_s*, align 8
  %Element = alloca %struct.ref_s, align 8
  %string = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %Buffer = alloca [32 x i8], align 16
  %op = alloca %struct.op_def*, align 8
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %var_id, i32* %var_id.addr, align 4, !tbaa !19
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  %0 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 15
  %2 = load i8*, i8** %client_font_data, align 8, !tbaa !61
  %3 = bitcast i8* %2 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %3, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %5, i32 0, i32 16
  %6 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %7 = bitcast i8* %6 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %7, i32 0, i32 8
  %8 = load i8*, i8** %client_data, align 8, !tbaa !63
  %9 = bitcast i8* %8 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %9, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %10 = load i32, i32* %var_id.addr, align 4, !tbaa !19
  switch i32 %10, label %sw.epilog.376 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.1
    i32 5, label %sw.bb.2
    i32 6, label %sw.bb.3
    i32 7, label %sw.bb.4
    i32 8, label %sw.bb.5
    i32 9, label %sw.bb.6
    i32 10, label %sw.bb.22
    i32 11, label %sw.bb.24
    i32 12, label %sw.bb.27
    i32 13, label %sw.bb.31
    i32 14, label %sw.bb.38
    i32 15, label %sw.bb.42
    i32 16, label %sw.bb.49
    i32 17, label %sw.bb.53
    i32 18, label %sw.bb.60
    i32 19, label %sw.bb.63
    i32 20, label %sw.bb.67
    i32 21, label %sw.bb.80
    i32 22, label %sw.bb.96
    i32 23, label %sw.bb.100
    i32 24, label %sw.bb.107
    i32 25, label %sw.bb.111
    i32 26, label %sw.bb.118
    i32 27, label %sw.bb.121
    i32 28, label %sw.bb.124
    i32 29, label %sw.bb.131
    i32 30, label %sw.bb.147
    i32 46, label %sw.bb.164
    i32 33, label %sw.bb.173
    i32 35, label %sw.bb.180
    i32 38, label %sw.bb.196
    i32 37, label %sw.bb.212
    i32 39, label %sw.bb.229
    i32 41, label %sw.bb.239
    i32 43, label %sw.bb.257
    i32 44, label %sw.bb.275
    i32 34, label %sw.bb.300
  ]

sw.bb:                                            ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.1:                                          ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.2:                                          ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.3:                                          ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.4:                                          ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.5:                                          ; preds = %entry
  %11 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %11, i32 0, i32 11
  %12 = load i32, i32* %FontType, align 4, !tbaa !64
  %cmp = icmp eq i32 %12, 2
  %cond = select i1 %cmp, i32 2, i32 1
  %conv = trunc i32 %cond to i16
  store i16 %conv, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.6:                                          ; preds = %entry
  %13 = load i32, i32* %index.addr, align 4, !tbaa !29
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb.7
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.17
  ]

sw.bb.7:                                          ; preds = %sw.bb.6
  %14 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %14, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %15 = load double, double* %x, align 8, !tbaa !69
  %conv8 = fptoui double %15 to i16
  store i16 %conv8, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.9:                                          ; preds = %sw.bb.6
  %16 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %FontBBox10 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %16, i32 0, i32 23
  %p11 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox10, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p11, i32 0, i32 1
  %17 = load double, double* %y, align 8, !tbaa !70
  %conv12 = fptoui double %17 to i16
  store i16 %conv12, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.13:                                         ; preds = %sw.bb.6
  %18 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %FontBBox14 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %18, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox14, i32 0, i32 1
  %x15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %19 = load double, double* %x15, align 8, !tbaa !71
  %conv16 = fptoui double %19 to i16
  store i16 %conv16, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.17:                                         ; preds = %sw.bb.6
  %20 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %FontBBox18 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %20, i32 0, i32 23
  %q19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox18, i32 0, i32 1
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q19, i32 0, i32 1
  %21 = load double, double* %y20, align 8, !tbaa !72
  %conv21 = fptoui double %21 to i16
  store i16 %conv21, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.epilog:                                        ; preds = %sw.bb.6
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.22:                                         ; preds = %entry
  %22 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %22, i32 0, i32 29
  %BlueValues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 13
  %count = getelementptr inbounds %struct.anon.5, %struct.anon.5* %BlueValues, i32 0, i32 0
  %23 = load i32, i32* %count, align 4, !tbaa !73
  %conv23 = trunc i32 %23 to i16
  store i16 %conv23, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.24:                                         ; preds = %entry
  %24 = load i32, i32* %index.addr, align 4, !tbaa !29
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data25 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %25, i32 0, i32 29
  %BlueValues26 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data25, i32 0, i32 13
  %values = getelementptr inbounds %struct.anon.5, %struct.anon.5* %BlueValues26, i32 0, i32 1
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %values, i32 0, i64 %idxprom
  %26 = load float, float* %arrayidx, align 4, !tbaa !51
  %call = call zeroext i16 @float_to_ushort(float %26) #6
  store i16 %call, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.27:                                         ; preds = %entry
  %27 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data28 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %27, i32 0, i32 29
  %OtherBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data28, i32 0, i32 19
  %count29 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %OtherBlues, i32 0, i32 0
  %28 = load i32, i32* %count29, align 4, !tbaa !74
  %conv30 = trunc i32 %28 to i16
  store i16 %conv30, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.31:                                         ; preds = %entry
  %29 = load i32, i32* %index.addr, align 4, !tbaa !29
  %idxprom32 = sext i32 %29 to i64
  %30 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data33 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %30, i32 0, i32 29
  %OtherBlues34 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data33, i32 0, i32 19
  %values35 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %OtherBlues34, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [10 x float], [10 x float]* %values35, i32 0, i64 %idxprom32
  %31 = load float, float* %arrayidx36, align 4, !tbaa !51
  %call37 = call zeroext i16 @float_to_ushort(float %31) #6
  store i16 %call37, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.38:                                         ; preds = %entry
  %32 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data39 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %32, i32 0, i32 29
  %FamilyBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data39, i32 0, i32 16
  %count40 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %FamilyBlues, i32 0, i32 0
  %33 = load i32, i32* %count40, align 4, !tbaa !75
  %conv41 = trunc i32 %33 to i16
  store i16 %conv41, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.42:                                         ; preds = %entry
  %34 = load i32, i32* %index.addr, align 4, !tbaa !29
  %idxprom43 = sext i32 %34 to i64
  %35 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data44 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %35, i32 0, i32 29
  %FamilyBlues45 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data44, i32 0, i32 16
  %values46 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %FamilyBlues45, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [14 x float], [14 x float]* %values46, i32 0, i64 %idxprom43
  %36 = load float, float* %arrayidx47, align 4, !tbaa !51
  %call48 = call zeroext i16 @float_to_ushort(float %36) #6
  store i16 %call48, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.49:                                         ; preds = %entry
  %37 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data50 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %37, i32 0, i32 29
  %FamilyOtherBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data50, i32 0, i32 17
  %count51 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %FamilyOtherBlues, i32 0, i32 0
  %38 = load i32, i32* %count51, align 4, !tbaa !76
  %conv52 = trunc i32 %38 to i16
  store i16 %conv52, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.53:                                         ; preds = %entry
  %39 = load i32, i32* %index.addr, align 4, !tbaa !29
  %idxprom54 = sext i32 %39 to i64
  %40 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data55 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %40, i32 0, i32 29
  %FamilyOtherBlues56 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data55, i32 0, i32 17
  %values57 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %FamilyOtherBlues56, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [10 x float], [10 x float]* %values57, i32 0, i64 %idxprom54
  %41 = load float, float* %arrayidx58, align 4, !tbaa !51
  %call59 = call zeroext i16 @float_to_ushort(float %41) #6
  store i16 %call59, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.60:                                         ; preds = %entry
  %42 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data61 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %42, i32 0, i32 29
  %BlueShift = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data61, i32 0, i32 12
  %43 = load float, float* %BlueShift, align 4, !tbaa !77
  %call62 = call zeroext i16 @float_to_ushort(float %43) #6
  store i16 %call62, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.63:                                         ; preds = %entry
  %44 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data64 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %44, i32 0, i32 29
  %BlueShift65 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data64, i32 0, i32 12
  %45 = load float, float* %BlueShift65, align 4, !tbaa !77
  %call66 = call zeroext i16 @float_to_ushort(float %45) #6
  store i16 %call66, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.67:                                         ; preds = %entry
  %46 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data68 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %46, i32 0, i32 29
  %StdHW = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data68, i32 0, i32 21
  %count69 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %StdHW, i32 0, i32 0
  %47 = load i32, i32* %count69, align 4, !tbaa !78
  %cmp70 = icmp eq i32 %47, 0
  br i1 %cmp70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.67
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.67
  %48 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data72 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %48, i32 0, i32 29
  %StdHW73 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data72, i32 0, i32 21
  %values74 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %StdHW73, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x float], [1 x float]* %values74, i32 0, i64 0
  %49 = load float, float* %arrayidx75, align 4, !tbaa !51
  %call76 = call zeroext i16 @float_to_ushort(float %49) #6
  %conv77 = zext i16 %call76 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond78 = phi i32 [ 0, %cond.true ], [ %conv77, %cond.false ]
  %conv79 = trunc i32 %cond78 to i16
  store i16 %conv79, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.80:                                         ; preds = %entry
  %50 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data81 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %50, i32 0, i32 29
  %StdVW = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data81, i32 0, i32 22
  %count82 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %StdVW, i32 0, i32 0
  %51 = load i32, i32* %count82, align 4, !tbaa !79
  %cmp83 = icmp eq i32 %51, 0
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %sw.bb.80
  br label %cond.end.93

cond.false.86:                                    ; preds = %sw.bb.80
  %52 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data87 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %52, i32 0, i32 29
  %StdVW88 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data87, i32 0, i32 22
  %values89 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %StdVW88, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x float], [1 x float]* %values89, i32 0, i64 0
  %53 = load float, float* %arrayidx90, align 4, !tbaa !51
  %call91 = call zeroext i16 @float_to_ushort(float %53) #6
  %conv92 = zext i16 %call91 to i32
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.86, %cond.true.85
  %cond94 = phi i32 [ 0, %cond.true.85 ], [ %conv92, %cond.false.86 ]
  %conv95 = trunc i32 %cond94 to i16
  store i16 %conv95, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.96:                                         ; preds = %entry
  %54 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data97 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %54, i32 0, i32 29
  %StemSnapH = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data97, i32 0, i32 23
  %count98 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %StemSnapH, i32 0, i32 0
  %55 = load i32, i32* %count98, align 4, !tbaa !80
  %conv99 = trunc i32 %55 to i16
  store i16 %conv99, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.100:                                        ; preds = %entry
  %56 = load i32, i32* %index.addr, align 4, !tbaa !29
  %idxprom101 = sext i32 %56 to i64
  %57 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data102 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %57, i32 0, i32 29
  %StemSnapH103 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data102, i32 0, i32 23
  %values104 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %StemSnapH103, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [12 x float], [12 x float]* %values104, i32 0, i64 %idxprom101
  %58 = load float, float* %arrayidx105, align 4, !tbaa !51
  %call106 = call zeroext i16 @float_to_ushort(float %58) #6
  store i16 %call106, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.107:                                        ; preds = %entry
  %59 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data108 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %59, i32 0, i32 29
  %StemSnapV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data108, i32 0, i32 24
  %count109 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %StemSnapV, i32 0, i32 0
  %60 = load i32, i32* %count109, align 4, !tbaa !81
  %conv110 = trunc i32 %60 to i16
  store i16 %conv110, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.111:                                        ; preds = %entry
  %61 = load i32, i32* %index.addr, align 4, !tbaa !29
  %idxprom112 = sext i32 %61 to i64
  %62 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data113 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %62, i32 0, i32 29
  %StemSnapV114 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data113, i32 0, i32 24
  %values115 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %StemSnapV114, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [12 x float], [12 x float]* %values115, i32 0, i64 %idxprom112
  %63 = load float, float* %arrayidx116, align 4, !tbaa !51
  %call117 = call zeroext i16 @float_to_ushort(float %63) #6
  store i16 %call117, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.118:                                        ; preds = %entry
  %64 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data119 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %64, i32 0, i32 29
  %ForceBold = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data119, i32 0, i32 15
  %65 = load i32, i32* %ForceBold, align 4, !tbaa !82
  %conv120 = trunc i32 %65 to i16
  store i16 %conv120, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.121:                                        ; preds = %entry
  %66 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data122 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %66, i32 0, i32 29
  %LanguageGroup = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data122, i32 0, i32 18
  %67 = load i32, i32* %LanguageGroup, align 4, !tbaa !83
  %conv123 = trunc i32 %67 to i16
  store i16 %conv123, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.124:                                        ; preds = %entry
  %68 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %need_decrypt = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %68, i32 0, i32 1
  %69 = load i32, i32* %need_decrypt, align 4, !tbaa !84
  %tobool = icmp ne i32 %69, 0
  br i1 %tobool, label %cond.true.125, label %cond.false.126

cond.true.125:                                    ; preds = %sw.bb.124
  br label %cond.end.128

cond.false.126:                                   ; preds = %sw.bb.124
  %70 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data127 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %70, i32 0, i32 29
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data127, i32 0, i32 4
  %71 = load i32, i32* %lenIV, align 4, !tbaa !85
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.126, %cond.true.125
  %cond129 = phi i32 [ 0, %cond.true.125 ], [ %71, %cond.false.126 ]
  %conv130 = trunc i32 %cond129 to i16
  store i16 %conv130, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

sw.bb.131:                                        ; preds = %entry
  %72 = bitcast %struct.ref_s** %Private to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = bitcast %struct.ref_s** %GlobalSubrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %FontType132 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %74, i32 0, i32 11
  %75 = load i32, i32* %FontType132, align 4, !tbaa !64
  %cmp133 = icmp eq i32 %75, 2
  br i1 %cmp133, label %if.then, label %if.end.145

if.then:                                          ; preds = %sw.bb.131
  %76 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call135 = call i32 @dict_find_string(%struct.ref_s* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s** %Private) #6
  %cmp136 = icmp sle i32 %call135, 0
  br i1 %cmp136, label %if.then.138, label %if.end

if.then.138:                                      ; preds = %if.then
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %77 = load %struct.ref_s*, %struct.ref_s** %Private, align 8, !tbaa !1
  %call139 = call i32 @dict_find_string(%struct.ref_s* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), %struct.ref_s** %GlobalSubrs) #6
  %cmp140 = icmp sle i32 %call139, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.143:                                       ; preds = %if.end
  %78 = load %struct.ref_s*, %struct.ref_s** %GlobalSubrs, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %79 = load i32, i32* %rsize, align 4, !tbaa !33
  %conv144 = trunc i32 %79 to i16
  store i16 %conv144, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.145:                                       ; preds = %sw.bb.131
  store i16 -1, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.145, %if.end.143, %if.then.142, %if.then.138
  %80 = bitcast %struct.ref_s** %GlobalSubrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.ref_s** %Private to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  br label %cleanup.377

sw.bb.147:                                        ; preds = %entry
  %82 = bitcast %struct.ref_s** %Private148 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = bitcast %struct.ref_s** %Subrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  %84 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call149 = call i32 @dict_find_string(%struct.ref_s* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s** %Private148) #6
  %cmp150 = icmp sle i32 %call149, 0
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %sw.bb.147
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

if.end.153:                                       ; preds = %sw.bb.147
  %85 = load %struct.ref_s*, %struct.ref_s** %Private148, align 8, !tbaa !1
  %call154 = call i32 @dict_find_string(%struct.ref_s* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct.ref_s** %Subrs) #6
  %cmp155 = icmp sle i32 %call154, 0
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.153
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

if.end.158:                                       ; preds = %if.end.153
  %86 = load %struct.ref_s*, %struct.ref_s** %Subrs, align 8, !tbaa !1
  %tas159 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 0
  %rsize160 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas159, i32 0, i32 2
  %87 = load i32, i32* %rsize160, align 4, !tbaa !33
  %conv161 = trunc i32 %87 to i16
  store i16 %conv161, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

cleanup.162:                                      ; preds = %if.end.158, %if.then.157, %if.then.152
  %88 = bitcast %struct.ref_s** %Subrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.ref_s** %Private148 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  br label %cleanup.377

sw.bb.164:                                        ; preds = %entry
  %90 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  %91 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call165 = call i32 @dict_find_string(%struct.ref_s* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %CharStrings) #6
  %cmp166 = icmp sle i32 %call165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %sw.bb.164
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

if.end.169:                                       ; preds = %sw.bb.164
  %92 = load %struct.ref_s*, %struct.ref_s** %CharStrings, align 8, !tbaa !1
  %call170 = call i32 @dict_length(%struct.ref_s* %92) #6
  %conv171 = trunc i32 %call170 to i16
  store i16 %conv171, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.172

cleanup.172:                                      ; preds = %if.end.169, %if.then.168
  %93 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  br label %cleanup.377

sw.bb.173:                                        ; preds = %entry
  %94 = bitcast %struct.ref_s** %DBlend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call174 = call i32 @dict_find_string(%struct.ref_s* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct.ref_s** %DBlend) #6
  %cmp175 = icmp sle i32 %call174, 0
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %sw.bb.173
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end.178:                                       ; preds = %sw.bb.173
  store i16 1, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

cleanup.179:                                      ; preds = %if.end.178, %if.then.177
  %96 = bitcast %struct.ref_s** %DBlend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  br label %cleanup.377

sw.bb.180:                                        ; preds = %entry
  %97 = bitcast %struct.ref_s** %Info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = bitcast %struct.ref_s** %Axes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call181 = call i32 @dict_find_string(%struct.ref_s* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct.ref_s** %Info) #6
  %cmp182 = icmp sle i32 %call181, 0
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %sw.bb.180
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

if.end.185:                                       ; preds = %sw.bb.180
  %100 = load %struct.ref_s*, %struct.ref_s** %Info, align 8, !tbaa !1
  %call186 = call i32 @dict_find_string(%struct.ref_s* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct.ref_s** %Axes) #6
  %cmp187 = icmp sle i32 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.185
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

if.end.190:                                       ; preds = %if.end.185
  %101 = load %struct.ref_s*, %struct.ref_s** %Axes, align 8, !tbaa !1
  %tas191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i32 0, i32 0
  %rsize192 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas191, i32 0, i32 2
  %102 = load i32, i32* %rsize192, align 4, !tbaa !33
  %conv193 = trunc i32 %102 to i16
  store i16 %conv193, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.194

cleanup.194:                                      ; preds = %if.end.190, %if.then.189, %if.then.184
  %103 = bitcast %struct.ref_s** %Axes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast %struct.ref_s** %Info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  br label %cleanup.377

sw.bb.196:                                        ; preds = %entry
  %105 = bitcast %struct.ref_s** %Info197 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = bitcast %struct.ref_s** %FontInfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  %107 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call198 = call i32 @dict_find_string(%struct.ref_s* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), %struct.ref_s** %Info197) #6
  %cmp199 = icmp sle i32 %call198, 0
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %sw.bb.196
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.210

if.end.202:                                       ; preds = %sw.bb.196
  %108 = load %struct.ref_s*, %struct.ref_s** %Info197, align 8, !tbaa !1
  %call203 = call i32 @dict_find_string(%struct.ref_s* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct.ref_s** %FontInfo) #6
  %cmp204 = icmp sle i32 %call203, 0
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.202
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.210

if.end.207:                                       ; preds = %if.end.202
  %109 = load %struct.ref_s*, %struct.ref_s** %FontInfo, align 8, !tbaa !1
  %call208 = call i32 @dict_length(%struct.ref_s* %109) #6
  %conv209 = trunc i32 %call208 to i16
  store i16 %conv209, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.210

cleanup.210:                                      ; preds = %if.end.207, %if.then.206, %if.then.201
  %110 = bitcast %struct.ref_s** %FontInfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast %struct.ref_s** %Info197 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  br label %cleanup.377

sw.bb.212:                                        ; preds = %entry
  %112 = bitcast %struct.ref_s** %Info213 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = bitcast %struct.ref_s** %Private214 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  %114 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call215 = call i32 @dict_find_string(%struct.ref_s* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), %struct.ref_s** %Info213) #6
  %cmp216 = icmp sle i32 %call215, 0
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %sw.bb.212
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.219:                                       ; preds = %sw.bb.212
  %115 = load %struct.ref_s*, %struct.ref_s** %Info213, align 8, !tbaa !1
  %call220 = call i32 @dict_find_string(%struct.ref_s* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s** %Private214) #6
  %cmp221 = icmp sle i32 %call220, 0
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.end.219
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.227

if.end.224:                                       ; preds = %if.end.219
  %116 = load %struct.ref_s*, %struct.ref_s** %Private214, align 8, !tbaa !1
  %call225 = call i32 @dict_length(%struct.ref_s* %116) #6
  %conv226 = trunc i32 %call225 to i16
  store i16 %conv226, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.227

cleanup.227:                                      ; preds = %if.end.224, %if.then.223, %if.then.218
  %117 = bitcast %struct.ref_s** %Private214 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast %struct.ref_s** %Info213 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  br label %cleanup.377

sw.bb.229:                                        ; preds = %entry
  %119 = bitcast %struct.ref_s** %Array to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #1
  %120 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call230 = call i32 @dict_find_string(%struct.ref_s* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), %struct.ref_s** %Array) #6
  %cmp231 = icmp sle i32 %call230, 0
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %sw.bb.229
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.238

if.end.234:                                       ; preds = %sw.bb.229
  %121 = load %struct.ref_s*, %struct.ref_s** %Array, align 8, !tbaa !1
  %tas235 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i32 0, i32 0
  %rsize236 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas235, i32 0, i32 2
  %122 = load i32, i32* %rsize236, align 4, !tbaa !33
  %conv237 = trunc i32 %122 to i16
  store i16 %conv237, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.238

cleanup.238:                                      ; preds = %if.end.234, %if.then.233
  %123 = bitcast %struct.ref_s** %Array to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  br label %cleanup.377

sw.bb.239:                                        ; preds = %entry
  %124 = bitcast %struct.ref_s** %Info240 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124) #1
  %125 = bitcast %struct.ref_s** %Array241 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %125) #1
  %126 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call242 = call i32 @dict_find_string(%struct.ref_s* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct.ref_s** %Info240) #6
  %cmp243 = icmp sle i32 %call242, 0
  br i1 %cmp243, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %sw.bb.239
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.255

if.end.246:                                       ; preds = %sw.bb.239
  %127 = load %struct.ref_s*, %struct.ref_s** %Info240, align 8, !tbaa !1
  %call247 = call i32 @dict_find_string(%struct.ref_s* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), %struct.ref_s** %Array241) #6
  %cmp248 = icmp sle i32 %call247, 0
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %if.end.246
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.255

if.end.251:                                       ; preds = %if.end.246
  %128 = load %struct.ref_s*, %struct.ref_s** %Array241, align 8, !tbaa !1
  %tas252 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %128, i32 0, i32 0
  %rsize253 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas252, i32 0, i32 2
  %129 = load i32, i32* %rsize253, align 4, !tbaa !33
  %conv254 = trunc i32 %129 to i16
  store i16 %conv254, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.255

cleanup.255:                                      ; preds = %if.end.251, %if.then.250, %if.then.245
  %130 = bitcast %struct.ref_s** %Array241 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast %struct.ref_s** %Info240 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  br label %cleanup.377

sw.bb.257:                                        ; preds = %entry
  %132 = bitcast %struct.ref_s** %Info258 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = bitcast %struct.ref_s** %Array259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  %134 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call260 = call i32 @dict_find_string(%struct.ref_s* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct.ref_s** %Info258) #6
  %cmp261 = icmp sle i32 %call260, 0
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %sw.bb.257
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.273

if.end.264:                                       ; preds = %sw.bb.257
  %135 = load %struct.ref_s*, %struct.ref_s** %Info258, align 8, !tbaa !1
  %call265 = call i32 @dict_find_string(%struct.ref_s* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), %struct.ref_s** %Array259) #6
  %cmp266 = icmp sle i32 %call265, 0
  br i1 %cmp266, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %if.end.264
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.273

if.end.269:                                       ; preds = %if.end.264
  %136 = load %struct.ref_s*, %struct.ref_s** %Array259, align 8, !tbaa !1
  %tas270 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %136, i32 0, i32 0
  %rsize271 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas270, i32 0, i32 2
  %137 = load i32, i32* %rsize271, align 4, !tbaa !33
  %conv272 = trunc i32 %137 to i16
  store i16 %conv272, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.273

cleanup.273:                                      ; preds = %if.end.269, %if.then.268, %if.then.263
  %138 = bitcast %struct.ref_s** %Array259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast %struct.ref_s** %Info258 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  br label %cleanup.377

sw.bb.275:                                        ; preds = %entry
  %140 = bitcast %struct.ref_s** %Info276 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #1
  %141 = bitcast %struct.ref_s** %Array277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %141) #1
  %142 = bitcast %struct.ref_s* %SubArray to i8*
  call void @llvm.lifetime.start(i64 16, i8* %142) #1
  %143 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call278 = call i32 @dict_find_string(%struct.ref_s* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct.ref_s** %Info276) #6
  %cmp279 = icmp sle i32 %call278, 0
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %sw.bb.275
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.297

if.end.282:                                       ; preds = %sw.bb.275
  %144 = load %struct.ref_s*, %struct.ref_s** %Info276, align 8, !tbaa !1
  %call283 = call i32 @dict_find_string(%struct.ref_s* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), %struct.ref_s** %Array277) #6
  %cmp284 = icmp sle i32 %call283, 0
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.end.282
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.297

if.end.287:                                       ; preds = %if.end.282
  %145 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %145, i32 0, i32 2
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %147 = load %struct.ref_s*, %struct.ref_s** %Array277, align 8, !tbaa !1
  %148 = load i32, i32* %index.addr, align 4, !tbaa !29
  %conv288 = sext i32 %148 to i64
  %call289 = call i32 @array_get(%struct.gs_memory_s* %146, %struct.ref_s* %147, i64 %conv288, %struct.ref_s* %SubArray) #6
  %cmp290 = icmp slt i32 %call289, 0
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %if.end.287
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.297

if.end.293:                                       ; preds = %if.end.287
  %tas294 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %SubArray, i32 0, i32 0
  %rsize295 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas294, i32 0, i32 2
  %149 = load i32, i32* %rsize295, align 4, !tbaa !33
  %conv296 = trunc i32 %149 to i16
  store i16 %conv296, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.297

cleanup.297:                                      ; preds = %if.end.293, %if.then.292, %if.then.286, %if.then.281
  %150 = bitcast %struct.ref_s* %SubArray to i8*
  call void @llvm.lifetime.end(i64 16, i8* %150) #1
  %151 = bitcast %struct.ref_s** %Array277 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.ref_s** %Info276 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  br label %cleanup.377

sw.bb.300:                                        ; preds = %entry
  %153 = bitcast %struct.ref_s** %DBlend301 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  %154 = bitcast %struct.ref_s* %Element to i8*
  call void @llvm.lifetime.start(i64 16, i8* %154) #1
  %155 = bitcast %struct.ref_s* %string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %155) #1
  %156 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #1
  %157 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #1
  store i32 0, i32* %length, align 4, !tbaa !29
  %158 = bitcast [32 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 32, i8* %158) #1
  %159 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call302 = call i32 @dict_find_string(%struct.ref_s* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct.ref_s** %DBlend301) #6
  %cmp303 = icmp sle i32 %call302, 0
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %sw.bb.300
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.370

if.end.306:                                       ; preds = %sw.bb.300
  store i32 0, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.306
  %160 = load i32, i32* %i, align 4, !tbaa !29
  %161 = load %struct.ref_s*, %struct.ref_s** %DBlend301, align 8, !tbaa !1
  %tas307 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %161, i32 0, i32 0
  %rsize308 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas307, i32 0, i32 2
  %162 = load i32, i32* %rsize308, align 4, !tbaa !33
  %cmp309 = icmp ult i32 %160, %162
  br i1 %cmp309, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %163 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory311 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %163, i32 0, i32 2
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory311, align 8, !tbaa !86
  %165 = load %struct.ref_s*, %struct.ref_s** %DBlend301, align 8, !tbaa !1
  %166 = load i32, i32* %i, align 4, !tbaa !29
  %conv312 = sext i32 %166 to i64
  %call313 = call i32 @array_get(%struct.gs_memory_s* %164, %struct.ref_s* %165, i64 %conv312, %struct.ref_s* %Element) #6
  %cmp314 = icmp slt i32 %call313, 0
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %for.body
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.370

if.end.317:                                       ; preds = %for.body
  %tas318 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas318, i32 0, i32 0
  %167 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv319 = zext i16 %167 to i32
  %cmp320 = icmp sge i32 %conv319, 5376
  br i1 %cmp320, label %cond.true.322, label %cond.false.323

cond.true.322:                                    ; preds = %if.end.317
  br label %cond.end.328

cond.false.323:                                   ; preds = %if.end.317
  %tas324 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 0
  %type_attrs325 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas324, i32 0, i32 0
  %168 = bitcast i16* %type_attrs325 to i8*
  %arrayidx326 = getelementptr inbounds i8, i8* %168, i64 1
  %169 = load i8, i8* %arrayidx326, align 1, !tbaa !19
  %conv327 = zext i8 %169 to i32
  br label %cond.end.328

cond.end.328:                                     ; preds = %cond.false.323, %cond.true.322
  %cond329 = phi i32 [ 15, %cond.true.322 ], [ %conv327, %cond.false.323 ]
  switch i32 %cond329, label %sw.default [
    i32 13, label %sw.bb.330
    i32 16, label %sw.bb.335
    i32 11, label %sw.bb.344
    i32 15, label %sw.bb.354
  ]

sw.bb.330:                                        ; preds = %cond.end.328
  %170 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory331 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %170, i32 0, i32 2
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory331, align 8, !tbaa !86
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %171, i32 0, i32 2
  %172 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %172, i32 0, i32 16
  %173 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  call void @names_string_ref(%struct.name_table_s* %173, %struct.ref_s* %Element, %struct.ref_s* %string) #6
  %tas332 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize333 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas332, i32 0, i32 2
  %174 = load i32, i32* %rsize333, align 4, !tbaa !33
  %add = add i32 %174, 1
  %175 = load i32, i32* %length, align 4, !tbaa !29
  %add334 = add i32 %175, %add
  store i32 %add334, i32* %length, align 4, !tbaa !29
  br label %sw.epilog.368

sw.bb.335:                                        ; preds = %cond.end.328
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %Buffer, i32 0, i32 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %176 = load float, float* %realval, align 4, !tbaa !51
  %conv336 = fpext float %176 to double
  %call337 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), double %conv336) #6
  %arraydecay338 = getelementptr inbounds [32 x i8], [32 x i8]* %Buffer, i32 0, i32 0
  %call339 = call i64 @strlen(i8* %arraydecay338) #7
  %add340 = add i64 %call339, 1
  %177 = load i32, i32* %length, align 4, !tbaa !29
  %conv341 = sext i32 %177 to i64
  %add342 = add i64 %conv341, %add340
  %conv343 = trunc i64 %add342 to i32
  store i32 %conv343, i32* %length, align 4, !tbaa !29
  br label %sw.epilog.368

sw.bb.344:                                        ; preds = %cond.end.328
  %arraydecay345 = getelementptr inbounds [32 x i8], [32 x i8]* %Buffer, i32 0, i32 0
  %value346 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 1
  %intval = bitcast %union.v* %value346 to i64*
  %178 = load i64, i64* %intval, align 8, !tbaa !30
  %call347 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay345, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i64 %178) #6
  %arraydecay348 = getelementptr inbounds [32 x i8], [32 x i8]* %Buffer, i32 0, i32 0
  %call349 = call i64 @strlen(i8* %arraydecay348) #7
  %add350 = add i64 %call349, 1
  %179 = load i32, i32* %length, align 4, !tbaa !29
  %conv351 = sext i32 %179 to i64
  %add352 = add i64 %conv351, %add350
  %conv353 = trunc i64 %add352 to i32
  store i32 %conv353, i32* %length, align 4, !tbaa !29
  br label %sw.epilog.368

sw.bb.354:                                        ; preds = %cond.end.328
  %180 = bitcast %struct.op_def** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %180) #1
  %tas355 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 0
  %rsize356 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas355, i32 0, i32 2
  %181 = load i32, i32* %rsize356, align 4, !tbaa !33
  %and = and i32 %181, 15
  %idxprom357 = zext i32 %and to i64
  %tas358 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 0
  %rsize359 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas358, i32 0, i32 2
  %182 = load i32, i32* %rsize359, align 4, !tbaa !33
  %shr = lshr i32 %182, 4
  %idxprom360 = zext i32 %shr to i64
  %arrayidx361 = getelementptr inbounds [0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i64 %idxprom360
  %183 = load %struct.op_def*, %struct.op_def** %arrayidx361, align 8, !tbaa !1
  %arrayidx362 = getelementptr inbounds %struct.op_def, %struct.op_def* %183, i64 %idxprom357
  store %struct.op_def* %arrayidx362, %struct.op_def** %op, align 8, !tbaa !1
  %184 = load %struct.op_def*, %struct.op_def** %op, align 8, !tbaa !1
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %184, i32 0, i32 0
  %185 = load i8*, i8** %oname, align 8, !tbaa !87
  %add.ptr = getelementptr inbounds i8, i8* %185, i64 1
  %call363 = call i64 @strlen(i8* %add.ptr) #7
  %add364 = add i64 %call363, 1
  %186 = load i32, i32* %length, align 4, !tbaa !29
  %conv365 = sext i32 %186 to i64
  %add366 = add i64 %conv365, %add364
  %conv367 = trunc i64 %add366 to i32
  store i32 %conv367, i32* %length, align 4, !tbaa !29
  %187 = bitcast %struct.op_def** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  br label %sw.epilog.368

sw.default:                                       ; preds = %cond.end.328
  br label %sw.epilog.368

sw.epilog.368:                                    ; preds = %sw.default, %sw.bb.354, %sw.bb.344, %sw.bb.335, %sw.bb.330
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.368
  %188 = load i32, i32* %i, align 4, !tbaa !29
  %inc = add nsw i32 %188, 1
  store i32 %inc, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %189 = load i32, i32* %length, align 4, !tbaa !29
  %conv369 = trunc i32 %189 to i16
  store i16 %conv369, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.370

cleanup.370:                                      ; preds = %for.end, %if.then.316, %if.then.305
  %190 = bitcast [32 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 32, i8* %190) #1
  %191 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast %struct.ref_s* %string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %193) #1
  %194 = bitcast %struct.ref_s* %Element to i8*
  call void @llvm.lifetime.end(i64 16, i8* %194) #1
  %195 = bitcast %struct.ref_s** %DBlend301 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  br label %cleanup.377

sw.epilog.376:                                    ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.377

cleanup.377:                                      ; preds = %sw.epilog.376, %cleanup.370, %cleanup.297, %cleanup.273, %cleanup.255, %cleanup.238, %cleanup.227, %cleanup.210, %cleanup.194, %cleanup.179, %cleanup.172, %cleanup.162, %cleanup, %cond.end.128, %sw.bb.121, %sw.bb.118, %sw.bb.111, %sw.bb.107, %sw.bb.100, %sw.bb.96, %cond.end.93, %cond.end, %sw.bb.63, %sw.bb.60, %sw.bb.53, %sw.bb.49, %sw.bb.42, %sw.bb.38, %sw.bb.31, %sw.bb.27, %sw.bb.24, %sw.bb.22, %sw.epilog, %sw.bb.17, %sw.bb.13, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %196 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = load i16, i16* %retval
  ret i16 %198
}

; Function Attrs: nounwind uwtable
define internal i64 @FAPI_FF_get_long(%struct.gs_fapi_font_s* %ff, i32 %var_id, i32 %index) #0 {
entry:
  %retval = alloca i64, align 8
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %var_id.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %pdr = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %Private = alloca %struct.ref_s*, align 8
  %Subrs = alloca %struct.ref_s*, align 8
  %v = alloca %struct.ref_s, align 8
  %lenIV = alloca i32, align 4
  %k = alloca i32, align 4
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %name = alloca [2 x i8*], align 16
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %var_id, i32* %var_id.addr, align 4, !tbaa !19
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  %0 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 15
  %2 = load i8*, i8** %client_font_data, align 8, !tbaa !61
  %3 = bitcast i8* %2 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %3, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %5, i32 0, i32 16
  %6 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %7 = bitcast i8* %6 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %7, i32 0, i32 8
  %8 = load i8*, i8** %client_data, align 8, !tbaa !63
  %9 = bitcast i8* %8 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %9, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %10 = load i32, i32* %var_id.addr, align 4, !tbaa !19
  switch i32 %10, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 31, label %sw.bb.2
    i32 32, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %entry
  %11 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %11, i32 0, i32 24
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %UID, i32 0, i32 0
  %12 = load i64, i64* %id, align 8, !tbaa !89
  store i64 %12, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

sw.bb.1:                                          ; preds = %entry
  %13 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %13, i32 0, i32 29
  %BlueScale = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 11
  %14 = load float, float* %BlueScale, align 4, !tbaa !90
  %mul = fmul float %14, 6.553600e+04
  %conv = fptoui float %mul to i64
  store i64 %conv, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

sw.bb.2:                                          ; preds = %entry
  %15 = bitcast %struct.ref_s** %Private to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.ref_s** %Subrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = bitcast i32* %lenIV to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %19, i32 0, i32 29
  %lenIV4 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data3, i32 0, i32 4
  %20 = load i32, i32* %lenIV4, align 4, !tbaa !85
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.2
  %21 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %21, i32 0, i32 29
  %lenIV7 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data6, i32 0, i32 4
  %22 = load i32, i32* %lenIV7, align 4, !tbaa !85
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %lenIV, align 4, !tbaa !29
  %23 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i64 0, i64* %size, align 8, !tbaa !30
  %25 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast [2 x i8*]* %name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %26) #1
  %27 = bitcast [2 x i8*]* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([2 x i8*]* @FAPI_FF_get_long.name to i8*), i64 16, i32 16, i1 false)
  %28 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s** %Private) #6
  %cmp8 = icmp sle i32 %call, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %k, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %if.end
  %29 = load i32, i32* %k, align 4, !tbaa !29
  %cmp10 = icmp slt i32 %29, 2
  br i1 %cmp10, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %30 = load %struct.ref_s*, %struct.ref_s** %Private, align 8, !tbaa !1
  %31 = load i32, i32* %k, align 4, !tbaa !29
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %name, i32 0, i64 %idxprom
  %32 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call12 = call i32 @dict_find_string(%struct.ref_s* %30, i8* %32, %struct.ref_s** %Subrs) #6
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.37

if.then.15:                                       ; preds = %for.body
  %33 = load %struct.ref_s*, %struct.ref_s** %Subrs, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %34 = load i32, i32* %rsize, align 4, !tbaa !33
  %sub = sub i32 %34, 1
  %conv16 = zext i32 %sub to i64
  store i64 %conv16, i64* %i, align 8, !tbaa !30
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %if.then.15
  %35 = load i64, i64* %i, align 8, !tbaa !30
  %cmp18 = icmp sge i64 %35, 0
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %36 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %36, i32 0, i32 2
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !91
  %38 = load %struct.ref_s*, %struct.ref_s** %Subrs, align 8, !tbaa !1
  %39 = load i64, i64* %i, align 8, !tbaa !30
  %call21 = call i32 @array_get(%struct.gs_memory_s* %37, %struct.ref_s* %38, i64 %39, %struct.ref_s* %v) #6
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  %40 = bitcast i16* %type_attrs to i8*
  %arrayidx23 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx23, align 1, !tbaa !19
  %conv24 = zext i8 %41 to i32
  %cmp25 = icmp eq i32 %conv24, 18
  br i1 %cmp25, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %for.body.20
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 0
  %rsize29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 2
  %42 = load i32, i32* %rsize29, align 4, !tbaa !33
  %43 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %need_decrypt = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %43, i32 0, i32 1
  %44 = load i32, i32* %need_decrypt, align 4, !tbaa !84
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.then.27
  br label %cond.end.32

cond.false.31:                                    ; preds = %if.then.27
  %45 = load i32, i32* %lenIV, align 4, !tbaa !29
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ 0, %cond.true.30 ], [ %45, %cond.false.31 ]
  %sub34 = sub i32 %42, %cond33
  %conv35 = zext i32 %sub34 to i64
  %46 = load i64, i64* %size, align 8, !tbaa !30
  %add = add i64 %46, %conv35
  store i64 %add, i64* %size, align 8, !tbaa !30
  br label %if.end.36

if.end.36:                                        ; preds = %cond.end.32, %for.body.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %47 = load i64, i64* %i, align 8, !tbaa !30
  %dec = add nsw i64 %47, -1
  store i64 %dec, i64* %i, align 8, !tbaa !30
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %for.body
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %48 = load i32, i32* %k, align 4, !tbaa !29
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %k, align 4, !tbaa !29
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %49 = load i64, i64* %size, align 8, !tbaa !30
  store i64 %49, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.39, %if.then
  %50 = bitcast [2 x i8*]* %name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %50) #1
  %51 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i64* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %lenIV to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.end(i64 16, i8* %55) #1
  %56 = bitcast %struct.ref_s** %Subrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast %struct.ref_s** %Private to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  br label %cleanup.49

sw.bb.47:                                         ; preds = %entry
  %58 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call48 = call i64 @true_type_size(%struct.ref_s* %58) #6
  store i64 %call48, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %sw.epilog, %sw.bb.47, %cleanup, %sw.bb.1, %sw.bb
  %59 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i64, i64* %retval
  ret i64 %61
}

; Function Attrs: nounwind uwtable
define internal float @FAPI_FF_get_float(%struct.gs_fapi_font_s* %ff, i32 %var_id, i32 %index) #0 {
entry:
  %retval = alloca float, align 4
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %var_id.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %pdr = alloca %struct.ref_s*, align 8
  %I = alloca %struct.gs_fapi_server_s*, align 8
  %FontMatrix_div = alloca double, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %mptr = alloca %struct.gs_matrix_s*, align 8
  %cleanup.dest.slot = alloca i32
  %Array = alloca %struct.ref_s*, align 8
  %value = alloca %struct.ref_s, align 8
  %Info = alloca %struct.ref_s*, align 8
  %Array65 = alloca %struct.ref_s*, align 8
  %SubArray = alloca %struct.ref_s, align 8
  %value66 = alloca %struct.ref_s, align 8
  %array_index = alloca i32, align 4
  %Info119 = alloca %struct.ref_s*, align 8
  %Array120 = alloca %struct.ref_s*, align 8
  %SubArray121 = alloca %struct.ref_s, align 8
  %SubSubArray = alloca %struct.ref_s, align 8
  %value122 = alloca %struct.ref_s, align 8
  %array_index123 = alloca i32, align 4
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %var_id, i32* %var_id.addr, align 4, !tbaa !19
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  %0 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 16
  %2 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %3, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %5, i32 0, i32 8
  %6 = load i8*, i8** %client_data, align 8, !tbaa !63
  %7 = bitcast i8* %6 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %7, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %9, i32 0, i32 25
  %10 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !36
  store %struct.gs_fapi_server_s* %10, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %11 = load i32, i32* %var_id.addr, align 4, !tbaa !19
  switch i32 %11, label %sw.epilog.184 [
    i32 0, label %sw.bb
    i32 40, label %sw.bb.34
    i32 42, label %sw.bb.64
    i32 45, label %sw.bb.118
  ]

sw.bb:                                            ; preds = %entry
  %12 = bitcast double* %FontMatrix_div to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #1
  %14 = bitcast %struct.gs_matrix_s** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_fapi_server_s* %15, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %16 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %get_fontmatrix = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %16, i32 0, i32 17
  %17 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)** %get_fontmatrix, align 8, !tbaa !92
  %tobool1 = icmp ne i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)* %17, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store double 1.000000e+00, double* %FontMatrix_div, align 8, !tbaa !93
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %mptr, align 8, !tbaa !1
  %18 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %get_fontmatrix2 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %18, i32 0, i32 17
  %19 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)** %get_fontmatrix2, align 8, !tbaa !92
  %20 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr, align 8, !tbaa !1
  %call = call i32 %19(%struct.gs_fapi_server_s* %20, %struct.gs_matrix_s* %21) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  %22 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %is_cid = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %22, i32 0, i32 8
  %23 = load i32, i32* %is_cid, align 4, !tbaa !94
  %tobool3 = icmp ne i32 %23, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %24 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %24, i32 0, i32 11
  %25 = load i32, i32* %FontType, align 4, !tbaa !95
  %tobool4 = icmp ne i32 %25, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp = icmp eq i32 %lnot.ext, 9
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %26 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType5 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %26, i32 0, i32 11
  %27 = load i32, i32* %FontType5, align 4, !tbaa !95
  %cmp6 = icmp eq i32 %27, 10
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %28 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType7 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %28, i32 0, i32 11
  %29 = load i32, i32* %FontType7, align 4, !tbaa !95
  %cmp8 = icmp eq i32 %29, 11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %30 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp8, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.else
  %31 = phi i1 [ false, %if.else ], [ %30, %lor.end ]
  %cond = select i1 %31, i32 1000, i32 1
  %conv = sitofp i32 %cond to double
  store double %conv, double* %FontMatrix_div, align 8, !tbaa !93
  %32 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %32, i32 0, i32 7
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !96
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %33, i32 0, i32 9
  store %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s** %mptr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then
  %34 = load i32, i32* %index.addr, align 4, !tbaa !29
  switch i32 %34, label %sw.epilog [
    i32 0, label %sw.bb.9
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.16
    i32 3, label %sw.bb.20
    i32 4, label %sw.bb.24
    i32 5, label %sw.bb.28
  ]

sw.bb.9:                                          ; preds = %if.end
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 0
  %36 = load float, float* %xx, align 4, !tbaa !97
  %conv10 = fpext float %36 to double
  %37 = load double, double* %FontMatrix_div, align 8, !tbaa !93
  %div = fdiv double %conv10, %37
  %conv11 = fptrunc double %div to float
  store float %conv11, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.12:                                         ; preds = %if.end
  %38 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %38, i32 0, i32 1
  %39 = load float, float* %xy, align 4, !tbaa !98
  %conv13 = fpext float %39 to double
  %40 = load double, double* %FontMatrix_div, align 8, !tbaa !93
  %div14 = fdiv double %conv13, %40
  %conv15 = fptrunc double %div14 to float
  store float %conv15, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.16:                                         ; preds = %if.end
  %41 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %41, i32 0, i32 2
  %42 = load float, float* %yx, align 4, !tbaa !99
  %conv17 = fpext float %42 to double
  %43 = load double, double* %FontMatrix_div, align 8, !tbaa !93
  %div18 = fdiv double %conv17, %43
  %conv19 = fptrunc double %div18 to float
  store float %conv19, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.20:                                         ; preds = %if.end
  %44 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %44, i32 0, i32 3
  %45 = load float, float* %yy, align 4, !tbaa !100
  %conv21 = fpext float %45 to double
  %46 = load double, double* %FontMatrix_div, align 8, !tbaa !93
  %div22 = fdiv double %conv21, %46
  %conv23 = fptrunc double %div22 to float
  store float %conv23, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.24:                                         ; preds = %if.end
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %47, i32 0, i32 4
  %48 = load float, float* %tx, align 4, !tbaa !101
  %conv25 = fpext float %48 to double
  %49 = load double, double* %FontMatrix_div, align 8, !tbaa !93
  %div26 = fdiv double %conv25, %49
  %conv27 = fptrunc double %div26 to float
  store float %conv27, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.28:                                         ; preds = %if.end
  %50 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %mptr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %50, i32 0, i32 5
  %51 = load float, float* %ty, align 4, !tbaa !102
  %conv29 = fpext float %51 to double
  %52 = load double, double* %FontMatrix_div, align 8, !tbaa !93
  %div30 = fdiv double %conv29, %52
  %conv31 = fptrunc double %div30 to float
  store float %conv31, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.28, %sw.bb.24, %sw.bb.20, %sw.bb.16, %sw.bb.12, %sw.bb.9
  %53 = bitcast %struct.gs_matrix_s** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %54) #1
  %55 = bitcast double* %FontMatrix_div to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.185 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.bb.34

sw.bb.34:                                         ; preds = %entry, %cleanup.cont
  %56 = bitcast %struct.ref_s** %Array to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = bitcast %struct.ref_s* %value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %57) #1
  %58 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call35 = call i32 @dict_find_string(%struct.ref_s* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), %struct.ref_s** %Array) #6
  %cmp36 = icmp sle i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.34
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.39:                                        ; preds = %sw.bb.34
  %59 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %59, i32 0, i32 2
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %61 = load %struct.ref_s*, %struct.ref_s** %Array, align 8, !tbaa !1
  %62 = load i32, i32* %index.addr, align 4, !tbaa !29
  %conv40 = sext i32 %62 to i64
  %call41 = call i32 @array_get(%struct.gs_memory_s* %60, %struct.ref_s* %61, i64 %conv40, %struct.ref_s* %value) #6
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.39
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.45:                                        ; preds = %if.end.39
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %63 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv46 = zext i8 %64 to i32
  %cmp47 = icmp eq i32 %conv46, 11
  br i1 %cmp47, label %if.else.59, label %if.then.49

if.then.49:                                       ; preds = %if.end.45
  %tas50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs51 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas50, i32 0, i32 0
  %65 = bitcast i16* %type_attrs51 to i8*
  %arrayidx52 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = load i8, i8* %arrayidx52, align 1, !tbaa !19
  %conv53 = zext i8 %66 to i32
  %cmp54 = icmp eq i32 %conv53, 16
  br i1 %cmp54, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.then.49
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %realval = bitcast %union.v* %value57 to float*
  %67 = load float, float* %realval, align 4, !tbaa !51
  store float %67, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.else.58:                                       ; preds = %if.then.49
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.else.59:                                       ; preds = %if.end.45
  %value60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %intval = bitcast %union.v* %value60 to i64*
  %68 = load i64, i64* %intval, align 8, !tbaa !30
  %conv61 = sitofp i64 %68 to float
  store float %conv61, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %if.else.59, %if.else.58, %if.then.56, %if.then.44, %if.then.38
  %69 = bitcast %struct.ref_s* %value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %69) #1
  %70 = bitcast %struct.ref_s** %Array to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  br label %cleanup.185

sw.bb.64:                                         ; preds = %entry
  %71 = bitcast %struct.ref_s** %Info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = bitcast %struct.ref_s** %Array65 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = bitcast %struct.ref_s* %SubArray to i8*
  call void @llvm.lifetime.start(i64 16, i8* %73) #1
  %74 = bitcast %struct.ref_s* %value66 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %74) #1
  %75 = bitcast i32* %array_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i32, i32* %index.addr, align 4, !tbaa !29
  %div67 = sdiv i32 %76, 8
  store i32 %div67, i32* %array_index, align 4, !tbaa !29
  %77 = load i32, i32* %index.addr, align 4, !tbaa !29
  %rem = srem i32 %77, 8
  store i32 %rem, i32* %index.addr, align 4, !tbaa !29
  %78 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call68 = call i32 @dict_find_string(%struct.ref_s* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct.ref_s** %Info) #6
  %cmp69 = icmp sle i32 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %sw.bb.64
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.72:                                        ; preds = %sw.bb.64
  %79 = load %struct.ref_s*, %struct.ref_s** %Info, align 8, !tbaa !1
  %call73 = call i32 @dict_find_string(%struct.ref_s* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), %struct.ref_s** %Array65) #6
  %cmp74 = icmp sle i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.72
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.77:                                        ; preds = %if.end.72
  %80 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory78 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %80, i32 0, i32 2
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory78, align 8, !tbaa !86
  %82 = load %struct.ref_s*, %struct.ref_s** %Array65, align 8, !tbaa !1
  %83 = load i32, i32* %array_index, align 4, !tbaa !29
  %conv79 = sext i32 %83 to i64
  %call80 = call i32 @array_get(%struct.gs_memory_s* %81, %struct.ref_s* %82, i64 %conv79, %struct.ref_s* %SubArray) #6
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.77
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.84:                                        ; preds = %if.end.77
  %84 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory85 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %84, i32 0, i32 2
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory85, align 8, !tbaa !86
  %86 = load i32, i32* %index.addr, align 4, !tbaa !29
  %conv86 = sext i32 %86 to i64
  %call87 = call i32 @array_get(%struct.gs_memory_s* %85, %struct.ref_s* %SubArray, i64 %conv86, %struct.ref_s* %value66) #6
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.84
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.91:                                        ; preds = %if.end.84
  %tas92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value66, i32 0, i32 0
  %type_attrs93 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas92, i32 0, i32 0
  %87 = bitcast i16* %type_attrs93 to i8*
  %arrayidx94 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load i8, i8* %arrayidx94, align 1, !tbaa !19
  %conv95 = zext i8 %88 to i32
  %cmp96 = icmp eq i32 %conv95, 11
  br i1 %cmp96, label %if.else.109, label %if.then.98

if.then.98:                                       ; preds = %if.end.91
  %tas99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value66, i32 0, i32 0
  %type_attrs100 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas99, i32 0, i32 0
  %89 = bitcast i16* %type_attrs100 to i8*
  %arrayidx101 = getelementptr inbounds i8, i8* %89, i64 1
  %90 = load i8, i8* %arrayidx101, align 1, !tbaa !19
  %conv102 = zext i8 %90 to i32
  %cmp103 = icmp eq i32 %conv102, 16
  br i1 %cmp103, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %if.then.98
  %value106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value66, i32 0, i32 1
  %realval107 = bitcast %union.v* %value106 to float*
  %91 = load float, float* %realval107, align 4, !tbaa !51
  store float %91, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.else.108:                                      ; preds = %if.then.98
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

if.else.109:                                      ; preds = %if.end.91
  %value110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value66, i32 0, i32 1
  %intval111 = bitcast %union.v* %value110 to i64*
  %92 = load i64, i64* %intval111, align 8, !tbaa !30
  %conv112 = sitofp i64 %92 to float
  store float %conv112, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.113

cleanup.113:                                      ; preds = %if.else.109, %if.else.108, %if.then.105, %if.then.90, %if.then.83, %if.then.76, %if.then.71
  %93 = bitcast i32* %array_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast %struct.ref_s* %value66 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %94) #1
  %95 = bitcast %struct.ref_s* %SubArray to i8*
  call void @llvm.lifetime.end(i64 16, i8* %95) #1
  %96 = bitcast %struct.ref_s** %Array65 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.ref_s** %Info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  br label %cleanup.185

sw.bb.118:                                        ; preds = %entry
  %98 = bitcast %struct.ref_s** %Info119 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = bitcast %struct.ref_s** %Array120 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = bitcast %struct.ref_s* %SubArray121 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %100) #1
  %101 = bitcast %struct.ref_s* %SubSubArray to i8*
  call void @llvm.lifetime.start(i64 16, i8* %101) #1
  %102 = bitcast %struct.ref_s* %value122 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %102) #1
  %103 = bitcast i32* %array_index123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = load i32, i32* %index.addr, align 4, !tbaa !29
  %div124 = sdiv i32 %104, 64
  store i32 %div124, i32* %array_index123, align 4, !tbaa !29
  %105 = load i32, i32* %index.addr, align 4, !tbaa !29
  %rem125 = srem i32 %105, 8
  store i32 %rem125, i32* %index.addr, align 4, !tbaa !29
  %106 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call126 = call i32 @dict_find_string(%struct.ref_s* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct.ref_s** %Info119) #6
  %cmp127 = icmp sle i32 %call126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %sw.bb.118
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.130:                                       ; preds = %sw.bb.118
  %107 = load %struct.ref_s*, %struct.ref_s** %Info119, align 8, !tbaa !1
  %call131 = call i32 @dict_find_string(%struct.ref_s* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), %struct.ref_s** %Array120) #6
  %cmp132 = icmp sle i32 %call131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.130
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.135:                                       ; preds = %if.end.130
  %108 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory136 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %108, i32 0, i32 2
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory136, align 8, !tbaa !86
  %110 = load %struct.ref_s*, %struct.ref_s** %Array120, align 8, !tbaa !1
  %111 = load i32, i32* %array_index123, align 4, !tbaa !29
  %conv137 = sext i32 %111 to i64
  %call138 = call i32 @array_get(%struct.gs_memory_s* %109, %struct.ref_s* %110, i64 %conv137, %struct.ref_s* %SubArray121) #6
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.135
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.142:                                       ; preds = %if.end.135
  %112 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory143 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %112, i32 0, i32 2
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory143, align 8, !tbaa !86
  %114 = load i32, i32* %index.addr, align 4, !tbaa !29
  %conv144 = sext i32 %114 to i64
  %call145 = call i32 @array_get(%struct.gs_memory_s* %113, %struct.ref_s* %SubArray121, i64 %conv144, %struct.ref_s* %SubSubArray) #6
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.end.142
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.149:                                       ; preds = %if.end.142
  %115 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory150 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %115, i32 0, i32 2
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory150, align 8, !tbaa !86
  %117 = load i32, i32* %index.addr, align 4, !tbaa !29
  %conv151 = sext i32 %117 to i64
  %call152 = call i32 @array_get(%struct.gs_memory_s* %116, %struct.ref_s* %SubSubArray, i64 %conv151, %struct.ref_s* %value122) #6
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.149
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.156:                                       ; preds = %if.end.149
  %tas157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value122, i32 0, i32 0
  %type_attrs158 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas157, i32 0, i32 0
  %118 = bitcast i16* %type_attrs158 to i8*
  %arrayidx159 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx159, align 1, !tbaa !19
  %conv160 = zext i8 %119 to i32
  %cmp161 = icmp eq i32 %conv160, 11
  br i1 %cmp161, label %if.else.174, label %if.then.163

if.then.163:                                      ; preds = %if.end.156
  %tas164 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value122, i32 0, i32 0
  %type_attrs165 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas164, i32 0, i32 0
  %120 = bitcast i16* %type_attrs165 to i8*
  %arrayidx166 = getelementptr inbounds i8, i8* %120, i64 1
  %121 = load i8, i8* %arrayidx166, align 1, !tbaa !19
  %conv167 = zext i8 %121 to i32
  %cmp168 = icmp eq i32 %conv167, 16
  br i1 %cmp168, label %if.then.170, label %if.else.173

if.then.170:                                      ; preds = %if.then.163
  %value171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value122, i32 0, i32 1
  %realval172 = bitcast %union.v* %value171 to float*
  %122 = load float, float* %realval172, align 4, !tbaa !51
  store float %122, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.else.173:                                      ; preds = %if.then.163
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.else.174:                                      ; preds = %if.end.156
  %value175 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value122, i32 0, i32 1
  %intval176 = bitcast %union.v* %value175 to i64*
  %123 = load i64, i64* %intval176, align 8, !tbaa !30
  %conv177 = sitofp i64 %123 to float
  store float %conv177, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

cleanup.178:                                      ; preds = %if.else.174, %if.else.173, %if.then.170, %if.then.155, %if.then.148, %if.then.141, %if.then.134, %if.then.129
  %124 = bitcast i32* %array_index123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct.ref_s* %value122 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %125) #1
  %126 = bitcast %struct.ref_s* %SubSubArray to i8*
  call void @llvm.lifetime.end(i64 16, i8* %126) #1
  %127 = bitcast %struct.ref_s* %SubArray121 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %127) #1
  %128 = bitcast %struct.ref_s** %Array120 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast %struct.ref_s** %Info119 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  br label %cleanup.185

sw.epilog.184:                                    ; preds = %entry
  store float 0.000000e+00, float* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.185

cleanup.185:                                      ; preds = %sw.epilog.184, %cleanup.178, %cleanup.113, %cleanup.62, %cleanup
  %130 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = load float, float* %retval
  ret float %133
}

; Function Attrs: nounwind uwtable
define internal i32 @FAPI_FF_get_name(%struct.gs_fapi_font_s* %ff, i32 %var_id, i32 %index, i8* %Buffer, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %var_id.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %Buffer.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %name = alloca %struct.ref_s, align 8
  %string = alloca %struct.ref_s, align 8
  %pdr = alloca %struct.ref_s*, align 8
  %Info = alloca %struct.ref_s*, align 8
  %Axes = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %var_id, i32* %var_id.addr, align 4, !tbaa !19
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !29
  %0 = bitcast %struct.ref_s* %name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.ref_s* %string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %3, i32 0, i32 16
  %4 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %5 = bitcast i8* %4 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %5, i32 0, i32 8
  %6 = load i8*, i8** %client_data, align 8, !tbaa !63
  %7 = bitcast i8* %6 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %7, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %8 = load i32, i32* %var_id.addr, align 4, !tbaa !19
  switch i32 %8, label %sw.epilog [
    i32 36, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %9 = bitcast %struct.ref_s** %Info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.ref_s** %Axes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct.ref_s** %Info) #6
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %12 = load %struct.ref_s*, %struct.ref_s** %Info, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct.ref_s** %Axes) #6
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %Axes, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %15 to i32
  %cmp5 = icmp eq i32 %conv, 4
  br i1 %cmp5, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %16 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %16, i32 0, i32 2
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %18 = load %struct.ref_s*, %struct.ref_s** %Axes, align 8, !tbaa !1
  %19 = load i32, i32* %index.addr, align 4, !tbaa !29
  %conv9 = sext i32 %19 to i64
  %call10 = call i32 @array_get(%struct.gs_memory_s* %17, %struct.ref_s* %18, i64 %conv9, %struct.ref_s* %name) #6
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.7, %if.then.3, %if.then
  %20 = bitcast %struct.ref_s** %Axes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.ref_s** %Info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup.cont, %entry
  %22 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %22, i32 0, i32 2
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !86
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 2
  %24 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %24, i32 0, i32 16
  %25 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  call void @names_string_ref(%struct.name_table_s* %25, %struct.ref_s* %name, %struct.ref_s* %string) #6
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 2
  %26 = load i32, i32* %rsize, align 4, !tbaa !33
  %27 = load i32, i32* %len.addr, align 4, !tbaa !29
  %cmp18 = icmp uge i32 %26, %27
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.epilog
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end.21:                                        ; preds = %sw.epilog
  %28 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %29 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 2
  %30 = load i32, i32* %rsize23, align 4, !tbaa !33
  %conv24 = zext i32 %30 to i64
  %call25 = call i8* @memcpy(i8* %28, i8* %29, i64 %conv24) #8
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 2
  %31 = load i32, i32* %rsize27, align 4, !tbaa !33
  %idxprom = zext i32 %31 to i64
  %32 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %32, i64 %idxprom
  store i8 0, i8* %arrayidx28, align 1, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %if.end.21, %if.then.20, %cleanup
  %33 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.ref_s* %string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %34) #1
  %35 = bitcast %struct.ref_s* %name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @FAPI_FF_get_proc(%struct.gs_fapi_font_s* %ff, i32 %var_id, i32 %index, i8* %Buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %var_id.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %Buffer.addr = alloca i8*, align 8
  %pdr = alloca %struct.ref_s*, align 8
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %DBlend = alloca %struct.ref_s*, align 8
  %Element = alloca %struct.ref_s, align 8
  %string = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  %Buf = alloca [32 x i8], align 16
  %op = alloca %struct.op_def*, align 8
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %var_id, i32* %var_id.addr, align 4, !tbaa !19
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 16
  %2 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %client_data, align 8, !tbaa !63
  %5 = bitcast i8* %4 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %6 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  store i8* %7, i8** %ptr, align 8, !tbaa !1
  %8 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %var_id.addr, align 4, !tbaa !19
  switch i32 %9, label %sw.epilog.60 [
    i32 33, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %10 = bitcast %struct.ref_s** %DBlend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.ref_s* %Element to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast %struct.ref_s* %string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast [32 x i8]* %Buf to i8*
  call void @llvm.lifetime.start(i64 32, i8* %14) #1
  %15 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct.ref_s** %DBlend) #6
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %16 = load i32, i32* %i, align 4, !tbaa !29
  %17 = load %struct.ref_s*, %struct.ref_s** %DBlend, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %18 = load i32, i32* %rsize, align 4, !tbaa !33
  %cmp3 = icmp ult i32 %16, %18
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !1
  store i8 32, i8* %19, align 1, !tbaa !19
  %20 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %20, i32 0, i32 2
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %22 = load %struct.ref_s*, %struct.ref_s** %DBlend, align 8, !tbaa !1
  %23 = load i32, i32* %i, align 4, !tbaa !29
  %conv = sext i32 %23 to i64
  %call4 = call i32 @array_get(%struct.gs_memory_s* %21, %struct.ref_s* %22, i64 %conv, %struct.ref_s* %Element) #6
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %for.body
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %24 = load i16, i16* %type_attrs, align 2, !tbaa !27
  %conv10 = zext i16 %24 to i32
  %cmp11 = icmp sge i32 %conv10, 5376
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %25 = bitcast i16* %type_attrs14 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv15 = zext i8 %26 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %conv15, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 13, label %sw.bb.16
    i32 16, label %sw.bb.24
    i32 11, label %sw.bb.33
    i32 15, label %sw.bb.42
  ]

sw.bb.16:                                         ; preds = %cond.end
  %27 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %27, i32 0, i32 2
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !86
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 2
  %29 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %29, i32 0, i32 16
  %30 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  call void @names_string_ref(%struct.name_table_s* %30, %struct.ref_s* %Element, %struct.ref_s* %string) #6
  %31 = load i8*, i8** %ptr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %32 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  %33 = load i32, i32* %rsize19, align 4, !tbaa !33
  %conv20 = zext i32 %33 to i64
  %call21 = call i8* @strncpy(i8* %31, i8* %32, i64 %conv20) #8
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 2
  %34 = load i32, i32* %rsize23, align 4, !tbaa !33
  %35 = load i8*, i8** %ptr, align 8, !tbaa !1
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.24:                                         ; preds = %cond.end
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %Buf, i32 0, i32 0
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 1
  %realval = bitcast %union.v* %value25 to float*
  %36 = load float, float* %realval, align 4, !tbaa !51
  %conv26 = fpext float %36 to double
  %call27 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), double %conv26) #6
  %37 = load i8*, i8** %ptr, align 8, !tbaa !1
  %arraydecay28 = getelementptr inbounds [32 x i8], [32 x i8]* %Buf, i32 0, i32 0
  %call29 = call i8* @strcpy(i8* %37, i8* %arraydecay28) #8
  %arraydecay30 = getelementptr inbounds [32 x i8], [32 x i8]* %Buf, i32 0, i32 0
  %call31 = call i64 @strlen(i8* %arraydecay30) #7
  %38 = load i8*, i8** %ptr, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds i8, i8* %38, i64 %call31
  store i8* %add.ptr32, i8** %ptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.33:                                         ; preds = %cond.end
  %arraydecay34 = getelementptr inbounds [32 x i8], [32 x i8]* %Buf, i32 0, i32 0
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 1
  %intval = bitcast %union.v* %value35 to i64*
  %39 = load i64, i64* %intval, align 8, !tbaa !30
  %call36 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i64 %39) #6
  %40 = load i8*, i8** %ptr, align 8, !tbaa !1
  %arraydecay37 = getelementptr inbounds [32 x i8], [32 x i8]* %Buf, i32 0, i32 0
  %call38 = call i8* @strcpy(i8* %40, i8* %arraydecay37) #8
  %arraydecay39 = getelementptr inbounds [32 x i8], [32 x i8]* %Buf, i32 0, i32 0
  %call40 = call i64 @strlen(i8* %arraydecay39) #7
  %41 = load i8*, i8** %ptr, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds i8, i8* %41, i64 %call40
  store i8* %add.ptr41, i8** %ptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.42:                                         ; preds = %cond.end
  %42 = bitcast %struct.op_def** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %tas43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 0
  %rsize44 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas43, i32 0, i32 2
  %43 = load i32, i32* %rsize44, align 4, !tbaa !33
  %and = and i32 %43, 15
  %idxprom = zext i32 %and to i64
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %Element, i32 0, i32 0
  %rsize46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 2
  %44 = load i32, i32* %rsize46, align 4, !tbaa !33
  %shr = lshr i32 %44, 4
  %idxprom47 = zext i32 %shr to i64
  %arrayidx48 = getelementptr inbounds [0 x %struct.op_def*], [0 x %struct.op_def*]* @op_defs_all, i32 0, i64 %idxprom47
  %45 = load %struct.op_def*, %struct.op_def** %arrayidx48, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds %struct.op_def, %struct.op_def* %45, i64 %idxprom
  store %struct.op_def* %arrayidx49, %struct.op_def** %op, align 8, !tbaa !1
  %46 = load i8*, i8** %ptr, align 8, !tbaa !1
  %47 = load %struct.op_def*, %struct.op_def** %op, align 8, !tbaa !1
  %oname = getelementptr inbounds %struct.op_def, %struct.op_def* %47, i32 0, i32 0
  %48 = load i8*, i8** %oname, align 8, !tbaa !87
  %add.ptr50 = getelementptr inbounds i8, i8* %48, i64 1
  %call51 = call i8* @strcpy(i8* %46, i8* %add.ptr50) #8
  %49 = load %struct.op_def*, %struct.op_def** %op, align 8, !tbaa !1
  %oname52 = getelementptr inbounds %struct.op_def, %struct.op_def* %49, i32 0, i32 0
  %50 = load i8*, i8** %oname52, align 8, !tbaa !87
  %add.ptr53 = getelementptr inbounds i8, i8* %50, i64 1
  %call54 = call i64 @strlen(i8* %add.ptr53) #7
  %51 = load i8*, i8** %ptr, align 8, !tbaa !1
  %add.ptr55 = getelementptr inbounds i8, i8* %51, i64 %call54
  store i8* %add.ptr55, i8** %ptr, align 8, !tbaa !1
  %52 = bitcast %struct.op_def** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.42, %sw.bb.33, %sw.bb.24, %sw.bb.16
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %53 = load i32, i32* %i, align 4, !tbaa !29
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7, %if.then.1
  %54 = bitcast [32 x i8]* %Buf to i8*
  call void @llvm.lifetime.end(i64 32, i8* %54) #1
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.ref_s* %string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #1
  %57 = bitcast %struct.ref_s* %Element to i8*
  call void @llvm.lifetime.end(i64 16, i8* %57) #1
  %58 = bitcast %struct.ref_s** %DBlend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog.60

sw.epilog.60:                                     ; preds = %cleanup.cont, %if.end
  %59 = load i8*, i8** %ptr, align 8, !tbaa !1
  %60 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %60 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv61 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %sw.epilog.60, %cleanup, %if.then
  %61 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @FAPI_FF_get_gsubr(%struct.gs_fapi_font_s* %ff, i32 %index, i8* %buf, i16 zeroext %buf_length) #0 {
entry:
  %retval = alloca i16, align 2
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %index.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i16, align 2
  %pdr = alloca %struct.ref_s*, align 8
  %Private = alloca %struct.ref_s*, align 8
  %GlobalSubrs = alloca %struct.ref_s*, align 8
  %subr = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i16 %buf_length, i16* %buf_length.addr, align 2, !tbaa !26
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 16
  %2 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %client_data, align 8, !tbaa !63
  %5 = bitcast i8* %4 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %Private to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.ref_s** %GlobalSubrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.ref_s* %subr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s** %Private) #6
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %Private, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), %struct.ref_s** %GlobalSubrs) #6
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %11, i32 0, i32 2
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %13 = load %struct.ref_s*, %struct.ref_s** %GlobalSubrs, align 8, !tbaa !1
  %14 = load i32, i32* %index.addr, align 4, !tbaa !29
  %conv = sext i32 %14 to i64
  %call5 = call i32 @array_get(%struct.gs_memory_s* %12, %struct.ref_s* %13, i64 %conv, %struct.ref_s* %subr) #6
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %subr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv8 = zext i8 %16 to i32
  %cmp9 = icmp ne i32 %conv8, 18
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.4
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %17 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %19 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %call13 = call zeroext i16 @get_type1_data(%struct.gs_fapi_font_s* %17, %struct.ref_s* %subr, i8* %18, i16 zeroext %19) #6
  store i16 %call13, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.3, %if.then
  %20 = bitcast %struct.ref_s* %subr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  %21 = bitcast %struct.ref_s** %GlobalSubrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.ref_s** %Private to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i16, i16* %retval
  ret i16 %24
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @FAPI_FF_get_subr(%struct.gs_fapi_font_s* %ff, i32 %index, i8* %buf, i16 zeroext %buf_length) #0 {
entry:
  %retval = alloca i16, align 2
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %index.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i16, align 2
  %pdr = alloca %struct.ref_s*, align 8
  %Private = alloca %struct.ref_s*, align 8
  %Subrs = alloca %struct.ref_s*, align 8
  %subr = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i16 %buf_length, i16* %buf_length.addr, align 2, !tbaa !26
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 16
  %2 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %client_data, align 8, !tbaa !63
  %5 = bitcast i8* %4 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %Private to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.ref_s** %Subrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.ref_s* %subr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s** %Private) #6
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %Private, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct.ref_s** %Subrs) #6
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %11, i32 0, i32 2
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %13 = load %struct.ref_s*, %struct.ref_s** %Subrs, align 8, !tbaa !1
  %14 = load i32, i32* %index.addr, align 4, !tbaa !29
  %conv = sext i32 %14 to i64
  %call5 = call i32 @array_get(%struct.gs_memory_s* %12, %struct.ref_s* %13, i64 %conv, %struct.ref_s* %subr) #6
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %subr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv8 = zext i8 %16 to i32
  %cmp9 = icmp ne i32 %conv8, 18
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.4
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %17 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %19 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %call13 = call zeroext i16 @get_type1_data(%struct.gs_fapi_font_s* %17, %struct.ref_s* %subr, i8* %18, i16 zeroext %19) #6
  store i16 %call13, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.3, %if.then
  %20 = bitcast %struct.ref_s* %subr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  %21 = bitcast %struct.ref_s** %Subrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.ref_s** %Private to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i16, i16* %retval
  ret i16 %24
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @FAPI_FF_get_raw_subr(%struct.gs_fapi_font_s* %ff, i32 %index, i8* %buf, i16 zeroext %buf_length) #0 {
entry:
  %retval = alloca i16, align 2
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %index.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i16, align 2
  %pdr = alloca %struct.ref_s*, align 8
  %Private = alloca %struct.ref_s*, align 8
  %Subrs = alloca %struct.ref_s*, align 8
  %subr = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i16 %buf_length, i16* %buf_length.addr, align 2, !tbaa !26
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 16
  %2 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %client_data, align 8, !tbaa !63
  %5 = bitcast i8* %4 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %Private to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.ref_s** %Subrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.ref_s* %subr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s** %Private) #6
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %Private, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct.ref_s** %Subrs) #6
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %11, i32 0, i32 2
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %13 = load %struct.ref_s*, %struct.ref_s** %Subrs, align 8, !tbaa !1
  %14 = load i32, i32* %index.addr, align 4, !tbaa !29
  %conv = sext i32 %14 to i64
  %call5 = call i32 @array_get(%struct.gs_memory_s* %12, %struct.ref_s* %13, i64 %conv, %struct.ref_s* %subr) #6
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %subr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv8 = zext i8 %16 to i32
  %cmp9 = icmp ne i32 %conv8, 18
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.4
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %17 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %17, null
  br i1 %tobool, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.12
  %18 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv13 = zext i16 %18 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.25

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %19 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv16 = zext i16 %19 to i32
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %subr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 2
  %20 = load i32, i32* %rsize, align 4, !tbaa !33
  %cmp18 = icmp uge i32 %conv16, %20
  br i1 %cmp18, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %land.lhs.true.15
  %21 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %subr, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %22 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %subr, i32 0, i32 0
  %rsize22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 2
  %23 = load i32, i32* %rsize22, align 4, !tbaa !33
  %conv23 = zext i32 %23 to i64
  %call24 = call i8* @memcpy(i8* %21, i8* %22, i64 %conv23) #8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %land.lhs.true.15, %land.lhs.true, %if.end.12
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %subr, i32 0, i32 0
  %rsize27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 2
  %24 = load i32, i32* %rsize27, align 4, !tbaa !33
  %conv28 = trunc i32 %24 to i16
  store i16 %conv28, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.11, %if.then.3, %if.then
  %25 = bitcast %struct.ref_s* %subr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #1
  %26 = bitcast %struct.ref_s** %Subrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.ref_s** %Private to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i16, i16* %retval
  ret i16 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @FAPI_FF_get_glyph(%struct.gs_fapi_font_s* %ff, i32 %char_code, i8* %buf, i16 zeroext %buf_length) #0 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %char_code.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i16, align 2
  %pdr = alloca %struct.ref_s*, align 8
  %glyph_length = alloca i16, align 2
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %char_str = alloca %struct.gs_string_s*, align 8
  %glyph = alloca %struct.ref_s, align 8
  %CharStrings = alloca %struct.ref_s*, align 8
  %char_name = alloca %struct.ref_s, align 8
  %glyph4 = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %StandardEncoding = alloca %struct.ref_s*, align 8
  %data_ptr = alloca i8*, align 8
  %l = alloca i32, align 4
  %render_notdef_ref = alloca %struct.ref_s*, align 8
  %render_notdef = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp146 = alloca i32, align 4
  %__s1_len166 = alloca i64, align 8
  %__s2_len168 = alloca i64, align 8
  %tmp169 = alloca i32, align 4
  %__s1176 = alloca i8*, align 8
  %__result179 = alloca i32, align 4
  %tmp217 = alloca i32, align 4
  %MetricsCount = alloca i32, align 4
  %mc = alloca i32, align 4
  %pfont42 = alloca %struct.gs_font_type42_s*, align 8
  %offset0 = alloca i64, align 8
  %length_read = alloca i64, align 8
  %error = alloca i32, align 4
  %r = alloca %struct.sfnts_reader_s, align 8
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %char_code, i32* %char_code.addr, align 4, !tbaa !29
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i16 %buf_length, i16* %buf_length.addr, align 2, !tbaa !26
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 16
  %2 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %client_data, align 8, !tbaa !63
  %5 = bitcast i8* %4 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %6 = bitcast i16* %glyph_length to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_ctx_p = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %8, i32 0, i32 14
  %9 = load i8*, i8** %client_ctx_p, align 8, !tbaa !103
  %10 = bitcast i8* %9 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %10, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %11 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %is_type1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %11, i32 0, i32 7
  %12 = load i32, i32* %is_type1, align 4, !tbaa !104
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else.77

if.then:                                          ; preds = %entry
  %13 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %is_cid = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %13, i32 0, i32 8
  %14 = load i32, i32* %is_cid, align 4, !tbaa !94
  %tobool1 = icmp ne i32 %14, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %15 = bitcast %struct.gs_string_s** %char_str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %16, i32 0, i32 17
  %17 = load i8*, i8** %char_data, align 8, !tbaa !105
  %18 = bitcast i8* %17 to %struct.gs_string_s*
  store %struct.gs_string_s* %18, %struct.gs_string_s** %char_str, align 8, !tbaa !1
  %19 = bitcast %struct.ref_s* %glyph to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = load %struct.gs_string_s*, %struct.gs_string_s** %char_str, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8, !tbaa !106
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* %21, i8** %bytes, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !27
  %22 = load %struct.gs_string_s*, %struct.gs_string_s** %char_str, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %22, i32 0, i32 1
  %23 = load i32, i32* %size, align 4, !tbaa !108
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  store i32 %23, i32* %rsize, align 4, !tbaa !33
  %24 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %26 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %call = call zeroext i16 @get_type1_data(%struct.gs_fapi_font_s* %24, %struct.ref_s* %glyph, i8* %25, i16 zeroext %26) #6
  store i16 %call, i16* %glyph_length, align 2, !tbaa !26
  %27 = bitcast %struct.ref_s* %glyph to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #1
  %28 = bitcast %struct.gs_string_s** %char_str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %if.end.76

if.else:                                          ; preds = %if.then
  %29 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast %struct.ref_s* %char_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %30) #1
  %31 = bitcast %struct.ref_s** %glyph4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data5 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %32, i32 0, i32 17
  %33 = load i8*, i8** %char_data5, align 8, !tbaa !105
  %cmp = icmp ne i8* %33, null
  br i1 %cmp, label %if.then.6, label %if.else.15

if.then.6:                                        ; preds = %if.else
  %34 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %34, i32 0, i32 2
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 2
  %36 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %36, i32 0, i32 16
  %37 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  %38 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data7 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %38, i32 0, i32 17
  %39 = load i8*, i8** %char_data7, align 8, !tbaa !105
  %40 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data_len = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %40, i32 0, i32 18
  %41 = load i32, i32* %char_data_len, align 4, !tbaa !109
  %call8 = call i32 @names_ref(%struct.name_table_s* %37, i8* %39, i32 %41, %struct.ref_s* %char_name, i32 -1) #6
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

if.end:                                           ; preds = %if.then.6
  %42 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp11 = icmp ne i8* %42, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %43 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data13 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %43, i32 0, i32 17
  store i8* null, i8** %char_data13, align 8, !tbaa !105
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  br label %if.end.32

if.else.15:                                       ; preds = %if.else
  %44 = bitcast %struct.ref_s** %StandardEncoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call16 = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), %struct.ref_s** %StandardEncoding) #6
  %cmp17 = icmp sle i32 %call16, 0
  br i1 %cmp17, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.15
  %46 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %46, i32 0, i32 2
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !86
  %48 = load %struct.ref_s*, %struct.ref_s** %StandardEncoding, align 8, !tbaa !1
  %49 = load i32, i32* %char_code.addr, align 4, !tbaa !29
  %conv = sext i32 %49 to i64
  %call19 = call i32 @array_get(%struct.gs_memory_s* %47, %struct.ref_s* %48, i64 %conv, %struct.ref_s* %char_name) #6
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %lor.lhs.false, %if.else.15
  %50 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %50, i32 0, i32 2
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !86
  %gs_lib_ctx24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 2
  %52 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx24, align 8, !tbaa !21
  %gs_name_table25 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %52, i32 0, i32 16
  %53 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table25, align 8, !tbaa !24
  %call26 = call i32 @names_ref(%struct.name_table_s* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 7, %struct.ref_s* %char_name, i32 -1) #6
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.22
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.22
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.29
  %54 = bitcast %struct.ref_s** %StandardEncoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.71 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.32

if.end.32:                                        ; preds = %cleanup.cont, %if.end.14
  %55 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call33 = call i32 @dict_find_string(%struct.ref_s* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %CharStrings) #6
  %cmp34 = icmp sle i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

if.end.37:                                        ; preds = %if.end.32
  %56 = load %struct.ref_s*, %struct.ref_s** %CharStrings, align 8, !tbaa !1
  %call38 = call i32 @dict_find(%struct.ref_s* %56, %struct.ref_s* %char_name, %struct.ref_s** %glyph4) #6
  %cmp39 = icmp sle i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.55

if.then.41:                                       ; preds = %if.end.37
  %57 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %57, i32 0, i32 2
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory42, align 8, !tbaa !86
  %gs_lib_ctx43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 2
  %59 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx43, align 8, !tbaa !21
  %gs_name_table44 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %59, i32 0, i32 16
  %60 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table44, align 8, !tbaa !24
  %call45 = call i32 @names_ref(%struct.name_table_s* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 7, %struct.ref_s* %char_name, i32 -1) #6
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.41
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

if.end.49:                                        ; preds = %if.then.41
  %61 = load %struct.ref_s*, %struct.ref_s** %CharStrings, align 8, !tbaa !1
  %call50 = call i32 @dict_find(%struct.ref_s* %61, %struct.ref_s* %char_name, %struct.ref_s** %glyph4) #6
  %cmp51 = icmp sle i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.49
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

if.end.54:                                        ; preds = %if.end.49
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.37
  %62 = load %struct.ref_s*, %struct.ref_s** %glyph4, align 8, !tbaa !1
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %type_attrs57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  %63 = bitcast i16* %type_attrs57 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv58 = zext i8 %64 to i32
  %cmp59 = icmp eq i32 %conv58, 4
  br i1 %cmp59, label %if.then.68, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.end.55
  %65 = load %struct.ref_s*, %struct.ref_s** %glyph4, align 8, !tbaa !1
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %type_attrs63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 0
  %66 = bitcast i16* %type_attrs63 to i8*
  %arrayidx64 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx64, align 1, !tbaa !19
  %conv65 = zext i8 %67 to i32
  %cmp66 = icmp eq i32 %conv65, 5
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %lor.lhs.false.61, %if.end.55
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71

if.end.69:                                        ; preds = %lor.lhs.false.61
  %68 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %69 = load %struct.ref_s*, %struct.ref_s** %glyph4, align 8, !tbaa !1
  %70 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %71 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %call70 = call zeroext i16 @get_type1_data(%struct.gs_fapi_font_s* %68, %struct.ref_s* %69, i8* %70, i16 zeroext %71) #6
  store i16 %call70, i16* %glyph_length, align 2, !tbaa !26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.71

cleanup.71:                                       ; preds = %if.end.69, %if.then.68, %if.then.53, %if.then.48, %if.then.36, %cleanup, %if.then.10
  %72 = bitcast %struct.ref_s** %glyph4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.ref_s* %char_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %73) #1
  %74 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %cleanup.dest.74 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.74, label %cleanup.319 [
    i32 0, label %cleanup.cont.75
  ]

cleanup.cont.75:                                  ; preds = %cleanup.71
  br label %if.end.76

if.end.76:                                        ; preds = %cleanup.cont.75, %if.then.2
  br label %if.end.317

if.else.77:                                       ; preds = %entry
  %75 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %get_glyphdirectory_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %77, i32 0, i32 32
  %78 = load i32 (%struct.gs_fapi_font_s*, i32, i8**)*, i32 (%struct.gs_fapi_font_s*, i32, i8**)** %get_glyphdirectory_data, align 8, !tbaa !110
  %79 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %80 = load i32, i32* %char_code.addr, align 4, !tbaa !29
  %call78 = call i32 %78(%struct.gs_fapi_font_s* %79, i32 %80, i8** %data_ptr) #6
  store i32 %call78, i32* %l, align 4, !tbaa !29
  %81 = bitcast %struct.ref_s** %render_notdef_ref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = bitcast i32* %render_notdef to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  store i32 1, i32* %render_notdef, align 4, !tbaa !29
  %83 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call79 = call i32 @dict_find_string(%struct.ref_s* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), %struct.ref_s** %render_notdef_ref) #6
  %cmp80 = icmp sgt i32 %call79, 0
  br i1 %cmp80, label %land.lhs.true, label %if.else.91

land.lhs.true:                                    ; preds = %if.else.77
  %84 = load %struct.ref_s*, %struct.ref_s** %render_notdef_ref, align 8, !tbaa !1
  %tas82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i32 0, i32 0
  %type_attrs83 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas82, i32 0, i32 0
  %85 = bitcast i16* %type_attrs83 to i8*
  %arrayidx84 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8, i8* %arrayidx84, align 1, !tbaa !19
  %conv85 = zext i8 %86 to i32
  %cmp86 = icmp eq i32 %conv85, 1
  br i1 %cmp86, label %if.then.88, label %if.else.91

if.then.88:                                       ; preds = %land.lhs.true
  %87 = load %struct.ref_s*, %struct.ref_s** %render_notdef_ref, align 8, !tbaa !1
  %value89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 0, i32 1
  %boolval = bitcast %union.v* %value89 to i16*
  %88 = load i16, i16* %boolval, align 2, !tbaa !26
  %conv90 = zext i16 %88 to i32
  store i32 %conv90, i32* %render_notdef, align 4, !tbaa !29
  br label %if.end.92

if.else.91:                                       ; preds = %land.lhs.true, %if.else.77
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %RenderTTNotdef = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %89, i32 0, i32 15
  %90 = load i32, i32* %RenderTTNotdef, align 4, !tbaa !111
  store i32 %90, i32* %render_notdef, align 4, !tbaa !29
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.91, %if.then.88
  %91 = load i32, i32* %render_notdef, align 4, !tbaa !29
  %tobool93 = icmp ne i32 %91, 0
  br i1 %tobool93, label %if.else.231, label %land.lhs.true.94

land.lhs.true.94:                                 ; preds = %if.end.92
  %92 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data_len95 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %92, i32 0, i32 18
  %93 = load i32, i32* %char_data_len95, align 4, !tbaa !109
  %cmp96 = icmp eq i32 %93, 7
  br i1 %cmp96, label %land.lhs.true.98, label %lor.lhs.false.156

land.lhs.true.98:                                 ; preds = %land.lhs.true.94
  %call99 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #7
  %cmp100 = icmp ult i64 %call99, 7
  br i1 %cmp100, label %cond.true, label %cond.false.149

cond.true:                                        ; preds = %land.lhs.true.98
  %94 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.35 to i64)), i64 1), label %land.lhs.true.102, label %cond.false

land.lhs.true.102:                                ; preds = %cond.true
  %call103 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #7
  store i64 %call103, i64* %__s2_len, align 8, !tbaa !30
  %96 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp104 = icmp ult i64 %96, 4
  br i1 %cmp104, label %cond.true.106, label %cond.false

cond.true.106:                                    ; preds = %land.lhs.true.102
  %97 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data108 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %98, i32 0, i32 17
  %99 = load i8*, i8** %char_data108, align 8, !tbaa !105
  store i8* %99, i8** %__s1, align 8, !tbaa !1
  %100 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8, i8* %101, i64 0
  %102 = load i8, i8* %arrayidx110, align 1, !tbaa !19
  %conv111 = zext i8 %102 to i32
  %103 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), align 1, !tbaa !19
  %conv112 = zext i8 %103 to i32
  %sub = sub nsw i32 %conv111, %conv112
  store i32 %sub, i32* %__result, align 4, !tbaa !29
  %104 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp113 = icmp ugt i64 %104, 0
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.145

land.lhs.true.115:                                ; preds = %cond.true.106
  %105 = load i32, i32* %__result, align 4, !tbaa !29
  %cmp116 = icmp eq i32 %105, 0
  br i1 %cmp116, label %if.then.118, label %if.end.145

if.then.118:                                      ; preds = %land.lhs.true.115
  %106 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i8, i8* %106, i64 1
  %107 = load i8, i8* %arrayidx119, align 1, !tbaa !19
  %conv120 = zext i8 %107 to i32
  %108 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i64 1), align 1, !tbaa !19
  %conv121 = zext i8 %108 to i32
  %sub122 = sub nsw i32 %conv120, %conv121
  store i32 %sub122, i32* %__result, align 4, !tbaa !29
  %109 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp123 = icmp ugt i64 %109, 1
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.144

land.lhs.true.125:                                ; preds = %if.then.118
  %110 = load i32, i32* %__result, align 4, !tbaa !29
  %cmp126 = icmp eq i32 %110, 0
  br i1 %cmp126, label %if.then.128, label %if.end.144

if.then.128:                                      ; preds = %land.lhs.true.125
  %111 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i8, i8* %111, i64 2
  %112 = load i8, i8* %arrayidx129, align 1, !tbaa !19
  %conv130 = zext i8 %112 to i32
  %113 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i64 2), align 1, !tbaa !19
  %conv131 = zext i8 %113 to i32
  %sub132 = sub nsw i32 %conv130, %conv131
  store i32 %sub132, i32* %__result, align 4, !tbaa !29
  %114 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp133 = icmp ugt i64 %114, 2
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.143

land.lhs.true.135:                                ; preds = %if.then.128
  %115 = load i32, i32* %__result, align 4, !tbaa !29
  %cmp136 = icmp eq i32 %115, 0
  br i1 %cmp136, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %land.lhs.true.135
  %116 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i8, i8* %116, i64 3
  %117 = load i8, i8* %arrayidx139, align 1, !tbaa !19
  %conv140 = zext i8 %117 to i32
  %118 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i64 3), align 1, !tbaa !19
  %conv141 = zext i8 %118 to i32
  %sub142 = sub nsw i32 %conv140, %conv141
  store i32 %sub142, i32* %__result, align 4, !tbaa !29
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %land.lhs.true.135, %if.then.128
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %land.lhs.true.125, %if.then.118
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %land.lhs.true.115, %cond.true.106
  %119 = load i32, i32* %__result, align 4, !tbaa !29
  store i32 %119, i32* %tmp146, !tbaa !29
  %120 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = load i32, i32* %tmp146, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.102, %cond.true
  %123 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data147 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %123, i32 0, i32 17
  %124 = load i8*, i8** %char_data147, align 8, !tbaa !105
  %call148 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.145
  %cond = phi i32 [ %122, %if.end.145 ], [ %call148, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !29
  %125 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = load i32, i32* %tmp, !tbaa !29
  br label %cond.end.152

cond.false.149:                                   ; preds = %land.lhs.true.98
  %128 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data150 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %128, i32 0, i32 17
  %129 = load i8*, i8** %char_data150, align 8, !tbaa !105
  %call151 = call i32 @strncmp(i8* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i64 7) #7
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.149, %cond.end
  %cond153 = phi i32 [ %127, %cond.end ], [ %call151, %cond.false.149 ]
  %cmp154 = icmp eq i32 %cond153, 0
  br i1 %cmp154, label %if.then.230, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %cond.end.152, %land.lhs.true.94
  %130 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data_len157 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %130, i32 0, i32 18
  %131 = load i32, i32* %char_data_len157, align 4, !tbaa !109
  %cmp158 = icmp sgt i32 %131, 9
  br i1 %cmp158, label %land.lhs.true.160, label %if.else.231

land.lhs.true.160:                                ; preds = %lor.lhs.false.156
  %call161 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0)) #7
  %cmp162 = icmp ult i64 %call161, 10
  br i1 %cmp162, label %cond.true.164, label %cond.false.223

cond.true.164:                                    ; preds = %land.lhs.true.160
  %132 = bitcast i64* %__s1_len166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = bitcast i64* %__s2_len168 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.37 to i64)), i64 1), label %land.lhs.true.170, label %cond.false.218

land.lhs.true.170:                                ; preds = %cond.true.164
  %call171 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0)) #7
  store i64 %call171, i64* %__s2_len168, align 8, !tbaa !30
  %134 = load i64, i64* %__s2_len168, align 8, !tbaa !30
  %cmp172 = icmp ult i64 %134, 4
  br i1 %cmp172, label %cond.true.174, label %cond.false.218

cond.true.174:                                    ; preds = %land.lhs.true.170
  %135 = bitcast i8** %__s1176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  %136 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data177 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %136, i32 0, i32 17
  %137 = load i8*, i8** %char_data177, align 8, !tbaa !105
  store i8* %137, i8** %__s1176, align 8, !tbaa !1
  %138 = bitcast i32* %__result179 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #1
  %139 = load i8*, i8** %__s1176, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i8, i8* %139, i64 0
  %140 = load i8, i8* %arrayidx180, align 1, !tbaa !19
  %conv181 = zext i8 %140 to i32
  %141 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), align 1, !tbaa !19
  %conv182 = zext i8 %141 to i32
  %sub183 = sub nsw i32 %conv181, %conv182
  store i32 %sub183, i32* %__result179, align 4, !tbaa !29
  %142 = load i64, i64* %__s2_len168, align 8, !tbaa !30
  %cmp184 = icmp ugt i64 %142, 0
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.216

land.lhs.true.186:                                ; preds = %cond.true.174
  %143 = load i32, i32* %__result179, align 4, !tbaa !29
  %cmp187 = icmp eq i32 %143, 0
  br i1 %cmp187, label %if.then.189, label %if.end.216

if.then.189:                                      ; preds = %land.lhs.true.186
  %144 = load i8*, i8** %__s1176, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i8, i8* %144, i64 1
  %145 = load i8, i8* %arrayidx190, align 1, !tbaa !19
  %conv191 = zext i8 %145 to i32
  %146 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i64 1), align 1, !tbaa !19
  %conv192 = zext i8 %146 to i32
  %sub193 = sub nsw i32 %conv191, %conv192
  store i32 %sub193, i32* %__result179, align 4, !tbaa !29
  %147 = load i64, i64* %__s2_len168, align 8, !tbaa !30
  %cmp194 = icmp ugt i64 %147, 1
  br i1 %cmp194, label %land.lhs.true.196, label %if.end.215

land.lhs.true.196:                                ; preds = %if.then.189
  %148 = load i32, i32* %__result179, align 4, !tbaa !29
  %cmp197 = icmp eq i32 %148, 0
  br i1 %cmp197, label %if.then.199, label %if.end.215

if.then.199:                                      ; preds = %land.lhs.true.196
  %149 = load i8*, i8** %__s1176, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i8, i8* %149, i64 2
  %150 = load i8, i8* %arrayidx200, align 1, !tbaa !19
  %conv201 = zext i8 %150 to i32
  %151 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i64 2), align 1, !tbaa !19
  %conv202 = zext i8 %151 to i32
  %sub203 = sub nsw i32 %conv201, %conv202
  store i32 %sub203, i32* %__result179, align 4, !tbaa !29
  %152 = load i64, i64* %__s2_len168, align 8, !tbaa !30
  %cmp204 = icmp ugt i64 %152, 2
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.214

land.lhs.true.206:                                ; preds = %if.then.199
  %153 = load i32, i32* %__result179, align 4, !tbaa !29
  %cmp207 = icmp eq i32 %153, 0
  br i1 %cmp207, label %if.then.209, label %if.end.214

if.then.209:                                      ; preds = %land.lhs.true.206
  %154 = load i8*, i8** %__s1176, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i8, i8* %154, i64 3
  %155 = load i8, i8* %arrayidx210, align 1, !tbaa !19
  %conv211 = zext i8 %155 to i32
  %156 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i64 3), align 1, !tbaa !19
  %conv212 = zext i8 %156 to i32
  %sub213 = sub nsw i32 %conv211, %conv212
  store i32 %sub213, i32* %__result179, align 4, !tbaa !29
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.209, %land.lhs.true.206, %if.then.199
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %land.lhs.true.196, %if.then.189
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %land.lhs.true.186, %cond.true.174
  %157 = load i32, i32* %__result179, align 4, !tbaa !29
  store i32 %157, i32* %tmp217, !tbaa !29
  %158 = bitcast i32* %__result179 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i8** %__s1176 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = load i32, i32* %tmp217, !tbaa !29
  br label %cond.end.221

cond.false.218:                                   ; preds = %land.lhs.true.170, %cond.true.164
  %161 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data219 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %161, i32 0, i32 17
  %162 = load i8*, i8** %char_data219, align 8, !tbaa !105
  %call220 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0)) #8
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.218, %if.end.216
  %cond222 = phi i32 [ %160, %if.end.216 ], [ %call220, %cond.false.218 ]
  store i32 %cond222, i32* %tmp169, !tbaa !29
  %163 = bitcast i64* %__s2_len168 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast i64* %__s1_len166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = load i32, i32* %tmp169, !tbaa !29
  br label %cond.end.226

cond.false.223:                                   ; preds = %land.lhs.true.160
  %166 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data224 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %166, i32 0, i32 17
  %167 = load i8*, i8** %char_data224, align 8, !tbaa !105
  %call225 = call i32 @strncmp(i8* %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i64 10) #7
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.223, %cond.end.221
  %cond227 = phi i32 [ %165, %cond.end.221 ], [ %call225, %cond.false.223 ]
  %cmp228 = icmp eq i32 %cond227, 0
  br i1 %cmp228, label %if.then.230, label %if.else.231

if.then.230:                                      ; preds = %cond.end.226, %cond.end.152
  store i16 0, i16* %glyph_length, align 2, !tbaa !26
  br label %if.end.316

if.else.231:                                      ; preds = %cond.end.226, %lor.lhs.false.156, %if.end.92
  %168 = load i32, i32* %l, align 4, !tbaa !29
  %cmp232 = icmp sge i32 %168, 0
  br i1 %cmp232, label %if.then.234, label %if.else.271

if.then.234:                                      ; preds = %if.else.231
  %169 = bitcast i32* %MetricsCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #1
  %170 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %call236 = call i32 @gs_fapi_get_metrics_count(%struct.gs_fapi_font_s* %170) #6
  store i32 %call236, i32* %MetricsCount, align 4, !tbaa !29
  %171 = bitcast i32* %mc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  %172 = load i32, i32* %MetricsCount, align 4, !tbaa !29
  %shl = shl i32 %172, 1
  store i32 %shl, i32* %mc, align 4, !tbaa !29
  %173 = load i32, i32* %l, align 4, !tbaa !29
  %174 = load i32, i32* %mc, align 4, !tbaa !29
  %sub238 = sub nsw i32 %173, %174
  %conv239 = trunc i32 %sub238 to i16
  %conv240 = zext i16 %conv239 to i32
  %cmp241 = icmp sgt i32 %conv240, 0
  br i1 %cmp241, label %cond.true.243, label %cond.false.247

cond.true.243:                                    ; preds = %if.then.234
  %175 = load i32, i32* %l, align 4, !tbaa !29
  %176 = load i32, i32* %mc, align 4, !tbaa !29
  %sub244 = sub nsw i32 %175, %176
  %conv245 = trunc i32 %sub244 to i16
  %conv246 = zext i16 %conv245 to i32
  br label %cond.end.248

cond.false.247:                                   ; preds = %if.then.234
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.247, %cond.true.243
  %cond249 = phi i32 [ %conv246, %cond.true.243 ], [ 0, %cond.false.247 ]
  %conv250 = trunc i32 %cond249 to i16
  store i16 %conv250, i16* %glyph_length, align 2, !tbaa !26
  %177 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp251 = icmp ne i8* %177, null
  br i1 %cmp251, label %land.lhs.true.253, label %if.end.270

land.lhs.true.253:                                ; preds = %cond.end.248
  %178 = load i16, i16* %glyph_length, align 2, !tbaa !26
  %conv254 = zext i16 %178 to i32
  %cmp255 = icmp sgt i32 %conv254, 0
  br i1 %cmp255, label %if.then.257, label %if.end.270

if.then.257:                                      ; preds = %land.lhs.true.253
  %179 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %180 = load i8*, i8** %data_ptr, align 8, !tbaa !1
  %181 = load i32, i32* %mc, align 4, !tbaa !29
  %idx.ext = sext i32 %181 to i64
  %add.ptr = getelementptr inbounds i8, i8* %180, i64 %idx.ext
  %182 = load i16, i16* %glyph_length, align 2, !tbaa !26
  %conv258 = zext i16 %182 to i32
  %183 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv259 = zext i16 %183 to i32
  %cmp260 = icmp slt i32 %conv258, %conv259
  br i1 %cmp260, label %cond.true.262, label %cond.false.264

cond.true.262:                                    ; preds = %if.then.257
  %184 = load i16, i16* %glyph_length, align 2, !tbaa !26
  %conv263 = zext i16 %184 to i32
  br label %cond.end.266

cond.false.264:                                   ; preds = %if.then.257
  %185 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv265 = zext i16 %185 to i32
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.264, %cond.true.262
  %cond267 = phi i32 [ %conv263, %cond.true.262 ], [ %conv265, %cond.false.264 ]
  %conv268 = sext i32 %cond267 to i64
  %call269 = call i8* @memcpy(i8* %179, i8* %add.ptr, i64 %conv268) #8
  br label %if.end.270

if.end.270:                                       ; preds = %cond.end.266, %land.lhs.true.253, %cond.end.248
  %186 = bitcast i32* %mc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %MetricsCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  br label %if.end.315

if.else.271:                                      ; preds = %if.else.231
  %188 = bitcast %struct.gs_font_type42_s** %pfont42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  %189 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %189, i32 0, i32 15
  %190 = load i8*, i8** %client_font_data, align 8, !tbaa !61
  %191 = bitcast i8* %190 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %191, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %192 = bitcast i64* %offset0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %192) #1
  %193 = bitcast i64* %length_read to i8*
  call void @llvm.lifetime.start(i64 8, i8* %193) #1
  %194 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %194) #1
  %195 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %196 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %197 = load i32, i32* %char_code.addr, align 4, !tbaa !29
  %call276 = call i32 @sfnt_get_glyph_offset(%struct.ref_s* %195, %struct.gs_font_type42_s* %196, i32 %197, i64* %offset0) #6
  store i32 %call276, i32* %error, align 4, !tbaa !29
  %198 = load i32, i32* %error, align 4, !tbaa !29
  %tobool277 = icmp ne i32 %198, 0
  br i1 %tobool277, label %cond.true.278, label %cond.false.279

cond.true.278:                                    ; preds = %if.else.271
  br label %cond.end.282

cond.false.279:                                   ; preds = %if.else.271
  %199 = load i32, i32* %char_code.addr, align 4, !tbaa !29
  %idxprom = sext i32 %199 to i64
  %200 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42, align 8, !tbaa !1
  %data280 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %200, i32 0, i32 29
  %len_glyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data280, i32 0, i32 20
  %201 = load i32*, i32** %len_glyphs, align 8, !tbaa !112
  %arrayidx281 = getelementptr inbounds i32, i32* %201, i64 %idxprom
  %202 = load i32, i32* %arrayidx281, align 4, !tbaa !29
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.false.279, %cond.true.278
  %cond283 = phi i32 [ -1, %cond.true.278 ], [ %202, %cond.false.279 ]
  %conv284 = trunc i32 %cond283 to i16
  store i16 %conv284, i16* %glyph_length, align 2, !tbaa !26
  %203 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp285 = icmp ne i8* %203, null
  br i1 %cmp285, label %land.lhs.true.287, label %if.end.314

land.lhs.true.287:                                ; preds = %cond.end.282
  %204 = load i32, i32* %error, align 4, !tbaa !29
  %tobool288 = icmp ne i32 %204, 0
  br i1 %tobool288, label %if.end.314, label %if.then.289

if.then.289:                                      ; preds = %land.lhs.true.287
  %205 = bitcast %struct.sfnts_reader_s* %r to i8*
  call void @llvm.lifetime.start(i64 88, i8* %205) #1
  %206 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  call void @sfnts_reader_init(%struct.sfnts_reader_s* %r, %struct.ref_s* %206) #6
  %seek = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %r, i32 0, i32 11
  %207 = load void (%struct.sfnts_reader_s*, i64)*, void (%struct.sfnts_reader_s*, i64)** %seek, align 8, !tbaa !115
  %208 = load i64, i64* %offset0, align 8, !tbaa !30
  call void %207(%struct.sfnts_reader_s* %r, i64 %208) #6
  %rstring = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %r, i32 0, i32 10
  %209 = load i32 (%struct.sfnts_reader_s*, i8*, i32)*, i32 (%struct.sfnts_reader_s*, i8*, i32)** %rstring, align 8, !tbaa !117
  %210 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %211 = load i16, i16* %glyph_length, align 2, !tbaa !26
  %conv291 = zext i16 %211 to i32
  %212 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv292 = zext i16 %212 to i32
  %cmp293 = icmp slt i32 %conv291, %conv292
  br i1 %cmp293, label %cond.true.295, label %cond.false.297

cond.true.295:                                    ; preds = %if.then.289
  %213 = load i16, i16* %glyph_length, align 2, !tbaa !26
  %conv296 = zext i16 %213 to i32
  br label %cond.end.299

cond.false.297:                                   ; preds = %if.then.289
  %214 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv298 = zext i16 %214 to i32
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.297, %cond.true.295
  %cond300 = phi i32 [ %conv296, %cond.true.295 ], [ %conv298, %cond.false.297 ]
  %call301 = call i32 %209(%struct.sfnts_reader_s* %r, i8* %210, i32 %cond300) #6
  %conv302 = sext i32 %call301 to i64
  store i64 %conv302, i64* %length_read, align 8, !tbaa !30
  %error303 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %r, i32 0, i32 6
  %215 = load i32, i32* %error303, align 4, !tbaa !118
  %cmp304 = icmp eq i32 %215, 1
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %cond.end.299
  store i16 -1, i16* %glyph_length, align 2, !tbaa !26
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.306, %cond.end.299
  %error308 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %r, i32 0, i32 6
  %216 = load i32, i32* %error308, align 4, !tbaa !118
  %cmp309 = icmp eq i32 %216, 2
  br i1 %cmp309, label %if.then.311, label %if.end.313

if.then.311:                                      ; preds = %if.end.307
  %217 = load i64, i64* %length_read, align 8, !tbaa !30
  %conv312 = trunc i64 %217 to i16
  store i16 %conv312, i16* %glyph_length, align 2, !tbaa !26
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.311, %if.end.307
  %218 = bitcast %struct.sfnts_reader_s* %r to i8*
  call void @llvm.lifetime.end(i64 88, i8* %218) #1
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %land.lhs.true.287, %cond.end.282
  %219 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i64* %length_read to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast i64* %offset0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast %struct.gs_font_type42_s** %pfont42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.end.270
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.then.230
  %223 = bitcast i32* %render_notdef to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast %struct.ref_s** %render_notdef_ref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.end.76
  %227 = load i16, i16* %glyph_length, align 2, !tbaa !26
  %conv318 = zext i16 %227 to i32
  store i32 %conv318, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.319

cleanup.319:                                      ; preds = %if.end.317, %cleanup.71
  %228 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %229 = bitcast i16* %glyph_length to i8*
  call void @llvm.lifetime.end(i64 2, i8* %229) #1
  %230 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = load i32, i32* %retval
  ret i32 %231
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @FAPI_FF_serialize_tt_font(%struct.gs_fapi_font_s* %ff, i8* %buf, i32 %buf_size) #0 {
entry:
  %retval = alloca i16, align 2
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_size.addr = alloca i32, align 4
  %pdr = alloca %struct.ref_s*, align 8
  %r = alloca %struct.sfnts_reader_s, align 8
  %w = alloca %struct.sfnts_writer_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_size, i32* %buf_size.addr, align 4, !tbaa !29
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 16
  %2 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %client_data, align 8, !tbaa !63
  %5 = bitcast i8* %4 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %6 = bitcast %struct.sfnts_reader_s* %r to i8*
  call void @llvm.lifetime.start(i64 88, i8* %6) #1
  %7 = bitcast %struct.sfnts_writer_s* %w to i8*
  call void @llvm.lifetime.start(i64 56, i8* %7) #1
  %8 = bitcast %struct.sfnts_writer_s* %w to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.sfnts_writer_s* @sfnts_writer_stub to i8*), i64 56, i32 8, i1 false), !tbaa.struct !119
  %9 = load i32, i32* %buf_size.addr, align 4, !tbaa !29
  %buf_size1 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %w, i32 0, i32 2
  store i32 %9, i32* %buf_size1, align 4, !tbaa !120
  %10 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %w, i32 0, i32 1
  store i8* %10, i8** %p, align 8, !tbaa !122
  %buf2 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %w, i32 0, i32 0
  store i8* %10, i8** %buf2, align 8, !tbaa !123
  %11 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  call void @sfnts_reader_init(%struct.sfnts_reader_s* %r, %struct.ref_s* %11) #6
  %call = call i64 @sfnts_copy_except_glyf(%struct.sfnts_reader_s* %r, %struct.sfnts_writer_s* %w) #6
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i16 1, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %error = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %r, i32 0, i32 6
  %12 = load i32, i32* %error, align 4, !tbaa !118
  %conv = trunc i32 %12 to i16
  store i16 %conv, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.sfnts_writer_s* %w to i8*
  call void @llvm.lifetime.end(i64 56, i8* %13) #1
  %14 = bitcast %struct.sfnts_reader_s* %r to i8*
  call void @llvm.lifetime.end(i64 88, i8* %14) #1
  %15 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i16, i16* %retval
  ret i16 %16
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @FAPI_FF_get_charstring(%struct.gs_fapi_font_s* %ff, i32 %index, i8* %buf, i16 zeroext %buf_length) #0 {
entry:
  %retval = alloca i16, align 2
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %index.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i16, align 2
  %pdr = alloca %struct.ref_s*, align 8
  %CharStrings = alloca %struct.ref_s*, align 8
  %eltp = alloca [2 x %struct.ref_s], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i16 %buf_length, i16* %buf_length.addr, align 2, !tbaa !26
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 16
  %2 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %client_data, align 8, !tbaa !63
  %5 = bitcast i8* %4 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [2 x %struct.ref_s]* %eltp to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %CharStrings) #6
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %CharStrings, align 8, !tbaa !1
  %10 = load i32, i32* %index.addr, align 4, !tbaa !29
  %arraydecay = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %eltp, i32 0, i32 0
  %call1 = call i32 @dict_index_entry(%struct.ref_s* %9, i32 %10, %struct.ref_s* %arraydecay) #6
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.4
  %12 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv = zext i16 %12 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.17

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %13 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv7 = zext i16 %13 to i32
  %arrayidx = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %eltp, i32 0, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %14 = load i32, i32* %rsize, align 4, !tbaa !33
  %cmp8 = icmp uge i32 %conv7, %14
  br i1 %cmp8, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %land.lhs.true.6
  %15 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %eltp, i32 0, i64 1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx11, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %16 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %eltp, i32 0, i64 1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx12, i32 0, i32 0
  %rsize14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 2
  %17 = load i32, i32* %rsize14, align 4, !tbaa !33
  %conv15 = zext i32 %17 to i64
  %call16 = call i8* @memcpy(i8* %15, i8* %16, i64 %conv15) #8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.10, %land.lhs.true.6, %land.lhs.true, %if.end.4
  %arrayidx18 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %eltp, i32 0, i64 1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 0
  %rsize20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 2
  %18 = load i32, i32* %rsize20, align 4, !tbaa !33
  %conv21 = trunc i32 %18 to i16
  store i16 %conv21, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.3, %if.then
  %19 = bitcast [2 x %struct.ref_s]* %eltp to i8*
  call void @llvm.lifetime.end(i64 32, i8* %19) #1
  %20 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i16, i16* %retval
  ret i16 %22
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @FAPI_FF_get_charstring_name(%struct.gs_fapi_font_s* %ff, i32 %index, i8* %buf, i16 zeroext %buf_length) #0 {
entry:
  %retval = alloca i16, align 2
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %index.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i16, align 2
  %pdr = alloca %struct.ref_s*, align 8
  %CharStrings = alloca %struct.ref_s*, align 8
  %eltp = alloca [2 x %struct.ref_s], align 16
  %string = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i16 %buf_length, i16* %buf_length.addr, align 2, !tbaa !26
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 16
  %2 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %client_data, align 8, !tbaa !63
  %5 = bitcast i8* %4 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [2 x %struct.ref_s]* %eltp to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast %struct.ref_s* %string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %CharStrings) #6
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %CharStrings, align 8, !tbaa !1
  %11 = load i32, i32* %index.addr, align 4, !tbaa !29
  %arraydecay = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %eltp, i32 0, i32 0
  %call1 = call i32 @dict_index_entry(%struct.ref_s* %10, i32 %11, %struct.ref_s* %arraydecay) #6
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %12, i32 0, i32 2
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 2
  %14 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %14, i32 0, i32 16
  %15 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %eltp, i32 0, i64 0
  call void @names_string_ref(%struct.name_table_s* %15, %struct.ref_s* %arrayidx, %struct.ref_s* %string) #6
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !33
  %17 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv = zext i16 %17 to i32
  %cmp5 = icmp ugt i32 %16, %conv
  br i1 %cmp5, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  %18 = load i32, i32* %rsize9, align 4, !tbaa !33
  %conv10 = trunc i32 %18 to i16
  store i16 %conv10, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.4
  %19 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %20 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 2
  %21 = load i32, i32* %rsize13, align 4, !tbaa !33
  %conv14 = zext i32 %21 to i64
  %call15 = call i8* @memcpy(i8* %19, i8* %20, i64 %conv14) #8
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 2
  %22 = load i32, i32* %rsize17, align 4, !tbaa !33
  %idxprom = zext i32 %22 to i64
  %23 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %23, i64 %idxprom
  store i8 0, i8* %arrayidx18, align 1, !tbaa !19
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %string, i32 0, i32 0
  %rsize20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 2
  %24 = load i32, i32* %rsize20, align 4, !tbaa !33
  %conv21 = trunc i32 %24 to i16
  store i16 %conv21, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.7, %if.then.3, %if.then
  %25 = bitcast %struct.ref_s* %string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #1
  %26 = bitcast [2 x %struct.ref_s]* %eltp to i8*
  call void @llvm.lifetime.end(i64 32, i8* %26) #1
  %27 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i16, i16* %retval
  ret i16 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @ps_get_GlyphDirectory_data_ptr(%struct.gs_fapi_font_s* %ff, i32 %char_code, i8** %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %char_code.addr = alloca i32, align 4
  %ptr.addr = alloca i8**, align 8
  %pdr = alloca %struct.ref_s*, align 8
  %GlyphDirectory = alloca %struct.ref_s*, align 8
  %glyph0 = alloca %struct.ref_s, align 8
  %glyph = alloca %struct.ref_s*, align 8
  %glyph_index = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %char_code, i32* %char_code.addr, align 4, !tbaa !29
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 16
  %2 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %3 = bitcast i8* %2 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %client_data, align 8, !tbaa !63
  %5 = bitcast i8* %4 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %GlyphDirectory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.ref_s* %glyph0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.ref_s** %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.ref_s* %glyph0, %struct.ref_s** %glyph, align 8, !tbaa !1
  %9 = bitcast %struct.ref_s* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), %struct.ref_s** %GlyphDirectory) #6
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %GlyphDirectory, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %12 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %13 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %14 = load i32, i32* %char_code.addr, align 4, !tbaa !29
  %conv3 = sext i32 %14 to i64
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph_index, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv3, i64* %intval, align 8, !tbaa !30
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph_index, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  store i16 2816, i16* %type_attrs5, align 2, !tbaa !27
  %15 = load %struct.ref_s*, %struct.ref_s** %GlyphDirectory, align 8, !tbaa !1
  %call6 = call i32 @dict_find(%struct.ref_s* %15, %struct.ref_s* %glyph_index, %struct.ref_s** %glyph) #6
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %16 = load %struct.ref_s*, %struct.ref_s** %GlyphDirectory, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %17 = bitcast i16* %type_attrs10 to i8*
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx11, align 1, !tbaa !19
  %conv12 = zext i8 %18 to i32
  %cmp13 = icmp eq i32 %conv12, 4
  br i1 %cmp13, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %lor.lhs.false
  %19 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %19, i32 0, i32 2
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %21 = load %struct.ref_s*, %struct.ref_s** %GlyphDirectory, align 8, !tbaa !1
  %22 = load i32, i32* %char_code.addr, align 4, !tbaa !29
  %conv16 = sext i32 %22 to i64
  %call17 = call i32 @array_get(%struct.gs_memory_s* %20, %struct.ref_s* %21, i64 %conv16, %struct.ref_s* %glyph0) #6
  %cmp18 = icmp sge i32 %call17, 0
  br i1 %cmp18, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %land.lhs.true.15, %land.lhs.true
  %23 = load %struct.ref_s*, %struct.ref_s** %glyph, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  %24 = bitcast i16* %type_attrs22 to i8*
  %arrayidx23 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx23, align 1, !tbaa !19
  %conv24 = zext i8 %25 to i32
  %cmp25 = icmp eq i32 %conv24, 18
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true.20
  %26 = load %struct.ref_s*, %struct.ref_s** %glyph, align 8, !tbaa !1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value28 to i8**
  %27 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %28 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  store i8* %27, i8** %28, align 8, !tbaa !1
  %29 = load %struct.ref_s*, %struct.ref_s** %glyph, align 8, !tbaa !1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 2
  %30 = load i32, i32* %rsize, align 4, !tbaa !33
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.20, %land.lhs.true.15, %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else, %if.then.27
  %31 = bitcast %struct.ref_s* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 16, i8* %31) #1
  %32 = bitcast %struct.ref_s** %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.ref_s* %glyph0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  %34 = bitcast %struct.ref_s** %GlyphDirectory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @ps_get_glyphname_or_cid(%struct.gs_font_base_s* %pbfont, %struct.gs_string_s* %charstring, %struct.gs_string_s* %name, i32 %ccode, %struct.gs_string_s* %enc_char_name, i8* %font_file_path, %struct.gs_fapi_char_ref* %cr, i32 %bCID) #0 {
entry:
  %retval = alloca i32, align 4
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %charstring.addr = alloca %struct.gs_string_s*, align 8
  %name.addr = alloca %struct.gs_string_s*, align 8
  %ccode.addr = alloca i32, align 4
  %enc_char_name.addr = alloca %struct.gs_string_s*, align 8
  %font_file_path.addr = alloca i8*, align 8
  %cr.addr = alloca %struct.gs_fapi_char_ref*, align 8
  %bCID.addr = alloca i32, align 4
  %pdr = alloca %struct.ref_s*, align 8
  %client_char_code = alloca i32, align 4
  %char_name = alloca %struct.ref_s, align 8
  %cname_str = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %I = alloca %struct.gs_fapi_server_s*, align 8
  %is_TT_from_type42 = alloca i32, align 4
  %is_glyph_index = alloca i32, align 4
  %is_embedded_type1 = alloca i32, align 4
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %Encoding = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %Decoding = alloca %struct.ref_s*, align 8
  %TT_cmap = alloca %struct.ref_s*, align 8
  %SubstNWP = alloca %struct.ref_s*, align 8
  %src_type = alloca %struct.ref_s, align 8
  %dst_type = alloca %struct.ref_s, align 8
  %c = alloca i32, align 4
  %DecodingArray = alloca %struct.ref_s*, align 8
  %char_code = alloca %struct.ref_s, align 8
  %char_code1 = alloca %struct.ref_s, align 8
  %ih = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %CIDSystemInfo = alloca %struct.ref_s*, align 8
  %Ordering = alloca %struct.ref_s*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp257 = alloca i32, align 4
  %CIDMap = alloca %struct.ref_s*, align 8
  %Map = alloca i8*, align 8
  %c_code = alloca i32, align 4
  %gdb = alloca i32, align 4
  %i309 = alloca i32, align 4
  %GDBytes = alloca %struct.ref_s*, align 8
  %cstr = alloca %struct.ref_s*, align 8
  %refcode = alloca %struct.ref_s*, align 8
  %CharStrings = alloca %struct.ref_s*, align 8
  %glyph_index = alloca %struct.ref_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %es_code_ = alloca i32, align 4
  %Encoding555 = alloca %struct.ref_s*, align 8
  %glyph = alloca %struct.ref_s, align 8
  %can_retrieve_char_by_name = alloca i32, align 4
  %p588 = alloca i8*, align 8
  %Decoding621 = alloca %struct.ref_s*, align 8
  %char_code623 = alloca %struct.ref_s*, align 8
  %c_code651 = alloca i32, align 4
  %i672 = alloca i32, align 4
  %v = alloca %struct.ref_s, align 8
  %buf = alloca [16 x i8], align 16
  %l = alloca i32, align 4
  %sname = alloca %struct.ref_s, align 8
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %charstring, %struct.gs_string_s** %charstring.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %name, %struct.gs_string_s** %name.addr, align 8, !tbaa !1
  store i32 %ccode, i32* %ccode.addr, align 4, !tbaa !29
  store %struct.gs_string_s* %enc_char_name, %struct.gs_string_s** %enc_char_name.addr, align 8, !tbaa !1
  store i8* %font_file_path, i8** %font_file_path.addr, align 8, !tbaa !1
  store %struct.gs_fapi_char_ref* %cr, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  store i32 %bCID, i32* %bCID.addr, align 4, !tbaa !29
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !63
  %3 = bitcast i8* %2 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %3, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %4 = bitcast i32* %client_char_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %ccode.addr, align 4, !tbaa !29
  store i32 %5, i32* %client_char_code, align 4, !tbaa !29
  %6 = bitcast %struct.ref_s* %char_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast %struct.ref_s* %cname_str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %code, align 4, !tbaa !29
  %9 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %10, i32 0, i32 25
  %11 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !36
  store %struct.gs_fapi_server_s* %11, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %12 = bitcast i32* %is_TT_from_type42 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %13, i32 0, i32 11
  %14 = load i32, i32* %FontType, align 4, !tbaa !95
  %cmp = icmp eq i32 %14, 42
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %15 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %15, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  store i32 %land.ext, i32* %is_TT_from_type42, align 4, !tbaa !29
  %17 = bitcast i32* %is_glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %is_glyph_index, align 4, !tbaa !29
  %18 = bitcast i32* %is_embedded_type1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontType2 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %19, i32 0, i32 11
  %20 = load i32, i32* %FontType2, align 4, !tbaa !95
  %cmp3 = icmp eq i32 %20, 1
  br i1 %cmp3, label %land.rhs.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %21 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontType4 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %21, i32 0, i32 11
  %22 = load i32, i32* %FontType4, align 4, !tbaa !95
  %cmp5 = icmp eq i32 %22, 2
  br i1 %cmp5, label %land.rhs.6, label %land.end.8

land.rhs.6:                                       ; preds = %lor.lhs.false, %land.end
  %23 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %23, null
  br label %land.end.8

land.end.8:                                       ; preds = %land.rhs.6, %lor.lhs.false
  %24 = phi i1 [ false, %lor.lhs.false ], [ %cmp7, %land.rhs.6 ]
  %land.ext9 = zext i1 %24 to i32
  store i32 %land.ext9, i32* %is_embedded_type1, align 4, !tbaa !29
  %25 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %client_ctx_p = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %26, i32 0, i32 1
  %27 = load i8*, i8** %client_ctx_p, align 8, !tbaa !55
  %28 = bitcast i8* %27 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %28, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %29 = load i32, i32* %bCID.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.end.8
  %30 = load i32, i32* %ccode.addr, align 4, !tbaa !29
  store i32 %30, i32* %client_char_code, align 4, !tbaa !29
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %char_name, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !27
  %31 = load %struct.gs_string_s*, %struct.gs_string_s** %enc_char_name.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %31, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !106
  %32 = load %struct.gs_string_s*, %struct.gs_string_s** %enc_char_name.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %32, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !108
  br label %if.end.70

if.else:                                          ; preds = %land.end.8
  %33 = load i32, i32* %ccode.addr, align 4, !tbaa !29
  %cmp10 = icmp sge i32 %33, 0
  br i1 %cmp10, label %if.then.11, label %if.else.46

if.then.11:                                       ; preds = %if.else
  %34 = bitcast %struct.ref_s** %Encoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load i32, i32* %ccode.addr, align 4, !tbaa !29
  store i32 %35, i32* %client_char_code, align 4, !tbaa !29
  %36 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), %struct.ref_s** %Encoding) #6
  %cmp12 = icmp sgt i32 %call, 0
  br i1 %cmp12, label %land.lhs.true, label %if.else.44

land.lhs.true:                                    ; preds = %if.then.11
  %37 = load %struct.ref_s*, %struct.ref_s** %Encoding, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %38 = bitcast i16* %type_attrs14 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %39 to i32
  %cmp15 = icmp eq i32 %conv, 4
  br i1 %cmp15, label %if.then.31, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true
  %40 = load %struct.ref_s*, %struct.ref_s** %Encoding, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %41 = bitcast i16* %type_attrs19 to i8*
  %arrayidx20 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx20, align 1, !tbaa !19
  %conv21 = zext i8 %42 to i32
  %cmp22 = icmp eq i32 %conv21, 6
  br i1 %cmp22, label %if.then.31, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.17
  %43 = load %struct.ref_s*, %struct.ref_s** %Encoding, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %44 = bitcast i16* %type_attrs26 to i8*
  %arrayidx27 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx27, align 1, !tbaa !19
  %conv28 = zext i8 %45 to i32
  %cmp29 = icmp eq i32 %conv28, 5
  br i1 %cmp29, label %if.then.31, label %if.else.44

if.then.31:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.17, %land.lhs.true
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %49 = load %struct.ref_s*, %struct.ref_s** %Encoding, align 8, !tbaa !1
  %50 = load i32, i32* %client_char_code, align 4, !tbaa !29
  %conv32 = sext i32 %50 to i64
  %call33 = call i32 @array_get(%struct.gs_memory_s* %48, %struct.ref_s* %49, i64 %conv32, %struct.ref_s* %char_name) #6
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.43

if.then.36:                                       ; preds = %if.then.31
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %current38 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory37, i32 0, i32 0
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current38, align 8, !tbaa !20
  %53 = bitcast %struct.gs_ref_memory_s* %52 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 2
  %54 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %54, i32 0, i32 16
  %55 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  %call39 = call i32 @names_ref(%struct.name_table_s* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 7, %struct.ref_s* %char_name, i32 -1) #6
  store i32 %call39, i32* %code, align 4, !tbaa !29
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.then.36
  %56 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.36
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %if.then.31
  br label %if.end.45

if.else.44:                                       ; preds = %lor.lhs.false.24, %if.then.11
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.43
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.else.44, %if.then.42
  %57 = bitcast %struct.ref_s** %Encoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.790 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.54

if.else.46:                                       ; preds = %if.else
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 1
  %current48 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory47, i32 0, i32 0
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current48, align 8, !tbaa !20
  %60 = bitcast %struct.gs_ref_memory_s* %59 to %struct.gs_memory_s*
  %gs_lib_ctx49 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 2
  %61 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx49, align 8, !tbaa !21
  %gs_name_table50 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %61, i32 0, i32 16
  %62 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table50, align 8, !tbaa !24
  %63 = load %struct.gs_string_s*, %struct.gs_string_s** %name.addr, align 8, !tbaa !1
  %data51 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %63, i32 0, i32 0
  %64 = load i8*, i8** %data51, align 8, !tbaa !106
  %65 = load %struct.gs_string_s*, %struct.gs_string_s** %name.addr, align 8, !tbaa !1
  %size52 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %65, i32 0, i32 1
  %66 = load i32, i32* %size52, align 4, !tbaa !108
  %call53 = call i32 @names_ref(%struct.name_table_s* %62, i8* %64, i32 %66, %struct.ref_s* %char_name, i32 0) #6
  store i32 %call53, i32* %code, align 4, !tbaa !29
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.46, %cleanup.cont
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %char_name, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  %67 = bitcast i16* %type_attrs56 to i8*
  %arrayidx57 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx57, align 1, !tbaa !19
  %conv58 = zext i8 %68 to i32
  %cmp59 = icmp eq i32 %conv58, 13
  br i1 %cmp59, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.end.54
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.790

if.end.62:                                        ; preds = %if.end.54
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 1
  %current64 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory63, i32 0, i32 0
  %70 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current64, align 8, !tbaa !20
  %71 = bitcast %struct.gs_ref_memory_s* %70 to %struct.gs_memory_s*
  %gs_lib_ctx65 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 2
  %72 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx65, align 8, !tbaa !21
  %gs_name_table66 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %72, i32 0, i32 16
  %73 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table66, align 8, !tbaa !24
  call void @names_string_ref(%struct.name_table_s* %73, %struct.ref_s* %char_name, %struct.ref_s* %cname_str) #6
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cname_str, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %74 = load i8*, i8** %bytes, align 8, !tbaa !1
  %75 = load %struct.gs_string_s*, %struct.gs_string_s** %enc_char_name.addr, align 8, !tbaa !1
  %data67 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %75, i32 0, i32 0
  store i8* %74, i8** %data67, align 8, !tbaa !106
  %tas68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cname_str, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas68, i32 0, i32 2
  %76 = load i32, i32* %rsize, align 4, !tbaa !33
  %77 = load %struct.gs_string_s*, %struct.gs_string_s** %enc_char_name.addr, align 8, !tbaa !1
  %size69 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %77, i32 0, i32 1
  store i32 %76, i32* %size69, align 4, !tbaa !108
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.62, %if.then
  %78 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes_count = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %78, i32 0, i32 2
  store i32 1, i32* %char_codes_count, align 4, !tbaa !124
  %79 = load i32, i32* %bCID.addr, align 4, !tbaa !29
  %tobool71 = icmp ne i32 %79, 0
  br i1 %tobool71, label %if.then.72, label %if.else.418

if.then.72:                                       ; preds = %if.end.70
  %80 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %cmp73 = icmp ne i8* %80, null
  br i1 %cmp73, label %if.then.75, label %if.else.303

if.then.75:                                       ; preds = %if.then.72
  %81 = bitcast %struct.ref_s** %Decoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = bitcast %struct.ref_s** %TT_cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = bitcast %struct.ref_s** %SubstNWP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  %84 = bitcast %struct.ref_s* %src_type to i8*
  call void @llvm.lifetime.start(i64 16, i8* %84) #1
  %85 = bitcast %struct.ref_s* %dst_type to i8*
  call void @llvm.lifetime.start(i64 16, i8* %85) #1
  %86 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  store i32 1, i32* %is_glyph_index, align 4, !tbaa !29
  %87 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call76 = call i32 @dict_find_string(%struct.ref_s* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %struct.ref_s** %Decoding) #6
  %cmp77 = icmp sle i32 %call76, 0
  br i1 %cmp77, label %if.then.86, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %if.then.75
  %88 = load %struct.ref_s*, %struct.ref_s** %Decoding, align 8, !tbaa !1
  %tas80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 0
  %type_attrs81 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas80, i32 0, i32 0
  %89 = bitcast i16* %type_attrs81 to i8*
  %arrayidx82 = getelementptr inbounds i8, i8* %89, i64 1
  %90 = load i8, i8* %arrayidx82, align 1, !tbaa !19
  %conv83 = zext i8 %90 to i32
  %cmp84 = icmp eq i32 %conv83, 2
  br i1 %cmp84, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %lor.lhs.false.79, %if.then.75
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.87:                                        ; preds = %lor.lhs.false.79
  %91 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call88 = call i32 @dict_find_string(%struct.ref_s* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), %struct.ref_s** %SubstNWP) #6
  %cmp89 = icmp sle i32 %call88, 0
  br i1 %cmp89, label %if.then.98, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.end.87
  %92 = load %struct.ref_s*, %struct.ref_s** %SubstNWP, align 8, !tbaa !1
  %tas92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 0
  %type_attrs93 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas92, i32 0, i32 0
  %93 = bitcast i16* %type_attrs93 to i8*
  %arrayidx94 = getelementptr inbounds i8, i8* %93, i64 1
  %94 = load i8, i8* %arrayidx94, align 1, !tbaa !19
  %conv95 = zext i8 %94 to i32
  %cmp96 = icmp eq i32 %conv95, 4
  br i1 %cmp96, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %lor.lhs.false.91, %if.end.87
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.99:                                        ; preds = %lor.lhs.false.91
  %95 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call100 = call i32 @dict_find_string(%struct.ref_s* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), %struct.ref_s** %TT_cmap) #6
  %cmp101 = icmp sle i32 %call100, 0
  br i1 %cmp101, label %if.then.110, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.end.99
  %96 = load %struct.ref_s*, %struct.ref_s** %TT_cmap, align 8, !tbaa !1
  %tas104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 0
  %type_attrs105 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas104, i32 0, i32 0
  %97 = bitcast i16* %type_attrs105 to i8*
  %arrayidx106 = getelementptr inbounds i8, i8* %97, i64 1
  %98 = load i8, i8* %arrayidx106, align 1, !tbaa !19
  %conv107 = zext i8 %98 to i32
  %cmp108 = icmp eq i32 %conv107, 2
  br i1 %cmp108, label %if.else.186, label %if.then.110

if.then.110:                                      ; preds = %lor.lhs.false.103, %if.end.99
  %99 = bitcast %struct.ref_s** %DecodingArray to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = bitcast %struct.ref_s* %char_code to i8*
  call void @llvm.lifetime.start(i64 16, i8* %100) #1
  %101 = bitcast %struct.ref_s* %char_code1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %101) #1
  %102 = bitcast %struct.ref_s* %ih to i8*
  call void @llvm.lifetime.start(i64 16, i8* %102) #1
  %103 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = load i32, i32* %client_char_code, align 4, !tbaa !29
  %rem = srem i32 %104, 256
  store i32 %rem, i32* %i, align 4, !tbaa !29
  %105 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = load i32, i32* %client_char_code, align 4, !tbaa !29
  %div = sdiv i32 %106, 256
  %conv111 = sext i32 %div to i64
  %value112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ih, i32 0, i32 1
  %intval = bitcast %union.v* %value112 to i64*
  store i64 %conv111, i64* %intval, align 8, !tbaa !30
  %tas113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %ih, i32 0, i32 0
  %type_attrs114 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas113, i32 0, i32 0
  store i16 2816, i16* %type_attrs114, align 2, !tbaa !27
  %107 = load %struct.ref_s*, %struct.ref_s** %Decoding, align 8, !tbaa !1
  %call115 = call i32 @dict_find(%struct.ref_s* %107, %struct.ref_s* %ih, %struct.ref_s** %DecodingArray) #6
  %cmp116 = icmp sle i32 %call115, 0
  br i1 %cmp116, label %if.then.132, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.then.110
  %108 = load %struct.ref_s*, %struct.ref_s** %DecodingArray, align 8, !tbaa !1
  %tas119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 0
  %type_attrs120 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas119, i32 0, i32 0
  %109 = bitcast i16* %type_attrs120 to i8*
  %arrayidx121 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = load i8, i8* %arrayidx121, align 1, !tbaa !19
  %conv122 = zext i8 %110 to i32
  %cmp123 = icmp eq i32 %conv122, 4
  br i1 %cmp123, label %lor.lhs.false.125, label %if.then.132

lor.lhs.false.125:                                ; preds = %lor.lhs.false.118
  %111 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory126 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %111, i32 0, i32 1
  %current127 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory126, i32 0, i32 0
  %112 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current127, align 8, !tbaa !20
  %113 = bitcast %struct.gs_ref_memory_s* %112 to %struct.gs_memory_s*
  %114 = load %struct.ref_s*, %struct.ref_s** %DecodingArray, align 8, !tbaa !1
  %115 = load i32, i32* %i, align 4, !tbaa !29
  %conv128 = sext i32 %115 to i64
  %call129 = call i32 @array_get(%struct.gs_memory_s* %113, %struct.ref_s* %114, i64 %conv128, %struct.ref_s* %char_code) #6
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %lor.lhs.false.125, %lor.lhs.false.118, %if.then.110
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.133:                                       ; preds = %lor.lhs.false.125
  %tas134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %char_code, i32 0, i32 0
  %type_attrs135 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas134, i32 0, i32 0
  %116 = bitcast i16* %type_attrs135 to i8*
  %arrayidx136 = getelementptr inbounds i8, i8* %116, i64 1
  %117 = load i8, i8* %arrayidx136, align 1, !tbaa !19
  %conv137 = zext i8 %117 to i32
  %cmp138 = icmp eq i32 %conv137, 11
  br i1 %cmp138, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %if.end.133
  store i32 1, i32* %n, align 4, !tbaa !29
  br label %if.end.153

if.else.141:                                      ; preds = %if.end.133
  %tas142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %char_code, i32 0, i32 0
  %type_attrs143 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas142, i32 0, i32 0
  %118 = bitcast i16* %type_attrs143 to i8*
  %arrayidx144 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx144, align 1, !tbaa !19
  %conv145 = zext i8 %119 to i32
  %cmp146 = icmp eq i32 %conv145, 4
  br i1 %cmp146, label %if.then.148, label %if.else.151

if.then.148:                                      ; preds = %if.else.141
  store %struct.ref_s* %char_code, %struct.ref_s** %DecodingArray, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !29
  %120 = load %struct.ref_s*, %struct.ref_s** %DecodingArray, align 8, !tbaa !1
  %tas149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i32 0, i32 0
  %rsize150 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas149, i32 0, i32 2
  %121 = load i32, i32* %rsize150, align 4, !tbaa !33
  store i32 %121, i32* %n, align 4, !tbaa !29
  br label %if.end.152

if.else.151:                                      ; preds = %if.else.141
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.152:                                       ; preds = %if.then.148
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.140
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.153
  %122 = load i32, i32* %n, align 4, !tbaa !29
  %dec = add nsw i32 %122, -1
  store i32 %dec, i32* %n, align 4, !tbaa !29
  %tobool154 = icmp ne i32 %122, 0
  br i1 %tobool154, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %123 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory155 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %123, i32 0, i32 1
  %current156 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory155, i32 0, i32 0
  %124 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current156, align 8, !tbaa !20
  %125 = bitcast %struct.gs_ref_memory_s* %124 to %struct.gs_memory_s*
  %126 = load %struct.ref_s*, %struct.ref_s** %DecodingArray, align 8, !tbaa !1
  %127 = load i32, i32* %i, align 4, !tbaa !29
  %conv157 = sext i32 %127 to i64
  %call158 = call i32 @array_get(%struct.gs_memory_s* %125, %struct.ref_s* %126, i64 %conv157, %struct.ref_s* %char_code1) #6
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %if.then.168, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %for.body
  %tas162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %char_code1, i32 0, i32 0
  %type_attrs163 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas162, i32 0, i32 0
  %128 = bitcast i16* %type_attrs163 to i8*
  %arrayidx164 = getelementptr inbounds i8, i8* %128, i64 1
  %129 = load i8, i8* %arrayidx164, align 1, !tbaa !19
  %conv165 = zext i8 %129 to i32
  %cmp166 = icmp eq i32 %conv165, 11
  br i1 %cmp166, label %if.end.169, label %if.then.168

if.then.168:                                      ; preds = %lor.lhs.false.161, %for.body
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.169:                                       ; preds = %lor.lhs.false.161
  %value170 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %char_code1, i32 0, i32 1
  %intval171 = bitcast %union.v* %value170 to i64*
  %130 = load i64, i64* %intval171, align 8, !tbaa !30
  %conv172 = trunc i64 %130 to i32
  store i32 %conv172, i32* %c, align 4, !tbaa !29
  %131 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %check_cmap_for_GID = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %131, i32 0, i32 25
  %132 = load i32 (%struct.gs_fapi_server_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, i32*)** %check_cmap_for_GID, align 8, !tbaa !126
  %133 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %call173 = call i32 %132(%struct.gs_fapi_server_s* %133, i32* %c) #6
  %134 = load i32, i32* %c, align 4, !tbaa !29
  %cmp174 = icmp ne i32 %134, 0
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %if.end.169
  br label %for.end

if.end.177:                                       ; preds = %if.end.169
  br label %for.inc

for.inc:                                          ; preds = %if.end.177
  %135 = load i32, i32* %i, align 4, !tbaa !29
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %if.then.176, %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.178

cleanup.178:                                      ; preds = %for.end, %if.then.168, %if.else.151, %if.then.132
  %136 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast %struct.ref_s* %ih to i8*
  call void @llvm.lifetime.end(i64 16, i8* %138) #1
  %139 = bitcast %struct.ref_s* %char_code1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %139) #1
  %140 = bitcast %struct.ref_s* %char_code to i8*
  call void @llvm.lifetime.end(i64 16, i8* %140) #1
  %141 = bitcast %struct.ref_s** %DecodingArray to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %cleanup.dest.184 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.184, label %cleanup.295 [
    i32 0, label %cleanup.cont.185
  ]

cleanup.cont.185:                                 ; preds = %cleanup.178
  br label %if.end.291

if.else.186:                                      ; preds = %lor.lhs.false.103
  %142 = bitcast %struct.ref_s** %CIDSystemInfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #1
  %143 = bitcast %struct.ref_s** %Ordering to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  %144 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call187 = call i32 @dict_find_string(%struct.ref_s* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), %struct.ref_s** %CIDSystemInfo) #6
  %cmp188 = icmp sge i32 %call187, 0
  br i1 %cmp188, label %land.lhs.true.190, label %if.else.277

land.lhs.true.190:                                ; preds = %if.else.186
  %145 = load %struct.ref_s*, %struct.ref_s** %CIDSystemInfo, align 8, !tbaa !1
  %tas191 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %145, i32 0, i32 0
  %type_attrs192 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas191, i32 0, i32 0
  %146 = bitcast i16* %type_attrs192 to i8*
  %arrayidx193 = getelementptr inbounds i8, i8* %146, i64 1
  %147 = load i8, i8* %arrayidx193, align 1, !tbaa !19
  %conv194 = zext i8 %147 to i32
  %cmp195 = icmp eq i32 %conv194, 2
  br i1 %cmp195, label %land.lhs.true.197, label %if.else.277

land.lhs.true.197:                                ; preds = %land.lhs.true.190
  %148 = load %struct.ref_s*, %struct.ref_s** %CIDSystemInfo, align 8, !tbaa !1
  %call198 = call i32 @dict_find_string(%struct.ref_s* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), %struct.ref_s** %Ordering) #6
  %cmp199 = icmp sge i32 %call198, 0
  br i1 %cmp199, label %land.lhs.true.201, label %if.else.277

land.lhs.true.201:                                ; preds = %land.lhs.true.197
  %149 = load %struct.ref_s*, %struct.ref_s** %Ordering, align 8, !tbaa !1
  %tas202 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %149, i32 0, i32 0
  %type_attrs203 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas202, i32 0, i32 0
  %150 = bitcast i16* %type_attrs203 to i8*
  %arrayidx204 = getelementptr inbounds i8, i8* %150, i64 1
  %151 = load i8, i8* %arrayidx204, align 1, !tbaa !19
  %conv205 = zext i8 %151 to i32
  %cmp206 = icmp eq i32 %conv205, 18
  br i1 %cmp206, label %land.lhs.true.208, label %if.else.277

land.lhs.true.208:                                ; preds = %land.lhs.true.201
  %call209 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0)) #7
  %cmp210 = icmp ult i64 %call209, 8
  br i1 %cmp210, label %cond.true, label %cond.false.261

cond.true:                                        ; preds = %land.lhs.true.208
  %152 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %152) #1
  %153 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.45 to i64)), i64 1), label %land.lhs.true.212, label %cond.false

land.lhs.true.212:                                ; preds = %cond.true
  %call213 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0)) #7
  store i64 %call213, i64* %__s2_len, align 8, !tbaa !30
  %154 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp214 = icmp ult i64 %154, 4
  br i1 %cmp214, label %cond.true.216, label %cond.false

cond.true.216:                                    ; preds = %land.lhs.true.212
  %155 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #1
  %156 = load %struct.ref_s*, %struct.ref_s** %Ordering, align 8, !tbaa !1
  %value218 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %156, i32 0, i32 1
  %bytes219 = bitcast %union.v* %value218 to i8**
  %157 = load i8*, i8** %bytes219, align 8, !tbaa !1
  store i8* %157, i8** %__s1, align 8, !tbaa !1
  %158 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #1
  %159 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i8, i8* %159, i64 0
  %160 = load i8, i8* %arrayidx221, align 1, !tbaa !19
  %conv222 = zext i8 %160 to i32
  %161 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), align 1, !tbaa !19
  %conv223 = zext i8 %161 to i32
  %sub = sub nsw i32 %conv222, %conv223
  store i32 %sub, i32* %__result, align 4, !tbaa !29
  %162 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp224 = icmp ugt i64 %162, 0
  br i1 %cmp224, label %land.lhs.true.226, label %if.end.256

land.lhs.true.226:                                ; preds = %cond.true.216
  %163 = load i32, i32* %__result, align 4, !tbaa !29
  %cmp227 = icmp eq i32 %163, 0
  br i1 %cmp227, label %if.then.229, label %if.end.256

if.then.229:                                      ; preds = %land.lhs.true.226
  %164 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds i8, i8* %164, i64 1
  %165 = load i8, i8* %arrayidx230, align 1, !tbaa !19
  %conv231 = zext i8 %165 to i32
  %166 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i64 1), align 1, !tbaa !19
  %conv232 = zext i8 %166 to i32
  %sub233 = sub nsw i32 %conv231, %conv232
  store i32 %sub233, i32* %__result, align 4, !tbaa !29
  %167 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp234 = icmp ugt i64 %167, 1
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.255

land.lhs.true.236:                                ; preds = %if.then.229
  %168 = load i32, i32* %__result, align 4, !tbaa !29
  %cmp237 = icmp eq i32 %168, 0
  br i1 %cmp237, label %if.then.239, label %if.end.255

if.then.239:                                      ; preds = %land.lhs.true.236
  %169 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i8, i8* %169, i64 2
  %170 = load i8, i8* %arrayidx240, align 1, !tbaa !19
  %conv241 = zext i8 %170 to i32
  %171 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i64 2), align 1, !tbaa !19
  %conv242 = zext i8 %171 to i32
  %sub243 = sub nsw i32 %conv241, %conv242
  store i32 %sub243, i32* %__result, align 4, !tbaa !29
  %172 = load i64, i64* %__s2_len, align 8, !tbaa !30
  %cmp244 = icmp ugt i64 %172, 2
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.254

land.lhs.true.246:                                ; preds = %if.then.239
  %173 = load i32, i32* %__result, align 4, !tbaa !29
  %cmp247 = icmp eq i32 %173, 0
  br i1 %cmp247, label %if.then.249, label %if.end.254

if.then.249:                                      ; preds = %land.lhs.true.246
  %174 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i8, i8* %174, i64 3
  %175 = load i8, i8* %arrayidx250, align 1, !tbaa !19
  %conv251 = zext i8 %175 to i32
  %176 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i64 3), align 1, !tbaa !19
  %conv252 = zext i8 %176 to i32
  %sub253 = sub nsw i32 %conv251, %conv252
  store i32 %sub253, i32* %__result, align 4, !tbaa !29
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.249, %land.lhs.true.246, %if.then.239
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %land.lhs.true.236, %if.then.229
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %land.lhs.true.226, %cond.true.216
  %177 = load i32, i32* %__result, align 4, !tbaa !29
  store i32 %177, i32* %tmp257, !tbaa !29
  %178 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = load i32, i32* %tmp257, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.212, %cond.true
  %181 = load %struct.ref_s*, %struct.ref_s** %Ordering, align 8, !tbaa !1
  %value258 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %181, i32 0, i32 1
  %bytes259 = bitcast %union.v* %value258 to i8**
  %182 = load i8*, i8** %bytes259, align 8, !tbaa !1
  %call260 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.256
  %cond = phi i32 [ %180, %if.end.256 ], [ %call260, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !29
  %183 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = load i32, i32* %tmp, !tbaa !29
  br label %cond.end.265

cond.false.261:                                   ; preds = %land.lhs.true.208
  %186 = load %struct.ref_s*, %struct.ref_s** %Ordering, align 8, !tbaa !1
  %value262 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %186, i32 0, i32 1
  %bytes263 = bitcast %union.v* %value262 to i8**
  %187 = load i8*, i8** %bytes263, align 8, !tbaa !1
  %call264 = call i32 @strncmp(i8* %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i64 8) #7
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.261, %cond.end
  %cond266 = phi i32 [ %185, %cond.end ], [ %call264, %cond.false.261 ]
  %cmp267 = icmp ne i32 %cond266, 0
  br i1 %cmp267, label %if.then.269, label %if.else.277

if.then.269:                                      ; preds = %cond.end.265
  %188 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory270 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %188, i32 0, i32 1
  %current271 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory270, i32 0, i32 0
  %189 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current271, align 8, !tbaa !20
  %190 = bitcast %struct.gs_ref_memory_s* %189 to %struct.gs_memory_s*
  %191 = load %struct.ref_s*, %struct.ref_s** %Decoding, align 8, !tbaa !1
  %192 = load %struct.ref_s*, %struct.ref_s** %TT_cmap, align 8, !tbaa !1
  %193 = load %struct.ref_s*, %struct.ref_s** %SubstNWP, align 8, !tbaa !1
  %194 = load i32, i32* %client_char_code, align 4, !tbaa !29
  %call272 = call i32 @cid_to_TT_charcode(%struct.gs_memory_s* %190, %struct.ref_s* %191, %struct.ref_s* %192, %struct.ref_s* %193, i32 %194, i32* %c, %struct.ref_s* %src_type, %struct.ref_s* %dst_type) #6
  store i32 %call272, i32* %code, align 4, !tbaa !29
  %cmp273 = icmp slt i32 %call272, 0
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %if.then.269
  %195 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %195, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.287

if.end.276:                                       ; preds = %if.then.269
  br label %if.end.286

if.else.277:                                      ; preds = %cond.end.265, %land.lhs.true.201, %land.lhs.true.197, %land.lhs.true.190, %if.else.186
  %196 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FontType278 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %196, i32 0, i32 11
  %197 = load i32, i32* %FontType278, align 4, !tbaa !95
  %cmp279 = icmp eq i32 %197, 11
  br i1 %cmp279, label %if.then.281, label %if.else.284

if.then.281:                                      ; preds = %if.else.277
  %198 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %199 = bitcast %struct.gs_font_base_s* %198 to %struct.gs_font_cid2_s*
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %199, i32 0, i32 30
  %CIDMap_proc = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 2
  %200 = load i32 (%struct.gs_font_cid2_s*, i64)*, i32 (%struct.gs_font_cid2_s*, i64)** %CIDMap_proc, align 8, !tbaa !127
  %201 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %202 = bitcast %struct.gs_font_base_s* %201 to %struct.gs_font_cid2_s*
  %203 = load i32, i32* %client_char_code, align 4, !tbaa !29
  %conv282 = sext i32 %203 to i64
  %add = add i64 %conv282, 2147483648
  %call283 = call i32 %200(%struct.gs_font_cid2_s* %202, i64 %add) #6
  store i32 %call283, i32* %c, align 4, !tbaa !29
  br label %if.end.285

if.else.284:                                      ; preds = %if.else.277
  %204 = load i32, i32* %client_char_code, align 4, !tbaa !29
  store i32 %204, i32* %c, align 4, !tbaa !29
  br label %if.end.285

if.end.285:                                       ; preds = %if.else.284, %if.then.281
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %if.end.276
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.287

cleanup.287:                                      ; preds = %if.end.286, %if.then.275
  %205 = bitcast %struct.ref_s** %Ordering to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast %struct.ref_s** %CIDSystemInfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %cleanup.dest.289 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.289, label %cleanup.295 [
    i32 0, label %cleanup.cont.290
  ]

cleanup.cont.290:                                 ; preds = %cleanup.287
  br label %if.end.291

if.end.291:                                       ; preds = %cleanup.cont.290, %cleanup.cont.185
  %207 = load i32, i32* %c, align 4, !tbaa !29
  %conv292 = zext i32 %207 to i64
  %208 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %208, i32 0, i32 1
  %arrayidx293 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes, i32 0, i64 0
  store i64 %conv292, i64* %arrayidx293, align 8, !tbaa !30
  %209 = load i32, i32* %is_glyph_index, align 4, !tbaa !29
  %210 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %is_glyph_index294 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %210, i32 0, i32 3
  store i32 %209, i32* %is_glyph_index294, align 4, !tbaa !134
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.295

cleanup.295:                                      ; preds = %if.end.291, %cleanup.287, %cleanup.178, %if.then.98, %if.then.86
  %211 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast %struct.ref_s* %dst_type to i8*
  call void @llvm.lifetime.end(i64 16, i8* %212) #1
  %213 = bitcast %struct.ref_s* %src_type to i8*
  call void @llvm.lifetime.end(i64 16, i8* %213) #1
  %214 = bitcast %struct.ref_s** %SubstNWP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast %struct.ref_s** %TT_cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast %struct.ref_s** %Decoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %cleanup.dest.301 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.301, label %cleanup.790 [
    i32 0, label %cleanup.cont.302
  ]

cleanup.cont.302:                                 ; preds = %cleanup.295
  br label %if.end.417

if.else.303:                                      ; preds = %if.then.72
  %217 = bitcast %struct.ref_s** %CIDMap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %217) #1
  %218 = bitcast i8** %Map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %218) #1
  %219 = bitcast i32* %c_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %219) #1
  %220 = load i32, i32* %client_char_code, align 4, !tbaa !29
  store i32 %220, i32* %c_code, align 4, !tbaa !29
  %221 = bitcast i32* %gdb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %221) #1
  store i32 2, i32* %gdb, align 4, !tbaa !29
  %222 = bitcast i32* %i309 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %222) #1
  %223 = bitcast %struct.ref_s** %GDBytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %223) #1
  store %struct.ref_s* null, %struct.ref_s** %GDBytes, align 8, !tbaa !1
  %224 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call311 = call i32 @dict_find_string(%struct.ref_s* %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), %struct.ref_s** %GDBytes) #6
  %cmp312 = icmp sgt i32 %call311, 0
  br i1 %cmp312, label %land.lhs.true.314, label %if.end.325

land.lhs.true.314:                                ; preds = %if.else.303
  %225 = load %struct.ref_s*, %struct.ref_s** %GDBytes, align 8, !tbaa !1
  %tas315 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %225, i32 0, i32 0
  %type_attrs316 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas315, i32 0, i32 0
  %226 = bitcast i16* %type_attrs316 to i8*
  %arrayidx317 = getelementptr inbounds i8, i8* %226, i64 1
  %227 = load i8, i8* %arrayidx317, align 1, !tbaa !19
  %conv318 = zext i8 %227 to i32
  %cmp319 = icmp eq i32 %conv318, 11
  br i1 %cmp319, label %if.then.321, label %if.end.325

if.then.321:                                      ; preds = %land.lhs.true.314
  %228 = load %struct.ref_s*, %struct.ref_s** %GDBytes, align 8, !tbaa !1
  %value322 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %228, i32 0, i32 1
  %intval323 = bitcast %union.v* %value322 to i64*
  %229 = load i64, i64* %intval323, align 8, !tbaa !30
  %conv324 = trunc i64 %229 to i32
  store i32 %conv324, i32* %gdb, align 4, !tbaa !29
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.321, %land.lhs.true.314, %if.else.303
  %230 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call326 = call i32 @dict_find_string(%struct.ref_s* %230, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), %struct.ref_s** %CIDMap) #6
  %cmp327 = icmp sgt i32 %call326, 0
  br i1 %cmp327, label %land.lhs.true.329, label %if.else.412

land.lhs.true.329:                                ; preds = %if.end.325
  %231 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %tas330 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %231, i32 0, i32 0
  %type_attrs331 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas330, i32 0, i32 0
  %232 = bitcast i16* %type_attrs331 to i8*
  %arrayidx332 = getelementptr inbounds i8, i8* %232, i64 1
  %233 = load i8, i8* %arrayidx332, align 1, !tbaa !19
  %conv333 = zext i8 %233 to i32
  %cmp334 = icmp eq i32 %conv333, 13
  br i1 %cmp334, label %if.else.412, label %land.lhs.true.336

land.lhs.true.336:                                ; preds = %land.lhs.true.329
  %234 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %tas337 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %234, i32 0, i32 0
  %type_attrs338 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas337, i32 0, i32 0
  %235 = bitcast i16* %type_attrs338 to i8*
  %arrayidx339 = getelementptr inbounds i8, i8* %235, i64 1
  %236 = load i8, i8* %arrayidx339, align 1, !tbaa !19
  %conv340 = zext i8 %236 to i32
  %cmp341 = icmp eq i32 %conv340, 4
  br i1 %cmp341, label %if.then.350, label %lor.lhs.false.343

lor.lhs.false.343:                                ; preds = %land.lhs.true.336
  %237 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %tas344 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %237, i32 0, i32 0
  %type_attrs345 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas344, i32 0, i32 0
  %238 = bitcast i16* %type_attrs345 to i8*
  %arrayidx346 = getelementptr inbounds i8, i8* %238, i64 1
  %239 = load i8, i8* %arrayidx346, align 1, !tbaa !19
  %conv347 = zext i8 %239 to i32
  %cmp348 = icmp eq i32 %conv347, 18
  br i1 %cmp348, label %if.then.350, label %if.else.412

if.then.350:                                      ; preds = %lor.lhs.false.343, %land.lhs.true.336
  %240 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %tas351 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %240, i32 0, i32 0
  %type_attrs352 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas351, i32 0, i32 0
  %241 = bitcast i16* %type_attrs352 to i8*
  %arrayidx353 = getelementptr inbounds i8, i8* %241, i64 1
  %242 = load i8, i8* %arrayidx353, align 1, !tbaa !19
  %conv354 = zext i8 %242 to i32
  %cmp355 = icmp eq i32 %conv354, 4
  br i1 %cmp355, label %if.then.357, label %if.else.361

if.then.357:                                      ; preds = %if.then.350
  %243 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %memory358 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %243, i32 0, i32 2
  %244 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory358, align 8, !tbaa !135
  %245 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %246 = load i32, i32* %client_char_code, align 4, !tbaa !29
  %247 = load i32, i32* %gdb, align 4, !tbaa !29
  %mul = mul nsw i32 %246, %247
  %conv359 = sext i32 %mul to i64
  %248 = load i32, i32* %gdb, align 4, !tbaa !29
  %call360 = call i32 @string_array_access_proc(%struct.gs_memory_s* %244, %struct.ref_s* %245, i32 1, i64 %conv359, i32 %248, i32* null, i64* null, i8** %Map) #6
  store i32 %call360, i32* %code, align 4, !tbaa !29
  br label %if.end.373

if.else.361:                                      ; preds = %if.then.350
  %249 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %tas362 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %249, i32 0, i32 0
  %rsize363 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas362, i32 0, i32 2
  %250 = load i32, i32* %rsize363, align 4, !tbaa !33
  %251 = load i32, i32* %c_code, align 4, !tbaa !29
  %252 = load i32, i32* %gdb, align 4, !tbaa !29
  %mul364 = mul nsw i32 %251, %252
  %cmp365 = icmp ult i32 %250, %mul364
  br i1 %cmp365, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %if.else.361
  store i32 0, i32* %c_code, align 4, !tbaa !29
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.367, %if.else.361
  %253 = load i32, i32* %c_code, align 4, !tbaa !29
  %254 = load i32, i32* %gdb, align 4, !tbaa !29
  %mul369 = mul nsw i32 %253, %254
  %idxprom = sext i32 %mul369 to i64
  %255 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %value370 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %255, i32 0, i32 1
  %bytes371 = bitcast %union.v* %value370 to i8**
  %256 = load i8*, i8** %bytes371, align 8, !tbaa !1
  %arrayidx372 = getelementptr inbounds i8, i8* %256, i64 %idxprom
  store i8* %arrayidx372, i8** %Map, align 8, !tbaa !1
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.368, %if.then.357
  %257 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes374 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %257, i32 0, i32 1
  %arrayidx375 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes374, i32 0, i64 0
  store i64 0, i64* %arrayidx375, align 8, !tbaa !30
  %258 = load i32, i32* %code, align 4, !tbaa !29
  %cmp376 = icmp sge i32 %258, 0
  br i1 %cmp376, label %if.then.378, label %if.else.394

if.then.378:                                      ; preds = %if.end.373
  store i32 0, i32* %i309, align 4, !tbaa !29
  br label %for.cond.379

for.cond.379:                                     ; preds = %for.inc.391, %if.then.378
  %259 = load i32, i32* %i309, align 4, !tbaa !29
  %260 = load i32, i32* %gdb, align 4, !tbaa !29
  %cmp380 = icmp slt i32 %259, %260
  br i1 %cmp380, label %for.body.382, label %for.end.393

for.body.382:                                     ; preds = %for.cond.379
  %261 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes383 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %261, i32 0, i32 1
  %arrayidx384 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes383, i32 0, i64 0
  %262 = load i64, i64* %arrayidx384, align 8, !tbaa !30
  %shl = shl i64 %262, 8
  %263 = load i32, i32* %i309, align 4, !tbaa !29
  %idxprom385 = sext i32 %263 to i64
  %264 = load i8*, i8** %Map, align 8, !tbaa !1
  %arrayidx386 = getelementptr inbounds i8, i8* %264, i64 %idxprom385
  %265 = load i8, i8* %arrayidx386, align 1, !tbaa !19
  %conv387 = zext i8 %265 to i64
  %add388 = add i64 %shl, %conv387
  %266 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes389 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %266, i32 0, i32 1
  %arrayidx390 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes389, i32 0, i64 0
  store i64 %add388, i64* %arrayidx390, align 8, !tbaa !30
  br label %for.inc.391

for.inc.391:                                      ; preds = %for.body.382
  %267 = load i32, i32* %i309, align 4, !tbaa !29
  %inc392 = add nsw i32 %267, 1
  store i32 %inc392, i32* %i309, align 4, !tbaa !29
  br label %for.cond.379

for.end.393:                                      ; preds = %for.cond.379
  br label %if.end.411

if.else.394:                                      ; preds = %if.end.373
  %268 = bitcast %struct.ref_s** %cstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %268) #1
  %269 = bitcast %struct.ref_s** %refcode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %269) #1
  %270 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call397 = call i32 @dict_find_string(%struct.ref_s* %270, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %cstr) #6
  store i32 %call397, i32* %code, align 4, !tbaa !29
  %271 = load i32, i32* %code, align 4, !tbaa !29
  %cmp398 = icmp sgt i32 %271, 0
  br i1 %cmp398, label %if.then.400, label %if.end.410

if.then.400:                                      ; preds = %if.else.394
  %272 = load %struct.ref_s*, %struct.ref_s** %cstr, align 8, !tbaa !1
  %call401 = call i32 @dict_find_string(%struct.ref_s* %272, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), %struct.ref_s** %refcode) #6
  store i32 %call401, i32* %code, align 4, !tbaa !29
  %273 = load i32, i32* %code, align 4, !tbaa !29
  %cmp402 = icmp sgt i32 %273, 0
  br i1 %cmp402, label %if.then.404, label %if.end.409

if.then.404:                                      ; preds = %if.then.400
  %274 = load %struct.ref_s*, %struct.ref_s** %refcode, align 8, !tbaa !1
  %value405 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %274, i32 0, i32 1
  %intval406 = bitcast %union.v* %value405 to i64*
  %275 = load i64, i64* %intval406, align 8, !tbaa !30
  %276 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes407 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %276, i32 0, i32 1
  %arrayidx408 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes407, i32 0, i64 0
  store i64 %275, i64* %arrayidx408, align 8, !tbaa !30
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.404, %if.then.400
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.else.394
  %277 = bitcast %struct.ref_s** %refcode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast %struct.ref_s** %cstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %for.end.393
  br label %if.end.416

if.else.412:                                      ; preds = %lor.lhs.false.343, %land.lhs.true.329, %if.end.325
  %279 = load i32, i32* %client_char_code, align 4, !tbaa !29
  %conv413 = sext i32 %279 to i64
  %280 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes414 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %280, i32 0, i32 1
  %arrayidx415 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes414, i32 0, i64 0
  store i64 %conv413, i64* %arrayidx415, align 8, !tbaa !30
  br label %if.end.416

if.end.416:                                       ; preds = %if.else.412, %if.end.411
  %281 = bitcast %struct.ref_s** %GDBytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast i32* %i309 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %gdb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast i32* %c_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i8** %Map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  %286 = bitcast %struct.ref_s** %CIDMap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #1
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416, %cleanup.cont.302
  br label %if.end.758

if.else.418:                                      ; preds = %if.end.70
  %287 = load i32, i32* %is_TT_from_type42, align 4, !tbaa !29
  %tobool419 = icmp ne i32 %287, 0
  br i1 %tobool419, label %if.then.420, label %if.else.544

if.then.420:                                      ; preds = %if.else.418
  %288 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.start(i64 8, i8* %288) #1
  %289 = bitcast %struct.ref_s** %glyph_index to i8*
  call void @llvm.lifetime.start(i64 8, i8* %289) #1
  %290 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call423 = call i32 @dict_find_string(%struct.ref_s* %290, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %CharStrings) #6
  %cmp424 = icmp sle i32 %call423, 0
  br i1 %cmp424, label %if.then.433, label %lor.lhs.false.426

lor.lhs.false.426:                                ; preds = %if.then.420
  %291 = load %struct.ref_s*, %struct.ref_s** %CharStrings, align 8, !tbaa !1
  %tas427 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %291, i32 0, i32 0
  %type_attrs428 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas427, i32 0, i32 0
  %292 = bitcast i16* %type_attrs428 to i8*
  %arrayidx429 = getelementptr inbounds i8, i8* %292, i64 1
  %293 = load i8, i8* %arrayidx429, align 1, !tbaa !19
  %conv430 = zext i8 %293 to i32
  %cmp431 = icmp eq i32 %conv430, 2
  br i1 %cmp431, label %if.end.434, label %if.then.433

if.then.433:                                      ; preds = %lor.lhs.false.426, %if.then.420
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.540

if.end.434:                                       ; preds = %lor.lhs.false.426
  %294 = load %struct.ref_s*, %struct.ref_s** %CharStrings, align 8, !tbaa !1
  %call435 = call i32 @dict_find(%struct.ref_s* %294, %struct.ref_s* %char_name, %struct.ref_s** %glyph_index) #6
  %cmp436 = icmp slt i32 %call435, 0
  br i1 %cmp436, label %if.then.445, label %lor.lhs.false.438

lor.lhs.false.438:                                ; preds = %if.end.434
  %295 = load %struct.ref_s*, %struct.ref_s** %glyph_index, align 8, !tbaa !1
  %tas439 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %295, i32 0, i32 0
  %type_attrs440 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas439, i32 0, i32 0
  %296 = bitcast i16* %type_attrs440 to i8*
  %arrayidx441 = getelementptr inbounds i8, i8* %296, i64 1
  %297 = load i8, i8* %arrayidx441, align 1, !tbaa !19
  %conv442 = zext i8 %297 to i32
  %cmp443 = icmp eq i32 %conv442, 14
  br i1 %cmp443, label %if.then.445, label %if.else.457

if.then.445:                                      ; preds = %lor.lhs.false.438, %if.end.434
  %298 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes446 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %298, i32 0, i32 1
  %arrayidx447 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes446, i32 0, i64 0
  store i64 0, i64* %arrayidx447, align 8, !tbaa !30
  %299 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory448 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %299, i32 0, i32 1
  %current449 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory448, i32 0, i32 0
  %300 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current449, align 8, !tbaa !20
  %301 = bitcast %struct.gs_ref_memory_s* %300 to %struct.gs_memory_s*
  %gs_lib_ctx450 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %301, i32 0, i32 2
  %302 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx450, align 8, !tbaa !21
  %gs_name_table451 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %302, i32 0, i32 16
  %303 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table451, align 8, !tbaa !24
  %call452 = call i32 @names_ref(%struct.name_table_s* %303, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 7, %struct.ref_s* %char_name, i32 -1) #6
  store i32 %call452, i32* %code, align 4, !tbaa !29
  %cmp453 = icmp slt i32 %call452, 0
  br i1 %cmp453, label %if.then.455, label %if.end.456

if.then.455:                                      ; preds = %if.then.445
  %304 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %304, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.540

if.end.456:                                       ; preds = %if.then.445
  br label %if.end.538

if.else.457:                                      ; preds = %lor.lhs.false.438
  %305 = load %struct.ref_s*, %struct.ref_s** %glyph_index, align 8, !tbaa !1
  %tas458 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %305, i32 0, i32 0
  %type_attrs459 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas458, i32 0, i32 0
  %306 = bitcast i16* %type_attrs459 to i8*
  %arrayidx460 = getelementptr inbounds i8, i8* %306, i64 1
  %307 = load i8, i8* %arrayidx460, align 1, !tbaa !19
  %conv461 = zext i8 %307 to i32
  %cmp462 = icmp eq i32 %conv461, 11
  br i1 %cmp462, label %if.then.464, label %if.else.469

if.then.464:                                      ; preds = %if.else.457
  %308 = load %struct.ref_s*, %struct.ref_s** %glyph_index, align 8, !tbaa !1
  %value465 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %308, i32 0, i32 1
  %intval466 = bitcast %union.v* %value465 to i64*
  %309 = load i64, i64* %intval466, align 8, !tbaa !30
  %310 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes467 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %310, i32 0, i32 1
  %arrayidx468 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes467, i32 0, i64 0
  store i64 %309, i64* %arrayidx468, align 8, !tbaa !30
  br label %if.end.537

if.else.469:                                      ; preds = %if.else.457
  %311 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %311) #1
  %312 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %312, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %313 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %313, %struct.ref_s** %op, align 8, !tbaa !1
  %314 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %314, i32 0, i32 25
  %stack471 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p472 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack471, i32 0, i32 0
  %315 = load %struct.ref_s*, %struct.ref_s** %p472, align 8, !tbaa !136
  %316 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack473 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %316, i32 0, i32 25
  %stack474 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack473, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack474, i32 0, i32 2
  %317 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !137
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %317, i64 -2
  %cmp475 = icmp ugt %struct.ref_s* %315, %add.ptr
  br i1 %cmp475, label %if.then.477, label %if.end.489

if.then.477:                                      ; preds = %if.else.469
  %318 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %318) #1
  %319 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack479 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %319, i32 0, i32 25
  %stack480 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack479, i32 0, i32 0
  %call481 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack480, i32 2) #6
  store i32 %call481, i32* %es_code_, align 4, !tbaa !29
  %320 = load i32, i32* %es_code_, align 4, !tbaa !29
  %cmp482 = icmp slt i32 %320, 0
  br i1 %cmp482, label %if.then.484, label %if.end.485

if.then.484:                                      ; preds = %if.then.477
  %321 = load i32, i32* %es_code_, align 4, !tbaa !29
  store i32 %321, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.486

if.end.485:                                       ; preds = %if.then.477
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.486

cleanup.486:                                      ; preds = %if.end.485, %if.then.484
  %322 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %cleanup.dest.487 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.487, label %cleanup.536 [
    i32 0, label %cleanup.cont.488
  ]

cleanup.cont.488:                                 ; preds = %cleanup.486
  br label %if.end.489

if.end.489:                                       ; preds = %cleanup.cont.488, %if.else.469
  %323 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %324 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack490 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %324, i32 0, i32 26
  %stack491 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack490, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack491, i32 0, i32 1
  %325 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !138
  %add.ptr492 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %325, i64 0
  %cmp493 = icmp ult %struct.ref_s* %323, %add.ptr492
  br i1 %cmp493, label %if.then.495, label %if.end.496

if.then.495:                                      ; preds = %if.end.489
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.536

if.end.496:                                       ; preds = %if.end.489
  br label %do.body

do.body:                                          ; preds = %if.end.496
  %326 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr497 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %326, i64 1
  store %struct.ref_s* %add.ptr497, %struct.ref_s** %op, align 8, !tbaa !1
  %327 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack498 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %327, i32 0, i32 26
  %stack499 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack498, i32 0, i32 0
  %top500 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack499, i32 0, i32 2
  %328 = load %struct.ref_s*, %struct.ref_s** %top500, align 8, !tbaa !34
  %cmp501 = icmp ugt %struct.ref_s* %add.ptr497, %328
  br i1 %cmp501, label %if.then.503, label %if.else.506

if.then.503:                                      ; preds = %do.body
  %329 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack504 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %329, i32 0, i32 26
  %stack505 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack504, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack505, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.536

if.else.506:                                      ; preds = %do.body
  %330 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %331 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack507 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %331, i32 0, i32 26
  %stack508 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack507, i32 0, i32 0
  %p509 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack508, i32 0, i32 0
  store %struct.ref_s* %330, %struct.ref_s** %p509, align 8, !tbaa !5
  br label %if.end.510

if.end.510:                                       ; preds = %if.else.506
  br label %do.cond

do.cond:                                          ; preds = %if.end.510
  br label %do.end

do.end:                                           ; preds = %do.cond
  %332 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %333 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr511 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %333, i64 -1
  %334 = bitcast %struct.ref_s* %332 to i8*
  %335 = bitcast %struct.ref_s* %add.ptr511 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %334, i8* %335, i64 16, i32 8, i1 false), !tbaa.struct !50
  %336 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack512 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %336, i32 0, i32 25
  %stack513 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack512, i32 0, i32 0
  %p514 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack513, i32 0, i32 0
  %337 = load %struct.ref_s*, %struct.ref_s** %p514, align 8, !tbaa !136
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %337, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p514, align 8, !tbaa !136
  %338 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack515 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %338, i32 0, i32 25
  %stack516 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack515, i32 0, i32 0
  %p517 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack516, i32 0, i32 0
  %339 = load %struct.ref_s*, %struct.ref_s** %p517, align 8, !tbaa !136
  %value518 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %339, i32 0, i32 1
  %opproc = bitcast %union.v* %value518 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zfapi_finish_render, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %340 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack519 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %340, i32 0, i32 25
  %stack520 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack519, i32 0, i32 0
  %p521 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack520, i32 0, i32 0
  %341 = load %struct.ref_s*, %struct.ref_s** %p521, align 8, !tbaa !136
  %tas522 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %341, i32 0, i32 0
  %type_attrs523 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas522, i32 0, i32 0
  store i16 3968, i16* %type_attrs523, align 2, !tbaa !27
  %342 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack524 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %342, i32 0, i32 25
  %stack525 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack524, i32 0, i32 0
  %p526 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack525, i32 0, i32 0
  %343 = load %struct.ref_s*, %struct.ref_s** %p526, align 8, !tbaa !136
  %tas527 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %343, i32 0, i32 0
  %rsize528 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas527, i32 0, i32 2
  store i32 0, i32* %rsize528, align 4, !tbaa !33
  %344 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack529 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %344, i32 0, i32 25
  %stack530 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack529, i32 0, i32 0
  %p531 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack530, i32 0, i32 0
  %345 = load %struct.ref_s*, %struct.ref_s** %p531, align 8, !tbaa !136
  %incdec.ptr532 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %345, i32 1
  store %struct.ref_s* %incdec.ptr532, %struct.ref_s** %p531, align 8, !tbaa !136
  %346 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %exec_stack533 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %346, i32 0, i32 25
  %stack534 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack533, i32 0, i32 0
  %p535 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack534, i32 0, i32 0
  %347 = load %struct.ref_s*, %struct.ref_s** %p535, align 8, !tbaa !136
  %348 = load %struct.ref_s*, %struct.ref_s** %glyph_index, align 8, !tbaa !1
  %349 = bitcast %struct.ref_s* %347 to i8*
  %350 = bitcast %struct.ref_s* %348 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %349, i8* %350, i64 16, i32 8, i1 false), !tbaa.struct !50
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.536

cleanup.536:                                      ; preds = %do.end, %if.then.503, %if.then.495, %cleanup.486
  %351 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %351) #1
  br label %cleanup.540

if.end.537:                                       ; preds = %if.then.464
  br label %if.end.538

if.end.538:                                       ; preds = %if.end.537, %if.end.456
  %352 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %is_glyph_index539 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %352, i32 0, i32 3
  store i32 1, i32* %is_glyph_index539, align 4, !tbaa !134
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.540

cleanup.540:                                      ; preds = %if.end.538, %cleanup.536, %if.then.455, %if.then.433
  %353 = bitcast %struct.ref_s** %glyph_index to i8*
  call void @llvm.lifetime.end(i64 8, i8* %353) #1
  %354 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354) #1
  %cleanup.dest.542 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.542, label %cleanup.790 [
    i32 0, label %cleanup.cont.543
  ]

cleanup.cont.543:                                 ; preds = %cleanup.540
  br label %if.end.757

if.else.544:                                      ; preds = %if.else.418
  %355 = load i32, i32* %is_embedded_type1, align 4, !tbaa !29
  %tobool545 = icmp ne i32 %355, 0
  br i1 %tobool545, label %if.then.546, label %if.else.585

if.then.546:                                      ; preds = %if.else.544
  %356 = load i32, i32* %ccode.addr, align 4, !tbaa !29
  %cmp547 = icmp sge i32 %356, 0
  br i1 %cmp547, label %if.then.549, label %if.else.553

if.then.549:                                      ; preds = %if.then.546
  %357 = load i32, i32* %client_char_code, align 4, !tbaa !29
  %conv550 = sext i32 %357 to i64
  %358 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes551 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %358, i32 0, i32 1
  %arrayidx552 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes551, i32 0, i64 0
  store i64 %conv550, i64* %arrayidx552, align 8, !tbaa !30
  br label %if.end.584

if.else.553:                                      ; preds = %if.then.546
  %359 = bitcast %struct.ref_s** %Encoding555 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %359) #1
  %360 = bitcast %struct.ref_s* %glyph to i8*
  call void @llvm.lifetime.start(i64 16, i8* %360) #1
  %361 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %memory557 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %361, i32 0, i32 2
  %362 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory557, align 8, !tbaa !135
  %gs_lib_ctx558 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %362, i32 0, i32 2
  %363 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx558, align 8, !tbaa !21
  %gs_name_table559 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %363, i32 0, i32 16
  %364 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table559, align 8, !tbaa !24
  %365 = load %struct.gs_string_s*, %struct.gs_string_s** %name.addr, align 8, !tbaa !1
  %data560 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %365, i32 0, i32 0
  %366 = load i8*, i8** %data560, align 8, !tbaa !106
  %367 = load %struct.gs_string_s*, %struct.gs_string_s** %name.addr, align 8, !tbaa !1
  %size561 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %367, i32 0, i32 1
  %368 = load i32, i32* %size561, align 4, !tbaa !108
  %call562 = call i32 @names_ref(%struct.name_table_s* %364, i8* %366, i32 %368, %struct.ref_s* %glyph, i32 0) #6
  %369 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack563 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %369, i32 0, i32 26
  %stack564 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack563, i32 0, i32 0
  %p565 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack564, i32 0, i32 0
  %370 = load %struct.ref_s*, %struct.ref_s** %p565, align 8, !tbaa !5
  %add.ptr566 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %370, i64 -1
  %call567 = call i32 @dict_find_string(%struct.ref_s* %add.ptr566, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), %struct.ref_s** %Encoding555) #6
  %cmp568 = icmp sgt i32 %call567, 0
  br i1 %cmp568, label %if.then.570, label %if.else.578

if.then.570:                                      ; preds = %if.else.553
  %371 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory571 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %371, i32 0, i32 1
  %current572 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory571, i32 0, i32 0
  %372 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current572, align 8, !tbaa !20
  %373 = bitcast %struct.gs_ref_memory_s* %372 to %struct.gs_memory_s*
  %374 = load %struct.ref_s*, %struct.ref_s** %Encoding555, align 8, !tbaa !1
  %call573 = call i64 @array_find(%struct.gs_memory_s* %373, %struct.ref_s* %374, %struct.ref_s* %glyph) #6
  %conv574 = trunc i64 %call573 to i32
  %conv575 = zext i32 %conv574 to i64
  %375 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes576 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %375, i32 0, i32 1
  %arrayidx577 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes576, i32 0, i64 0
  store i64 %conv575, i64* %arrayidx577, align 8, !tbaa !30
  br label %if.end.579

if.else.578:                                      ; preds = %if.else.553
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.580

if.end.579:                                       ; preds = %if.then.570
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.580

cleanup.580:                                      ; preds = %if.end.579, %if.else.578
  %376 = bitcast %struct.ref_s* %glyph to i8*
  call void @llvm.lifetime.end(i64 16, i8* %376) #1
  %377 = bitcast %struct.ref_s** %Encoding555 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %377) #1
  %cleanup.dest.582 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.582, label %cleanup.790 [
    i32 0, label %cleanup.cont.583
  ]

cleanup.cont.583:                                 ; preds = %cleanup.580
  br label %if.end.584

if.end.584:                                       ; preds = %cleanup.cont.583, %if.then.549
  br label %if.end.756

if.else.585:                                      ; preds = %if.else.544
  %378 = bitcast i32* %can_retrieve_char_by_name to i8*
  call void @llvm.lifetime.start(i64 4, i8* %378) #1
  store i32 0, i32* %can_retrieve_char_by_name, align 4, !tbaa !29
  %379 = bitcast i8** %p588 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %379) #1
  %380 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory589 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %380, i32 0, i32 1
  %current590 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory589, i32 0, i32 0
  %381 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current590, align 8, !tbaa !20
  %382 = bitcast %struct.gs_ref_memory_s* %381 to %struct.gs_memory_s*
  %383 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_name591 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %383, i32 0, i32 4
  %384 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_name_length = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %384, i32 0, i32 5
  %call592 = call i32 @obj_string_data(%struct.gs_memory_s* %382, %struct.ref_s* %char_name, i8** %char_name591, i32* %char_name_length) #6
  %385 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_name593 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %385, i32 0, i32 4
  %386 = load i8*, i8** %char_name593, align 8, !tbaa !139
  %387 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_name_length594 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %387, i32 0, i32 5
  %388 = load i32, i32* %char_name_length594, align 4, !tbaa !140
  %call595 = call i8* @find_substring(i8* %386, i32 %388, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gx_extendeg_glyph_name_separator, i32 0, i32 0)) #6
  store i8* %call595, i8** %p588, align 8, !tbaa !1
  %389 = load i8*, i8** %p588, align 8, !tbaa !1
  %cmp596 = icmp ne i8* %389, null
  br i1 %cmp596, label %if.then.598, label %if.end.608

if.then.598:                                      ; preds = %if.else.585
  %390 = load i8*, i8** %p588, align 8, !tbaa !1
  %391 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_name599 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %391, i32 0, i32 4
  %392 = load i8*, i8** %char_name599, align 8, !tbaa !139
  %sub.ptr.lhs.cast = ptrtoint i8* %390 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %392 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv600 = trunc i64 %sub.ptr.sub to i32
  %393 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_name_length601 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %393, i32 0, i32 5
  store i32 %conv600, i32* %char_name_length601, align 4, !tbaa !140
  %394 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %memory602 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %394, i32 0, i32 2
  %395 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory602, align 8, !tbaa !135
  %gs_lib_ctx603 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %395, i32 0, i32 2
  %396 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx603, align 8, !tbaa !21
  %gs_name_table604 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %396, i32 0, i32 16
  %397 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table604, align 8, !tbaa !24
  %398 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_name605 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %398, i32 0, i32 4
  %399 = load i8*, i8** %char_name605, align 8, !tbaa !139
  %400 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_name_length606 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %400, i32 0, i32 5
  %401 = load i32, i32* %char_name_length606, align 4, !tbaa !140
  %call607 = call i32 @names_ref(%struct.name_table_s* %397, i8* %399, i32 %401, %struct.ref_s* %char_name, i32 1) #6
  br label %if.end.608

if.end.608:                                       ; preds = %if.then.598, %if.else.585
  %402 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory609 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %402, i32 0, i32 1
  %current610 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory609, i32 0, i32 0
  %403 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current610, align 8, !tbaa !20
  %404 = bitcast %struct.gs_ref_memory_s* %403 to %struct.gs_memory_s*
  %405 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %406 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %can_retrieve_char_by_name611 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %406, i32 0, i32 14
  %407 = load i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)** %can_retrieve_char_by_name611, align 8, !tbaa !141
  %408 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %409 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %409, i32 0, i32 4
  %410 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %call612 = call i32 %407(%struct.gs_fapi_server_s* %408, %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_char_ref* %410, i32* %can_retrieve_char_by_name) #6
  %call613 = call i32 @renderer_retcode(%struct.gs_memory_s* %404, %struct.gs_fapi_server_s* %405, i32 %call612) #6
  store i32 %call613, i32* %code, align 4, !tbaa !29
  %cmp614 = icmp slt i32 %call613, 0
  br i1 %cmp614, label %if.then.616, label %if.end.617

if.then.616:                                      ; preds = %if.end.608
  %411 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %411, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.752

if.end.617:                                       ; preds = %if.end.608
  %412 = load i32, i32* %can_retrieve_char_by_name, align 4, !tbaa !29
  %tobool618 = icmp ne i32 %412, 0
  br i1 %tobool618, label %if.end.751, label %if.then.619

if.then.619:                                      ; preds = %if.end.617
  %413 = bitcast %struct.ref_s** %Decoding621 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %413) #1
  %414 = bitcast %struct.ref_s** %char_code623 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %414) #1
  %415 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %op_stack624 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %415, i32 0, i32 26
  %stack625 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack624, i32 0, i32 0
  %p626 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack625, i32 0, i32 0
  %416 = load %struct.ref_s*, %struct.ref_s** %p626, align 8, !tbaa !5
  %add.ptr627 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %416, i64 -1
  %call628 = call i32 @dict_find_string(%struct.ref_s* %add.ptr627, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %struct.ref_s** %Decoding621) #6
  %cmp629 = icmp sgt i32 %call628, 0
  br i1 %cmp629, label %land.lhs.true.631, label %if.end.746

land.lhs.true.631:                                ; preds = %if.then.619
  %417 = load %struct.ref_s*, %struct.ref_s** %Decoding621, align 8, !tbaa !1
  %tas632 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %417, i32 0, i32 0
  %type_attrs633 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas632, i32 0, i32 0
  %418 = bitcast i16* %type_attrs633 to i8*
  %arrayidx634 = getelementptr inbounds i8, i8* %418, i64 1
  %419 = load i8, i8* %arrayidx634, align 1, !tbaa !19
  %conv635 = zext i8 %419 to i32
  %cmp636 = icmp eq i32 %conv635, 2
  br i1 %cmp636, label %if.then.638, label %if.end.746

if.then.638:                                      ; preds = %land.lhs.true.631
  %420 = load %struct.ref_s*, %struct.ref_s** %Decoding621, align 8, !tbaa !1
  %call639 = call i32 @dict_find(%struct.ref_s* %420, %struct.ref_s* %char_name, %struct.ref_s** %char_code623) #6
  %cmp640 = icmp sgt i32 %call639, 0
  br i1 %cmp640, label %if.then.642, label %if.end.745

if.then.642:                                      ; preds = %if.then.638
  store i32 0, i32* %code, align 4, !tbaa !29
  %421 = load %struct.ref_s*, %struct.ref_s** %char_code623, align 8, !tbaa !1
  %tas643 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %421, i32 0, i32 0
  %type_attrs644 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas643, i32 0, i32 0
  %422 = bitcast i16* %type_attrs644 to i8*
  %arrayidx645 = getelementptr inbounds i8, i8* %422, i64 1
  %423 = load i8, i8* %arrayidx645, align 1, !tbaa !19
  %conv646 = zext i8 %423 to i32
  %cmp647 = icmp eq i32 %conv646, 11
  br i1 %cmp647, label %if.then.649, label %if.else.656

if.then.649:                                      ; preds = %if.then.642
  %424 = bitcast i32* %c_code651 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %424) #1
  %425 = load %struct.ref_s*, %struct.ref_s** %char_code623, align 8, !tbaa !1
  %call652 = call i32 @int_param(%struct.ref_s* %425, i32 65535, i32* %c_code651) #6
  %426 = load i32, i32* %c_code651, align 4, !tbaa !29
  %conv653 = sext i32 %426 to i64
  %427 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes654 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %427, i32 0, i32 1
  %arrayidx655 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes654, i32 0, i64 0
  store i64 %conv653, i64* %arrayidx655, align 8, !tbaa !30
  %428 = bitcast i32* %c_code651 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %428) #1
  br label %if.end.717

if.else.656:                                      ; preds = %if.then.642
  %429 = load %struct.ref_s*, %struct.ref_s** %char_code623, align 8, !tbaa !1
  %tas657 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %429, i32 0, i32 0
  %type_attrs658 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas657, i32 0, i32 0
  %430 = bitcast i16* %type_attrs658 to i8*
  %arrayidx659 = getelementptr inbounds i8, i8* %430, i64 1
  %431 = load i8, i8* %arrayidx659, align 1, !tbaa !19
  %conv660 = zext i8 %431 to i32
  %cmp661 = icmp eq i32 %conv660, 4
  br i1 %cmp661, label %if.then.670, label %lor.lhs.false.663

lor.lhs.false.663:                                ; preds = %if.else.656
  %432 = load %struct.ref_s*, %struct.ref_s** %char_code623, align 8, !tbaa !1
  %tas664 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %432, i32 0, i32 0
  %type_attrs665 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas664, i32 0, i32 0
  %433 = bitcast i16* %type_attrs665 to i8*
  %arrayidx666 = getelementptr inbounds i8, i8* %433, i64 1
  %434 = load i8, i8* %arrayidx666, align 1, !tbaa !19
  %conv667 = zext i8 %434 to i32
  %cmp668 = icmp eq i32 %conv667, 6
  br i1 %cmp668, label %if.then.670, label %if.else.715

if.then.670:                                      ; preds = %lor.lhs.false.663, %if.else.656
  %435 = bitcast i32* %i672 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %435) #1
  %436 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.start(i64 16, i8* %436) #1
  %437 = load %struct.ref_s*, %struct.ref_s** %char_code623, align 8, !tbaa !1
  %tas674 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %437, i32 0, i32 0
  %rsize675 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas674, i32 0, i32 2
  %438 = load i32, i32* %rsize675, align 4, !tbaa !33
  %439 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes_count676 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %439, i32 0, i32 2
  store i32 %438, i32* %char_codes_count676, align 4, !tbaa !124
  %440 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes_count677 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %440, i32 0, i32 2
  %441 = load i32, i32* %char_codes_count677, align 4, !tbaa !124
  %cmp678 = icmp sgt i32 %441, 4
  br i1 %cmp678, label %if.then.680, label %if.end.681

if.then.680:                                      ; preds = %if.then.670
  store i32 -15, i32* %code, align 4, !tbaa !29
  br label %if.end.681

if.end.681:                                       ; preds = %if.then.680, %if.then.670
  %442 = load i32, i32* %code, align 4, !tbaa !29
  %cmp682 = icmp sge i32 %442, 0
  br i1 %cmp682, label %if.then.684, label %if.end.714

if.then.684:                                      ; preds = %if.end.681
  store i32 0, i32* %i672, align 4, !tbaa !29
  br label %for.cond.685

for.cond.685:                                     ; preds = %for.inc.711, %if.then.684
  %443 = load i32, i32* %i672, align 4, !tbaa !29
  %444 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes_count686 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %444, i32 0, i32 2
  %445 = load i32, i32* %char_codes_count686, align 4, !tbaa !124
  %cmp687 = icmp slt i32 %443, %445
  br i1 %cmp687, label %for.body.689, label %for.end.713

for.body.689:                                     ; preds = %for.cond.685
  %446 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory690 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %446, i32 0, i32 1
  %current691 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory690, i32 0, i32 0
  %447 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current691, align 8, !tbaa !20
  %448 = bitcast %struct.gs_ref_memory_s* %447 to %struct.gs_memory_s*
  %449 = load %struct.ref_s*, %struct.ref_s** %char_code623, align 8, !tbaa !1
  %450 = load i32, i32* %i672, align 4, !tbaa !29
  %conv692 = sext i32 %450 to i64
  %call693 = call i32 @array_get(%struct.gs_memory_s* %448, %struct.ref_s* %449, i64 %conv692, %struct.ref_s* %v) #6
  store i32 %call693, i32* %code, align 4, !tbaa !29
  %451 = load i32, i32* %code, align 4, !tbaa !29
  %cmp694 = icmp slt i32 %451, 0
  br i1 %cmp694, label %if.then.696, label %if.end.697

if.then.696:                                      ; preds = %for.body.689
  br label %for.end.713

if.end.697:                                       ; preds = %for.body.689
  %452 = load %struct.ref_s*, %struct.ref_s** %char_code623, align 8, !tbaa !1
  %tas698 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %452, i32 0, i32 0
  %type_attrs699 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas698, i32 0, i32 0
  %453 = bitcast i16* %type_attrs699 to i8*
  %arrayidx700 = getelementptr inbounds i8, i8* %453, i64 1
  %454 = load i8, i8* %arrayidx700, align 1, !tbaa !19
  %conv701 = zext i8 %454 to i32
  %cmp702 = icmp eq i32 %conv701, 11
  br i1 %cmp702, label %if.end.705, label %if.then.704

if.then.704:                                      ; preds = %if.end.697
  store i32 -15, i32* %code, align 4, !tbaa !29
  br label %for.end.713

if.end.705:                                       ; preds = %if.end.697
  %value706 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 1
  %intval707 = bitcast %union.v* %value706 to i64*
  %455 = load i64, i64* %intval707, align 8, !tbaa !30
  %456 = load i32, i32* %i672, align 4, !tbaa !29
  %idxprom708 = sext i32 %456 to i64
  %457 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_codes709 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %457, i32 0, i32 1
  %arrayidx710 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes709, i32 0, i64 %idxprom708
  store i64 %455, i64* %arrayidx710, align 8, !tbaa !30
  br label %for.inc.711

for.inc.711:                                      ; preds = %if.end.705
  %458 = load i32, i32* %i672, align 4, !tbaa !29
  %inc712 = add nsw i32 %458, 1
  store i32 %inc712, i32* %i672, align 4, !tbaa !29
  br label %for.cond.685

for.end.713:                                      ; preds = %if.then.704, %if.then.696, %for.cond.685
  br label %if.end.714

if.end.714:                                       ; preds = %for.end.713, %if.end.681
  %459 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.end(i64 16, i8* %459) #1
  %460 = bitcast i32* %i672 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %460) #1
  br label %if.end.716

if.else.715:                                      ; preds = %lor.lhs.false.663
  store i32 -15, i32* %code, align 4, !tbaa !29
  br label %if.end.716

if.end.716:                                       ; preds = %if.else.715, %if.end.714
  br label %if.end.717

if.end.717:                                       ; preds = %if.end.716, %if.then.649
  %461 = load i32, i32* %code, align 4, !tbaa !29
  %cmp718 = icmp slt i32 %461, 0
  br i1 %cmp718, label %if.then.720, label %if.end.744

if.then.720:                                      ; preds = %if.end.717
  %462 = bitcast [16 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %462) #1
  %463 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %463) #1
  %464 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_name_length723 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %464, i32 0, i32 5
  %465 = load i32, i32* %char_name_length723, align 4, !tbaa !140
  store i32 %465, i32* %l, align 4, !tbaa !29
  %466 = load i32, i32* %l, align 4, !tbaa !29
  %conv724 = sext i32 %466 to i64
  %cmp725 = icmp ugt i64 %conv724, 15
  br i1 %cmp725, label %if.then.727, label %if.end.728

if.then.727:                                      ; preds = %if.then.720
  store i32 15, i32* %l, align 4, !tbaa !29
  br label %if.end.728

if.end.728:                                       ; preds = %if.then.727, %if.then.720
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %467 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %char_name729 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %467, i32 0, i32 4
  %468 = load i8*, i8** %char_name729, align 8, !tbaa !139
  %469 = load i32, i32* %l, align 4, !tbaa !29
  %conv730 = sext i32 %469 to i64
  %call731 = call i8* @memcpy(i8* %arraydecay, i8* %468, i64 %conv730) #8
  %470 = load i32, i32* %l, align 4, !tbaa !29
  %idxprom732 = sext i32 %470 to i64
  %arrayidx733 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i64 %idxprom732
  store i8 0, i8* %arrayidx733, align 1, !tbaa !19
  %471 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory734 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %471, i32 0, i32 1
  %current735 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory734, i32 0, i32 0
  %472 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current735, align 8, !tbaa !20
  %473 = bitcast %struct.gs_ref_memory_s* %472 to %struct.gs_memory_s*
  %call736 = call i8* @gs_program_name() #6
  %call737 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %473, i8* %call736, i64 %call737) #6
  %474 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory738 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %474, i32 0, i32 1
  %current739 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory738, i32 0, i32 0
  %475 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current739, align 8, !tbaa !20
  %476 = bitcast %struct.gs_ref_memory_s* %475 to %struct.gs_memory_s*
  %arraydecay740 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %call741 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %476, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i32 0, i32 0), i8* %arraydecay740) #6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %477 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %477) #1
  %478 = bitcast [16 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %478) #1
  br label %cleanup.747

if.end.744:                                       ; preds = %if.end.717
  br label %if.end.745

if.end.745:                                       ; preds = %if.end.744, %if.then.638
  br label %if.end.746

if.end.746:                                       ; preds = %if.end.745, %land.lhs.true.631, %if.then.619
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.747

cleanup.747:                                      ; preds = %if.end.746, %if.end.728
  %479 = bitcast %struct.ref_s** %char_code623 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %479) #1
  %480 = bitcast %struct.ref_s** %Decoding621 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %480) #1
  %cleanup.dest.749 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.749, label %cleanup.752 [
    i32 0, label %cleanup.cont.750
  ]

cleanup.cont.750:                                 ; preds = %cleanup.747
  br label %if.end.751

if.end.751:                                       ; preds = %cleanup.cont.750, %if.end.617
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.752

cleanup.752:                                      ; preds = %if.end.751, %cleanup.747, %if.then.616
  %481 = bitcast i8** %p588 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %481) #1
  %482 = bitcast i32* %can_retrieve_char_by_name to i8*
  call void @llvm.lifetime.end(i64 4, i8* %482) #1
  %cleanup.dest.754 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.754, label %cleanup.790 [
    i32 0, label %cleanup.cont.755
  ]

cleanup.cont.755:                                 ; preds = %cleanup.752
  br label %if.end.756

if.end.756:                                       ; preds = %cleanup.cont.755, %if.end.584
  br label %if.end.757

if.end.757:                                       ; preds = %if.end.756, %cleanup.cont.543
  br label %if.end.758

if.end.758:                                       ; preds = %if.end.757, %if.end.417
  %483 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff759 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %483, i32 0, i32 4
  %is_cid = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff759, i32 0, i32 8
  %484 = load i32, i32* %is_cid, align 4, !tbaa !142
  %tobool760 = icmp ne i32 %484, 0
  br i1 %tobool760, label %if.else.779, label %land.lhs.true.761

land.lhs.true.761:                                ; preds = %if.end.758
  %tas762 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %char_name, i32 0, i32 0
  %type_attrs763 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas762, i32 0, i32 0
  %485 = bitcast i16* %type_attrs763 to i8*
  %arrayidx764 = getelementptr inbounds i8, i8* %485, i64 1
  %486 = load i8, i8* %arrayidx764, align 1, !tbaa !19
  %conv765 = zext i8 %486 to i32
  %cmp766 = icmp eq i32 %conv765, 13
  br i1 %cmp766, label %if.then.768, label %if.else.779

if.then.768:                                      ; preds = %land.lhs.true.761
  %487 = bitcast %struct.ref_s* %sname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %487) #1
  %488 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory770 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %488, i32 0, i32 1
  %current771 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory770, i32 0, i32 0
  %489 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current771, align 8, !tbaa !20
  %490 = bitcast %struct.gs_ref_memory_s* %489 to %struct.gs_memory_s*
  %gs_lib_ctx772 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %490, i32 0, i32 2
  %491 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx772, align 8, !tbaa !21
  %gs_name_table773 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %491, i32 0, i32 16
  %492 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table773, align 8, !tbaa !24
  call void @names_string_ref(%struct.name_table_s* %492, %struct.ref_s* %char_name, %struct.ref_s* %sname) #6
  %value774 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sname, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value774 to i8**
  %493 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %494 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff775 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %494, i32 0, i32 4
  %char_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff775, i32 0, i32 17
  store i8* %493, i8** %char_data, align 8, !tbaa !143
  %tas776 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sname, i32 0, i32 0
  %rsize777 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas776, i32 0, i32 2
  %495 = load i32, i32* %rsize777, align 4, !tbaa !33
  %496 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff778 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %496, i32 0, i32 4
  %char_data_len = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff778, i32 0, i32 18
  store i32 %495, i32* %char_data_len, align 4, !tbaa !144
  %497 = bitcast %struct.ref_s* %sname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %497) #1
  br label %if.end.786

if.else.779:                                      ; preds = %land.lhs.true.761, %if.end.758
  %498 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff780 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %498, i32 0, i32 4
  %is_type1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff780, i32 0, i32 7
  %499 = load i32, i32* %is_type1, align 4, !tbaa !145
  %tobool781 = icmp ne i32 %499, 0
  br i1 %tobool781, label %if.then.782, label %if.end.785

if.then.782:                                      ; preds = %if.else.779
  %500 = load %struct.gs_string_s*, %struct.gs_string_s** %charstring.addr, align 8, !tbaa !1
  %501 = bitcast %struct.gs_string_s* %500 to i8*
  %502 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff783 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %502, i32 0, i32 4
  %char_data784 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff783, i32 0, i32 17
  store i8* %501, i8** %char_data784, align 8, !tbaa !143
  br label %if.end.785

if.end.785:                                       ; preds = %if.then.782, %if.else.779
  br label %if.end.786

if.end.786:                                       ; preds = %if.end.785, %if.then.768
  %503 = load i32, i32* %is_glyph_index, align 4, !tbaa !29
  %504 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %is_glyph_index787 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %504, i32 0, i32 3
  store i32 %503, i32* %is_glyph_index787, align 4, !tbaa !134
  %505 = load i32, i32* %client_char_code, align 4, !tbaa !29
  %conv788 = sext i32 %505 to i64
  %506 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %cr.addr, align 8, !tbaa !1
  %client_char_code789 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %506, i32 0, i32 0
  store i64 %conv788, i64* %client_char_code789, align 8, !tbaa !146
  %507 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %507, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.790

cleanup.790:                                      ; preds = %if.end.786, %cleanup.752, %cleanup.580, %cleanup.540, %cleanup.295, %if.then.61, %cleanup
  %508 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %508) #1
  %509 = bitcast i32* %is_embedded_type1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %509) #1
  %510 = bitcast i32* %is_glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %510) #1
  %511 = bitcast i32* %is_TT_from_type42 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %511) #1
  %512 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %512) #1
  %513 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %513) #1
  %514 = bitcast %struct.ref_s* %cname_str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %514) #1
  %515 = bitcast %struct.ref_s* %char_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %515) #1
  %516 = bitcast i32* %client_char_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %516) #1
  %517 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %517) #1
  %518 = load i32, i32* %retval
  ret i32 %518
}

; Function Attrs: nounwind uwtable
define internal i32 @ps_fapi_get_metrics(%struct.gs_fapi_font_s* %ff, %struct.gs_string_s* %char_name, i32 %cid, double* %m, i32 %vertical) #0 {
entry:
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %char_name.addr = alloca %struct.gs_string_s*, align 8
  %cid.addr = alloca i32, align 4
  %m.addr = alloca double*, align 8
  %vertical.addr = alloca i32, align 4
  %glyph = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %char_name, %struct.gs_string_s** %char_name.addr, align 8, !tbaa !1
  store i32 %cid, i32* %cid.addr, align 4, !tbaa !29
  store double* %m, double** %m.addr, align 8, !tbaa !1
  store i32 %vertical, i32* %vertical.addr, align 4, !tbaa !29
  %0 = bitcast %struct.ref_s* %glyph to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %3, i32 0, i32 16
  %4 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %5 = bitcast i8* %4 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %5, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %6 = load %struct.gs_string_s*, %struct.gs_string_s** %char_name.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !106
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_string_s*, %struct.gs_string_s** %char_name.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %data1, align 8, !tbaa !106
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* %9, i8** %bytes, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !27
  %10 = load %struct.gs_string_s*, %struct.gs_string_s** %char_name.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %10, i32 0, i32 1
  %11 = load i32, i32* %size, align 4, !tbaa !108
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  store i32 %11, i32* %rsize, align 4, !tbaa !33
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i32, i32* %cid.addr, align 4, !tbaa !29
  %conv = sext i32 %12 to i64
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph, i32 0, i32 1
  %intval = bitcast %union.v* %value3 to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !30
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  store i16 2816, i16* %type_attrs5, align 2, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %vertical.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end
  %14 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %15 = load double*, double** %m.addr, align 8, !tbaa !1
  %call = call i32 @zchar_get_metrics2(%struct.gs_font_base_s* %14, %struct.ref_s* %glyph, double* %15) #6
  store i32 %call, i32* %code, align 4, !tbaa !29
  br label %if.end.9

if.else.7:                                        ; preds = %if.end
  %16 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %17 = load double*, double** %m.addr, align 8, !tbaa !1
  %call8 = call i32 @zchar_get_metrics(%struct.gs_font_base_s* %16, %struct.ref_s* %glyph, double* %17) #6
  store i32 %call8, i32* %code, align 4, !tbaa !29
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.6
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %glyph, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  store i16 3584, i16* %type_attrs11, align 2, !tbaa !27
  %18 = load i32, i32* %code, align 4, !tbaa !29
  %19 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.ref_s* %glyph to i8*
  call void @llvm.lifetime.end(i64 16, i8* %21) #1
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @ps_fapi_set_cache(%struct.gs_text_enum_s* %penum, %struct.gs_font_base_s* %pbfont, %struct.gs_string_s* %char_name, i32 %cid, double* %pwidth, %struct.gs_rect_s* %pbbox, double* %Metrics2_sbw_default, i32* %imagenow) #0 {
entry:
  %penum.addr = alloca %struct.gs_text_enum_s*, align 8
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %char_name.addr = alloca %struct.gs_string_s*, align 8
  %cid.addr = alloca i32, align 4
  %pwidth.addr = alloca double*, align 8
  %pbbox.addr = alloca %struct.gs_rect_s*, align 8
  %Metrics2_sbw_default.addr = alloca double*, align 8
  %imagenow.addr = alloca i32*, align 8
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %exec_cont = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %code = alloca i32, align 4
  %cname = alloca %struct.ref_s, align 8
  %cidref = alloca %struct.ref_s, align 8
  store %struct.gs_text_enum_s* %penum, %struct.gs_text_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %char_name, %struct.gs_string_s** %char_name.addr, align 8, !tbaa !1
  store i32 %cid, i32* %cid.addr, align 4, !tbaa !29
  store double* %pwidth, double** %pwidth.addr, align 8, !tbaa !1
  store %struct.gs_rect_s* %pbbox, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  store double* %Metrics2_sbw_default, double** %Metrics2_sbw_default.addr, align 8, !tbaa !1
  store i32* %imagenow, i32** %imagenow.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %1, i32 0, i32 25
  %2 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !36
  %client_ctx_p = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %client_ctx_p, align 8, !tbaa !55
  %4 = bitcast i8* %3 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %4, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %5 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32 (%struct.gs_context_state_s*)* null, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %code, align 4, !tbaa !29
  %7 = load i32, i32* %cid.addr, align 4, !tbaa !29
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = bitcast %struct.ref_s* %cname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load %struct.gs_string_s*, %struct.gs_string_s** %char_name.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8, !tbaa !106
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cname, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* %10, i8** %bytes, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cname, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !27
  %11 = load %struct.gs_string_s*, %struct.gs_string_s** %char_name.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %11, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !108
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cname, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 %12, i32* %rsize, align 4, !tbaa !33
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %14 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %15 = load double*, double** %pwidth.addr, align 8, !tbaa !1
  %16 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %17 = load double*, double** %Metrics2_sbw_default.addr, align 8, !tbaa !1
  %call = call i32 @zchar_set_cache(%struct.gs_context_state_s* %13, %struct.gs_font_base_s* %14, %struct.ref_s* %cname, double* null, double* %15, %struct.gs_rect_s* %16, i32 (%struct.gs_context_state_s*)* @zfapi_finish_render, i32 (%struct.gs_context_state_s*)** %exec_cont, double* %17) #6
  store i32 %call, i32* %code, align 4, !tbaa !29
  %18 = bitcast %struct.ref_s* %cname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %18) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = bitcast %struct.ref_s* %cidref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = load i32, i32* %cid.addr, align 4, !tbaa !29
  %conv = sext i32 %20 to i64
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cidref, i32 0, i32 1
  %intval = bitcast %union.v* %value2 to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !30
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cidref, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  store i16 2816, i16* %type_attrs4, align 2, !tbaa !27
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %22 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %23 = load double*, double** %pwidth.addr, align 8, !tbaa !1
  %24 = load %struct.gs_rect_s*, %struct.gs_rect_s** %pbbox.addr, align 8, !tbaa !1
  %25 = load double*, double** %Metrics2_sbw_default.addr, align 8, !tbaa !1
  %call5 = call i32 @zchar_set_cache(%struct.gs_context_state_s* %21, %struct.gs_font_base_s* %22, %struct.ref_s* %cidref, double* null, double* %23, %struct.gs_rect_s* %24, i32 (%struct.gs_context_state_s*)* @zfapi_finish_render, i32 (%struct.gs_context_state_s*)** %exec_cont, double* %25) #6
  store i32 %call5, i32* %code, align 4, !tbaa !29
  %26 = bitcast %struct.ref_s* %cidref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %26) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load i32, i32* %code, align 4, !tbaa !29
  %cmp6 = icmp sge i32 %27, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.end
  %28 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %exec_cont, align 8, !tbaa !1
  %cmp8 = icmp ne i32 (%struct.gs_context_state_s*)* %28, null
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  %29 = load i32*, i32** %imagenow.addr, align 8, !tbaa !1
  store i32 1, i32* %29, align 4, !tbaa !29
  br label %if.end.12

if.else.11:                                       ; preds = %land.lhs.true, %if.end
  %30 = load i32*, i32** %imagenow.addr, align 8, !tbaa !1
  store i32 0, i32* %30, align 4, !tbaa !29
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  %31 = load i32, i32* %code, align 4, !tbaa !29
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32 (%struct.gs_context_state_s*)** %exec_cont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  ret i32 %31
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @float_to_ushort(float %v) #4 {
entry:
  %v.addr = alloca float, align 4
  store float %v, float* %v.addr, align 4, !tbaa !51
  %0 = load float, float* %v.addr, align 4, !tbaa !51
  %mul = fmul float %0, 1.600000e+01
  %conv = fptoui float %mul to i16
  ret i16 %conv
}

declare i32 @dict_length(%struct.ref_s*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @gs_sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i64 @true_type_size(%struct.ref_s* %pdr) #0 {
entry:
  %pdr.addr = alloca %struct.ref_s*, align 8
  %r = alloca %struct.sfnts_reader_s, align 8
  store %struct.ref_s* %pdr, %struct.ref_s** %pdr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.sfnts_reader_s* %r to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %pdr.addr, align 8, !tbaa !1
  call void @sfnts_reader_init(%struct.sfnts_reader_s* %r, %struct.ref_s* %1) #6
  %call = call i64 @sfnts_copy_except_glyf(%struct.sfnts_reader_s* %r, %struct.sfnts_writer_s* null) #6
  %2 = bitcast %struct.sfnts_reader_s* %r to i8*
  call void @llvm.lifetime.end(i64 88, i8* %2) #1
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @sfnts_reader_init(%struct.sfnts_reader_s* %r, %struct.ref_s* %pdr) #0 {
entry:
  %r.addr = alloca %struct.sfnts_reader_s*, align 8
  %pdr.addr = alloca %struct.ref_s*, align 8
  store %struct.sfnts_reader_s* %r, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdr, %struct.ref_s** %pdr.addr, align 8, !tbaa !1
  %0 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rbyte = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %0, i32 0, i32 7
  store i8 (%struct.sfnts_reader_s*)* @sfnts_reader_rbyte, i8 (%struct.sfnts_reader_s*)** %rbyte, align 8, !tbaa !147
  %1 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rword = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %1, i32 0, i32 8
  store i16 (%struct.sfnts_reader_s*)* @sfnts_reader_rword, i16 (%struct.sfnts_reader_s*)** %rword, align 8, !tbaa !148
  %2 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rlong = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %2, i32 0, i32 9
  store i64 (%struct.sfnts_reader_s*)* @sfnts_reader_rlong, i64 (%struct.sfnts_reader_s*)** %rlong, align 8, !tbaa !149
  %3 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rstring = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %3, i32 0, i32 10
  store i32 (%struct.sfnts_reader_s*, i8*, i32)* @sfnts_reader_rstring, i32 (%struct.sfnts_reader_s*, i8*, i32)** %rstring, align 8, !tbaa !117
  %4 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %seek = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %4, i32 0, i32 11
  store void (%struct.sfnts_reader_s*, i64)* @sfnts_reader_seek, void (%struct.sfnts_reader_s*, i64)** %seek, align 8, !tbaa !115
  %5 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %5, i32 0, i32 3
  store i64 -1, i64* %index, align 8, !tbaa !150
  %6 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %6, i32 0, i32 6
  store i32 0, i32* %error, align 4, !tbaa !118
  %7 = load %struct.ref_s*, %struct.ref_s** %pdr.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %9 to i32
  %cmp = icmp ne i32 %conv, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %pdr.addr, align 8, !tbaa !1
  %11 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %sfnts = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %11, i32 0, i32 0
  %call = call i32 @dict_find_string(%struct.ref_s* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), %struct.ref_s** %sfnts) #6
  %cmp2 = icmp sle i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error4 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %12, i32 0, i32 6
  store i32 1, i32* %error4, align 4, !tbaa !118
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %13 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  call void @sfnts_next_elem(%struct.sfnts_reader_s* %13) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @sfnts_copy_except_glyf(%struct.sfnts_reader_s* %r, %struct.sfnts_writer_s* %w) #0 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca %struct.sfnts_reader_s*, align 8
  %w.addr = alloca %struct.sfnts_writer_s*, align 8
  %tables = alloca [30 x %struct.anon.14], align 16
  %alignment = alloca i16, align 2
  %version = alloca i64, align 8
  %num_tables = alloca i16, align 2
  %i = alloca i16, align 2
  %num_tables_new = alloca i16, align 2
  %searchRange = alloca i16, align 2
  %entrySelector = alloca i16, align 2
  %rangeShift = alloca i16, align 2
  %v = alloca i16, align 2
  %size_new = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %k = alloca i32, align 4
  store %struct.sfnts_reader_s* %r, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  store %struct.sfnts_writer_s* %w, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %0 = bitcast [30 x %struct.anon.14]* %tables to i8*
  call void @llvm.lifetime.start(i64 1200, i8* %0) #1
  %1 = bitcast i16* %alignment to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  store i16 4, i16* %alignment, align 2, !tbaa !26
  %2 = bitcast i64* %version to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rlong = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %3, i32 0, i32 9
  %4 = load i64 (%struct.sfnts_reader_s*)*, i64 (%struct.sfnts_reader_s*)** %rlong, align 8, !tbaa !149
  %5 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call = call i64 %4(%struct.sfnts_reader_s* %5) #6
  store i64 %call, i64* %version, align 8, !tbaa !30
  %6 = bitcast i16* %num_tables to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rword = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %7, i32 0, i32 8
  %8 = load i16 (%struct.sfnts_reader_s*)*, i16 (%struct.sfnts_reader_s*)** %rword, align 8, !tbaa !148
  %9 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call1 = call zeroext i16 %8(%struct.sfnts_reader_s* %9) #6
  store i16 %call1, i16* %num_tables, align 2, !tbaa !26
  %10 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  %11 = bitcast i16* %num_tables_new to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  store i16 0, i16* %num_tables_new, align 2, !tbaa !26
  %12 = bitcast i16* %searchRange to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #1
  %13 = bitcast i16* %entrySelector to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  store i16 0, i16* %entrySelector, align 2, !tbaa !26
  %14 = bitcast i16* %rangeShift to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #1
  %15 = bitcast i16* %v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  %16 = bitcast i64* %size_new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 12, i64* %size_new, align 8, !tbaa !30
  %17 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rword2 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %17, i32 0, i32 8
  %18 = load i16 (%struct.sfnts_reader_s*)*, i16 (%struct.sfnts_reader_s*)** %rword2, align 8, !tbaa !148
  %19 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call3 = call zeroext i16 %18(%struct.sfnts_reader_s* %19) #6
  %20 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rword4 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %20, i32 0, i32 8
  %21 = load i16 (%struct.sfnts_reader_s*)*, i16 (%struct.sfnts_reader_s*)** %rword4, align 8, !tbaa !148
  %22 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call5 = call zeroext i16 %21(%struct.sfnts_reader_s* %22) #6
  %23 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rword6 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %23, i32 0, i32 8
  %24 = load i16 (%struct.sfnts_reader_s*)*, i16 (%struct.sfnts_reader_s*)** %rword6, align 8, !tbaa !148
  %25 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call7 = call zeroext i16 %24(%struct.sfnts_reader_s* %25) #6
  store i16 0, i16* %i, align 2, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %26 = load i16, i16* %i, align 2, !tbaa !26
  %conv = zext i16 %26 to i32
  %27 = load i16, i16* %num_tables, align 2, !tbaa !26
  %conv8 = zext i16 %27 to i32
  %cmp = icmp slt i32 %conv, %conv8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %28, i32 0, i32 6
  %29 = load i32, i32* %error, align 4, !tbaa !118
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end:                                           ; preds = %for.body
  %30 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rstring = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %30, i32 0, i32 10
  %31 = load i32 (%struct.sfnts_reader_s*, i8*, i32)*, i32 (%struct.sfnts_reader_s*, i8*, i32)** %rstring, align 8, !tbaa !117
  %32 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %33 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom = zext i16 %33 to i64
  %arrayidx = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom
  %tag = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %tag, i32 0, i32 0
  %call10 = call i32 %31(%struct.sfnts_reader_s* %32, i8* %arraydecay, i32 4) #6
  %34 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rlong11 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %34, i32 0, i32 9
  %35 = load i64 (%struct.sfnts_reader_s*)*, i64 (%struct.sfnts_reader_s*)** %rlong11, align 8, !tbaa !149
  %36 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call12 = call i64 %35(%struct.sfnts_reader_s* %36) #6
  %37 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom13 = zext i16 %37 to i64
  %arrayidx14 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom13
  %checkSum = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx14, i32 0, i32 1
  store i64 %call12, i64* %checkSum, align 8, !tbaa !151
  %38 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rlong15 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %38, i32 0, i32 9
  %39 = load i64 (%struct.sfnts_reader_s*)*, i64 (%struct.sfnts_reader_s*)** %rlong15, align 8, !tbaa !149
  %40 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call16 = call i64 %39(%struct.sfnts_reader_s* %40) #6
  %41 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom17 = zext i16 %41 to i64
  %arrayidx18 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom17
  %offset = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx18, i32 0, i32 2
  store i64 %call16, i64* %offset, align 8, !tbaa !153
  %42 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rlong19 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %42, i32 0, i32 9
  %43 = load i64 (%struct.sfnts_reader_s*)*, i64 (%struct.sfnts_reader_s*)** %rlong19, align 8, !tbaa !149
  %44 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call20 = call i64 %43(%struct.sfnts_reader_s* %44) #6
  %45 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom21 = zext i16 %45 to i64
  %arrayidx22 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom21
  %length = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx22, i32 0, i32 4
  store i64 %call20, i64* %length, align 8, !tbaa !154
  %46 = load i64, i64* %size_new, align 8, !tbaa !30
  %47 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom23 = zext i16 %47 to i64
  %arrayidx24 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom23
  %offset_new = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx24, i32 0, i32 3
  store i64 %46, i64* %offset_new, align 8, !tbaa !155
  %48 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom25 = zext i16 %48 to i64
  %arrayidx26 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom25
  %tag27 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx26, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [4 x i8], [4 x i8]* %tag27, i32 0, i32 0
  %call29 = call i32 @sfnts_need_copy_table(i8* %arraydecay28) #6
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end
  %49 = load i16, i16* %num_tables_new, align 2, !tbaa !26
  %inc = add i16 %49, 1
  store i16 %inc, i16* %num_tables_new, align 2, !tbaa !26
  %50 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom32 = zext i16 %50 to i64
  %arrayidx33 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom32
  %length34 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx33, i32 0, i32 4
  %51 = load i64, i64* %length34, align 8, !tbaa !154
  %add = add i64 %51, 4
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 4
  %mul = mul i64 %div, 4
  %52 = load i64, i64* %size_new, align 8, !tbaa !30
  %add35 = add i64 %52, %mul
  store i64 %add35, i64* %size_new, align 8, !tbaa !30
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %53 = load i16, i16* %i, align 2, !tbaa !26
  %inc37 = add i16 %53, 1
  store i16 %inc37, i16* %i, align 2, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load i16, i16* %num_tables_new, align 2, !tbaa !26
  %conv38 = zext i16 %54 to i32
  %mul39 = mul nsw i32 %conv38, 16
  %conv40 = sext i32 %mul39 to i64
  %55 = load i64, i64* %size_new, align 8, !tbaa !30
  %add41 = add i64 %55, %conv40
  store i64 %add41, i64* %size_new, align 8, !tbaa !30
  %56 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %cmp42 = icmp eq %struct.sfnts_writer_s* %56, null
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.end
  %57 = load i64, i64* %size_new, align 8, !tbaa !30
  store i64 %57, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

if.end.45:                                        ; preds = %for.end
  %58 = load i16, i16* %num_tables_new, align 2, !tbaa !26
  %conv46 = zext i16 %58 to i32
  %mul47 = mul nsw i32 %conv46, 16
  %conv48 = trunc i32 %mul47 to i16
  store i16 %conv48, i16* %v, align 2, !tbaa !26
  store i16 %conv48, i16* %searchRange, align 2, !tbaa !26
  store i16 0, i16* %i, align 2, !tbaa !26
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.58, %if.end.45
  %59 = load i16, i16* %v, align 2, !tbaa !26
  %tobool50 = icmp ne i16 %59, 0
  br i1 %tobool50, label %for.body.51, label %for.end.60

for.body.51:                                      ; preds = %for.cond.49
  %60 = load i16, i16* %v, align 2, !tbaa !26
  %conv52 = zext i16 %60 to i32
  %shr = ashr i32 %conv52, 1
  %conv53 = trunc i32 %shr to i16
  store i16 %conv53, i16* %v, align 2, !tbaa !26
  %61 = load i16, i16* %v, align 2, !tbaa !26
  %conv54 = zext i16 %61 to i32
  %62 = load i16, i16* %searchRange, align 2, !tbaa !26
  %conv55 = zext i16 %62 to i32
  %or = or i32 %conv55, %conv54
  %conv56 = trunc i32 %or to i16
  store i16 %conv56, i16* %searchRange, align 2, !tbaa !26
  %63 = load i16, i16* %entrySelector, align 2, !tbaa !26
  %inc57 = add i16 %63, 1
  store i16 %inc57, i16* %entrySelector, align 2, !tbaa !26
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.51
  %64 = load i16, i16* %i, align 2, !tbaa !26
  %inc59 = add i16 %64, 1
  store i16 %inc59, i16* %i, align 2, !tbaa !26
  br label %for.cond.49

for.end.60:                                       ; preds = %for.cond.49
  %65 = load i16, i16* %searchRange, align 2, !tbaa !26
  %conv61 = zext i16 %65 to i32
  %shr62 = ashr i32 %conv61, 1
  %66 = load i16, i16* %searchRange, align 2, !tbaa !26
  %conv63 = zext i16 %66 to i32
  %sub64 = sub nsw i32 %conv63, %shr62
  %conv65 = trunc i32 %sub64 to i16
  store i16 %conv65, i16* %searchRange, align 2, !tbaa !26
  %67 = load i16, i16* %num_tables_new, align 2, !tbaa !26
  %conv66 = zext i16 %67 to i32
  %mul67 = mul nsw i32 %conv66, 16
  %68 = load i16, i16* %searchRange, align 2, !tbaa !26
  %conv68 = zext i16 %68 to i32
  %sub69 = sub nsw i32 %mul67, %conv68
  %conv70 = trunc i32 %sub69 to i16
  store i16 %conv70, i16* %rangeShift, align 2, !tbaa !26
  %69 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wlong = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %69, i32 0, i32 5
  %70 = load void (%struct.sfnts_writer_s*, i64)*, void (%struct.sfnts_writer_s*, i64)** %wlong, align 8, !tbaa !156
  %71 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %72 = load i64, i64* %version, align 8, !tbaa !30
  call void %70(%struct.sfnts_writer_s* %71, i64 %72) #6
  %73 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wword = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %73, i32 0, i32 4
  %74 = load void (%struct.sfnts_writer_s*, i16)*, void (%struct.sfnts_writer_s*, i16)** %wword, align 8, !tbaa !157
  %75 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %76 = load i16, i16* %num_tables_new, align 2, !tbaa !26
  call void %74(%struct.sfnts_writer_s* %75, i16 zeroext %76) #6
  %77 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wword71 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %77, i32 0, i32 4
  %78 = load void (%struct.sfnts_writer_s*, i16)*, void (%struct.sfnts_writer_s*, i16)** %wword71, align 8, !tbaa !157
  %79 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %80 = load i16, i16* %searchRange, align 2, !tbaa !26
  call void %78(%struct.sfnts_writer_s* %79, i16 zeroext %80) #6
  %81 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wword72 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %81, i32 0, i32 4
  %82 = load void (%struct.sfnts_writer_s*, i16)*, void (%struct.sfnts_writer_s*, i16)** %wword72, align 8, !tbaa !157
  %83 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %84 = load i16, i16* %entrySelector, align 2, !tbaa !26
  call void %82(%struct.sfnts_writer_s* %83, i16 zeroext %84) #6
  %85 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wword73 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %85, i32 0, i32 4
  %86 = load void (%struct.sfnts_writer_s*, i16)*, void (%struct.sfnts_writer_s*, i16)** %wword73, align 8, !tbaa !157
  %87 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %88 = load i16, i16* %rangeShift, align 2, !tbaa !26
  call void %86(%struct.sfnts_writer_s* %87, i16 zeroext %88) #6
  store i16 0, i16* %i, align 2, !tbaa !26
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.108, %for.end.60
  %89 = load i16, i16* %i, align 2, !tbaa !26
  %conv75 = zext i16 %89 to i32
  %90 = load i16, i16* %num_tables, align 2, !tbaa !26
  %conv76 = zext i16 %90 to i32
  %cmp77 = icmp slt i32 %conv75, %conv76
  br i1 %cmp77, label %for.body.79, label %for.end.110

for.body.79:                                      ; preds = %for.cond.74
  %91 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom80 = zext i16 %91 to i64
  %arrayidx81 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom80
  %tag82 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx81, i32 0, i32 0
  %arraydecay83 = getelementptr inbounds [4 x i8], [4 x i8]* %tag82, i32 0, i32 0
  %call84 = call i32 @sfnts_need_copy_table(i8* %arraydecay83) #6
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.107

if.then.86:                                       ; preds = %for.body.79
  %92 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wstring = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %92, i32 0, i32 6
  %93 = load void (%struct.sfnts_writer_s*, i8*, i32)*, void (%struct.sfnts_writer_s*, i8*, i32)** %wstring, align 8, !tbaa !158
  %94 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %95 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom87 = zext i16 %95 to i64
  %arrayidx88 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom87
  %tag89 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx88, i32 0, i32 0
  %arraydecay90 = getelementptr inbounds [4 x i8], [4 x i8]* %tag89, i32 0, i32 0
  call void %93(%struct.sfnts_writer_s* %94, i8* %arraydecay90, i32 4) #6
  %96 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wlong91 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %96, i32 0, i32 5
  %97 = load void (%struct.sfnts_writer_s*, i64)*, void (%struct.sfnts_writer_s*, i64)** %wlong91, align 8, !tbaa !156
  %98 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %99 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom92 = zext i16 %99 to i64
  %arrayidx93 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom92
  %checkSum94 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx93, i32 0, i32 1
  %100 = load i64, i64* %checkSum94, align 8, !tbaa !151
  call void %97(%struct.sfnts_writer_s* %98, i64 %100) #6
  %101 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wlong95 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %101, i32 0, i32 5
  %102 = load void (%struct.sfnts_writer_s*, i64)*, void (%struct.sfnts_writer_s*, i64)** %wlong95, align 8, !tbaa !156
  %103 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %104 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom96 = zext i16 %104 to i64
  %arrayidx97 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom96
  %offset_new98 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx97, i32 0, i32 3
  %105 = load i64, i64* %offset_new98, align 8, !tbaa !155
  %106 = load i16, i16* %num_tables_new, align 2, !tbaa !26
  %conv99 = zext i16 %106 to i32
  %mul100 = mul nsw i32 %conv99, 16
  %conv101 = sext i32 %mul100 to i64
  %add102 = add i64 %105, %conv101
  call void %102(%struct.sfnts_writer_s* %103, i64 %add102) #6
  %107 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wlong103 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %107, i32 0, i32 5
  %108 = load void (%struct.sfnts_writer_s*, i64)*, void (%struct.sfnts_writer_s*, i64)** %wlong103, align 8, !tbaa !156
  %109 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %110 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom104 = zext i16 %110 to i64
  %arrayidx105 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom104
  %length106 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx105, i32 0, i32 4
  %111 = load i64, i64* %length106, align 8, !tbaa !154
  call void %108(%struct.sfnts_writer_s* %109, i64 %111) #6
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.86, %for.body.79
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %112 = load i16, i16* %i, align 2, !tbaa !26
  %inc109 = add i16 %112, 1
  store i16 %inc109, i16* %i, align 2, !tbaa !26
  br label %for.cond.74

for.end.110:                                      ; preds = %for.cond.74
  store i16 0, i16* %i, align 2, !tbaa !26
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.157, %for.end.110
  %113 = load i16, i16* %i, align 2, !tbaa !26
  %conv112 = zext i16 %113 to i32
  %114 = load i16, i16* %num_tables, align 2, !tbaa !26
  %conv113 = zext i16 %114 to i32
  %cmp114 = icmp slt i32 %conv112, %conv113
  br i1 %cmp114, label %for.body.116, label %for.end.159

for.body.116:                                     ; preds = %for.cond.111
  %115 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom117 = zext i16 %115 to i64
  %arrayidx118 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom117
  %tag119 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx118, i32 0, i32 0
  %arraydecay120 = getelementptr inbounds [4 x i8], [4 x i8]* %tag119, i32 0, i32 0
  %call121 = call i32 @sfnts_need_copy_table(i8* %arraydecay120) #6
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.156

if.then.123:                                      ; preds = %for.body.116
  %116 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #1
  %117 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom124 = zext i16 %117 to i64
  %arrayidx125 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom124
  %length126 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx125, i32 0, i32 4
  %118 = load i64, i64* %length126, align 8, !tbaa !154
  %conv127 = trunc i64 %118 to i32
  store i32 %conv127, i32* %k, align 4, !tbaa !29
  %119 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %seek = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %119, i32 0, i32 11
  %120 = load void (%struct.sfnts_reader_s*, i64)*, void (%struct.sfnts_reader_s*, i64)** %seek, align 8, !tbaa !115
  %121 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %122 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom128 = zext i16 %122 to i64
  %arrayidx129 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom128
  %offset130 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx129, i32 0, i32 2
  %123 = load i64, i64* %offset130, align 8, !tbaa !153
  call void %120(%struct.sfnts_reader_s* %121, i64 %123) #6
  %124 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error131 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %124, i32 0, i32 6
  %125 = load i32, i32* %error131, align 4, !tbaa !118
  %tobool132 = icmp ne i32 %125, 0
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.then.123
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.134:                                       ; preds = %if.then.123
  %126 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %126, i32 0, i32 1
  %127 = load i8*, i8** %p, align 8, !tbaa !122
  %128 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %128, i32 0, i32 0
  %129 = load i8*, i8** %buf, align 8, !tbaa !123
  %sub.ptr.lhs.cast = ptrtoint i8* %127 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %129 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %130 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom135 = zext i16 %130 to i64
  %arrayidx136 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom135
  %offset_new137 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx136, i32 0, i32 3
  %131 = load i64, i64* %offset_new137, align 8, !tbaa !155
  %132 = load i16, i16* %num_tables_new, align 2, !tbaa !26
  %conv138 = zext i16 %132 to i32
  %mul139 = mul nsw i32 %conv138, 16
  %conv140 = sext i32 %mul139 to i64
  %add141 = add i64 %131, %conv140
  %cmp142 = icmp ne i64 %sub.ptr.sub, %add141
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.134
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.145:                                       ; preds = %if.end.134
  %133 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %134 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %135 = load i16, i16* %i, align 2, !tbaa !26
  %idxprom146 = zext i16 %135 to i64
  %arrayidx147 = getelementptr inbounds [30 x %struct.anon.14], [30 x %struct.anon.14]* %tables, i32 0, i64 %idxprom146
  %length148 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %arrayidx147, i32 0, i32 4
  %136 = load i64, i64* %length148, align 8, !tbaa !154
  %conv149 = trunc i64 %136 to i32
  call void @sfnt_copy_table(%struct.sfnts_reader_s* %133, %struct.sfnts_writer_s* %134, i32 %conv149) #6
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.153, %if.end.145
  %137 = load i32, i32* %k, align 4, !tbaa !29
  %and = and i32 %137, 3
  %tobool151 = icmp ne i32 %and, 0
  br i1 %tobool151, label %for.body.152, label %for.end.155

for.body.152:                                     ; preds = %for.cond.150
  %138 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wbyte = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %138, i32 0, i32 3
  %139 = load void (%struct.sfnts_writer_s*, i8)*, void (%struct.sfnts_writer_s*, i8)** %wbyte, align 8, !tbaa !159
  %140 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  call void %139(%struct.sfnts_writer_s* %140, i8 zeroext 0) #6
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.152
  %141 = load i32, i32* %k, align 4, !tbaa !29
  %inc154 = add nsw i32 %141, 1
  store i32 %inc154, i32* %k, align 4, !tbaa !29
  br label %for.cond.150

for.end.155:                                      ; preds = %for.cond.150
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.155, %if.then.144, %if.then.133
  %142 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.160 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.156

if.end.156:                                       ; preds = %cleanup.cont, %for.body.116
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %143 = load i16, i16* %i, align 2, !tbaa !26
  %inc158 = add i16 %143, 1
  store i16 %inc158, i16* %i, align 2, !tbaa !26
  br label %for.cond.111

for.end.159:                                      ; preds = %for.cond.111
  %144 = load i64, i64* %size_new, align 8, !tbaa !30
  store i64 %144, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.160

cleanup.160:                                      ; preds = %for.end.159, %cleanup, %if.then.44, %if.then
  %145 = bitcast i64* %size_new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i16* %v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %146) #1
  %147 = bitcast i16* %rangeShift to i8*
  call void @llvm.lifetime.end(i64 2, i8* %147) #1
  %148 = bitcast i16* %entrySelector to i8*
  call void @llvm.lifetime.end(i64 2, i8* %148) #1
  %149 = bitcast i16* %searchRange to i8*
  call void @llvm.lifetime.end(i64 2, i8* %149) #1
  %150 = bitcast i16* %num_tables_new to i8*
  call void @llvm.lifetime.end(i64 2, i8* %150) #1
  %151 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %151) #1
  %152 = bitcast i16* %num_tables to i8*
  call void @llvm.lifetime.end(i64 2, i8* %152) #1
  %153 = bitcast i64* %version to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i16* %alignment to i8*
  call void @llvm.lifetime.end(i64 2, i8* %154) #1
  %155 = bitcast [30 x %struct.anon.14]* %tables to i8*
  call void @llvm.lifetime.end(i64 1200, i8* %155) #1
  %156 = load i64, i64* %retval
  ret i64 %156
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @sfnts_reader_rbyte(%struct.sfnts_reader_s* %r) #0 {
entry:
  %r.addr = alloca %struct.sfnts_reader_s*, align 8
  store %struct.sfnts_reader_s* %r, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %0 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call = call zeroext i8 @sfnts_reader_rbyte_inline(%struct.sfnts_reader_s* %0) #6
  ret i8 %call
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @sfnts_reader_rword(%struct.sfnts_reader_s* %r) #0 {
entry:
  %r.addr = alloca %struct.sfnts_reader_s*, align 8
  store %struct.sfnts_reader_s* %r, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %0 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call = call zeroext i8 @sfnts_reader_rbyte_inline(%struct.sfnts_reader_s* %0) #6
  %conv = zext i8 %call to i32
  %shl = shl i32 %conv, 8
  %1 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call1 = call zeroext i8 @sfnts_reader_rbyte_inline(%struct.sfnts_reader_s* %1) #6
  %conv2 = zext i8 %call1 to i32
  %add = add nsw i32 %shl, %conv2
  %conv3 = trunc i32 %add to i16
  ret i16 %conv3
}

; Function Attrs: nounwind uwtable
define internal i64 @sfnts_reader_rlong(%struct.sfnts_reader_s* %r) #0 {
entry:
  %r.addr = alloca %struct.sfnts_reader_s*, align 8
  store %struct.sfnts_reader_s* %r, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %0 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call = call zeroext i8 @sfnts_reader_rbyte_inline(%struct.sfnts_reader_s* %0) #6
  %conv = zext i8 %call to i32
  %shl = shl i32 %conv, 24
  %1 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call1 = call zeroext i8 @sfnts_reader_rbyte_inline(%struct.sfnts_reader_s* %1) #6
  %conv2 = zext i8 %call1 to i32
  %shl3 = shl i32 %conv2, 16
  %add = add nsw i32 %shl, %shl3
  %2 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call4 = call zeroext i8 @sfnts_reader_rbyte_inline(%struct.sfnts_reader_s* %2) #6
  %conv5 = zext i8 %call4 to i32
  %shl6 = shl i32 %conv5, 8
  %add7 = add nsw i32 %add, %shl6
  %3 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %call8 = call zeroext i8 @sfnts_reader_rbyte_inline(%struct.sfnts_reader_s* %3) #6
  %conv9 = zext i8 %call8 to i32
  %add10 = add nsw i32 %add7, %conv9
  %conv11 = sext i32 %add10 to i64
  ret i64 %conv11
}

; Function Attrs: nounwind uwtable
define internal i32 @sfnts_reader_rstring(%struct.sfnts_reader_s* %r, i8* %v, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca %struct.sfnts_reader_s*, align 8
  %v.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %rlength = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %l = alloca i32, align 4
  store %struct.sfnts_reader_s* %r, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  store i8* %v, i8** %v.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !29
  %0 = bitcast i32* %rlength to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %length.addr, align 4, !tbaa !29
  store i32 %1, i32* %rlength, align 4, !tbaa !29
  %2 = load i32, i32* %length.addr, align 4, !tbaa !29
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %3 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %3, i32 0, i32 6
  %4 = load i32, i32* %error, align 4, !tbaa !118
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %length.addr, align 4, !tbaa !29
  %7 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %length1 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %7, i32 0, i32 5
  %8 = load i32, i32* %length1, align 4, !tbaa !160
  %9 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %9, i32 0, i32 4
  %10 = load i32, i32* %offset, align 4, !tbaa !161
  %sub = sub i32 %8, %10
  %cmp2 = icmp ult i32 %6, %sub
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %11 = load i32, i32* %length.addr, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %12 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %length3 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %12, i32 0, i32 5
  %13 = load i32, i32* %length3, align 4, !tbaa !160
  %14 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %offset4 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %14, i32 0, i32 4
  %15 = load i32, i32* %offset4, align 4, !tbaa !161
  %sub5 = sub i32 %13, %15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %sub5, %cond.false ]
  store i32 %cond, i32* %l, align 4, !tbaa !29
  %16 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %17 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %17, i32 0, i32 2
  %18 = load i8*, i8** %p, align 8, !tbaa !162
  %19 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %offset6 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %19, i32 0, i32 4
  %20 = load i32, i32* %offset6, align 4, !tbaa !161
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  %21 = load i32, i32* %l, align 4, !tbaa !29
  %conv = sext i32 %21 to i64
  %call = call i8* @memcpy(i8* %16, i8* %add.ptr, i64 %conv) #8
  %22 = load i32, i32* %l, align 4, !tbaa !29
  %23 = load i32, i32* %length.addr, align 4, !tbaa !29
  %sub7 = sub nsw i32 %23, %22
  store i32 %sub7, i32* %length.addr, align 4, !tbaa !29
  %24 = load i32, i32* %l, align 4, !tbaa !29
  %25 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %offset8 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %25, i32 0, i32 4
  %26 = load i32, i32* %offset8, align 4, !tbaa !161
  %add = add i32 %26, %24
  store i32 %add, i32* %offset8, align 4, !tbaa !161
  %27 = load i32, i32* %length.addr, align 4, !tbaa !29
  %cmp9 = icmp sle i32 %27, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %cond.end
  %28 = load i32, i32* %rlength, align 4, !tbaa !29
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %cond.end
  %29 = load i32, i32* %l, align 4, !tbaa !29
  %30 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %idx.ext13 = sext i32 %29 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %30, i64 %idx.ext13
  store i8* %add.ptr14, i8** %v.addr, align 8, !tbaa !1
  %31 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  call void @sfnts_next_elem(%struct.sfnts_reader_s* %31) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11
  %32 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i32, i32* %rlength, align 4, !tbaa !29
  %34 = load i32, i32* %length.addr, align 4, !tbaa !29
  %sub15 = sub nsw i32 %33, %34
  store i32 %sub15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %while.end, %cleanup, %if.then
  %35 = bitcast i32* %rlength to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal void @sfnts_reader_seek(%struct.sfnts_reader_s* %r, i64 %pos) #0 {
entry:
  %r.addr = alloca %struct.sfnts_reader_s*, align 8
  %pos.addr = alloca i64, align 8
  %skipped = alloca i64, align 8
  store %struct.sfnts_reader_s* %r, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !30
  %0 = bitcast i64* %skipped to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %skipped, align 8, !tbaa !30
  %1 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %1, i32 0, i32 3
  store i64 -1, i64* %index, align 8, !tbaa !150
  %2 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  call void @sfnts_next_elem(%struct.sfnts_reader_s* %2) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i64, i64* %skipped, align 8, !tbaa !30
  %4 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %4, i32 0, i32 5
  %5 = load i32, i32* %length, align 4, !tbaa !160
  %conv = zext i32 %5 to i64
  %add = add i64 %3, %conv
  %6 = load i64, i64* %pos.addr, align 8, !tbaa !30
  %cmp = icmp ult i64 %add, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %7, i32 0, i32 6
  %8 = load i32, i32* %error, align 4, !tbaa !118
  %tobool = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %length2 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %10, i32 0, i32 5
  %11 = load i32, i32* %length2, align 4, !tbaa !160
  %conv3 = zext i32 %11 to i64
  %12 = load i64, i64* %skipped, align 8, !tbaa !30
  %add4 = add i64 %12, %conv3
  store i64 %add4, i64* %skipped, align 8, !tbaa !30
  %13 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  call void @sfnts_next_elem(%struct.sfnts_reader_s* %13) #6
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i64, i64* %pos.addr, align 8, !tbaa !30
  %15 = load i64, i64* %skipped, align 8, !tbaa !30
  %sub = sub i64 %14, %15
  %conv5 = trunc i64 %sub to i32
  %16 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %16, i32 0, i32 4
  store i32 %conv5, i32* %offset, align 4, !tbaa !161
  %17 = bitcast i64* %skipped to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sfnts_next_elem(%struct.sfnts_reader_s* %r) #0 {
entry:
  %r.addr = alloca %struct.sfnts_reader_s*, align 8
  %s = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.sfnts_reader_s* %r, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %s to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %2, i32 0, i32 6
  %3 = load i32, i32* %error, align 4, !tbaa !118
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %4, i32 0, i32 3
  %5 = load i64, i64* %index, align 8, !tbaa !150
  %inc = add nsw i64 %5, 1
  store i64 %inc, i64* %index, align 8, !tbaa !150
  %6 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !163
  %8 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %sfnts = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %8, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %sfnts, align 8, !tbaa !164
  %10 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %index1 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %10, i32 0, i32 3
  %11 = load i64, i64* %index1, align 8, !tbaa !150
  %call = call i32 @array_get(%struct.gs_memory_s* %7, %struct.ref_s* %9, i64 %11, %struct.ref_s* %s) #6
  store i32 %call, i32* %code, align 4, !tbaa !29
  %12 = load i32, i32* %code, align 4, !tbaa !29
  %cmp = icmp eq i32 %12, -15
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  %13 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error3 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %13, i32 0, i32 6
  %14 = load i32, i32* %error3, align 4, !tbaa !118
  %or = or i32 %14, 2
  store i32 %or, i32* %error3, align 4, !tbaa !118
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %15 = load i32, i32* %code, align 4, !tbaa !29
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.else
  %16 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error6 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %16, i32 0, i32 6
  %17 = load i32, i32* %error6, align 4, !tbaa !118
  %or7 = or i32 %17, 1
  store i32 %or7, i32* %error6, align 4, !tbaa !118
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  %18 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error10 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %18, i32 0, i32 6
  %19 = load i32, i32* %error10, align 4, !tbaa !118
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %20 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %21 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %21, i32 0, i32 2
  store i8* %20, i8** %p, align 8, !tbaa !162
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %s, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %22 = load i32, i32* %rsize, align 4, !tbaa !33
  %and = and i32 %22, -2
  %23 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %23, i32 0, i32 5
  store i32 %and, i32* %length, align 4, !tbaa !160
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  %24 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %length14 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %24, i32 0, i32 5
  %25 = load i32, i32* %length14, align 4, !tbaa !160
  %cmp15 = icmp eq i32 %25, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %26, i32 0, i32 4
  store i32 0, i32* %offset, align 4, !tbaa !161
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.12, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.ref_s* %s to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
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

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @sfnts_reader_rbyte_inline(%struct.sfnts_reader_s* %r) #4 {
entry:
  %r.addr = alloca %struct.sfnts_reader_s*, align 8
  store %struct.sfnts_reader_s* %r, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %0 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %0, i32 0, i32 4
  %1 = load i32, i32* %offset, align 4, !tbaa !161
  %2 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %2, i32 0, i32 5
  %3 = load i32, i32* %length, align 4, !tbaa !160
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  call void @sfnts_next_elem(%struct.sfnts_reader_s* %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %5, i32 0, i32 6
  %6 = load i32, i32* %error, align 4, !tbaa !118
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %offset1 = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %7, i32 0, i32 4
  %8 = load i32, i32* %offset1, align 4, !tbaa !161
  %inc = add i32 %8, 1
  store i32 %inc, i32* %offset1, align 4, !tbaa !161
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %9, i32 0, i32 2
  %10 = load i8*, i8** %p, align 8, !tbaa !162
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %conv2 = trunc i32 %cond to i8
  ret i8 %conv2
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sfnts_need_copy_table(i8* %tag) #4 {
entry:
  %tag.addr = alloca i8*, align 8
  store i8* %tag, i8** %tag.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %call = call i32 @memcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i64 4) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %call1 = call i32 @memcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i64 4) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true.3, label %land.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %2 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %call4 = call i32 @memcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i64 4) #7
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true.6, label %land.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %3 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %call7 = call i32 @memcmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i64 4) #7
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.6
  %4 = load i8*, i8** %tag.addr, align 8, !tbaa !1
  %call9 = call i32 @memcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i64 4) #7
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.6, %land.lhs.true.3, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true.6 ], [ false, %land.lhs.true.3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @sfnt_copy_table(%struct.sfnts_reader_s* %r, %struct.sfnts_writer_s* %w, i32 %length) #0 {
entry:
  %r.addr = alloca %struct.sfnts_reader_s*, align 8
  %w.addr = alloca %struct.sfnts_writer_s*, align 8
  %length.addr = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %l = alloca i32, align 4
  store %struct.sfnts_reader_s* %r, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  store %struct.sfnts_writer_s* %w, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !29
  %0 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %1 = load i32, i32* %length.addr, align 4, !tbaa !29
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %2, i32 0, i32 6
  %3 = load i32, i32* %error, align 4, !tbaa !118
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %length.addr, align 4, !tbaa !29
  %conv = sext i32 %6 to i64
  %cmp1 = icmp ult i64 %conv, 1024
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %7 = load i32, i32* %length.addr, align 4, !tbaa !29
  %conv3 = sext i32 %7 to i64
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ 1024, %cond.false ]
  %conv4 = trunc i64 %cond to i32
  store i32 %conv4, i32* %l, align 4, !tbaa !29
  %8 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %rstring = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %8, i32 0, i32 10
  %9 = load i32 (%struct.sfnts_reader_s*, i8*, i32)*, i32 (%struct.sfnts_reader_s*, i8*, i32)** %rstring, align 8, !tbaa !117
  %10 = load %struct.sfnts_reader_s*, %struct.sfnts_reader_s** %r.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %11 = load i32, i32* %l, align 4, !tbaa !29
  %call = call i32 %9(%struct.sfnts_reader_s* %10, i8* %arraydecay, i32 %11) #6
  %12 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %wstring = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %12, i32 0, i32 6
  %13 = load void (%struct.sfnts_writer_s*, i8*, i32)*, void (%struct.sfnts_writer_s*, i8*, i32)** %wstring, align 8, !tbaa !158
  %14 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %15 = load i32, i32* %l, align 4, !tbaa !29
  call void %13(%struct.sfnts_writer_s* %14, i8* %arraydecay5, i32 %15) #6
  %16 = load i32, i32* %l, align 4, !tbaa !29
  %17 = load i32, i32* %length.addr, align 4, !tbaa !29
  %sub = sub nsw i32 %17, %16
  store i32 %sub, i32* %length.addr, align 4, !tbaa !29
  %18 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %19) #1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal zeroext i16 @get_type1_data(%struct.gs_fapi_font_s* %ff, %struct.ref_s* %type1string, i8* %buf, i16 zeroext %buf_length) #0 {
entry:
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %type1string.addr = alloca %struct.ref_s*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i16, align 2
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %lenIV = alloca i32, align 4
  %length = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store %struct.ref_s* %type1string, %struct.ref_s** %type1string.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i16 %buf_length, i16* %buf_length.addr, align 2, !tbaa !26
  %0 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 15
  %2 = load i8*, i8** %client_font_data, align 8, !tbaa !61
  %3 = bitcast i8* %2 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %3, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %4 = bitcast i32* %lenIV to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %5, i32 0, i32 29
  %lenIV1 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 4
  %6 = load i32, i32* %lenIV1, align 4, !tbaa !85
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %7, i32 0, i32 29
  %lenIV3 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data2, i32 0, i32 4
  %8 = load i32, i32* %lenIV3, align 4, !tbaa !85
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %lenIV, align 4, !tbaa !29
  %9 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %type1string.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !33
  %12 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %need_decrypt = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %12, i32 0, i32 1
  %13 = load i32, i32* %need_decrypt, align 4, !tbaa !84
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %14 = load i32, i32* %lenIV, align 4, !tbaa !29
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i32 [ %14, %cond.true.4 ], [ 0, %cond.false.5 ]
  %sub = sub i32 %11, %cond7
  store i32 %sub, i32* %length, align 4, !tbaa !29
  %15 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp8 = icmp ne i8* %15, null
  br i1 %cmp8, label %if.then, label %if.end.26

if.then:                                          ; preds = %cond.end.6
  %16 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %length, align 4, !tbaa !29
  %18 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv = zext i16 %18 to i32
  %cmp9 = icmp slt i32 %17, %conv
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.then
  %19 = load i32, i32* %length, align 4, !tbaa !29
  br label %cond.end.14

cond.false.12:                                    ; preds = %if.then
  %20 = load i16, i16* %buf_length.addr, align 2, !tbaa !26
  %conv13 = zext i16 %20 to i32
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.11
  %cond15 = phi i32 [ %19, %cond.true.11 ], [ %conv13, %cond.false.12 ]
  store i32 %cond15, i32* %l, align 4, !tbaa !29
  %21 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %need_decrypt16 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %21, i32 0, i32 1
  %22 = load i32, i32* %need_decrypt16, align 4, !tbaa !84
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.14
  %23 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data18 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %23, i32 0, i32 29
  %lenIV19 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data18, i32 0, i32 4
  %24 = load i32, i32* %lenIV19, align 4, !tbaa !85
  %cmp20 = icmp sge i32 %24, 0
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true
  %25 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %type1string.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %27 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %28 = load i32, i32* %l, align 4, !tbaa !29
  %29 = load i32, i32* %lenIV, align 4, !tbaa !29
  %add = add nsw i32 %28, %29
  %30 = load i32, i32* %lenIV, align 4, !tbaa !29
  call void @decode_bytes(i8* %25, i8* %27, i32 %add, i32 %30) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %cond.end.14
  %31 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %type1string.addr, align 8, !tbaa !1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %const_bytes24 = bitcast %union.v* %value23 to i8**
  %33 = load i8*, i8** %const_bytes24, align 8, !tbaa !1
  %34 = load i32, i32* %l, align 4, !tbaa !29
  %conv25 = sext i32 %34 to i64
  %call = call i8* @memcpy(i8* %31, i8* %33, i64 %conv25) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.22
  %35 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %cond.end.6
  %36 = load i32, i32* %length, align 4, !tbaa !29
  %conv27 = trunc i32 %36 to i16
  %37 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %lenIV to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  ret i16 %conv27
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @decode_bytes(i8* %p, i8* %s, i32 %l, i32 %lenIV) #4 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %lenIV.addr = alloca i32, align 4
  %state = alloca i16, align 2
  %c = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  store i32 %l, i32* %l.addr, align 4, !tbaa !29
  store i32 %lenIV, i32* %lenIV.addr, align 4, !tbaa !29
  %0 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  store i16 4330, i16* %state, align 2, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %l.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %2 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !19
  %conv = zext i8 %3 to i32
  %4 = load i16, i16* %state, align 2, !tbaa !26
  %conv1 = zext i16 %4 to i32
  %shr = ashr i32 %conv1, 8
  %xor = xor i32 %conv, %shr
  %conv2 = trunc i32 %xor to i8
  store i8 %conv2, i8* %c, align 1, !tbaa !19
  %5 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !19
  %conv3 = zext i8 %6 to i32
  %7 = load i16, i16* %state, align 2, !tbaa !26
  %conv4 = zext i16 %7 to i32
  %add = add nsw i32 %conv3, %conv4
  %mul = mul nsw i32 %add, 52845
  %add5 = add nsw i32 %mul, 22719
  %conv6 = trunc i32 %add5 to i16
  store i16 %conv6, i16* %state, align 2, !tbaa !26
  %8 = load i32, i32* %lenIV.addr, align 4, !tbaa !29
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %lenIV.addr, align 4, !tbaa !29
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %lenIV.addr, align 4, !tbaa !29
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load i8, i8* %c, align 1, !tbaa !19
  %11 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8 %10, i8* %11, align 1, !tbaa !19
  %12 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr8, i8** %s.addr, align 8, !tbaa !1
  %14 = load i32, i32* %l.addr, align 4, !tbaa !29
  %dec9 = add nsw i32 %14, -1
  store i32 %dec9, i32* %l.addr, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %15) #1
  ret void
}

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @gs_fapi_get_metrics_count(%struct.gs_fapi_font_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sfnt_get_glyph_offset(%struct.ref_s* %pdr, %struct.gs_font_type42_s* %pfont42, i32 %index, i64* %offset0) #0 {
entry:
  %pdr.addr = alloca %struct.ref_s*, align 8
  %pfont42.addr = alloca %struct.gs_font_type42_s*, align 8
  %index.addr = alloca i32, align 4
  %offset0.addr = alloca i64*, align 8
  %r = alloca %struct.sfnts_reader_s, align 8
  %glyf_elem_size = alloca i32, align 4
  store %struct.ref_s* %pdr, %struct.ref_s** %pdr.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont42, %struct.gs_font_type42_s** %pfont42.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !29
  store i64* %offset0, i64** %offset0.addr, align 8, !tbaa !1
  %0 = bitcast %struct.sfnts_reader_s* %r to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast i32* %glyf_elem_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %2, i32 0, i32 29
  %indexToLocFormat = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 9
  %3 = load i32, i32* %indexToLocFormat, align 4, !tbaa !165
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 4, i32 2
  store i32 %cond, i32* %glyf_elem_size, align 4, !tbaa !29
  %4 = load %struct.ref_s*, %struct.ref_s** %pdr.addr, align 8, !tbaa !1
  call void @sfnts_reader_init(%struct.sfnts_reader_s* %r, %struct.ref_s* %4) #6
  %seek = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %r, i32 0, i32 11
  %5 = load void (%struct.sfnts_reader_s*, i64)*, void (%struct.sfnts_reader_s*, i64)** %seek, align 8, !tbaa !115
  %6 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %6, i32 0, i32 29
  %loca = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data1, i32 0, i32 11
  %7 = load i64, i64* %loca, align 8, !tbaa !166
  %8 = load i32, i32* %index.addr, align 4, !tbaa !29
  %9 = load i32, i32* %glyf_elem_size, align 4, !tbaa !29
  %mul = mul nsw i32 %8, %9
  %conv = sext i32 %mul to i64
  %add = add i64 %7, %conv
  call void %5(%struct.sfnts_reader_s* %r, i64 %add) #6
  %10 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont42.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %10, i32 0, i32 29
  %glyf = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data2, i32 0, i32 7
  %11 = load i64, i64* %glyf, align 8, !tbaa !167
  %12 = load i32, i32* %glyf_elem_size, align 4, !tbaa !29
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %rword = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %r, i32 0, i32 8
  %13 = load i16 (%struct.sfnts_reader_s*)*, i16 (%struct.sfnts_reader_s*)** %rword, align 8, !tbaa !148
  %call = call zeroext i16 %13(%struct.sfnts_reader_s* %r) #6
  %conv4 = zext i16 %call to i32
  %mul5 = mul nsw i32 %conv4, 2
  %conv6 = sext i32 %mul5 to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %rlong = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %r, i32 0, i32 9
  %14 = load i64 (%struct.sfnts_reader_s*)*, i64 (%struct.sfnts_reader_s*)** %rlong, align 8, !tbaa !149
  %call7 = call i64 %14(%struct.sfnts_reader_s* %r) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i64 [ %conv6, %cond.true ], [ %call7, %cond.false ]
  %add9 = add i64 %11, %cond8
  %15 = load i64*, i64** %offset0.addr, align 8, !tbaa !1
  store i64 %add9, i64* %15, align 8, !tbaa !30
  %error = getelementptr inbounds %struct.sfnts_reader_s, %struct.sfnts_reader_s* %r, i32 0, i32 6
  %16 = load i32, i32* %error, align 4, !tbaa !118
  %17 = bitcast i32* %glyf_elem_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.sfnts_reader_s* %r to i8*
  call void @llvm.lifetime.end(i64 88, i8* %18) #1
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @sfnts_writer_wbyte(%struct.sfnts_writer_s* %w, i8 zeroext %v) #0 {
entry:
  %w.addr = alloca %struct.sfnts_writer_s*, align 8
  %v.addr = alloca i8, align 1
  store %struct.sfnts_writer_s* %w, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  store i8 %v, i8* %v.addr, align 1, !tbaa !19
  %0 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8, !tbaa !123
  %2 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %2, i32 0, i32 2
  %3 = load i32, i32* %buf_size, align 4, !tbaa !120
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %4 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %p, align 8, !tbaa !122
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 1
  %cmp = icmp ult i8* %add.ptr, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8, i8* %v.addr, align 1, !tbaa !19
  %7 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %p2, align 8, !tbaa !122
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %6, i8* %arrayidx, align 1, !tbaa !19
  %9 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %9, i32 0, i32 1
  %10 = load i8*, i8** %p3, align 8, !tbaa !122
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p3, align 8, !tbaa !122
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sfnts_writer_wword(%struct.sfnts_writer_s* %w, i16 zeroext %v) #0 {
entry:
  %w.addr = alloca %struct.sfnts_writer_s*, align 8
  %v.addr = alloca i16, align 2
  store %struct.sfnts_writer_s* %w, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  store i16 %v, i16* %v.addr, align 2, !tbaa !26
  %0 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8, !tbaa !123
  %2 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %2, i32 0, i32 2
  %3 = load i32, i32* %buf_size, align 4, !tbaa !120
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %4 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %p, align 8, !tbaa !122
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 2
  %cmp = icmp ult i8* %add.ptr, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i16, i16* %v.addr, align 2, !tbaa !26
  %conv = zext i16 %6 to i32
  %div = sdiv i32 %conv, 256
  %conv2 = trunc i32 %div to i8
  %7 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %p3, align 8, !tbaa !122
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %conv2, i8* %arrayidx, align 1, !tbaa !19
  %9 = load i16, i16* %v.addr, align 2, !tbaa !26
  %conv4 = zext i16 %9 to i32
  %rem = srem i32 %conv4, 256
  %conv5 = trunc i32 %rem to i8
  %10 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %p6, align 8, !tbaa !122
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 %conv5, i8* %arrayidx7, align 1, !tbaa !19
  %12 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p8 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %p8, align 8, !tbaa !122
  %add.ptr9 = getelementptr inbounds i8, i8* %13, i64 2
  store i8* %add.ptr9, i8** %p8, align 8, !tbaa !122
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sfnts_writer_wlong(%struct.sfnts_writer_s* %w, i64 %v) #0 {
entry:
  %w.addr = alloca %struct.sfnts_writer_s*, align 8
  %v.addr = alloca i64, align 8
  store %struct.sfnts_writer_s* %w, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  store i64 %v, i64* %v.addr, align 8, !tbaa !30
  %0 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8, !tbaa !123
  %2 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %2, i32 0, i32 2
  %3 = load i32, i32* %buf_size, align 4, !tbaa !120
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %4 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %p, align 8, !tbaa !122
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 4
  %cmp = icmp ult i8* %add.ptr, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %v.addr, align 8, !tbaa !30
  %shr = lshr i64 %6, 24
  %conv = trunc i64 %shr to i8
  %7 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %p2, align 8, !tbaa !122
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !19
  %9 = load i64, i64* %v.addr, align 8, !tbaa !30
  %shr3 = lshr i64 %9, 16
  %and = and i64 %shr3, 255
  %conv4 = trunc i64 %and to i8
  %10 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p5 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %p5, align 8, !tbaa !122
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 %conv4, i8* %arrayidx6, align 1, !tbaa !19
  %12 = load i64, i64* %v.addr, align 8, !tbaa !30
  %shr7 = lshr i64 %12, 8
  %and8 = and i64 %shr7, 255
  %conv9 = trunc i64 %and8 to i8
  %13 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p10 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %13, i32 0, i32 1
  %14 = load i8*, i8** %p10, align 8, !tbaa !122
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 %conv9, i8* %arrayidx11, align 1, !tbaa !19
  %15 = load i64, i64* %v.addr, align 8, !tbaa !30
  %and12 = and i64 %15, 255
  %conv13 = trunc i64 %and12 to i8
  %16 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p14 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %16, i32 0, i32 1
  %17 = load i8*, i8** %p14, align 8, !tbaa !122
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 %conv13, i8* %arrayidx15, align 1, !tbaa !19
  %18 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p16 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %18, i32 0, i32 1
  %19 = load i8*, i8** %p16, align 8, !tbaa !122
  %add.ptr17 = getelementptr inbounds i8, i8* %19, i64 4
  store i8* %add.ptr17, i8** %p16, align 8, !tbaa !122
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sfnts_writer_wstring(%struct.sfnts_writer_s* %w, i8* %v, i32 %length) #0 {
entry:
  %w.addr = alloca %struct.sfnts_writer_s*, align 8
  %v.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  store %struct.sfnts_writer_s* %w, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  store i8* %v, i8** %v.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !29
  %0 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8, !tbaa !123
  %2 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %buf_size = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %2, i32 0, i32 2
  %3 = load i32, i32* %buf_size, align 4, !tbaa !120
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %4 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %p, align 8, !tbaa !122
  %6 = load i32, i32* %length.addr, align 4, !tbaa !29
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %cmp = icmp ult i8* %add.ptr, %add.ptr2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %p3, align 8, !tbaa !122
  %9 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %10 = load i32, i32* %length.addr, align 4, !tbaa !29
  %conv = sext i32 %10 to i64
  %call = call i8* @memcpy(i8* %8, i8* %9, i64 %conv) #8
  %11 = load i32, i32* %length.addr, align 4, !tbaa !29
  %12 = load %struct.sfnts_writer_s*, %struct.sfnts_writer_s** %w.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.sfnts_writer_s, %struct.sfnts_writer_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %p4, align 8, !tbaa !122
  %idx.ext5 = sext i32 %11 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %13, i64 %idx.ext5
  store i8* %add.ptr6, i8** %p4, align 8, !tbaa !122
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @dict_index_entry(%struct.ref_s*, i32, %struct.ref_s*) #2

declare i32 @cid_to_TT_charcode(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, i32, i32*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @string_array_access_proc(%struct.gs_memory_s*, %struct.ref_s*, i32, i64, i32, i32*, i64*, i8**) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @zfapi_finish_render(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %I = alloca %struct.gs_fapi_server_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %call = call i32 @font_param(%struct.ref_s* %add.ptr, %struct.gs_font_s** %pfont) #6
  store i32 %call, i32* %code, align 4, !tbaa !29
  %6 = load i32, i32* %code, align 4, !tbaa !29
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %9 = bitcast %struct.gs_font_s* %8 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %9, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %10 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %11, i32 0, i32 25
  %12 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !36
  store %struct.gs_fapi_server_s* %12, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %13 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %14) #6
  store %struct.gs_text_enum_s* %call1, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gs_context_state_s* %18 to i8*
  call void @gs_fapi_set_servers_client_data(%struct.gs_memory_s* %17, %struct.gs_fapi_font_s* null, i8* %19) #6
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 0
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !54
  %23 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %24 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %call2 = call i32 @gs_fapi_finish_render(%struct.gs_font_s* %20, %struct.gs_state_s* %22, %struct.gs_text_enum_s* %23, %struct.gs_fapi_server_s* %24) #6
  store i32 %call2, i32* %code, align 4, !tbaa !29
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -2
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %p5, align 8, !tbaa !5
  %27 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %release_char_data = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %27, i32 0, i32 23
  %28 = load i32 (%struct.gs_fapi_server_s*)*, i32 (%struct.gs_fapi_server_s*)** %release_char_data, align 8, !tbaa !168
  %29 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %call7 = call i32 %28(%struct.gs_fapi_server_s* %29) #6
  %30 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = load i32, i32* %code, align 4, !tbaa !29
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i64 @array_find(%struct.gs_memory_s* %mem, %struct.ref_s* %Encoding, %struct.ref_s* %char_name) #0 {
entry:
  %retval = alloca i64, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %Encoding.addr = alloca %struct.ref_s*, align 8
  %char_name.addr = alloca %struct.ref_s*, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %v = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %Encoding, %struct.ref_s** %Encoding.addr, align 8, !tbaa !1
  store %struct.ref_s* %char_name, %struct.ref_s** %char_name.addr, align 8, !tbaa !1
  %0 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %Encoding.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !33
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %n, align 8, !tbaa !30
  %3 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  store i64 0, i64* %i, align 8, !tbaa !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %i, align 8, !tbaa !30
  %6 = load i64, i64* %n, align 8, !tbaa !30
  %cmp = icmp ult i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %Encoding.addr, align 8, !tbaa !1
  %9 = load i64, i64* %i, align 8, !tbaa !30
  %call = call i32 @array_get(%struct.gs_memory_s* %7, %struct.ref_s* %8, i64 %9, %struct.ref_s* %v) #6
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %10 = load %struct.ref_s*, %struct.ref_s** %char_name.addr, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %11 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv5 = zext i8 %12 to i32
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %13 = bitcast i16* %type_attrs7 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx8, align 1, !tbaa !19
  %conv9 = zext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv5, %conv9
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct.ref_s*, %struct.ref_s** %char_name.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %const_pname = bitcast %union.v* %value to %struct.name_s**
  %16 = load %struct.name_s*, %struct.name_s** %const_pname, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 1
  %const_pname13 = bitcast %union.v* %value12 to %struct.name_s**
  %17 = load %struct.name_s*, %struct.name_s** %const_pname13, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.name_s* %16, %17
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true
  %18 = load i64, i64* %i, align 8, !tbaa !30
  store i64 %18, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %19 = load i64, i64* %i, align 8, !tbaa !30
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8, !tbaa !30
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.16
  %20 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  %21 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i64* %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i64, i64* %retval
  ret i64 %23
}

declare i32 @obj_string_data(%struct.gs_memory_s*, %struct.ref_s*, i8**, i32*) #2

; Function Attrs: nounwind uwtable
define internal i8* @find_substring(i8* %where, i32 %length, i8* %what) #0 {
entry:
  %retval = alloca i8*, align 8
  %where.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %what.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %where, i8** %where.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !29
  store i8* %what, i8** %what.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %what.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4, !tbaa !29
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %length.addr, align 4, !tbaa !29
  %4 = load i32, i32* %l, align 4, !tbaa !29
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %n, align 4, !tbaa !29
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %where.addr, align 8, !tbaa !1
  store i8* %6, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %n, align 4, !tbaa !29
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i8*, i8** %what.addr, align 8, !tbaa !1
  %10 = load i32, i32* %l, align 4, !tbaa !29
  %conv2 = sext i32 %10 to i64
  %call3 = call i32 @memcmp(i8* %8, i8* %9, i64 %conv2) #7
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %11, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %n, align 4, !tbaa !29
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %n, align 4, !tbaa !29
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %14 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define internal i32 @renderer_retcode(%struct.gs_memory_s* %mem, %struct.gs_fapi_server_s* %I, i32 %rc) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %I.addr = alloca %struct.gs_fapi_server_s*, align 8
  %rc.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %I, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  store i32 %rc, i32* %rc.addr, align 4, !tbaa !29
  %0 = load i32, i32* %rc.addr, align 4, !tbaa !29
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* @gs_program_name() #6
  %call1 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %1, i8* %call, i64 %call1) #6
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I.addr, align 8, !tbaa !1
  %ig = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %3, i32 0, i32 0
  %d = getelementptr inbounds %struct.gs_fapi_server_instance_s, %struct.gs_fapi_server_instance_s* %ig, i32 0, i32 0
  %4 = load %struct.gs_fapi_server_descriptor_s*, %struct.gs_fapi_server_descriptor_s** %d, align 8, !tbaa !169
  %subtype = getelementptr inbounds %struct.gs_fapi_server_descriptor_s, %struct.gs_fapi_server_descriptor_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %subtype, align 8, !tbaa !170
  %6 = load i32, i32* %rc.addr, align 4, !tbaa !29
  %call2 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.49, i32 0, i32 0), i8* %5, i32 %6) #6
  %7 = load i32, i32* %rc.addr, align 4, !tbaa !29
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load i32, i32* %rc.addr, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ -10, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @int_param(%struct.ref_s*, i32, i32*) #2

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #2

declare i8* @gs_program_name() #2

declare i64 @gs_revision_number() #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s*) #2

declare i32 @gs_fapi_finish_render(%struct.gs_font_s*, %struct.gs_state_s*, %struct.gs_text_enum_s*, %struct.gs_fapi_server_s*) #2

declare i32 @zchar_get_metrics2(%struct.gs_font_base_s*, %struct.ref_s*, double*) #2

declare i32 @zchar_get_metrics(%struct.gs_font_base_s*, %struct.ref_s*, double*) #2

declare i32 @zchar_set_cache(%struct.gs_context_state_s*, %struct.gs_font_base_s*, %struct.ref_s*, double*, double*, %struct.gs_rect_s*, i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)**, double*) #2

declare i32 @gs_fapi_find_server(%struct.gs_memory_s*, i8*, %struct.gs_fapi_server_s**, i32 (%struct.gs_fapi_server_s*, i8*, i8**, i32*)*) #2

declare i32 @build_proc_name_refs(%struct.gs_memory_s*, %struct.build_proc_refs_s*, i8*, i8*) #2

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @FAPI_refine_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_font_s* %pfont, i32 %subfont, i8* %font_file_path) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %subfont.addr = alloca i32, align 4
  %font_file_path.addr = alloca i8*, align 8
  %pdr = alloca %struct.ref_s*, align 8
  %decodingID = alloca i8*, align 8
  %xlatmap = alloca i8*, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %I = alloca %struct.gs_fapi_server_s*, align 8
  %Decoding_old = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %v = alloca %struct.ref_s*, align 8
  %mat = alloca [4 x %struct.ref_s], align 16
  %arr = alloca %struct.ref_s, align 8
  %attrs = alloca i32, align 4
  %Decoding = alloca %struct.ref_s, align 8
  %CIDSystemInfo = alloca %struct.ref_s*, align 8
  %Ordering = alloca %struct.ref_s*, align 8
  %SubstNWP = alloca %struct.ref_s, align 8
  %buf = alloca [30 x i8], align 16
  %ordering_length = alloca i32, align 4
  %decodingID_length = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store i32 %subfont, i32* %subfont.addr, align 4, !tbaa !29
  store i8* %font_file_path, i8** %font_file_path.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.ref_s* %1, %struct.ref_s** %pdr, align 8, !tbaa !1
  %2 = bitcast i8** %decodingID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %decodingID, align 8, !tbaa !1
  %3 = bitcast i8** %xlatmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* null, i8** %xlatmap, align 8, !tbaa !1
  %4 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s* %5 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %6, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %7 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %8, i32 0, i32 25
  %9 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !36
  store %struct.gs_fapi_server_s* %9, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s** %Decoding_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %12, null
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %13, i32 0, i32 26
  %14 = load i8*, i8** %FAPI_font_data, align 8, !tbaa !172
  %cmp1 = icmp eq i8* %14, null
  br i1 %cmp1, label %if.then, label %if.end.4

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @FAPI_get_xlatmap(%struct.gs_context_state_s* %15, i8** %xlatmap) #6
  store i32 %call, i32* %code, align 4, !tbaa !29
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %16 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.432

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %land.lhs.true, %entry
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gs_context_state_s* %20 to i8*
  call void @gs_fapi_set_servers_client_data(%struct.gs_memory_s* %19, %struct.gs_fapi_font_s* null, i8* %21) #6
  %22 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %23 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %24 = load i32, i32* %subfont.addr, align 4, !tbaa !29
  %25 = load i8*, i8** %font_file_path.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %xlatmap, align 8, !tbaa !1
  %call5 = call i32 @gs_fapi_prepare_font(%struct.gs_font_s* %22, %struct.gs_fapi_server_s* %23, i32 %24, i8* %25, %struct.gs_string_s* null, i8* %26, i8** %decodingID) #6
  store i32 %call5, i32* %code, align 4, !tbaa !29
  %27 = load i32, i32* %code, align 4, !tbaa !29
  %cmp6 = icmp slt i32 %27, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %28 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.432

if.end.8:                                         ; preds = %if.end.4
  %29 = load i32, i32* %code, align 4, !tbaa !29
  %cmp9 = icmp sgt i32 %29, 0
  br i1 %cmp9, label %if.then.10, label %if.end.295

if.then.10:                                       ; preds = %if.end.8
  %30 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = bitcast [4 x %struct.ref_s]* %mat to i8*
  call void @llvm.lifetime.start(i64 64, i8* %31) #1
  %32 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %32) #1
  %33 = bitcast i32* %attrs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call11 = call i32 @dict_find_string(%struct.ref_s* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), %struct.ref_s** %v) #6
  %cmp12 = icmp sgt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.291

if.then.13:                                       ; preds = %if.then.10
  %35 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %36 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %37 to i32
  %cmp14 = icmp eq i32 %conv, 4
  br i1 %cmp14, label %if.end.31, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %if.then.13
  %38 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %39 = bitcast i16* %type_attrs18 to i8*
  %arrayidx19 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx19, align 1, !tbaa !19
  %conv20 = zext i8 %40 to i32
  %cmp21 = icmp eq i32 %conv20, 6
  br i1 %cmp21, label %if.end.31, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %land.lhs.true.16
  %41 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  %42 = bitcast i16* %type_attrs25 to i8*
  %arrayidx26 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx26, align 1, !tbaa !19
  %conv27 = zext i8 %43 to i32
  %cmp28 = icmp eq i32 %conv27, 5
  br i1 %cmp28, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.23
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %land.lhs.true.23, %land.lhs.true.16, %if.then.13
  %44 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %44, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %45 = load double, double* %x, align 8, !tbaa !173
  %conv32 = fptrunc double %45 to float
  %arrayidx33 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 0
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx33, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %conv32, float* %realval, align 4, !tbaa !51
  %arrayidx34 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 0
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx34, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  store i16 4096, i16* %type_attrs36, align 2, !tbaa !27
  %46 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox37 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %46, i32 0, i32 23
  %p38 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox37, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p38, i32 0, i32 1
  %47 = load double, double* %y, align 8, !tbaa !174
  %conv39 = fptrunc double %47 to float
  %arrayidx40 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx40, i32 0, i32 1
  %realval42 = bitcast %union.v* %value41 to float*
  store float %conv39, float* %realval42, align 4, !tbaa !51
  %arrayidx43 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 1
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx43, i32 0, i32 0
  %type_attrs45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 0
  store i16 4096, i16* %type_attrs45, align 2, !tbaa !27
  %48 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox46 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %48, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox46, i32 0, i32 1
  %x47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %49 = load double, double* %x47, align 8, !tbaa !175
  %conv48 = fptrunc double %49 to float
  %arrayidx49 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 2
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx49, i32 0, i32 1
  %realval51 = bitcast %union.v* %value50 to float*
  store float %conv48, float* %realval51, align 4, !tbaa !51
  %arrayidx52 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 2
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx52, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 4096, i16* %type_attrs54, align 2, !tbaa !27
  %50 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontBBox55 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %50, i32 0, i32 23
  %q56 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox55, i32 0, i32 1
  %y57 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q56, i32 0, i32 1
  %51 = load double, double* %y57, align 8, !tbaa !176
  %conv58 = fptrunc double %51 to float
  %arrayidx59 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 3
  %value60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx59, i32 0, i32 1
  %realval61 = bitcast %union.v* %value60 to float*
  store float %conv58, float* %realval61, align 4, !tbaa !51
  %arrayidx62 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 3
  %tas63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx62, i32 0, i32 0
  %type_attrs64 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas63, i32 0, i32 0
  store i16 4096, i16* %type_attrs64, align 2, !tbaa !27
  %52 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %type_attrs66 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas65, i32 0, i32 0
  %53 = bitcast i16* %type_attrs66 to i8*
  %arrayidx67 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx67, align 1, !tbaa !19
  %conv68 = zext i8 %54 to i32
  %cmp69 = icmp eq i32 %conv68, 6
  br i1 %cmp69, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %55 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %type_attrs72 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas71, i32 0, i32 0
  %56 = bitcast i16* %type_attrs72 to i8*
  %arrayidx73 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx73, align 1, !tbaa !19
  %conv74 = zext i8 %57 to i32
  %cmp75 = icmp eq i32 %conv74, 5
  br i1 %cmp75, label %if.then.81, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false
  %58 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 2
  %59 = load i32, i32* %rsize, align 4, !tbaa !33
  %cmp79 = icmp ult i32 %59, 4
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %lor.lhs.false.77, %lor.lhs.false, %if.end.31
  %60 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory82 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %60, i32 0, i32 1
  %current83 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory82, i32 0, i32 0
  %61 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current83, align 8, !tbaa !20
  %call84 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %61, %struct.ref_s* %arr, i32 112, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0)) #6
  store i32 %call84, i32* %code, align 4, !tbaa !29
  %62 = load i32, i32* %code, align 4, !tbaa !29
  %cmp85 = icmp slt i32 %62, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.81
  %63 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.88:                                        ; preds = %if.then.81
  store %struct.ref_s* %arr, %struct.ref_s** %v, align 8, !tbaa !1
  %64 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 24
  %call89 = call i32 @dict_put_string(%struct.ref_s* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), %struct.ref_s* %arr, %struct.dict_stack_s* %dict_stack) #6
  store i32 %call89, i32* %code, align 4, !tbaa !29
  %66 = load i32, i32* %code, align 4, !tbaa !29
  %cmp90 = icmp slt i32 %66, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.88
  %67 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.93:                                        ; preds = %if.end.88
  %68 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 1
  %refs = bitcast %union.v* %value94 to %struct.ref_s**
  %69 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 0
  %arrayidx95 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 0
  %70 = bitcast %struct.ref_s* %add.ptr to i8*
  %71 = bitcast %struct.ref_s* %arrayidx95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 16, i32 8, i1 false), !tbaa.struct !50
  %72 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory96 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %72, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory96, i32 0, i32 5
  %73 = load i32, i32* %new_mask, align 4, !tbaa !52
  %74 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 1
  %refs98 = bitcast %union.v* %value97 to %struct.ref_s**
  %75 = load %struct.ref_s*, %struct.ref_s** %refs98, align 8, !tbaa !1
  %add.ptr99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 0
  %tas100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr99, i32 0, i32 0
  %type_attrs101 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas100, i32 0, i32 0
  %76 = load i16, i16* %type_attrs101, align 2, !tbaa !27
  %conv102 = zext i16 %76 to i32
  %or = or i32 %conv102, %73
  %conv103 = trunc i32 %or to i16
  store i16 %conv103, i16* %type_attrs101, align 2, !tbaa !27
  %77 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 1
  %refs105 = bitcast %union.v* %value104 to %struct.ref_s**
  %78 = load %struct.ref_s*, %struct.ref_s** %refs105, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 1
  %arrayidx107 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 1
  %79 = bitcast %struct.ref_s* %add.ptr106 to i8*
  %80 = bitcast %struct.ref_s* %arrayidx107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 16, i32 8, i1 false), !tbaa.struct !50
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory108 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 1
  %new_mask109 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory108, i32 0, i32 5
  %82 = load i32, i32* %new_mask109, align 4, !tbaa !52
  %83 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 1
  %refs111 = bitcast %union.v* %value110 to %struct.ref_s**
  %84 = load %struct.ref_s*, %struct.ref_s** %refs111, align 8, !tbaa !1
  %add.ptr112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %84, i64 1
  %tas113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr112, i32 0, i32 0
  %type_attrs114 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas113, i32 0, i32 0
  %85 = load i16, i16* %type_attrs114, align 2, !tbaa !27
  %conv115 = zext i16 %85 to i32
  %or116 = or i32 %conv115, %82
  %conv117 = trunc i32 %or116 to i16
  store i16 %conv117, i16* %type_attrs114, align 2, !tbaa !27
  %86 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 1
  %refs119 = bitcast %union.v* %value118 to %struct.ref_s**
  %87 = load %struct.ref_s*, %struct.ref_s** %refs119, align 8, !tbaa !1
  %add.ptr120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i64 2
  %arrayidx121 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 2
  %88 = bitcast %struct.ref_s* %add.ptr120 to i8*
  %89 = bitcast %struct.ref_s* %arrayidx121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 16, i32 8, i1 false), !tbaa.struct !50
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory122 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 1
  %new_mask123 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory122, i32 0, i32 5
  %91 = load i32, i32* %new_mask123, align 4, !tbaa !52
  %92 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 1
  %refs125 = bitcast %union.v* %value124 to %struct.ref_s**
  %93 = load %struct.ref_s*, %struct.ref_s** %refs125, align 8, !tbaa !1
  %add.ptr126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i64 2
  %tas127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr126, i32 0, i32 0
  %type_attrs128 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas127, i32 0, i32 0
  %94 = load i16, i16* %type_attrs128, align 2, !tbaa !27
  %conv129 = zext i16 %94 to i32
  %or130 = or i32 %conv129, %91
  %conv131 = trunc i32 %or130 to i16
  store i16 %conv131, i16* %type_attrs128, align 2, !tbaa !27
  %95 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 1
  %refs133 = bitcast %union.v* %value132 to %struct.ref_s**
  %96 = load %struct.ref_s*, %struct.ref_s** %refs133, align 8, !tbaa !1
  %add.ptr134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i64 3
  %arrayidx135 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 3
  %97 = bitcast %struct.ref_s* %add.ptr134 to i8*
  %98 = bitcast %struct.ref_s* %arrayidx135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 16, i32 8, i1 false), !tbaa.struct !50
  %99 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory136 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %99, i32 0, i32 1
  %new_mask137 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory136, i32 0, i32 5
  %100 = load i32, i32* %new_mask137, align 4, !tbaa !52
  %101 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value138 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i32 0, i32 1
  %refs139 = bitcast %union.v* %value138 to %struct.ref_s**
  %102 = load %struct.ref_s*, %struct.ref_s** %refs139, align 8, !tbaa !1
  %add.ptr140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i64 3
  %tas141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr140, i32 0, i32 0
  %type_attrs142 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas141, i32 0, i32 0
  %103 = load i16, i16* %type_attrs142, align 2, !tbaa !27
  %conv143 = zext i16 %103 to i32
  %or144 = or i32 %conv143, %100
  %conv145 = trunc i32 %or144 to i16
  store i16 %conv145, i16* %type_attrs142, align 2, !tbaa !27
  br label %if.end.276

if.else:                                          ; preds = %lor.lhs.false.77
  %104 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i32 0, i32 1
  %refs147 = bitcast %union.v* %value146 to %struct.ref_s**
  %105 = load %struct.ref_s*, %struct.ref_s** %refs147, align 8, !tbaa !1
  %add.ptr148 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i64 0
  %tas149 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr148, i32 0, i32 0
  %type_attrs150 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas149, i32 0, i32 0
  %106 = load i16, i16* %type_attrs150, align 2, !tbaa !27
  %conv151 = zext i16 %106 to i32
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory152 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %107, i32 0, i32 1
  %test_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory152, i32 0, i32 4
  %108 = load i32, i32* %test_mask, align 4, !tbaa !177
  %and = and i32 %conv151, %108
  %cmp153 = icmp eq i32 %and, 0
  br i1 %cmp153, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory155 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 1
  %110 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %111 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value156 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 1
  %refs157 = bitcast %union.v* %value156 to %struct.ref_s**
  %112 = load %struct.ref_s*, %struct.ref_s** %refs157, align 8, !tbaa !1
  %add.ptr158 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i64 0
  %113 = bitcast %struct.ref_s* %add.ptr158 to i16*
  %call159 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory155, %struct.ref_s* %110, i16* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0)) #6
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call159, %cond.true ], [ 0, %cond.false ]
  %114 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value160 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %114, i32 0, i32 1
  %refs161 = bitcast %union.v* %value160 to %struct.ref_s**
  %115 = load %struct.ref_s*, %struct.ref_s** %refs161, align 8, !tbaa !1
  %add.ptr162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i64 0
  %arrayidx163 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 0
  %116 = bitcast %struct.ref_s* %add.ptr162 to i8*
  %117 = bitcast %struct.ref_s* %arrayidx163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 16, i32 8, i1 false), !tbaa.struct !50
  %118 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory164 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %118, i32 0, i32 1
  %new_mask165 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory164, i32 0, i32 5
  %119 = load i32, i32* %new_mask165, align 4, !tbaa !52
  %120 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i32 0, i32 1
  %refs167 = bitcast %union.v* %value166 to %struct.ref_s**
  %121 = load %struct.ref_s*, %struct.ref_s** %refs167, align 8, !tbaa !1
  %add.ptr168 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i64 0
  %tas169 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr168, i32 0, i32 0
  %type_attrs170 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas169, i32 0, i32 0
  %122 = load i16, i16* %type_attrs170, align 2, !tbaa !27
  %conv171 = zext i16 %122 to i32
  %or172 = or i32 %conv171, %119
  %conv173 = trunc i32 %or172 to i16
  store i16 %conv173, i16* %type_attrs170, align 2, !tbaa !27
  %123 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value174 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %123, i32 0, i32 1
  %refs175 = bitcast %union.v* %value174 to %struct.ref_s**
  %124 = load %struct.ref_s*, %struct.ref_s** %refs175, align 8, !tbaa !1
  %add.ptr176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %124, i64 1
  %tas177 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr176, i32 0, i32 0
  %type_attrs178 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas177, i32 0, i32 0
  %125 = load i16, i16* %type_attrs178, align 2, !tbaa !27
  %conv179 = zext i16 %125 to i32
  %126 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory180 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %126, i32 0, i32 1
  %test_mask181 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory180, i32 0, i32 4
  %127 = load i32, i32* %test_mask181, align 4, !tbaa !177
  %and182 = and i32 %conv179, %127
  %cmp183 = icmp eq i32 %and182, 0
  br i1 %cmp183, label %cond.true.185, label %cond.false.191

cond.true.185:                                    ; preds = %cond.end
  %128 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory186 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %128, i32 0, i32 1
  %129 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %130 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value187 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i32 0, i32 1
  %refs188 = bitcast %union.v* %value187 to %struct.ref_s**
  %131 = load %struct.ref_s*, %struct.ref_s** %refs188, align 8, !tbaa !1
  %add.ptr189 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %131, i64 1
  %132 = bitcast %struct.ref_s* %add.ptr189 to i16*
  %call190 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory186, %struct.ref_s* %129, i16* %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0)) #6
  br label %cond.end.192

cond.false.191:                                   ; preds = %cond.end
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.191, %cond.true.185
  %cond193 = phi i32 [ %call190, %cond.true.185 ], [ 0, %cond.false.191 ]
  %133 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value194 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %133, i32 0, i32 1
  %refs195 = bitcast %union.v* %value194 to %struct.ref_s**
  %134 = load %struct.ref_s*, %struct.ref_s** %refs195, align 8, !tbaa !1
  %add.ptr196 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %134, i64 1
  %arrayidx197 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 1
  %135 = bitcast %struct.ref_s* %add.ptr196 to i8*
  %136 = bitcast %struct.ref_s* %arrayidx197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 16, i32 8, i1 false), !tbaa.struct !50
  %137 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory198 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %137, i32 0, i32 1
  %new_mask199 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory198, i32 0, i32 5
  %138 = load i32, i32* %new_mask199, align 4, !tbaa !52
  %139 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value200 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i32 0, i32 1
  %refs201 = bitcast %union.v* %value200 to %struct.ref_s**
  %140 = load %struct.ref_s*, %struct.ref_s** %refs201, align 8, !tbaa !1
  %add.ptr202 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %140, i64 1
  %tas203 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr202, i32 0, i32 0
  %type_attrs204 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas203, i32 0, i32 0
  %141 = load i16, i16* %type_attrs204, align 2, !tbaa !27
  %conv205 = zext i16 %141 to i32
  %or206 = or i32 %conv205, %138
  %conv207 = trunc i32 %or206 to i16
  store i16 %conv207, i16* %type_attrs204, align 2, !tbaa !27
  %142 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value208 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %142, i32 0, i32 1
  %refs209 = bitcast %union.v* %value208 to %struct.ref_s**
  %143 = load %struct.ref_s*, %struct.ref_s** %refs209, align 8, !tbaa !1
  %add.ptr210 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %143, i64 2
  %tas211 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr210, i32 0, i32 0
  %type_attrs212 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas211, i32 0, i32 0
  %144 = load i16, i16* %type_attrs212, align 2, !tbaa !27
  %conv213 = zext i16 %144 to i32
  %145 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory214 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %145, i32 0, i32 1
  %test_mask215 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory214, i32 0, i32 4
  %146 = load i32, i32* %test_mask215, align 4, !tbaa !177
  %and216 = and i32 %conv213, %146
  %cmp217 = icmp eq i32 %and216, 0
  br i1 %cmp217, label %cond.true.219, label %cond.false.225

cond.true.219:                                    ; preds = %cond.end.192
  %147 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory220 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %147, i32 0, i32 1
  %148 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %149 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value221 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %149, i32 0, i32 1
  %refs222 = bitcast %union.v* %value221 to %struct.ref_s**
  %150 = load %struct.ref_s*, %struct.ref_s** %refs222, align 8, !tbaa !1
  %add.ptr223 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %150, i64 2
  %151 = bitcast %struct.ref_s* %add.ptr223 to i16*
  %call224 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory220, %struct.ref_s* %148, i16* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0)) #6
  br label %cond.end.226

cond.false.225:                                   ; preds = %cond.end.192
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.225, %cond.true.219
  %cond227 = phi i32 [ %call224, %cond.true.219 ], [ 0, %cond.false.225 ]
  %152 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value228 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %152, i32 0, i32 1
  %refs229 = bitcast %union.v* %value228 to %struct.ref_s**
  %153 = load %struct.ref_s*, %struct.ref_s** %refs229, align 8, !tbaa !1
  %add.ptr230 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %153, i64 2
  %arrayidx231 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 2
  %154 = bitcast %struct.ref_s* %add.ptr230 to i8*
  %155 = bitcast %struct.ref_s* %arrayidx231 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 16, i32 8, i1 false), !tbaa.struct !50
  %156 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory232 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %156, i32 0, i32 1
  %new_mask233 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory232, i32 0, i32 5
  %157 = load i32, i32* %new_mask233, align 4, !tbaa !52
  %158 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value234 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %158, i32 0, i32 1
  %refs235 = bitcast %union.v* %value234 to %struct.ref_s**
  %159 = load %struct.ref_s*, %struct.ref_s** %refs235, align 8, !tbaa !1
  %add.ptr236 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %159, i64 2
  %tas237 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr236, i32 0, i32 0
  %type_attrs238 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas237, i32 0, i32 0
  %160 = load i16, i16* %type_attrs238, align 2, !tbaa !27
  %conv239 = zext i16 %160 to i32
  %or240 = or i32 %conv239, %157
  %conv241 = trunc i32 %or240 to i16
  store i16 %conv241, i16* %type_attrs238, align 2, !tbaa !27
  %161 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value242 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %161, i32 0, i32 1
  %refs243 = bitcast %union.v* %value242 to %struct.ref_s**
  %162 = load %struct.ref_s*, %struct.ref_s** %refs243, align 8, !tbaa !1
  %add.ptr244 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %162, i64 3
  %tas245 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr244, i32 0, i32 0
  %type_attrs246 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas245, i32 0, i32 0
  %163 = load i16, i16* %type_attrs246, align 2, !tbaa !27
  %conv247 = zext i16 %163 to i32
  %164 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory248 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %164, i32 0, i32 1
  %test_mask249 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory248, i32 0, i32 4
  %165 = load i32, i32* %test_mask249, align 4, !tbaa !177
  %and250 = and i32 %conv247, %165
  %cmp251 = icmp eq i32 %and250, 0
  br i1 %cmp251, label %cond.true.253, label %cond.false.259

cond.true.253:                                    ; preds = %cond.end.226
  %166 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory254 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %166, i32 0, i32 1
  %167 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %168 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value255 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %168, i32 0, i32 1
  %refs256 = bitcast %union.v* %value255 to %struct.ref_s**
  %169 = load %struct.ref_s*, %struct.ref_s** %refs256, align 8, !tbaa !1
  %add.ptr257 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %169, i64 3
  %170 = bitcast %struct.ref_s* %add.ptr257 to i16*
  %call258 = call i32 @alloc_save_change(%struct.gs_dual_memory_s* %memory254, %struct.ref_s* %167, i16* %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0)) #6
  br label %cond.end.260

cond.false.259:                                   ; preds = %cond.end.226
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.false.259, %cond.true.253
  %cond261 = phi i32 [ %call258, %cond.true.253 ], [ 0, %cond.false.259 ]
  %171 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value262 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %171, i32 0, i32 1
  %refs263 = bitcast %union.v* %value262 to %struct.ref_s**
  %172 = load %struct.ref_s*, %struct.ref_s** %refs263, align 8, !tbaa !1
  %add.ptr264 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %172, i64 3
  %arrayidx265 = getelementptr inbounds [4 x %struct.ref_s], [4 x %struct.ref_s]* %mat, i32 0, i64 3
  %173 = bitcast %struct.ref_s* %add.ptr264 to i8*
  %174 = bitcast %struct.ref_s* %arrayidx265 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %173, i8* %174, i64 16, i32 8, i1 false), !tbaa.struct !50
  %175 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory266 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %175, i32 0, i32 1
  %new_mask267 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory266, i32 0, i32 5
  %176 = load i32, i32* %new_mask267, align 4, !tbaa !52
  %177 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value268 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %177, i32 0, i32 1
  %refs269 = bitcast %union.v* %value268 to %struct.ref_s**
  %178 = load %struct.ref_s*, %struct.ref_s** %refs269, align 8, !tbaa !1
  %add.ptr270 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %178, i64 3
  %tas271 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr270, i32 0, i32 0
  %type_attrs272 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas271, i32 0, i32 0
  %179 = load i16, i16* %type_attrs272, align 2, !tbaa !27
  %conv273 = zext i16 %179 to i32
  %or274 = or i32 %conv273, %176
  %conv275 = trunc i32 %or274 to i16
  store i16 %conv275, i16* %type_attrs272, align 2, !tbaa !27
  br label %if.end.276

if.end.276:                                       ; preds = %cond.end.260, %if.end.93
  %180 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas277 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %180, i32 0, i32 0
  %type_attrs278 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas277, i32 0, i32 0
  %181 = load i16, i16* %type_attrs278, align 2, !tbaa !27
  %conv279 = zext i16 %181 to i32
  store i32 %conv279, i32* %attrs, align 4, !tbaa !29
  %182 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas280 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %182, i32 0, i32 0
  %type_attrs281 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas280, i32 0, i32 0
  %183 = load i16, i16* %type_attrs281, align 2, !tbaa !27
  %conv282 = zext i16 %183 to i32
  %and283 = and i32 %conv282, -113
  %conv284 = trunc i32 %and283 to i16
  store i16 %conv284, i16* %type_attrs281, align 2, !tbaa !27
  %184 = load i32, i32* %attrs, align 4, !tbaa !29
  %or285 = or i32 %184, 64
  %185 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas286 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %185, i32 0, i32 0
  %type_attrs287 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas286, i32 0, i32 0
  %186 = load i16, i16* %type_attrs287, align 2, !tbaa !27
  %conv288 = zext i16 %186 to i32
  %or289 = or i32 %conv288, %or285
  %conv290 = trunc i32 %or289 to i16
  store i16 %conv290, i16* %type_attrs287, align 2, !tbaa !27
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.276, %if.then.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.291, %if.then.92, %if.then.87, %if.then.30
  %187 = bitcast i32* %attrs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast %struct.ref_s* %arr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %188) #1
  %189 = bitcast [4 x %struct.ref_s]* %mat to i8*
  call void @llvm.lifetime.end(i64 64, i8* %189) #1
  %190 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.432 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.295

if.end.295:                                       ; preds = %cleanup.cont, %if.end.8
  %191 = load i8*, i8** %decodingID, align 8, !tbaa !1
  %cmp296 = icmp ne i8* %191, null
  br i1 %cmp296, label %land.lhs.true.298, label %if.end.431

land.lhs.true.298:                                ; preds = %if.end.295
  %192 = load i8*, i8** %decodingID, align 8, !tbaa !1
  %193 = load i8, i8* %192, align 1, !tbaa !19
  %conv299 = sext i8 %193 to i32
  %tobool = icmp ne i32 %conv299, 0
  br i1 %tobool, label %land.lhs.true.300, label %if.end.431

land.lhs.true.300:                                ; preds = %land.lhs.true.298
  %194 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call301 = call i32 @dict_find_string(%struct.ref_s* %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %struct.ref_s** %Decoding_old) #6
  %cmp302 = icmp sle i32 %call301, 0
  br i1 %cmp302, label %if.then.304, label %if.end.431

if.then.304:                                      ; preds = %land.lhs.true.300
  %195 = bitcast %struct.ref_s* %Decoding to i8*
  call void @llvm.lifetime.start(i64 16, i8* %195) #1
  %196 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %196, i32 0, i32 11
  %197 = load i32, i32* %FontType, align 4, !tbaa !95
  %cmp305 = icmp eq i32 %197, 9
  br i1 %cmp305, label %if.then.315, label %lor.lhs.false.307

lor.lhs.false.307:                                ; preds = %if.then.304
  %198 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType308 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %198, i32 0, i32 11
  %199 = load i32, i32* %FontType308, align 4, !tbaa !95
  %cmp309 = icmp eq i32 %199, 10
  br i1 %cmp309, label %if.then.315, label %lor.lhs.false.311

lor.lhs.false.311:                                ; preds = %lor.lhs.false.307
  %200 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType312 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %200, i32 0, i32 11
  %201 = load i32, i32* %FontType312, align 4, !tbaa !95
  %cmp313 = icmp eq i32 %201, 11
  br i1 %cmp313, label %if.then.315, label %if.else.410

if.then.315:                                      ; preds = %lor.lhs.false.311, %lor.lhs.false.307, %if.then.304
  %202 = bitcast %struct.ref_s** %CIDSystemInfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %202) #1
  %203 = bitcast %struct.ref_s** %Ordering to i8*
  call void @llvm.lifetime.start(i64 8, i8* %203) #1
  %204 = bitcast %struct.ref_s* %SubstNWP to i8*
  call void @llvm.lifetime.start(i64 16, i8* %204) #1
  %205 = bitcast [30 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 30, i8* %205) #1
  %206 = bitcast i32* %ordering_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %206) #1
  %207 = bitcast i32* %decodingID_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %207) #1
  %208 = load i8*, i8** %decodingID, align 8, !tbaa !1
  %call316 = call i64 @strlen(i8* %208) #7
  %cmp317 = icmp ult i64 %call316, 28
  br i1 %cmp317, label %cond.true.319, label %cond.false.321

cond.true.319:                                    ; preds = %if.then.315
  %209 = load i8*, i8** %decodingID, align 8, !tbaa !1
  %call320 = call i64 @strlen(i8* %209) #7
  br label %cond.end.322

cond.false.321:                                   ; preds = %if.then.315
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.321, %cond.true.319
  %cond323 = phi i64 [ %call320, %cond.true.319 ], [ 28, %cond.false.321 ]
  %conv324 = trunc i64 %cond323 to i32
  store i32 %conv324, i32* %decodingID_length, align 4, !tbaa !29
  %210 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call325 = call i32 @dict_find_string(%struct.ref_s* %210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), %struct.ref_s** %CIDSystemInfo) #6
  %cmp326 = icmp sle i32 %call325, 0
  br i1 %cmp326, label %if.then.335, label %lor.lhs.false.328

lor.lhs.false.328:                                ; preds = %cond.end.322
  %211 = load %struct.ref_s*, %struct.ref_s** %CIDSystemInfo, align 8, !tbaa !1
  %tas329 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %211, i32 0, i32 0
  %type_attrs330 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas329, i32 0, i32 0
  %212 = bitcast i16* %type_attrs330 to i8*
  %arrayidx331 = getelementptr inbounds i8, i8* %212, i64 1
  %213 = load i8, i8* %arrayidx331, align 1, !tbaa !19
  %conv332 = zext i8 %213 to i32
  %cmp333 = icmp eq i32 %conv332, 2
  br i1 %cmp333, label %if.end.336, label %if.then.335

if.then.335:                                      ; preds = %lor.lhs.false.328, %cond.end.322
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402

if.end.336:                                       ; preds = %lor.lhs.false.328
  %214 = load %struct.ref_s*, %struct.ref_s** %CIDSystemInfo, align 8, !tbaa !1
  %call337 = call i32 @dict_find_string(%struct.ref_s* %214, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), %struct.ref_s** %Ordering) #6
  %cmp338 = icmp sle i32 %call337, 0
  br i1 %cmp338, label %if.then.347, label %lor.lhs.false.340

lor.lhs.false.340:                                ; preds = %if.end.336
  %215 = load %struct.ref_s*, %struct.ref_s** %Ordering, align 8, !tbaa !1
  %tas341 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %215, i32 0, i32 0
  %type_attrs342 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas341, i32 0, i32 0
  %216 = bitcast i16* %type_attrs342 to i8*
  %arrayidx343 = getelementptr inbounds i8, i8* %216, i64 1
  %217 = load i8, i8* %arrayidx343, align 1, !tbaa !19
  %conv344 = zext i8 %217 to i32
  %cmp345 = icmp eq i32 %conv344, 18
  br i1 %cmp345, label %if.end.348, label %if.then.347

if.then.347:                                      ; preds = %lor.lhs.false.340, %if.end.336
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402

if.end.348:                                       ; preds = %lor.lhs.false.340
  %218 = load %struct.ref_s*, %struct.ref_s** %Ordering, align 8, !tbaa !1
  %tas349 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %218, i32 0, i32 0
  %rsize350 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas349, i32 0, i32 2
  %219 = load i32, i32* %rsize350, align 4, !tbaa !33
  %conv351 = zext i32 %219 to i64
  %220 = load i32, i32* %decodingID_length, align 4, !tbaa !29
  %conv352 = sext i32 %220 to i64
  %sub = sub i64 28, %conv352
  %cmp353 = icmp ult i64 %conv351, %sub
  br i1 %cmp353, label %cond.true.355, label %cond.false.359

cond.true.355:                                    ; preds = %if.end.348
  %221 = load %struct.ref_s*, %struct.ref_s** %Ordering, align 8, !tbaa !1
  %tas356 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %221, i32 0, i32 0
  %rsize357 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas356, i32 0, i32 2
  %222 = load i32, i32* %rsize357, align 4, !tbaa !33
  %conv358 = zext i32 %222 to i64
  br label %cond.end.362

cond.false.359:                                   ; preds = %if.end.348
  %223 = load i32, i32* %decodingID_length, align 4, !tbaa !29
  %conv360 = sext i32 %223 to i64
  %sub361 = sub i64 28, %conv360
  br label %cond.end.362

cond.end.362:                                     ; preds = %cond.false.359, %cond.true.355
  %cond363 = phi i64 [ %conv358, %cond.true.355 ], [ %sub361, %cond.false.359 ]
  %conv364 = trunc i64 %cond363 to i32
  store i32 %conv364, i32* %ordering_length, align 4, !tbaa !29
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %224 = load %struct.ref_s*, %struct.ref_s** %Ordering, align 8, !tbaa !1
  %value365 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %224, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value365 to i8**
  %225 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %226 = load i32, i32* %ordering_length, align 4, !tbaa !29
  %conv366 = sext i32 %226 to i64
  %call367 = call i8* @memcpy(i8* %arraydecay, i8* %225, i64 %conv366) #8
  %227 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory368 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %227, i32 0, i32 1
  %current369 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory368, i32 0, i32 0
  %228 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current369, align 8, !tbaa !20
  %229 = bitcast %struct.gs_ref_memory_s* %228 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %229, i32 0, i32 2
  %230 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %230, i32 0, i32 16
  %231 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  %arraydecay370 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %232 = load i32, i32* %ordering_length, align 4, !tbaa !29
  %call371 = call i32 @names_ref(%struct.name_table_s* %231, i8* %arraydecay370, i32 %232, %struct.ref_s* %SubstNWP, i32 0) #6
  store i32 %call371, i32* %code, align 4, !tbaa !29
  %cmp372 = icmp slt i32 %call371, 0
  br i1 %cmp372, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %cond.end.362
  %233 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %233, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402

if.end.375:                                       ; preds = %cond.end.362
  %234 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call376 = call i32 @dict_put_string(%struct.ref_s* %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), %struct.ref_s* %SubstNWP, %struct.dict_stack_s* null) #6
  store i32 %call376, i32* %code, align 4, !tbaa !29
  %cmp377 = icmp slt i32 %call376, 0
  br i1 %cmp377, label %if.then.379, label %if.end.380

if.then.379:                                      ; preds = %if.end.375
  %235 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %235, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402

if.end.380:                                       ; preds = %if.end.375
  %236 = load i32, i32* %ordering_length, align 4, !tbaa !29
  %idxprom = sext i32 %236 to i64
  %arrayidx381 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i64 %idxprom
  store i8 46, i8* %arrayidx381, align 1, !tbaa !19
  %arraydecay382 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %237 = load i32, i32* %ordering_length, align 4, !tbaa !29
  %idx.ext = sext i32 %237 to i64
  %add.ptr383 = getelementptr inbounds i8, i8* %arraydecay382, i64 %idx.ext
  %add.ptr384 = getelementptr inbounds i8, i8* %add.ptr383, i64 1
  %238 = load i8*, i8** %decodingID, align 8, !tbaa !1
  %239 = load i32, i32* %decodingID_length, align 4, !tbaa !29
  %conv385 = sext i32 %239 to i64
  %call386 = call i8* @memcpy(i8* %add.ptr384, i8* %238, i64 %conv385) #8
  %240 = load i32, i32* %decodingID_length, align 4, !tbaa !29
  %add = add nsw i32 %240, 1
  %241 = load i32, i32* %ordering_length, align 4, !tbaa !29
  %add387 = add nsw i32 %add, %241
  %idxprom388 = sext i32 %add387 to i64
  %arrayidx389 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i64 %idxprom388
  store i8 0, i8* %arrayidx389, align 1, !tbaa !19
  %242 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory390 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %242, i32 0, i32 1
  %current391 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory390, i32 0, i32 0
  %243 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current391, align 8, !tbaa !20
  %244 = bitcast %struct.gs_ref_memory_s* %243 to %struct.gs_memory_s*
  %gs_lib_ctx392 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %244, i32 0, i32 2
  %245 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx392, align 8, !tbaa !21
  %gs_name_table393 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %245, i32 0, i32 16
  %246 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table393, align 8, !tbaa !24
  %arraydecay394 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %247 = load i32, i32* %decodingID_length, align 4, !tbaa !29
  %add395 = add nsw i32 %247, 1
  %248 = load i32, i32* %ordering_length, align 4, !tbaa !29
  %add396 = add nsw i32 %add395, %248
  %call397 = call i32 @names_ref(%struct.name_table_s* %246, i8* %arraydecay394, i32 %add396, %struct.ref_s* %Decoding, i32 0) #6
  store i32 %call397, i32* %code, align 4, !tbaa !29
  %cmp398 = icmp slt i32 %call397, 0
  br i1 %cmp398, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %if.end.380
  %249 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %249, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402

if.end.401:                                       ; preds = %if.end.380
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.402

cleanup.402:                                      ; preds = %if.end.401, %if.then.400, %if.then.379, %if.then.374, %if.then.347, %if.then.335
  %250 = bitcast i32* %decodingID_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  %251 = bitcast i32* %ordering_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #1
  %252 = bitcast [30 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 30, i8* %252) #1
  %253 = bitcast %struct.ref_s* %SubstNWP to i8*
  call void @llvm.lifetime.end(i64 16, i8* %253) #1
  %254 = bitcast %struct.ref_s** %Ordering to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #1
  %255 = bitcast %struct.ref_s** %CIDSystemInfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %cleanup.dest.408 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.408, label %cleanup.428 [
    i32 0, label %cleanup.cont.409
  ]

cleanup.cont.409:                                 ; preds = %cleanup.402
  br label %if.end.422

if.else.410:                                      ; preds = %lor.lhs.false.311
  %256 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory411 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %256, i32 0, i32 1
  %current412 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory411, i32 0, i32 0
  %257 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current412, align 8, !tbaa !20
  %258 = bitcast %struct.gs_ref_memory_s* %257 to %struct.gs_memory_s*
  %gs_lib_ctx413 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %258, i32 0, i32 2
  %259 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx413, align 8, !tbaa !21
  %gs_name_table414 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %259, i32 0, i32 16
  %260 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table414, align 8, !tbaa !24
  %261 = load i8*, i8** %decodingID, align 8, !tbaa !1
  %262 = load i8*, i8** %decodingID, align 8, !tbaa !1
  %call415 = call i64 @strlen(i8* %262) #7
  %conv416 = trunc i64 %call415 to i32
  %call417 = call i32 @names_ref(%struct.name_table_s* %260, i8* %261, i32 %conv416, %struct.ref_s* %Decoding, i32 0) #6
  store i32 %call417, i32* %code, align 4, !tbaa !29
  %cmp418 = icmp slt i32 %call417, 0
  br i1 %cmp418, label %if.then.420, label %if.end.421

if.then.420:                                      ; preds = %if.else.410
  %263 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %263, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.428

if.end.421:                                       ; preds = %if.else.410
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %cleanup.cont.409
  %264 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call423 = call i32 @dict_put_string(%struct.ref_s* %264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), %struct.ref_s* %Decoding, %struct.dict_stack_s* null) #6
  store i32 %call423, i32* %code, align 4, !tbaa !29
  %cmp424 = icmp slt i32 %call423, 0
  br i1 %cmp424, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %if.end.422
  %265 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %265, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.428

if.end.427:                                       ; preds = %if.end.422
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.428

cleanup.428:                                      ; preds = %if.end.427, %if.then.426, %if.then.420, %cleanup.402
  %266 = bitcast %struct.ref_s* %Decoding to i8*
  call void @llvm.lifetime.end(i64 16, i8* %266) #1
  %cleanup.dest.429 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.429, label %cleanup.432 [
    i32 0, label %cleanup.cont.430
  ]

cleanup.cont.430:                                 ; preds = %cleanup.428
  br label %if.end.431

if.end.431:                                       ; preds = %cleanup.cont.430, %land.lhs.true.300, %land.lhs.true.298, %if.end.295
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.432

cleanup.432:                                      ; preds = %if.end.431, %cleanup.428, %cleanup, %if.then.7, %if.then.3
  %267 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast %struct.ref_s** %Decoding_old to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  %269 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %270 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast i8** %xlatmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  %272 = bitcast i8** %decodingID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = load i32, i32* %retval
  ret i32 %274
}

declare i32 @gs_fapi_prepare_font(%struct.gs_font_s*, %struct.gs_fapi_server_s*, i32, i8*, %struct.gs_string_s*, i8*, i8**) #2

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @alloc_save_change(%struct.gs_dual_memory_s*, %struct.ref_s*, i16*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @FAPI_char(%struct.gs_context_state_s* %i_ctx_p, i32 %bBuildGlyph, %struct.ref_s* %charstring) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %bBuildGlyph.addr = alloca i32, align 4
  %charstring.addr = alloca %struct.ref_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pdr = alloca %struct.ref_s*, align 8
  %v = alloca %struct.ref_s*, align 8
  %font_file_path = alloca i8*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %bCID = alloca i32, align 4
  %subfont = alloca i32, align 4
  %I = alloca %struct.gs_fapi_server_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %char_string = alloca %struct.gs_string_s, align 8
  %c_string_p = alloca %struct.gs_string_s*, align 8
  %char_name = alloca %struct.gs_string_s, align 8
  %c_name_p = alloca %struct.gs_string_s*, align 8
  %cindex = alloca i32, align 4
  %gname = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  %chstrs = alloca %struct.ref_s*, align 8
  %chs = alloca %struct.ref_s*, align 8
  %op131 = alloca %struct.ref_s*, align 8
  %proc = alloca %struct.ref_s*, align 8
  %gname135 = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %bBuildGlyph, i32* %bBuildGlyph.addr, align 4, !tbaa !29
  store %struct.ref_s* %charstring, %struct.ref_s** %charstring.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %pdr, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %font_file_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* null, i8** %font_file_path, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !5
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call = call i32 @font_param(%struct.ref_s* %add.ptr4, %struct.gs_font_s** %pfont) #6
  store i32 %call, i32* %code, align 4, !tbaa !29
  %11 = load i32, i32* %code, align 4, !tbaa !29
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end.191

if.then:                                          ; preds = %entry
  %12 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %14 = bitcast %struct.gs_font_s* %13 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %14, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %15 = bitcast i32* %bCID to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %16, i32 0, i32 11
  %17 = load i32, i32* %FontType, align 4, !tbaa !95
  %cmp5 = icmp eq i32 %17, 9
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %18 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType6 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %18, i32 0, i32 11
  %19 = load i32, i32* %FontType6, align 4, !tbaa !95
  %cmp7 = icmp eq i32 %19, 10
  br i1 %cmp7, label %lor.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %20 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType9 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %20, i32 0, i32 11
  %21 = load i32, i32* %FontType9, align 4, !tbaa !95
  %cmp10 = icmp eq i32 %21, 11
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.8
  %22 = load %struct.ref_s*, %struct.ref_s** %charstring.addr, align 8, !tbaa !1
  %cmp11 = icmp ne %struct.ref_s* %22, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.8, %lor.lhs.false, %if.then
  %23 = phi i1 [ true, %lor.lhs.false.8 ], [ true, %lor.lhs.false ], [ true, %if.then ], [ %cmp11, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  store i32 %lor.ext, i32* %bCID, align 4, !tbaa !29
  %24 = bitcast i32* %subfont to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %26, i32 0, i32 25
  %27 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !36
  store %struct.gs_fapi_server_s* %27, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %28 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call12 = call %struct.gs_text_enum_s* @op_show_find(%struct.gs_context_state_s* %29) #6
  store %struct.gs_text_enum_s* %call12, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %30 = bitcast %struct.gs_string_s* %char_string to i8*
  call void @llvm.lifetime.start(i64 16, i8* %30) #1
  %31 = bitcast %struct.gs_string_s** %c_string_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store %struct.gs_string_s* null, %struct.gs_string_s** %c_string_p, align 8, !tbaa !1
  %32 = bitcast %struct.gs_string_s* %char_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %32) #1
  %33 = bitcast %struct.gs_string_s** %c_name_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store %struct.gs_string_s* null, %struct.gs_string_s** %c_name_p, align 8, !tbaa !1
  %34 = bitcast i32* %cindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 -1, i32* %cindex, align 4, !tbaa !29
  %35 = bitcast %struct.ref_s* %gname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %35) #1
  %36 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %36, i32 0, i32 4
  %37 = bitcast %struct.gs_fapi_font_s* %ff to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* bitcast (%struct.gs_fapi_font_s* @ps_ff_stub to i8*), i64 320, i32 8, i1 false), !tbaa.struct !178
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gs_context_state_s* %38 to i8*
  %40 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %client_ctx_p = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %40, i32 0, i32 1
  store i8* %39, i8** %client_ctx_p, align 8, !tbaa !55
  %41 = load i32, i32* %bBuildGlyph.addr, align 4, !tbaa !29
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.end
  %42 = load i32, i32* %bCID, align 4, !tbaa !29
  %tobool13 = icmp ne i32 %42, 0
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %44 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %45 to i32
  %cmp15 = icmp ne i32 %conv, 13
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.14
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !20
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 2
  %49 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %49, i32 0, i32 16
  %50 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call18 = call i32 @names_enter_string(%struct.name_table_s* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), %struct.ref_s* %51) #6
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.14
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %53 = bitcast i16* %type_attrs20 to i8*
  %arrayidx21 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx21, align 1, !tbaa !19
  %conv22 = zext i8 %54 to i32
  %cmp23 = icmp eq i32 %conv22, 13
  br i1 %cmp23, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %if.end
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call26 = call i32 @check_type_failed(%struct.ref_s* %55) #6
  store i32 %call26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.27:                                        ; preds = %if.end
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 1
  %current29 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory28, i32 0, i32 0
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current29, align 8, !tbaa !20
  %58 = bitcast %struct.gs_ref_memory_s* %57 to %struct.gs_memory_s*
  %gs_lib_ctx30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 2
  %59 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx30, align 8, !tbaa !21
  %gs_name_table31 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %59, i32 0, i32 16
  %60 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table31, align 8, !tbaa !24
  %61 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %60, %struct.ref_s* %61, %struct.ref_s* %gname) #6
  store %struct.gs_string_s* %char_name, %struct.gs_string_s** %c_name_p, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gname, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %62 = load i8*, i8** %bytes, align 8, !tbaa !1
  %63 = load %struct.gs_string_s*, %struct.gs_string_s** %c_name_p, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %63, i32 0, i32 0
  store i8* %62, i8** %data, align 8, !tbaa !106
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gname, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 2
  %64 = load i32, i32* %rsize, align 4, !tbaa !33
  %65 = load %struct.gs_string_s*, %struct.gs_string_s** %c_name_p, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %65, i32 0, i32 1
  store i32 %64, i32* %size, align 4, !tbaa !108
  br label %if.end.71

if.else:                                          ; preds = %land.lhs.true, %lor.end
  %66 = load i32, i32* %bBuildGlyph.addr, align 4, !tbaa !29
  %tobool33 = icmp ne i32 %66, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.58

land.lhs.true.34:                                 ; preds = %if.else
  %67 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FontType35 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %67, i32 0, i32 11
  %68 = load i32, i32* %FontType35, align 4, !tbaa !95
  %cmp36 = icmp eq i32 %68, 11
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.58

land.lhs.true.38:                                 ; preds = %land.lhs.true.34
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  %70 = bitcast i16* %type_attrs40 to i8*
  %arrayidx41 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx41, align 1, !tbaa !19
  %conv42 = zext i8 %71 to i32
  %cmp43 = icmp eq i32 %conv42, 13
  br i1 %cmp43, label %if.then.45, label %if.end.58

if.then.45:                                       ; preds = %land.lhs.true.38
  %72 = bitcast %struct.ref_s** %chstrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = bitcast %struct.ref_s** %chs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 -1
  %call47 = call i32 @dict_find_string(%struct.ref_s* %add.ptr46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %chstrs) #6
  %cmp48 = icmp sle i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.45
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.then.45
  %75 = load %struct.ref_s*, %struct.ref_s** %chstrs, align 8, !tbaa !1
  %call52 = call i32 @dict_find_string(%struct.ref_s* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), %struct.ref_s** %chs) #6
  %cmp53 = icmp sle i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.end.51
  %76 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %77 = load %struct.ref_s*, %struct.ref_s** %chs, align 8, !tbaa !1
  %78 = bitcast %struct.ref_s* %76 to i8*
  %79 = bitcast %struct.ref_s* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 16, i32 8, i1 false), !tbaa.struct !50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.55, %if.then.50
  %80 = bitcast %struct.ref_s** %chs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast %struct.ref_s** %chstrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.178 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.58

if.end.58:                                        ; preds = %cleanup.cont, %land.lhs.true.38, %land.lhs.true.34, %if.else
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gname, i32 0, i32 0
  %type_attrs60 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 0
  store i16 3584, i16* %type_attrs60, align 2, !tbaa !27
  %82 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 0
  %type_attrs62 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 0
  %83 = bitcast i16* %type_attrs62 to i8*
  %arrayidx63 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx63, align 1, !tbaa !19
  %conv64 = zext i8 %84 to i32
  %cmp65 = icmp eq i32 %conv64, 11
  br i1 %cmp65, label %if.end.69, label %if.then.67

if.then.67:                                       ; preds = %if.end.58
  %85 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call68 = call i32 @check_type_failed(%struct.ref_s* %85) #6
  store i32 %call68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.69:                                        ; preds = %if.end.58
  %86 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call70 = call i32 @int_param(%struct.ref_s* %86, i32 65535, i32* %cindex) #6
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.69, %if.end.27
  %87 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call72 = call i32 @dict_find_string(%struct.ref_s* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s** %v) #6
  %cmp73 = icmp sgt i32 %call72, 0
  br i1 %cmp73, label %land.lhs.true.75, label %if.else.85

land.lhs.true.75:                                 ; preds = %if.end.71
  %88 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 0
  %type_attrs77 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas76, i32 0, i32 0
  %89 = bitcast i16* %type_attrs77 to i8*
  %arrayidx78 = getelementptr inbounds i8, i8* %89, i64 1
  %90 = load i8, i8* %arrayidx78, align 1, !tbaa !19
  %conv79 = zext i8 %90 to i32
  %cmp80 = icmp eq i32 %conv79, 11
  br i1 %cmp80, label %if.then.82, label %if.else.85

if.then.82:                                       ; preds = %land.lhs.true.75
  %91 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %value83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i32 0, i32 1
  %intval = bitcast %union.v* %value83 to i64*
  %92 = load i64, i64* %intval, align 8, !tbaa !30
  %conv84 = trunc i64 %92 to i32
  store i32 %conv84, i32* %subfont, align 4, !tbaa !29
  br label %if.end.86

if.else.85:                                       ; preds = %land.lhs.true.75, %if.end.71
  store i32 0, i32* %subfont, align 4, !tbaa !29
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %if.then.82
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack87 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 26
  %stack88 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack87, i32 0, i32 0
  %p89 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack88, i32 0, i32 0
  %94 = load %struct.ref_s*, %struct.ref_s** %p89, align 8, !tbaa !5
  %add.ptr90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i64 -1
  %call91 = call i32 @dict_find_string(%struct.ref_s* %add.ptr90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s** %v) #6
  %cmp92 = icmp sgt i32 %call91, 0
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.105

land.lhs.true.94:                                 ; preds = %if.end.86
  %95 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 0
  %type_attrs96 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas95, i32 0, i32 0
  %96 = bitcast i16* %type_attrs96 to i8*
  %arrayidx97 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx97, align 1, !tbaa !19
  %conv98 = zext i8 %97 to i32
  %cmp99 = icmp eq i32 %conv98, 18
  br i1 %cmp99, label %if.then.101, label %if.end.105

if.then.101:                                      ; preds = %land.lhs.true.94
  %98 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %99 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %99, i32 0, i32 1
  %current103 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory102, i32 0, i32 0
  %100 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current103, align 8, !tbaa !20
  %101 = bitcast %struct.gs_ref_memory_s* %100 to %struct.gs_memory_s*
  %call104 = call i8* @ref_to_string(%struct.ref_s* %98, %struct.gs_memory_s* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #6
  store i8* %call104, i8** %font_file_path, align 8, !tbaa !1
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.101, %land.lhs.true.94, %if.end.86
  %102 = load %struct.ref_s*, %struct.ref_s** %charstring.addr, align 8, !tbaa !1
  %tobool106 = icmp ne %struct.ref_s* %102, null
  br i1 %tobool106, label %if.then.107, label %if.end.114

if.then.107:                                      ; preds = %if.end.105
  store %struct.gs_string_s* %char_string, %struct.gs_string_s** %c_string_p, align 8, !tbaa !1
  %103 = load %struct.ref_s*, %struct.ref_s** %charstring.addr, align 8, !tbaa !1
  %value108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i32 0, i32 1
  %bytes109 = bitcast %union.v* %value108 to i8**
  %104 = load i8*, i8** %bytes109, align 8, !tbaa !1
  %105 = load %struct.gs_string_s*, %struct.gs_string_s** %c_string_p, align 8, !tbaa !1
  %data110 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %105, i32 0, i32 0
  store i8* %104, i8** %data110, align 8, !tbaa !106
  %106 = load %struct.ref_s*, %struct.ref_s** %charstring.addr, align 8, !tbaa !1
  %tas111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 0
  %rsize112 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas111, i32 0, i32 2
  %107 = load i32, i32* %rsize112, align 4, !tbaa !33
  %108 = load %struct.gs_string_s*, %struct.gs_string_s** %c_string_p, align 8, !tbaa !1
  %size113 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %108, i32 0, i32 1
  store i32 %107, i32* %size113, align 4, !tbaa !108
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.107, %if.end.105
  %109 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %110 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %110, i32 0, i32 0
  %111 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !54
  %112 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %113 = load i8*, i8** %font_file_path, align 8, !tbaa !1
  %114 = load i32, i32* %bBuildGlyph.addr, align 4, !tbaa !29
  %115 = load %struct.gs_string_s*, %struct.gs_string_s** %c_string_p, align 8, !tbaa !1
  %116 = load %struct.gs_string_s*, %struct.gs_string_s** %c_name_p, align 8, !tbaa !1
  %117 = load i32, i32* %cindex, align 4, !tbaa !29
  %conv115 = sext i32 %117 to i64
  %118 = load i32, i32* %cindex, align 4, !tbaa !29
  %conv116 = sext i32 %118 to i64
  %119 = load i32, i32* %subfont, align 4, !tbaa !29
  %call117 = call i32 @gs_fapi_do_char(%struct.gs_font_s* %109, %struct.gs_state_s* %111, %struct.gs_text_enum_s* %112, i8* %113, i32 %114, %struct.gs_string_s* %115, %struct.gs_string_s* %116, i64 %conv115, i64 %conv116, i32 %119) #6
  store i32 %call117, i32* %code, align 4, !tbaa !29
  %120 = load i8*, i8** %font_file_path, align 8, !tbaa !1
  %cmp118 = icmp ne i8* %120, null
  br i1 %cmp118, label %if.then.120, label %if.end.127

if.then.120:                                      ; preds = %if.end.114
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %121, i32 0, i32 1
  %current122 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory121, i32 0, i32 0
  %122 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current122, align 8, !tbaa !20
  %123 = bitcast %struct.gs_ref_memory_s* %122 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %123, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %124 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !28
  %125 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %125, i32 0, i32 1
  %current124 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory123, i32 0, i32 0
  %126 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current124, align 8, !tbaa !20
  %127 = bitcast %struct.gs_ref_memory_s* %126 to %struct.gs_memory_s*
  %128 = load i8*, i8** %font_file_path, align 8, !tbaa !1
  %129 = load %struct.ref_s*, %struct.ref_s** %v, align 8, !tbaa !1
  %tas125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %129, i32 0, i32 0
  %rsize126 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas125, i32 0, i32 2
  %130 = load i32, i32* %rsize126, align 4, !tbaa !33
  %add = add i32 %130, 1
  call void %124(%struct.gs_memory_s* %127, i8* %128, i32 %add, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.120, %if.end.114
  %131 = load i32, i32* %code, align 4, !tbaa !29
  %cmp128 = icmp eq i32 %131, -28
  br i1 %cmp128, label %if.then.130, label %if.end.177

if.then.130:                                      ; preds = %if.end.127
  %132 = bitcast %struct.ref_s** %op131 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack132 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %133, i32 0, i32 26
  %stack133 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack132, i32 0, i32 0
  %p134 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack133, i32 0, i32 0
  %134 = load %struct.ref_s*, %struct.ref_s** %p134, align 8, !tbaa !5
  store %struct.ref_s* %134, %struct.ref_s** %op131, align 8, !tbaa !1
  %135 = bitcast %struct.ref_s** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  %136 = bitcast %struct.ref_s* %gname135 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %136) #1
  %137 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff136 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %137, i32 0, i32 4
  %is_type1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff136, i32 0, i32 7
  %138 = load i32, i32* %is_type1, align 4, !tbaa !145
  %tobool137 = icmp ne i32 %138, 0
  br i1 %tobool137, label %land.lhs.true.138, label %if.else.173

land.lhs.true.138:                                ; preds = %if.then.130
  %139 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %I, align 8, !tbaa !1
  %ff139 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %139, i32 0, i32 4
  %140 = load i32, i32* %cindex, align 4, !tbaa !29
  %call140 = call i32 @get_charstring(%struct.gs_fapi_font_s* %ff139, i32 %140, %struct.ref_s** %proc, %struct.ref_s* %gname135) #6
  %cmp141 = icmp sge i32 %call140, 0
  br i1 %cmp141, label %land.lhs.true.143, label %if.else.173

land.lhs.true.143:                                ; preds = %land.lhs.true.138
  %141 = load %struct.ref_s*, %struct.ref_s** %proc, align 8, !tbaa !1
  %tas144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %141, i32 0, i32 0
  %type_attrs145 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas144, i32 0, i32 0
  %142 = bitcast i16* %type_attrs145 to i8*
  %arrayidx146 = getelementptr inbounds i8, i8* %142, i64 1
  %143 = load i8, i8* %arrayidx146, align 1, !tbaa !19
  %conv147 = zext i8 %143 to i32
  %cmp148 = icmp eq i32 %conv147, 4
  br i1 %cmp148, label %if.then.157, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %land.lhs.true.143
  %144 = load %struct.ref_s*, %struct.ref_s** %proc, align 8, !tbaa !1
  %tas151 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %144, i32 0, i32 0
  %type_attrs152 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas151, i32 0, i32 0
  %145 = bitcast i16* %type_attrs152 to i8*
  %arrayidx153 = getelementptr inbounds i8, i8* %145, i64 1
  %146 = load i8, i8* %arrayidx153, align 1, !tbaa !19
  %conv154 = zext i8 %146 to i32
  %cmp155 = icmp eq i32 %conv154, 5
  br i1 %cmp155, label %if.then.157, label %if.else.173

if.then.157:                                      ; preds = %lor.lhs.false.150, %land.lhs.true.143
  br label %do.body

do.body:                                          ; preds = %if.then.157
  %147 = load %struct.ref_s*, %struct.ref_s** %op131, align 8, !tbaa !1
  %add.ptr158 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %147, i64 2
  store %struct.ref_s* %add.ptr158, %struct.ref_s** %op131, align 8, !tbaa !1
  %148 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack159 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %148, i32 0, i32 26
  %stack160 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack159, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack160, i32 0, i32 2
  %149 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp161 = icmp ugt %struct.ref_s* %add.ptr158, %149
  br i1 %cmp161, label %if.then.163, label %if.else.166

if.then.163:                                      ; preds = %do.body
  %150 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack164 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %150, i32 0, i32 26
  %stack165 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack164, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack165, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

if.else.166:                                      ; preds = %do.body
  %151 = load %struct.ref_s*, %struct.ref_s** %op131, align 8, !tbaa !1
  %152 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack167 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %152, i32 0, i32 26
  %stack168 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack167, i32 0, i32 0
  %p169 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack168, i32 0, i32 0
  store %struct.ref_s* %151, %struct.ref_s** %p169, align 8, !tbaa !5
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.166
  br label %do.cond

do.cond:                                          ; preds = %if.end.170
  br label %do.end

do.end:                                           ; preds = %do.cond
  %153 = load %struct.ref_s*, %struct.ref_s** %op131, align 8, !tbaa !1
  %add.ptr171 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %153, i64 -1
  %154 = bitcast %struct.ref_s* %add.ptr171 to i8*
  %155 = bitcast %struct.ref_s* %gname135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 16, i32 8, i1 false), !tbaa.struct !50
  %156 = load %struct.ref_s*, %struct.ref_s** %op131, align 8, !tbaa !1
  %157 = load %struct.ref_s*, %struct.ref_s** %proc, align 8, !tbaa !1
  %158 = bitcast %struct.ref_s* %156 to i8*
  %159 = bitcast %struct.ref_s* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* %159, i64 16, i32 8, i1 false), !tbaa.struct !50
  %160 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call172 = call i32 @zchar_exec_char_proc(%struct.gs_context_state_s* %160) #6
  store i32 %call172, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

if.else.173:                                      ; preds = %lor.lhs.false.150, %land.lhs.true.138, %if.then.130
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.174

cleanup.174:                                      ; preds = %if.else.173, %do.end, %if.then.163
  %161 = bitcast %struct.ref_s* %gname135 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %161) #1
  %162 = bitcast %struct.ref_s** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %struct.ref_s** %op131 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  br label %cleanup.178

if.end.177:                                       ; preds = %if.end.127
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.178

cleanup.178:                                      ; preds = %if.end.177, %cleanup.174, %if.then.67, %cleanup, %if.then.25
  %164 = bitcast %struct.ref_s* %gname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %164) #1
  %165 = bitcast i32* %cindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast %struct.gs_string_s** %c_name_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast %struct.gs_string_s* %char_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %167) #1
  %168 = bitcast %struct.gs_string_s** %c_string_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast %struct.gs_string_s* %char_string to i8*
  call void @llvm.lifetime.end(i64 16, i8* %169) #1
  %170 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast %struct.gs_fapi_server_s** %I to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i32* %subfont to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %bCID to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %cleanup.dest.189 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.189, label %cleanup.200 [
    i32 0, label %cleanup.cont.190
  ]

cleanup.cont.190:                                 ; preds = %cleanup.178
  br label %if.end.191

if.end.191:                                       ; preds = %cleanup.cont.190, %entry
  %175 = load i32, i32* %code, align 4, !tbaa !29
  %cmp192 = icmp eq i32 %175, 0
  br i1 %cmp192, label %if.then.194, label %if.end.199

if.then.194:                                      ; preds = %if.end.191
  %176 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack195 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %176, i32 0, i32 26
  %stack196 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack195, i32 0, i32 0
  %p197 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack196, i32 0, i32 0
  %177 = load %struct.ref_s*, %struct.ref_s** %p197, align 8, !tbaa !5
  %add.ptr198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %177, i64 -2
  store %struct.ref_s* %add.ptr198, %struct.ref_s** %p197, align 8, !tbaa !5
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.194, %if.end.191
  %178 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %178, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

cleanup.200:                                      ; preds = %if.end.199, %cleanup.178
  %179 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast i8** %font_file_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast %struct.ref_s** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = load i32, i32* %retval
  ret i32 %185
}

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

declare i32 @gs_fapi_do_char(%struct.gs_font_s*, %struct.gs_state_s*, %struct.gs_text_enum_s*, i8*, i32, %struct.gs_string_s*, %struct.gs_string_s*, i64, i64, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_charstring(%struct.gs_fapi_font_s* %ff, i32 %char_code, %struct.ref_s** %proc, %struct.ref_s* %char_name) #0 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.gs_fapi_font_s*, align 8
  %char_code.addr = alloca i32, align 4
  %proc.addr = alloca %struct.ref_s**, align 8
  %char_name.addr = alloca %struct.ref_s*, align 8
  %CharStrings = alloca %struct.ref_s*, align 8
  %pdr = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %StandardEncoding = alloca %struct.ref_s*, align 8
  store %struct.gs_fapi_font_s* %ff, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  store i32 %char_code, i32* %char_code.addr, align 4, !tbaa !29
  store %struct.ref_s** %proc, %struct.ref_s*** %proc.addr, align 8, !tbaa !1
  store %struct.ref_s* %char_name, %struct.ref_s** %char_name.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_font_data2 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %2, i32 0, i32 16
  %3 = load i8*, i8** %client_font_data2, align 8, !tbaa !62
  %4 = bitcast i8* %3 to %struct.gs_font_base_s*
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %4, i32 0, i32 8
  %5 = load i8*, i8** %client_data, align 8, !tbaa !63
  %6 = bitcast i8* %5 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %6, i32 0, i32 0
  store %struct.ref_s* %dict, %struct.ref_s** %pdr, align 8, !tbaa !1
  %7 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %is_type1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %7, i32 0, i32 7
  %8 = load i32, i32* %is_type1, align 4, !tbaa !104
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %is_cid = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %9, i32 0, i32 8
  %10 = load i32, i32* %is_cid, align 4, !tbaa !94
  %tobool1 = icmp ne i32 %10, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end:                                           ; preds = %if.then
  %11 = load %struct.ref_s*, %struct.ref_s** %pdr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %CharStrings) #6
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %12, i32 0, i32 17
  %13 = load i8*, i8** %char_data, align 8, !tbaa !105
  %cmp5 = icmp ne i8* %13, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %14 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %14, i32 0, i32 2
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 2
  %16 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !21
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %16, i32 0, i32 16
  %17 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !24
  %18 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data7 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %18, i32 0, i32 17
  %19 = load i8*, i8** %char_data7, align 8, !tbaa !105
  %20 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %char_data_len = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %20, i32 0, i32 18
  %21 = load i32, i32* %char_data_len, align 4, !tbaa !109
  %22 = load %struct.ref_s*, %struct.ref_s** %char_name.addr, align 8, !tbaa !1
  %call8 = call i32 @names_ref(%struct.name_table_s* %17, i8* %19, i32 %21, %struct.ref_s* %22, i32 -1) #6
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end.11:                                        ; preds = %if.then.6
  br label %if.end.29

if.else:                                          ; preds = %if.end.4
  %23 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %client_ctx_p = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %24, i32 0, i32 14
  %25 = load i8*, i8** %client_ctx_p, align 8, !tbaa !103
  %26 = bitcast i8* %25 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %26, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %27 = bitcast %struct.ref_s** %StandardEncoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %call12 = call i32 @dict_find_string(%struct.ref_s* %system_dict, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), %struct.ref_s** %StandardEncoding) #6
  %cmp13 = icmp sle i32 %call12, 0
  br i1 %cmp13, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %29 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %29, i32 0, i32 2
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !86
  %31 = load %struct.ref_s*, %struct.ref_s** %StandardEncoding, align 8, !tbaa !1
  %32 = load i32, i32* %char_code.addr, align 4, !tbaa !29
  %conv = sext i32 %32 to i64
  %33 = load %struct.ref_s*, %struct.ref_s** %char_name.addr, align 8, !tbaa !1
  %call15 = call i32 @array_get(%struct.gs_memory_s* %30, %struct.ref_s* %31, i64 %conv, %struct.ref_s* %33) #6
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %lor.lhs.false, %if.else
  %34 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %34, i32 0, i32 2
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !86
  %gs_lib_ctx20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 2
  %36 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx20, align 8, !tbaa !21
  %gs_name_table21 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %36, i32 0, i32 16
  %37 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table21, align 8, !tbaa !24
  %38 = load %struct.ref_s*, %struct.ref_s** %char_name.addr, align 8, !tbaa !1
  %call22 = call i32 @names_ref(%struct.name_table_s* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 7, %struct.ref_s* %38, i32 -1) #6
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.18
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.25
  %39 = bitcast %struct.ref_s** %StandardEncoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont, %if.end.11
  %41 = load %struct.ref_s*, %struct.ref_s** %CharStrings, align 8, !tbaa !1
  %42 = load %struct.ref_s*, %struct.ref_s** %char_name.addr, align 8, !tbaa !1
  %43 = load %struct.ref_s**, %struct.ref_s*** %proc.addr, align 8, !tbaa !1
  %call30 = call i32 @dict_find(%struct.ref_s* %41, %struct.ref_s* %42, %struct.ref_s** %43) #6
  %cmp31 = icmp sle i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

if.end.34:                                        ; preds = %if.end.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.36

cleanup.36:                                       ; preds = %if.end.35, %if.then.33, %cleanup, %if.then.10, %if.then.3, %if.then.2
  %44 = bitcast %struct.ref_s** %pdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.ref_s** %CharStrings to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @zchar_exec_char_proc(%struct.gs_context_state_s*) #2

declare %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s*) #2

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #2

declare i32 @ztype9mapcid(%struct.gs_context_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 624}
!6 = !{!"gs_context_state_s", !2, i64 0, !7, i64 8, !9, i64 80, !10, i64 88, !10, i64 104, !13, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !9, i64 148, !10, i64 152, !10, i64 168, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !14, i64 264, !14, i64 304, !2, i64 344, !9, i64 352, !2, i64 360, !15, i64 368, !17, i64 520, !18, i64 624, !2, i64 720}
!7 = !{!"gs_dual_memory_s", !2, i64 0, !8, i64 8, !9, i64 48, !2, i64 56, !9, i64 64, !9, i64 68}
!8 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!9 = !{!"int", !3, i64 0}
!10 = !{!"ref_s", !11, i64 0, !3, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2, !9, i64 4}
!12 = !{!"short", !3, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!"op_array_table_s", !10, i64 0, !2, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!15 = !{!"dict_stack_s", !16, i64 0, !9, i64 96, !9, i64 100, !9, i64 104, !2, i64 112, !9, i64 120, !2, i64 128, !10, i64 136}
!16 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !9, i64 40, !9, i64 44, !10, i64 48, !9, i64 64, !9, i64 68, !9, i64 72, !2, i64 80, !2, i64 88}
!17 = !{!"exec_stack_s", !16, i64 0, !2, i64 96}
!18 = !{!"op_stack_s", !16, i64 0}
!19 = !{!3, !3, i64 0}
!20 = !{!6, !2, i64 8}
!21 = !{!22, !2, i64 192}
!22 = !{!"gs_memory_s", !2, i64 0, !23, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!23 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!24 = !{!25, !2, i64 120}
!25 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!12, !12, i64 0}
!27 = !{!10, !12, i64 0}
!28 = !{!22, !2, i64 160}
!29 = !{!9, !9, i64 0}
!30 = !{!13, !13, i64 0}
!31 = !{!32, !2, i64 16}
!32 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!33 = !{!10, !9, i64 4}
!34 = !{!6, !2, i64 640}
!35 = !{!6, !9, i64 688}
!36 = !{!37, !2, i64 424}
!37 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !38, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !39, i64 80, !39, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !40, i64 156, !9, i64 160, !41, i64 168, !42, i64 272, !42, i64 324, !43, i64 376, !46, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!38 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!39 = !{!"gs_matrix_s", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!40 = !{!"float", !3, i64 0}
!41 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!42 = !{!"gs_font_name_s", !3, i64 0, !9, i64 48}
!43 = !{!"gs_rect_s", !44, i64 0, !44, i64 16}
!44 = !{!"gs_point_s", !45, i64 0, !45, i64 8}
!45 = !{!"double", !3, i64 0}
!46 = !{!"gs_uid_s", !13, i64 0, !2, i64 8}
!47 = !{!48, !2, i64 72}
!48 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !38, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !39, i64 80, !39, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !40, i64 156, !9, i64 160, !41, i64 168, !42, i64 272, !42, i64 324}
!49 = !{!48, !3, i64 128}
!50 = !{i64 0, i64 2, !26, i64 2, i64 2, !26, i64 4, i64 4, !29, i64 8, i64 8, !30, i64 8, i64 2, !26, i64 8, i64 4, !51, i64 8, i64 8, !30, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !30}
!51 = !{!40, !40, i64 0}
!52 = !{!7, !9, i64 68}
!53 = !{!7, !9, i64 48}
!54 = !{!6, !2, i64 0}
!55 = !{!56, !2, i64 8}
!56 = !{!"gs_fapi_server_s", !57, i64 0, !2, i64 8, !9, i64 16, !58, i64 24, !60, i64 80, !9, i64 400, !9, i64 404, !9, i64 408, !39, i64 412, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!57 = !{!"gs_fapi_server_instance_s", !2, i64 0}
!58 = !{!"gs_fapi_face_s", !13, i64 0, !39, i64 8, !59, i64 32, !9, i64 40, !3, i64 44}
!59 = !{!"gs_log2_scale_point_s", !9, i64 0, !9, i64 4}
!60 = !{!"gs_fapi_font_s", !2, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !3, i64 72, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !9, i64 184, !40, i64 188, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312}
!61 = !{!60, !2, i64 160}
!62 = !{!60, !2, i64 168}
!63 = !{!37, !2, i64 72}
!64 = !{!65, !3, i64 128}
!65 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !38, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !39, i64 80, !39, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !40, i64 156, !9, i64 160, !41, i64 168, !42, i64 272, !42, i64 324, !43, i64 376, !46, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !66, i64 448}
!66 = !{!"gs_type1_data_s", !67, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !13, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !40, i64 100, !40, i64 104, !68, i64 108, !40, i64 168, !9, i64 172, !68, i64 176, !68, i64 236, !9, i64 280, !68, i64 284, !9, i64 328, !68, i64 332, !68, i64 340, !68, i64 348, !68, i64 400, !68, i64 452, !3, i64 520, !9, i64 536}
!67 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!68 = !{!"", !9, i64 0, !3, i64 4}
!69 = !{!65, !45, i64 376}
!70 = !{!65, !45, i64 384}
!71 = !{!65, !45, i64 392}
!72 = !{!65, !45, i64 400}
!73 = !{!65, !9, i64 556}
!74 = !{!65, !9, i64 732}
!75 = !{!65, !9, i64 624}
!76 = !{!65, !9, i64 684}
!77 = !{!65, !40, i64 552}
!78 = !{!65, !9, i64 780}
!79 = !{!65, !9, i64 788}
!80 = !{!65, !9, i64 796}
!81 = !{!65, !9, i64 848}
!82 = !{!65, !9, i64 620}
!83 = !{!65, !9, i64 728}
!84 = !{!60, !9, i64 8}
!85 = !{!65, !9, i64 512}
!86 = !{!60, !2, i64 16}
!87 = !{!88, !2, i64 0}
!88 = !{!"", !2, i64 0, !2, i64 8}
!89 = !{!65, !13, i64 408}
!90 = !{!65, !40, i64 548}
!91 = !{!65, !2, i64 16}
!92 = !{!56, !2, i64 504}
!93 = !{!45, !45, i64 0}
!94 = !{!60, !9, i64 52}
!95 = !{!37, !3, i64 128}
!96 = !{!37, !2, i64 64}
!97 = !{!39, !40, i64 0}
!98 = !{!39, !40, i64 4}
!99 = !{!39, !40, i64 8}
!100 = !{!39, !40, i64 12}
!101 = !{!39, !40, i64 16}
!102 = !{!39, !40, i64 20}
!103 = !{!60, !2, i64 152}
!104 = !{!60, !9, i64 48}
!105 = !{!60, !2, i64 176}
!106 = !{!107, !2, i64 0}
!107 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!108 = !{!107, !9, i64 8}
!109 = !{!60, !9, i64 184}
!110 = !{!60, !2, i64 288}
!111 = !{!6, !9, i64 196}
!112 = !{!113, !2, i64 616}
!113 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !38, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !39, i64 80, !39, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !40, i64 156, !9, i64 160, !41, i64 168, !42, i64 272, !42, i64 324, !43, i64 376, !46, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !114, i64 448}
!114 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !13, i64 48, !13, i64 56, !9, i64 64, !9, i64 68, !3, i64 72, !13, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !2, i64 168, !2, i64 176, !9, i64 184, !9, i64 188, !2, i64 192, !13, i64 200}
!115 = !{!116, !2, i64 80}
!116 = !{!"sfnts_reader_s", !2, i64 0, !2, i64 8, !2, i64 16, !13, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!117 = !{!116, !2, i64 72}
!118 = !{!116, !9, i64 40}
!119 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 4, !29, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1}
!120 = !{!121, !9, i64 16}
!121 = !{!"sfnts_writer_s", !2, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!122 = !{!121, !2, i64 8}
!123 = !{!121, !2, i64 0}
!124 = !{!125, !9, i64 40}
!125 = !{!"", !13, i64 0, !3, i64 8, !9, i64 40, !9, i64 44, !2, i64 48, !9, i64 56, !3, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80}
!126 = !{!56, !2, i64 568}
!127 = !{!128, !2, i64 720}
!128 = !{!"gs_font_cid2_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !38, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !39, i64 80, !39, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !40, i64 156, !9, i64 160, !41, i64 168, !42, i64 272, !42, i64 324, !43, i64 376, !46, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !114, i64 448, !129, i64 656, !2, i64 744}
!129 = !{!"gs_font_cid2_data_s", !130, i64 0, !9, i64 56, !2, i64 64, !133, i64 72}
!130 = !{!"gs_font_cid_data_s", !131, i64 0, !9, i64 40, !9, i64 44, !9, i64 48}
!131 = !{!"gs_cid_system_info_s", !132, i64 0, !132, i64 16, !9, i64 32}
!132 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!133 = !{!"o_", !2, i64 0, !2, i64 8}
!134 = !{!125, !9, i64 44}
!135 = !{!37, !2, i64 16}
!136 = !{!6, !2, i64 520}
!137 = !{!6, !2, i64 536}
!138 = !{!6, !2, i64 632}
!139 = !{!125, !2, i64 48}
!140 = !{!125, !9, i64 56}
!141 = !{!56, !2, i64 480}
!142 = !{!56, !9, i64 132}
!143 = !{!56, !2, i64 256}
!144 = !{!56, !9, i64 264}
!145 = !{!56, !9, i64 128}
!146 = !{!125, !13, i64 0}
!147 = !{!116, !2, i64 48}
!148 = !{!116, !2, i64 56}
!149 = !{!116, !2, i64 64}
!150 = !{!116, !13, i64 24}
!151 = !{!152, !13, i64 8}
!152 = !{!"", !3, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!153 = !{!152, !13, i64 16}
!154 = !{!152, !13, i64 32}
!155 = !{!152, !13, i64 24}
!156 = !{!121, !2, i64 40}
!157 = !{!121, !2, i64 32}
!158 = !{!121, !2, i64 48}
!159 = !{!121, !2, i64 24}
!160 = !{!116, !9, i64 36}
!161 = !{!116, !9, i64 32}
!162 = !{!116, !2, i64 16}
!163 = !{!116, !2, i64 8}
!164 = !{!116, !2, i64 0}
!165 = !{!113, !9, i64 516}
!166 = !{!113, !13, i64 568}
!167 = !{!113, !13, i64 504}
!168 = !{!56, !2, i64 552}
!169 = !{!56, !2, i64 0}
!170 = !{!171, !2, i64 8}
!171 = !{!"gs_fapi_server_descriptor_s", !2, i64 0, !2, i64 8, !2, i64 16}
!172 = !{!37, !2, i64 432}
!173 = !{!37, !45, i64 376}
!174 = !{!37, !45, i64 384}
!175 = !{!37, !45, i64 392}
!176 = !{!37, !45, i64 400}
!177 = !{!7, !9, i64 64}
!178 = !{i64 0, i64 8, !1, i64 8, i64 4, !29, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 4, !29, i64 44, i64 4, !29, i64 48, i64 4, !29, i64 52, i64 4, !29, i64 56, i64 4, !29, i64 60, i64 4, !29, i64 64, i64 4, !29, i64 68, i64 4, !29, i64 72, i64 80, !19, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1, i64 184, i64 4, !29, i64 188, i64 4, !51, i64 192, i64 8, !1, i64 200, i64 8, !1, i64 208, i64 8, !1, i64 216, i64 8, !1, i64 224, i64 8, !1, i64 232, i64 8, !1, i64 240, i64 8, !1, i64 248, i64 8, !1, i64 256, i64 8, !1, i64 264, i64 8, !1, i64 272, i64 8, !1, i64 280, i64 8, !1, i64 288, i64 8, !1, i64 296, i64 8, !1, i64 304, i64 8, !1, i64 312, i64 8, !1}
