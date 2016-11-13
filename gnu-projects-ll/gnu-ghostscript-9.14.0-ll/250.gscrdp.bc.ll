; ModuleID = './gscrdp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon, %struct.anon, %struct.anon, %struct.anon }
%struct.anon = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_vector3_s = type { float, float, float }
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.0 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
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
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gx_device_s = type opaque
%struct.encode_data_s = type { [1536 x float], [1536 x float], [2048 x float] }

@.str = private unnamed_addr constant [17 x i8] c"TransformPQRName\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"TransformPQRData\00", align 1
@TransformPQR_default = external constant %struct.gs_cie_transform_proc3_s, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"ColorRenderingType\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"WhitePoint\00", align 1
@BlackPoint_default = external constant %struct.gs_vector3_s, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"BlackPoint\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"MatrixPQR\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"RangePQR\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"MatrixLMN\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"EncodeLMNValues\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"RangeLMN\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"MatrixABC\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"EncodeABCValues\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"RangeABC\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"RenderTableSize\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"RenderTableTable\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"write_proc3\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"RenderTableTValues\00", align 1
@TransformPQR_lookup_proc_name = external constant i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, align 8
@Encode_default = external constant %struct.gs_cie_render_proc3_s, align 8
@EncodeLMN_from_data = internal constant %struct.gs_cie_render_proc3_s { [3 x float (double, %struct.gs_cie_render_s*)*] [float (double, %struct.gs_cie_render_s*)* @encode_lmn_0_from_data, float (double, %struct.gs_cie_render_s*)* @encode_lmn_1_from_data, float (double, %struct.gs_cie_render_s*)* @encode_lmn_2_from_data] }, align 8
@EncodeABC_from_data = internal constant %struct.gs_cie_render_proc3_s { [3 x float (double, %struct.gs_cie_render_s*)*] [float (double, %struct.gs_cie_render_s*)* @encode_abc_0_from_data, float (double, %struct.gs_cie_render_s*)* @encode_abc_1_from_data, float (double, %struct.gs_cie_render_s*)* @encode_abc_2_from_data] }, align 8
@.str.17 = private unnamed_addr constant [35 x i8] c"param_get_cie_render1(RenderTable)\00", align 1
@RenderTableT_default = external constant %struct.gs_cie_render_table_procs_s, align 8
@st_const_string_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.18 = private unnamed_addr constant [18 x i8] c"RenderTable table\00", align 1
@RenderTableT_from_data = internal constant %struct.gs_cie_render_table_procs_s { [4 x i16 (i8, %struct.gs_cie_render_s*)*] [i16 (i8, %struct.gs_cie_render_s*)* @render_table_t_0_from_data, i16 (i8, %struct.gs_cie_render_s*)* @render_table_t_1_from_data, i16 (i8, %struct.gs_cie_render_s*)* @render_table_t_2_from_data, i16 (i8, %struct.gs_cie_render_s*)* @render_table_t_3_from_data] }, align 8
@EncodeLMN_from_cache = external constant %struct.gs_cie_render_proc3_s, align 8
@EncodeABC_from_cache = external constant %struct.gs_cie_render_proc3_s, align 8
@RenderTableT_from_cache = external constant %struct.gs_cie_render_table_procs_s, align 8
@.str.19 = private unnamed_addr constant [13 x i8] c"write_floats\00", align 1
@Matrix3_default = external constant %struct.gs_matrix3_s, align 4
@Range3_default = external constant %struct.gs_range3_s, align 4

; Function Attrs: nounwind uwtable
define i32 @param_write_cie_render1(%struct.gs_param_list_s* %plist, i8* %key, %struct.gs_cie_render_s* %pcrd, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %dict = alloca %struct.gs_param_collection_s, align 8
  %code = alloca i32, align 4
  %dcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_collection_s* %dict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %dcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %dict, i32 0, i32 1
  store i32 20, i32* %size, align 4, !tbaa !5
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %3, i32 0, i32 0
  %4 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !8
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %4, i32 0, i32 1
  %5 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !10
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.gs_param_list_s* %6, i8* %7, %struct.gs_param_collection_s* %dict, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !12
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %dict, i32 0, i32 0
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !13
  %10 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @param_put_cie_render1(%struct.gs_param_list_s* %9, %struct.gs_cie_render_s* %10, %struct.gs_memory_s* %11) #5
  store i32 %call1, i32* %code, align 4, !tbaa !12
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %12, i32 0, i32 0
  %13 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs2, align 8, !tbaa !8
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %13, i32 0, i32 2
  %14 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !14
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call3 = call i32 %14(%struct.gs_param_list_s* %15, i8* %16, %struct.gs_param_collection_s* %dict) #5
  store i32 %call3, i32* %dcode, align 4, !tbaa !12
  %17 = load i32, i32* %code, align 4, !tbaa !12
  %cmp4 = icmp slt i32 %17, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %19 = load i32, i32* %dcode, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %20 = bitcast i32* %dcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.gs_param_collection_s* %dict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @param_put_cie_render1(%struct.gs_param_list_s* %plist, %struct.gs_cie_render_s* %pcrd, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %crd_type = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pn = alloca %struct.gs_param_string_s, align 8
  %pd = alloca %struct.gs_param_string_s, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %na = alloca i32, align 4
  %size94 = alloca i32*, align 8
  %table96 = alloca %struct.gs_param_string_s*, align 8
  %ia = alloca %struct.gs_param_int_array_s, align 8
  %sa = alloca %struct.gs_param_string_array_s, align 8
  %a = alloca i32, align 4
  %size154 = alloca i32, align 4
  %values = alloca float*, align 8
  %fa = alloca %struct.gs_param_float_array_s, align 8
  %i = alloca i32, align 4
  %scale = alloca double, align 8
  %j = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %crd_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 101, i32* %crd_type, align 4, !tbaa !12
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call = call i32 @gs_cie_render_sample(%struct.gs_cie_render_s* %2) #5
  store i32 %call, i32* %code, align 4, !tbaa !12
  %3 = load i32, i32* %code, align 4, !tbaa !12
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %5, i32 0, i32 7
  %proc_name = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR, i32 0, i32 1
  %6 = load i8*, i8** %proc_name, align 8, !tbaa !15
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %7 = bitcast %struct.gs_param_string_s* %pn to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.gs_param_string_s* %pd to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR2 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %9, i32 0, i32 7
  %proc_name3 = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR2, i32 0, i32 1
  %10 = load i8*, i8** %proc_name3, align 8, !tbaa !15
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pn, i32 0, i32 0
  store i8* %10, i8** %data, align 8, !tbaa !32
  %data4 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pn, i32 0, i32 0
  %11 = load i8*, i8** %data4, align 8, !tbaa !32
  %call5 = call i64 @strlen(i8* %11) #6
  %conv = trunc i64 %call5 to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pn, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !34
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pn, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !35
  %size6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pn, i32 0, i32 1
  %12 = load i32, i32* %size6, align 4, !tbaa !34
  %inc = add i32 %12, 1
  store i32 %inc, i32* %size6, align 4, !tbaa !34
  %13 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR7 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %13, i32 0, i32 7
  %proc_data = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR7, i32 0, i32 2
  %data8 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %proc_data, i32 0, i32 0
  %14 = load i8*, i8** %data8, align 8, !tbaa !36
  %data9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pd, i32 0, i32 0
  store i8* %14, i8** %data9, align 8, !tbaa !32
  %15 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR10 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %15, i32 0, i32 7
  %proc_data11 = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR10, i32 0, i32 2
  %size12 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %proc_data11, i32 0, i32 1
  %16 = load i32, i32* %size12, align 4, !tbaa !37
  %size13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pd, i32 0, i32 1
  store i32 %16, i32* %size13, align 4, !tbaa !34
  %persistent14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pd, i32 0, i32 2
  store i32 1, i32* %persistent14, align 4, !tbaa !35
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call15 = call i32 @param_write_name(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.gs_param_string_s* %pn) #5
  store i32 %call15, i32* %code, align 4, !tbaa !12
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.1
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call18 = call i32 @param_write_string(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), %struct.gs_param_string_s* %pd) #5
  store i32 %call18, i32* %code, align 4, !tbaa !12
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.then.1
  %19 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.21
  %20 = bitcast %struct.gs_param_string_s* %pd to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  %21 = bitcast %struct.gs_param_string_s* %pn to i8*
  call void @llvm.lifetime.end(i64 16, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.226 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29

if.else:                                          ; preds = %if.end
  %22 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR24 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %22, i32 0, i32 7
  %proc = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR24, i32 0, i32 0
  %23 = load i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %proc, align 8, !tbaa !38
  %24 = load i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** getelementptr inbounds (%struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* @TransformPQR_default, i32 0, i32 0), align 8, !tbaa !39
  %cmp25 = icmp ne i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)* %23, %24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end.28:                                        ; preds = %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %cleanup.cont
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call30 = call i32 @param_write_int(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32* %crd_type) #5
  store i32 %call30, i32* %code, align 4, !tbaa !12
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.37, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.end.29
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %27 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %27, i32 0, i32 4
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call34 = call i32 @write_vector3(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct.gs_vector3_s* %WhitePoint, %struct.gs_memory_s* %28) #5
  store i32 %call34, i32* %code, align 4, !tbaa !12
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.lhs.false.33, %if.end.29
  %29 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end.38:                                        ; preds = %lor.lhs.false.33
  %30 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %points39 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %30, i32 0, i32 4
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points39, i32 0, i32 1
  %31 = bitcast %struct.gs_vector3_s* %BlackPoint to i8*
  %call40 = call i32 @memcmp(i8* %31, i8* bitcast (%struct.gs_vector3_s* @BlackPoint_default to i8*), i64 12) #6
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %if.end.38
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %33 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %points43 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %33, i32 0, i32 4
  %BlackPoint44 = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points43, i32 0, i32 1
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call45 = call i32 @write_vector3(%struct.gs_param_list_s* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.gs_vector3_s* %BlackPoint44, %struct.gs_memory_s* %34) #5
  store i32 %call45, i32* %code, align 4, !tbaa !12
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.42
  %35 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end.49:                                        ; preds = %if.then.42
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.38
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %37 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %37, i32 0, i32 5
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call51 = call i32 @write_matrix3(%struct.gs_param_list_s* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixPQR, %struct.gs_memory_s* %38) #5
  store i32 %call51, i32* %code, align 4, !tbaa !12
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then.82, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.end.50
  %39 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %40 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangePQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %40, i32 0, i32 6
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call55 = call i32 @write_range3(%struct.gs_param_list_s* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct.gs_range3_s* %RangePQR, %struct.gs_memory_s* %41) #5
  store i32 %call55, i32* %code, align 4, !tbaa !12
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then.82, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.54
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %43 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %43, i32 0, i32 8
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call59 = call i32 @write_matrix3(%struct.gs_param_list_s* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixLMN, %struct.gs_memory_s* %44) #5
  store i32 %call59, i32* %code, align 4, !tbaa !12
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then.82, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.58
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %46 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %47 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %47, i32 0, i32 9
  %48 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %DomainLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %48, i32 0, i32 15
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call63 = call i32 @write_proc3(%struct.gs_param_list_s* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct.gs_cie_render_s* %46, %struct.gs_cie_render_proc3_s* %EncodeLMN, %struct.gs_range3_s* %DomainLMN, %struct.gs_memory_s* %49) #5
  store i32 %call63, i32* %code, align 4, !tbaa !12
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then.82, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.62
  %50 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %51 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangeLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %51, i32 0, i32 10
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call67 = call i32 @write_range3(%struct.gs_param_list_s* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.gs_range3_s* %RangeLMN, %struct.gs_memory_s* %52) #5
  store i32 %call67, i32* %code, align 4, !tbaa !12
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then.82, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.66
  %53 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %54 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %54, i32 0, i32 11
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call71 = call i32 @write_matrix3(%struct.gs_param_list_s* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixABC, %struct.gs_memory_s* %55) #5
  store i32 %call71, i32* %code, align 4, !tbaa !12
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then.82, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.70
  %56 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %57 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %58 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %58, i32 0, i32 12
  %59 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %DomainABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %59, i32 0, i32 16
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call75 = call i32 @write_proc3(%struct.gs_param_list_s* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), %struct.gs_cie_render_s* %57, %struct.gs_cie_render_proc3_s* %EncodeABC, %struct.gs_range3_s* %DomainABC, %struct.gs_memory_s* %60) #5
  store i32 %call75, i32* %code, align 4, !tbaa !12
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then.82, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.74
  %61 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %62 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %62, i32 0, i32 13
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call79 = call i32 @write_range3(%struct.gs_param_list_s* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct.gs_range3_s* %RangeABC, %struct.gs_memory_s* %63) #5
  store i32 %call79, i32* %code, align 4, !tbaa !12
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %lor.lhs.false.78, %lor.lhs.false.74, %lor.lhs.false.70, %lor.lhs.false.66, %lor.lhs.false.62, %lor.lhs.false.58, %lor.lhs.false.54, %if.end.50
  %64 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end.83:                                        ; preds = %lor.lhs.false.78
  %65 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %65, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable, i32 0, i32 0
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup, i32 0, i32 3
  %66 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !40
  %tobool84 = icmp ne %struct.gs_const_string_s* %66, null
  br i1 %tobool84, label %if.then.85, label %if.end.225

if.then.85:                                       ; preds = %if.end.83
  %67 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable86 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %68, i32 0, i32 14
  %lookup87 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable86, i32 0, i32 0
  %n88 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup87, i32 0, i32 0
  %69 = load i32, i32* %n88, align 4, !tbaa !41
  store i32 %69, i32* %n, align 4, !tbaa !12
  %70 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable89 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %71, i32 0, i32 14
  %lookup90 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable89, i32 0, i32 0
  %m91 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup90, i32 0, i32 2
  %72 = load i32, i32* %m91, align 4, !tbaa !42
  store i32 %72, i32* %m, align 4, !tbaa !12
  %73 = bitcast i32* %na to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable92 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %74, i32 0, i32 14
  %lookup93 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable92, i32 0, i32 0
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup93, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 0
  %75 = load i32, i32* %arrayidx, align 4, !tbaa !12
  store i32 %75, i32* %na, align 4, !tbaa !12
  %76 = bitcast i32** %size94 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %78 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !43
  %79 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %80 = load i32, i32* %n, align 4, !tbaa !12
  %add = add nsw i32 %80, 1
  %call95 = call i8* %78(%struct.gs_memory_s* %79, i32 %add, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)) #5
  %81 = bitcast i8* %call95 to i32*
  store i32* %81, i32** %size94, align 8, !tbaa !1
  %82 = bitcast %struct.gs_param_string_s** %table96 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs97 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 1
  %alloc_byte_array98 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs97, i32 0, i32 10
  %84 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array98, align 8, !tbaa !43
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %86 = load i32, i32* %na, align 4, !tbaa !12
  %call99 = call i8* %84(%struct.gs_memory_s* %85, i32 %86, i32 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #5
  %87 = bitcast i8* %call99 to %struct.gs_param_string_s*
  store %struct.gs_param_string_s* %87, %struct.gs_param_string_s** %table96, align 8, !tbaa !1
  %88 = bitcast %struct.gs_param_int_array_s* %ia to i8*
  call void @llvm.lifetime.start(i64 16, i8* %88) #1
  %89 = load i32*, i32** %size94, align 8, !tbaa !1
  %cmp100 = icmp eq i32* %89, null
  br i1 %cmp100, label %if.then.105, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %if.then.85
  %90 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %table96, align 8, !tbaa !1
  %cmp103 = icmp eq %struct.gs_param_string_s* %90, null
  br i1 %cmp103, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %lor.lhs.false.102, %if.then.85
  store i32 -25, i32* %code, align 4, !tbaa !12
  br label %if.end.118

if.else.106:                                      ; preds = %lor.lhs.false.102
  %91 = load i32*, i32** %size94, align 8, !tbaa !1
  %92 = bitcast i32* %91 to i8*
  %93 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable107 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %93, i32 0, i32 14
  %lookup108 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable107, i32 0, i32 0
  %dims109 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup108, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %dims109, i32 0, i32 0
  %94 = bitcast i32* %arraydecay to i8*
  %95 = load i32, i32* %n, align 4, !tbaa !12
  %conv110 = sext i32 %95 to i64
  %mul = mul i64 4, %conv110
  %call111 = call i8* @memcpy(i8* %92, i8* %94, i64 %mul) #7
  %96 = load i32, i32* %m, align 4, !tbaa !12
  %97 = load i32, i32* %n, align 4, !tbaa !12
  %idxprom = sext i32 %97 to i64
  %98 = load i32*, i32** %size94, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %98, i64 %idxprom
  store i32 %96, i32* %arrayidx112, align 4, !tbaa !12
  %99 = load i32*, i32** %size94, align 8, !tbaa !1
  %data113 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 0
  store i32* %99, i32** %data113, align 8, !tbaa !46
  %100 = load i32, i32* %n, align 4, !tbaa !12
  %add114 = add nsw i32 %100, 1
  %size115 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 1
  store i32 %add114, i32* %size115, align 4, !tbaa !48
  %persistent116 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 2
  store i32 1, i32* %persistent116, align 4, !tbaa !49
  %101 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call117 = call i32 @param_write_int_array(%struct.gs_param_list_s* %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), %struct.gs_param_int_array_s* %ia) #5
  store i32 %call117, i32* %code, align 4, !tbaa !12
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.106, %if.then.105
  %102 = load i32, i32* %code, align 4, !tbaa !12
  %cmp119 = icmp sge i32 %102, 0
  br i1 %cmp119, label %if.then.121, label %if.end.209

if.then.121:                                      ; preds = %if.end.118
  %103 = bitcast %struct.gs_param_string_array_s* %sa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %103) #1
  %104 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  store i32 0, i32* %a, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.121
  %105 = load i32, i32* %a, align 4, !tbaa !12
  %106 = load i32, i32* %na, align 4, !tbaa !12
  %cmp122 = icmp slt i32 %105, %106
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %107 = load i32, i32* %a, align 4, !tbaa !12
  %idxprom124 = sext i32 %107 to i64
  %108 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable125 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %108, i32 0, i32 14
  %lookup126 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable125, i32 0, i32 0
  %table127 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup126, i32 0, i32 3
  %109 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table127, align 8, !tbaa !40
  %arrayidx128 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %109, i64 %idxprom124
  %data129 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx128, i32 0, i32 0
  %110 = load i8*, i8** %data129, align 8, !tbaa !50
  %111 = load i32, i32* %a, align 4, !tbaa !12
  %idxprom130 = sext i32 %111 to i64
  %112 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %table96, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %112, i64 %idxprom130
  %data132 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx131, i32 0, i32 0
  store i8* %110, i8** %data132, align 8, !tbaa !32
  %113 = load i32, i32* %a, align 4, !tbaa !12
  %idxprom133 = sext i32 %113 to i64
  %114 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable134 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %114, i32 0, i32 14
  %lookup135 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable134, i32 0, i32 0
  %table136 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup135, i32 0, i32 3
  %115 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table136, align 8, !tbaa !40
  %arrayidx137 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %115, i64 %idxprom133
  %size138 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx137, i32 0, i32 1
  %116 = load i32, i32* %size138, align 4, !tbaa !51
  %117 = load i32, i32* %a, align 4, !tbaa !12
  %idxprom139 = sext i32 %117 to i64
  %118 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %table96, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %118, i64 %idxprom139
  %size141 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx140, i32 0, i32 1
  store i32 %116, i32* %size141, align 4, !tbaa !34
  %119 = load i32, i32* %a, align 4, !tbaa !12
  %idxprom142 = sext i32 %119 to i64
  %120 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %table96, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %120, i64 %idxprom142
  %persistent144 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx143, i32 0, i32 2
  store i32 1, i32* %persistent144, align 4, !tbaa !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %121 = load i32, i32* %a, align 4, !tbaa !12
  %inc145 = add nsw i32 %121, 1
  store i32 %inc145, i32* %a, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %122 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %table96, align 8, !tbaa !1
  %data146 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 0
  store %struct.gs_param_string_s* %122, %struct.gs_param_string_s** %data146, align 8, !tbaa !52
  %123 = load i32, i32* %na, align 4, !tbaa !12
  %size147 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 1
  store i32 %123, i32* %size147, align 4, !tbaa !54
  %persistent148 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 2
  store i32 1, i32* %persistent148, align 4, !tbaa !55
  %124 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call149 = call i32 @param_write_string_array(%struct.gs_param_list_s* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), %struct.gs_param_string_array_s* %sa) #5
  store i32 %call149, i32* %code, align 4, !tbaa !12
  %125 = load i32, i32* %code, align 4, !tbaa !12
  %cmp150 = icmp sge i32 %125, 0
  br i1 %cmp150, label %land.lhs.true, label %if.end.204

land.lhs.true:                                    ; preds = %for.end
  %126 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %126, i32 0, i32 22
  %RenderTableT_is_identity = getelementptr inbounds %struct.anon.0, %struct.anon.0* %caches, i32 0, i32 3
  %127 = load i32, i32* %RenderTableT_is_identity, align 4, !tbaa !56
  %tobool152 = icmp ne i32 %127, 0
  br i1 %tobool152, label %if.end.204, label %if.then.153

if.then.153:                                      ; preds = %land.lhs.true
  %128 = bitcast i32* %size154 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #1
  store i32 512, i32* %size154, align 4, !tbaa !12
  %129 = bitcast float** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs155 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %130, i32 0, i32 1
  %alloc_byte_array156 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs155, i32 0, i32 10
  %131 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array156, align 8, !tbaa !43
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %133 = load i32, i32* %size154, align 4, !tbaa !12
  %134 = load i32, i32* %m, align 4, !tbaa !12
  %mul157 = mul i32 %133, %134
  %call158 = call i8* %131(%struct.gs_memory_s* %132, i32 %mul157, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)) #5
  %135 = bitcast i8* %call158 to float*
  store float* %135, float** %values, align 8, !tbaa !1
  %136 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %136) #1
  %137 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  %138 = load float*, float** %values, align 8, !tbaa !1
  %cmp159 = icmp eq float* %138, null
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.then.153
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.162:                                       ; preds = %if.then.153
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.190, %if.end.162
  %139 = load i32, i32* %i, align 4, !tbaa !12
  %140 = load i32, i32* %m, align 4, !tbaa !12
  %cmp164 = icmp slt i32 %139, %140
  br i1 %cmp164, label %for.body.166, label %for.end.192

for.body.166:                                     ; preds = %for.cond.163
  %141 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %141) #1
  %142 = load i32, i32* %size154, align 4, !tbaa !12
  %sub = sub i32 %142, 1
  %conv167 = uitofp i32 %sub to double
  %div = fdiv double 2.550000e+02, %conv167
  store double %div, double* %scale, align 8, !tbaa !57
  %143 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  store i32 0, i32* %j, align 4, !tbaa !12
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.187, %for.body.166
  %144 = load i32, i32* %j, align 4, !tbaa !12
  %145 = load i32, i32* %size154, align 4, !tbaa !12
  %cmp169 = icmp ult i32 %144, %145
  br i1 %cmp169, label %for.body.171, label %for.end.189

for.body.171:                                     ; preds = %for.cond.168
  %146 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom172 = sext i32 %146 to i64
  %147 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable173 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %147, i32 0, i32 14
  %T = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable173, i32 0, i32 1
  %procs174 = getelementptr inbounds %struct.gs_cie_render_table_procs_s, %struct.gs_cie_render_table_procs_s* %T, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [4 x i16 (i8, %struct.gs_cie_render_s*)*], [4 x i16 (i8, %struct.gs_cie_render_s*)*]* %procs174, i32 0, i64 %idxprom172
  %148 = load i16 (i8, %struct.gs_cie_render_s*)*, i16 (i8, %struct.gs_cie_render_s*)** %arrayidx175, align 8, !tbaa !1
  %149 = load i32, i32* %j, align 4, !tbaa !12
  %conv176 = sitofp i32 %149 to double
  %150 = load double, double* %scale, align 8, !tbaa !57
  %mul177 = fmul double %conv176, %150
  %conv178 = fptoui double %mul177 to i8
  %151 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call179 = call signext i16 %148(i8 zeroext %conv178, %struct.gs_cie_render_s* %151) #5
  %conv180 = sext i16 %call179 to i32
  %conv181 = sitofp i32 %conv180 to float
  %div182 = fdiv float %conv181, 3.276000e+04
  %152 = load i32, i32* %i, align 4, !tbaa !12
  %153 = load i32, i32* %size154, align 4, !tbaa !12
  %mul183 = mul i32 %152, %153
  %154 = load i32, i32* %j, align 4, !tbaa !12
  %add184 = add i32 %mul183, %154
  %idxprom185 = zext i32 %add184 to i64
  %155 = load float*, float** %values, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds float, float* %155, i64 %idxprom185
  store float %div182, float* %arrayidx186, align 4, !tbaa !59
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.171
  %156 = load i32, i32* %j, align 4, !tbaa !12
  %inc188 = add nsw i32 %156, 1
  store i32 %inc188, i32* %j, align 4, !tbaa !12
  br label %for.cond.168

for.end.189:                                      ; preds = %for.cond.168
  %157 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.end.189
  %159 = load i32, i32* %i, align 4, !tbaa !12
  %inc191 = add nsw i32 %159, 1
  store i32 %inc191, i32* %i, align 4, !tbaa !12
  br label %for.cond.163

for.end.192:                                      ; preds = %for.cond.163
  %160 = load float*, float** %values, align 8, !tbaa !1
  %data193 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  store float* %160, float** %data193, align 8, !tbaa !60
  %161 = load i32, i32* %size154, align 4, !tbaa !12
  %162 = load i32, i32* %m, align 4, !tbaa !12
  %mul194 = mul i32 %161, %162
  %size195 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 1
  store i32 %mul194, i32* %size195, align 4, !tbaa !62
  %persistent196 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 2
  store i32 1, i32* %persistent196, align 4, !tbaa !63
  %163 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call197 = call i32 @param_write_float_array(%struct.gs_param_list_s* %163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), %struct.gs_param_float_array_s* %fa) #5
  store i32 %call197, i32* %code, align 4, !tbaa !12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.198

cleanup.198:                                      ; preds = %for.end.192, %if.then.161
  %164 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %165) #1
  %166 = bitcast float** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast i32* %size154 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %cleanup.dest.202 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.202, label %cleanup.205 [
    i32 0, label %cleanup.cont.203
  ]

cleanup.cont.203:                                 ; preds = %cleanup.198
  br label %if.end.204

if.end.204:                                       ; preds = %cleanup.cont.203, %land.lhs.true, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.205

cleanup.205:                                      ; preds = %if.end.204, %cleanup.198
  %168 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast %struct.gs_param_string_array_s* %sa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %169) #1
  %cleanup.dest.207 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.207, label %cleanup.217 [
    i32 0, label %cleanup.cont.208
  ]

cleanup.cont.208:                                 ; preds = %cleanup.205
  br label %if.end.209

if.end.209:                                       ; preds = %cleanup.cont.208, %if.end.118
  %170 = load i32, i32* %code, align 4, !tbaa !12
  %cmp210 = icmp slt i32 %170, 0
  br i1 %cmp210, label %if.then.212, label %if.end.216

if.then.212:                                      ; preds = %if.end.209
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs213 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %171, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs213, i32 0, i32 2
  %172 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %174 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %table96, align 8, !tbaa !1
  %175 = bitcast %struct.gs_param_string_s* %174 to i8*
  call void %172(%struct.gs_memory_s* %173, i8* %175, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #5
  %176 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs214 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %176, i32 0, i32 1
  %free_object215 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs214, i32 0, i32 2
  %177 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object215, align 8, !tbaa !64
  %178 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %179 = load i32*, i32** %size94, align 8, !tbaa !1
  %180 = bitcast i32* %179 to i8*
  call void %177(%struct.gs_memory_s* %178, i8* %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)) #5
  %181 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %181, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.217

if.end.216:                                       ; preds = %if.end.209
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.217

cleanup.217:                                      ; preds = %if.end.216, %if.then.212, %cleanup.205
  %182 = bitcast %struct.gs_param_int_array_s* %ia to i8*
  call void @llvm.lifetime.end(i64 16, i8* %182) #1
  %183 = bitcast %struct.gs_param_string_s** %table96 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast i32** %size94 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast i32* %na to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %cleanup.dest.223 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.223, label %cleanup.226 [
    i32 0, label %cleanup.cont.224
  ]

cleanup.cont.224:                                 ; preds = %cleanup.217
  br label %if.end.225

if.end.225:                                       ; preds = %cleanup.cont.224, %if.end.83
  %188 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %188, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

cleanup.226:                                      ; preds = %if.end.225, %cleanup.217, %if.then.82, %if.then.48, %if.then.37, %if.then.27, %cleanup, %if.then
  %189 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %crd_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = load i32, i32* %retval
  ret i32 %191
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_cie_render_sample(%struct.gs_cie_render_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @param_write_name(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @write_vector3(%struct.gs_param_list_s* %plist, i8* %key, %struct.gs_vector3_s* %pvec, %struct.gs_memory_s* %mem) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %pvec.addr = alloca %struct.gs_vector3_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %values = alloca [3 x float], align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %pvec, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast [3 x float]* %values to i8*
  call void @llvm.lifetime.start(i64 12, i8* %0) #1
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %values, i32 0, i32 0
  %1 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  call void @store_vector3(float* %arraydecay, %struct.gs_vector3_s* %1) #5
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [3 x float], [3 x float]* %values, i32 0, i32 0
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @write_floats(%struct.gs_param_list_s* %2, i8* %3, float* %arraydecay1, i32 3, %struct.gs_memory_s* %4) #5
  %5 = bitcast [3 x float]* %values to i8*
  call void @llvm.lifetime.end(i64 12, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @write_matrix3(%struct.gs_param_list_s* %plist, i8* %key, %struct.gs_matrix3_s* %pmat, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %pmat.addr = alloca %struct.gs_matrix3_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %values = alloca [9 x float], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %pmat, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast [9 x float]* %values to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %1 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_matrix3_s* %1 to i8*
  %call = call i32 @memcmp(i8* %2, i8* bitcast (%struct.gs_matrix3_s* @Matrix3_default to i8*), i64 40) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i32 0
  %3 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %3, i32 0, i32 0
  call void @store_vector3(float* %arraydecay, %struct.gs_vector3_s* %cu) #5
  %arraydecay1 = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i32 0
  %add.ptr = getelementptr inbounds float, float* %arraydecay1, i64 3
  %4 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %4, i32 0, i32 1
  call void @store_vector3(float* %add.ptr, %struct.gs_vector3_s* %cv) #5
  %arraydecay2 = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i32 0
  %add.ptr3 = getelementptr inbounds float, float* %arraydecay2, i64 6
  %5 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %5, i32 0, i32 2
  call void @store_vector3(float* %add.ptr3, %struct.gs_vector3_s* %cw) #5
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arraydecay4 = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i32 0
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call5 = call i32 @write_floats(%struct.gs_param_list_s* %6, i8* %7, float* %arraydecay4, i32 9, %struct.gs_memory_s* %8) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast [9 x float]* %values to i8*
  call void @llvm.lifetime.end(i64 36, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @write_range3(%struct.gs_param_list_s* %plist, i8* %key, %struct.gs_range3_s* %prange, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %prange.addr = alloca %struct.gs_range3_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %values = alloca [6 x float], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_range3_s* %prange, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast [6 x float]* %values to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_range3_s* %1 to i8*
  %call = call i32 @memcmp(i8* %2, i8* bitcast (%struct.gs_range3_s* @Range3_default to i8*), i64 24) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  %4 = load float, float* %rmin, align 4, !tbaa !65
  %arrayidx1 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 0
  store float %4, float* %arrayidx1, align 4, !tbaa !59
  %5 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges2 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges2, i32 0, i64 0
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx3, i32 0, i32 1
  %6 = load float, float* %rmax, align 4, !tbaa !67
  %arrayidx4 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 1
  store float %6, float* %arrayidx4, align 4, !tbaa !59
  %7 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges5 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %7, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges5, i32 0, i64 1
  %rmin7 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx6, i32 0, i32 0
  %8 = load float, float* %rmin7, align 4, !tbaa !65
  %arrayidx8 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 2
  store float %8, float* %arrayidx8, align 4, !tbaa !59
  %9 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges9 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %9, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges9, i32 0, i64 1
  %rmax11 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx10, i32 0, i32 1
  %10 = load float, float* %rmax11, align 4, !tbaa !67
  %arrayidx12 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 3
  store float %10, float* %arrayidx12, align 4, !tbaa !59
  %11 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges13 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %11, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges13, i32 0, i64 2
  %rmin15 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx14, i32 0, i32 0
  %12 = load float, float* %rmin15, align 4, !tbaa !65
  %arrayidx16 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 4
  store float %12, float* %arrayidx16, align 4, !tbaa !59
  %13 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges17 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %13, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges17, i32 0, i64 2
  %rmax19 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx18, i32 0, i32 1
  %14 = load float, float* %rmax19, align 4, !tbaa !67
  %arrayidx20 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 5
  store float %14, float* %arrayidx20, align 4, !tbaa !59
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i32 0
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call21 = call i32 @write_floats(%struct.gs_param_list_s* %15, i8* %16, float* %arraydecay, i32 6, %struct.gs_memory_s* %17) #5
  store i32 %call21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast [6 x float]* %values to i8*
  call void @llvm.lifetime.end(i64 24, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @write_proc3(%struct.gs_param_list_s* %plist, i8* %key, %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_proc3_s* %procs, %struct.gs_range3_s* %domain, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %procs.addr = alloca %struct.gs_cie_render_proc3_s*, align 8
  %domain.addr = alloca %struct.gs_range3_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %values = alloca float*, align 8
  %size = alloca i32, align 4
  %fa = alloca %struct.gs_param_float_array_s, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %base = alloca double, align 8
  %scale = alloca double, align 8
  %j = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store %struct.gs_cie_render_proc3_s* %procs, %struct.gs_cie_render_proc3_s** %procs.addr, align 8, !tbaa !1
  store %struct.gs_range3_s* %domain, %struct.gs_range3_s** %domain.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast float** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 512, i32* %size, align 4, !tbaa !12
  %2 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_cie_render_proc3_s*, %struct.gs_cie_render_proc3_s** %procs.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_cie_render_proc3_s* %4 to i8*
  %call = call i32 @memcmp(i8* %5, i8* bitcast (%struct.gs_cie_render_proc3_s* @Encode_default to i8*), i64 24) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 10
  %7 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !43
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load i32, i32* %size, align 4, !tbaa !12
  %mul = mul i32 %9, 3
  %call2 = call i8* %7(%struct.gs_memory_s* %8, i32 %mul, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)) #5
  %10 = bitcast i8* %call2 to float*
  store float* %10, float** %values, align 8, !tbaa !1
  %11 = load float*, float** %values, align 8, !tbaa !1
  %cmp = icmp eq float* %11, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %if.end.4
  %12 = load i32, i32* %i, align 4, !tbaa !12
  %cmp5 = icmp slt i32 %12, 3
  br i1 %cmp5, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %13 = bitcast double* %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gs_range3_s*, %struct.gs_range3_s** %domain.addr, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %15, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 %idxprom
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  %16 = load float, float* %rmin, align 4, !tbaa !65
  %conv = fpext float %16 to double
  store double %conv, double* %base, align 8, !tbaa !57
  %17 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom6 = sext i32 %18 to i64
  %19 = load %struct.gs_range3_s*, %struct.gs_range3_s** %domain.addr, align 8, !tbaa !1
  %ranges7 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %19, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges7, i32 0, i64 %idxprom6
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx8, i32 0, i32 1
  %20 = load float, float* %rmax, align 4, !tbaa !67
  %conv9 = fpext float %20 to double
  %21 = load double, double* %base, align 8, !tbaa !57
  %sub = fsub double %conv9, %21
  %22 = load i32, i32* %size, align 4, !tbaa !12
  %sub10 = sub i32 %22, 1
  %conv11 = uitofp i32 %sub10 to double
  %div = fdiv double %sub, %conv11
  store double %div, double* %scale, align 8, !tbaa !57
  %23 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 0, i32* %j, align 4, !tbaa !12
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %24 = load i32, i32* %j, align 4, !tbaa !12
  %25 = load i32, i32* %size, align 4, !tbaa !12
  %cmp13 = icmp ult i32 %24, %25
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %26 = load i32, i32* %i, align 4, !tbaa !12
  %idxprom16 = sext i32 %26 to i64
  %27 = load %struct.gs_cie_render_proc3_s*, %struct.gs_cie_render_proc3_s** %procs.addr, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gs_cie_render_proc3_s, %struct.gs_cie_render_proc3_s* %27, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x float (double, %struct.gs_cie_render_s*)*], [3 x float (double, %struct.gs_cie_render_s*)*]* %procs17, i32 0, i64 %idxprom16
  %28 = load float (double, %struct.gs_cie_render_s*)*, float (double, %struct.gs_cie_render_s*)** %arrayidx18, align 8, !tbaa !1
  %29 = load i32, i32* %j, align 4, !tbaa !12
  %conv19 = sitofp i32 %29 to double
  %30 = load double, double* %scale, align 8, !tbaa !57
  %mul20 = fmul double %conv19, %30
  %31 = load double, double* %base, align 8, !tbaa !57
  %add = fadd double %mul20, %31
  %32 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call21 = call float %28(double %add, %struct.gs_cie_render_s* %32) #5
  %33 = load i32, i32* %i, align 4, !tbaa !12
  %34 = load i32, i32* %size, align 4, !tbaa !12
  %mul22 = mul i32 %33, %34
  %35 = load i32, i32* %j, align 4, !tbaa !12
  %add23 = add i32 %mul22, %35
  %idxprom24 = zext i32 %add23 to i64
  %36 = load float*, float** %values, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds float, float* %36, i64 %idxprom24
  store float %call21, float* %arrayidx25, align 4, !tbaa !59
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %37 = load i32, i32* %j, align 4, !tbaa !12
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %j, align 4, !tbaa !12
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %38 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast double* %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %41 = load i32, i32* %i, align 4, !tbaa !12
  %inc27 = add nsw i32 %41, 1
  store i32 %inc27, i32* %i, align 4, !tbaa !12
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %42 = load float*, float** %values, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  store float* %42, float** %data, align 8, !tbaa !60
  %43 = load i32, i32* %size, align 4, !tbaa !12
  %mul29 = mul i32 %43, 3
  %size30 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 1
  store i32 %mul29, i32* %size30, align 4, !tbaa !62
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !63
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call31 = call i32 @param_write_float_array(%struct.gs_param_list_s* %44, i8* %45, %struct.gs_param_float_array_s* %fa) #5
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.28, %if.then.3, %if.then
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %47) #1
  %48 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast float** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @param_write_int_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_int_array_s*) #2

declare i32 @param_write_string_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #2

declare i32 @param_write_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_cie_render1_param_initialize(%struct.gs_cie_render_s* %pcrd, %struct.gs_param_list_s* %plist, i8* %key, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %dict = alloca %struct.gs_param_collection_s, align 8
  %code = alloca i32, align 4
  %dcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_param_collection_s* %dict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %2, i32 0, i32 0
  %3 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !8
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %3, i32 0, i32 1
  %4 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !10
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct.gs_param_list_s* %5, i8* %6, %struct.gs_param_collection_s* %dict, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !12
  %7 = bitcast i32* %dcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %code, align 4, !tbaa !12
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %dict, i32 0, i32 0
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !13
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1 = call i32 @param_get_cie_render1(%struct.gs_cie_render_s* %10, %struct.gs_param_list_s* %11, %struct.gx_device_s* %12) #5
  store i32 %call1, i32* %code, align 4, !tbaa !12
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %13, i32 0, i32 0
  %14 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs2, align 8, !tbaa !8
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %14, i32 0, i32 2
  %15 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !14
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call3 = call i32 %15(%struct.gs_param_list_s* %16, i8* %17, %struct.gs_param_collection_s* %dict) #5
  store i32 %call3, i32* %dcode, align 4, !tbaa !12
  %18 = load i32, i32* %code, align 4, !tbaa !12
  %cmp4 = icmp slt i32 %18, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %20 = load i32, i32* %dcode, align 4, !tbaa !12
  %cmp7 = icmp slt i32 %20, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %21 = load i32, i32* %dcode, align 4, !tbaa !12
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.6
  %22 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call10 = call i32 @gs_cie_render_init(%struct.gs_cie_render_s* %22) #5
  %23 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call11 = call i32 @gs_cie_render_sample(%struct.gs_cie_render_s* %23) #5
  %24 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call12 = call i32 @gs_cie_render_complete(%struct.gs_cie_render_s* %24) #5
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then.5, %if.then
  %25 = bitcast i32* %dcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.gs_param_collection_s* %dict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @param_get_cie_render1(%struct.gs_cie_render_s* %pcrd, %struct.gs_param_list_s* %plist, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data = alloca %struct.encode_data_s, align 4
  %rt_size = alloca %struct.gs_param_int_array_s, align 8
  %crd_type = alloca i32, align 4
  %code = alloca i32, align 4
  %code_lmn = alloca i32, align 4
  %code_abc = alloca i32, align 4
  %code_rt = alloca i32, align 4
  %code_t = alloca i32, align 4
  %pname = alloca %struct.gs_param_string_s, align 8
  %pdata = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  %rt_values = alloca %struct.gs_param_string_array_s, align 8
  %table103 = alloca %struct.gs_const_string_s*, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s* %data to i8*
  call void @llvm.lifetime.start(i64 20480, i8* %0) #1
  %1 = bitcast %struct.gs_param_int_array_s* %rt_size to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %crd_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code_lmn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code_abc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %code_rt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %code_t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gs_param_string_s* %pname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast %struct.gs_param_string_s* %pdata to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %status = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %10, i32 0, i32 0
  store i32 0, i32* %status, align 4, !tbaa !68
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32* %crd_type) #5
  store i32 %call, i32* %code, align 4, !tbaa !12
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load i32, i32* %crd_type, align 4, !tbaa !12
  %cmp1 = icmp ne i32 %12, 101
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %points = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %14, i32 0, i32 4
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %call3 = call i32 @read_vector3(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct.gs_vector3_s* %WhitePoint, %struct.gs_vector3_s* null) #5
  store i32 %call3, i32* %code, align 4, !tbaa !12
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.2
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %points6 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %16, i32 0, i32 4
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points6, i32 0, i32 1
  %call7 = call i32 @read_vector3(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.gs_vector3_s* %BlackPoint, %struct.gs_vector3_s* @BlackPoint_default) #5
  store i32 %call7, i32* %code, align 4, !tbaa !12
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %18, i32 0, i32 5
  %call10 = call i32 @read_matrix3(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixPQR) #5
  store i32 %call10, i32* %code, align 4, !tbaa !12
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %20 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangePQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %20, i32 0, i32 6
  %call13 = call i32 @read_range3(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct.gs_range3_s* %RangePQR) #5
  store i32 %call13, i32* %code, align 4, !tbaa !12
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %22 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %22, i32 0, i32 8
  %call16 = call i32 @read_matrix3(%struct.gs_param_list_s* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixLMN) #5
  store i32 %call16, i32* %code, align 4, !tbaa !12
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %lmn = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %data, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1536 x float], [1536 x float]* %lmn, i32 0, i32 0
  %call19 = call i32 @read_proc3(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), float* %arraydecay) #5
  store i32 %call19, i32* %code, align 4, !tbaa !12
  store i32 %call19, i32* %code_lmn, align 4, !tbaa !12
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %25 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangeLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %25, i32 0, i32 10
  %call22 = call i32 @read_range3(%struct.gs_param_list_s* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.gs_range3_s* %RangeLMN) #5
  store i32 %call22, i32* %code, align 4, !tbaa !12
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.21
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %27 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %MatrixABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %27, i32 0, i32 11
  %call25 = call i32 @read_matrix3(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct.gs_matrix3_s* %MatrixABC) #5
  store i32 %call25, i32* %code, align 4, !tbaa !12
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %abc = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %data, i32 0, i32 1
  %arraydecay28 = getelementptr inbounds [1536 x float], [1536 x float]* %abc, i32 0, i32 0
  %call29 = call i32 @read_proc3(%struct.gs_param_list_s* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), float* %arraydecay28) #5
  store i32 %call29, i32* %code, align 4, !tbaa !12
  store i32 %call29, i32* %code_abc, align 4, !tbaa !12
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.27
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %30 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %30, i32 0, i32 13
  %call32 = call i32 @read_range3(%struct.gs_param_list_s* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct.gs_range3_s* %RangeABC) #5
  store i32 %call32, i32* %code, align 4, !tbaa !12
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.31, %lor.lhs.false.27, %lor.lhs.false.24, %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false.5, %lor.lhs.false.2, %lor.lhs.false, %entry
  %31 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

if.end:                                           ; preds = %lor.lhs.false.31
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call34 = call i32 @param_read_string(%struct.gs_param_list_s* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.gs_param_string_s* %pname) #5
  store i32 %call34, i32* %code, align 4, !tbaa !12
  switch i32 %call34, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.35
  ]

sw.default:                                       ; preds = %if.end
  %33 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

sw.bb:                                            ; preds = %if.end
  %34 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %34, i32 0, i32 7
  %35 = bitcast %struct.gs_cie_transform_proc3_s* %TransformPQR to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast (%struct.gs_cie_transform_proc3_s* @TransformPQR_default to i8*), i64 40, i32 8, i1 false), !tbaa.struct !69
  br label %sw.epilog.66

sw.bb.35:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pname, i32 0, i32 1
  %36 = load i32, i32* %size, align 4, !tbaa !34
  %cmp36 = icmp ult i32 %36, 1
  br i1 %cmp36, label %if.then.42, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %sw.bb.35
  %size38 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pname, i32 0, i32 1
  %37 = load i32, i32* %size38, align 4, !tbaa !34
  %sub = sub i32 %37, 1
  %idxprom = zext i32 %sub to i64
  %data39 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pname, i32 0, i32 0
  %38 = load i8*, i8** %data39, align 8, !tbaa !32
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %idxprom
  %39 = load i8, i8* %arrayidx, align 1, !tbaa !70
  %conv = zext i8 %39 to i32
  %cmp40 = icmp ne i32 %conv, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false.37, %sw.bb.35
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

if.end.43:                                        ; preds = %lor.lhs.false.37
  %40 = load i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** @TransformPQR_lookup_proc_name, align 8, !tbaa !1
  %41 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR44 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %41, i32 0, i32 7
  %proc = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR44, i32 0, i32 0
  store i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)* %40, i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)** %proc, align 8, !tbaa !38
  %data45 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pname, i32 0, i32 0
  %42 = load i8*, i8** %data45, align 8, !tbaa !32
  %43 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR46 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %43, i32 0, i32 7
  %proc_name = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR46, i32 0, i32 1
  store i8* %42, i8** %proc_name, align 8, !tbaa !15
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call47 = call i32 @param_read_string(%struct.gs_param_list_s* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), %struct.gs_param_string_s* %pdata) #5
  store i32 %call47, i32* %code, align 4, !tbaa !12
  switch i32 %call47, label %sw.default.48 [
    i32 1, label %sw.bb.49
    i32 0, label %sw.bb.55
  ]

sw.default.48:                                    ; preds = %if.end.43
  %45 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

sw.bb.49:                                         ; preds = %if.end.43
  %46 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR50 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %46, i32 0, i32 7
  %proc_data = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR50, i32 0, i32 2
  %data51 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %proc_data, i32 0, i32 0
  store i8* null, i8** %data51, align 8, !tbaa !36
  %47 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR52 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %47, i32 0, i32 7
  %proc_data53 = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR52, i32 0, i32 2
  %size54 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %proc_data53, i32 0, i32 1
  store i32 0, i32* %size54, align 4, !tbaa !37
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.43
  %data56 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pdata, i32 0, i32 0
  %48 = load i8*, i8** %data56, align 8, !tbaa !32
  %49 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR57 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %49, i32 0, i32 7
  %proc_data58 = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR57, i32 0, i32 2
  %data59 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %proc_data58, i32 0, i32 0
  store i8* %48, i8** %data59, align 8, !tbaa !36
  %size60 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pdata, i32 0, i32 1
  %50 = load i32, i32* %size60, align 4, !tbaa !34
  %51 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR61 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %51, i32 0, i32 7
  %proc_data62 = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR61, i32 0, i32 2
  %size63 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %proc_data62, i32 0, i32 1
  store i32 %50, i32* %size63, align 4, !tbaa !37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.55, %sw.bb.49
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call64 = call i8* @gs_devicename(%struct.gx_device_s* %52) #5
  %53 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %TransformPQR65 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %53, i32 0, i32 7
  %driver_name = getelementptr inbounds %struct.gs_cie_transform_proc3_s, %struct.gs_cie_transform_proc3_s* %TransformPQR65, i32 0, i32 3
  store i8* %call64, i8** %driver_name, align 8, !tbaa !71
  br label %sw.epilog.66

sw.epilog.66:                                     ; preds = %sw.epilog, %sw.bb
  %54 = bitcast %struct.encode_data_s* %data to i8*
  %55 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %55, i32 0, i32 3
  store i8* %54, i8** %client_data, align 8, !tbaa !72
  %56 = load i32, i32* %code_lmn, align 4, !tbaa !12
  %cmp67 = icmp sgt i32 %56, 0
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %sw.epilog.66
  %57 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %57, i32 0, i32 9
  %58 = bitcast %struct.gs_cie_render_proc3_s* %EncodeLMN to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* bitcast (%struct.gs_cie_render_proc3_s* @Encode_default to i8*), i64 24, i32 8, i1 false), !tbaa.struct !73
  br label %if.end.71

if.else:                                          ; preds = %sw.epilog.66
  %59 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeLMN70 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %59, i32 0, i32 9
  %60 = bitcast %struct.gs_cie_render_proc3_s* %EncodeLMN70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* bitcast (%struct.gs_cie_render_proc3_s* @EncodeLMN_from_data to i8*), i64 24, i32 8, i1 false), !tbaa.struct !73
  br label %if.end.71

if.end.71:                                        ; preds = %if.else, %if.then.69
  %61 = load i32, i32* %code_abc, align 4, !tbaa !12
  %cmp72 = icmp sgt i32 %61, 0
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.end.71
  %62 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %62, i32 0, i32 12
  %63 = bitcast %struct.gs_cie_render_proc3_s* %EncodeABC to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* bitcast (%struct.gs_cie_render_proc3_s* @Encode_default to i8*), i64 24, i32 8, i1 false), !tbaa.struct !73
  br label %if.end.77

if.else.75:                                       ; preds = %if.end.71
  %64 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeABC76 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %64, i32 0, i32 12
  %65 = bitcast %struct.gs_cie_render_proc3_s* %EncodeABC76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* bitcast (%struct.gs_cie_render_proc3_s* @EncodeABC_from_data to i8*), i64 24, i32 8, i1 false), !tbaa.struct !73
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.74
  %66 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call78 = call i32 @param_read_int_array(%struct.gs_param_list_s* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), %struct.gs_param_int_array_s* %rt_size) #5
  store i32 %call78, i32* %code, align 4, !tbaa !12
  store i32 %call78, i32* %code_rt, align 4, !tbaa !12
  %67 = load i32, i32* %code, align 4, !tbaa !12
  %cmp79 = icmp eq i32 %67, 1
  br i1 %cmp79, label %if.then.81, label %if.else.93

if.then.81:                                       ; preds = %if.end.77
  %68 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %68, i32 0, i32 14
  %lookup = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable, i32 0, i32 0
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup, i32 0, i32 3
  %69 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !40
  %tobool = icmp ne %struct.gs_const_string_s* %69, null
  br i1 %tobool, label %if.then.82, label %if.end.91

if.then.82:                                       ; preds = %if.then.81
  %70 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %70, i32 0, i32 1
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !74
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %72 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %73 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %rc83 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %73, i32 0, i32 1
  %memory84 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc83, i32 0, i32 1
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory84, align 8, !tbaa !74
  %75 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable85 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %75, i32 0, i32 14
  %lookup86 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable85, i32 0, i32 0
  %table87 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup86, i32 0, i32 3
  %76 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table87, align 8, !tbaa !40
  %77 = bitcast %struct.gs_const_string_s* %76 to i8*
  call void %72(%struct.gs_memory_s* %74, i8* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0)) #5
  %78 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable88 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %78, i32 0, i32 14
  %lookup89 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable88, i32 0, i32 0
  %table90 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup89, i32 0, i32 3
  store %struct.gs_const_string_s* null, %struct.gs_const_string_s** %table90, align 8, !tbaa !40
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.82, %if.then.81
  %79 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable92 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %79, i32 0, i32 14
  %T = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable92, i32 0, i32 1
  %80 = bitcast %struct.gs_cie_render_table_procs_s* %T to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* bitcast (%struct.gs_cie_render_table_procs_s* @RenderTableT_default to i8*), i64 32, i32 8, i1 false), !tbaa.struct !75
  store i32 1, i32* %code_t, align 4, !tbaa !12
  br label %if.end.243

if.else.93:                                       ; preds = %if.end.77
  %81 = load i32, i32* %code, align 4, !tbaa !12
  %cmp94 = icmp slt i32 %81, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.else.93
  %82 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

if.else.97:                                       ; preds = %if.else.93
  %size98 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %rt_size, i32 0, i32 1
  %83 = load i32, i32* %size98, align 4, !tbaa !48
  %cmp99 = icmp ne i32 %83, 4
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %if.else.97
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

if.else.102:                                      ; preds = %if.else.97
  %84 = bitcast %struct.gs_param_string_array_s* %rt_values to i8*
  call void @llvm.lifetime.start(i64 16, i8* %84) #1
  %85 = bitcast %struct.gs_const_string_s** %table103 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  %86 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  store i32 0, i32* %j, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.102
  %89 = load i32, i32* %j, align 4, !tbaa !12
  %size104 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %rt_size, i32 0, i32 1
  %90 = load i32, i32* %size104, align 4, !tbaa !48
  %cmp105 = icmp ult i32 %89, %90
  br i1 %cmp105, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %91 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom107 = sext i32 %91 to i64
  %data108 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %rt_size, i32 0, i32 0
  %92 = load i32*, i32** %data108, align 8, !tbaa !46
  %arrayidx109 = getelementptr inbounds i32, i32* %92, i64 %idxprom107
  %93 = load i32, i32* %arrayidx109, align 4, !tbaa !12
  %cmp110 = icmp slt i32 %93, 1
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %for.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.113:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.113
  %94 = load i32, i32* %j, align 4, !tbaa !12
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %j, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %95 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call114 = call i32 @param_read_string_array(%struct.gs_param_list_s* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), %struct.gs_param_string_array_s* %rt_values) #5
  store i32 %call114, i32* %code, align 4, !tbaa !12
  %96 = load i32, i32* %code, align 4, !tbaa !12
  %cmp115 = icmp slt i32 %96, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %for.end
  %97 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %97, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.118:                                       ; preds = %for.end
  %98 = load i32, i32* %code, align 4, !tbaa !12
  %cmp119 = icmp sgt i32 %98, 0
  br i1 %cmp119, label %if.then.127, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.end.118
  %size122 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %rt_values, i32 0, i32 1
  %99 = load i32, i32* %size122, align 4, !tbaa !54
  %data123 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %rt_size, i32 0, i32 0
  %100 = load i32*, i32** %data123, align 8, !tbaa !46
  %arrayidx124 = getelementptr inbounds i32, i32* %100, i64 0
  %101 = load i32, i32* %arrayidx124, align 4, !tbaa !12
  %cmp125 = icmp ne i32 %99, %101
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %lor.lhs.false.121, %if.end.118
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.128:                                       ; preds = %lor.lhs.false.121
  store i32 0, i32* %j, align 4, !tbaa !12
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.149, %if.end.128
  %102 = load i32, i32* %j, align 4, !tbaa !12
  %size130 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %rt_values, i32 0, i32 1
  %103 = load i32, i32* %size130, align 4, !tbaa !54
  %cmp131 = icmp ult i32 %102, %103
  br i1 %cmp131, label %for.body.133, label %for.end.151

for.body.133:                                     ; preds = %for.cond.129
  %104 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom134 = sext i32 %104 to i64
  %data135 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %rt_values, i32 0, i32 0
  %105 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data135, align 8, !tbaa !52
  %arrayidx136 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %105, i64 %idxprom134
  %size137 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx136, i32 0, i32 1
  %106 = load i32, i32* %size137, align 4, !tbaa !34
  %data138 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %rt_size, i32 0, i32 0
  %107 = load i32*, i32** %data138, align 8, !tbaa !46
  %arrayidx139 = getelementptr inbounds i32, i32* %107, i64 1
  %108 = load i32, i32* %arrayidx139, align 4, !tbaa !12
  %data140 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %rt_size, i32 0, i32 0
  %109 = load i32*, i32** %data140, align 8, !tbaa !46
  %arrayidx141 = getelementptr inbounds i32, i32* %109, i64 2
  %110 = load i32, i32* %arrayidx141, align 4, !tbaa !12
  %mul = mul nsw i32 %108, %110
  %data142 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %rt_size, i32 0, i32 0
  %111 = load i32*, i32** %data142, align 8, !tbaa !46
  %arrayidx143 = getelementptr inbounds i32, i32* %111, i64 3
  %112 = load i32, i32* %arrayidx143, align 4, !tbaa !12
  %mul144 = mul nsw i32 %mul, %112
  %cmp145 = icmp ne i32 %106, %mul144
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %for.body.133
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.148:                                       ; preds = %for.body.133
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.148
  %113 = load i32, i32* %j, align 4, !tbaa !12
  %inc150 = add nsw i32 %113, 1
  store i32 %inc150, i32* %j, align 4, !tbaa !12
  br label %for.cond.129

for.end.151:                                      ; preds = %for.cond.129
  %size152 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %rt_size, i32 0, i32 1
  %114 = load i32, i32* %size152, align 4, !tbaa !48
  %sub153 = sub i32 %114, 1
  store i32 %sub153, i32* %n, align 4, !tbaa !12
  %115 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable154 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %115, i32 0, i32 14
  %lookup155 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable154, i32 0, i32 0
  %n156 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup155, i32 0, i32 0
  store i32 %sub153, i32* %n156, align 4, !tbaa !41
  %116 = load i32, i32* %n, align 4, !tbaa !12
  %idxprom157 = sext i32 %116 to i64
  %data158 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %rt_size, i32 0, i32 0
  %117 = load i32*, i32** %data158, align 8, !tbaa !46
  %arrayidx159 = getelementptr inbounds i32, i32* %117, i64 %idxprom157
  %118 = load i32, i32* %arrayidx159, align 4, !tbaa !12
  store i32 %118, i32* %m, align 4, !tbaa !12
  %119 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable160 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %119, i32 0, i32 14
  %lookup161 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable160, i32 0, i32 0
  %m162 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup161, i32 0, i32 2
  store i32 %118, i32* %m162, align 4, !tbaa !42
  %120 = load i32, i32* %n, align 4, !tbaa !12
  %cmp163 = icmp sgt i32 %120, 4
  br i1 %cmp163, label %if.then.168, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %for.end.151
  %121 = load i32, i32* %m, align 4, !tbaa !12
  %cmp166 = icmp sgt i32 %121, 4
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %lor.lhs.false.165, %for.end.151
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.169:                                       ; preds = %lor.lhs.false.165
  %122 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable170 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %122, i32 0, i32 14
  %lookup171 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable170, i32 0, i32 0
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup171, i32 0, i32 1
  %arraydecay172 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i32 0
  %123 = bitcast i32* %arraydecay172 to i8*
  %data173 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %rt_size, i32 0, i32 0
  %124 = load i32*, i32** %data173, align 8, !tbaa !46
  %125 = bitcast i32* %124 to i8*
  %126 = load i32, i32* %n, align 4, !tbaa !12
  %conv174 = sext i32 %126 to i64
  %mul175 = mul i64 %conv174, 4
  %call176 = call i8* @memcpy(i8* %123, i8* %125, i64 %mul175) #7
  %127 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %rc177 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %127, i32 0, i32 1
  %memory178 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc177, i32 0, i32 1
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory178, align 8, !tbaa !74
  %procs179 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %128, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs179, i32 0, i32 12
  %129 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !76
  %130 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %rc180 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %130, i32 0, i32 1
  %memory181 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc180, i32 0, i32 1
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory181, align 8, !tbaa !74
  %132 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable182 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %132, i32 0, i32 14
  %lookup183 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable182, i32 0, i32 0
  %dims184 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup183, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [4 x i32], [4 x i32]* %dims184, i32 0, i64 0
  %133 = load i32, i32* %arrayidx185, align 4, !tbaa !12
  %call186 = call i8* %129(%struct.gs_memory_s* %131, i32 %133, %struct.gs_memory_struct_type_s* @st_const_string_element, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)) #5
  %134 = bitcast i8* %call186 to %struct.gs_const_string_s*
  store %struct.gs_const_string_s* %134, %struct.gs_const_string_s** %table103, align 8, !tbaa !1
  %135 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table103, align 8, !tbaa !1
  %cmp187 = icmp eq %struct.gs_const_string_s* %135, null
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.169
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.190:                                       ; preds = %if.end.169
  store i32 0, i32* %j, align 4, !tbaa !12
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.213, %if.end.190
  %136 = load i32, i32* %j, align 4, !tbaa !12
  %137 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable192 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %137, i32 0, i32 14
  %lookup193 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable192, i32 0, i32 0
  %dims194 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup193, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [4 x i32], [4 x i32]* %dims194, i32 0, i64 0
  %138 = load i32, i32* %arrayidx195, align 4, !tbaa !12
  %cmp196 = icmp slt i32 %136, %138
  br i1 %cmp196, label %for.body.198, label %for.end.215

for.body.198:                                     ; preds = %for.cond.191
  %139 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom199 = sext i32 %139 to i64
  %data200 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %rt_values, i32 0, i32 0
  %140 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data200, align 8, !tbaa !52
  %arrayidx201 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %140, i64 %idxprom199
  %data202 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx201, i32 0, i32 0
  %141 = load i8*, i8** %data202, align 8, !tbaa !32
  %142 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom203 = sext i32 %142 to i64
  %143 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table103, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %143, i64 %idxprom203
  %data205 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx204, i32 0, i32 0
  store i8* %141, i8** %data205, align 8, !tbaa !50
  %144 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom206 = sext i32 %144 to i64
  %data207 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %rt_values, i32 0, i32 0
  %145 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data207, align 8, !tbaa !52
  %arrayidx208 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %145, i64 %idxprom206
  %size209 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx208, i32 0, i32 1
  %146 = load i32, i32* %size209, align 4, !tbaa !34
  %147 = load i32, i32* %j, align 4, !tbaa !12
  %idxprom210 = sext i32 %147 to i64
  %148 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table103, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %148, i64 %idxprom210
  %size212 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %arrayidx211, i32 0, i32 1
  store i32 %146, i32* %size212, align 4, !tbaa !51
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.198
  %149 = load i32, i32* %j, align 4, !tbaa !12
  %inc214 = add nsw i32 %149, 1
  store i32 %inc214, i32* %j, align 4, !tbaa !12
  br label %for.cond.191

for.end.215:                                      ; preds = %for.cond.191
  %150 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table103, align 8, !tbaa !1
  %151 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable216 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %151, i32 0, i32 14
  %lookup217 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable216, i32 0, i32 0
  %table218 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %lookup217, i32 0, i32 3
  store %struct.gs_const_string_s* %150, %struct.gs_const_string_s** %table218, align 8, !tbaa !40
  %152 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable219 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %152, i32 0, i32 14
  %T220 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable219, i32 0, i32 1
  %153 = bitcast %struct.gs_cie_render_table_procs_s* %T220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %153, i8* bitcast (%struct.gs_cie_render_table_procs_s* @RenderTableT_from_data to i8*), i64 32, i32 8, i1 false), !tbaa.struct !75
  %154 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %data, i32 0, i32 2
  %arraydecay221 = getelementptr inbounds [2048 x float], [2048 x float]* %t, i32 0, i32 0
  %155 = load i32, i32* %m, align 4, !tbaa !12
  %mul222 = mul nsw i32 512, %155
  %call223 = call i32 @read_floats(%struct.gs_param_list_s* %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), float* %arraydecay221, i32 %mul222) #5
  store i32 %call223, i32* %code, align 4, !tbaa !12
  store i32 %call223, i32* %code_t, align 4, !tbaa !12
  %156 = load i32, i32* %code, align 4, !tbaa !12
  %cmp224 = icmp sgt i32 %156, 0
  br i1 %cmp224, label %if.then.226, label %if.else.229

if.then.226:                                      ; preds = %for.end.215
  %157 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable227 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %157, i32 0, i32 14
  %T228 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable227, i32 0, i32 1
  %158 = bitcast %struct.gs_cie_render_table_procs_s* %T228 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* bitcast (%struct.gs_cie_render_table_procs_s* @RenderTableT_default to i8*), i64 32, i32 8, i1 false), !tbaa.struct !75
  br label %if.end.236

if.else.229:                                      ; preds = %for.end.215
  %159 = load i32, i32* %code, align 4, !tbaa !12
  %cmp230 = icmp eq i32 %159, 0
  br i1 %cmp230, label %if.then.232, label %if.end.235

if.then.232:                                      ; preds = %if.else.229
  %160 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable233 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %160, i32 0, i32 14
  %T234 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable233, i32 0, i32 1
  %161 = bitcast %struct.gs_cie_render_table_procs_s* %T234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* bitcast (%struct.gs_cie_render_table_procs_s* @RenderTableT_from_data to i8*), i64 32, i32 8, i1 false), !tbaa.struct !75
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.232, %if.else.229
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.226
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.236, %if.then.189, %if.then.168, %if.then.147, %if.then.127, %if.then.117, %if.then.112
  %162 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast %struct.gs_const_string_s** %table103 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast %struct.gs_param_string_array_s* %rt_values to i8*
  call void @llvm.lifetime.end(i64 16, i8* %166) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.270 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.241

if.end.241:                                       ; preds = %cleanup.cont
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.91
  %167 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call244 = call i32 @gs_cie_render_init(%struct.gs_cie_render_s* %167) #5
  store i32 %call244, i32* %code, align 4, !tbaa !12
  %cmp245 = icmp sge i32 %call244, 0
  br i1 %cmp245, label %land.lhs.true, label %if.end.252

land.lhs.true:                                    ; preds = %if.end.243
  %168 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call247 = call i32 @gs_cie_render_sample(%struct.gs_cie_render_s* %168) #5
  store i32 %call247, i32* %code, align 4, !tbaa !12
  %cmp248 = icmp sge i32 %call247, 0
  br i1 %cmp248, label %if.then.250, label %if.end.252

if.then.250:                                      ; preds = %land.lhs.true
  %169 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %call251 = call i32 @gs_cie_render_complete(%struct.gs_cie_render_s* %169) #5
  store i32 %call251, i32* %code, align 4, !tbaa !12
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.250, %land.lhs.true, %if.end.243
  %170 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data253 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %170, i32 0, i32 3
  store i8* null, i8** %client_data253, align 8, !tbaa !72
  %171 = load i32, i32* %code_lmn, align 4, !tbaa !12
  %cmp254 = icmp eq i32 %171, 0
  br i1 %cmp254, label %if.then.256, label %if.end.258

if.then.256:                                      ; preds = %if.end.252
  %172 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeLMN257 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %172, i32 0, i32 9
  %173 = bitcast %struct.gs_cie_render_proc3_s* %EncodeLMN257 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %173, i8* bitcast (%struct.gs_cie_render_proc3_s* @EncodeLMN_from_cache to i8*), i64 24, i32 8, i1 false), !tbaa.struct !73
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.256, %if.end.252
  %174 = load i32, i32* %code_abc, align 4, !tbaa !12
  %cmp259 = icmp eq i32 %174, 0
  br i1 %cmp259, label %if.then.261, label %if.end.263

if.then.261:                                      ; preds = %if.end.258
  %175 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %EncodeABC262 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %175, i32 0, i32 12
  %176 = bitcast %struct.gs_cie_render_proc3_s* %EncodeABC262 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* bitcast (%struct.gs_cie_render_proc3_s* @EncodeABC_from_cache to i8*), i64 24, i32 8, i1 false), !tbaa.struct !73
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.261, %if.end.258
  %177 = load i32, i32* %code_t, align 4, !tbaa !12
  %cmp264 = icmp eq i32 %177, 0
  br i1 %cmp264, label %if.then.266, label %if.end.269

if.then.266:                                      ; preds = %if.end.263
  %178 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %RenderTable267 = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %178, i32 0, i32 14
  %T268 = getelementptr inbounds %struct.gs_cie_render_table_s, %struct.gs_cie_render_table_s* %RenderTable267, i32 0, i32 1
  %179 = bitcast %struct.gs_cie_render_table_procs_s* %T268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* bitcast (%struct.gs_cie_render_table_procs_s* @RenderTableT_from_cache to i8*), i64 32, i32 8, i1 false), !tbaa.struct !75
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.266, %if.end.263
  %180 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %180, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270

cleanup.270:                                      ; preds = %if.end.269, %cleanup, %if.then.101, %if.then.96, %sw.default.48, %if.then.42, %sw.default, %if.then
  %181 = bitcast %struct.gs_param_string_s* %pdata to i8*
  call void @llvm.lifetime.end(i64 16, i8* %181) #1
  %182 = bitcast %struct.gs_param_string_s* %pname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %182) #1
  %183 = bitcast i32* %code_t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %code_rt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %code_abc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %code_lmn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %crd_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast %struct.gs_param_int_array_s* %rt_size to i8*
  call void @llvm.lifetime.end(i64 16, i8* %189) #1
  %190 = bitcast %struct.encode_data_s* %data to i8*
  call void @llvm.lifetime.end(i64 20480, i8* %190) #1
  %191 = load i32, i32* %retval
  ret i32 %191
}

declare i32 @gs_cie_render_init(%struct.gs_cie_render_s*) #2

declare i32 @gs_cie_render_complete(%struct.gs_cie_render_s*) #2

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @read_vector3(%struct.gs_param_list_s* %plist, i8* %key, %struct.gs_vector3_s* %pvec, %struct.gs_vector3_s* %dflt) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %pvec.addr = alloca %struct.gs_vector3_s*, align 8
  %dflt.addr = alloca %struct.gs_vector3_s*, align 8
  %values = alloca [3 x float], align 4
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %pvec, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %dflt, %struct.gs_vector3_s** %dflt.addr, align 8, !tbaa !1
  %0 = bitcast [3 x float]* %values to i8*
  call void @llvm.lifetime.start(i64 12, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x float], [3 x float]* %values, i32 0, i32 0
  %call = call i32 @read_floats(%struct.gs_param_list_s* %2, i8* %3, float* %arraydecay, i32 3) #5
  store i32 %call, i32* %code, align 4, !tbaa !12
  %4 = load i32, i32* %code, align 4, !tbaa !12
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %dflt.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_vector3_s* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %7 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %dflt.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_vector3_s* %6 to i8*
  %9 = bitcast %struct.gs_vector3_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 12, i32 4, i1 false), !tbaa.struct !77
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %10 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [3 x float], [3 x float]* %values, i32 0, i32 0
  call void @load_vector3(%struct.gs_vector3_s* %10, float* %arraydecay2) #5
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !12
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast [3 x float]* %values to i8*
  call void @llvm.lifetime.end(i64 12, i8* %13) #1
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @read_matrix3(%struct.gs_param_list_s* %plist, i8* %key, %struct.gs_matrix3_s* %pmat) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %pmat.addr = alloca %struct.gs_matrix3_s*, align 8
  %values = alloca [9 x float], align 16
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %pmat, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast [9 x float]* %values to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i32 0
  %call = call i32 @read_floats(%struct.gs_param_list_s* %2, i8* %3, float* %arraydecay, i32 9) #5
  store i32 %call, i32* %code, align 4, !tbaa !12
  %4 = load i32, i32* %code, align 4, !tbaa !12
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_matrix3_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.gs_matrix3_s* @Matrix3_default to i8*), i64 40, i32 4, i1 false), !tbaa.struct !78
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %7, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i32 0
  call void @load_vector3(%struct.gs_vector3_s* %cu, float* %arraydecay2) #5
  %8 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %8, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i32 0
  %add.ptr = getelementptr inbounds float, float* %arraydecay3, i64 3
  call void @load_vector3(%struct.gs_vector3_s* %cv, float* %add.ptr) #5
  %9 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %pmat.addr, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %9, i32 0, i32 2
  %arraydecay4 = getelementptr inbounds [9 x float], [9 x float]* %values, i32 0, i32 0
  %add.ptr5 = getelementptr inbounds float, float* %arraydecay4, i64 6
  call void @load_vector3(%struct.gs_vector3_s* %cw, float* %add.ptr5) #5
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load i32, i32* %code, align 4, !tbaa !12
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast [9 x float]* %values to i8*
  call void @llvm.lifetime.end(i64 36, i8* %12) #1
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @read_range3(%struct.gs_param_list_s* %plist, i8* %key, %struct.gs_range3_s* %prange) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %prange.addr = alloca %struct.gs_range3_s*, align 8
  %values = alloca [6 x float], align 16
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_range3_s* %prange, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %0 = bitcast [6 x float]* %values to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i32 0
  %call = call i32 @read_floats(%struct.gs_param_list_s* %2, i8* %3, float* %arraydecay, i32 6) #5
  store i32 %call, i32* %code, align 4, !tbaa !12
  %4 = load i32, i32* %code, align 4, !tbaa !12
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_range3_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.gs_range3_s* @Range3_default to i8*), i64 24, i32 4, i1 false), !tbaa.struct !73
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 0
  %7 = load float, float* %arrayidx, align 4, !tbaa !59
  %8 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %8, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx2, i32 0, i32 0
  store float %7, float* %rmin, align 4, !tbaa !65
  %arrayidx3 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 1
  %9 = load float, float* %arrayidx3, align 4, !tbaa !59
  %10 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges4 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %10, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges4, i32 0, i64 0
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx5, i32 0, i32 1
  store float %9, float* %rmax, align 4, !tbaa !67
  %arrayidx6 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 2
  %11 = load float, float* %arrayidx6, align 4, !tbaa !59
  %12 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges7 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %12, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges7, i32 0, i64 1
  %rmin9 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx8, i32 0, i32 0
  store float %11, float* %rmin9, align 4, !tbaa !65
  %arrayidx10 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 3
  %13 = load float, float* %arrayidx10, align 4, !tbaa !59
  %14 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges11 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %14, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges11, i32 0, i64 1
  %rmax13 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx12, i32 0, i32 1
  store float %13, float* %rmax13, align 4, !tbaa !67
  %arrayidx14 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 4
  %15 = load float, float* %arrayidx14, align 4, !tbaa !59
  %16 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges15 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %16, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges15, i32 0, i64 2
  %rmin17 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx16, i32 0, i32 0
  store float %15, float* %rmin17, align 4, !tbaa !65
  %arrayidx18 = getelementptr inbounds [6 x float], [6 x float]* %values, i32 0, i64 5
  %17 = load float, float* %arrayidx18, align 4, !tbaa !59
  %18 = load %struct.gs_range3_s*, %struct.gs_range3_s** %prange.addr, align 8, !tbaa !1
  %ranges19 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges19, i32 0, i64 2
  %rmax21 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx20, i32 0, i32 1
  store float %17, float* %rmax21, align 4, !tbaa !67
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %19 = load i32, i32* %code, align 4, !tbaa !12
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast [6 x float]* %values to i8*
  call void @llvm.lifetime.end(i64 24, i8* %21) #1
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @read_proc3(%struct.gs_param_list_s* %plist, i8* %key, float* %values) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %values.addr = alloca float*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store float* %values, float** %values.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %2 = load float*, float** %values.addr, align 8, !tbaa !1
  %call = call i32 @read_floats(%struct.gs_param_list_s* %0, i8* %1, float* %2, i32 1536) #5
  ret i32 %call
}

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @gs_devicename(%struct.gx_device_s*) #2

declare i32 @param_read_int_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_int_array_s*) #2

declare i32 @param_read_string_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @read_floats(%struct.gs_param_list_s* %plist, i8* %key, float* %values, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %values.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  %fa = alloca %struct.gs_param_float_array_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store float* %values, float** %values.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !12
  %0 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @param_read_float_array(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_float_array_s* %fa) #5
  store i32 %call, i32* %code, align 4, !tbaa !12
  %4 = load i32, i32* %code, align 4, !tbaa !12
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !12
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !62
  %7 = load i32, i32* %count.addr, align 4, !tbaa !12
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %8 = load float*, float** %values.addr, align 8, !tbaa !1
  %9 = bitcast float* %8 to i8*
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  %10 = load float*, float** %data, align 8, !tbaa !60
  %11 = bitcast float* %10 to i8*
  %12 = load i32, i32* %count.addr, align 4, !tbaa !12
  %conv = sext i32 %12 to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @memcpy(i8* %9, i8* %11, i64 %mul) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.then.1, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @store_vector3(float* %p, %struct.gs_vector3_s* %pvec) #0 {
entry:
  %p.addr = alloca float*, align 8
  %pvec.addr = alloca %struct.gs_vector3_s*, align 8
  store float* %p, float** %p.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %pvec, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %0 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %0, i32 0, i32 0
  %1 = load float, float* %u, align 4, !tbaa !79
  %2 = load float*, float** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  store float %1, float* %arrayidx, align 4, !tbaa !59
  %3 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %3, i32 0, i32 1
  %4 = load float, float* %v, align 4, !tbaa !80
  %5 = load float*, float** %p.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %5, i64 1
  store float %4, float* %arrayidx1, align 4, !tbaa !59
  %6 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %6, i32 0, i32 2
  %7 = load float, float* %w, align 4, !tbaa !81
  %8 = load float*, float** %p.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %8, i64 2
  store float %7, float* %arrayidx2, align 4, !tbaa !59
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @write_floats(%struct.gs_param_list_s* %plist, i8* %key, float* %values, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %values.addr = alloca float*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %p = alloca float*, align 8
  %fa = alloca %struct.gs_param_float_array_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store float* %values, float** %values.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !12
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast float** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %2 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !43
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !12
  %call = call i8* %2(%struct.gs_memory_s* %3, i32 %4, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #5
  %5 = bitcast i8* %call to float*
  store float* %5, float** %p, align 8, !tbaa !1
  %6 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = load float*, float** %p, align 8, !tbaa !1
  %cmp = icmp eq float* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load float*, float** %p, align 8, !tbaa !1
  %9 = bitcast float* %8 to i8*
  %10 = load float*, float** %values.addr, align 8, !tbaa !1
  %11 = bitcast float* %10 to i8*
  %12 = load i32, i32* %size.addr, align 4, !tbaa !12
  %conv = sext i32 %12 to i64
  %mul = mul i64 %conv, 4
  %call1 = call i8* @memcpy(i8* %9, i8* %11, i64 %mul) #7
  %13 = load float*, float** %p, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  store float* %13, float** %data, align 8, !tbaa !60
  %14 = load i32, i32* %size.addr, align 4, !tbaa !12
  %size2 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 1
  store i32 %14, i32* %size2, align 4, !tbaa !62
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !63
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call3 = call i32 @param_write_float_array(%struct.gs_param_list_s* %15, i8* %16, %struct.gs_param_float_array_s* %fa) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %17) #1
  %18 = bitcast float** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @load_vector3(%struct.gs_vector3_s* %pvec, float* %p) #0 {
entry:
  %pvec.addr = alloca %struct.gs_vector3_s*, align 8
  %p.addr = alloca float*, align 8
  store %struct.gs_vector3_s* %pvec, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  store float* %p, float** %p.addr, align 8, !tbaa !1
  %0 = load float*, float** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %0, i64 0
  %1 = load float, float* %arrayidx, align 4, !tbaa !59
  %2 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %2, i32 0, i32 0
  store float %1, float* %u, align 4, !tbaa !79
  %3 = load float*, float** %p.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %3, i64 1
  %4 = load float, float* %arrayidx1, align 4, !tbaa !59
  %5 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %5, i32 0, i32 1
  store float %4, float* %v, align 4, !tbaa !80
  %6 = load float*, float** %p.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 2
  %7 = load float, float* %arrayidx2, align 4, !tbaa !59
  %8 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %pvec.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %8, i32 0, i32 2
  store float %7, float* %w, align 4, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @encode_lmn_0_from_data(double %v, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %v.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %data = alloca %struct.encode_data_s*, align 8
  store double %v, double* %v.addr, align 8, !tbaa !57
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !72
  %3 = bitcast i8* %2 to %struct.encode_data_s*
  store %struct.encode_data_s* %3, %struct.encode_data_s** %data, align 8, !tbaa !1
  %4 = load double, double* %v.addr, align 8, !tbaa !57
  %5 = load %struct.encode_data_s*, %struct.encode_data_s** %data, align 8, !tbaa !1
  %lmn = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1536 x float], [1536 x float]* %lmn, i32 0, i64 0
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %DomainLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %6, i32 0, i32 15
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %DomainLMN, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call = call float @encode_from_data(double %4, float* %arrayidx, %struct.gs_range_s* %arrayidx1) #5
  %7 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @encode_lmn_1_from_data(double %v, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %v.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %data = alloca %struct.encode_data_s*, align 8
  store double %v, double* %v.addr, align 8, !tbaa !57
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !72
  %3 = bitcast i8* %2 to %struct.encode_data_s*
  store %struct.encode_data_s* %3, %struct.encode_data_s** %data, align 8, !tbaa !1
  %4 = load double, double* %v.addr, align 8, !tbaa !57
  %5 = load %struct.encode_data_s*, %struct.encode_data_s** %data, align 8, !tbaa !1
  %lmn = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1536 x float], [1536 x float]* %lmn, i32 0, i64 512
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %DomainLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %6, i32 0, i32 15
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %DomainLMN, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 1
  %call = call float @encode_from_data(double %4, float* %arrayidx, %struct.gs_range_s* %arrayidx1) #5
  %7 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @encode_lmn_2_from_data(double %v, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %v.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %data = alloca %struct.encode_data_s*, align 8
  store double %v, double* %v.addr, align 8, !tbaa !57
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !72
  %3 = bitcast i8* %2 to %struct.encode_data_s*
  store %struct.encode_data_s* %3, %struct.encode_data_s** %data, align 8, !tbaa !1
  %4 = load double, double* %v.addr, align 8, !tbaa !57
  %5 = load %struct.encode_data_s*, %struct.encode_data_s** %data, align 8, !tbaa !1
  %lmn = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %5, i32 0, i32 0
  %arrayidx = getelementptr inbounds [1536 x float], [1536 x float]* %lmn, i32 0, i64 1024
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %DomainLMN = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %6, i32 0, i32 15
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %DomainLMN, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 2
  %call = call float @encode_from_data(double %4, float* %arrayidx, %struct.gs_range_s* %arrayidx1) #5
  %7 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @encode_from_data(double %v, float* %values, %struct.gs_range_s* %range) #0 {
entry:
  %v.addr = alloca double, align 8
  %values.addr = alloca float*, align 8
  %range.addr = alloca %struct.gs_range_s*, align 8
  store double %v, double* %v.addr, align 8, !tbaa !57
  store float* %values, float** %values.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %range, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %0 = load double, double* %v.addr, align 8, !tbaa !57
  %1 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %1, i32 0, i32 0
  %2 = load float, float* %rmin, align 4, !tbaa !65
  %conv = fpext float %2 to double
  %cmp = fcmp ole double %0, %conv
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %3, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !59
  br label %cond.end.16

cond.false:                                       ; preds = %entry
  %5 = load double, double* %v.addr, align 8, !tbaa !57
  %6 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %6, i32 0, i32 1
  %7 = load float, float* %rmax, align 4, !tbaa !67
  %conv2 = fpext float %7 to double
  %cmp3 = fcmp oge double %5, %conv2
  br i1 %cmp3, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.false
  %8 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float, float* %8, i64 511
  %9 = load float, float* %arrayidx6, align 4, !tbaa !59
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %10 = load double, double* %v.addr, align 8, !tbaa !57
  %11 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %rmin8 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %11, i32 0, i32 0
  %12 = load float, float* %rmin8, align 4, !tbaa !65
  %conv9 = fpext float %12 to double
  %sub = fsub double %10, %conv9
  %13 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %rmax10 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %13, i32 0, i32 1
  %14 = load float, float* %rmax10, align 4, !tbaa !67
  %15 = load %struct.gs_range_s*, %struct.gs_range_s** %range.addr, align 8, !tbaa !1
  %rmin11 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %15, i32 0, i32 0
  %16 = load float, float* %rmin11, align 4, !tbaa !65
  %sub12 = fsub float %14, %16
  %conv13 = fpext float %sub12 to double
  %div = fdiv double %sub, %conv13
  %mul = fmul double %div, 5.110000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv14 = fptosi double %add to i32
  %idxprom = sext i32 %conv14 to i64
  %17 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds float, float* %17, i64 %idxprom
  %18 = load float, float* %arrayidx15, align 4, !tbaa !59
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.5
  %cond = phi float [ %9, %cond.true.5 ], [ %18, %cond.false.7 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true
  %cond17 = phi float [ %4, %cond.true ], [ %cond, %cond.end ]
  ret float %cond17
}

; Function Attrs: nounwind uwtable
define internal float @encode_abc_0_from_data(double %v, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %v.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %data = alloca %struct.encode_data_s*, align 8
  store double %v, double* %v.addr, align 8, !tbaa !57
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !72
  %3 = bitcast i8* %2 to %struct.encode_data_s*
  store %struct.encode_data_s* %3, %struct.encode_data_s** %data, align 8, !tbaa !1
  %4 = load double, double* %v.addr, align 8, !tbaa !57
  %5 = load %struct.encode_data_s*, %struct.encode_data_s** %data, align 8, !tbaa !1
  %abc = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1536 x float], [1536 x float]* %abc, i32 0, i64 0
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %DomainABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %6, i32 0, i32 16
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %DomainABC, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call = call float @encode_from_data(double %4, float* %arrayidx, %struct.gs_range_s* %arrayidx1) #5
  %7 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @encode_abc_1_from_data(double %v, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %v.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %data = alloca %struct.encode_data_s*, align 8
  store double %v, double* %v.addr, align 8, !tbaa !57
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !72
  %3 = bitcast i8* %2 to %struct.encode_data_s*
  store %struct.encode_data_s* %3, %struct.encode_data_s** %data, align 8, !tbaa !1
  %4 = load double, double* %v.addr, align 8, !tbaa !57
  %5 = load %struct.encode_data_s*, %struct.encode_data_s** %data, align 8, !tbaa !1
  %abc = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1536 x float], [1536 x float]* %abc, i32 0, i64 512
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %DomainABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %6, i32 0, i32 16
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %DomainABC, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 1
  %call = call float @encode_from_data(double %4, float* %arrayidx, %struct.gs_range_s* %arrayidx1) #5
  %7 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @encode_abc_2_from_data(double %v, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %v.addr = alloca double, align 8
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %data = alloca %struct.encode_data_s*, align 8
  store double %v, double* %v.addr, align 8, !tbaa !57
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !72
  %3 = bitcast i8* %2 to %struct.encode_data_s*
  store %struct.encode_data_s* %3, %struct.encode_data_s** %data, align 8, !tbaa !1
  %4 = load double, double* %v.addr, align 8, !tbaa !57
  %5 = load %struct.encode_data_s*, %struct.encode_data_s** %data, align 8, !tbaa !1
  %abc = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1536 x float], [1536 x float]* %abc, i32 0, i64 1024
  %6 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %DomainABC = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %6, i32 0, i32 16
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %DomainABC, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 2
  %call = call float @encode_from_data(double %4, float* %arrayidx, %struct.gs_range_s* %arrayidx1) #5
  %7 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal signext i16 @render_table_t_0_from_data(i8 zeroext %v, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %v.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %data = alloca %struct.encode_data_s*, align 8
  store i8 %v, i8* %v.addr, align 1, !tbaa !70
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !72
  %3 = bitcast i8* %2 to %struct.encode_data_s*
  store %struct.encode_data_s* %3, %struct.encode_data_s** %data, align 8, !tbaa !1
  %4 = load i8, i8* %v.addr, align 1, !tbaa !70
  %conv = zext i8 %4 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 2.550000e+02
  %5 = load %struct.encode_data_s*, %struct.encode_data_s** %data, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2048 x float], [2048 x float]* %t, i32 0, i64 0
  %call = call float @encode_from_data(double %div, float* %arrayidx, %struct.gs_range_s* getelementptr inbounds (%struct.gs_range3_s, %struct.gs_range3_s* @Range3_default, i32 0, i32 0, i64 0)) #5
  %conv2 = fpext float %call to double
  %add = fadd double %conv2, 0x3EF0010010010010
  %mul = fmul double %add, 3.276000e+04
  %conv3 = fptosi double %mul to i16
  %6 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i16 %conv3
}

; Function Attrs: nounwind uwtable
define internal signext i16 @render_table_t_1_from_data(i8 zeroext %v, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %v.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %data = alloca %struct.encode_data_s*, align 8
  store i8 %v, i8* %v.addr, align 1, !tbaa !70
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !72
  %3 = bitcast i8* %2 to %struct.encode_data_s*
  store %struct.encode_data_s* %3, %struct.encode_data_s** %data, align 8, !tbaa !1
  %4 = load i8, i8* %v.addr, align 1, !tbaa !70
  %conv = zext i8 %4 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 2.550000e+02
  %5 = load %struct.encode_data_s*, %struct.encode_data_s** %data, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2048 x float], [2048 x float]* %t, i32 0, i64 512
  %call = call float @encode_from_data(double %div, float* %arrayidx, %struct.gs_range_s* getelementptr inbounds (%struct.gs_range3_s, %struct.gs_range3_s* @Range3_default, i32 0, i32 0, i64 0)) #5
  %conv2 = fpext float %call to double
  %add = fadd double %conv2, 0x3EF0010010010010
  %mul = fmul double %add, 3.276000e+04
  %conv3 = fptosi double %mul to i16
  %6 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i16 %conv3
}

; Function Attrs: nounwind uwtable
define internal signext i16 @render_table_t_2_from_data(i8 zeroext %v, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %v.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %data = alloca %struct.encode_data_s*, align 8
  store i8 %v, i8* %v.addr, align 1, !tbaa !70
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !72
  %3 = bitcast i8* %2 to %struct.encode_data_s*
  store %struct.encode_data_s* %3, %struct.encode_data_s** %data, align 8, !tbaa !1
  %4 = load i8, i8* %v.addr, align 1, !tbaa !70
  %conv = zext i8 %4 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 2.550000e+02
  %5 = load %struct.encode_data_s*, %struct.encode_data_s** %data, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2048 x float], [2048 x float]* %t, i32 0, i64 1024
  %call = call float @encode_from_data(double %div, float* %arrayidx, %struct.gs_range_s* getelementptr inbounds (%struct.gs_range3_s, %struct.gs_range3_s* @Range3_default, i32 0, i32 0, i64 0)) #5
  %conv2 = fpext float %call to double
  %add = fadd double %conv2, 0x3EF0010010010010
  %mul = fmul double %add, 3.276000e+04
  %conv3 = fptosi double %mul to i16
  %6 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i16 %conv3
}

; Function Attrs: nounwind uwtable
define internal signext i16 @render_table_t_3_from_data(i8 zeroext %v, %struct.gs_cie_render_s* %pcrd) #0 {
entry:
  %v.addr = alloca i8, align 1
  %pcrd.addr = alloca %struct.gs_cie_render_s*, align 8
  %data = alloca %struct.encode_data_s*, align 8
  store i8 %v, i8* %v.addr, align 1, !tbaa !70
  store %struct.gs_cie_render_s* %pcrd, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_cie_render_s*, %struct.gs_cie_render_s** %pcrd.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_cie_render_s, %struct.gs_cie_render_s* %1, i32 0, i32 3
  %2 = load i8*, i8** %client_data, align 8, !tbaa !72
  %3 = bitcast i8* %2 to %struct.encode_data_s*
  store %struct.encode_data_s* %3, %struct.encode_data_s** %data, align 8, !tbaa !1
  %4 = load i8, i8* %v.addr, align 1, !tbaa !70
  %conv = zext i8 %4 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 2.550000e+02
  %5 = load %struct.encode_data_s*, %struct.encode_data_s** %data, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.encode_data_s, %struct.encode_data_s* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2048 x float], [2048 x float]* %t, i32 0, i64 1536
  %call = call float @encode_from_data(double %div, float* %arrayidx, %struct.gs_range_s* getelementptr inbounds (%struct.gs_range3_s, %struct.gs_range3_s* @Range3_default, i32 0, i32 0, i64 0)) #5
  %conv2 = fpext float %call to double
  %add = fadd double %conv2, 0x3EF0010010010010
  %mul = fmul double %add, 3.276000e+04
  %conv3 = fptosi double %mul to i16
  %6 = bitcast %struct.encode_data_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i16 %conv3
}

declare i32 @param_read_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 8}
!6 = !{!"gs_param_collection_s", !2, i64 0, !7, i64 8}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!10 = !{!11, !2, i64 8}
!11 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !2, i64 0}
!14 = !{!11, !2, i64 16}
!15 = !{!16, !2, i64 144}
!16 = !{!"gs_cie_render_s", !3, i64 0, !17, i64 8, !18, i64 32, !2, i64 40, !19, i64 48, !22, i64 72, !23, i64 112, !24, i64 136, !22, i64 176, !26, i64 216, !23, i64 240, !22, i64 264, !26, i64 304, !23, i64 328, !27, i64 352, !23, i64 416, !23, i64 440, !22, i64 464, !3, i64 504, !22, i64 516, !20, i64 556, !20, i64 568, !30, i64 584}
!17 = !{!"rc_header_s", !18, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"long", !3, i64 0}
!19 = !{!"gs_cie_wb_s", !20, i64 0, !20, i64 12}
!20 = !{!"gs_vector3_s", !21, i64 0, !21, i64 4, !21, i64 8}
!21 = !{!"float", !3, i64 0}
!22 = !{!"gs_matrix3_s", !20, i64 0, !20, i64 12, !20, i64 24, !7, i64 36}
!23 = !{!"gs_range3_s", !3, i64 0}
!24 = !{!"gs_cie_transform_proc3_s", !2, i64 0, !2, i64 8, !25, i64 16, !2, i64 32}
!25 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!26 = !{!"gs_cie_render_proc3_s", !3, i64 0}
!27 = !{!"gs_cie_render_table_s", !28, i64 0, !29, i64 32}
!28 = !{!"gx_color_lookup_table_s", !7, i64 0, !3, i64 4, !7, i64 20, !2, i64 24}
!29 = !{!"gs_cie_render_table_procs_s", !3, i64 0}
!30 = !{!"", !31, i64 0, !3, i64 24840, !3, i64 37368, !7, i64 45720}
!31 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!32 = !{!33, !2, i64 0}
!33 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!34 = !{!33, !7, i64 8}
!35 = !{!33, !7, i64 12}
!36 = !{!16, !2, i64 152}
!37 = !{!16, !7, i64 160}
!38 = !{!16, !2, i64 136}
!39 = !{!24, !2, i64 0}
!40 = !{!16, !2, i64 376}
!41 = !{!16, !7, i64 352}
!42 = !{!16, !7, i64 372}
!43 = !{!44, !2, i64 88}
!44 = !{!"gs_memory_s", !2, i64 0, !45, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!45 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!46 = !{!47, !2, i64 0}
!47 = !{!"gs_param_int_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!48 = !{!47, !7, i64 8}
!49 = !{!47, !7, i64 12}
!50 = !{!25, !2, i64 0}
!51 = !{!25, !7, i64 8}
!52 = !{!53, !2, i64 0}
!53 = !{!"gs_param_string_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!54 = !{!53, !7, i64 8}
!55 = !{!53, !7, i64 12}
!56 = !{!16, !7, i64 46304}
!57 = !{!58, !58, i64 0}
!58 = !{!"double", !3, i64 0}
!59 = !{!21, !21, i64 0}
!60 = !{!61, !2, i64 0}
!61 = !{!"gs_param_float_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!62 = !{!61, !7, i64 8}
!63 = !{!61, !7, i64 12}
!64 = !{!44, !2, i64 24}
!65 = !{!66, !21, i64 0}
!66 = !{!"gs_range_s", !21, i64 0, !21, i64 4}
!67 = !{!66, !21, i64 4}
!68 = !{!16, !3, i64 0}
!69 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !12, i64 32, i64 8, !1}
!70 = !{!3, !3, i64 0}
!71 = !{!16, !2, i64 168}
!72 = !{!16, !2, i64 40}
!73 = !{i64 0, i64 24, !70}
!74 = !{!16, !2, i64 16}
!75 = !{i64 0, i64 32, !70}
!76 = !{!44, !2, i64 104}
!77 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 4, !59}
!78 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 4, !59, i64 12, i64 4, !59, i64 16, i64 4, !59, i64 20, i64 4, !59, i64 24, i64 4, !59, i64 28, i64 4, !59, i64 32, i64 4, !59, i64 36, i64 4, !12}
!79 = !{!20, !21, i64 0}
!80 = !{!20, !21, i64 4}
!81 = !{!20, !21, i64 8}
