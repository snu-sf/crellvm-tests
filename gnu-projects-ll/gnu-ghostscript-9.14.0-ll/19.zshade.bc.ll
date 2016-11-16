; ModuleID = './zshade.bc'
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
%struct.gs_param_list_s = type opaque
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
%struct.gs_shading_s = type { %struct.gs_shading_head_s, %struct.gs_shading_params_s }
%struct.gs_shading_head_s = type { i32, %struct.gs_shading_procs_s }
%struct.gs_shading_procs_s = type { i32 (%struct.gs_shading_s*, %struct.gs_rect_s*, %struct.gs_fixed_rect_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*)* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gx_device_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gs_shading_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32 }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon.0 }
%struct.gs_color_space_type_s = type opaque
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.client_color_space_data_s = type opaque
%struct.cmm_profile_s = type opaque
%union.anon.0 = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gs_cie_wbsd_s = type { %struct.anon.8, %struct.anon.8, %struct.anon.8, %struct.anon.8 }
%struct.anon.8 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_vector3_s = type { float, float, float }
%struct.gx_cie_vector_cache3_s = type { [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.cie_interpolation_range_s] }
%struct.gx_cie_vector_cache_s = type { %struct.cie_cache_floats_s, %struct.cie_cache_vectors_s }
%struct.cie_cache_floats_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, double, double, %struct.cie_linear_params_s }
%struct.cie_linear_params_s = type { i32, float, float }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { float, float, float, [3 x %struct.cie_interpolation_range_s] }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.cie_interpolation_range_s = type { float, float }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_pattern2_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, %struct.gs_shading_s* }
%struct.gs_uid_s = type { i64, i64* }
%struct.int_pattern_s = type { %struct.ref_s }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.obj_header_s = type opaque
%struct.gs_shading_Fb_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [4 x float], %struct.gs_matrix_s, %struct.gs_function_s* }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_range_s = type { float, float }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gs_function_AdOt_params_s = type { i32, float*, i32, float*, %struct.gs_function_s** }
%struct.gs_shading_A_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [4 x float], [2 x float], %struct.gs_function_s*, [2 x i32] }
%struct.gs_shading_R_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, [6 x float], [2 x float], %struct.gs_function_s*, [2 x i32] }
%struct.gs_shading_FfGt_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_mesh_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s* }
%struct.gs_shading_LfGt_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_Cp_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }
%struct.gs_shading_Tpp_params_s = type { %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_client_color_s*, i32, %struct.gs_rect_s, i32, %struct.gs_data_source_s, i32, i32, float*, %struct.gs_function_s*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"ll3dict\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"0currentsmoothness\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"1setsmoothness\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1.shfill\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"1.buildshading1\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"1.buildshading2\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"1.buildshading3\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"1.buildshading4\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"1.buildshading5\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"1.buildshading6\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"1.buildshading7\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"3.buildshadingpattern\00", align 1
@zshade_op_defs = constant [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcurrentsmoothness }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsetsmoothness }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zshfill }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildshading1 }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildshading2 }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildshading3 }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildshading4 }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildshading5 }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildshading6 }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildshading7 }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildshadingpattern }, %struct.op_def zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@st_client_color = external constant %struct.gs_memory_struct_type_s, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"build_shading\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"BBox\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"AntiAlias\00", align 1
@build_shading_1.default_Domain = internal constant [4 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@.str.17 = private unnamed_addr constant [7 x i8] c"Domain\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@check_indexed_vs_function.fn = internal constant [9 x i8] c"Function\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Coords\00", align 1
@build_directional_shading.default_Domain = internal constant [2 x float] [float 0.000000e+00, float 1.000000e+00], align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Decode\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"DataSource\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"build_mesh_shading\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"BitsPerCoordinate\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"BitsPerFlag\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"VerticesPerRow\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"int_pattern\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentsmoothness(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
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
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !19
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !20
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 0
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call = call float @gs_currentsmoothness(%struct.gs_state_s* %10) #3
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %call, float* %realval, align 4, !tbaa !22
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4096, i16* %type_attrs, align 2, !tbaa !24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %13 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetsmoothness(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %smoothness = alloca double, align 8
  %code = alloca i32, align 4
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
  %3 = bitcast double* %smoothness to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @real_param(%struct.ref_s* %5, double* %smoothness) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @check_type_failed(%struct.ref_s* %6) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %9 = load double, double* %smoothness, align 8, !tbaa !25
  %call2 = call i32 @gs_setsmoothness(%struct.gs_state_s* %8, double %9) #3
  store i32 %call2, i32* %code, align 4, !tbaa !27
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack7 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack6, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p8, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p8, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast double* %smoothness to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zshfill(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %psh = alloca %struct.gs_shading_s*, align 8
  %code = alloca i32, align 4
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
  %3 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @shading_param(%struct.ref_s* %5, %struct.gs_shading_s** %psh) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %6 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %9 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %call1 = call i32 @gs_shfill(%struct.gs_state_s* %8, %struct.gs_shading_s* %9) #3
  store i32 %call1, i32* %code, align 4, !tbaa !27
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p5, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildshading1(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @build_shading(%struct.gs_context_state_s* %0, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)* @build_shading_1) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildshading2(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @build_shading(%struct.gs_context_state_s* %0, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)* @build_shading_2) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildshading3(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @build_shading(%struct.gs_context_state_s* %0, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)* @build_shading_3) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildshading4(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @build_shading(%struct.gs_context_state_s* %0, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)* @build_shading_4) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildshading5(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @build_shading(%struct.gs_context_state_s* %0, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)* @build_shading_5) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildshading6(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @build_shading(%struct.gs_context_state_s* %0, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)* @build_shading_6) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildshading7(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @build_shading(%struct.gs_context_state_s* %0, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)* @build_shading_7) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildshadingpattern(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op2 = alloca %struct.ref_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 4
  %templat = alloca %struct.gs_pattern2_template_s, align 8
  %pdata = alloca %struct.int_pattern_s*, align 8
  %cc_instance = alloca %struct.gs_client_color_s, align 8
  %code = alloca i32, align 4
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
  %3 = bitcast %struct.ref_s** %op2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op2, align 8, !tbaa !1
  %5 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = bitcast %struct.gs_pattern2_template_s* %templat to i8*
  call void @llvm.lifetime.start(i64 48, i8* %6) #1
  %7 = bitcast %struct.int_pattern_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.gs_client_color_s* %cc_instance to i8*
  call void @llvm.lifetime.start(i64 264, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %13) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %15 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %15, i32 0, i32 0
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %16 = load i16, i16* %type_attrs3, align 2, !tbaa !24
  %conv4 = zext i16 %16 to i32
  %and = and i32 %conv4, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @gs_pattern2_init(%struct.gs_pattern2_template_s* %templat) #3
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %call8 = call i32 @read_matrix(%struct.gs_memory_s* %19, %struct.ref_s* %add.ptr7, %struct.gs_matrix_s* %mat) #3
  store i32 %call8, i32* %code, align 4, !tbaa !27
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %uid = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 2
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current12 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory11, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current12, align 8, !tbaa !29
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call13 = call i32 @dict_uid_param(%struct.ref_s* %21, %struct.gs_uid_s* %uid, i32 1, %struct.gs_memory_s* %24, %struct.gs_context_state_s* %25) #3
  store i32 %call13, i32* %code, align 4, !tbaa !27
  %cmp14 = icmp ne i32 %call13, 1
  br i1 %cmp14, label %if.then.26, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %Shading = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 4
  %call17 = call i32 @shading_param(%struct.ref_s* %26, %struct.gs_shading_s** %Shading) #3
  store i32 %call17, i32* %code, align 4, !tbaa !27
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.26, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %27 = load %struct.ref_s*, %struct.ref_s** %op2, align 8, !tbaa !1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 1
  %current22 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 0
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current22, align 8, !tbaa !29
  %30 = bitcast %struct.gs_ref_memory_s* %29 to %struct.gs_memory_s*
  %call23 = call i32 @int_pattern_alloc(%struct.int_pattern_s** %pdata, %struct.ref_s* %27, %struct.gs_memory_s* %30) #3
  store i32 %call23, i32* %code, align 4, !tbaa !27
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false, %do.end
  %31 = load i32, i32* %code, align 4, !tbaa !27
  %cmp27 = icmp slt i32 %31, 0
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.26
  %32 = load i32, i32* %code, align 4, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %if.then.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %lor.lhs.false.20
  %33 = load %struct.int_pattern_s*, %struct.int_pattern_s** %pdata, align 8, !tbaa !1
  %34 = bitcast %struct.int_pattern_s* %33 to i8*
  %client_data = getelementptr inbounds %struct.gs_pattern2_template_s, %struct.gs_pattern2_template_s* %templat, i32 0, i32 3
  store i8* %34, i8** %client_data, align 8, !tbaa !30
  %35 = bitcast %struct.gs_pattern2_template_s* %templat to %struct.gs_pattern_template_s*
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 0
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 1
  %current31 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory30, i32 0, i32 0
  %39 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current31, align 8, !tbaa !29
  %40 = bitcast %struct.gs_ref_memory_s* %39 to %struct.gs_memory_s*
  %call32 = call i32 @gs_make_pattern(%struct.gs_client_color_s* %cc_instance, %struct.gs_pattern_template_s* %35, %struct.gs_matrix_s* %mat, %struct.gs_state_s* %37, %struct.gs_memory_s* %40) #3
  store i32 %call32, i32* %code, align 4, !tbaa !27
  %41 = load i32, i32* %code, align 4, !tbaa !27
  %cmp33 = icmp slt i32 %41, 0
  br i1 %cmp33, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.end.29
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %current37 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory36, i32 0, i32 0
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current37, align 8, !tbaa !29
  %44 = bitcast %struct.gs_ref_memory_s* %43 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current39 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory38, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current39, align 8, !tbaa !29
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %49 = load %struct.int_pattern_s*, %struct.int_pattern_s** %pdata, align 8, !tbaa !1
  %50 = bitcast %struct.int_pattern_s* %49 to i8*
  call void %45(%struct.gs_memory_s* %48, i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #3
  %51 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.29
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc_instance, i32 0, i32 0
  %52 = load %struct.gs_pattern_instance_s*, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !36
  %53 = bitcast %struct.gs_pattern_instance_s* %52 to %struct.obj_header_s*
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -1
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr41, i32 0, i32 1
  %pstruct = bitcast %union.v* %value42 to %struct.obj_header_s**
  store %struct.obj_header_s* %53, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory43, i32 0, i32 2
  %56 = load i32, i32* %current_space, align 4, !tbaa !39
  %or = or i32 96, %56
  %add = add i32 2048, %or
  %conv44 = trunc i32 %add to i16
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr45, i32 0, i32 0
  %type_attrs47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 0
  store i16 %conv44, i16* %type_attrs47, align 2, !tbaa !24
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack48 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 26
  %stack49 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack48, i32 0, i32 0
  %p50 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack49, i32 0, i32 0
  %59 = load %struct.ref_s*, %struct.ref_s** %p50, align 8, !tbaa !5
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 -1
  store %struct.ref_s* %add.ptr51, %struct.ref_s** %p50, align 8, !tbaa !5
  %60 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.35, %cond.end, %if.then.5, %if.then
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gs_client_color_s* %cc_instance to i8*
  call void @llvm.lifetime.end(i64 264, i8* %62) #1
  %63 = bitcast %struct.int_pattern_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.gs_pattern2_template_s* %templat to i8*
  call void @llvm.lifetime.end(i64 48, i8* %64) #1
  %65 = bitcast %struct.gs_matrix_s* %mat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %65) #1
  %66 = bitcast %struct.ref_s** %op2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare float @gs_currentsmoothness(%struct.gs_state_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @real_param(%struct.ref_s*, double*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_setsmoothness(%struct.gs_state_s*, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @shading_param(%struct.ref_s* %op, %struct.gs_shading_s** %ppsh) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = load i16, i16* %type_attrs, align 2, !tbaa !24
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %3 = load i16, i16* %type_attrs3, align 2, !tbaa !24
  %conv4 = zext i16 %3 to i32
  %and5 = and i32 %conv4, 112
  %cmp6 = icmp eq i32 %and5, 192
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to %struct.gs_shading_s*
  %7 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_shading_s* %6, %struct.gs_shading_s** %7, align 8, !tbaa !1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @gs_shfill(%struct.gs_state_s*, %struct.gs_shading_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @build_shading(%struct.gs_context_state_s* %i_ctx_p, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %proc.addr = alloca i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)*, align 8
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %box = alloca [4 x float], align 16
  %params = alloca %struct.gs_shading_params_s, align 8
  %psh = alloca %struct.gs_shading_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %num_comp = alloca i32, align 4
  %pcc = alloca %struct.gs_client_color_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)* %proc, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)** %proc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [4 x float]* %box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.gs_shading_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 72, i8* %5) #1
  %6 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %11) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.199

if.end:                                           ; preds = %entry
  %ColorSpace = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 0
  store %struct.gs_color_space_s* null, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !40
  %cie_joint_caches = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 1
  store %struct.gx_cie_joint_caches_s* null, %struct.gx_cie_joint_caches_s** %cie_joint_caches, align 8, !tbaa !44
  %Background = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 2
  store %struct.gs_client_color_s* null, %struct.gs_client_color_s** %Background, align 8, !tbaa !45
  %12 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 0
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !21
  %call2 = call %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s* %14) #3
  store %struct.gs_color_space_s* %call2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %15 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call3 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %16) #3
  store i32 %call3, i32* %num_comp, align 4, !tbaa !27
  %17 = load i32, i32* %num_comp, align 4, !tbaa !27
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %18, %struct.ref_s* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)) #3
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end.7:                                         ; preds = %if.end
  %20 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %ColorSpace8 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 0
  store %struct.gs_color_space_s* %20, %struct.gs_color_space_s** %ColorSpace8, align 8, !tbaa !40
  %21 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  call void @rc_increment_cs(%struct.gs_color_space_s* %21) #3
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call9 = call i32 @dict_find_string(%struct.ref_s* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct.ref_s** %pvalue) #3
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.29

if.then.12:                                       ; preds = %if.end.7
  %23 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %26 = bitcast %struct.gs_ref_memory_s* %25 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %27 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !46
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 1
  %current14 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory13, i32 0, i32 0
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current14, align 8, !tbaa !29
  %30 = bitcast %struct.gs_ref_memory_s* %29 to %struct.gs_memory_s*
  %call15 = call i8* %27(%struct.gs_memory_s* %30, %struct.gs_memory_struct_type_s* @st_client_color, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0)) #3
  %31 = bitcast i8* %call15 to %struct.gs_client_color_s*
  store %struct.gs_client_color_s* %31, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %32 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.gs_client_color_s* %32, null
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.12
  store i32 -25, i32* %code, align 4, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.12
  %33 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %pattern = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %33, i32 0, i32 0
  store %struct.gs_pattern_instance_s* null, %struct.gs_pattern_instance_s** %pattern, align 8, !tbaa !36
  %34 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %Background20 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 2
  store %struct.gs_client_color_s* %34, %struct.gs_client_color_s** %Background20, align 8, !tbaa !45
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 1
  %current22 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 0
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current22, align 8, !tbaa !29
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %38 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %39 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %call23 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %39) #3
  %40 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %pcc, align 8, !tbaa !1
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %40, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i32 0
  %call24 = call i32 @dict_floats_param(%struct.gs_memory_s* %37, %struct.ref_s* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 %call23, float* %arraydecay, float* null) #3
  store i32 %call24, i32* %code, align 4, !tbaa !27
  %41 = load i32, i32* %code, align 4, !tbaa !27
  %cmp25 = icmp slt i32 %41, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.19
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %42, %struct.ref_s* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #3
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.27, %if.then.18, %if.end.28
  %44 = bitcast %struct.gs_client_color_s** %pcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.end.29:                                        ; preds = %cleanup.cont, %if.end.7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %if.end.29, %cleanup, %if.then.6
  %45 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %cleanup.dest.32 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.32, label %cleanup.199 [
    i32 0, label %cleanup.cont.33
    i32 2, label %fail
  ]

cleanup.cont.33:                                  ; preds = %cleanup.30
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call34 = call i32 @dict_find_string(%struct.ref_s* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), %struct.ref_s** %pvalue) #3
  %cmp35 = icmp sle i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %cleanup.cont.33
  %have_BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 3
  store i32 0, i32* %have_BBox, align 4, !tbaa !47
  br label %if.end.98

if.else:                                          ; preds = %cleanup.cont.33
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 1
  %current39 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory38, i32 0, i32 0
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current39, align 8, !tbaa !29
  %50 = bitcast %struct.gs_ref_memory_s* %49 to %struct.gs_memory_s*
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arraydecay40 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i32 0
  %call41 = call i32 @dict_floats_param(%struct.gs_memory_s* %50, %struct.ref_s* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 4, float* %arraydecay40, float* null) #3
  store i32 %call41, i32* %code, align 4, !tbaa !27
  %cmp42 = icmp eq i32 %call41, 4
  br i1 %cmp42, label %if.then.44, label %if.else.96

if.then.44:                                       ; preds = %if.else
  %arrayidx45 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 0
  %52 = load float, float* %arrayidx45, align 4, !tbaa !22
  %arrayidx46 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 2
  %53 = load float, float* %arrayidx46, align 4, !tbaa !22
  %cmp47 = fcmp ole float %52, %53
  br i1 %cmp47, label %if.then.49, label %if.else.57

if.then.49:                                       ; preds = %if.then.44
  %arrayidx50 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 0
  %54 = load float, float* %arrayidx50, align 4, !tbaa !22
  %conv51 = fpext float %54 to double
  %BBox = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 4
  %p52 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p52, i32 0, i32 0
  store double %conv51, double* %x, align 8, !tbaa !48
  %arrayidx53 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 2
  %55 = load float, float* %arrayidx53, align 4, !tbaa !22
  %conv54 = fpext float %55 to double
  %BBox55 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 4
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox55, i32 0, i32 1
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv54, double* %x56, align 8, !tbaa !49
  br label %if.end.68

if.else.57:                                       ; preds = %if.then.44
  %arrayidx58 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 2
  %56 = load float, float* %arrayidx58, align 4, !tbaa !22
  %conv59 = fpext float %56 to double
  %BBox60 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 4
  %p61 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox60, i32 0, i32 0
  %x62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p61, i32 0, i32 0
  store double %conv59, double* %x62, align 8, !tbaa !48
  %arrayidx63 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 0
  %57 = load float, float* %arrayidx63, align 4, !tbaa !22
  %conv64 = fpext float %57 to double
  %BBox65 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 4
  %q66 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox65, i32 0, i32 1
  %x67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q66, i32 0, i32 0
  store double %conv64, double* %x67, align 8, !tbaa !49
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.57, %if.then.49
  %arrayidx69 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 1
  %58 = load float, float* %arrayidx69, align 4, !tbaa !22
  %arrayidx70 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 3
  %59 = load float, float* %arrayidx70, align 4, !tbaa !22
  %cmp71 = fcmp ole float %58, %59
  br i1 %cmp71, label %if.then.73, label %if.else.83

if.then.73:                                       ; preds = %if.end.68
  %arrayidx74 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 1
  %60 = load float, float* %arrayidx74, align 4, !tbaa !22
  %conv75 = fpext float %60 to double
  %BBox76 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 4
  %p77 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox76, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p77, i32 0, i32 1
  store double %conv75, double* %y, align 8, !tbaa !50
  %arrayidx78 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 3
  %61 = load float, float* %arrayidx78, align 4, !tbaa !22
  %conv79 = fpext float %61 to double
  %BBox80 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 4
  %q81 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox80, i32 0, i32 1
  %y82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q81, i32 0, i32 1
  store double %conv79, double* %y82, align 8, !tbaa !51
  br label %if.end.94

if.else.83:                                       ; preds = %if.end.68
  %arrayidx84 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 3
  %62 = load float, float* %arrayidx84, align 4, !tbaa !22
  %conv85 = fpext float %62 to double
  %BBox86 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 4
  %p87 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox86, i32 0, i32 0
  %y88 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p87, i32 0, i32 1
  store double %conv85, double* %y88, align 8, !tbaa !50
  %arrayidx89 = getelementptr inbounds [4 x float], [4 x float]* %box, i32 0, i64 1
  %63 = load float, float* %arrayidx89, align 4, !tbaa !22
  %conv90 = fpext float %63 to double
  %BBox91 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 4
  %q92 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %BBox91, i32 0, i32 1
  %y93 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q92, i32 0, i32 1
  store double %conv90, double* %y93, align 8, !tbaa !51
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.83, %if.then.73
  %have_BBox95 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 3
  store i32 1, i32* %have_BBox95, align 4, !tbaa !47
  br label %if.end.97

if.else.96:                                       ; preds = %if.else
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %65 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %64, %struct.ref_s* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #3
  br label %fail

if.end.97:                                        ; preds = %if.end.94
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.37
  %66 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %AntiAlias = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 5
  %call99 = call i32 @dict_bool_param(%struct.ref_s* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 0, i32* %AntiAlias) #3
  store i32 %call99, i32* %code, align 4, !tbaa !27
  %67 = load i32, i32* %code, align 4, !tbaa !27
  %cmp100 = icmp slt i32 %67, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %68, %struct.ref_s* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0)) #3
  br label %fail

if.end.103:                                       ; preds = %if.end.98
  %70 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_shading_params_s*, %struct.gs_shading_s**, %struct.gs_memory_s*)** %proc.addr, align 8, !tbaa !1
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %72 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory104 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 1
  %current105 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory104, i32 0, i32 0
  %74 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current105, align 8, !tbaa !29
  %75 = bitcast %struct.gs_ref_memory_s* %74 to %struct.gs_memory_s*
  %call106 = call i32 %70(%struct.gs_context_state_s* %71, %struct.ref_s* %72, %struct.gs_shading_params_s* %params, %struct.gs_shading_s** %psh, %struct.gs_memory_s* %75) #3
  store i32 %call106, i32* %code, align 4, !tbaa !27
  %76 = load i32, i32* %code, align 4, !tbaa !27
  %cmp107 = icmp slt i32 %76, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.103
  br label %fail

if.end.110:                                       ; preds = %if.end.103
  %77 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params111 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %77, i32 0, i32 1
  %ColorSpace112 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params111, i32 0, i32 0
  %78 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace112, align 8, !tbaa !52
  %call113 = call i32 @gx_color_space_needs_cie_caches(%struct.gs_color_space_s* %78) #3
  %tobool = icmp ne i32 %call113, 0
  br i1 %tobool, label %if.then.114, label %if.end.178

if.then.114:                                      ; preds = %if.end.110
  br label %do.body

do.body:                                          ; preds = %if.then.114
  %79 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params115 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %79, i32 0, i32 1
  %cie_joint_caches116 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params115, i32 0, i32 1
  %80 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches116, align 8, !tbaa !56
  %tobool117 = icmp ne %struct.gx_cie_joint_caches_s* %80, null
  br i1 %tobool117, label %if.then.118, label %if.end.153

if.then.118:                                      ; preds = %do.body
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.118
  br label %do.body.120

do.body.120:                                      ; preds = %do.body.119
  br label %do.cond

do.cond:                                          ; preds = %do.body.120
  br label %do.end

do.end:                                           ; preds = %do.cond
  %81 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params121 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %81, i32 0, i32 1
  %cie_joint_caches122 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params121, i32 0, i32 1
  %82 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches122, align 8, !tbaa !56
  %rc = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %82, i32 0, i32 4
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %83 = load i64, i64* %ref_count, align 8, !tbaa !57
  %add = add nsw i64 %83, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !57
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.end
  br label %do.end.124

do.end.124:                                       ; preds = %do.cond.123
  %84 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params125 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %84, i32 0, i32 1
  %cie_joint_caches126 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params125, i32 0, i32 1
  %85 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches126, align 8, !tbaa !56
  %rc127 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %85, i32 0, i32 4
  %ref_count128 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc127, i32 0, i32 0
  %86 = load i64, i64* %ref_count128, align 8, !tbaa !57
  %tobool129 = icmp ne i64 %86, 0
  br i1 %tobool129, label %if.else.148, label %if.then.130

if.then.130:                                      ; preds = %do.end.124
  br label %do.body.131

do.body.131:                                      ; preds = %if.then.130
  br label %do.body.132

do.body.132:                                      ; preds = %do.body.131
  br label %do.cond.133

do.cond.133:                                      ; preds = %do.body.132
  br label %do.end.134

do.end.134:                                       ; preds = %do.cond.133
  %87 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params135 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %87, i32 0, i32 1
  %cie_joint_caches136 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params135, i32 0, i32 1
  %88 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches136, align 8, !tbaa !56
  %rc137 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %88, i32 0, i32 4
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc137, i32 0, i32 2
  %89 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !64
  %90 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params138 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %90, i32 0, i32 1
  %cie_joint_caches139 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params138, i32 0, i32 1
  %91 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches139, align 8, !tbaa !56
  %rc140 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %91, i32 0, i32 4
  %memory141 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc140, i32 0, i32 1
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory141, align 8, !tbaa !65
  %93 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params142 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %93, i32 0, i32 1
  %cie_joint_caches143 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params142, i32 0, i32 1
  %94 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches143, align 8, !tbaa !56
  %95 = bitcast %struct.gx_cie_joint_caches_s* %94 to i8*
  call void %89(%struct.gs_memory_s* %92, i8* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0)) #3
  br label %do.cond.144

do.cond.144:                                      ; preds = %do.end.134
  br label %do.end.145

do.end.145:                                       ; preds = %do.cond.144
  %96 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params146 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %96, i32 0, i32 1
  %cie_joint_caches147 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params146, i32 0, i32 1
  store %struct.gx_cie_joint_caches_s* null, %struct.gx_cie_joint_caches_s** %cie_joint_caches147, align 8, !tbaa !56
  br label %if.end.152

if.else.148:                                      ; preds = %do.end.124
  br label %do.body.149

do.body.149:                                      ; preds = %if.else.148
  br label %do.cond.150

do.cond.150:                                      ; preds = %do.body.149
  br label %do.end.151

do.end.151:                                       ; preds = %do.cond.150
  br label %if.end.152

if.end.152:                                       ; preds = %do.end.151, %do.end.145
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %do.body
  br label %do.cond.154

do.cond.154:                                      ; preds = %if.end.153
  br label %do.end.155

do.end.155:                                       ; preds = %do.cond.154
  %97 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs156 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %97, i32 0, i32 0
  %98 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs156, align 8, !tbaa !21
  %call157 = call %struct.gx_cie_joint_caches_s* @gx_currentciecaches(%struct.gs_state_s* %98) #3
  %99 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params158 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %99, i32 0, i32 1
  %cie_joint_caches159 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params158, i32 0, i32 1
  store %struct.gx_cie_joint_caches_s* %call157, %struct.gx_cie_joint_caches_s** %cie_joint_caches159, align 8, !tbaa !56
  br label %do.body.160

do.body.160:                                      ; preds = %do.end.155
  %100 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params161 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %100, i32 0, i32 1
  %cie_joint_caches162 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params161, i32 0, i32 1
  %101 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches162, align 8, !tbaa !56
  %tobool163 = icmp ne %struct.gx_cie_joint_caches_s* %101, null
  br i1 %tobool163, label %if.then.164, label %if.end.175

if.then.164:                                      ; preds = %do.body.160
  br label %do.body.165

do.body.165:                                      ; preds = %if.then.164
  %102 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %params166 = getelementptr inbounds %struct.gs_shading_s, %struct.gs_shading_s* %102, i32 0, i32 1
  %cie_joint_caches167 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params166, i32 0, i32 1
  %103 = load %struct.gx_cie_joint_caches_s*, %struct.gx_cie_joint_caches_s** %cie_joint_caches167, align 8, !tbaa !56
  %rc168 = getelementptr inbounds %struct.gx_cie_joint_caches_s, %struct.gx_cie_joint_caches_s* %103, i32 0, i32 4
  %ref_count169 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc168, i32 0, i32 0
  %104 = load i64, i64* %ref_count169, align 8, !tbaa !57
  %inc = add nsw i64 %104, 1
  store i64 %inc, i64* %ref_count169, align 8, !tbaa !57
  br label %do.body.170

do.body.170:                                      ; preds = %do.body.165
  br label %do.cond.171

do.cond.171:                                      ; preds = %do.body.170
  br label %do.end.172

do.end.172:                                       ; preds = %do.cond.171
  br label %do.cond.173

do.cond.173:                                      ; preds = %do.end.172
  br label %do.end.174

do.end.174:                                       ; preds = %do.cond.173
  br label %if.end.175

if.end.175:                                       ; preds = %do.end.174, %do.body.160
  br label %do.cond.176

do.cond.176:                                      ; preds = %if.end.175
  br label %do.end.177

do.end.177:                                       ; preds = %do.cond.176
  br label %if.end.178

if.end.178:                                       ; preds = %do.end.177, %if.end.110
  %105 = load %struct.gs_shading_s*, %struct.gs_shading_s** %psh, align 8, !tbaa !1
  %106 = bitcast %struct.gs_shading_s* %105 to %struct.obj_header_s*
  %107 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  store %struct.obj_header_s* %106, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory179 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory179, i32 0, i32 2
  %109 = load i32, i32* %current_space, align 4, !tbaa !39
  %or = or i32 0, %109
  %110 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory180 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %110, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory180, i32 0, i32 5
  %111 = load i32, i32* %new_mask, align 4, !tbaa !66
  %or181 = or i32 %or, %111
  %add182 = add i32 2048, %or181
  %conv183 = trunc i32 %add182 to i16
  %112 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas184 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i32 0, i32 0
  %type_attrs185 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas184, i32 0, i32 0
  store i16 %conv183, i16* %type_attrs185, align 2, !tbaa !24
  %113 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.199

fail:                                             ; preds = %cleanup.30, %if.then.109, %if.then.102, %if.else.96
  %114 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory186 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %114, i32 0, i32 1
  %current187 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory186, i32 0, i32 0
  %115 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current187, align 8, !tbaa !29
  %116 = bitcast %struct.gs_ref_memory_s* %115 to %struct.gs_memory_s*
  %procs188 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %116, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs188, i32 0, i32 2
  %117 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %118 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory189 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %118, i32 0, i32 1
  %current190 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory189, i32 0, i32 0
  %119 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current190, align 8, !tbaa !29
  %120 = bitcast %struct.gs_ref_memory_s* %119 to %struct.gs_memory_s*
  %Background191 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 2
  %121 = load %struct.gs_client_color_s*, %struct.gs_client_color_s** %Background191, align 8, !tbaa !45
  %122 = bitcast %struct.gs_client_color_s* %121 to i8*
  call void %117(%struct.gs_memory_s* %120, i8* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #3
  %ColorSpace192 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 0
  %123 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace192, align 8, !tbaa !40
  %tobool193 = icmp ne %struct.gs_color_space_s* %123, null
  br i1 %tobool193, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %fail
  %ColorSpace195 = getelementptr inbounds %struct.gs_shading_params_s, %struct.gs_shading_params_s* %params, i32 0, i32 0
  %124 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace195, align 8, !tbaa !40
  call void @rc_decrement_only_cs(%struct.gs_color_space_s* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0)) #3
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %fail
  %125 = load i32, i32* %code, align 4, !tbaa !27
  %cmp197 = icmp slt i32 %125, 0
  br i1 %cmp197, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.196
  %126 = load i32, i32* %code, align 4, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %if.end.196
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %126, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.199

cleanup.199:                                      ; preds = %cond.end, %if.end.178, %cleanup.30, %if.then
  %127 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct.gs_shading_s** %psh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast %struct.gs_shading_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 72, i8* %129) #1
  %130 = bitcast [4 x float]* %box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %130) #1
  %131 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = load i32, i32* %retval
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define internal i32 @build_shading_1(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_s** %ppsh, %struct.gs_memory_s* %mem) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pcommon.addr = alloca %struct.gs_shading_params_s*, align 8
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_shading_Fb_params_s, align 8
  %code = alloca i32, align 4
  %pmatrix = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_Fb_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 120, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.ref_s** %pmatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_shading_Fb_params_s* %params to %struct.gs_shading_params_s*
  %4 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_shading_params_s* %3 to i8*
  %6 = bitcast %struct.gs_shading_params_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 72, i32 8, i1 false), !tbaa.struct !67
  %Matrix = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 7
  call void @gs_make_identity(%struct.gs_matrix_s* %Matrix) #3
  %Function = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 8
  store %struct.gs_function_s* null, %struct.gs_function_s** %Function, align 8, !tbaa !68
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %Domain, i32 0, i32 0
  %call = call i32 @dict_floats_param_errorinfo(%struct.gs_context_state_s* %7, %struct.ref_s* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 4, float* %arraydecay, float* getelementptr inbounds ([4 x float], [4 x float]* @build_shading_1.default_Domain, i32 0, i32 0)) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %9 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %Domain1 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 6
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %Domain1, i32 0, i64 0
  %10 = load float, float* %arrayidx, align 4, !tbaa !22
  %Domain2 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 6
  %arrayidx3 = getelementptr inbounds [4 x float], [4 x float]* %Domain2, i32 0, i64 1
  %11 = load float, float* %arrayidx3, align 4, !tbaa !22
  %cmp4 = fcmp ogt float %10, %11
  br i1 %cmp4, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %Domain5 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 6
  %arrayidx6 = getelementptr inbounds [4 x float], [4 x float]* %Domain5, i32 0, i64 2
  %12 = load float, float* %arrayidx6, align 4, !tbaa !22
  %Domain7 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 6
  %arrayidx8 = getelementptr inbounds [4 x float], [4 x float]* %Domain7, i32 0, i64 3
  %13 = load float, float* %arrayidx8, align 4, !tbaa !22
  %cmp9 = fcmp ogt float %12, %13
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  call void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %14, %struct.ref_s* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #3
  store i32 -15, i32* %code, align 4, !tbaa !27
  br label %out

if.end.11:                                        ; preds = %lor.lhs.false
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call12 = call i32 @dict_find_string(%struct.ref_s* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct.ref_s** %pmatrix) #3
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.11
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %20 = load %struct.ref_s*, %struct.ref_s** %pmatrix, align 8, !tbaa !1
  %Matrix15 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 7
  %call16 = call i32 @read_matrix(%struct.gs_memory_s* %19, %struct.ref_s* %20, %struct.gs_matrix_s* %Matrix15) #3
  store i32 %call16, i32* %code, align 4, !tbaa !27
  %21 = load i32, i32* %code, align 4, !tbaa !27
  %cmp17 = icmp slt i32 %21, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  call void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %22, %struct.ref_s* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  br label %out

if.end.19:                                        ; preds = %if.then.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.11
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Function21 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 8
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Domain22 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 6
  %arraydecay23 = getelementptr inbounds [4 x float], [4 x float]* %Domain22, i32 0, i32 0
  %call24 = call i32 @build_shading_function(%struct.gs_context_state_s* %24, %struct.ref_s* %25, %struct.gs_function_s** %Function21, i32 2, %struct.gs_memory_s* %26, float* %arraydecay23) #3
  store i32 %call24, i32* %code, align 4, !tbaa !27
  %27 = load i32, i32* %code, align 4, !tbaa !27
  %cmp25 = icmp slt i32 %27, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  br label %out

if.end.27:                                        ; preds = %if.end.20
  %Function28 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 8
  %28 = load %struct.gs_function_s*, %struct.gs_function_s** %Function28, align 8, !tbaa !68
  %cmp29 = icmp eq %struct.gs_function_s* %28, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  store i32 -21, i32* %code, align 4, !tbaa !27
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  call void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %29, %struct.ref_s* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #3
  br label %out

if.end.31:                                        ; preds = %if.end.27
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %32 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 0
  %33 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !71
  %Function32 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 8
  %34 = load %struct.gs_function_s*, %struct.gs_function_s** %Function32, align 8, !tbaa !68
  %call33 = call i32 @check_indexed_vs_function(%struct.gs_context_state_s* %31, %struct.ref_s* %32, %struct.gs_color_space_s* %33, %struct.gs_function_s* %34) #3
  store i32 %call33, i32* %code, align 4, !tbaa !27
  %35 = load i32, i32* %code, align 4, !tbaa !27
  %cmp34 = icmp slt i32 %35, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  br label %out

if.end.36:                                        ; preds = %if.end.31
  %36 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call37 = call i32 @gs_shading_Fb_init(%struct.gs_shading_s** %36, %struct.gs_shading_Fb_params_s* %params, %struct.gs_memory_s* %37) #3
  store i32 %call37, i32* %code, align 4, !tbaa !27
  br label %out

out:                                              ; preds = %if.end.36, %if.then.35, %if.then.30, %if.then.26, %if.then.18, %if.then.10, %if.then
  %38 = load i32, i32* %code, align 4, !tbaa !27
  %cmp38 = icmp slt i32 %38, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %out
  %Function39 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 8
  %39 = load %struct.gs_function_s*, %struct.gs_function_s** %Function39, align 8, !tbaa !68
  %tobool = icmp ne %struct.gs_function_s* %39, null
  br i1 %tobool, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Function41 = getelementptr inbounds %struct.gs_shading_Fb_params_s, %struct.gs_shading_Fb_params_s* %params, i32 0, i32 8
  %43 = load %struct.gs_function_s*, %struct.gs_function_s** %Function41, align 8, !tbaa !68
  %44 = bitcast %struct.gs_function_s* %43 to i8*
  call void %41(%struct.gs_memory_s* %42, i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #3
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true, %out
  %45 = load i32, i32* %code, align 4, !tbaa !27
  %46 = bitcast %struct.ref_s** %pmatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.gs_shading_Fb_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 120, i8* %48) #1
  ret i32 %45
}

declare %struct.gs_color_space_s* @gs_currentcolorspace(%struct.gs_state_s*) #2

declare i32 @gs_color_space_num_components(%struct.gs_color_space_s*) #2

declare void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s*, %struct.ref_s*, i8*) #2

declare void @rc_increment_cs(%struct.gs_color_space_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_floats_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, float*, float*) #2

declare i32 @dict_bool_param(%struct.ref_s*, i8*, i32, i32*) #2

declare i32 @gx_color_space_needs_cie_caches(%struct.gs_color_space_s*) #2

declare %struct.gx_cie_joint_caches_s* @gx_currentciecaches(%struct.gs_state_s*) #2

declare void @rc_decrement_only_cs(%struct.gs_color_space_s*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

declare i32 @dict_floats_param_errorinfo(%struct.gs_context_state_s*, %struct.ref_s*, i8*, i32, float*, float*) #2

declare i32 @read_matrix(%struct.gs_memory_s*, %struct.ref_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @build_shading_function(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_function_s** %ppfn, i32 %num_inputs, %struct.gs_memory_s* %mem, float* %shading_domain) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %num_inputs.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %shading_domain.addr = alloca float*, align 8
  %pFunction = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %size = alloca i32, align 4
  %Functions = alloca %struct.gs_function_s**, align 8
  %i = alloca i32, align 4
  %params = alloca %struct.gs_function_AdOt_params_s, align 8
  %rsubfn = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store i32 %num_inputs, i32* %num_inputs.addr, align 4, !tbaa !27
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store float* %shading_domain, float** %shading_domain.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pFunction to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* null, %struct.gs_function_s** %2, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.ref_s** %pFunction) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %pFunction, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !24
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 15360
  %cmp1 = icmp eq i32 %and, 1024
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %6 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %pFunction, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %8 = load i32, i32* %rsize, align 4, !tbaa !72
  store i32 %8, i32* %size, align 4, !tbaa !27
  %9 = bitcast %struct.gs_function_s*** %Functions to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast %struct.gs_function_AdOt_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 40, i8* %11) #1
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %12 = load %struct.ref_s*, %struct.ref_s** %pFunction, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %13 = load i16, i16* %type_attrs6, align 2, !tbaa !24
  %conv7 = zext i16 %13 to i32
  %and8 = and i32 %conv7, 32
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

if.end.10:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load i32, i32* %size, align 4, !tbaa !27
  %cmp11 = icmp eq i32 %14, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

if.end.14:                                        ; preds = %do.end
  %15 = load i32, i32* %size, align 4, !tbaa !27
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call15 = call i32 @alloc_function_array(i32 %15, %struct.gs_function_s*** %Functions, %struct.gs_memory_s* %16) #3
  store i32 %call15, i32* %code, align 4, !tbaa !27
  %17 = load i32, i32* %code, align 4, !tbaa !27
  %cmp16 = icmp slt i32 %17, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  %18 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

if.end.19:                                        ; preds = %if.end.14
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %19 = load i32, i32* %i, align 4, !tbaa !27
  %20 = load i32, i32* %size, align 4, !tbaa !27
  %cmp20 = icmp ult i32 %19, %20
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = bitcast %struct.ref_s* %rsubfn to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #1
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %25 = load %struct.ref_s*, %struct.ref_s** %pFunction, align 8, !tbaa !1
  %26 = load i32, i32* %i, align 4, !tbaa !27
  %conv22 = zext i32 %26 to i64
  %call23 = call i32 @array_get(%struct.gs_memory_s* %24, %struct.ref_s* %25, i64 %conv22, %struct.ref_s* %rsubfn) #3
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = zext i32 %28 to i64
  %29 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %29, i64 %idxprom
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %31 = load float*, float** %shading_domain.addr, align 8, !tbaa !1
  %32 = load i32, i32* %num_inputs.addr, align 4, !tbaa !27
  %call24 = call i32 @fn_build_function(%struct.gs_context_state_s* %27, %struct.ref_s* %rsubfn, %struct.gs_function_s** %arrayidx, %struct.gs_memory_s* %30, float* %31, i32 %32) #3
  store i32 %call24, i32* %code, align 4, !tbaa !27
  %33 = load i32, i32* %code, align 4, !tbaa !27
  %cmp25 = icmp slt i32 %33, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27
  %34 = bitcast %struct.ref_s* %rsubfn to i8*
  call void @llvm.lifetime.end(i64 16, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %35 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %36 = load i32, i32* %num_inputs.addr, align 4, !tbaa !27
  %m = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params, i32 0, i32 0
  store i32 %36, i32* %m, align 4, !tbaa !73
  %Domain = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params, i32 0, i32 1
  store float* null, float** %Domain, align 8, !tbaa !75
  %37 = load i32, i32* %size, align 4, !tbaa !27
  %n = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params, i32 0, i32 2
  store i32 %37, i32* %n, align 4, !tbaa !76
  %Range = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params, i32 0, i32 3
  store float* null, float** %Range, align 8, !tbaa !77
  %38 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !1
  %Functions29 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params, i32 0, i32 4
  store %struct.gs_function_s** %38, %struct.gs_function_s*** %Functions29, align 8, !tbaa !78
  %39 = load i32, i32* %code, align 4, !tbaa !27
  %cmp30 = icmp sge i32 %39, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %for.end
  %40 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call33 = call i32 @gs_function_AdOt_init(%struct.gs_function_s** %40, %struct.gs_function_AdOt_params_s* %params, %struct.gs_memory_s* %41) #3
  store i32 %call33, i32* %code, align 4, !tbaa !27
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %for.end
  %42 = load i32, i32* %code, align 4, !tbaa !27
  %cmp35 = icmp slt i32 %42, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_function_AdOt_free_params(%struct.gs_function_AdOt_params_s* %params, %struct.gs_memory_s* %43) #3
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.39

cleanup.39:                                       ; preds = %if.end.38, %if.then.18, %if.then.13, %if.then.9
  %44 = bitcast %struct.gs_function_AdOt_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 40, i8* %44) #1
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast %struct.gs_function_s*** %Functions to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %cleanup.dest.43 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.43, label %cleanup.57 [
    i32 0, label %cleanup.cont.44
  ]

cleanup.cont.44:                                  ; preds = %cleanup.39
  br label %if.end.56

if.else:                                          ; preds = %if.end
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %49 = load %struct.ref_s*, %struct.ref_s** %pFunction, align 8, !tbaa !1
  %50 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %52 = load float*, float** %shading_domain.addr, align 8, !tbaa !1
  %53 = load i32, i32* %num_inputs.addr, align 4, !tbaa !27
  %call45 = call i32 @fn_build_function(%struct.gs_context_state_s* %48, %struct.ref_s* %49, %struct.gs_function_s** %50, %struct.gs_memory_s* %51, float* %52, i32 %53) #3
  store i32 %call45, i32* %code, align 4, !tbaa !27
  %54 = load i32, i32* %code, align 4, !tbaa !27
  %cmp46 = icmp slt i32 %54, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else
  %55 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.end.49:                                        ; preds = %if.else
  %56 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %57 = load %struct.gs_function_s*, %struct.gs_function_s** %56, align 8, !tbaa !1
  %params50 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %57, i32 0, i32 1
  %m51 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params50, i32 0, i32 0
  %58 = load i32, i32* %m51, align 4, !tbaa !79
  %59 = load i32, i32* %num_inputs.addr, align 4, !tbaa !27
  %cmp52 = icmp ne i32 %58, %59
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.49
  %60 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %61 = load %struct.gs_function_s*, %struct.gs_function_s** %60, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %61, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 6
  %62 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !84
  %63 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %64 = load %struct.gs_function_s*, %struct.gs_function_s** %63, align 8, !tbaa !1
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void %62(%struct.gs_function_s* %64, i32 1, %struct.gs_memory_s* %65) #3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

if.end.55:                                        ; preds = %if.end.49
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %cleanup.cont.44
  %66 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.57

cleanup.57:                                       ; preds = %if.end.56, %if.then.54, %if.then.48, %cleanup.39, %if.then
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast %struct.ref_s** %pFunction to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @check_indexed_vs_function(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_color_space_s* %pcs, %struct.gs_function_s* %funct) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %funct.addr = alloca %struct.gs_function_s*, align 8
  %f = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %funct, %struct.gs_function_s** %funct.addr, align 8, !tbaa !1
  %0 = load %struct.gs_function_s*, %struct.gs_function_s** %funct.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_function_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %1) #3
  %cmp = icmp eq i32 %call, 10
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.ref_s** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @check_indexed_vs_function.fn, i32 0, i32 0), %struct.ref_s** %f) #3
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %f, align 8, !tbaa !1
  %call4 = call i32 @gs_errorinfo_put_pair(%struct.gs_context_state_s* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @check_indexed_vs_function.fn, i32 0, i32 0), i32 8, %struct.ref_s* %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  store i32 -20, i32* %retval
  %6 = bitcast %struct.ref_s** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  br label %return

if.end.5:                                         ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.end
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @gs_shading_Fb_init(%struct.gs_shading_s**, %struct.gs_shading_Fb_params_s*, %struct.gs_memory_s*) #2

declare i32 @alloc_function_array(i32, %struct.gs_function_s***, %struct.gs_memory_s*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @fn_build_function(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_function_s**, %struct.gs_memory_s*, float*, i32) #2

declare i32 @gs_function_AdOt_init(%struct.gs_function_s**, %struct.gs_function_AdOt_params_s*, %struct.gs_memory_s*) #2

declare void @gs_function_AdOt_free_params(%struct.gs_function_AdOt_params_s*, %struct.gs_memory_s*) #2

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

declare i32 @gs_errorinfo_put_pair(%struct.gs_context_state_s*, i8*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @build_shading_2(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_s** %ppsh, %struct.gs_memory_s* %mem) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pcommon.addr = alloca %struct.gs_shading_params_s*, align 8
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_shading_A_params_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_A_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 112, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_shading_A_params_s* %params to %struct.gs_shading_params_s*
  %3 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_params_s* %2 to i8*
  %5 = bitcast %struct.gs_shading_params_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 72, i32 8, i1 false), !tbaa.struct !67
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Coords = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %Coords, i32 0, i32 0
  %Domain = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params, i32 0, i32 7
  %arraydecay1 = getelementptr inbounds [2 x float], [2 x float]* %Domain, i32 0, i32 0
  %Function = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params, i32 0, i32 8
  %Extend = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params, i32 0, i32 9
  %arraydecay2 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend, i32 0, i32 0
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @build_directional_shading(%struct.gs_context_state_s* %6, %struct.ref_s* %7, float* %arraydecay, i32 4, float* %arraydecay1, %struct.gs_function_s** %Function, i32* %arraydecay2, %struct.gs_memory_s* %8) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params, i32 0, i32 0
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !85
  %Function3 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params, i32 0, i32 8
  %12 = load %struct.gs_function_s*, %struct.gs_function_s** %Function3, align 8, !tbaa !87
  %call4 = call i32 @check_indexed_vs_function(%struct.gs_context_state_s* %9, %struct.ref_s* %10, %struct.gs_color_space_s* %11, %struct.gs_function_s* %12) #3
  store i32 %call4, i32* %code, align 4, !tbaa !27
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %13 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @gs_shading_A_init(%struct.gs_shading_s** %13, %struct.gs_shading_A_params_s* %params, %struct.gs_memory_s* %14) #3
  store i32 %call7, i32* %code, align 4, !tbaa !27
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %entry
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Function9 = getelementptr inbounds %struct.gs_shading_A_params_s, %struct.gs_shading_A_params_s* %params, i32 0, i32 8
  %18 = load %struct.gs_function_s*, %struct.gs_function_s** %Function9, align 8, !tbaa !87
  %19 = bitcast %struct.gs_function_s* %18 to i8*
  call void %16(%struct.gs_memory_s* %17, i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.6
  %20 = load i32, i32* %code, align 4, !tbaa !27
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.gs_shading_A_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 112, i8* %22) #1
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @build_directional_shading(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, float* %Coords, i32 %num_Coords, float* %Domain, %struct.gs_function_s** %pFunction, i32* %Extend, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %Coords.addr = alloca float*, align 8
  %num_Coords.addr = alloca i32, align 4
  %Domain.addr = alloca float*, align 8
  %pFunction.addr = alloca %struct.gs_function_s**, align 8
  %Extend.addr = alloca i32*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %pExtend = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %E0 = alloca %struct.ref_s, align 8
  %E1 = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store float* %Coords, float** %Coords.addr, align 8, !tbaa !1
  store i32 %num_Coords, i32* %num_Coords.addr, align 4, !tbaa !27
  store float* %Domain, float** %Domain.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %pFunction, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  store i32* %Extend, i32** %Extend.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !29
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %5 = load i32, i32* %num_Coords.addr, align 4, !tbaa !27
  %6 = load float*, float** %Coords.addr, align 8, !tbaa !1
  %call = call i32 @dict_floats_param(%struct.gs_memory_s* %3, %struct.ref_s* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 %5, float* %6, float* null) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %7 = bitcast %struct.ref_s** %pExtend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_function_s**, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  store %struct.gs_function_s* null, %struct.gs_function_s** %8, align 8, !tbaa !1
  %9 = load i32, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %12 = load float*, float** %Domain.addr, align 8, !tbaa !1
  %call1 = call i32 @dict_floats_param_errorinfo(%struct.gs_context_state_s* %10, %struct.ref_s* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 2, float* %12, float* getelementptr inbounds ([2 x float], [2 x float]* @build_directional_shading.default_Domain, i32 0, i32 0)) #3
  store i32 %call1, i32* %code, align 4, !tbaa !27
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %15 = load %struct.gs_function_s**, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load float*, float** %Domain.addr, align 8, !tbaa !1
  %call4 = call i32 @build_shading_function(%struct.gs_context_state_s* %13, %struct.ref_s* %14, %struct.gs_function_s** %15, i32 1, %struct.gs_memory_s* %16, float* %17) #3
  store i32 %call4, i32* %code, align 4, !tbaa !27
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %18 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end:                                           ; preds = %lor.lhs.false.3
  %19 = load %struct.gs_function_s**, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  %20 = load %struct.gs_function_s*, %struct.gs_function_s** %19, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_function_s* %20, null
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end.7:                                         ; preds = %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call8 = call i32 @dict_find_string(%struct.ref_s* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct.ref_s** %pExtend) #3
  %cmp9 = icmp sle i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %22 = load i32*, i32** %Extend.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %arrayidx, align 4, !tbaa !27
  %23 = load i32*, i32** %Extend.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %arrayidx11, align 4, !tbaa !27
  br label %if.end.52

if.else:                                          ; preds = %if.end.7
  %24 = bitcast %struct.ref_s* %E0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = bitcast %struct.ref_s* %E1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %25) #1
  %26 = load %struct.ref_s*, %struct.ref_s** %pExtend, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %27 = load i16, i16* %type_attrs, align 2, !tbaa !24
  %conv = zext i16 %27 to i32
  %and = and i32 %conv, 15360
  %cmp12 = icmp eq i32 %and, 1024
  br i1 %cmp12, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %if.else
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.15:                                       ; preds = %if.else
  %28 = load %struct.ref_s*, %struct.ref_s** %pExtend, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 2
  %29 = load i32, i32* %rsize, align 4, !tbaa !72
  %cmp17 = icmp ne i32 %29, 2
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.15
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.20:                                       ; preds = %if.else.15
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current22 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current22, align 8, !tbaa !29
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %33 = load %struct.ref_s*, %struct.ref_s** %pExtend, align 8, !tbaa !1
  %call23 = call i32 @array_get(%struct.gs_memory_s* %32, %struct.ref_s* %33, i64 0, %struct.ref_s* %E0) #3
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %E0, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  %34 = bitcast i16* %type_attrs25 to i8*
  %arrayidx26 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx26, align 1, !tbaa !28
  %conv27 = zext i8 %35 to i32
  %cmp28 = icmp eq i32 %conv27, 1
  %lnot = xor i1 %cmp28, true
  br i1 %lnot, label %if.then.41, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.else.20
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %current32 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory31, i32 0, i32 0
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current32, align 8, !tbaa !29
  %38 = bitcast %struct.gs_ref_memory_s* %37 to %struct.gs_memory_s*
  %39 = load %struct.ref_s*, %struct.ref_s** %pExtend, align 8, !tbaa !1
  %call33 = call i32 @array_get(%struct.gs_memory_s* %38, %struct.ref_s* %39, i64 1, %struct.ref_s* %E1) #3
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %E1, i32 0, i32 0
  %type_attrs35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 0
  %40 = bitcast i16* %type_attrs35 to i8*
  %arrayidx36 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx36, align 1, !tbaa !28
  %conv37 = zext i8 %41 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  %lnot40 = xor i1 %cmp38, true
  br i1 %lnot40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false.30, %if.else.20
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %lor.lhs.false.30
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %E0, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  %42 = load i16, i16* %boolval, align 2, !tbaa !88
  %conv45 = zext i16 %42 to i32
  %43 = load i32*, i32** %Extend.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %conv45, i32* %arrayidx46, align 4, !tbaa !27
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %E1, i32 0, i32 1
  %boolval48 = bitcast %union.v* %value47 to i16*
  %44 = load i16, i16* %boolval48, align 2, !tbaa !88
  %conv49 = zext i16 %44 to i32
  %45 = load i32*, i32** %Extend.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %conv49, i32* %arrayidx50, align 4, !tbaa !27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.41, %if.then.19, %if.then.14
  %46 = bitcast %struct.ref_s* %E1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %46) #1
  %47 = bitcast %struct.ref_s* %E0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %47) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.53 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.52

if.end.52:                                        ; preds = %cleanup.cont, %if.then.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %if.end.52, %cleanup, %if.then.6, %if.then
  %48 = bitcast %struct.ref_s** %pExtend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @gs_shading_A_init(%struct.gs_shading_s**, %struct.gs_shading_A_params_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @build_shading_3(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_s** %ppsh, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pcommon.addr = alloca %struct.gs_shading_params_s*, align 8
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_shading_R_params_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_R_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 120, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_shading_R_params_s* %params to %struct.gs_shading_params_s*
  %3 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_params_s* %2 to i8*
  %5 = bitcast %struct.gs_shading_params_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 72, i32 8, i1 false), !tbaa.struct !67
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Coords = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params, i32 0, i32 6
  %arraydecay = getelementptr inbounds [6 x float], [6 x float]* %Coords, i32 0, i32 0
  %Domain = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params, i32 0, i32 7
  %arraydecay1 = getelementptr inbounds [2 x float], [2 x float]* %Domain, i32 0, i32 0
  %Function = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params, i32 0, i32 8
  %Extend = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params, i32 0, i32 9
  %arraydecay2 = getelementptr inbounds [2 x i32], [2 x i32]* %Extend, i32 0, i32 0
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @build_directional_shading(%struct.gs_context_state_s* %6, %struct.ref_s* %7, float* %arraydecay, i32 6, float* %arraydecay1, %struct.gs_function_s** %Function, i32* %arraydecay2, %struct.gs_memory_s* %8) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params, i32 0, i32 0
  %11 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !89
  %Function3 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params, i32 0, i32 8
  %12 = load %struct.gs_function_s*, %struct.gs_function_s** %Function3, align 8, !tbaa !91
  %call4 = call i32 @check_indexed_vs_function(%struct.gs_context_state_s* %9, %struct.ref_s* %10, %struct.gs_color_space_s* %11, %struct.gs_function_s* %12) #3
  store i32 %call4, i32* %code, align 4, !tbaa !27
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %13 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 @gs_shading_R_init(%struct.gs_shading_s** %13, %struct.gs_shading_R_params_s* %params, %struct.gs_memory_s* %14) #3
  store i32 %call7, i32* %code, align 4, !tbaa !27
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %entry
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Function9 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params, i32 0, i32 8
  %18 = load %struct.gs_function_s*, %struct.gs_function_s** %Function9, align 8, !tbaa !91
  %19 = bitcast %struct.gs_function_s* %18 to i8*
  call void %16(%struct.gs_memory_s* %17, i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.6
  %Function10 = getelementptr inbounds %struct.gs_shading_R_params_s, %struct.gs_shading_R_params_s* %params, i32 0, i32 8
  %20 = load %struct.gs_function_s*, %struct.gs_function_s** %Function10, align 8, !tbaa !91
  %cmp11 = icmp eq %struct.gs_function_s* %20, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.gs_shading_R_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 120, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @gs_shading_R_init(%struct.gs_shading_s**, %struct.gs_shading_R_params_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @build_shading_4(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_s** %ppsh, %struct.gs_memory_s* %mem) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pcommon.addr = alloca %struct.gs_shading_params_s*, align 8
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_shading_FfGt_params_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_FfGt_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 136, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_shading_FfGt_params_s* %params to %struct.gs_shading_params_s*
  %3 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_params_s* %2 to i8*
  %5 = bitcast %struct.gs_shading_params_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 72, i32 8, i1 false), !tbaa.struct !67
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_shading_FfGt_params_s* %params to %struct.gs_shading_mesh_params_s*
  %Decode = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %params, i32 0, i32 9
  %Function = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %params, i32 0, i32 10
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @build_mesh_shading(%struct.gs_context_state_s* %6, %struct.ref_s* %7, %struct.gs_shading_mesh_params_s* %8, float** %Decode, %struct.gs_function_s** %Function, %struct.gs_memory_s* %9) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %params, i32 0, i32 0
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !92
  %Function1 = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %params, i32 0, i32 10
  %13 = load %struct.gs_function_s*, %struct.gs_function_s** %Function1, align 8, !tbaa !95
  %call2 = call i32 @check_indexed_vs_function(%struct.gs_context_state_s* %10, %struct.ref_s* %11, %struct.gs_color_space_s* %12, %struct.gs_function_s* %13) #3
  store i32 %call2, i32* %code, align 4, !tbaa !27
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_shading_FfGt_params_s* %params to %struct.gs_shading_mesh_params_s*
  %BitsPerFlag = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %params, i32 0, i32 11
  %call5 = call i32 @flag_bits_param(%struct.ref_s* %14, %struct.gs_shading_mesh_params_s* %15, i32* %BitsPerFlag) #3
  store i32 %call5, i32* %code, align 4, !tbaa !27
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %16 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_shading_FfGt_init(%struct.gs_shading_s** %16, %struct.gs_shading_FfGt_params_s* %params, %struct.gs_memory_s* %17) #3
  store i32 %call8, i32* %code, align 4, !tbaa !27
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Function10 = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %params, i32 0, i32 10
  %21 = load %struct.gs_function_s*, %struct.gs_function_s** %Function10, align 8, !tbaa !95
  %22 = bitcast %struct.gs_function_s* %21 to i8*
  call void %19(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !33
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Decode13 = getelementptr inbounds %struct.gs_shading_FfGt_params_s, %struct.gs_shading_FfGt_params_s* %params, i32 0, i32 9
  %26 = load float*, float** %Decode13, align 8, !tbaa !96
  %27 = bitcast float* %26 to i8*
  call void %24(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.7
  %28 = load i32, i32* %code, align 4, !tbaa !27
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.gs_shading_FfGt_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 136, i8* %30) #1
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @build_mesh_shading(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_shading_mesh_params_s* %params, float** %pDecode, %struct.gs_function_s** %pFunction, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %params.addr = alloca %struct.gs_shading_mesh_params_s*, align 8
  %pDecode.addr = alloca float**, align 8
  %pFunction.addr = alloca %struct.gs_function_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %data = alloca float*, align 8
  %pDataSource = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %size = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %fcode = alloca i32, align 4
  %num_decode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_shading_mesh_params_s* %params, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  store float** %pDecode, float*** %pDecode.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %pFunction, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store float* null, float** %data, align 8, !tbaa !1
  %2 = bitcast %struct.ref_s** %pDataSource to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load float**, float*** %pDecode.addr, align 8, !tbaa !1
  store float* null, float** %3, align 8, !tbaa !1
  %4 = load %struct.gs_function_s**, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  store %struct.gs_function_s* null, %struct.gs_function_s** %4, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %struct.ref_s** %pDataSource) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !24
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 15360
  %cmp1 = icmp eq i32 %and, 1024
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !72
  store i32 %10, i32* %size, align 4, !tbaa !27
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %12 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !97
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load i32, i32* %size, align 4, !tbaa !27
  %call5 = call i8* %12(%struct.gs_memory_s* %13, i32 %14, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0)) #3
  %15 = bitcast i8* %call5 to float*
  store float* %15, float** %data, align 8, !tbaa !1
  %16 = load float*, float** %data, align 8, !tbaa !1
  %cmp6 = icmp eq float* %16, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then.3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %19 = load i32, i32* %size, align 4, !tbaa !27
  %20 = load float*, float** %data, align 8, !tbaa !1
  %call10 = call i32 @process_float_array(%struct.gs_memory_s* %17, %struct.ref_s* %18, i32 %19, float* %20) #3
  store i32 %call10, i32* %code, align 4, !tbaa !27
  %21 = load i32, i32* %code, align 4, !tbaa !27
  %cmp11 = icmp slt i32 %21, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load float*, float** %data, align 8, !tbaa !1
  %26 = bitcast float* %25 to i8*
  call void %23(%struct.gs_memory_s* %24, i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0)) #3
  %27 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.9
  %28 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %28, i32 0, i32 6
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  store i32 2, i32* %type, align 4, !tbaa !98
  %29 = load float*, float** %data, align 8, !tbaa !1
  %30 = bitcast float* %29 to i8*
  %31 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource16 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %31, i32 0, i32 6
  %data17 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource16, i32 0, i32 2
  %str = bitcast %union.d_* %data17 to %struct.gs_const_string_s*
  %data18 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %30, i8** %data18, align 8, !tbaa !99
  %32 = load i32, i32* %size, align 4, !tbaa !27
  %conv19 = zext i32 %32 to i64
  %mul = mul i64 %conv19, 4
  %conv20 = trunc i64 %mul to i32
  %33 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource21 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %33, i32 0, i32 6
  %data22 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource21, i32 0, i32 2
  %str23 = bitcast %union.d_* %data22 to %struct.gs_const_string_s*
  %size24 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str23, i32 0, i32 1
  store i32 %conv20, i32* %size24, align 4, !tbaa !101
  %34 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource25 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %34, i32 0, i32 6
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource25, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_bytes, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !102
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.13, %if.then.8
  %35 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.167 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.107

if.else:                                          ; preds = %if.end
  %36 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  %37 = bitcast i16* %type_attrs27 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv28 = zext i8 %38 to i32
  switch i32 %conv28, label %sw.default [
    i32 3, label %sw.bb
    i32 18, label %sw.bb.82
  ]

sw.bb:                                            ; preds = %if.else
  %39 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %40 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  %41 = load i16, i16* %type_attrs30, align 2, !tbaa !24
  %conv31 = zext i16 %41 to i32
  %and32 = and i32 %conv31, 16160
  %cmp33 = icmp eq i32 %and32, 800
  br i1 %cmp33, label %if.end.43, label %if.then.35

if.then.35:                                       ; preds = %do.body
  %42 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  %43 = bitcast i16* %type_attrs37 to i8*
  %arrayidx38 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8, i8* %arrayidx38, align 1, !tbaa !28
  %conv39 = zext i8 %44 to i32
  %cmp40 = icmp eq i32 %conv39, 3
  br i1 %cmp40, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.35
  %45 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %call42 = call i32 @check_type_failed(%struct.ref_s* %45) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then.35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call42, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.43:                                        ; preds = %do.body
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.43
  %46 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %47 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %47, %struct.stream_s** %s, align 8, !tbaa !1
  %48 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %48, i32 0, i32 19
  %49 = load i16, i16* %read_id, align 2, !tbaa !103
  %conv45 = zext i16 %49 to i32
  %50 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %rsize47 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas46, i32 0, i32 2
  %51 = load i32, i32* %rsize47, align 4, !tbaa !72
  %cmp48 = icmp ne i32 %conv45, %51
  br i1 %cmp48, label %if.then.50, label %if.end.71

if.then.50:                                       ; preds = %do.body.44
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id51 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 19
  %53 = load i16, i16* %read_id51, align 2, !tbaa !103
  %conv52 = zext i16 %53 to i32
  %cmp53 = icmp eq i32 %conv52, 0
  br i1 %cmp53, label %land.lhs.true, label %if.else.69

land.lhs.true:                                    ; preds = %if.then.50
  %54 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %54, i32 0, i32 20
  %55 = load i16, i16* %write_id, align 2, !tbaa !107
  %conv55 = zext i16 %55 to i32
  %56 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %rsize57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 2
  %57 = load i32, i32* %rsize57, align 4, !tbaa !72
  %cmp58 = icmp eq i32 %conv55, %57
  br i1 %cmp58, label %if.then.60, label %if.else.69

if.then.60:                                       ; preds = %land.lhs.true
  %58 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %call61 = call i32 @file_switch_to_read(%struct.ref_s* %59) #3
  store i32 %call61, i32* %fcode, align 4, !tbaa !27
  %60 = load i32, i32* %fcode, align 4, !tbaa !27
  %cmp62 = icmp slt i32 %60, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.60
  %61 = load i32, i32* %fcode, align 4, !tbaa !27
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.66

if.end.65:                                        ; preds = %if.then.60
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.66

cleanup.66:                                       ; preds = %if.end.65, %if.then.64
  %62 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %cleanup.dest.67 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.67, label %cleanup.80 [
    i32 0, label %cleanup.cont.68
  ]

cleanup.cont.68:                                  ; preds = %cleanup.66
  br label %if.end.70

if.else.69:                                       ; preds = %land.lhs.true, %if.then.50
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 18
  %64 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !108
  store %struct.stream_s* %64, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %cleanup.cont.68
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %do.body.44
  br label %do.cond

do.cond:                                          ; preds = %if.end.71
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.72

do.cond.72:                                       ; preds = %do.end
  br label %do.end.73

do.end.73:                                        ; preds = %do.cond.72
  %65 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource74 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %65, i32 0, i32 6
  %type75 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource74, i32 0, i32 1
  store i32 3, i32* %type75, align 4, !tbaa !98
  %66 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %67 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource76 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %67, i32 0, i32 6
  %data77 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource76, i32 0, i32 2
  %strm = bitcast %union.d_* %data77 to %struct.stream_s**
  store %struct.stream_s* %66, %struct.stream_s** %strm, align 8, !tbaa !1
  %68 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource78 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %68, i32 0, i32 6
  %access79 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource78, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_stream, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access79, align 8, !tbaa !102
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.80

cleanup.80:                                       ; preds = %do.end.73, %cleanup.66, %cond.end
  %69 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %cleanup.dest.81 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.81, label %cleanup.167 [
    i32 2, label %sw.epilog
  ]

sw.bb.82:                                         ; preds = %if.else
  br label %do.body.83

do.body.83:                                       ; preds = %sw.bb.82
  %70 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %type_attrs85 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas84, i32 0, i32 0
  %71 = load i16, i16* %type_attrs85, align 2, !tbaa !24
  %conv86 = zext i16 %71 to i32
  %and87 = and i32 %conv86, 32
  %tobool = icmp ne i32 %and87, 0
  br i1 %tobool, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %do.body.83
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

if.end.89:                                        ; preds = %do.body.83
  br label %do.cond.90

do.cond.90:                                       ; preds = %if.end.89
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  %72 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource92 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %72, i32 0, i32 6
  %type93 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource92, i32 0, i32 1
  store i32 0, i32* %type93, align 4, !tbaa !98
  %73 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %value94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 1
  %bytes = bitcast %union.v* %value94 to i8**
  %74 = load i8*, i8** %bytes, align 8, !tbaa !1
  %75 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource95 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %75, i32 0, i32 6
  %data96 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource95, i32 0, i32 2
  %str97 = bitcast %union.d_* %data96 to %struct.gs_const_string_s*
  %data98 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str97, i32 0, i32 0
  store i8* %74, i8** %data98, align 8, !tbaa !99
  %76 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %rsize100 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas99, i32 0, i32 2
  %77 = load i32, i32* %rsize100, align 4, !tbaa !72
  %78 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource101 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %78, i32 0, i32 6
  %data102 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource101, i32 0, i32 2
  %str103 = bitcast %union.d_* %data102 to %struct.gs_const_string_s*
  %size104 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str103, i32 0, i32 1
  store i32 %77, i32* %size104, align 4, !tbaa !101
  %79 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource105 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %79, i32 0, i32 6
  %access106 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource105, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_string, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access106, align 8, !tbaa !102
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

sw.epilog:                                        ; preds = %do.end.91, %cleanup.80
  br label %if.end.107

if.end.107:                                       ; preds = %sw.epilog, %cleanup.cont
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %81 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %82 = load %struct.gs_function_s**, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call108 = call i32 @build_shading_function(%struct.gs_context_state_s* %80, %struct.ref_s* %81, %struct.gs_function_s** %82, i32 1, %struct.gs_memory_s* %83, float* null) #3
  store i32 %call108, i32* %code, align 4, !tbaa !27
  %84 = load i32, i32* %code, align 4, !tbaa !27
  %cmp109 = icmp slt i32 %84, 0
  br i1 %cmp109, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %if.end.107
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs112 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %85, i32 0, i32 1
  %free_object113 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs112, i32 0, i32 2
  %86 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object113, align 8, !tbaa !33
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %88 = load float*, float** %data, align 8, !tbaa !1
  %89 = bitcast float* %88 to i8*
  call void %86(%struct.gs_memory_s* %87, i8* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0)) #3
  %90 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

if.end.114:                                       ; preds = %if.end.107
  %91 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource115 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %91, i32 0, i32 6
  %type116 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource115, i32 0, i32 1
  %92 = load i32, i32* %type116, align 4, !tbaa !109
  %cmp117 = icmp eq i32 %92, 2
  br i1 %cmp117, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.end.114
  %93 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerCoordinate = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %93, i32 0, i32 7
  store i32 0, i32* %BitsPerCoordinate, align 4, !tbaa !111
  %94 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %94, i32 0, i32 8
  store i32 0, i32* %BitsPerComponent, align 4, !tbaa !112
  br label %if.end.155

if.else.120:                                      ; preds = %if.end.114
  %95 = bitcast i32* %num_decode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = load %struct.gs_function_s**, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  %97 = load %struct.gs_function_s*, %struct.gs_function_s** %96, align 8, !tbaa !1
  %cmp121 = icmp ne %struct.gs_function_s* %97, null
  br i1 %cmp121, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %if.else.120
  br label %cond.end.126

cond.false.124:                                   ; preds = %if.else.120
  %98 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %98, i32 0, i32 0
  %99 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !113
  %call125 = call i32 @gs_color_space_num_components(%struct.gs_color_space_s* %99) #3
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.124, %cond.true.123
  %cond127 = phi i32 [ 1, %cond.true.123 ], [ %call125, %cond.false.124 ]
  %mul128 = mul nsw i32 %cond127, 2
  %add = add nsw i32 4, %mul128
  store i32 %add, i32* %num_decode, align 4, !tbaa !27
  %100 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %101 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerCoordinate129 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %101, i32 0, i32 7
  %call130 = call i32 @dict_int_param(%struct.ref_s* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 32, i32 0, i32* %BitsPerCoordinate129) #3
  store i32 %call130, i32* %code, align 4, !tbaa !27
  %cmp131 = icmp sge i32 %call130, 0
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.154

land.lhs.true.133:                                ; preds = %cond.end.126
  %102 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %103 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerComponent134 = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %103, i32 0, i32 8
  %call135 = call i32 @dict_int_param(%struct.ref_s* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 16, i32 0, i32* %BitsPerComponent134) #3
  store i32 %call135, i32* %code, align 4, !tbaa !27
  %cmp136 = icmp sge i32 %call135, 0
  br i1 %cmp136, label %if.then.138, label %if.end.154

if.then.138:                                      ; preds = %land.lhs.true.133
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs139 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %104, i32 0, i32 1
  %alloc_byte_array140 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs139, i32 0, i32 10
  %105 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array140, align 8, !tbaa !97
  %106 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %107 = load i32, i32* %num_decode, align 4, !tbaa !27
  %call141 = call i8* %105(%struct.gs_memory_s* %106, i32 %107, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0)) #3
  %108 = bitcast i8* %call141 to float*
  %109 = load float**, float*** %pDecode.addr, align 8, !tbaa !1
  store float* %108, float** %109, align 8, !tbaa !1
  %110 = load float**, float*** %pDecode.addr, align 8, !tbaa !1
  %111 = load float*, float** %110, align 8, !tbaa !1
  %cmp142 = icmp eq float* %111, null
  br i1 %cmp142, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %if.then.138
  store i32 -25, i32* %code, align 4, !tbaa !27
  br label %if.end.153

if.else.145:                                      ; preds = %if.then.138
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %113 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %114 = load i32, i32* %num_decode, align 4, !tbaa !27
  %115 = load float**, float*** %pDecode.addr, align 8, !tbaa !1
  %116 = load float*, float** %115, align 8, !tbaa !1
  %call146 = call i32 @dict_floats_param(%struct.gs_memory_s* %112, %struct.ref_s* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 %114, float* %116, float* null) #3
  store i32 %call146, i32* %code, align 4, !tbaa !27
  %117 = load i32, i32* %code, align 4, !tbaa !27
  %cmp147 = icmp slt i32 %117, 0
  br i1 %cmp147, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.else.145
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs150 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %118, i32 0, i32 1
  %free_object151 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs150, i32 0, i32 2
  %119 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object151, align 8, !tbaa !33
  %120 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %121 = load float**, float*** %pDecode.addr, align 8, !tbaa !1
  %122 = load float*, float** %121, align 8, !tbaa !1
  %123 = bitcast float* %122 to i8*
  call void %119(%struct.gs_memory_s* %120, i8* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0)) #3
  %124 = load float**, float*** %pDecode.addr, align 8, !tbaa !1
  store float* null, float** %124, align 8, !tbaa !1
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.else.145
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.144
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %land.lhs.true.133, %cond.end.126
  %125 = bitcast i32* %num_decode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.119
  %126 = load i32, i32* %code, align 4, !tbaa !27
  %cmp156 = icmp slt i32 %126, 0
  br i1 %cmp156, label %if.then.158, label %if.end.166

if.then.158:                                      ; preds = %if.end.155
  %127 = load %struct.gs_function_s**, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  %128 = load %struct.gs_function_s*, %struct.gs_function_s** %127, align 8, !tbaa !1
  %cmp159 = icmp ne %struct.gs_function_s* %128, null
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.then.158
  %129 = load %struct.gs_function_s**, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  %130 = load %struct.gs_function_s*, %struct.gs_function_s** %129, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %130, i32 0, i32 0
  %procs162 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs162, i32 0, i32 6
  %131 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !84
  %132 = load %struct.gs_function_s**, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  %133 = load %struct.gs_function_s*, %struct.gs_function_s** %132, align 8, !tbaa !1
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void %131(%struct.gs_function_s* %133, i32 1, %struct.gs_memory_s* %134) #3
  %135 = load %struct.gs_function_s**, %struct.gs_function_s*** %pFunction.addr, align 8, !tbaa !1
  store %struct.gs_function_s* null, %struct.gs_function_s** %135, align 8, !tbaa !1
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %if.then.158
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs164 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %136, i32 0, i32 1
  %free_object165 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs164, i32 0, i32 2
  %137 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object165, align 8, !tbaa !33
  %138 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %139 = load float*, float** %data, align 8, !tbaa !1
  %140 = bitcast float* %139 to i8*
  call void %137(%struct.gs_memory_s* %138, i8* %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0)) #3
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.163, %if.end.155
  %141 = load i32, i32* %code, align 4, !tbaa !27
  store i32 %141, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.167

cleanup.167:                                      ; preds = %if.end.166, %if.then.111, %sw.default, %if.then.88, %cleanup.80, %cleanup, %if.then
  %142 = bitcast %struct.ref_s** %pDataSource to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast float** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = load i32, i32* %retval
  ret i32 %145
}

; Function Attrs: nounwind uwtable
define internal i32 @flag_bits_param(%struct.ref_s* %op, %struct.gs_shading_mesh_params_s* %params, i32* %pBitsPerFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %params.addr = alloca %struct.gs_shading_mesh_params_s*, align 8
  %pBitsPerFlag.addr = alloca i32*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_shading_mesh_params_s* %params, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  store i32* %pBitsPerFlag, i32** %pBitsPerFlag.addr, align 8, !tbaa !1
  %0 = load %struct.gs_shading_mesh_params_s*, %struct.gs_shading_mesh_params_s** %params.addr, align 8, !tbaa !1
  %DataSource = getelementptr inbounds %struct.gs_shading_mesh_params_s, %struct.gs_shading_mesh_params_s* %0, i32 0, i32 6
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  %1 = load i32, i32* %type, align 4, !tbaa !109
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %pBitsPerFlag.addr, align 8, !tbaa !1
  store i32 0, i32* %2, align 4, !tbaa !27
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %pBitsPerFlag.addr, align 8, !tbaa !1
  %call = call i32 @dict_int_param(%struct.ref_s* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 2, i32 8, i32 0, i32* %4) #3
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @gs_shading_FfGt_init(%struct.gs_shading_s**, %struct.gs_shading_FfGt_params_s*, %struct.gs_memory_s*) #2

declare i32 @process_float_array(%struct.gs_memory_s*, %struct.ref_s*, i32, float*) #2

declare i32 @data_source_access_bytes(%struct.gs_data_source_s*, i64, i32, i8*, i8**) #2

declare i32 @file_switch_to_read(%struct.ref_s*) #2

declare i32 @data_source_access_stream(%struct.gs_data_source_s*, i64, i32, i8*, i8**) #2

declare i32 @data_source_access_string(%struct.gs_data_source_s*, i64, i32, i8*, i8**) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @build_shading_5(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_s** %ppsh, %struct.gs_memory_s* %mem) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pcommon.addr = alloca %struct.gs_shading_params_s*, align 8
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_shading_LfGt_params_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_LfGt_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 136, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_shading_LfGt_params_s* %params to %struct.gs_shading_params_s*
  %3 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_params_s* %2 to i8*
  %5 = bitcast %struct.gs_shading_params_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 72, i32 8, i1 false), !tbaa.struct !67
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_shading_LfGt_params_s* %params to %struct.gs_shading_mesh_params_s*
  %Decode = getelementptr inbounds %struct.gs_shading_LfGt_params_s, %struct.gs_shading_LfGt_params_s* %params, i32 0, i32 9
  %Function = getelementptr inbounds %struct.gs_shading_LfGt_params_s, %struct.gs_shading_LfGt_params_s* %params, i32 0, i32 10
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @build_mesh_shading(%struct.gs_context_state_s* %6, %struct.ref_s* %7, %struct.gs_shading_mesh_params_s* %8, float** %Decode, %struct.gs_function_s** %Function, %struct.gs_memory_s* %9) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_LfGt_params_s, %struct.gs_shading_LfGt_params_s* %params, i32 0, i32 0
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !114
  %Function1 = getelementptr inbounds %struct.gs_shading_LfGt_params_s, %struct.gs_shading_LfGt_params_s* %params, i32 0, i32 10
  %13 = load %struct.gs_function_s*, %struct.gs_function_s** %Function1, align 8, !tbaa !116
  %call2 = call i32 @check_indexed_vs_function(%struct.gs_context_state_s* %10, %struct.ref_s* %11, %struct.gs_color_space_s* %12, %struct.gs_function_s* %13) #3
  store i32 %call2, i32* %code, align 4, !tbaa !27
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %VerticesPerRow = getelementptr inbounds %struct.gs_shading_LfGt_params_s, %struct.gs_shading_LfGt_params_s* %params, i32 0, i32 11
  %call5 = call i32 @dict_int_param(%struct.ref_s* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 2, i32 2147483647, i32 0, i32* %VerticesPerRow) #3
  store i32 %call5, i32* %code, align 4, !tbaa !27
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %15 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_shading_LfGt_init(%struct.gs_shading_s** %15, %struct.gs_shading_LfGt_params_s* %params, %struct.gs_memory_s* %16) #3
  store i32 %call8, i32* %code, align 4, !tbaa !27
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Function10 = getelementptr inbounds %struct.gs_shading_LfGt_params_s, %struct.gs_shading_LfGt_params_s* %params, i32 0, i32 10
  %20 = load %struct.gs_function_s*, %struct.gs_function_s** %Function10, align 8, !tbaa !116
  %21 = bitcast %struct.gs_function_s* %20 to i8*
  call void %18(%struct.gs_memory_s* %19, i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %23 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !33
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Decode13 = getelementptr inbounds %struct.gs_shading_LfGt_params_s, %struct.gs_shading_LfGt_params_s* %params, i32 0, i32 9
  %25 = load float*, float** %Decode13, align 8, !tbaa !117
  %26 = bitcast float* %25 to i8*
  call void %23(%struct.gs_memory_s* %24, i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.7
  %27 = load i32, i32* %code, align 4, !tbaa !27
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gs_shading_LfGt_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 136, i8* %29) #1
  ret i32 %27
}

declare i32 @gs_shading_LfGt_init(%struct.gs_shading_s**, %struct.gs_shading_LfGt_params_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @build_shading_6(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_s** %ppsh, %struct.gs_memory_s* %mem) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pcommon.addr = alloca %struct.gs_shading_params_s*, align 8
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_shading_Cp_params_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_Cp_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 136, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_shading_Cp_params_s* %params to %struct.gs_shading_params_s*
  %3 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_params_s* %2 to i8*
  %5 = bitcast %struct.gs_shading_params_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 72, i32 8, i1 false), !tbaa.struct !67
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_shading_Cp_params_s* %params to %struct.gs_shading_mesh_params_s*
  %Decode = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %params, i32 0, i32 9
  %Function = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %params, i32 0, i32 10
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @build_mesh_shading(%struct.gs_context_state_s* %6, %struct.ref_s* %7, %struct.gs_shading_mesh_params_s* %8, float** %Decode, %struct.gs_function_s** %Function, %struct.gs_memory_s* %9) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %params, i32 0, i32 0
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !118
  %Function1 = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %params, i32 0, i32 10
  %13 = load %struct.gs_function_s*, %struct.gs_function_s** %Function1, align 8, !tbaa !120
  %call2 = call i32 @check_indexed_vs_function(%struct.gs_context_state_s* %10, %struct.ref_s* %11, %struct.gs_color_space_s* %12, %struct.gs_function_s* %13) #3
  store i32 %call2, i32* %code, align 4, !tbaa !27
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_shading_Cp_params_s* %params to %struct.gs_shading_mesh_params_s*
  %BitsPerFlag = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %params, i32 0, i32 11
  %call5 = call i32 @flag_bits_param(%struct.ref_s* %14, %struct.gs_shading_mesh_params_s* %15, i32* %BitsPerFlag) #3
  store i32 %call5, i32* %code, align 4, !tbaa !27
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %16 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_shading_Cp_init(%struct.gs_shading_s** %16, %struct.gs_shading_Cp_params_s* %params, %struct.gs_memory_s* %17) #3
  store i32 %call8, i32* %code, align 4, !tbaa !27
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Function10 = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %params, i32 0, i32 10
  %21 = load %struct.gs_function_s*, %struct.gs_function_s** %Function10, align 8, !tbaa !120
  %22 = bitcast %struct.gs_function_s* %21 to i8*
  call void %19(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !33
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Decode13 = getelementptr inbounds %struct.gs_shading_Cp_params_s, %struct.gs_shading_Cp_params_s* %params, i32 0, i32 9
  %26 = load float*, float** %Decode13, align 8, !tbaa !121
  %27 = bitcast float* %26 to i8*
  call void %24(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.7
  %28 = load i32, i32* %code, align 4, !tbaa !27
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.gs_shading_Cp_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 136, i8* %30) #1
  ret i32 %28
}

declare i32 @gs_shading_Cp_init(%struct.gs_shading_s**, %struct.gs_shading_Cp_params_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @build_shading_7(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_s** %ppsh, %struct.gs_memory_s* %mem) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pcommon.addr = alloca %struct.gs_shading_params_s*, align 8
  %ppsh.addr = alloca %struct.gs_shading_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_shading_Tpp_params_s, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_shading_params_s* %pcommon, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  store %struct.gs_shading_s** %ppsh, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_shading_Tpp_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 136, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_shading_Tpp_params_s* %params to %struct.gs_shading_params_s*
  %3 = load %struct.gs_shading_params_s*, %struct.gs_shading_params_s** %pcommon.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_shading_params_s* %2 to i8*
  %5 = bitcast %struct.gs_shading_params_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 72, i32 8, i1 false), !tbaa.struct !67
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_shading_Tpp_params_s* %params to %struct.gs_shading_mesh_params_s*
  %Decode = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %params, i32 0, i32 9
  %Function = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %params, i32 0, i32 10
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @build_mesh_shading(%struct.gs_context_state_s* %6, %struct.ref_s* %7, %struct.gs_shading_mesh_params_s* %8, float** %Decode, %struct.gs_function_s** %Function, %struct.gs_memory_s* %9) #3
  store i32 %call, i32* %code, align 4, !tbaa !27
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %params, i32 0, i32 0
  %12 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %ColorSpace, align 8, !tbaa !122
  %Function1 = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %params, i32 0, i32 10
  %13 = load %struct.gs_function_s*, %struct.gs_function_s** %Function1, align 8, !tbaa !124
  %call2 = call i32 @check_indexed_vs_function(%struct.gs_context_state_s* %10, %struct.ref_s* %11, %struct.gs_color_space_s* %12, %struct.gs_function_s* %13) #3
  store i32 %call2, i32* %code, align 4, !tbaa !27
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_shading_Tpp_params_s* %params to %struct.gs_shading_mesh_params_s*
  %BitsPerFlag = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %params, i32 0, i32 11
  %call5 = call i32 @flag_bits_param(%struct.ref_s* %14, %struct.gs_shading_mesh_params_s* %15, i32* %BitsPerFlag) #3
  store i32 %call5, i32* %code, align 4, !tbaa !27
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %16 = load %struct.gs_shading_s**, %struct.gs_shading_s*** %ppsh.addr, align 8, !tbaa !1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call8 = call i32 @gs_shading_Tpp_init(%struct.gs_shading_s** %16, %struct.gs_shading_Tpp_params_s* %params, %struct.gs_memory_s* %17) #3
  store i32 %call8, i32* %code, align 4, !tbaa !27
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %entry
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !33
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Function10 = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %params, i32 0, i32 10
  %21 = load %struct.gs_function_s*, %struct.gs_function_s** %Function10, align 8, !tbaa !124
  %22 = bitcast %struct.gs_function_s* %21 to i8*
  call void %19(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0)) #3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !33
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Decode13 = getelementptr inbounds %struct.gs_shading_Tpp_params_s, %struct.gs_shading_Tpp_params_s* %params, i32 0, i32 9
  %26 = load float*, float** %Decode13, align 8, !tbaa !125
  %27 = bitcast float* %26 to i8*
  call void %24(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.7
  %28 = load i32, i32* %code, align 4, !tbaa !27
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.gs_shading_Tpp_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 136, i8* %30) #1
  ret i32 %28
}

declare i32 @gs_shading_Tpp_init(%struct.gs_shading_s**, %struct.gs_shading_Tpp_params_s*, %struct.gs_memory_s*) #2

declare void @gs_pattern2_init(%struct.gs_pattern2_template_s*) #2

declare i32 @dict_uid_param(%struct.ref_s*, %struct.gs_uid_s*, i32, %struct.gs_memory_s*, %struct.gs_context_state_s*) #2

declare i32 @int_pattern_alloc(%struct.int_pattern_s**, %struct.ref_s*, %struct.gs_memory_s*) #2

declare i32 @gs_make_pattern(%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*) #2

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
!19 = !{!6, !2, i64 640}
!20 = !{!6, !9, i64 688}
!21 = !{!6, !2, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !3, i64 0}
!24 = !{!10, !12, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !3, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!3, !3, i64 0}
!29 = !{!6, !2, i64 8}
!30 = !{!31, !2, i64 32}
!31 = !{!"gs_pattern2_template_s", !2, i64 0, !9, i64 8, !32, i64 16, !2, i64 32, !2, i64 40}
!32 = !{!"gs_uid_s", !13, i64 0, !2, i64 8}
!33 = !{!34, !2, i64 24}
!34 = !{!"gs_memory_s", !2, i64 0, !35, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!35 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!36 = !{!37, !2, i64 0}
!37 = !{!"gs_client_color_s", !2, i64 0, !38, i64 8}
!38 = !{!"gs_paint_color_s", !3, i64 0}
!39 = !{!7, !9, i64 48}
!40 = !{!41, !2, i64 0}
!41 = !{!"gs_shading_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !42, i64 32, !9, i64 64}
!42 = !{!"gs_rect_s", !43, i64 0, !43, i64 16}
!43 = !{!"gs_point_s", !26, i64 0, !26, i64 8}
!44 = !{!41, !2, i64 8}
!45 = !{!41, !2, i64 16}
!46 = !{!34, !2, i64 72}
!47 = !{!41, !9, i64 24}
!48 = !{!41, !26, i64 32}
!49 = !{!41, !26, i64 48}
!50 = !{!41, !26, i64 40}
!51 = !{!41, !26, i64 56}
!52 = !{!53, !2, i64 16}
!53 = !{!"gs_shading_s", !54, i64 0, !41, i64 16}
!54 = !{!"gs_shading_head_s", !3, i64 0, !55, i64 8}
!55 = !{!"gs_shading_procs_s", !2, i64 0}
!56 = !{!53, !2, i64 24}
!57 = !{!58, !13, i64 24}
!58 = !{!"gx_cie_joint_caches_s", !13, i64 0, !13, i64 8, !3, i64 16, !3, i64 20, !59, i64 24, !2, i64 48, !9, i64 56, !9, i64 60, !60, i64 64, !61, i64 24904, !9, i64 25000, !60, i64 25008, !9, i64 49848}
!59 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!60 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!61 = !{!"gs_cie_wbsd_s", !62, i64 0, !62, i64 24, !62, i64 48, !62, i64 72}
!62 = !{!"", !63, i64 0, !63, i64 12}
!63 = !{!"gs_vector3_s", !23, i64 0, !23, i64 4, !23, i64 8}
!64 = !{!58, !2, i64 40}
!65 = !{!58, !2, i64 32}
!66 = !{!7, !9, i64 68}
!67 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !27, i64 32, i64 8, !25, i64 40, i64 8, !25, i64 48, i64 8, !25, i64 56, i64 8, !25, i64 64, i64 4, !27}
!68 = !{!69, !2, i64 112}
!69 = !{!"gs_shading_Fb_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !42, i64 32, !9, i64 64, !3, i64 68, !70, i64 84, !2, i64 112}
!70 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!71 = !{!69, !2, i64 0}
!72 = !{!10, !9, i64 4}
!73 = !{!74, !9, i64 0}
!74 = !{!"gs_function_AdOt_params_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !2, i64 32}
!75 = !{!74, !2, i64 8}
!76 = !{!74, !9, i64 16}
!77 = !{!74, !2, i64 24}
!78 = !{!74, !2, i64 32}
!79 = !{!80, !9, i64 72}
!80 = !{!"gs_function_s", !81, i64 0, !83, i64 72}
!81 = !{!"gs_function_head_s", !9, i64 0, !82, i64 8}
!82 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!83 = !{!"gs_function_params_s", !9, i64 0, !2, i64 8, !9, i64 16, !2, i64 24}
!84 = !{!80, !2, i64 56}
!85 = !{!86, !2, i64 0}
!86 = !{!"gs_shading_A_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !42, i64 32, !9, i64 64, !3, i64 68, !3, i64 84, !2, i64 96, !3, i64 104}
!87 = !{!86, !2, i64 96}
!88 = !{!12, !12, i64 0}
!89 = !{!90, !2, i64 0}
!90 = !{!"gs_shading_R_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !42, i64 32, !9, i64 64, !3, i64 68, !3, i64 92, !2, i64 104, !3, i64 112}
!91 = !{!90, !2, i64 104}
!92 = !{!93, !2, i64 0}
!93 = !{!"gs_shading_FfGt_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !42, i64 32, !9, i64 64, !94, i64 72, !9, i64 104, !9, i64 108, !2, i64 112, !2, i64 120, !9, i64 128}
!94 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!95 = !{!93, !2, i64 120}
!96 = !{!93, !2, i64 112}
!97 = !{!34, !2, i64 88}
!98 = !{!94, !3, i64 8}
!99 = !{!100, !2, i64 0}
!100 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!101 = !{!100, !9, i64 8}
!102 = !{!94, !2, i64 0}
!103 = !{!104, !12, i64 264}
!104 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !105, i64 160, !13, i64 176, !106, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !100, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!105 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!106 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!107 = !{!104, !12, i64 266}
!108 = !{!6, !2, i64 256}
!109 = !{!110, !3, i64 80}
!110 = !{!"gs_shading_mesh_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !42, i64 32, !9, i64 64, !94, i64 72, !9, i64 104, !9, i64 108, !2, i64 112, !2, i64 120}
!111 = !{!110, !9, i64 104}
!112 = !{!110, !9, i64 108}
!113 = !{!110, !2, i64 0}
!114 = !{!115, !2, i64 0}
!115 = !{!"gs_shading_LfGt_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !42, i64 32, !9, i64 64, !94, i64 72, !9, i64 104, !9, i64 108, !2, i64 112, !2, i64 120, !9, i64 128}
!116 = !{!115, !2, i64 120}
!117 = !{!115, !2, i64 112}
!118 = !{!119, !2, i64 0}
!119 = !{!"gs_shading_Cp_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !42, i64 32, !9, i64 64, !94, i64 72, !9, i64 104, !9, i64 108, !2, i64 112, !2, i64 120, !9, i64 128}
!120 = !{!119, !2, i64 120}
!121 = !{!119, !2, i64 112}
!122 = !{!123, !2, i64 0}
!123 = !{!"gs_shading_Tpp_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !42, i64 32, !9, i64 64, !94, i64 72, !9, i64 104, !9, i64 108, !2, i64 112, !2, i64 120, !9, i64 128}
!124 = !{!123, !2, i64 120}
!125 = !{!123, !2, i64 112}
