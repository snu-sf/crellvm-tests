; ModuleID = './gscrd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.struct_shared_procs_s = type opaque
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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon, %struct.anon, %struct.anon, %struct.anon }
%struct.anon = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_vector3_s = type { float, float, float }
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.0 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { {}*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.anon.0 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
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
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gx_device_s = type opaque
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_c_param_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.cie_cache_fracs_s = type { %struct.cie_cache_params_s, [512 x i16] }

@.str = private unnamed_addr constant [14 x i8] c"gs_cie_render\00", align 1
@st_cie_render1 = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 46312, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cie_render1_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cie_render1_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@TransformPQR_default = constant { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* } { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)* @tpqr_identity, i8* null, %struct.gs_const_string_s zeroinitializer, i8* null }, align 8
@TransformPQR_from_cache = constant { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* } { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)* @tpqr_from_cache, i8* null, %struct.gs_const_string_s zeroinitializer, i8* null }, align 8
@TransformPQR_lookup_proc_name = constant i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)* @tpqr_lookup, align 8
@Encode_default = constant %struct.gs_cie_render_proc3_s { [3 x float (double, %struct.gs_cie_render_s*)*] [float (double, %struct.gs_cie_render_s*)* @render_identity, float (double, %struct.gs_cie_render_s*)* @render_identity, float (double, %struct.gs_cie_render_s*)* @render_identity] }, align 8
@EncodeLMN_from_cache = constant %struct.gs_cie_render_proc3_s { [3 x float (double, %struct.gs_cie_render_s*)*] [float (double, %struct.gs_cie_render_s*)* @EncodeLMN_cached_L, float (double, %struct.gs_cie_render_s*)* @EncodeLMN_cached_M, float (double, %struct.gs_cie_render_s*)* @EncodeLMN_cached_N] }, align 8
@EncodeABC_from_cache = constant %struct.gs_cie_render_proc3_s { [3 x float (double, %struct.gs_cie_render_s*)*] [float (double, %struct.gs_cie_render_s*)* @EncodeABC_cached_A, float (double, %struct.gs_cie_render_s*)* @EncodeABC_cached_B, float (double, %struct.gs_cie_render_s*)* @EncodeABC_cached_C] }, align 8
@RenderTableT_default = constant %struct.gs_cie_render_table_procs_s { [4 x i16 (i8, %struct.gs_cie_render_s*)*] [i16 (i8, %struct.gs_cie_render_s*)* @render_table_identity, i16 (i8, %struct.gs_cie_render_s*)* @render_table_identity, i16 (i8, %struct.gs_cie_render_s*)* @render_table_identity, i16 (i8, %struct.gs_cie_render_s*)* @render_table_identity] }, align 8
@RenderTableT_from_cache = constant %struct.gs_cie_render_table_procs_s { [4 x i16 (i8, %struct.gs_cie_render_s*)*] [i16 (i8, %struct.gs_cie_render_s*)* @RTT_cached_0, i16 (i8, %struct.gs_cie_render_s*)* @RTT_cached_1, i16 (i8, %struct.gs_cie_render_s*)* @RTT_cached_2, i16 (i8, %struct.gs_cie_render_s*)* @RTT_cached_3] }, align 8
@BlackPoint_default = external constant %struct.gs_vector3_s, align 4
@Matrix3_default = external constant %struct.gs_matrix3_s, align 4
@Range3_default = external constant %struct.gs_range3_s, align 4
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"tpqr_do_lookup(device)\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cie_render1_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcrd = alloca %struct.gs_cie_render_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_cie_render_s*
  store %struct.gs_cie_render_s* %2, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %4, i32 0, i32 3
  %5 = load i8*, i8** %client_data, align 8, !tbaa !7
  %6 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %6, i32 0, i32 0
  store i8* %5, i8** %ptr, align 8, !tbaa !24
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %RenderTable = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %7, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable, i32 0, i32 0
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup, i32 0, i32 3
  %8 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !26
  %9 = bitcast %struct.gs_const_string_s* %8 to i8*
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 0
  store i8* %9, i8** %ptr2, align 8, !tbaa !24
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %RenderTable4 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %11, i32 0, i32 14
  %lookup5 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable4, i32 0, i32 0
  %table6 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup5, i32 0, i32 3
  %12 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table6, align 8, !tbaa !26
  %tobool = icmp ne %struct.gs_const_string_s* %12, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.3
  %13 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %13, i32 0, i32 7
  %proc_data = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %proc_data, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8, !tbaa !27
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr7 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* %14, i8** %ptr7, align 8, !tbaa !24
  %16 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %TransformPQR8 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %16, i32 0, i32 7
  %proc_data9 = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR8, i32 0, i32 2
  %size10 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %proc_data9, i32 0, i32 1
  %17 = load i32, i32* %size10, align 4, !tbaa !28
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size11 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %18, i32 0, i32 1
  store i32 %17, i32* %size11, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_ptr_procs_s* [ @ptr_const_string_procs, %cond.true ], [ null, %cond.false ]
  store %struct.gs_ptr_procs_s* %cond, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.bb.1, %sw.bb, %sw.default
  %19 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %20
}

; Function Attrs: nounwind uwtable
define internal void @cie_render1_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pcrd = alloca %struct.gs_cie_render_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_cie_render_s*
  store %struct.gs_cie_render_s* %2, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !30
  %7 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %7, i32 0, i32 3
  %8 = load i8*, i8** %client_data, align 8, !tbaa !7
  %9 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %8, %struct.gc_state_s* %9) #5
  %10 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %client_data1 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %10, i32 0, i32 3
  store i8* %call, i8** %client_data1, align 8, !tbaa !7
  %11 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %RenderTable = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %11, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable, i32 0, i32 0
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup, i32 0, i32 3
  %12 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !26
  %tobool = icmp ne %struct.gs_const_string_s* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gc_state_s* %13 to %struct.gc_procs_common_s**
  %15 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %14, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %15, i32 0, i32 0
  %16 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !30
  %17 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %RenderTable3 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %17, i32 0, i32 14
  %lookup4 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable3, i32 0, i32 0
  %table5 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup4, i32 0, i32 3
  %18 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table5, align 8, !tbaa !26
  %19 = bitcast %struct.gs_const_string_s* %18 to i8*
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %16(i8* %19, %struct.gc_state_s* %20) #5
  %21 = bitcast i8* %call6 to %struct.gs_const_string_s*
  %22 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %RenderTable7 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %22, i32 0, i32 14
  %lookup8 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable7, i32 0, i32 0
  %table9 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup8, i32 0, i32 3
  store %struct.gs_const_string_s* %21, %struct.gs_const_string_s** %table9, align 8, !tbaa !26
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gc_state_s* %23 to %struct.gc_procs_common_s**
  %25 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %24, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %25, i32 0, i32 2
  %26 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !32
  %27 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %27, i32 0, i32 7
  %proc_data = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR, i32 0, i32 2
  %28 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %26(%struct.gs_const_string_s* %proc_data, %struct.gc_state_s* %28) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %29 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @tpqr_identity(i32 %index, double %in, %struct.gs_cie_wbsd_s* %pwbsd, %struct.gs_cie_render_s* %pcrd, float* %out) #0 {
entry:
  %index.addr = alloca i32, align 4
  %in.addr = alloca double, align 8
  %pwbsd.addr = alloca %struct.gs_cie_wbsd_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %out.addr = alloca float*, align 8
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store double %in, double* %in.addr, align 8, !tbaa !33
  store %struct.gs_cie_wbsd_s* %pwbsd, %struct.gs_cie_wbsd_s** %pwbsd.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !33
  %conv = fptrunc double %0 to float
  %1 = load float*, float** %out.addr, align 8, !tbaa !1
  store float %conv, float* %1, align 4, !tbaa !35
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @tpqr_from_cache(i32 %index, double %in, %struct.gs_cie_wbsd_s* %pwbsd, %struct.gs_cie_render_s* %pcrd, float* %out) #0 {
entry:
  %index.addr = alloca i32, align 4
  %in.addr = alloca double, align 8
  %pwbsd.addr = alloca %struct.gs_cie_wbsd_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %out.addr = alloca float*, align 8
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store double %in, double* %in.addr, align 8, !tbaa !33
  store %struct.gs_cie_wbsd_s* %pwbsd, %struct.gs_cie_wbsd_s** %pwbsd.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !33
  %conv = fptrunc double %0 to float
  %1 = load float*, float** %out.addr, align 8, !tbaa !1
  store float %conv, float* %1, align 4, !tbaa !35
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @tpqr_lookup(i32 %index, double %in, %struct.gs_cie_wbsd_s* %pwbsd, %struct.gs_cie_render_s* %pcrd, float* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %in.addr = alloca double, align 8
  %pwbsd.addr = alloca %struct.gs_cie_wbsd_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %out.addr = alloca float*, align 8
  %dev_list = alloca %struct.gx_device_s**, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store double %in, double* %in.addr, align 8, !tbaa !33
  store %struct.gs_cie_wbsd_s* %pwbsd, %struct.gs_cie_wbsd_s** %pwbsd.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s*** %dev_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %call = call i32 @gs_lib_device_list(%struct.gx_device_s*** %dev_list, %struct.gs_memory_struct_type_s** null) #5
  store i32 %call, i32* %count, align 4, !tbaa !5
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gx_device_s**, %struct.gx_device_s*** %dev_list, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %9, i64 %idxprom
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx, align 8, !tbaa !1
  %call1 = call i8* @gs_devicename(%struct.gx_device_s* %10) #5
  %11 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %11, i32 0, i32 7
  %driver_name = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR, i32 0, i32 3
  %12 = load i8*, i8** %driver_name, align 8, !tbaa !36
  %call2 = call i32 @strcmp(i8* %call1, i8* %12) #6
  store i32 %call2, i32* %tmp, !tbaa !5
  %13 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %tmp, !tbaa !5
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %count, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %17, %18
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.end
  %19 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %20 to i64
  %21 = load %struct.gx_device_s**, %struct.gx_device_s*** %dev_list, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gx_device_s*, %struct.gx_device_s** %21, i64 %idxprom5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx6, align 8, !tbaa !1
  %call7 = call i32 @tpqr_do_lookup(%struct.gs_cie_render_s* %19, %struct.gx_device_s* %22) #5
  store i32 %call7, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.else:                                          ; preds = %for.end
  store i32 -21, i32* %code, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.4
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %23, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.8
  %25 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR12 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %25, i32 0, i32 7
  %proc = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR12, i32 0, i32 0
  %proc13 = bitcast {}** %proc to i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)**
  %26 = load i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %proc13, align 8, !tbaa !37
  %27 = load i32, i32* %index.addr, align 4, !tbaa !5
  %28 = load double, double* %in.addr, align 8, !tbaa !33
  %29 = load %struct.gs_cie_wbsd_s*, %struct.gs_cie_wbsd_s** %pwbsd.addr, align 8, !tbaa !1
  %30 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %31 = load float*, float** %out.addr, align 8, !tbaa !1
  %call14 = call i32 %26(i32 %27, double %28, %struct.gs_cie_wbsd_s* %29, %struct.gs_cie_render_s* %30, float* %31) #5
  store i32 %call14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct.gx_device_s*** %dev_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal float @render_identity(double %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !33
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !33
  %conv = fptrunc double %0 to float
  ret float %conv
}

; Function Attrs: nounwind uwtable
define internal float @EncodeLMN_cached_L(double %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !33
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !33
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 22
  %EncodeLMN = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 0
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %EncodeLMN, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 0
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #5
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @EncodeLMN_cached_M(double %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !33
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !33
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 22
  %EncodeLMN = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 0
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %EncodeLMN, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 1
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #5
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @EncodeLMN_cached_N(double %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !33
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !33
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 22
  %EncodeLMN = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 0
  %caches1 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %EncodeLMN, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches1, i32 0, i64 2
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #5
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @EncodeABC_cached_A(double %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !33
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !33
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 22
  %EncodeABC = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC, i32 0, i64 0
  %floats = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx, i32 0, i32 0
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #5
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @EncodeABC_cached_B(double %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !33
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !33
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 22
  %EncodeABC = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC, i32 0, i64 1
  %floats = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx, i32 0, i32 0
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #5
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @EncodeABC_cached_C(double %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store double %in, double* %in.addr, align 8, !tbaa !33
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load double, double* %in.addr, align 8, !tbaa !33
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 22
  %EncodeABC = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC, i32 0, i64 2
  %floats = getelementptr inbounds %struct.gx_cie_float_fixed_cache_s, %struct.gx_cie_float_fixed_cache_s* %arrayidx, i32 0, i32 0
  %call = call float @gs_cie_cached_value(double %0, %struct.cie_cache_floats_s* %floats) #5
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal signext i16 @render_table_identity(i8 zeroext %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store i8 %in, i8* %in.addr, align 1, !tbaa !38
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load i8, i8* %in.addr, align 1, !tbaa !38
  %conv = zext i8 %0 to i16
  %conv1 = sext i16 %conv to i32
  %shl = shl i32 %conv1, 7
  %1 = load i8, i8* %in.addr, align 1, !tbaa !38
  %conv2 = zext i8 %1 to i32
  %shr = ashr i32 %conv2, 1
  %add = add nsw i32 %shl, %shr
  %2 = load i8, i8* %in.addr, align 1, !tbaa !38
  %conv3 = zext i8 %2 to i32
  %shr4 = ashr i32 %conv3, 5
  %sub = sub nsw i32 %add, %shr4
  %conv5 = trunc i32 %sub to i16
  ret i16 %conv5
}

; Function Attrs: nounwind uwtable
define internal signext i16 @RTT_cached_0(i8 zeroext %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store i8 %in, i8* %in.addr, align 1, !tbaa !38
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load i8, i8* %in.addr, align 1, !tbaa !38
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call = call signext i16 @RTT_cached(i8 zeroext %0, %struct.gs_cie_render_s* %1, i32 0) #5
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define internal signext i16 @RTT_cached_1(i8 zeroext %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store i8 %in, i8* %in.addr, align 1, !tbaa !38
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load i8, i8* %in.addr, align 1, !tbaa !38
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call = call signext i16 @RTT_cached(i8 zeroext %0, %struct.gs_cie_render_s* %1, i32 1) #5
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define internal signext i16 @RTT_cached_2(i8 zeroext %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store i8 %in, i8* %in.addr, align 1, !tbaa !38
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load i8, i8* %in.addr, align 1, !tbaa !38
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call = call signext i16 @RTT_cached(i8 zeroext %0, %struct.gs_cie_render_s* %1, i32 2) #5
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define internal signext i16 @RTT_cached_3(i8 zeroext %in, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %in.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  store i8 %in, i8* %in.addr, align 1, !tbaa !38
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = load i8, i8* %in.addr, align 1, !tbaa !38
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call = call signext i16 @RTT_cached(i8 zeroext %0, %struct.gs_cie_render_s* %1, i32 3) #5
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_cie_render1_build(%struct.gs_cie_render_s** %ppcrd, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %ppcrd.addr = alloca %struct.gs_cie_render_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %pcrd = alloca %struct.gs_cie_render_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cie_render_s** %ppcrd, %struct.gs_cie_render_s*** %ppcrd.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !39
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_cie_render1 to %struct.gs_memory_struct_type_s*), i8* %4) #5
  %5 = bitcast i8* %call to %struct.gs_cie_render_s*
  store %struct.gs_cie_render_s* %5, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_cie_render_s* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.else
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %6, i32 0, i32 1
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !42
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc2 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %8, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc2, i32 0, i32 1
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %9 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %rc3 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %9, i32 0, i32 1
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc3, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !44
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  br label %if.end

if.end:                                           ; preds = %do.end.6
  br label %do.cond.7

do.cond.7:                                        ; preds = %if.end
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call9 = call i64 @gs_next_ids(%struct.gs_memory_s* %10, i32 1) #5
  %11 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %11, i32 0, i32 2
  store i64 %call9, i64* %id, align 8, !tbaa !45
  %12 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %12, i32 0, i32 3
  store i8* null, i8** %client_data, align 8, !tbaa !7
  %13 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %RenderTable = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %13, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable, i32 0, i32 0
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup, i32 0, i32 3
  store %struct.gs_const_string_s* null, %struct.gs_const_string_s** %table, align 8, !tbaa !26
  %14 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %14, i32 0, i32 0
  store i32 0, i32* %status, align 4, !tbaa !46
  %15 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd, align 8, !tbaa !1
  %16 = load %struct.gs_cie_render_s**, %struct.gs_cie_render_s*** %ppcrd.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %15, %struct.gs_cie_render_s** %16, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.8, %if.then
  %17 = bitcast %struct.gs_cie_render_s** %pcrd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_cie_render1_init_from(%struct.gs_memory_s* %mem, %struct.gs_cie_render_s* %pcrd, i8* %client_data, %struct.gs_cie_render_s* %pfrom_crd, %struct.gs_vector3_s* %WhitePoint, %struct.gs_vector3_s* %BlackPoint, %struct.gs_matrix3_s* %MatrixPQR, %struct.gs_range3_s* %RangePQR, %struct.gs_cie_transform_proc3_s* %TransformPQR, %struct.gs_matrix3_s* %MatrixLMN, %struct.gs_cie_render_proc3_s* %EncodeLMN, %struct.gs_range3_s* %RangeLMN, %struct.gs_matrix3_s* %MatrixABC, %struct.gs_cie_render_proc3_s* %EncodeABC, %struct.gs_range3_s* %RangeABC, %struct.gs_cie_render_table_s* %RenderTable) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %client_data.addr = alloca i8*, align 8
  %pfrom_crd.addr = alloca %struct.gs_cie_render_s*, align 8
  %WhitePoint.addr = alloca %struct.gs_vector3_s*, align 8
  %BlackPoint.addr = alloca %struct.gs_vector3_s*, align 8
  %MatrixPQR.addr = alloca %struct.gs_matrix3_s*, align 8
  %RangePQR.addr = alloca %struct.gs_range3_s*, align 8
  %TransformPQR.addr = alloca %struct.gs_cie_transform_proc3_s*, align 8
  %MatrixLMN.addr = alloca %struct.gs_matrix3_s*, align 8
  %EncodeLMN.addr = alloca %struct.gs_cie_render_proc3_s*, align 8
  %RangeLMN.addr = alloca %struct.gs_range3_s*, align 8
  %MatrixABC.addr = alloca %struct.gs_matrix3_s*, align 8
  %EncodeABC.addr = alloca %struct.gs_cie_render_proc3_s*, align 8
  %RangeABC.addr = alloca %struct.gs_range3_s*, align 8
  %RenderTable.addr = alloca %struct.gs_cie_render_table_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pfrom_crd, %struct.gs_cie_render_s** %pfrom_crd.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %WhitePoint, %struct.gs_vector3_s** %WhitePoint.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %BlackPoint, %struct.gs_vector3_s** %BlackPoint.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %MatrixPQR, %struct.gs_matrix3_s** %MatrixPQR.addr, align 8, !tbaa !1
  store %struct.gs_range3_s* %RangePQR, %struct.gs_range3_s** %RangePQR.addr, align 8, !tbaa !1
  store %struct.gs_cie_transform_proc3_s* %TransformPQR, %struct.gs_cie_transform_proc3_s** %TransformPQR.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %MatrixLMN, %struct.gs_matrix3_s** %MatrixLMN.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_proc3_s* %EncodeLMN, %struct.gs_cie_render_proc3_s** %EncodeLMN.addr, align 8, !tbaa !1
  store %struct.gs_range3_s* %RangeLMN, %struct.gs_range3_s** %RangeLMN.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %MatrixABC, %struct.gs_matrix3_s** %MatrixABC.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_proc3_s* %EncodeABC, %struct.gs_cie_render_proc3_s** %EncodeABC.addr, align 8, !tbaa !1
  store %struct.gs_range3_s* %RangeABC, %struct.gs_range3_s** %RangeABC.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_table_s* %RenderTable, %struct.gs_cie_render_table_s** %RenderTable.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i64 @gs_next_ids(%struct.gs_memory_s* %0, i32 1) #5
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 2
  store i64 %call, i64* %id, align 8, !tbaa !45
  %2 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %3 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data1 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %3, i32 0, i32 3
  store i8* %2, i8** %client_data1, align 8, !tbaa !7
  %4 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %4, i32 0, i32 4
  %WhitePoint2 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %5 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %WhitePoint.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_vector3_s* %WhitePoint2 to i8*
  %7 = bitcast %struct.gs_vector3_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 12, i32 4, i1 false), !tbaa.struct !47
  %8 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %points3 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %8, i32 0, i32 4
  %BlackPoint4 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points3, i32 0, i32 1
  %9 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %BlackPoint.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_vector3_s* %9, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %BlackPoint.addr, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_vector3_s* [ %10, %cond.true ], [ @BlackPoint_default, %cond.false ]
  %11 = bitcast %struct.gs_vector3_s* %BlackPoint4 to i8*
  %12 = bitcast %struct.gs_vector3_s* %cond to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 12, i32 4, i1 false), !tbaa.struct !47
  %13 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixPQR5 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %13, i32 0, i32 5
  %14 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %MatrixPQR.addr, align 8, !tbaa !1
  %tobool6 = icmp ne %struct.gs_matrix3_s* %14, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %15 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %MatrixPQR.addr, align 8, !tbaa !1
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi %struct.gs_matrix3_s* [ %15, %cond.true.7 ], [ @Matrix3_default, %cond.false.8 ]
  %16 = bitcast %struct.gs_matrix3_s* %MatrixPQR5 to i8*
  %17 = bitcast %struct.gs_matrix3_s* %cond10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 40, i32 4, i1 false), !tbaa.struct !48
  %18 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangePQR11 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %18, i32 0, i32 6
  %19 = load %struct.gs_range3_s*, %struct.gs_range3_s** %RangePQR.addr, align 8, !tbaa !1
  %tobool12 = icmp ne %struct.gs_range3_s* %19, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.9
  %20 = load %struct.gs_range3_s*, %struct.gs_range3_s** %RangePQR.addr, align 8, !tbaa !1
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end.9
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi %struct.gs_range3_s* [ %20, %cond.true.13 ], [ @Range3_default, %cond.false.14 ]
  %21 = bitcast %struct.gs_range3_s* %RangePQR11 to i8*
  %22 = bitcast %struct.gs_range3_s* %cond16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 24, i32 4, i1 false), !tbaa.struct !49
  %23 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR17 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %23, i32 0, i32 7
  %24 = load %struct.gs_cie_transform_proc3_s*, %struct.gs_cie_transform_proc3_s** %TransformPQR.addr, align 8, !tbaa !1
  %tobool18 = icmp ne %struct.gs_cie_transform_proc3_s* %24, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end.15
  %25 = load %struct.gs_cie_transform_proc3_s*, %struct.gs_cie_transform_proc3_s** %TransformPQR.addr, align 8, !tbaa !1
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.15
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi %struct.gs_cie_transform_proc3_s* [ %25, %cond.true.19 ], [ bitcast ({ i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }* @TransformPQR_default to %struct.gs_cie_transform_proc3_s*), %cond.false.20 ]
  %26 = bitcast %struct.gs_cie_transform_proc3_s* %TransformPQR17 to i8*
  %27 = bitcast %struct.gs_cie_transform_proc3_s* %cond22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 40, i32 8, i1 false), !tbaa.struct !50
  %28 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixLMN23 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %28, i32 0, i32 8
  %29 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %MatrixLMN.addr, align 8, !tbaa !1
  %tobool24 = icmp ne %struct.gs_matrix3_s* %29, null
  br i1 %tobool24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.21
  %30 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %MatrixLMN.addr, align 8, !tbaa !1
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.end.21
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi %struct.gs_matrix3_s* [ %30, %cond.true.25 ], [ @Matrix3_default, %cond.false.26 ]
  %31 = bitcast %struct.gs_matrix3_s* %MatrixLMN23 to i8*
  %32 = bitcast %struct.gs_matrix3_s* %cond28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 40, i32 4, i1 false), !tbaa.struct !48
  %33 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeLMN29 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %33, i32 0, i32 9
  %34 = load %struct.gs_cie_render_proc3_s*, %struct.gs_cie_render_proc3_s** %EncodeLMN.addr, align 8, !tbaa !1
  %tobool30 = icmp ne %struct.gs_cie_render_proc3_s* %34, null
  br i1 %tobool30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end.27
  %35 = load %struct.gs_cie_render_proc3_s*, %struct.gs_cie_render_proc3_s** %EncodeLMN.addr, align 8, !tbaa !1
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.end.27
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi %struct.gs_cie_render_proc3_s* [ %35, %cond.true.31 ], [ @Encode_default, %cond.false.32 ]
  %36 = bitcast %struct.gs_cie_render_proc3_s* %EncodeLMN29 to i8*
  %37 = bitcast %struct.gs_cie_render_proc3_s* %cond34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 24, i32 8, i1 false), !tbaa.struct !49
  %38 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pfrom_crd.addr, align 8, !tbaa !1
  %tobool35 = icmp ne %struct.gs_cie_render_s* %38, null
  br i1 %tobool35, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.33
  %39 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeLMN36 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %39, i32 0, i32 9
  %40 = bitcast %struct.gs_cie_render_proc3_s* %EncodeLMN36 to i8*
  %call37 = call i32 @memcmp(i8* %40, i8* bitcast (%struct.gs_cie_render_proc3_s* @EncodeLMN_from_cache to i8*), i64 24) #7
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %41 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %41, i32 0, i32 22
  %EncodeLMN39 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 0
  %42 = bitcast %struct.gx_cie_vector_cache3_s* %EncodeLMN39 to i8*
  %43 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pfrom_crd.addr, align 8, !tbaa !1
  %caches40 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %43, i32 0, i32 22
  %EncodeLMN41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches40, i32 0, i32 0
  %44 = bitcast %struct.gx_cie_vector_cache3_s* %EncodeLMN41 to i8*
  %call42 = call i8* @memcpy(i8* %42, i8* %44, i64 24840) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end.33
  %45 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangeLMN43 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %45, i32 0, i32 10
  %46 = load %struct.gs_range3_s*, %struct.gs_range3_s** %RangeLMN.addr, align 8, !tbaa !1
  %tobool44 = icmp ne %struct.gs_range3_s* %46, null
  br i1 %tobool44, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.end
  %47 = load %struct.gs_range3_s*, %struct.gs_range3_s** %RangeLMN.addr, align 8, !tbaa !1
  br label %cond.end.47

cond.false.46:                                    ; preds = %if.end
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.45
  %cond48 = phi %struct.gs_range3_s* [ %47, %cond.true.45 ], [ @Range3_default, %cond.false.46 ]
  %48 = bitcast %struct.gs_range3_s* %RangeLMN43 to i8*
  %49 = bitcast %struct.gs_range3_s* %cond48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 24, i32 4, i1 false), !tbaa.struct !49
  %50 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixABC49 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %50, i32 0, i32 11
  %51 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %MatrixABC.addr, align 8, !tbaa !1
  %tobool50 = icmp ne %struct.gs_matrix3_s* %51, null
  br i1 %tobool50, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.end.47
  %52 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %MatrixABC.addr, align 8, !tbaa !1
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end.47
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.51
  %cond54 = phi %struct.gs_matrix3_s* [ %52, %cond.true.51 ], [ @Matrix3_default, %cond.false.52 ]
  %53 = bitcast %struct.gs_matrix3_s* %MatrixABC49 to i8*
  %54 = bitcast %struct.gs_matrix3_s* %cond54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 40, i32 4, i1 false), !tbaa.struct !48
  %55 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeABC55 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %55, i32 0, i32 12
  %56 = load %struct.gs_cie_render_proc3_s*, %struct.gs_cie_render_proc3_s** %EncodeABC.addr, align 8, !tbaa !1
  %tobool56 = icmp ne %struct.gs_cie_render_proc3_s* %56, null
  br i1 %tobool56, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.end.53
  %57 = load %struct.gs_cie_render_proc3_s*, %struct.gs_cie_render_proc3_s** %EncodeABC.addr, align 8, !tbaa !1
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.end.53
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %cond60 = phi %struct.gs_cie_render_proc3_s* [ %57, %cond.true.57 ], [ @Encode_default, %cond.false.58 ]
  %58 = bitcast %struct.gs_cie_render_proc3_s* %EncodeABC55 to i8*
  %59 = bitcast %struct.gs_cie_render_proc3_s* %cond60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 24, i32 8, i1 false), !tbaa.struct !49
  %60 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pfrom_crd.addr, align 8, !tbaa !1
  %tobool61 = icmp ne %struct.gs_cie_render_s* %60, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.73

land.lhs.true.62:                                 ; preds = %cond.end.59
  %61 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeABC63 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %61, i32 0, i32 12
  %62 = bitcast %struct.gs_cie_render_proc3_s* %EncodeABC63 to i8*
  %call64 = call i32 @memcmp(i8* %62, i8* bitcast (%struct.gs_cie_render_proc3_s* @EncodeABC_from_cache to i8*), i64 24) #7
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.73, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.62
  %63 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches67 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %63, i32 0, i32 22
  %EncodeABC68 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches67, i32 0, i32 1
  %arraydecay = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC68, i32 0, i32 0
  %64 = bitcast %struct.gx_cie_float_fixed_cache_s* %arraydecay to i8*
  %65 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pfrom_crd.addr, align 8, !tbaa !1
  %caches69 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %65, i32 0, i32 22
  %EncodeABC70 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches69, i32 0, i32 1
  %arraydecay71 = getelementptr inbounds [3 x %struct.gx_cie_float_fixed_cache_s], [3 x %struct.gx_cie_float_fixed_cache_s]* %EncodeABC70, i32 0, i32 0
  %66 = bitcast %struct.gx_cie_float_fixed_cache_s* %arraydecay71 to i8*
  %call72 = call i8* @memcpy(i8* %64, i8* %66, i64 12528) #6
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.66, %land.lhs.true.62, %cond.end.59
  %67 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangeABC74 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %67, i32 0, i32 13
  %68 = load %struct.gs_range3_s*, %struct.gs_range3_s** %RangeABC.addr, align 8, !tbaa !1
  %tobool75 = icmp ne %struct.gs_range3_s* %68, null
  br i1 %tobool75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %if.end.73
  %69 = load %struct.gs_range3_s*, %struct.gs_range3_s** %RangeABC.addr, align 8, !tbaa !1
  br label %cond.end.78

cond.false.77:                                    ; preds = %if.end.73
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi %struct.gs_range3_s* [ %69, %cond.true.76 ], [ @Range3_default, %cond.false.77 ]
  %70 = bitcast %struct.gs_range3_s* %RangeABC74 to i8*
  %71 = bitcast %struct.gs_range3_s* %cond79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 24, i32 4, i1 false), !tbaa.struct !49
  %72 = load %struct.gs_cie_render_table_s*, %struct.gs_cie_render_table_s** %RenderTable.addr, align 8, !tbaa !1
  %tobool80 = icmp ne %struct.gs_cie_render_table_s* %72, null
  br i1 %tobool80, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %cond.end.78
  %73 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable82 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %73, i32 0, i32 14
  %74 = load %struct.gs_cie_render_table_s*, %struct.gs_cie_render_table_s** %RenderTable.addr, align 8, !tbaa !1
  %75 = bitcast %struct.gs_cie_render_table_s* %RenderTable82 to i8*
  %76 = bitcast %struct.gs_cie_render_table_s* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 64, i32 8, i1 false), !tbaa.struct !51
  %77 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pfrom_crd.addr, align 8, !tbaa !1
  %tobool83 = icmp ne %struct.gs_cie_render_s* %77, null
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.98

land.lhs.true.84:                                 ; preds = %if.then.81
  %78 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable85 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %78, i32 0, i32 14
  %T = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable85, i32 0, i32 1
  %79 = bitcast %struct.gs_cie_render_table_procs_s* %T to i8*
  %call86 = call i32 @memcmp(i8* %79, i8* bitcast (%struct.gs_cie_render_table_procs_s* @RenderTableT_from_cache to i8*), i64 32) #7
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.98, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.84
  %80 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches89 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %80, i32 0, i32 22
  %RenderTableT = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches89, i32 0, i32 2
  %arraydecay90 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %RenderTableT, i32 0, i32 0
  %81 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay90 to i8*
  %82 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pfrom_crd.addr, align 8, !tbaa !1
  %caches91 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %82, i32 0, i32 22
  %RenderTableT92 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches91, i32 0, i32 2
  %arraydecay93 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %RenderTableT92, i32 0, i32 0
  %83 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay93 to i8*
  %call94 = call i8* @memcpy(i8* %81, i8* %83, i64 8352) #6
  %84 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pfrom_crd.addr, align 8, !tbaa !1
  %caches95 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %84, i32 0, i32 22
  %RenderTableT_is_identity = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches95, i32 0, i32 3
  %85 = load i32, i32* %RenderTableT_is_identity, align 4, !tbaa !52
  %86 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches96 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %86, i32 0, i32 22
  %RenderTableT_is_identity97 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches96, i32 0, i32 3
  store i32 %85, i32* %RenderTableT_is_identity97, align 4, !tbaa !52
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.88, %land.lhs.true.84, %if.then.81
  br label %if.end.102

if.else:                                          ; preds = %cond.end.78
  %87 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable99 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %87, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable99, i32 0, i32 0
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup, i32 0, i32 3
  store %struct.gs_const_string_s* null, %struct.gs_const_string_s** %table, align 8, !tbaa !26
  %88 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable100 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %88, i32 0, i32 14
  %T101 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable100, i32 0, i32 1
  %89 = bitcast %struct.gs_cie_render_table_procs_s* %T101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* bitcast (%struct.gs_cie_render_table_procs_s* @RenderTableT_default to i8*), i64 32, i32 8, i1 false), !tbaa.struct !53
  br label %if.end.102

if.end.102:                                       ; preds = %if.else, %if.end.98
  %90 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %90, i32 0, i32 0
  store i32 0, i32* %status, align 4, !tbaa !46
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @gs_cie_render1_initialize(%struct.gs_memory_s* %mem, %struct.gs_cie_render_s* %pcrd, i8* %client_data, %struct.gs_vector3_s* %WhitePoint, %struct.gs_vector3_s* %BlackPoint, %struct.gs_matrix3_s* %MatrixPQR, %struct.gs_range3_s* %RangePQR, %struct.gs_cie_transform_proc3_s* %TransformPQR, %struct.gs_matrix3_s* %MatrixLMN, %struct.gs_cie_render_proc3_s* %EncodeLMN, %struct.gs_range3_s* %RangeLMN, %struct.gs_matrix3_s* %MatrixABC, %struct.gs_cie_render_proc3_s* %EncodeABC, %struct.gs_range3_s* %RangeABC, %struct.gs_cie_render_table_s* %RenderTable) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %client_data.addr = alloca i8*, align 8
  %WhitePoint.addr = alloca %struct.gs_vector3_s*, align 8
  %BlackPoint.addr = alloca %struct.gs_vector3_s*, align 8
  %MatrixPQR.addr = alloca %struct.gs_matrix3_s*, align 8
  %RangePQR.addr = alloca %struct.gs_range3_s*, align 8
  %TransformPQR.addr = alloca %struct.gs_cie_transform_proc3_s*, align 8
  %MatrixLMN.addr = alloca %struct.gs_matrix3_s*, align 8
  %EncodeLMN.addr = alloca %struct.gs_cie_render_proc3_s*, align 8
  %RangeLMN.addr = alloca %struct.gs_range3_s*, align 8
  %MatrixABC.addr = alloca %struct.gs_matrix3_s*, align 8
  %EncodeABC.addr = alloca %struct.gs_cie_render_proc3_s*, align 8
  %RangeABC.addr = alloca %struct.gs_range3_s*, align 8
  %RenderTable.addr = alloca %struct.gs_cie_render_table_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %WhitePoint, %struct.gs_vector3_s** %WhitePoint.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %BlackPoint, %struct.gs_vector3_s** %BlackPoint.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %MatrixPQR, %struct.gs_matrix3_s** %MatrixPQR.addr, align 8, !tbaa !1
  store %struct.gs_range3_s* %RangePQR, %struct.gs_range3_s** %RangePQR.addr, align 8, !tbaa !1
  store %struct.gs_cie_transform_proc3_s* %TransformPQR, %struct.gs_cie_transform_proc3_s** %TransformPQR.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %MatrixLMN, %struct.gs_matrix3_s** %MatrixLMN.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_proc3_s* %EncodeLMN, %struct.gs_cie_render_proc3_s** %EncodeLMN.addr, align 8, !tbaa !1
  store %struct.gs_range3_s* %RangeLMN, %struct.gs_range3_s** %RangeLMN.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %MatrixABC, %struct.gs_matrix3_s** %MatrixABC.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_proc3_s* %EncodeABC, %struct.gs_cie_render_proc3_s** %EncodeABC.addr, align 8, !tbaa !1
  store %struct.gs_range3_s* %RangeABC, %struct.gs_range3_s** %RangeABC.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_table_s* %RenderTable, %struct.gs_cie_render_table_s** %RenderTable.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %3 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %WhitePoint.addr, align 8, !tbaa !1
  %4 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %BlackPoint.addr, align 8, !tbaa !1
  %5 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %MatrixPQR.addr, align 8, !tbaa !1
  %6 = load %struct.gs_range3_s*, %struct.gs_range3_s** %RangePQR.addr, align 8, !tbaa !1
  %7 = load %struct.gs_cie_transform_proc3_s*, %struct.gs_cie_transform_proc3_s** %TransformPQR.addr, align 8, !tbaa !1
  %8 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %MatrixLMN.addr, align 8, !tbaa !1
  %9 = load %struct.gs_cie_render_proc3_s*, %struct.gs_cie_render_proc3_s** %EncodeLMN.addr, align 8, !tbaa !1
  %10 = load %struct.gs_range3_s*, %struct.gs_range3_s** %RangeLMN.addr, align 8, !tbaa !1
  %11 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %MatrixABC.addr, align 8, !tbaa !1
  %12 = load %struct.gs_cie_render_proc3_s*, %struct.gs_cie_render_proc3_s** %EncodeABC.addr, align 8, !tbaa !1
  %13 = load %struct.gs_range3_s*, %struct.gs_range3_s** %RangeABC.addr, align 8, !tbaa !1
  %14 = load %struct.gs_cie_render_table_s*, %struct.gs_cie_render_table_s** %RenderTable.addr, align 8, !tbaa !1
  %call = call i32 @gs_cie_render1_init_from(%struct.gs_memory_s* %0, %struct.gs_cie_render_s* %1, i8* %2, %struct.gs_cie_render_s* null, %struct.gs_vector3_s* %3, %struct.gs_vector3_s* %4, %struct.gs_matrix3_s* %5, %struct.gs_range3_s* %6, %struct.gs_cie_transform_proc3_s* %7, %struct.gs_matrix3_s* %8, %struct.gs_cie_render_proc3_s* %9, %struct.gs_range3_s* %10, %struct.gs_matrix3_s* %11, %struct.gs_cie_render_proc3_s* %12, %struct.gs_range3_s* %13, %struct.gs_cie_render_table_s* %14) #5
  ret i32 %call
}

declare i32 @gs_lib_device_list(%struct.gx_device_s***, %struct.gs_memory_struct_type_s**) #2

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gs_devicename(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @tpqr_do_lookup(%struct.gs_cie_render_s* %pcrd, %struct.gx_device_s* %dev_proto) #0 {
entry:
  %retval = alloca i32, align 4
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %dev_proto.addr = alloca %struct.gx_device_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %list = alloca %struct.gs_c_param_list_s, align 8
  %proc_addr = alloca %struct.gs_param_string_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev_proto, %struct.gx_device_s** %dev_proto.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %2, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = bitcast %struct.gs_c_param_list_s* %list to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #1
  %5 = bitcast %struct.gs_param_string_s* %proc_addr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_proto.addr, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i32 @gs_copydevice(%struct.gx_device_s** %dev, %struct.gx_device_s* %7, %struct.gs_memory_s* %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %9 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %list, %struct.gs_memory_s* %11) #5
  %12 = bitcast %struct.gs_c_param_list_s* %list to %struct.gs_param_list_s*
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %12, i32 0, i32 0
  %13 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !54
  %request = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %13, i32 0, i32 4
  %14 = load i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)** %request, align 8, !tbaa !56
  %15 = bitcast %struct.gs_c_param_list_s* %list to %struct.gs_param_list_s*
  %16 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %16, i32 0, i32 7
  %proc_name = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR, i32 0, i32 1
  %17 = load i8*, i8** %proc_name, align 8, !tbaa !58
  %call1 = call i32 %14(%struct.gs_param_list_s* %15, i8* %17) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %18, 0
  br i1 %cmp2, label %if.then.3, label %if.end.19

if.then.3:                                        ; preds = %if.end
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %20 = bitcast %struct.gs_c_param_list_s* %list to %struct.gs_param_list_s*
  %call4 = call i32 @gs_get_device_or_hw_params(%struct.gx_device_s* %19, %struct.gs_param_list_s* %20, i32 0) #5
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %21, 0
  br i1 %cmp5, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.then.3
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %list) #5
  %22 = bitcast %struct.gs_c_param_list_s* %list to %struct.gs_param_list_s*
  %23 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR7 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %23, i32 0, i32 7
  %proc_name8 = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR7, i32 0, i32 1
  %24 = load i8*, i8** %proc_name8, align 8, !tbaa !58
  %call9 = call i32 @param_read_string(%struct.gs_param_list_s* %22, i8* %24, %struct.gs_param_string_s* %proc_addr) #5
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %25, 0
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.6
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proc_addr, i32 0, i32 1
  %26 = load i32, i32* %size, align 4, !tbaa !59
  %conv = zext i32 %26 to i64
  %cmp11 = icmp eq i64 %conv, 8
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %27 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR14 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %27, i32 0, i32 7
  %proc = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR14, i32 0, i32 0
  %proc15 = bitcast {}** %proc to i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)**
  %28 = bitcast i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %proc15 to i8*
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proc_addr, i32 0, i32 0
  %29 = load i8*, i8** %data, align 8, !tbaa !61
  %call16 = call i8* @memcpy(i8* %28, i8* %29, i64 8) #6
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %if.then.6
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.3
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %list) #5
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 2
  %31 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !62
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %34 = bitcast %struct.gx_device_s* %33 to i8*
  call void %31(%struct.gs_memory_s* %32, i8* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.gs_param_string_s* %proc_addr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #1
  %38 = bitcast %struct.gs_c_param_list_s* %list to i8*
  call void @llvm.lifetime.end(i64 56, i8* %38) #1
  %39 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @gs_copydevice(%struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_memory_s*) #2

declare void @gs_c_param_list_write(%struct.gs_c_param_list_s*, %struct.gs_memory_s*) #2

declare i32 @gs_get_device_or_hw_params(%struct.gx_device_s*, %struct.gs_param_list_s*, i32) #2

declare void @gs_c_param_list_read(%struct.gs_c_param_list_s*) #2

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

declare void @gs_c_param_list_release(%struct.gs_c_param_list_s*) #2

declare float @gs_cie_cached_value(double, %struct.cie_cache_floats_s*) #2

; Function Attrs: nounwind uwtable
define internal signext i16 @RTT_cached(i8 zeroext %in, %struct.gs_cie_render_s* %pcrd, i32 %i) #0 {
entry:
  %in.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %i.addr = alloca i32, align 4
  store i8 %in, i8* %in.addr, align 1, !tbaa !38
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load i8, i8* %in.addr, align 1, !tbaa !38
  %conv = zext i8 %0 to i32
  %mul = mul nsw i32 %conv, 511
  %div = sdiv i32 %mul, 255
  %idxprom = sext i32 %div to i64
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %1 to i64
  %2 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %2, i32 0, i32 22
  %RenderTableT = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %RenderTableT, i32 0, i64 %idxprom1
  %fracs = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_fracs_s*
  %values = getelementptr inbounds %struct.cie_cache_fracs_s, %struct.cie_cache_fracs_s* %fracs, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [512 x i16], [512 x i16]* %values, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx2, align 2, !tbaa !63
  ret i16 %3
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !2, i64 40}
!8 = !{!"gs_cie_render_s", !3, i64 0, !9, i64 8, !10, i64 32, !2, i64 40, !11, i64 48, !14, i64 72, !15, i64 112, !16, i64 136, !14, i64 176, !18, i64 216, !15, i64 240, !14, i64 264, !18, i64 304, !15, i64 328, !19, i64 352, !15, i64 416, !15, i64 440, !14, i64 464, !3, i64 504, !14, i64 516, !12, i64 556, !12, i64 568, !22, i64 584}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gs_cie_wb_s", !12, i64 0, !12, i64 12}
!12 = !{!"gs_vector3_s", !13, i64 0, !13, i64 4, !13, i64 8}
!13 = !{!"float", !3, i64 0}
!14 = !{!"gs_matrix3_s", !12, i64 0, !12, i64 12, !12, i64 24, !6, i64 36}
!15 = !{!"gs_range3_s", !3, i64 0}
!16 = !{!"gs_cie_transform_proc3_s", !2, i64 0, !2, i64 8, !17, i64 16, !2, i64 32}
!17 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!18 = !{!"gs_cie_render_proc3_s", !3, i64 0}
!19 = !{!"gs_cie_render_table_s", !20, i64 0, !21, i64 32}
!20 = !{!"gx_color_lookup_table_s", !6, i64 0, !3, i64 4, !6, i64 20, !2, i64 24}
!21 = !{!"gs_cie_render_table_procs_s", !3, i64 0}
!22 = !{!"", !23, i64 0, !3, i64 24840, !3, i64 37368, !6, i64 45720}
!23 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!24 = !{!25, !2, i64 0}
!25 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!26 = !{!8, !2, i64 376}
!27 = !{!17, !2, i64 0}
!28 = !{!17, !6, i64 8}
!29 = !{!25, !6, i64 8}
!30 = !{!31, !2, i64 0}
!31 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!32 = !{!31, !2, i64 16}
!33 = !{!34, !34, i64 0}
!34 = !{!"double", !3, i64 0}
!35 = !{!13, !13, i64 0}
!36 = !{!8, !2, i64 168}
!37 = !{!8, !2, i64 136}
!38 = !{!3, !3, i64 0}
!39 = !{!40, !2, i64 72}
!40 = !{!"gs_memory_s", !2, i64 0, !41, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!41 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!42 = !{!8, !10, i64 8}
!43 = !{!8, !2, i64 16}
!44 = !{!8, !2, i64 24}
!45 = !{!8, !10, i64 32}
!46 = !{!8, !3, i64 0}
!47 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 4, !35}
!48 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 4, !35, i64 12, i64 4, !35, i64 16, i64 4, !35, i64 20, i64 4, !35, i64 24, i64 4, !35, i64 28, i64 4, !35, i64 32, i64 4, !35, i64 36, i64 4, !5}
!49 = !{i64 0, i64 24, !38}
!50 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !5, i64 32, i64 8, !1}
!51 = !{i64 0, i64 4, !5, i64 4, i64 16, !38, i64 20, i64 4, !5, i64 24, i64 8, !1, i64 32, i64 32, !38}
!52 = !{!8, !6, i64 46304}
!53 = !{i64 0, i64 32, !38}
!54 = !{!55, !2, i64 0}
!55 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!56 = !{!57, !2, i64 32}
!57 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!58 = !{!8, !2, i64 144}
!59 = !{!60, !6, i64 8}
!60 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!61 = !{!60, !2, i64 0}
!62 = !{!40, !2, i64 24}
!63 = !{!64, !64, i64 0}
!64 = !{!"short", !3, i64 0}
