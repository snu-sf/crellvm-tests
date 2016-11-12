; ModuleID = './zcrd.bc'
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
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.8, %struct.anon.8, %struct.anon.8, %struct.anon.8 }
%struct.anon.8 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_vector3_s = type { float, float, float }
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.9 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
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
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_cie_common_s = type { i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i8*, %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.0 }
%struct.gs_color_space_type_s = type opaque
%struct.client_color_space_data_s = type opaque
%struct.cmm_profile_s = type opaque
%union.anon.0 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_cie_common_proc3_s = type { [3 x float (double, %struct.gs_cie_common_s*)*] }
%struct.anon = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gs_imager_state_s = type opaque
%struct.obj_header_s = type opaque
%struct.int_gstate_s = type { %struct.ref_s, %struct.anon.10, %struct.anon.10, %struct.ref_s, %struct.ref_s, [2 x %struct.ref_colorspace_s], [2 x %struct.ref_s], %struct.anon.14, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.anon.10 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.13 }
%struct.ref_cie_procs_s = type { %union.anon.11, %union.anon.12, %struct.ref_s }
%union.anon.11 = type { %struct.ref_s }
%union.anon.12 = type { %struct.ref_s }
%union.anon.13 = type { %struct.ref_device_n_params_s }
%struct.ref_device_n_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.14 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.dict_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.15, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_s }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.iparam_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.17, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { {}*, %struct.ref_s, i32 }
%struct.iparam_loc_s = type { %struct.ref_s*, i32* }
%struct.gx_device_s = type opaque

@.str = private unnamed_addr constant [17 x i8] c"cie_cache_common\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Transform.PQR\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"0currentcolorrendering\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"2.setcolorrendering1\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"2.setdevicecolorrendering1\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"1.buildcolorrendering1\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"1.builddevicecolorrendering1\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"3%cie_exec_tpqr\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"2%cie_post_exec_tpqr\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"1%cie_tpqr_finish\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"5.TransformPQR_scale_WB0\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"5.TransformPQR_scale_WB1\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"5.TransformPQR_scale_WB2\00", align 1
@zcrd_l2_op_defs = constant [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentcolorrendering }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetcolorrendering1 }, %struct.op_def { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetdevicecolorrendering1 }, %struct.op_def { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildcolorrendering1 }, %struct.op_def { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuilddevicecolorrendering1 }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @cie_exec_tpqr }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @cie_post_exec_tpqr }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @cie_tpqr_finish }, %struct.op_def { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztpqr_scale_wb0 }, %struct.op_def { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztpqr_scale_wb1 }, %struct.op_def { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztpqr_scale_wb2 }, %struct.op_def zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [16 x i8] c"cie_tpqr_finish\00", align 1
@TransformPQR_from_cache = external constant %struct.gs_cie_transform_proc3_s, align 8
@st_cie_render1 = external constant %struct.gs_memory_struct_type_s, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"EncodeLMN\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"EncodeABC\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"TransformPQR\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"RenderTable\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c".buildcolorrendering1\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"ColorRenderingType\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"MatrixLMN\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"RangeLMN\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"MatrixABC\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"RangeABC\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"MatrixPQR\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"RangePQR\00", align 1
@Encode_default = external constant %struct.gs_cie_render_proc3_s, align 8
@TransformPQR_default = external constant %struct.gs_cie_transform_proc3_s, align 8
@RenderTableT_default = external constant %struct.gs_cie_render_table_procs_s, align 8
@.str.27 = private unnamed_addr constant [28 x i8] c".builddevicecolorrendering1\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cie_cache_joint(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_cie_render_procs_s* %pcrprocs, %struct.gs_cie_common_s* %pcie, %struct.gs_state_s* %pgs) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pcrprocs.addr = alloca %struct.ref_cie_render_procs_s*, align 8
  %pcie.addr = alloca %struct.gs_cie_common_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pcrd = alloca %struct.gs_cie_render_s*, align 8
  %pjc = alloca %struct.gx_cie_joint_caches_s*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %pqr_procs = alloca %struct.ref_s, align 8
  %space = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  %p39 = alloca %struct.ref_s*, align 8
  %ppt = alloca float*, align 8
  %j = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_cie_render_procs_s* %pcrprocs, %struct.ref_cie_render_procs_s** %pcrprocs.addr, align 8, !tbaa !1
  store %struct.gs_cie_common_s* %pcie, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call %struct.gs_cie_render_s* @gs_currentcolorrendering(%struct.gs_state_s* %1) #3
  store %struct.gs_cie_render_s* %call, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %2 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call1 = call %struct.gx_cie_joint_caches_s* @gx_unshare_cie_caches(%struct.gs_state_s* %3) #3
  store %struct.gx_cie_joint_caches_s* %call1, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %4 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %5) #3
  %6 = bitcast %struct.gs_memory_s* %call2 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %6, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %7 = bitcast %struct.ref_s* %pqr_procs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_cie_render_s* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end:                                           ; preds = %entry
  %12 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_cie_joint_caches_s* %12, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.5:                                         ; preds = %if.end
  %13 = load %struct.ref_cie_render_procs_s*, %struct.ref_cie_render_procs_s** %pcrprocs.addr, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.ref_cie_render_procs_s, %struct.ref_cie_render_procs_s* %13, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %TransformPQR, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %15 to i32
  %cmp6 = icmp eq i32 %conv, 14
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call9 = call i32 @gs_cie_cs_complete(%struct.gs_state_s* %16, i32 1) #3
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.10:                                        ; preds = %if.end.5
  %17 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %18 = load %struct.gs_cie_common_s*, %struct.gs_cie_common_s** %pcie.addr, align 8, !tbaa !1
  %19 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %call11 = call i32 @gs_cie_compute_points_sd(%struct.gx_cie_joint_caches_s* %17, %struct.gs_cie_common_s* %18, %struct.gs_cie_render_s* %19) #3
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %call12 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %21, %struct.ref_s* %pqr_procs, i32 96, i32 87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #3
  store i32 %call12, i32* %code, align 4, !tbaa !20
  %22 = load i32, i32* %code, align 4, !tbaa !20
  %cmp13 = icmp slt i32 %22, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  %23 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.16:                                        ; preds = %if.end.10
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %25 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !21
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack17 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 25
  %stack18 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack17, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack18, i32 0, i32 2
  %27 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -3
  %cmp19 = icmp ugt %struct.ref_s* %25, %add.ptr
  br i1 %cmp19, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.16
  %28 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 25
  %stack23 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack22, i32 0, i32 0
  %call24 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack23, i32 3) #3
  store i32 %call24, i32* %es_code_, align 4, !tbaa !20
  %30 = load i32, i32* %es_code_, align 4, !tbaa !20
  %cmp25 = icmp slt i32 %30, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.21
  %31 = load i32, i32* %es_code_, align 4, !tbaa !20
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27
  %32 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.117 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont, %if.end.16
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gs_state_s* %35 to i8*
  %call30 = call i32 @cie_cache_push_finish(%struct.gs_context_state_s* %33, i32 (%struct.gs_context_state_s*)* @cie_tpqr_finish, %struct.gs_ref_memory_s* %34, i8* %36) #3
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 25
  %stack32 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack31, i32 0, i32 0
  %p33 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack32, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p33, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p33, align 8, !tbaa !21
  %39 = bitcast %struct.ref_s* %incdec.ptr to i8*
  %40 = bitcast %struct.ref_s* %pqr_procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false), !tbaa.struct !23
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pqr_procs, i32 0, i32 0
  %type_attrs35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 0
  %41 = load i16, i16* %type_attrs35, align 2, !tbaa !28
  %conv36 = zext i16 %41 to i32
  %and = and i32 %conv36, 12
  store i32 %and, i32* %space, align 4, !tbaa !20
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc.102, %if.end.29
  %42 = load i32, i32* %i, align 4, !tbaa !20
  %cmp37 = icmp slt i32 %42, 3
  br i1 %cmp37, label %for.body, label %for.end.104

for.body:                                         ; preds = %for.cond
  %43 = bitcast %struct.ref_s** %p39 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pqr_procs, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %44 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 3
  %45 = load i32, i32* %i, align 4, !tbaa !20
  %mul = mul nsw i32 28, %45
  %idx.ext = sext i32 %mul to i64
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr40, i64 %idx.ext
  store %struct.ref_s* %add.ptr41, %struct.ref_s** %p39, align 8, !tbaa !1
  %46 = bitcast float** %ppt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %points_sd = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %47, i32 0, i32 9
  %48 = bitcast %struct.gs_cie_wbsd_s* %points_sd to float*
  store float* %48, float** %ppt, align 8, !tbaa !1
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pqr_procs, i32 0, i32 1
  %refs43 = bitcast %union.v* %value42 to %struct.ref_s**
  %51 = load %struct.ref_s*, %struct.ref_s** %refs43, align 8, !tbaa !1
  %52 = load i32, i32* %i, align 4, !tbaa !20
  %idx.ext44 = sext i32 %52 to i64
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 %idx.ext44
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr45, i32 0, i32 1
  %refs47 = bitcast %union.v* %value46 to %struct.ref_s**
  store %struct.ref_s* %50, %struct.ref_s** %refs47, align 8, !tbaa !1
  %53 = load i32, i32* %space, align 4, !tbaa !20
  %or = or i32 224, %53
  %add = add i32 1024, %or
  %conv48 = trunc i32 %add to i16
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pqr_procs, i32 0, i32 1
  %refs50 = bitcast %union.v* %value49 to %struct.ref_s**
  %54 = load %struct.ref_s*, %struct.ref_s** %refs50, align 8, !tbaa !1
  %55 = load i32, i32* %i, align 4, !tbaa !20
  %idx.ext51 = sext i32 %55 to i64
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 %idx.ext51
  %tas53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr52, i32 0, i32 0
  %type_attrs54 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas53, i32 0, i32 0
  store i16 %conv48, i16* %type_attrs54, align 2, !tbaa !28
  %value55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pqr_procs, i32 0, i32 1
  %refs56 = bitcast %union.v* %value55 to %struct.ref_s**
  %56 = load %struct.ref_s*, %struct.ref_s** %refs56, align 8, !tbaa !1
  %57 = load i32, i32* %i, align 4, !tbaa !20
  %idx.ext57 = sext i32 %57 to i64
  %add.ptr58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 %idx.ext57
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr58, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 2
  store i32 4, i32* %rsize, align 4, !tbaa !29
  %58 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 4
  %59 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 1
  %refs62 = bitcast %union.v* %value61 to %struct.ref_s**
  store %struct.ref_s* %add.ptr60, %struct.ref_s** %refs62, align 8, !tbaa !1
  %60 = load i32, i32* %space, align 4, !tbaa !20
  %or63 = or i32 96, %60
  %add64 = add i32 1024, %or63
  %conv65 = trunc i32 %add64 to i16
  %61 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %tas66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %type_attrs67 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas66, i32 0, i32 0
  store i16 %conv65, i16* %type_attrs67, align 2, !tbaa !28
  %62 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %tas68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %rsize69 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas68, i32 0, i32 2
  store i32 24, i32* %rsize69, align 4, !tbaa !29
  %63 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 1
  %64 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %64 to i64
  %65 = load %struct.ref_cie_render_procs_s*, %struct.ref_cie_render_procs_s** %pcrprocs.addr, align 8, !tbaa !1
  %TransformPQR71 = getelementptr inbounds %struct.ref_cie_render_procs_s, %struct.ref_cie_render_procs_s* %65, i32 0, i32 0
  %value72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %TransformPQR71, i32 0, i32 1
  %refs73 = bitcast %union.v* %value72 to %struct.ref_s**
  %66 = load %struct.ref_s*, %struct.ref_s** %refs73, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 %idxprom
  %67 = bitcast %struct.ref_s* %arrayidx70 to i8*
  %68 = bitcast %struct.ref_s* %arrayidx74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 16, i32 8, i1 false), !tbaa.struct !23
  %69 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %add.ptr75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 2
  %value76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr75, i32 0, i32 1
  %opproc = bitcast %union.v* %value76 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @cie_exec_tpqr, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %70 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %add.ptr77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 2
  %tas78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr77, i32 0, i32 0
  %type_attrs79 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas78, i32 0, i32 0
  store i16 3968, i16* %type_attrs79, align 2, !tbaa !28
  %71 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %add.ptr80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 2
  %tas81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr80, i32 0, i32 0
  %rsize82 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas81, i32 0, i32 2
  store i32 0, i32* %rsize82, align 4, !tbaa !29
  %72 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %add.ptr83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 3
  %value84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr83, i32 0, i32 1
  %opproc85 = bitcast %union.v* %value84 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @cie_post_exec_tpqr, i32 (%struct.gs_context_state_s*)** %opproc85, align 8, !tbaa !1
  %73 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %add.ptr86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 3
  %tas87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr86, i32 0, i32 0
  %type_attrs88 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas87, i32 0, i32 0
  store i16 3968, i16* %type_attrs88, align 2, !tbaa !28
  %74 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %add.ptr89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 3
  %tas90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr89, i32 0, i32 0
  %rsize91 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas90, i32 0, i32 2
  store i32 0, i32* %rsize91, align 4, !tbaa !29
  store i32 0, i32* %j, align 4, !tbaa !20
  %75 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 4
  store %struct.ref_s* %add.ptr92, %struct.ref_s** %p39, align 8, !tbaa !1
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc, %for.body
  %76 = load i32, i32* %j, align 4, !tbaa !20
  %cmp94 = icmp slt i32 %76, 24
  br i1 %cmp94, label %for.body.96, label %for.end

for.body.96:                                      ; preds = %for.cond.93
  %77 = load float*, float** %ppt, align 8, !tbaa !1
  %78 = load float, float* %77, align 4, !tbaa !26
  %79 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %value97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 0, i32 1
  %realval = bitcast %union.v* %value97 to float*
  store float %78, float* %realval, align 4, !tbaa !26
  %80 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %tas98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 0
  %type_attrs99 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas98, i32 0, i32 0
  store i16 4096, i16* %type_attrs99, align 2, !tbaa !28
  br label %for.inc

for.inc:                                          ; preds = %for.body.96
  %81 = load i32, i32* %j, align 4, !tbaa !20
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %j, align 4, !tbaa !20
  %82 = load %struct.ref_s*, %struct.ref_s** %p39, align 8, !tbaa !1
  %incdec.ptr100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 1
  store %struct.ref_s* %incdec.ptr100, %struct.ref_s** %p39, align 8, !tbaa !1
  %83 = load float*, float** %ppt, align 8, !tbaa !1
  %incdec.ptr101 = getelementptr inbounds float, float* %83, i32 1
  store float* %incdec.ptr101, float** %ppt, align 8, !tbaa !1
  br label %for.cond.93

for.end:                                          ; preds = %for.cond.93
  %84 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast float** %ppt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.ref_s** %p39 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end
  %87 = load i32, i32* %i, align 4, !tbaa !20
  %inc103 = add nsw i32 %87, 1
  store i32 %inc103, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  %88 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %89 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %RangePQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %89, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangePQR, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i32 0
  %value105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %pqr_procs, i32 0, i32 1
  %const_refs = bitcast %union.v* %value105 to %struct.ref_s**
  %90 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  %91 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %TransformPQR106 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %91, i32 0, i32 11
  %caches = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %TransformPQR106, i32 0, i32 0
  %arraydecay107 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches, i32 0, i32 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arraydecay107, i32 0, i32 0
  %92 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %TransformPQR108 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %92, i32 0, i32 11
  %caches109 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %TransformPQR108, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches109, i32 0, i64 1
  %floats111 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx110, i32 0, i32 0
  %93 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %TransformPQR112 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %93, i32 0, i32 11
  %caches113 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %TransformPQR112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches113, i32 0, i64 2
  %floats115 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx114, i32 0, i32 0
  %94 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %pjc, align 8, !tbaa !1
  %95 = bitcast %struct.gx_cie_joint_caches_s* %94 to i8*
  %96 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call116 = call i32 @cie_prepare_caches_4(%struct.gs_context_state_s* %88, %struct.gs_range_s* %arraydecay, %struct.ref_s* %90, %struct.cie_cache_floats_s* %floats, %struct.cie_cache_floats_s* %floats111, %struct.cie_cache_floats_s* %floats115, %struct.cie_cache_floats_s* null, i8* %95, %struct.gs_ref_memory_s* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #3
  store i32 %call116, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

cleanup.117:                                      ; preds = %for.end.104, %cleanup, %if.then.15, %if.then.8, %if.then.4, %if.then
  %97 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast %struct.ref_s* %pqr_procs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %100) #1
  %101 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct.gx_cie_joint_caches_s** %pjc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = load i32, i32* %retval
  ret i32 %104
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gs_cie_render_s* @gs_currentcolorrendering(%struct.gs_state_s*) #2

declare %struct.gx_cie_joint_caches_s* @gx_unshare_cie_caches(%struct.gs_state_s*) #2

declare %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s*) #2

declare i32 @gs_cie_cs_complete(%struct.gs_state_s*, i32) #2

declare i32 @gs_cie_compute_points_sd(%struct.gx_cie_joint_caches_s*, %struct.gs_cie_common_s*, %struct.gs_cie_render_s*) #2

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @cie_cache_push_finish(%struct.gs_context_state_s*, i32 (%struct.gs_context_state_s*)*, %struct.gs_ref_memory_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cie_tpqr_finish(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %pcrd = alloca %struct.gs_cie_render_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !30
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_state_s*
  store %struct.gs_state_s* %6, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %7 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call = call %struct.gs_cie_render_s* @gs_currentcolorrendering(%struct.gs_state_s* %8) #3
  store %struct.gs_cie_render_s* %call, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  call void @gs_free_ref_array(%struct.gs_ref_memory_s* %11, %struct.ref_s* %add.ptr, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #3
  %13 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %13, i32 0, i32 7
  %14 = bitcast %struct.gs_cie_transform_proc3_s* %TransformPQR to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast (%struct.gs_cie_transform_proc3_s* @TransformPQR_from_cache to i8*), i64 40, i32 8, i1 false), !tbaa.struct !31
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !1
  %call1 = call i32 @gs_cie_cs_complete(%struct.gs_state_s* %15, i32 0) #3
  store i32 %call1, i32* %code, align 4, !tbaa !20
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %17 = load %struct.ref_s*, %struct.ref_s** %p4, align 8, !tbaa !30
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -2
  store %struct.ref_s* %add.ptr5, %struct.ref_s** %p4, align 8, !tbaa !30
  %18 = load i32, i32* %code, align 4, !tbaa !20
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @cie_exec_tpqr(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ppt = alloca %struct.ref_s*, align 8
  %space = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !30
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %ppt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %5 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  store %struct.ref_s* %5, %struct.ref_s** %ppt, align 8, !tbaa !1
  %6 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 12
  store i32 %and, i32* %space, align 4, !tbaa !20
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 1
  %12 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !32
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 2
  %cmp = icmp ult %struct.ref_s* %10, %add.ptr3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 4
  store %struct.ref_s* %add.ptr5, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 2
  %15 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp8 = icmp ugt %struct.ref_s* %add.ptr5, %15
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack12 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack11, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 7
  store i32 4, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 26
  %stack14 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack14, i32 0, i32 0
  store %struct.ref_s* %17, %struct.ref_s** %p15, align 8, !tbaa !30
  br label %if.end.16

if.end.16:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.16
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -4
  %21 = bitcast %struct.ref_s* %19 to i8*
  %22 = bitcast %struct.ref_s* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false), !tbaa.struct !23
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -6
  %25 = bitcast %struct.ref_s* %arrayidx18 to i8*
  %26 = bitcast %struct.ref_s* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !tbaa.struct !23
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %27 = load i32, i32* %i, align 4, !tbaa !20
  %cmp20 = icmp slt i32 %27, 4
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct.ref_s*, %struct.ref_s** %ppt, align 8, !tbaa !1
  %29 = load i32, i32* %i, align 4, !tbaa !20
  %mul = mul nsw i32 %29, 6
  %idx.ext = sext i32 %mul to i64
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 %idx.ext
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -5
  %31 = load i32, i32* %i, align 4, !tbaa !20
  %idx.ext24 = sext i32 %31 to i64
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr23, i64 %idx.ext24
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr25, i32 0, i32 1
  %const_refs27 = bitcast %union.v* %value26 to %struct.ref_s**
  store %struct.ref_s* %add.ptr22, %struct.ref_s** %const_refs27, align 8, !tbaa !1
  %32 = load i32, i32* %space, align 4, !tbaa !20
  %or = or i32 96, %32
  %add = add i32 1024, %or
  %conv28 = trunc i32 %add to i16
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -5
  %34 = load i32, i32* %i, align 4, !tbaa !20
  %idx.ext30 = sext i32 %34 to i64
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr29, i64 %idx.ext30
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  store i16 %conv28, i16* %type_attrs33, align 2, !tbaa !28
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -5
  %36 = load i32, i32* %i, align 4, !tbaa !20
  %idx.ext35 = sext i32 %36 to i64
  %add.ptr36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i64 %idx.ext35
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr36, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 2
  store i32 6, i32* %rsize, align 4, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -6
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr38, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  store i16 3072, i16* %type_attrs40, align 2, !tbaa !28
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zexec(%struct.gs_context_state_s* %39) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.10, %if.then
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.ref_s** %ppt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @cie_post_exec_tpqr(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %count = alloca i32, align 4
  %vref = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !30
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %call = call i32 @ref_stack_counttomark(%struct.ref_stack_s* %stack2) #3
  store i32 %call, i32* %count, align 4, !tbaa !20
  %5 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = load i32, i32* %count, align 4, !tbaa !20
  %cmp = icmp ult i32 %6, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = bitcast %struct.ref_s* %vref to i8*
  %9 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false), !tbaa.struct !23
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %11 = load i32, i32* %count, align 4, !tbaa !20
  %sub = sub i32 %11, 1
  call void @ref_stack_pop(%struct.ref_stack_s* %stack4, i32 %sub) #3
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %p7, align 8, !tbaa !30
  %14 = bitcast %struct.ref_s* %13 to i8*
  %15 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.ref_s* %vref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %16) #1
  %17 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @cie_prepare_caches_4(%struct.gs_context_state_s*, %struct.gs_range_s*, %struct.ref_s*, %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s*, %struct.cie_cache_floats_s*, i8*, %struct.gs_ref_memory_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentcolorrendering(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !30
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !33
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !34
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !35
  %call = call i8* @gs_state_client_data(%struct.gs_state_s* %11) #3
  %12 = bitcast i8* %call to %struct.int_gstate_s*
  %colorrendering = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %12, i32 0, i32 7
  %dict = getelementptr inbounds %struct.anon.14, %struct.anon.14* %colorrendering, i32 0, i32 0
  %13 = bitcast %struct.ref_s* %9 to i8*
  %14 = bitcast %struct.ref_s* %dict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false), !tbaa.struct !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcolorrendering1(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  %procs = alloca %struct.ref_cie_render_procs_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !30
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !21
  store %struct.ref_s* %5, %struct.ref_s** %ep, align 8, !tbaa !1
  %6 = bitcast %struct.ref_cie_render_procs_s* %procs to i8*
  call void @llvm.lifetime.start(i64 64, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx3, align 1, !tbaa !5
  %conv = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx5) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %13 = load i16, i16* %type_attrs7, align 2, !tbaa !28
  %conv8 = zext i16 %13 to i32
  %and = and i32 %conv8, 15872
  %cmp9 = icmp eq i32 %and, 2048
  br i1 %cmp9, label %land.lhs.true, label %if.then.17

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %16 = bitcast %struct.gs_ref_memory_s* %15 to %struct.gs_memory_s*
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 15
  %17 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !36
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current13 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory12, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current13, align 8, !tbaa !6
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %22 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %23 = bitcast %struct.obj_header_s* %22 to i8*
  %call14 = call %struct.gs_memory_struct_type_s* %17(%struct.gs_memory_s* %20, i8* %23) #3
  %cmp15 = icmp eq %struct.gs_memory_struct_type_s* %call14, @st_cie_render1
  br i1 %cmp15, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true, %if.end
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call18 = call i32 @check_type_failed(%struct.ref_s* %24) #3
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %land.lhs.true
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 1
  %current21 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory20, i32 0, i32 0
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current21, align 8, !tbaa !6
  %27 = bitcast %struct.gs_ref_memory_s* %26 to %struct.gs_memory_s*
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %call22 = call i32 @zcrd1_proc_params(%struct.gs_memory_s* %27, %struct.ref_s* %add.ptr, %struct.ref_cie_render_procs_s* %procs) #3
  store i32 %call22, i32* %code, align 4, !tbaa !20
  %29 = load i32, i32* %code, align 4, !tbaa !20
  %cmp23 = icmp slt i32 %29, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.19
  %30 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.19
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 0
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !35
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %pstruct28 = bitcast %union.v* %value27 to %struct.obj_header_s**
  %34 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct28, align 8, !tbaa !1
  %35 = bitcast %struct.obj_header_s* %34 to %struct.gs_cie_render_s*
  %call29 = call i32 @gs_setcolorrendering(%struct.gs_state_s* %32, %struct.gs_cie_render_s* %35) #3
  store i32 %call29, i32* %code, align 4, !tbaa !20
  %36 = load i32, i32* %code, align 4, !tbaa !20
  %cmp30 = icmp slt i32 %36, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.26
  %37 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.26
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 0
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs34, align 8, !tbaa !35
  %call35 = call %struct.gs_cie_common_s* @gs_cie_cs_common(%struct.gs_state_s* %39) #3
  %cmp36 = icmp ne %struct.gs_cie_common_s* %call35, null
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.46

land.lhs.true.38:                                 ; preds = %if.end.33
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 0
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs39, align 8, !tbaa !35
  %call40 = call %struct.gs_cie_common_s* @gs_cie_cs_common(%struct.gs_state_s* %42) #3
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs41 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 0
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs41, align 8, !tbaa !35
  %call42 = call i32 @cie_cache_joint(%struct.gs_context_state_s* %40, %struct.ref_cie_render_procs_s* %procs, %struct.gs_cie_common_s* %call40, %struct.gs_state_s* %44) #3
  store i32 %call42, i32* %code, align 4, !tbaa !20
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.38
  %45 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %land.lhs.true.38, %if.end.33
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 0
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs47, align 8, !tbaa !35
  %call48 = call i8* @gs_state_client_data(%struct.gs_state_s* %47) #3
  %48 = bitcast i8* %call48 to %struct.int_gstate_s*
  %colorrendering = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %48, i32 0, i32 7
  %dict = getelementptr inbounds %struct.anon.14, %struct.anon.14* %colorrendering, i32 0, i32 0
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -1
  %50 = bitcast %struct.ref_s* %dict to i8*
  %51 = bitcast %struct.ref_s* %arrayidx49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 16, i32 8, i1 false), !tbaa.struct !23
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 0
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs50, align 8, !tbaa !35
  %call51 = call i8* @gs_state_client_data(%struct.gs_state_s* %53) #3
  %54 = bitcast i8* %call51 to %struct.int_gstate_s*
  %colorrendering52 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %54, i32 0, i32 7
  %procs53 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %colorrendering52, i32 0, i32 1
  %55 = bitcast %struct.ref_cie_render_procs_s* %procs53 to i8*
  %56 = bitcast %struct.ref_cie_render_procs_s* %procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 64, i32 8, i1 false), !tbaa.struct !39
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack54 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 26
  %stack55 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack54, i32 0, i32 0
  %p56 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack55, i32 0, i32 0
  %58 = load %struct.ref_s*, %struct.ref_s** %p56, align 8, !tbaa !30
  %add.ptr57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -2
  store %struct.ref_s* %add.ptr57, %struct.ref_s** %p56, align 8, !tbaa !30
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack58 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 25
  %stack59 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack58, i32 0, i32 0
  %p60 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack59, i32 0, i32 0
  %60 = load %struct.ref_s*, %struct.ref_s** %p60, align 8, !tbaa !21
  %61 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %cmp61 = icmp eq %struct.ref_s* %60, %61
  %cond = select i1 %cmp61, i32 0, i32 5
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.45, %if.then.32, %if.then.25, %if.then.17, %if.then
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast %struct.ref_cie_render_procs_s* %procs to i8*
  call void @llvm.lifetime.end(i64 64, i8* %63) #1
  %64 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetdevicecolorrendering1(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %procs = alloca %struct.ref_cie_render_procs_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !30
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.ref_cie_render_procs_s* %procs to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx1, align 1, !tbaa !5
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx3) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %10 = load i16, i16* %type_attrs5, align 2, !tbaa !28
  %conv6 = zext i16 %10 to i32
  %and = and i32 %conv6, 15872
  %cmp7 = icmp eq i32 %and, 2048
  br i1 %cmp7, label %land.lhs.true, label %if.then.15

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 15
  %14 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !36
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current11 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory10, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current11, align 8, !tbaa !6
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %19 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %20 = bitcast %struct.obj_header_s* %19 to i8*
  %call12 = call %struct.gs_memory_struct_type_s* %14(%struct.gs_memory_s* %17, i8* %20) #3
  %cmp13 = icmp eq %struct.gs_memory_struct_type_s* %call12, @st_cie_render1
  br i1 %cmp13, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true, %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call16 = call i32 @check_type_failed(%struct.ref_s* %21) #3
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %land.lhs.true
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 0
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !35
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %pstruct19 = bitcast %union.v* %value18 to %struct.obj_header_s**
  %25 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct19, align 8, !tbaa !1
  %26 = bitcast %struct.obj_header_s* %25 to %struct.gs_cie_render_s*
  %call20 = call i32 @gs_setcolorrendering(%struct.gs_state_s* %23, %struct.gs_cie_render_s* %26) #3
  store i32 %call20, i32* %code, align 4, !tbaa !20
  %27 = load i32, i32* %code, align 4, !tbaa !20
  %cmp21 = icmp slt i32 %27, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.17
  %28 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.17
  %29 = bitcast %struct.ref_cie_render_procs_s* %procs to %struct.ref_s*
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory25, i32 0, i32 5
  %31 = load i32, i32* %new_mask, align 4, !tbaa !40
  call void @refset_null_new(%struct.ref_s* %29, i32 4, i32 %31) #3
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 0
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs26, align 8, !tbaa !35
  %call27 = call %struct.gs_cie_common_s* @gs_cie_cs_common(%struct.gs_state_s* %33) #3
  %cmp28 = icmp ne %struct.gs_cie_common_s* %call27, null
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.38

land.lhs.true.30:                                 ; preds = %if.end.24
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 0
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs31, align 8, !tbaa !35
  %call32 = call %struct.gs_cie_common_s* @gs_cie_cs_common(%struct.gs_state_s* %36) #3
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 0
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs33, align 8, !tbaa !35
  %call34 = call i32 @cie_cache_joint(%struct.gs_context_state_s* %34, %struct.ref_cie_render_procs_s* %procs, %struct.gs_cie_common_s* %call32, %struct.gs_state_s* %38) #3
  store i32 %call34, i32* %code, align 4, !tbaa !20
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true.30
  %39 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %land.lhs.true.30, %if.end.24
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 0
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs39, align 8, !tbaa !35
  %call40 = call i8* @gs_state_client_data(%struct.gs_state_s* %41) #3
  %42 = bitcast i8* %call40 to %struct.int_gstate_s*
  %colorrendering = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %42, i32 0, i32 7
  %dict = getelementptr inbounds %struct.anon.14, %struct.anon.14* %colorrendering, i32 0, i32 0
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %44 = bitcast %struct.ref_s* %dict to i8*
  %45 = bitcast %struct.ref_s* %arrayidx41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false), !tbaa.struct !23
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 0
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs42, align 8, !tbaa !35
  %call43 = call i8* @gs_state_client_data(%struct.gs_state_s* %47) #3
  %48 = bitcast i8* %call43 to %struct.int_gstate_s*
  %colorrendering44 = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %48, i32 0, i32 7
  %procs45 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %colorrendering44, i32 0, i32 1
  %49 = bitcast %struct.ref_cie_render_procs_s* %procs45 to %struct.ref_s*
  %50 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %50, i32 0, i32 1
  %new_mask47 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory46, i32 0, i32 5
  %51 = load i32, i32* %new_mask47, align 4, !tbaa !40
  call void @refset_null_new(%struct.ref_s* %49, i32 4, i32 %51) #3
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %52, i32 0, i32 26
  %stack49 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %53 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !30
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p50, align 8, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.37, %if.then.23, %if.then.15, %if.then
  %54 = bitcast %struct.ref_cie_render_procs_s* %procs to i8*
  call void @llvm.lifetime.end(i64 64, i8* %54) #1
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildcolorrendering1(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %ep = alloca %struct.ref_s*, align 8
  %pcrd = alloca %struct.gs_cie_render_s*, align 8
  %procs = alloca %struct.ref_cie_render_procs_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !30
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !35
  %call = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %5) #3
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !21
  store %struct.ref_s* %9, %struct.ref_s** %ep, align 8, !tbaa !1
  %10 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.ref_cie_render_procs_s* %procs to i8*
  call void @llvm.lifetime.start(i64 64, i8* %11) #1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 544
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %15 = bitcast i16* %type_attrs5 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv6 = zext i8 %16 to i32
  %cmp7 = icmp eq i32 %conv6, 2
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call9 = call i32 @check_type_failed(%struct.ref_s* %17) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call9, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %19 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %19, i32 0, i32 0
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %20 = load i16, i16* %type_attrs11, align 2, !tbaa !28
  %conv12 = zext i16 %20 to i32
  %and13 = and i32 %conv12, 32
  %tobool = icmp ne i32 %and13, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call16 = call i32 @gs_cie_render1_build(%struct.gs_cie_render_s** %pcrd, %struct.gs_memory_s* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0)) #3
  store i32 %call16, i32* %code, align 4, !tbaa !20
  %22 = load i32, i32* %code, align 4, !tbaa !20
  %cmp17 = icmp slt i32 %22, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  %23 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %do.end
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %25 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call21 = call i32 @zcrd1_params(%struct.ref_s* %24, %struct.gs_cie_render_s* %25, %struct.ref_cie_render_procs_s* %procs, %struct.gs_memory_s* %26) #3
  store i32 %call21, i32* %code, align 4, !tbaa !20
  %27 = load i32, i32* %code, align 4, !tbaa !20
  %cmp22 = icmp slt i32 %27, 0
  br i1 %cmp22, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %if.end.20
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.body.25
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %28 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %28, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !41
  %30 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc29 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %30, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc29, i32 0, i32 1
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !56
  %32 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %33 = bitcast %struct.gs_cie_render_s* %32 to i8*
  call void %29(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0)) #3
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.end.28
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %34 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack33 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack32, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack33, i32 0, i32 0
  store %struct.ref_s* %34, %struct.ref_s** %p34, align 8, !tbaa !21
  %36 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.20
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 0
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs36, align 8, !tbaa !35
  %call37 = call i8* @gs_state_client_data(%struct.gs_state_s* %38) #3
  %39 = bitcast i8* %call37 to %struct.int_gstate_s*
  %colorrendering = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %39, i32 0, i32 7
  %dict = getelementptr inbounds %struct.anon.14, %struct.anon.14* %colorrendering, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %41 = bitcast %struct.ref_s* %dict to i8*
  %42 = bitcast %struct.ref_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false), !tbaa.struct !23
  %43 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %44 = bitcast %struct.gs_cie_render_s* %43 to %struct.obj_header_s*
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 1
  %pstruct = bitcast %union.v* %value38 to %struct.obj_header_s**
  store %struct.obj_header_s* %44, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory39, i32 0, i32 2
  %47 = load i32, i32* %current_space, align 4, !tbaa !57
  %or = or i32 96, %47
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory40, i32 0, i32 5
  %49 = load i32, i32* %new_mask, align 4, !tbaa !40
  %or41 = or i32 %or, %49
  %add = add i32 2048, %or41
  %conv42 = trunc i32 %add to i16
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %type_attrs44 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas43, i32 0, i32 0
  store i16 %conv42, i16* %type_attrs44, align 2, !tbaa !28
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 25
  %stack46 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %52 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !21
  %53 = load %struct.ref_s*, %struct.ref_s** %ep, align 8, !tbaa !1
  %cmp48 = icmp eq %struct.ref_s* %52, %53
  %cond50 = select i1 %cmp48, i32 0, i32 5
  store i32 %cond50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %do.end.31, %if.then.19, %if.then.14, %cond.end
  %54 = bitcast %struct.ref_cie_render_procs_s* %procs to i8*
  call void @llvm.lifetime.end(i64 64, i8* %54) #1
  %55 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct.ref_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuilddevicecolorrendering1(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %list = alloca %struct.dict_param_list_s, align 8
  %pcrd = alloca %struct.gs_cie_render_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !30
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !35
  %call = call %struct.gs_memory_s* @gs_state_memory(%struct.gs_state_s* %5) #3
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 104, i8* %6) #1
  %7 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct.gs_cie_render_s* null, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @check_type_failed(%struct.ref_s* %12) #3
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %call3 = call i32 @dict_param_list_read(%struct.dict_param_list_s* %list, %struct.ref_s* %13, %struct.ref_s* null, i32 0, %struct.gs_ref_memory_s* %15) #3
  store i32 %call3, i32* %code, align 4, !tbaa !20
  %16 = load i32, i32* %code, align 4, !tbaa !20
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call8 = call i32 @gs_cie_render1_build(%struct.gs_cie_render_s** %pcrd, %struct.gs_memory_s* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0)) #3
  store i32 %call8, i32* %code, align 4, !tbaa !20
  %19 = load i32, i32* %code, align 4, !tbaa !20
  %cmp9 = icmp sge i32 %19, 0
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end.7
  %20 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %21 = bitcast %struct.dict_param_list_s* %list to %struct.gs_param_list_s*
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs12 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 0
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs12, align 8, !tbaa !35
  %call13 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %23) #3
  %call14 = call i32 @param_get_cie_render1(%struct.gs_cie_render_s* %20, %struct.gs_param_list_s* %21, %struct.gx_device_s* %call13) #3
  store i32 %call14, i32* %code, align 4, !tbaa !20
  %24 = load i32, i32* %code, align 4, !tbaa !20
  %cmp15 = icmp sge i32 %24, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.7
  %memory20 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !58
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !60
  %memory21 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !58
  %results = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %list, i32 0, i32 6
  %28 = load i32*, i32** %results, align 8, !tbaa !61
  %29 = bitcast i32* %28 to i8*
  call void %26(%struct.gs_memory_s* %27, i8* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0)) #3
  %30 = load i32, i32* %code, align 4, !tbaa !20
  %cmp22 = icmp slt i32 %30, 0
  br i1 %cmp22, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.19
  br label %do.body

do.body:                                          ; preds = %if.then.24
  br label %do.body.25

do.body.25:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.25
  br label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %31, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 2
  %32 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !41
  %33 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc26 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %33, i32 0, i32 1
  %memory27 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc26, i32 0, i32 1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !56
  %35 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %36 = bitcast %struct.gs_cie_render_s* %35 to i8*
  call void %32(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0)) #3
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.end
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  %37 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.19
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 0
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs31, align 8, !tbaa !35
  %call32 = call i8* @gs_state_client_data(%struct.gs_state_s* %39) #3
  %40 = bitcast i8* %call32 to %struct.int_gstate_s*
  %colorrendering = getelementptr inbounds %struct.int_gstate_s, %struct.int_gstate_s* %40, i32 0, i32 7
  %dict = getelementptr inbounds %struct.anon.14, %struct.anon.14* %colorrendering, i32 0, i32 0
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %42 = bitcast %struct.ref_s* %dict to i8*
  %43 = bitcast %struct.ref_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false), !tbaa.struct !23
  %44 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %45 = bitcast %struct.gs_cie_render_s* %44 to %struct.obj_header_s*
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  store %struct.obj_header_s* %45, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory33, i32 0, i32 2
  %48 = load i32, i32* %current_space, align 4, !tbaa !57
  %or = or i32 96, %48
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory34, i32 0, i32 5
  %50 = load i32, i32* %new_mask, align 4, !tbaa !40
  %or35 = or i32 %or, %50
  %add = add i32 2048, %or35
  %conv36 = trunc i32 %add to i16
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 0
  %type_attrs38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 0
  store i16 %conv36, i16* %type_attrs38, align 2, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %do.end.29, %if.then.6, %if.then
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.dict_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 104, i8* %54) #1
  %55 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @ztpqr_scale_wb0(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @ztpqr_scale_wb_common(%struct.gs_context_state_s* %0, i32 3) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ztpqr_scale_wb1(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @ztpqr_scale_wb_common(%struct.gs_context_state_s* %0, i32 4) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ztpqr_scale_wb2(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @ztpqr_scale_wb_common(%struct.gs_context_state_s* %0, i32 5) #3
  ret i32 %call
}

declare i32 @zexec(%struct.gs_context_state_s*) #2

declare i32 @ref_stack_counttomark(%struct.ref_stack_s*) #2

declare void @ref_stack_pop(%struct.ref_stack_s*, i32) #2

declare void @gs_free_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i8*) #2

declare i8* @gs_state_client_data(%struct.gs_state_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zcrd1_proc_params(%struct.gs_memory_s* %mem, %struct.ref_s* %op, %struct.ref_cie_render_procs_s* %pcprocs) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pcprocs.addr = alloca %struct.ref_cie_render_procs_s*, align 8
  %code = alloca i32, align 4
  %pRT = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %prte = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.ref_cie_render_procs_s* %pcprocs, %struct.ref_cie_render_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pRT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %4 = load %struct.ref_cie_render_procs_s*, %struct.ref_cie_render_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %EncodeLMN = getelementptr inbounds %struct.ref_cie_render_procs_s, %struct.ref_cie_render_procs_s* %4, i32 0, i32 1
  %call = call i32 @dict_proc3_param(%struct.gs_memory_s* %2, %struct.ref_s* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s* %EncodeLMN) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %5 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %9 = load %struct.ref_cie_render_procs_s*, %struct.ref_cie_render_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %EncodeABC = getelementptr inbounds %struct.ref_cie_render_procs_s, %struct.ref_cie_render_procs_s* %9, i32 0, i32 2
  %call1 = call i32 @dict_proc3_param(%struct.gs_memory_s* %7, %struct.ref_s* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct.ref_s* %EncodeABC) #3
  store i32 %call1, i32* %code, align 4, !tbaa !20
  %10 = load i32, i32* %code, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %14 = load %struct.ref_cie_render_procs_s*, %struct.ref_cie_render_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.ref_cie_render_procs_s, %struct.ref_cie_render_procs_s* %14, i32 0, i32 0
  %call5 = call i32 @dict_proc3_param(%struct.gs_memory_s* %12, %struct.ref_s* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), %struct.ref_s* %TransformPQR) #3
  store i32 %call5, i32* %code, align 4, !tbaa !20
  %15 = load i32, i32* %code, align 4, !tbaa !20
  %cmp6 = icmp slt i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %16 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

if.end.8:                                         ; preds = %if.end.4
  %17 = load i32, i32* %code, align 4, !tbaa !20
  %cmp9 = icmp eq i32 %17, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

if.end.11:                                        ; preds = %if.end.8
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call12 = call i32 @dict_find_string(%struct.ref_s* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %pRT) #3
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  %19 = bitcast %struct.ref_s** %prte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.ref_s*, %struct.ref_s** %pRT, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %23 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %23 to i32
  %and = and i32 %conv, 16160
  %cmp15 = icmp eq i32 %and, 1056
  br i1 %cmp15, label %if.end.24, label %if.then.17

if.then.17:                                       ; preds = %if.then.14
  %24 = load %struct.ref_s*, %struct.ref_s** %pRT, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %25 = bitcast i16* %type_attrs19 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv20 = zext i8 %26 to i32
  %cmp21 = icmp eq i32 %conv20, 4
  br i1 %cmp21, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.17
  %27 = load %struct.ref_s*, %struct.ref_s** %pRT, align 8, !tbaa !1
  %call23 = call i32 @check_type_failed(%struct.ref_s* %27) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call23, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.then.14
  %28 = load %struct.ref_s*, %struct.ref_s** %pRT, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 2
  %29 = load i32, i32* %rsize, align 4, !tbaa !29
  store i32 %29, i32* %size, align 4, !tbaa !20
  %30 = load i32, i32* %size, align 4, !tbaa !20
  %cmp26 = icmp slt i32 %30, 5
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  %31 = load %struct.ref_s*, %struct.ref_s** %pRT, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %32 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  store %struct.ref_s* %32, %struct.ref_s** %prte, align 8, !tbaa !1
  store i32 5, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %33 = load i32, i32* %i, align 4, !tbaa !20
  %34 = load i32, i32* %size, align 4, !tbaa !20
  %cmp30 = icmp slt i32 %33, %34
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.ref_s*, %struct.ref_s** %prte, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 %idxprom
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx32, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %37 = load i16, i16* %type_attrs34, align 2, !tbaa !28
  %conv35 = zext i16 %37 to i32
  %and36 = and i32 %conv35, 15552
  %cmp37 = icmp eq i32 %and36, 1216
  br i1 %cmp37, label %if.end.43, label %if.then.39

if.then.39:                                       ; preds = %do.body
  %38 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom40 = sext i32 %38 to i64
  %39 = load %struct.ref_s*, %struct.ref_s** %prte, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 %idxprom40
  %call42 = call i32 @check_proc_failed(%struct.ref_s* %arrayidx41) #3
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.43
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %40 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.ref_s*, %struct.ref_s** %prte, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 5
  %42 = load %struct.ref_cie_render_procs_s*, %struct.ref_cie_render_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %RenderTableT = getelementptr inbounds %struct.ref_cie_render_procs_s, %struct.ref_cie_render_procs_s* %42, i32 0, i32 3
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %RenderTableT, i32 0, i32 1
  %const_refs45 = bitcast %union.v* %value44 to %struct.ref_s**
  store %struct.ref_s* %add.ptr, %struct.ref_s** %const_refs45, align 8, !tbaa !1
  %43 = load %struct.ref_s*, %struct.ref_s** %pRT, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  %44 = load i16, i16* %type_attrs47, align 2, !tbaa !28
  %conv48 = zext i16 %44 to i32
  %and49 = and i32 %conv48, 12
  %or = or i32 96, %and49
  %add = add i32 1024, %or
  %conv50 = trunc i32 %add to i16
  %45 = load %struct.ref_cie_render_procs_s*, %struct.ref_cie_render_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %RenderTableT51 = getelementptr inbounds %struct.ref_cie_render_procs_s, %struct.ref_cie_render_procs_s* %45, i32 0, i32 3
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %RenderTableT51, i32 0, i32 0
  %type_attrs53 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 0
  store i16 %conv50, i16* %type_attrs53, align 2, !tbaa !28
  %46 = load i32, i32* %size, align 4, !tbaa !20
  %sub = sub nsw i32 %46, 5
  %47 = load %struct.ref_cie_render_procs_s*, %struct.ref_cie_render_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %RenderTableT54 = getelementptr inbounds %struct.ref_cie_render_procs_s, %struct.ref_cie_render_procs_s* %47, i32 0, i32 3
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %RenderTableT54, i32 0, i32 0
  %rsize56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 2
  store i32 %sub, i32* %rsize56, align 4, !tbaa !29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.39, %if.then.28, %cond.end
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.ref_s** %prte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.62

if.else:                                          ; preds = %if.end.11
  %51 = load %struct.ref_cie_render_procs_s*, %struct.ref_cie_render_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %RenderTableT59 = getelementptr inbounds %struct.ref_cie_render_procs_s, %struct.ref_cie_render_procs_s* %51, i32 0, i32 3
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %RenderTableT59, i32 0, i32 0
  %type_attrs61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  store i16 3584, i16* %type_attrs61, align 2, !tbaa !28
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

cleanup.63:                                       ; preds = %if.end.62, %cleanup, %if.then.10, %if.then.7, %if.then.3, %if.then
  %52 = bitcast %struct.ref_s** %pRT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i32 @gs_setcolorrendering(%struct.gs_state_s*, %struct.gs_cie_render_s*) #2

declare %struct.gs_cie_common_s* @gs_cie_cs_common(%struct.gs_state_s*) #2

declare i32 @dict_proc3_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, %struct.ref_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @check_proc_failed(%struct.ref_s*) #2

declare void @refset_null_new(%struct.ref_s*, i32, i32) #2

declare i32 @gs_cie_render1_build(%struct.gs_cie_render_s**, %struct.gs_memory_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zcrd1_params(%struct.ref_s* %op, %struct.gs_cie_render_s* %pcrd, %struct.ref_cie_render_procs_s* %pcprocs, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %pcprocs.addr = alloca %struct.ref_cie_render_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %ignore = alloca i32, align 4
  %prtl = alloca %struct.gx_color_lookup_table_s*, align 8
  %pRT = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %prte = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store %struct.ref_cie_render_procs_s* %pcprocs, %struct.ref_cie_render_procs_s** %pcprocs.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gx_color_lookup_table_s** %prtl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %3, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable, i32 0, i32 0
  store %struct.gx_color_lookup_table_s* %lookup, %struct.gx_color_lookup_table_s** %prtl, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %pRT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_int_param(%struct.ref_s* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 1, i32 0, i32* %ignore) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %9 = load %struct.ref_cie_render_procs_s*, %struct.ref_cie_render_procs_s** %pcprocs.addr, align 8, !tbaa !1
  %call1 = call i32 @zcrd1_proc_params(%struct.gs_memory_s* %7, %struct.ref_s* %8, %struct.ref_cie_render_procs_s* %9) #3
  store i32 %call1, i32* %code, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %13 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %13, i32 0, i32 8
  %call5 = call i32 @dict_matrix3_param(%struct.gs_memory_s* %11, %struct.ref_s* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixLMN) #3
  store i32 %call5, i32* %code, align 4, !tbaa !20
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %14 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.8:                                         ; preds = %if.end.4
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %17 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangeLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %17, i32 0, i32 10
  %call9 = call i32 @dict_range3_param(%struct.gs_memory_s* %15, %struct.ref_s* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct.gs_range3_s* %RangeLMN) #3
  store i32 %call9, i32* %code, align 4, !tbaa !20
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %18 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.12:                                        ; preds = %if.end.8
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %21 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %21, i32 0, i32 11
  %call13 = call i32 @dict_matrix3_param(%struct.gs_memory_s* %19, %struct.ref_s* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixABC) #3
  store i32 %call13, i32* %code, align 4, !tbaa !20
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  %22 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.16:                                        ; preds = %if.end.12
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %25 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %25, i32 0, i32 13
  %call17 = call i32 @dict_range3_param(%struct.gs_memory_s* %23, %struct.ref_s* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct.gs_range3_s* %RangeABC) #3
  store i32 %call17, i32* %code, align 4, !tbaa !20
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  %26 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.20:                                        ; preds = %if.end.16
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %29 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %29, i32 0, i32 4
  %call21 = call i32 @cie_points_param(%struct.gs_memory_s* %27, %struct.ref_s* %28, %struct.gs_cie_wb_s* %points) #3
  store i32 %call21, i32* %code, align 4, !tbaa !20
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %30 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.24:                                        ; preds = %if.end.20
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %33 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %33, i32 0, i32 5
  %call25 = call i32 @dict_matrix3_param(%struct.gs_memory_s* %31, %struct.ref_s* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixPQR) #3
  store i32 %call25, i32* %code, align 4, !tbaa !20
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  %34 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.28:                                        ; preds = %if.end.24
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %37 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangePQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %37, i32 0, i32 6
  %call29 = call i32 @dict_range3_param(%struct.gs_memory_s* %35, %struct.ref_s* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), %struct.gs_range3_s* %RangePQR) #3
  store i32 %call29, i32* %code, align 4, !tbaa !20
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  %38 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.32:                                        ; preds = %if.end.28
  %39 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call33 = call i32 @dict_find_string(%struct.ref_s* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %pRT) #3
  %cmp34 = icmp sgt i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.32
  %40 = bitcast %struct.ref_s** %prte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.ref_s*, %struct.ref_s** %pRT, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  %const_refs = bitcast %union.v* %value to %struct.ref_s**
  %42 = load %struct.ref_s*, %struct.ref_s** %const_refs, align 8, !tbaa !1
  store %struct.ref_s* %42, %struct.ref_s** %prte, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then.35
  %43 = load %struct.ref_s*, %struct.ref_s** %prte, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %44 = bitcast i16* %type_attrs to i8*
  %arrayidx36 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx36, align 1, !tbaa !5
  %conv = zext i8 %45 to i32
  %cmp37 = icmp eq i32 %conv, 11
  br i1 %cmp37, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.40
  br label %do.end

do.end:                                           ; preds = %do.cond
  %46 = load %struct.ref_s*, %struct.ref_s** %prte, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 4
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx41, i32 0, i32 1
  %intval = bitcast %union.v* %value42 to i64*
  %47 = load i64, i64* %intval, align 8, !tbaa !25
  %cmp43 = icmp eq i64 %47, 3
  br i1 %cmp43, label %if.end.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %48 = load %struct.ref_s*, %struct.ref_s** %prte, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 4
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx45, i32 0, i32 1
  %intval47 = bitcast %union.v* %value46 to i64*
  %49 = load i64, i64* %intval47, align 8, !tbaa !25
  %cmp48 = icmp eq i64 %49, 4
  br i1 %cmp48, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %lor.lhs.false
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %lor.lhs.false, %do.end
  %50 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %prtl, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %50, i32 0, i32 0
  store i32 3, i32* %n, align 4, !tbaa !62
  %51 = load %struct.ref_s*, %struct.ref_s** %prte, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 4
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx52, i32 0, i32 1
  %intval54 = bitcast %union.v* %value53 to i64*
  %52 = load i64, i64* %intval54, align 8, !tbaa !25
  %conv55 = trunc i64 %52 to i32
  %53 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %prtl, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %53, i32 0, i32 2
  store i32 %conv55, i32* %m, align 4, !tbaa !63
  %54 = load %struct.ref_s*, %struct.ref_s** %pRT, align 8, !tbaa !1
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 2
  %55 = load i32, i32* %rsize, align 4, !tbaa !29
  %56 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %prtl, align 8, !tbaa !1
  %m57 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %56, i32 0, i32 2
  %57 = load i32, i32* %m57, align 4, !tbaa !63
  %add = add nsw i32 %57, 5
  %cmp58 = icmp ne i32 %55, %add
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.51
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.end.51
  %58 = load %struct.ref_s*, %struct.ref_s** %pRT, align 8, !tbaa !1
  %59 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %prtl, align 8, !tbaa !1
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call62 = call i32 @cie_table_param(%struct.ref_s* %58, %struct.gx_color_lookup_table_s* %59, %struct.gs_memory_s* %60) #3
  store i32 %call62, i32* %code, align 4, !tbaa !20
  %61 = load i32, i32* %code, align 4, !tbaa !20
  %cmp63 = icmp slt i32 %61, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.61
  %62 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %62, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.end.61
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.then.65, %if.then.60, %if.then.50, %if.then.39
  %63 = bitcast %struct.ref_s** %prte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.67

if.else:                                          ; preds = %if.end.32
  %64 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %prtl, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %64, i32 0, i32 3
  store %struct.gs_const_string_s* null, %struct.gs_const_string_s** %table, align 8, !tbaa !64
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %cleanup.cont
  %65 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %65, i32 0, i32 9
  %66 = bitcast %struct.gs_cie_render_proc3_s* %EncodeLMN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* bitcast (%struct.gs_cie_render_proc3_s* @Encode_default to i8*), i64 24, i32 8, i1 false), !tbaa.struct !65
  %67 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %67, i32 0, i32 12
  %68 = bitcast %struct.gs_cie_render_proc3_s* %EncodeABC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* bitcast (%struct.gs_cie_render_proc3_s* @Encode_default to i8*), i64 24, i32 8, i1 false), !tbaa.struct !65
  %69 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %69, i32 0, i32 7
  %70 = bitcast %struct.gs_cie_transform_proc3_s* %TransformPQR to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* bitcast (%struct.gs_cie_transform_proc3_s* @TransformPQR_default to i8*), i64 40, i32 8, i1 false), !tbaa.struct !31
  %71 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable68 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %71, i32 0, i32 14
  %T = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable68, i32 0, i32 1
  %72 = bitcast %struct.gs_cie_render_table_procs_s* %T to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* bitcast (%struct.gs_cie_render_table_procs_s* @RenderTableT_default to i8*), i64 32, i32 8, i1 false), !tbaa.struct !66
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

cleanup.69:                                       ; preds = %if.end.67, %cleanup, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %73 = bitcast %struct.ref_s** %pRT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.gx_color_lookup_table_s** %prtl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %ignore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_matrix3_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, %struct.gs_matrix3_s*) #2

declare i32 @dict_range3_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, %struct.gs_range3_s*) #2

declare i32 @cie_points_param(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_cie_wb_s*) #2

declare i32 @cie_table_param(%struct.ref_s*, %struct.gx_color_lookup_table_s*, %struct.gs_memory_s*) #2

declare i32 @dict_param_list_read(%struct.dict_param_list_s*, %struct.ref_s*, %struct.ref_s*, i32, %struct.gs_ref_memory_s*) #2

declare i32 @param_get_cie_render1(%struct.gs_cie_render_s*, %struct.gs_param_list_s*, %struct.gx_device_s*) #2

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ztpqr_scale_wb_common(%struct.gs_context_state_s* %i_ctx_p, i32 %idx) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %idx.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %a = alloca [4 x double], align 16
  %Ps = alloca double, align 8
  %result = alloca double, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tmp = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !20
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !30
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast [4 x double]* %a to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast double* %Ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %8, double* %Ps) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %9 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !20
  %cmp1 = icmp slt i32 %11, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast %struct.ref_s* %tmp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -4
  %17 = load i32, i32* %i, align 4, !tbaa !20
  %idx.ext = sext i32 %17 to i64
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 %idx.ext
  %18 = load i32, i32* %idx.addr, align 4, !tbaa !20
  %conv = sext i32 %18 to i64
  %call3 = call i32 @array_get(%struct.gs_memory_s* %15, %struct.ref_s* %add.ptr2, i64 %conv, %struct.ref_s* %tmp) #3
  store i32 %call3, i32* %code, align 4, !tbaa !20
  %19 = load i32, i32* %code, align 4, !tbaa !20
  %cmp4 = icmp sge i32 %19, 0
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %a, i32 0, i64 %idxprom
  %call7 = call i32 @real_param(%struct.ref_s* %tmp, double* %arrayidx) #3
  store i32 %call7, i32* %code, align 4, !tbaa !20
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %for.body
  %21 = load i32, i32* %code, align 4, !tbaa !20
  %cmp9 = icmp slt i32 %21, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %22 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11
  %23 = bitcast %struct.ref_s* %tmp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx13 = getelementptr inbounds [4 x double], [4 x double]* %a, i32 0, i64 0
  %25 = load double, double* %arrayidx13, align 8, !tbaa !67
  %arrayidx14 = getelementptr inbounds [4 x double], [4 x double]* %a, i32 0, i64 1
  %26 = load double, double* %arrayidx14, align 8, !tbaa !67
  %cmp15 = fcmp oeq double %25, %26
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

if.end.18:                                        ; preds = %for.end
  %arrayidx19 = getelementptr inbounds [4 x double], [4 x double]* %a, i32 0, i64 3
  %27 = load double, double* %arrayidx19, align 8, !tbaa !67
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %a, i32 0, i64 2
  %28 = load double, double* %arrayidx20, align 8, !tbaa !67
  %arrayidx21 = getelementptr inbounds [4 x double], [4 x double]* %a, i32 0, i64 3
  %29 = load double, double* %arrayidx21, align 8, !tbaa !67
  %sub = fsub double %28, %29
  %30 = load double, double* %Ps, align 8, !tbaa !67
  %arrayidx22 = getelementptr inbounds [4 x double], [4 x double]* %a, i32 0, i64 1
  %31 = load double, double* %arrayidx22, align 8, !tbaa !67
  %sub23 = fsub double %30, %31
  %mul = fmul double %sub, %sub23
  %arrayidx24 = getelementptr inbounds [4 x double], [4 x double]* %a, i32 0, i64 0
  %32 = load double, double* %arrayidx24, align 8, !tbaa !67
  %arrayidx25 = getelementptr inbounds [4 x double], [4 x double]* %a, i32 0, i64 1
  %33 = load double, double* %arrayidx25, align 8, !tbaa !67
  %sub26 = fsub double %32, %33
  %div = fdiv double %mul, %sub26
  %add = fadd double %27, %div
  store double %add, double* %result, align 8, !tbaa !67
  %34 = load double, double* %result, align 8, !tbaa !67
  %conv27 = fptrunc double %34 to float
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %conv27, float* %realval, align 4, !tbaa !26
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -4
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr29, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !28
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 26
  %stack31 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack30, i32 0, i32 0
  %p32 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack31, i32 0, i32 0
  %38 = load %struct.ref_s*, %struct.ref_s** %p32, align 8, !tbaa !30
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -4
  store %struct.ref_s* %add.ptr33, %struct.ref_s** %p32, align 8, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %if.end.18, %if.then.17, %cleanup, %if.then
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast double* %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast double* %Ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast [4 x double]* %a to i8*
  call void @llvm.lifetime.end(i64 32, i8* %43) #1
  %44 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @real_param(%struct.ref_s*, double*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

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
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 8}
!7 = !{!"gs_context_state_s", !2, i64 0, !8, i64 8, !10, i64 80, !11, i64 88, !11, i64 104, !14, i64 120, !14, i64 128, !14, i64 136, !10, i64 144, !10, i64 148, !11, i64 152, !11, i64 168, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !15, i64 264, !15, i64 304, !2, i64 344, !10, i64 352, !2, i64 360, !16, i64 368, !18, i64 520, !19, i64 624, !2, i64 720}
!8 = !{!"gs_dual_memory_s", !2, i64 0, !9, i64 8, !10, i64 48, !2, i64 56, !10, i64 64, !10, i64 68}
!9 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!10 = !{!"int", !3, i64 0}
!11 = !{!"ref_s", !12, i64 0, !3, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2, !10, i64 4}
!13 = !{!"short", !3, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!"op_array_table_s", !11, i64 0, !2, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!16 = !{!"dict_stack_s", !17, i64 0, !10, i64 96, !10, i64 100, !10, i64 104, !2, i64 112, !10, i64 120, !2, i64 128, !11, i64 136}
!17 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !10, i64 40, !10, i64 44, !11, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !2, i64 80, !2, i64 88}
!18 = !{!"exec_stack_s", !17, i64 0, !2, i64 96}
!19 = !{!"op_stack_s", !17, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!7, !2, i64 520}
!22 = !{!7, !2, i64 536}
!23 = !{i64 0, i64 2, !24, i64 2, i64 2, !24, i64 4, i64 4, !20, i64 8, i64 8, !25, i64 8, i64 2, !24, i64 8, i64 4, !26, i64 8, i64 8, !25, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !25}
!24 = !{!13, !13, i64 0}
!25 = !{!14, !14, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !3, i64 0}
!28 = !{!11, !13, i64 0}
!29 = !{!11, !10, i64 4}
!30 = !{!7, !2, i64 624}
!31 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !20, i64 32, i64 8, !1}
!32 = !{!7, !2, i64 632}
!33 = !{!7, !2, i64 640}
!34 = !{!7, !10, i64 688}
!35 = !{!7, !2, i64 0}
!36 = !{!37, !2, i64 128}
!37 = !{!"gs_memory_s", !2, i64 0, !38, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!38 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!39 = !{i64 0, i64 2, !24, i64 2, i64 2, !24, i64 4, i64 4, !20, i64 8, i64 8, !25, i64 8, i64 2, !24, i64 8, i64 4, !26, i64 8, i64 8, !25, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !25, i64 16, i64 2, !24, i64 18, i64 2, !24, i64 20, i64 4, !20, i64 24, i64 8, !25, i64 24, i64 2, !24, i64 24, i64 4, !26, i64 24, i64 8, !25, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !1, i64 24, i64 8, !25, i64 32, i64 2, !24, i64 34, i64 2, !24, i64 36, i64 4, !20, i64 40, i64 8, !25, i64 40, i64 2, !24, i64 40, i64 4, !26, i64 40, i64 8, !25, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !1, i64 40, i64 8, !25, i64 48, i64 2, !24, i64 50, i64 2, !24, i64 52, i64 4, !20, i64 56, i64 8, !25, i64 56, i64 2, !24, i64 56, i64 4, !26, i64 56, i64 8, !25, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !1, i64 56, i64 8, !25}
!40 = !{!8, !10, i64 68}
!41 = !{!42, !2, i64 24}
!42 = !{!"gs_cie_render_s", !3, i64 0, !43, i64 8, !14, i64 32, !2, i64 40, !44, i64 48, !46, i64 72, !47, i64 112, !48, i64 136, !46, i64 176, !50, i64 216, !47, i64 240, !46, i64 264, !50, i64 304, !47, i64 328, !51, i64 352, !47, i64 416, !47, i64 440, !46, i64 464, !3, i64 504, !46, i64 516, !45, i64 556, !45, i64 568, !54, i64 584}
!43 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!44 = !{!"gs_cie_wb_s", !45, i64 0, !45, i64 12}
!45 = !{!"gs_vector3_s", !27, i64 0, !27, i64 4, !27, i64 8}
!46 = !{!"gs_matrix3_s", !45, i64 0, !45, i64 12, !45, i64 24, !10, i64 36}
!47 = !{!"gs_range3_s", !3, i64 0}
!48 = !{!"gs_cie_transform_proc3_s", !2, i64 0, !2, i64 8, !49, i64 16, !2, i64 32}
!49 = !{!"gs_const_string_s", !2, i64 0, !10, i64 8}
!50 = !{!"gs_cie_render_proc3_s", !3, i64 0}
!51 = !{!"gs_cie_render_table_s", !52, i64 0, !53, i64 32}
!52 = !{!"gx_color_lookup_table_s", !10, i64 0, !3, i64 4, !10, i64 20, !2, i64 24}
!53 = !{!"gs_cie_render_table_procs_s", !3, i64 0}
!54 = !{!"", !55, i64 0, !3, i64 24840, !3, i64 37368, !10, i64 45720}
!55 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!56 = !{!42, !2, i64 16}
!57 = !{!8, !10, i64 48}
!58 = !{!59, !2, i64 8}
!59 = !{!"dict_param_list_s", !2, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !10, i64 80, !10, i64 84, !11, i64 88}
!60 = !{!37, !2, i64 24}
!61 = !{!59, !2, i64 72}
!62 = !{!52, !10, i64 0}
!63 = !{!52, !10, i64 20}
!64 = !{!52, !2, i64 24}
!65 = !{i64 0, i64 24, !5}
!66 = !{i64 0, i64 32, !5}
!67 = !{!68, !68, i64 0}
!68 = !{!"double", !3, i64 0}
