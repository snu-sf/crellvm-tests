; ModuleID = './gsfunc0.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_range_s = type { float, float }
%struct.gs_function_Sd_s = type { %struct.gs_function_head_s, %struct.gs_function_Sd_params_s }
%struct.gs_function_Sd_params_s = type { i32, float*, i32, float*, i32, %struct.gs_data_source_s, i32, float*, float*, i32*, double*, i32*, i32*, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }

@.str = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Decode\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Encode\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"gs_function_Sd_free_params\00", align 1
@gs_function_Sd_init.function_Sd_head = internal constant %struct.gs_function_head_s { i32 0, %struct.gs_function_procs_s { i32 (%struct.gs_function_s*, float*, float*)* @fn_Sd_evaluate, i32 (%struct.gs_function_s*, float*, float*, i32*)* @fn_Sd_is_monotonic, void (%struct.gs_function_s*, %struct.gs_function_info_s*)* @fn_Sd_get_info, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)* @fn_Sd_get_params, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)* bitcast (i32 (%struct.gs_function_Sd_s*, %struct.gs_function_Sd_s**, %struct.gs_range_s*, %struct.gs_memory_s*)* @fn_Sd_make_scaled to i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*), void (%struct.gs_function_params_s*, %struct.gs_memory_s*)* bitcast (void (%struct.gs_function_Sd_params_s*, %struct.gs_memory_s*)* @gs_function_Sd_free_params to void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*), void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)* @fn_common_free, i32 (%struct.gs_function_s*, %struct.stream_s*)* @gs_function_Sd_serialize } }, align 8
@st_function_Sd = internal constant %struct.gs_memory_struct_type_s { i32 208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @function_Sd_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @function_Sd_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"gs_function_Sd_init\00", align 1
@fn_get_samples = internal constant [33 x i32 (%struct.gs_function_Sd_s*, i64, i32*)*] [i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* @fn_gets_1, i32 (%struct.gs_function_Sd_s*, i64, i32*)* @fn_gets_2, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* @fn_gets_4, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* @fn_gets_8, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* @fn_gets_12, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* @fn_gets_16, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* @fn_gets_24, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* null, i32 (%struct.gs_function_Sd_s*, i64, i32*)* @fn_gets_32], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"Order\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"fn_Sd_make_scaled\00", align 1
@serialize_array.dummy = internal constant [2 x float] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"gs_function_Sd_t\00", align 1
@st_data_source = external constant %struct.gs_memory_struct_type_s, align 8
@st_function = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define void @gs_function_Sd_free_params(%struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %params.addr = alloca %struct.gs_function_Sd_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_function_Sd_params_s* %params, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %1, i32 0, i32 9
  %2 = load i32*, i32** %Size, align 8, !tbaa !5
  %3 = bitcast i32* %2 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %0, i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #5
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %5, i32 0, i32 8
  %6 = load float*, float** %Decode, align 8, !tbaa !9
  %7 = bitcast float* %6 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %4, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #5
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %9, i32 0, i32 7
  %10 = load float*, float** %Encode, align 8, !tbaa !10
  %11 = bitcast float* %10 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %8, i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #5
  %12 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_function_Sd_params_s* %12 to %struct.gs_function_params_s*
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @fn_common_free_params(%struct.gs_function_params_s* %13, %struct.gs_memory_s* %14) #5
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !11
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %18, i32 0, i32 10
  %19 = load double*, double** %pole, align 8, !tbaa !14
  %20 = bitcast double* %19 to i8*
  call void %16(%struct.gs_memory_s* %17, i8* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #5
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object2, align 8, !tbaa !11
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %24 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %24, i32 0, i32 11
  %25 = load i32*, i32** %array_step, align 8, !tbaa !15
  %26 = bitcast i32* %25 to i8*
  call void %22(%struct.gs_memory_s* %23, i8* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #5
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object4, align 8, !tbaa !11
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %stream_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %30, i32 0, i32 12
  %31 = load i32*, i32** %stream_step, align 8, !tbaa !16
  %32 = bitcast i32* %31 to i8*
  call void %28(%struct.gs_memory_s* %29, i8* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #5
  ret void
}

declare void @gs_free_const_object(%struct.gs_memory_s*, i8*, i8*) #1

declare void @fn_common_free_params(%struct.gs_function_params_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_function_Sd_init(%struct.gs_function_s** %ppfn, %struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %params.addr = alloca %struct.gs_function_Sd_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pfn = alloca %struct.gs_function_Sd_s*, align 8
  %bps = alloca i32, align 4
  %sa = alloca i32, align 4
  %ss = alloca i32, align 4
  %i14 = alloca i32, align 4
  %order = alloca i32, align 4
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_Sd_params_s* %params, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* null, %struct.gs_function_s** %2, align 8, !tbaa !1
  %3 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_function_Sd_params_s* %3 to %struct.gs_function_params_s*
  %5 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %5, i32 0, i32 0
  %6 = load i32, i32* %m, align 4, !tbaa !17
  %7 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %7, i32 0, i32 2
  %8 = load i32, i32* %n, align 4, !tbaa !18
  %call = call i32 @fn_check_mnDR(%struct.gs_function_params_s* %4, i32 %6, i32 %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %9 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %11, i32 0, i32 0
  %12 = load i32, i32* %m1, align 4, !tbaa !17
  %cmp2 = icmp sgt i32 %12, 64
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122

if.end.4:                                         ; preds = %if.end
  %13 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %13, i32 0, i32 4
  %14 = load i32, i32* %Order, align 4, !tbaa !20
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.4, %if.end.4, %if.end.4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122

sw.epilog:                                        ; preds = %sw.bb
  %15 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %15, i32 0, i32 6
  %16 = load i32, i32* %BitsPerSample, align 4, !tbaa !21
  switch i32 %16, label %sw.default.6 [
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.5
    i32 4, label %sw.bb.5
    i32 8, label %sw.bb.5
    i32 12, label %sw.bb.5
    i32 16, label %sw.bb.5
    i32 24, label %sw.bb.5
    i32 32, label %sw.bb.5
  ]

sw.bb.5:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.7

sw.default.6:                                     ; preds = %sw.epilog
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122

sw.epilog.7:                                      ; preds = %sw.bb.5
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog.7
  %17 = load i32, i32* %i, align 4, !tbaa !19
  %18 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %m8 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %18, i32 0, i32 0
  %19 = load i32, i32* %m8, align 4, !tbaa !17
  %cmp9 = icmp slt i32 %17, %19
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %21, i32 0, i32 9
  %22 = load i32*, i32** %Size, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %idxprom
  %23 = load i32, i32* %arrayidx, align 4, !tbaa !19
  %cmp10 = icmp sle i32 %23, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122

if.end.12:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %24 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %27 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !22
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call13 = call i8* %27(%struct.gs_memory_s* %28, %struct.gs_memory_struct_type_s* @st_function_Sd, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #5
  %29 = bitcast i8* %call13 to %struct.gs_function_Sd_s*
  store %struct.gs_function_Sd_s* %29, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %30 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = bitcast i32* %sa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %ss to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = bitcast i32* %order to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.gs_function_Sd_s* %35, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %for.end
  %36 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %36, i32 0, i32 1
  %37 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %38 = bitcast %struct.gs_function_Sd_params_s* %params18 to i8*
  %39 = bitcast %struct.gs_function_Sd_params_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 136, i32 8, i1 false), !tbaa.struct !23
  %40 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %params.addr, align 8, !tbaa !1
  %Order19 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %40, i32 0, i32 4
  %41 = load i32, i32* %Order19, align 4, !tbaa !20
  %cmp20 = icmp eq i32 %41, 0
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.17
  %42 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %42, i32 0, i32 1
  %Order23 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params22, i32 0, i32 4
  store i32 1, i32* %Order23, align 4, !tbaa !25
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.17
  %43 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %43, i32 0, i32 1
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params25, i32 0, i32 10
  store double* null, double** %pole, align 8, !tbaa !29
  %44 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params26 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %44, i32 0, i32 1
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params26, i32 0, i32 11
  store i32* null, i32** %array_step, align 8, !tbaa !30
  %45 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params27 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %45, i32 0, i32 1
  %stream_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params27, i32 0, i32 12
  store i32* null, i32** %stream_step, align 8, !tbaa !31
  %46 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %46, i32 0, i32 0
  %47 = bitcast %struct.gs_function_head_s* %head to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast (%struct.gs_function_head_s* @gs_function_Sd_init.function_Sd_head to i8*), i64 72, i32 8, i1 false), !tbaa.struct !32
  %48 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %48, i32 0, i32 1
  %array_size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params28, i32 0, i32 13
  store i32 0, i32* %array_size, align 4, !tbaa !33
  %49 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %49, i32 0, i32 1
  %m30 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params29, i32 0, i32 0
  %50 = load i32, i32* %m30, align 4, !tbaa !34
  %cmp31 = icmp eq i32 %50, 1
  br i1 %cmp31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.24
  %51 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params32 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %51, i32 0, i32 1
  %Order33 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params32, i32 0, i32 4
  %52 = load i32, i32* %Order33, align 4, !tbaa !25
  %cmp34 = icmp eq i32 %52, 1
  br i1 %cmp34, label %land.lhs.true.35, label %if.else

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %53 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params36 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %53, i32 0, i32 1
  %n37 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params36, i32 0, i32 2
  %54 = load i32, i32* %n37, align 4, !tbaa !35
  %cmp38 = icmp sle i32 %54, 8
  br i1 %cmp38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.lhs.true.35
  br label %if.end.116

if.else:                                          ; preds = %land.lhs.true.35, %land.lhs.true, %if.end.24
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs40, i32 0, i32 10
  %56 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !36
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call41 = call i8* %56(%struct.gs_memory_s* %57, i32 64, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #5
  %58 = bitcast i8* %call41 to i32*
  %59 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params42 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %59, i32 0, i32 1
  %array_step43 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params42, i32 0, i32 11
  store i32* %58, i32** %array_step43, align 8, !tbaa !30
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 1
  %alloc_byte_array45 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 10
  %61 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array45, align 8, !tbaa !36
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call46 = call i8* %61(%struct.gs_memory_s* %62, i32 64, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #5
  %63 = bitcast i8* %call46 to i32*
  %64 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params47 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %64, i32 0, i32 1
  %stream_step48 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params47, i32 0, i32 12
  store i32* %63, i32** %stream_step48, align 8, !tbaa !31
  %65 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params49 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %65, i32 0, i32 1
  %array_step50 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params49, i32 0, i32 11
  %66 = load i32*, i32** %array_step50, align 8, !tbaa !30
  %cmp51 = icmp eq i32* %66, null
  br i1 %cmp51, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %67 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params52 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %67, i32 0, i32 1
  %stream_step53 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params52, i32 0, i32 12
  %68 = load i32*, i32** %stream_step53, align 8, !tbaa !31
  %cmp54 = icmp eq i32* %68, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %lor.lhs.false, %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %lor.lhs.false
  %69 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params57 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %69, i32 0, i32 1
  %BitsPerSample58 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params57, i32 0, i32 6
  %70 = load i32, i32* %BitsPerSample58, align 4, !tbaa !37
  store i32 %70, i32* %bps, align 4, !tbaa !19
  %71 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params59 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %71, i32 0, i32 1
  %n60 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params59, i32 0, i32 2
  %72 = load i32, i32* %n60, align 4, !tbaa !35
  store i32 %72, i32* %sa, align 4, !tbaa !19
  %73 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params61 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %73, i32 0, i32 1
  %n62 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params61, i32 0, i32 2
  %74 = load i32, i32* %n62, align 4, !tbaa !35
  %75 = load i32, i32* %bps, align 4, !tbaa !19
  %mul = mul nsw i32 %74, %75
  store i32 %mul, i32* %ss, align 4, !tbaa !19
  %76 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params63 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %76, i32 0, i32 1
  %Order64 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params63, i32 0, i32 4
  %77 = load i32, i32* %Order64, align 4, !tbaa !25
  store i32 %77, i32* %order, align 4, !tbaa !19
  store i32 0, i32* %i14, align 4, !tbaa !19
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.91, %if.end.56
  %78 = load i32, i32* %i14, align 4, !tbaa !19
  %79 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params66 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %79, i32 0, i32 1
  %m67 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params66, i32 0, i32 0
  %80 = load i32, i32* %m67, align 4, !tbaa !34
  %cmp68 = icmp slt i32 %78, %80
  br i1 %cmp68, label %for.body.69, label %for.end.93

for.body.69:                                      ; preds = %for.cond.65
  %81 = load i32, i32* %sa, align 4, !tbaa !19
  %82 = load i32, i32* %order, align 4, !tbaa !19
  %mul70 = mul nsw i32 %81, %82
  %83 = load i32, i32* %i14, align 4, !tbaa !19
  %idxprom71 = sext i32 %83 to i64
  %84 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params72 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %84, i32 0, i32 1
  %array_step73 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params72, i32 0, i32 11
  %85 = load i32*, i32** %array_step73, align 8, !tbaa !30
  %arrayidx74 = getelementptr inbounds i32, i32* %85, i64 %idxprom71
  store i32 %mul70, i32* %arrayidx74, align 4, !tbaa !19
  %86 = load i32, i32* %i14, align 4, !tbaa !19
  %idxprom75 = sext i32 %86 to i64
  %87 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params76 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %87, i32 0, i32 1
  %Size77 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params76, i32 0, i32 9
  %88 = load i32*, i32** %Size77, align 8, !tbaa !38
  %arrayidx78 = getelementptr inbounds i32, i32* %88, i64 %idxprom75
  %89 = load i32, i32* %arrayidx78, align 4, !tbaa !19
  %90 = load i32, i32* %order, align 4, !tbaa !19
  %mul79 = mul nsw i32 %89, %90
  %91 = load i32, i32* %order, align 4, !tbaa !19
  %sub = sub nsw i32 %91, 1
  %sub80 = sub nsw i32 %mul79, %sub
  %92 = load i32, i32* %sa, align 4, !tbaa !19
  %mul81 = mul nsw i32 %sub80, %92
  store i32 %mul81, i32* %sa, align 4, !tbaa !19
  %93 = load i32, i32* %ss, align 4, !tbaa !19
  %94 = load i32, i32* %i14, align 4, !tbaa !19
  %idxprom82 = sext i32 %94 to i64
  %95 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params83 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %95, i32 0, i32 1
  %stream_step84 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params83, i32 0, i32 12
  %96 = load i32*, i32** %stream_step84, align 8, !tbaa !31
  %arrayidx85 = getelementptr inbounds i32, i32* %96, i64 %idxprom82
  store i32 %93, i32* %arrayidx85, align 4, !tbaa !19
  %97 = load i32, i32* %i14, align 4, !tbaa !19
  %idxprom86 = sext i32 %97 to i64
  %98 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params87 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %98, i32 0, i32 1
  %Size88 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params87, i32 0, i32 9
  %99 = load i32*, i32** %Size88, align 8, !tbaa !38
  %arrayidx89 = getelementptr inbounds i32, i32* %99, i64 %idxprom86
  %100 = load i32, i32* %arrayidx89, align 4, !tbaa !19
  %101 = load i32, i32* %ss, align 4, !tbaa !19
  %mul90 = mul nsw i32 %100, %101
  store i32 %mul90, i32* %ss, align 4, !tbaa !19
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.69
  %102 = load i32, i32* %i14, align 4, !tbaa !19
  %inc92 = add nsw i32 %102, 1
  store i32 %inc92, i32* %i14, align 4, !tbaa !19
  br label %for.cond.65

for.end.93:                                       ; preds = %for.cond.65
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs94 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %103, i32 0, i32 1
  %alloc_byte_array95 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs94, i32 0, i32 10
  %104 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array95, align 8, !tbaa !36
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %106 = load i32, i32* %sa, align 4, !tbaa !19
  %call96 = call i8* %104(%struct.gs_memory_s* %105, i32 %106, i32 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #5
  %107 = bitcast i8* %call96 to double*
  %108 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params97 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %108, i32 0, i32 1
  %pole98 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params97, i32 0, i32 10
  store double* %107, double** %pole98, align 8, !tbaa !29
  %109 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params99 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %109, i32 0, i32 1
  %pole100 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params99, i32 0, i32 10
  %110 = load double*, double** %pole100, align 8, !tbaa !29
  %cmp101 = icmp eq double* %110, null
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %for.end.93
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.103:                                       ; preds = %for.end.93
  store i32 0, i32* %i14, align 4, !tbaa !19
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.111, %if.end.103
  %111 = load i32, i32* %i14, align 4, !tbaa !19
  %112 = load i32, i32* %sa, align 4, !tbaa !19
  %cmp105 = icmp slt i32 %111, %112
  br i1 %cmp105, label %for.body.106, label %for.end.113

for.body.106:                                     ; preds = %for.cond.104
  %113 = load i32, i32* %i14, align 4, !tbaa !19
  %idxprom107 = sext i32 %113 to i64
  %114 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params108 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %114, i32 0, i32 1
  %pole109 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params108, i32 0, i32 10
  %115 = load double*, double** %pole109, align 8, !tbaa !29
  %arrayidx110 = getelementptr inbounds double, double* %115, i64 %idxprom107
  store double 1.000000e+90, double* %arrayidx110, align 8, !tbaa !39
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.106
  %116 = load i32, i32* %i14, align 4, !tbaa !19
  %inc112 = add nsw i32 %116, 1
  store i32 %inc112, i32* %i14, align 4, !tbaa !19
  br label %for.cond.104

for.end.113:                                      ; preds = %for.cond.104
  %117 = load i32, i32* %sa, align 4, !tbaa !19
  %118 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params114 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %118, i32 0, i32 1
  %array_size115 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params114, i32 0, i32 13
  store i32 %117, i32* %array_size115, align 4, !tbaa !33
  br label %if.end.116

if.end.116:                                       ; preds = %for.end.113, %if.then.39
  %119 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %120 = bitcast %struct.gs_function_Sd_s* %119 to %struct.gs_function_s*
  %121 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %120, %struct.gs_function_s** %121, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.116, %if.then.102, %if.then.55, %if.then.16
  %122 = bitcast i32* %order to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i32* %ss to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %sa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.122 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.122

cleanup.122:                                      ; preds = %cleanup.cont, %cleanup, %if.then.11, %sw.default.6, %sw.default, %if.then.3, %if.then
  %128 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_Sd_evaluate(%struct.gs_function_s* %pfn_common, float* %in, float* %out) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %pfn = alloca %struct.gs_function_Sd_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %in, float** %in.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_Sd_s*
  store %struct.gs_function_Sd_s* %2, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %4, i32 0, i32 1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 4
  %5 = load i32, i32* %Order, align 4, !tbaa !25
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %7 = load float*, float** %in.addr, align 8, !tbaa !1
  %8 = load float*, float** %out.addr, align 8, !tbaa !1
  %call = call i32 @fn_Sd_evaluate_multicubic_cached(%struct.gs_function_Sd_s* %6, float* %7, float* %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %10 = load float*, float** %in.addr, align 8, !tbaa !1
  %11 = load float*, float** %out.addr, align 8, !tbaa !1
  %call1 = call i32 @fn_Sd_evaluate_general(%struct.gs_function_s* %9, float* %10, float* %11) #5
  store i32 %call1, i32* %code, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !19
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_Sd_is_monotonic(%struct.gs_function_s* %pfn_common, float* %lower, float* %upper, i32* %mask) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %lower.addr = alloca float*, align 8
  %upper.addr = alloca float*, align 8
  %mask.addr = alloca i32*, align 8
  %pfn = alloca %struct.gs_function_Sd_s*, align 8
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %lower, float** %lower.addr, align 8, !tbaa !1
  store float* %upper, float** %upper.addr, align 8, !tbaa !1
  store i32* %mask, i32** %mask.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_Sd_s*
  store %struct.gs_function_Sd_s* %2, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %3 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %4 = load float*, float** %lower.addr, align 8, !tbaa !1
  %5 = load float*, float** %upper.addr, align 8, !tbaa !1
  %6 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  %call = call i32 @fn_Sd_is_monotonic_aux(%struct.gs_function_Sd_s* %3, float* %4, float* %5, i32* %6) #5
  %7 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @fn_Sd_get_info(%struct.gs_function_s* %pfn_common, %struct.gs_function_info_s* %pfi) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %pfi.addr = alloca %struct.gs_function_info_s*, align 8
  %pfn = alloca %struct.gs_function_Sd_s*, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store %struct.gs_function_info_s* %pfi, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_Sd_s*
  store %struct.gs_function_Sd_s* %2, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %3 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %6 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  call void @gs_function_get_info_default(%struct.gs_function_s* %5, %struct.gs_function_info_s* %6) #5
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %8 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %DataSource1 = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %8, i32 0, i32 0
  store %struct.gs_data_source_s* %DataSource, %struct.gs_data_source_s** %DataSource1, align 8, !tbaa !41
  store i32 0, i32* %i, align 4, !tbaa !19
  store i64 1, i64* %size, align 8, !tbaa !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !19
  %10 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %10, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 0
  %11 = load i32, i32* %m, align 4, !tbaa !34
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %13, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 9
  %14 = load i32*, i32** %Size, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4, !tbaa !19
  %conv = sext i32 %15 to i64
  %16 = load i64, i64* %size, align 8, !tbaa !44
  %mul = mul nsw i64 %16, %conv
  store i64 %mul, i64* %size, align 8, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %size, align 8, !tbaa !44
  %19 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %19, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params4, i32 0, i32 2
  %20 = load i32, i32* %n, align 4, !tbaa !35
  %conv5 = sext i32 %20 to i64
  %mul6 = mul nsw i64 %18, %conv5
  %21 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %21, i32 0, i32 1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params7, i32 0, i32 6
  %22 = load i32, i32* %BitsPerSample, align 4, !tbaa !37
  %conv8 = sext i32 %22 to i64
  %mul9 = mul nsw i64 %mul6, %conv8
  %add = add nsw i64 %mul9, 7
  %shr = ashr i64 %add, 3
  %23 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %23, i32 0, i32 1
  store i64 %shr, i64* %data_size, align 8, !tbaa !45
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i64* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_Sd_get_params(%struct.gs_function_s* %pfn_common, %struct.gs_param_list_s* %plist) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pfn = alloca %struct.gs_function_Sd_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_Sd_s*
  store %struct.gs_function_Sd_s* %2, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @fn_common_get_params(%struct.gs_function_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %ecode, align 4, !tbaa !19
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 4
  %8 = load i32, i32* %Order, align 4, !tbaa !25
  %cmp = icmp ne i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %10, i32 0, i32 1
  %Order2 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params1, i32 0, i32 4
  %call3 = call i32 @param_write_int(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32* %Order2) #5
  store i32 %call3, i32* %code, align 4, !tbaa !19
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %11, i32* %ecode, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %13, i32 0, i32 1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params7, i32 0, i32 6
  %call8 = call i32 @param_write_int(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32* %BitsPerSample) #5
  store i32 %call8, i32* %code, align 4, !tbaa !19
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %14 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %14, i32* %ecode, align 4, !tbaa !19
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.6
  %15 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %15, i32 0, i32 1
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params12, i32 0, i32 7
  %16 = load float*, float** %Encode, align 8, !tbaa !46
  %tobool = icmp ne float* %16, null
  br i1 %tobool, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.11
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %18, i32 0, i32 1
  %Encode15 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params14, i32 0, i32 7
  %19 = load float*, float** %Encode15, align 8, !tbaa !46
  %20 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %20, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params16, i32 0, i32 0
  %21 = load i32, i32* %m, align 4, !tbaa !34
  %mul = mul nsw i32 2, %21
  %call17 = call i32 @param_write_float_values(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), float* %19, i32 %mul, i32 0) #5
  store i32 %call17, i32* %code, align 4, !tbaa !19
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.13
  %22 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %22, i32* %ecode, align 4, !tbaa !19
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.11
  %23 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %23, i32 0, i32 1
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params22, i32 0, i32 8
  %24 = load float*, float** %Decode, align 8, !tbaa !47
  %tobool23 = icmp ne float* %24, null
  br i1 %tobool23, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %if.end.21
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %26, i32 0, i32 1
  %Decode26 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params25, i32 0, i32 8
  %27 = load float*, float** %Decode26, align 8, !tbaa !47
  %28 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params27 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %28, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params27, i32 0, i32 2
  %29 = load i32, i32* %n, align 4, !tbaa !35
  %mul28 = mul nsw i32 2, %29
  %call29 = call i32 @param_write_float_values(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), float* %27, i32 %mul28, i32 0) #5
  store i32 %call29, i32* %code, align 4, !tbaa !19
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.24
  %30 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %30, i32* %ecode, align 4, !tbaa !19
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.24
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.21
  %31 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params34 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %31, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params34, i32 0, i32 9
  %32 = load i32*, i32** %Size, align 8, !tbaa !38
  %tobool35 = icmp ne i32* %32, null
  br i1 %tobool35, label %if.then.36, label %if.end.45

if.then.36:                                       ; preds = %if.end.33
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %34 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params37 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %34, i32 0, i32 1
  %Size38 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params37, i32 0, i32 9
  %35 = load i32*, i32** %Size38, align 8, !tbaa !38
  %36 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params39 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %36, i32 0, i32 1
  %m40 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params39, i32 0, i32 0
  %37 = load i32, i32* %m40, align 4, !tbaa !34
  %call41 = call i32 @param_write_int_values(%struct.gs_param_list_s* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32* %35, i32 %37, i32 0) #5
  store i32 %call41, i32* %code, align 4, !tbaa !19
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.36
  %38 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %38, i32* %ecode, align 4, !tbaa !19
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.then.36
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.33
  %39 = load i32, i32* %ecode, align 4, !tbaa !19
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_Sd_make_scaled(%struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %ppsfn, %struct.gs_range_s* %pranges, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %ppsfn.addr = alloca %struct.gs_function_Sd_s**, align 8
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psfn = alloca %struct.gs_function_Sd_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store %struct.gs_function_Sd_s** %ppsfn, %struct.gs_function_Sd_s*** %ppsfn.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_s** %psfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !22
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_function_Sd, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.gs_function_Sd_s*
  store %struct.gs_function_Sd_s* %4, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_function_Sd_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %8 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %8, i32 0, i32 1
  %9 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  %10 = bitcast %struct.gs_function_Sd_params_s* %params1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 136, i32 8, i1 false), !tbaa.struct !23
  %11 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %11, i32 0, i32 1
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 7
  store float* null, float** %Encode, align 8, !tbaa !46
  %12 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %12, i32 0, i32 1
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 8
  store float* null, float** %Decode, align 8, !tbaa !47
  %13 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %13, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params4, i32 0, i32 9
  %14 = load i32*, i32** %Size, align 8, !tbaa !38
  %15 = bitcast i32* %14 to i8*
  %16 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %16, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params5, i32 0, i32 0
  %17 = load i32, i32* %m, align 4, !tbaa !34
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call6 = call i8* @fn_copy_values(i8* %15, i32 %17, i32 4, %struct.gs_memory_s* %18) #5
  %19 = bitcast i8* %call6 to i32*
  %20 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %20, i32 0, i32 1
  %Size8 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params7, i32 0, i32 9
  store i32* %19, i32** %Size8, align 8, !tbaa !38
  %21 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %21, i32 0, i32 1
  %Size10 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params9, i32 0, i32 9
  %22 = load i32*, i32** %Size10, align 8, !tbaa !38
  %cmp11 = icmp eq i32* %22, null
  %cond = select i1 %cmp11, i32 -25, i32 0
  store i32 %cond, i32* %code, align 4, !tbaa !19
  %cmp12 = icmp slt i32 %cond, 0
  br i1 %cmp12, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %23 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %24 = bitcast %struct.gs_function_Sd_s* %23 to %struct.gs_function_s*
  %25 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gs_function_Sd_s* %25 to %struct.gs_function_s*
  %27 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call13 = call i32 @fn_common_scale(%struct.gs_function_s* %24, %struct.gs_function_s* %26, %struct.gs_range_s* %27, %struct.gs_memory_s* %28) #5
  store i32 %call13, i32* %code, align 4, !tbaa !19
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.32, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %29 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %29, i32 0, i32 1
  %Encode17 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params16, i32 0, i32 7
  %30 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %30, i32 0, i32 1
  %Encode19 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params18, i32 0, i32 7
  %31 = load float*, float** %Encode19, align 8, !tbaa !46
  %32 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %32, i32 0, i32 1
  %m21 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params20, i32 0, i32 0
  %33 = load i32, i32* %m21, align 4, !tbaa !34
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call22 = call i32 @fn_scale_pairs(float** %Encode17, float* %31, i32 %33, %struct.gs_range_s* null, %struct.gs_memory_s* %34) #5
  store i32 %call22, i32* %code, align 4, !tbaa !19
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.32, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.15
  %35 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %35, i32 0, i32 1
  %Decode26 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params25, i32 0, i32 8
  %36 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params27 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %36, i32 0, i32 1
  %Decode28 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params27, i32 0, i32 8
  %37 = load float*, float** %Decode28, align 8, !tbaa !47
  %38 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %38, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params29, i32 0, i32 2
  %39 = load i32, i32* %n, align 4, !tbaa !35
  %40 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call30 = call i32 @fn_scale_pairs(float** %Decode26, float* %37, i32 %39, %struct.gs_range_s* %40, %struct.gs_memory_s* %41) #5
  store i32 %call30, i32* %code, align 4, !tbaa !19
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false.15, %lor.lhs.false, %if.end
  %42 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %43 = bitcast %struct.gs_function_Sd_s* %42 to %struct.gs_function_s*
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %43, i32 0, i32 0
  %procs33 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs33, i32 0, i32 6
  %44 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !48
  %45 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %46 = bitcast %struct.gs_function_Sd_s* %45 to %struct.gs_function_s*
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void %44(%struct.gs_function_s* %46, i32 1, %struct.gs_memory_s* %47) #5
  br label %if.end.34

if.else:                                          ; preds = %lor.lhs.false.24
  %48 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %psfn, align 8, !tbaa !1
  %49 = load %struct.gs_function_Sd_s**, %struct.gs_function_Sd_s*** %ppsfn.addr, align 8, !tbaa !1
  store %struct.gs_function_Sd_s* %48, %struct.gs_function_Sd_s** %49, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.32
  %50 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then
  %51 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast %struct.gs_function_Sd_s** %psfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare void @fn_common_free(%struct.gs_function_s*, i32, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gs_function_Sd_serialize(%struct.gs_function_s* %pfn, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %n = alloca i32, align 4
  %p = alloca %struct.gs_function_Sd_params_s*, align 8
  %info = alloca %struct.gs_function_info_s, align 8
  %code = alloca i32, align 4
  %pos = alloca i64, align 8
  %count = alloca i32, align 4
  %buf = alloca [100 x i8], align 16
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_function_Sd_params_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %2, i32 0, i32 1
  %3 = bitcast %struct.gs_function_params_s* %params to %struct.gs_function_Sd_params_s*
  store %struct.gs_function_Sd_params_s* %3, %struct.gs_function_Sd_params_s** %p, align 8, !tbaa !1
  %4 = bitcast %struct.gs_function_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #2
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @fn_common_serialize(%struct.gs_function_s* %6, %struct.stream_s* %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %8 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast [100 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 100, i8* %10) #2
  %11 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %p, align 8, !tbaa !1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %15, i32 0, i32 4
  %16 = bitcast i32* %Order to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %14, i8* %16, i32 4, i32* %n) #5
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %17 = load i32, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp slt i32 %17, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %20 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %p, align 8, !tbaa !1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %20, i32 0, i32 6
  %21 = bitcast i32* %BitsPerSample to i8*
  %call5 = call i32 @sputs(%struct.stream_s* %19, i8* %21, i32 4, i32* %n) #5
  store i32 %call5, i32* %code, align 4, !tbaa !19
  %22 = load i32, i32* %code, align 4, !tbaa !19
  %cmp6 = icmp slt i32 %22, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %23 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %24 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %p, align 8, !tbaa !1
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %24, i32 0, i32 7
  %25 = load float*, float** %Encode, align 8, !tbaa !10
  %26 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %p, align 8, !tbaa !1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %26, i32 0, i32 0
  %27 = load i32, i32* %m, align 4, !tbaa !17
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call9 = call i32 @serialize_array(float* %25, i32 %27, %struct.stream_s* %28) #5
  store i32 %call9, i32* %code, align 4, !tbaa !19
  %29 = load i32, i32* %code, align 4, !tbaa !19
  %cmp10 = icmp slt i32 %29, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %30 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %31 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %p, align 8, !tbaa !1
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %31, i32 0, i32 8
  %32 = load float*, float** %Decode, align 8, !tbaa !9
  %33 = load %struct.gs_function_Sd_params_s*, %struct.gs_function_Sd_params_s** %p, align 8, !tbaa !1
  %n13 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %33, i32 0, i32 2
  %34 = load i32, i32* %n13, align 4, !tbaa !18
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call14 = call i32 @serialize_array(float* %32, i32 %34, %struct.stream_s* %35) #5
  store i32 %call14, i32* %code, align 4, !tbaa !19
  %36 = load i32, i32* %code, align 4, !tbaa !19
  %cmp15 = icmp slt i32 %36, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  %37 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.12
  %38 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %38, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %get_info = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 2
  %39 = load void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)** %get_info, align 8, !tbaa !51
  %40 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  call void %39(%struct.gs_function_s* %40, %struct.gs_function_info_s* %info) #5
  %41 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %data_size = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %info, i32 0, i32 1
  %42 = bitcast i64* %data_size to i8*
  %call18 = call i32 @sputs(%struct.stream_s* %41, i8* %42, i32 8, i32* %n) #5
  store i32 %call18, i32* %code, align 4, !tbaa !19
  %43 = load i32, i32* %code, align 4, !tbaa !19
  %cmp19 = icmp slt i32 %43, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  %44 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  store i64 0, i64* %pos, align 8, !tbaa !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %45 = load i64, i64* %pos, align 8, !tbaa !44
  %data_size22 = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %info, i32 0, i32 1
  %46 = load i64, i64* %data_size22, align 8, !tbaa !45
  %cmp23 = icmp ult i64 %45, %46
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %data_size24 = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %info, i32 0, i32 1
  %47 = load i64, i64* %data_size24, align 8, !tbaa !45
  %48 = load i64, i64* %pos, align 8, !tbaa !44
  %sub = sub i64 %47, %48
  %cmp25 = icmp ult i64 100, %sub
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %data_size26 = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %info, i32 0, i32 1
  %49 = load i64, i64* %data_size26, align 8, !tbaa !45
  %50 = load i64, i64* %pos, align 8, !tbaa !44
  %sub27 = sub i64 %49, %50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 100, %cond.true ], [ %sub27, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %count, align 4, !tbaa !19
  %DataSource = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %info, i32 0, i32 0
  %51 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %DataSource, align 8, !tbaa !41
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %51, i32 0, i32 0
  %52 = load i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !52
  %DataSource28 = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %info, i32 0, i32 0
  %53 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %DataSource28, align 8, !tbaa !41
  %54 = load i64, i64* %pos, align 8, !tbaa !44
  %55 = load i32, i32* %count, align 4, !tbaa !19
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call29 = call i32 %52(%struct.gs_data_source_s* %53, i64 %54, i32 %55, i8* %arraydecay, i8** %ptr) #5
  %56 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %57 = load i8*, i8** %ptr, align 8, !tbaa !1
  %58 = load i32, i32* %count, align 4, !tbaa !19
  %call30 = call i32 @sputs(%struct.stream_s* %56, i8* %57, i32 %58, i32* %n) #5
  store i32 %call30, i32* %code, align 4, !tbaa !19
  %59 = load i32, i32* %code, align 4, !tbaa !19
  %cmp31 = icmp slt i32 %59, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %cond.end
  %60 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %61 = load i32, i32* %count, align 4, !tbaa !19
  %conv35 = zext i32 %61 to i64
  %62 = load i64, i64* %pos, align 8, !tbaa !44
  %add = add i64 %62, %conv35
  store i64 %add, i64* %pos, align 8, !tbaa !44
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.33, %if.then.20, %if.then.16, %if.then.11, %if.then.7, %if.then.3, %if.then
  %63 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast [100 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 100, i8* %64) #2
  %65 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast %struct.gs_function_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 32, i8* %68) #2
  %69 = bitcast %struct.gs_function_Sd_params_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @fn_check_mnDR(%struct.gs_function_params_s*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @fn_Sd_evaluate_multicubic_cached(%struct.gs_function_Sd_s* %pfn, float* %in, float* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %T = alloca [64 x double], align 16
  %y = alloca [64 x double], align 16
  %I = alloca [64 x i32], align 16
  %k = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %yk = alloca double, align 8
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store float* %in, float** %in.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = bitcast [64 x double]* %T to i8*
  call void @llvm.lifetime.start(i64 512, i8* %0) #2
  %1 = bitcast [64 x double]* %y to i8*
  call void @llvm.lifetime.start(i64 512, i8* %1) #2
  %2 = bitcast [64 x i32]* %I to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #2
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %6 = load float*, float** %in.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x double], [64 x double]* %T, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [64 x i32], [64 x i32]* %I, i32 0, i32 0
  call void @decode_argument(%struct.gs_function_Sd_s* %5, float* %6, double* %arraydecay, i32* %arraydecay1) #5
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %arraydecay2 = getelementptr inbounds [64 x i32], [64 x i32]* %I, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [64 x double], [64 x double]* %T, i32 0, i32 0
  %8 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %8, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %9 = load i32, i32* %m, align 4, !tbaa !34
  %sub = sub nsw i32 %9, 1
  %call = call i32 @make_interpolation_tensor(%struct.gs_function_Sd_s* %7, i32* %arraydecay2, double* %arraydecay3, i32 0, i32 0, i32 %sub) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %10 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %arraydecay4 = getelementptr inbounds [64 x i32], [64 x i32]* %I, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [64 x double], [64 x double]* %T, i32 0, i32 0
  %13 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %13, i32 0, i32 1
  %m7 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params6, i32 0, i32 0
  %14 = load i32, i32* %m7, align 4, !tbaa !34
  %sub8 = sub nsw i32 %14, 1
  %arraydecay9 = getelementptr inbounds [64 x double], [64 x double]* %y, i32 0, i32 0
  %call10 = call i32 @evaluate_from_tenzor(%struct.gs_function_Sd_s* %12, i32* %arraydecay4, double* %arraydecay5, i32 0, i32 %sub8, double* %arraydecay9) #5
  store i32 0, i32* %k, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %k, align 4, !tbaa !19
  %16 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %16, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params11, i32 0, i32 2
  %17 = load i32, i32* %n, align 4, !tbaa !35
  %cmp12 = icmp slt i32 %15, %17
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = bitcast double* %yk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [64 x double], [64 x double]* %y, i32 0, i64 %idxprom
  %20 = load double, double* %arrayidx, align 8, !tbaa !39
  store double %20, double* %yk, align 8, !tbaa !39
  %21 = load double, double* %yk, align 8, !tbaa !39
  %22 = load i32, i32* %k, align 4, !tbaa !19
  %mul = mul nsw i32 %22, 2
  %add = add nsw i32 %mul, 0
  %idxprom13 = sext i32 %add to i64
  %23 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %23, i32 0, i32 1
  %Range = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params14, i32 0, i32 3
  %24 = load float*, float** %Range, align 8, !tbaa !53
  %arrayidx15 = getelementptr inbounds float, float* %24, i64 %idxprom13
  %25 = load float, float* %arrayidx15, align 4, !tbaa !54
  %conv = fpext float %25 to double
  %cmp16 = fcmp olt double %21, %conv
  br i1 %cmp16, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %for.body
  %26 = load i32, i32* %k, align 4, !tbaa !19
  %mul19 = mul nsw i32 %26, 2
  %add20 = add nsw i32 %mul19, 0
  %idxprom21 = sext i32 %add20 to i64
  %27 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %27, i32 0, i32 1
  %Range23 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params22, i32 0, i32 3
  %28 = load float*, float** %Range23, align 8, !tbaa !53
  %arrayidx24 = getelementptr inbounds float, float* %28, i64 %idxprom21
  %29 = load float, float* %arrayidx24, align 4, !tbaa !54
  %conv25 = fpext float %29 to double
  store double %conv25, double* %yk, align 8, !tbaa !39
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.18, %for.body
  %30 = load double, double* %yk, align 8, !tbaa !39
  %31 = load i32, i32* %k, align 4, !tbaa !19
  %mul27 = mul nsw i32 %31, 2
  %add28 = add nsw i32 %mul27, 1
  %idxprom29 = sext i32 %add28 to i64
  %32 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %32, i32 0, i32 1
  %Range31 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params30, i32 0, i32 3
  %33 = load float*, float** %Range31, align 8, !tbaa !53
  %arrayidx32 = getelementptr inbounds float, float* %33, i64 %idxprom29
  %34 = load float, float* %arrayidx32, align 4, !tbaa !54
  %conv33 = fpext float %34 to double
  %cmp34 = fcmp ogt double %30, %conv33
  br i1 %cmp34, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %if.end.26
  %35 = load i32, i32* %k, align 4, !tbaa !19
  %mul37 = mul nsw i32 %35, 2
  %add38 = add nsw i32 %mul37, 1
  %idxprom39 = sext i32 %add38 to i64
  %36 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %36, i32 0, i32 1
  %Range41 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params40, i32 0, i32 3
  %37 = load float*, float** %Range41, align 8, !tbaa !53
  %arrayidx42 = getelementptr inbounds float, float* %37, i64 %idxprom39
  %38 = load float, float* %arrayidx42, align 4, !tbaa !54
  %conv43 = fpext float %38 to double
  store double %conv43, double* %yk, align 8, !tbaa !39
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.36, %if.end.26
  %39 = load double, double* %yk, align 8, !tbaa !39
  %conv45 = fptrunc double %39 to float
  %40 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom46 = sext i32 %40 to i64
  %41 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds float, float* %41, i64 %idxprom46
  store float %conv45, float* %arrayidx47, align 4, !tbaa !54
  %42 = bitcast double* %yk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %43 = load i32, i32* %k, align 4, !tbaa !19
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %k, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = bitcast [64 x i32]* %I to i8*
  call void @llvm.lifetime.end(i64 256, i8* %46) #2
  %47 = bitcast [64 x double]* %y to i8*
  call void @llvm.lifetime.end(i64 512, i8* %47) #2
  %48 = bitcast [64 x double]* %T to i8*
  call void @llvm.lifetime.end(i64 512, i8* %48) #2
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_Sd_evaluate_general(%struct.gs_function_s* %pfn_common, float* %in, float* %out) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %pfn = alloca %struct.gs_function_Sd_s*, align 8
  %bps = alloca i32, align 4
  %offset = alloca i64, align 8
  %i = alloca i32, align 4
  %encoded = alloca [64 x float], align 16
  %iparts = alloca [64 x i32], align 16
  %factors = alloca [64 x i64], align 16
  %samples = alloca [64 x float], align 16
  %d0 = alloca float, align 4
  %d1 = alloca float, align 4
  %arg = alloca float, align 4
  %enc = alloca float, align 4
  %e0 = alloca float, align 4
  %e1 = alloca float, align 4
  %factor = alloca i64, align 8
  %ipart = alloca i32, align 4
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %in, float** %in.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_Sd_s*
  store %struct.gs_function_Sd_s* %2, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %3 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %4, i32 0, i32 1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  %5 = load i32, i32* %BitsPerSample, align 4, !tbaa !37
  store i32 %5, i32* %bps, align 4, !tbaa !19
  %6 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  store i64 0, i64* %offset, align 8, !tbaa !44
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast [64 x float]* %encoded to i8*
  call void @llvm.lifetime.start(i64 256, i8* %8) #2
  %9 = bitcast [64 x i32]* %iparts to i8*
  call void @llvm.lifetime.start(i64 256, i8* %9) #2
  %10 = bitcast [64 x i64]* %factors to i8*
  call void @llvm.lifetime.start(i64 512, i8* %10) #2
  %11 = bitcast [64 x float]* %samples to i8*
  call void @llvm.lifetime.start(i64 256, i8* %11) #2
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !19
  %13 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %13, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params1, i32 0, i32 0
  %14 = load i32, i32* %m, align 4, !tbaa !34
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %i, align 4, !tbaa !19
  %mul = mul nsw i32 2, %16
  %idxprom = sext i32 %mul to i64
  %17 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %17, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 1
  %18 = load float*, float** %Domain, align 8, !tbaa !56
  %arrayidx = getelementptr inbounds float, float* %18, i64 %idxprom
  %19 = load float, float* %arrayidx, align 4, !tbaa !54
  store float %19, float* %d0, align 4, !tbaa !54
  %20 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %mul3 = mul nsw i32 2, %21
  %add = add nsw i32 %mul3, 1
  %idxprom4 = sext i32 %add to i64
  %22 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %22, i32 0, i32 1
  %Domain6 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params5, i32 0, i32 1
  %23 = load float*, float** %Domain6, align 8, !tbaa !56
  %arrayidx7 = getelementptr inbounds float, float* %23, i64 %idxprom4
  %24 = load float, float* %arrayidx7, align 4, !tbaa !54
  store float %24, float* %d1, align 4, !tbaa !54
  %25 = bitcast float* %arg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom8 = sext i32 %26 to i64
  %27 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %27, i64 %idxprom8
  %28 = load float, float* %arrayidx9, align 4, !tbaa !54
  store float %28, float* %arg, align 4, !tbaa !54
  %29 = bitcast float* %enc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load float, float* %arg, align 4, !tbaa !54
  %31 = load float, float* %d0, align 4, !tbaa !54
  %cmp10 = fcmp olt float %30, %31
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %32 = load float, float* %d0, align 4, !tbaa !54
  store float %32, float* %arg, align 4, !tbaa !54
  br label %if.end.13

if.else:                                          ; preds = %for.body
  %33 = load float, float* %arg, align 4, !tbaa !54
  %34 = load float, float* %d1, align 4, !tbaa !54
  %cmp11 = fcmp ogt float %33, %34
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else
  %35 = load float, float* %d1, align 4, !tbaa !54
  store float %35, float* %arg, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %36 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %36, i32 0, i32 1
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params14, i32 0, i32 7
  %37 = load float*, float** %Encode, align 8, !tbaa !46
  %tobool = icmp ne float* %37, null
  br i1 %tobool, label %if.then.15, label %if.else.56

if.then.15:                                       ; preds = %if.end.13
  %38 = bitcast float* %e0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load i32, i32* %i, align 4, !tbaa !19
  %mul16 = mul nsw i32 2, %39
  %idxprom17 = sext i32 %mul16 to i64
  %40 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %40, i32 0, i32 1
  %Encode19 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params18, i32 0, i32 7
  %41 = load float*, float** %Encode19, align 8, !tbaa !46
  %arrayidx20 = getelementptr inbounds float, float* %41, i64 %idxprom17
  %42 = load float, float* %arrayidx20, align 4, !tbaa !54
  store float %42, float* %e0, align 4, !tbaa !54
  %43 = bitcast float* %e1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load i32, i32* %i, align 4, !tbaa !19
  %mul21 = mul nsw i32 2, %44
  %add22 = add nsw i32 %mul21, 1
  %idxprom23 = sext i32 %add22 to i64
  %45 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %45, i32 0, i32 1
  %Encode25 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params24, i32 0, i32 7
  %46 = load float*, float** %Encode25, align 8, !tbaa !46
  %arrayidx26 = getelementptr inbounds float, float* %46, i64 %idxprom23
  %47 = load float, float* %arrayidx26, align 4, !tbaa !54
  store float %47, float* %e1, align 4, !tbaa !54
  %48 = load float, float* %arg, align 4, !tbaa !54
  %49 = load float, float* %d0, align 4, !tbaa !54
  %sub = fsub float %48, %49
  %50 = load float, float* %e1, align 4, !tbaa !54
  %51 = load float, float* %e0, align 4, !tbaa !54
  %sub27 = fsub float %50, %51
  %mul28 = fmul float %sub, %sub27
  %52 = load float, float* %d1, align 4, !tbaa !54
  %53 = load float, float* %d0, align 4, !tbaa !54
  %sub29 = fsub float %52, %53
  %div = fdiv float %mul28, %sub29
  %54 = load float, float* %e0, align 4, !tbaa !54
  %add30 = fadd float %div, %54
  store float %add30, float* %enc, align 4, !tbaa !54
  %55 = load float, float* %enc, align 4, !tbaa !54
  %cmp31 = fcmp olt float %55, 0.000000e+00
  br i1 %cmp31, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %if.then.15
  %56 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom33 = sext i32 %56 to i64
  %arrayidx34 = getelementptr inbounds [64 x float], [64 x float]* %encoded, i32 0, i64 %idxprom33
  store float 0.000000e+00, float* %arrayidx34, align 4, !tbaa !54
  br label %if.end.55

if.else.35:                                       ; preds = %if.then.15
  %57 = load float, float* %enc, align 4, !tbaa !54
  %58 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom36 = sext i32 %58 to i64
  %59 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params37 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %59, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params37, i32 0, i32 9
  %60 = load i32*, i32** %Size, align 8, !tbaa !38
  %arrayidx38 = getelementptr inbounds i32, i32* %60, i64 %idxprom36
  %61 = load i32, i32* %arrayidx38, align 4, !tbaa !19
  %sub39 = sub nsw i32 %61, 1
  %conv = sitofp i32 %sub39 to float
  %cmp40 = fcmp oge float %57, %conv
  br i1 %cmp40, label %if.then.42, label %if.else.51

if.then.42:                                       ; preds = %if.else.35
  %62 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom43 = sext i32 %62 to i64
  %63 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params44 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %63, i32 0, i32 1
  %Size45 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params44, i32 0, i32 9
  %64 = load i32*, i32** %Size45, align 8, !tbaa !38
  %arrayidx46 = getelementptr inbounds i32, i32* %64, i64 %idxprom43
  %65 = load i32, i32* %arrayidx46, align 4, !tbaa !19
  %conv47 = sitofp i32 %65 to float
  %sub48 = fsub float %conv47, 1.000000e+00
  %66 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom49 = sext i32 %66 to i64
  %arrayidx50 = getelementptr inbounds [64 x float], [64 x float]* %encoded, i32 0, i64 %idxprom49
  store float %sub48, float* %arrayidx50, align 4, !tbaa !54
  br label %if.end.54

if.else.51:                                       ; preds = %if.else.35
  %67 = load float, float* %enc, align 4, !tbaa !54
  %68 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom52 = sext i32 %68 to i64
  %arrayidx53 = getelementptr inbounds [64 x float], [64 x float]* %encoded, i32 0, i64 %idxprom52
  store float %67, float* %arrayidx53, align 4, !tbaa !54
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.42
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.32
  %69 = bitcast float* %e1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast float* %e0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  br label %if.end.69

if.else.56:                                       ; preds = %if.end.13
  %71 = load float, float* %arg, align 4, !tbaa !54
  %72 = load float, float* %d0, align 4, !tbaa !54
  %sub57 = fsub float %71, %72
  %73 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom58 = sext i32 %73 to i64
  %74 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params59 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %74, i32 0, i32 1
  %Size60 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params59, i32 0, i32 9
  %75 = load i32*, i32** %Size60, align 8, !tbaa !38
  %arrayidx61 = getelementptr inbounds i32, i32* %75, i64 %idxprom58
  %76 = load i32, i32* %arrayidx61, align 4, !tbaa !19
  %sub62 = sub nsw i32 %76, 1
  %conv63 = sitofp i32 %sub62 to float
  %mul64 = fmul float %sub57, %conv63
  %77 = load float, float* %d1, align 4, !tbaa !54
  %78 = load float, float* %d0, align 4, !tbaa !54
  %sub65 = fsub float %77, %78
  %div66 = fdiv float %mul64, %sub65
  %79 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom67 = sext i32 %79 to i64
  %arrayidx68 = getelementptr inbounds [64 x float], [64 x float]* %encoded, i32 0, i64 %idxprom67
  store float %div66, float* %arrayidx68, align 4, !tbaa !54
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.56, %if.end.55
  %80 = bitcast float* %enc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast float* %arg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %84 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = bitcast i64* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #2
  %86 = load i32, i32* %bps, align 4, !tbaa !19
  %87 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params70 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %87, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params70, i32 0, i32 2
  %88 = load i32, i32* %n, align 4, !tbaa !35
  %mul71 = mul nsw i32 %86, %88
  %conv72 = sext i32 %mul71 to i64
  store i64 %conv72, i64* %factor, align 8, !tbaa !44
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.93, %for.end
  %89 = load i32, i32* %i, align 4, !tbaa !19
  %90 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params74 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %90, i32 0, i32 1
  %m75 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params74, i32 0, i32 0
  %91 = load i32, i32* %m75, align 4, !tbaa !34
  %cmp76 = icmp slt i32 %89, %91
  br i1 %cmp76, label %for.body.78, label %for.end.101

for.body.78:                                      ; preds = %for.cond.73
  %92 = bitcast i32* %ipart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #2
  %93 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom79 = sext i32 %93 to i64
  %arrayidx80 = getelementptr inbounds [64 x float], [64 x float]* %encoded, i32 0, i64 %idxprom79
  %94 = load float, float* %arrayidx80, align 4, !tbaa !54
  %conv81 = fptosi float %94 to i32
  store i32 %conv81, i32* %ipart, align 4, !tbaa !19
  %95 = load i64, i64* %factor, align 8, !tbaa !44
  %96 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom82 = sext i32 %96 to i64
  %arrayidx83 = getelementptr inbounds [64 x i64], [64 x i64]* %factors, i32 0, i64 %idxprom82
  store i64 %95, i64* %arrayidx83, align 8, !tbaa !44
  %97 = load i32, i32* %ipart, align 4, !tbaa !19
  %conv84 = sext i32 %97 to i64
  %mul85 = mul i64 %95, %conv84
  %98 = load i64, i64* %offset, align 8, !tbaa !44
  %add86 = add i64 %98, %mul85
  store i64 %add86, i64* %offset, align 8, !tbaa !44
  %99 = load i32, i32* %ipart, align 4, !tbaa !19
  %100 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom87 = sext i32 %100 to i64
  %arrayidx88 = getelementptr inbounds [64 x i32], [64 x i32]* %iparts, i32 0, i64 %idxprom87
  store i32 %99, i32* %arrayidx88, align 4, !tbaa !19
  %101 = load i32, i32* %ipart, align 4, !tbaa !19
  %conv89 = sitofp i32 %101 to float
  %102 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom90 = sext i32 %102 to i64
  %arrayidx91 = getelementptr inbounds [64 x float], [64 x float]* %encoded, i32 0, i64 %idxprom90
  %103 = load float, float* %arrayidx91, align 4, !tbaa !54
  %sub92 = fsub float %103, %conv89
  store float %sub92, float* %arrayidx91, align 4, !tbaa !54
  %104 = bitcast i32* %ipart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.78
  %105 = load i32, i32* %i, align 4, !tbaa !19
  %inc94 = add nsw i32 %105, 1
  store i32 %inc94, i32* %i, align 4, !tbaa !19
  %idxprom95 = sext i32 %105 to i64
  %106 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params96 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %106, i32 0, i32 1
  %Size97 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params96, i32 0, i32 9
  %107 = load i32*, i32** %Size97, align 8, !tbaa !38
  %arrayidx98 = getelementptr inbounds i32, i32* %107, i64 %idxprom95
  %108 = load i32, i32* %arrayidx98, align 4, !tbaa !19
  %conv99 = sext i32 %108 to i64
  %109 = load i64, i64* %factor, align 8, !tbaa !44
  %mul100 = mul i64 %109, %conv99
  store i64 %mul100, i64* %factor, align 8, !tbaa !44
  br label %for.cond.73

for.end.101:                                      ; preds = %for.cond.73
  %110 = bitcast i64* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params102 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %111, i32 0, i32 1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params102, i32 0, i32 4
  %112 = load i32, i32* %Order, align 4, !tbaa !25
  %cmp103 = icmp eq i32 %112, 3
  br i1 %cmp103, label %if.then.105, label %if.else.111

if.then.105:                                      ; preds = %for.end.101
  %113 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %encoded, i32 0, i32 0
  %arraydecay106 = getelementptr inbounds [64 x i32], [64 x i32]* %iparts, i32 0, i32 0
  %arraydecay107 = getelementptr inbounds [64 x i64], [64 x i64]* %factors, i32 0, i32 0
  %arraydecay108 = getelementptr inbounds [64 x float], [64 x float]* %samples, i32 0, i32 0
  %114 = load i64, i64* %offset, align 8, !tbaa !44
  %115 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params109 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %115, i32 0, i32 1
  %m110 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params109, i32 0, i32 0
  %116 = load i32, i32* %m110, align 4, !tbaa !34
  call void @fn_interpolate_cubic(%struct.gs_function_Sd_s* %113, float* %arraydecay, i32* %arraydecay106, i64* %arraydecay107, float* %arraydecay108, i64 %114, i32 %116) #5
  br label %if.end.117

if.else.111:                                      ; preds = %for.end.101
  %117 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %arraydecay112 = getelementptr inbounds [64 x float], [64 x float]* %encoded, i32 0, i32 0
  %arraydecay113 = getelementptr inbounds [64 x i64], [64 x i64]* %factors, i32 0, i32 0
  %arraydecay114 = getelementptr inbounds [64 x float], [64 x float]* %samples, i32 0, i32 0
  %118 = load i64, i64* %offset, align 8, !tbaa !44
  %119 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params115 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %119, i32 0, i32 1
  %m116 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params115, i32 0, i32 0
  %120 = load i32, i32* %m116, align 4, !tbaa !34
  call void @fn_interpolate_linear(%struct.gs_function_Sd_s* %117, float* %arraydecay112, i64* %arraydecay113, float* %arraydecay114, i64 %118, i32 %120) #5
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.111, %if.then.105
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.130, %if.end.117
  %121 = load i32, i32* %i, align 4, !tbaa !19
  %122 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params119 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %122, i32 0, i32 1
  %n120 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params119, i32 0, i32 2
  %123 = load i32, i32* %n120, align 4, !tbaa !35
  %cmp121 = icmp slt i32 %121, %123
  br i1 %cmp121, label %for.body.123, label %for.end.132

for.body.123:                                     ; preds = %for.cond.118
  %124 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %125 = load i32, i32* %i, align 4, !tbaa !19
  %126 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom124 = sext i32 %126 to i64
  %arrayidx125 = getelementptr inbounds [64 x float], [64 x float]* %samples, i32 0, i64 %idxprom124
  %127 = load float, float* %arrayidx125, align 4, !tbaa !54
  %conv126 = fpext float %127 to double
  %call = call double @fn_Sd_encode(%struct.gs_function_Sd_s* %124, i32 %125, double %conv126) #5
  %conv127 = fptrunc double %call to float
  %128 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom128 = sext i32 %128 to i64
  %129 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds float, float* %129, i64 %idxprom128
  store float %conv127, float* %arrayidx129, align 4, !tbaa !54
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.123
  %130 = load i32, i32* %i, align 4, !tbaa !19
  %inc131 = add nsw i32 %130, 1
  store i32 %inc131, i32* %i, align 4, !tbaa !19
  br label %for.cond.118

for.end.132:                                      ; preds = %for.cond.118
  %131 = bitcast [64 x float]* %samples to i8*
  call void @llvm.lifetime.end(i64 256, i8* %131) #2
  %132 = bitcast [64 x i64]* %factors to i8*
  call void @llvm.lifetime.end(i64 512, i8* %132) #2
  %133 = bitcast [64 x i32]* %iparts to i8*
  call void @llvm.lifetime.end(i64 256, i8* %133) #2
  %134 = bitcast [64 x float]* %encoded to i8*
  call void @llvm.lifetime.end(i64 256, i8* %134) #2
  %135 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @decode_argument(%struct.gs_function_Sd_s* %pfn, float* %in, double* %T, i32* %I) #3 {
entry:
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %in.addr = alloca float*, align 8
  %T.addr = alloca double*, align 8
  %I.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %xi = alloca float, align 4
  %d0 = alloca float, align 4
  %d1 = alloca float, align 4
  %t = alloca double, align 8
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store float* %in, float** %in.addr, align 8, !tbaa !1
  store double* %T, double** %T.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !19
  %2 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %2, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %3 = load i32, i32* %m, align 4, !tbaa !34
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast float* %xi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %5 to i64
  %6 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  %7 = load float, float* %arrayidx, align 4, !tbaa !54
  store float %7, float* %xi, align 4, !tbaa !54
  %8 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %i, align 4, !tbaa !19
  %mul = mul nsw i32 2, %9
  %add = add nsw i32 %mul, 0
  %idxprom1 = sext i32 %add to i64
  %10 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %10, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 1
  %11 = load float*, float** %Domain, align 8, !tbaa !56
  %arrayidx3 = getelementptr inbounds float, float* %11, i64 %idxprom1
  %12 = load float, float* %arrayidx3, align 4, !tbaa !54
  store float %12, float* %d0, align 4, !tbaa !54
  %13 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %i, align 4, !tbaa !19
  %mul4 = mul nsw i32 2, %14
  %add5 = add nsw i32 %mul4, 1
  %idxprom6 = sext i32 %add5 to i64
  %15 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %15, i32 0, i32 1
  %Domain8 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params7, i32 0, i32 1
  %16 = load float*, float** %Domain8, align 8, !tbaa !56
  %arrayidx9 = getelementptr inbounds float, float* %16, i64 %idxprom6
  %17 = load float, float* %arrayidx9, align 4, !tbaa !54
  store float %17, float* %d1, align 4, !tbaa !54
  %18 = bitcast double* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load float, float* %xi, align 4, !tbaa !54
  %20 = load float, float* %d0, align 4, !tbaa !54
  %cmp10 = fcmp olt float %19, %20
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load float, float* %d0, align 4, !tbaa !54
  store float %21, float* %xi, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %22 = load float, float* %xi, align 4, !tbaa !54
  %23 = load float, float* %d1, align 4, !tbaa !54
  %cmp11 = fcmp ogt float %22, %23
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %24 = load float, float* %d1, align 4, !tbaa !54
  store float %24, float* %xi, align 4, !tbaa !54
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %25 = load float, float* %xi, align 4, !tbaa !54
  %26 = load float, float* %d0, align 4, !tbaa !54
  %sub = fsub float %25, %26
  %27 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom14 = sext i32 %27 to i64
  %28 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %28, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params15, i32 0, i32 9
  %29 = load i32*, i32** %Size, align 8, !tbaa !38
  %arrayidx16 = getelementptr inbounds i32, i32* %29, i64 %idxprom14
  %30 = load i32, i32* %arrayidx16, align 4, !tbaa !19
  %sub17 = sub nsw i32 %30, 1
  %conv = sitofp i32 %sub17 to float
  %mul18 = fmul float %sub, %conv
  %31 = load float, float* %d1, align 4, !tbaa !54
  %32 = load float, float* %d0, align 4, !tbaa !54
  %sub19 = fsub float %31, %32
  %div = fdiv float %mul18, %sub19
  %conv20 = fpext float %div to double
  store double %conv20, double* %t, align 8, !tbaa !39
  %33 = load double, double* %t, align 8, !tbaa !39
  %call = call double @floor(double %33) #6
  %conv21 = fptosi double %call to i32
  %34 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom22 = sext i32 %34 to i64
  %35 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i32, i32* %35, i64 %idxprom22
  store i32 %conv21, i32* %arrayidx23, align 4, !tbaa !19
  %36 = load double, double* %t, align 8, !tbaa !39
  %37 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom24 = sext i32 %37 to i64
  %38 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i32, i32* %38, i64 %idxprom24
  %39 = load i32, i32* %arrayidx25, align 4, !tbaa !19
  %conv26 = sitofp i32 %39 to double
  %sub27 = fsub double %36, %conv26
  %40 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom28 = sext i32 %40 to i64
  %41 = load double*, double** %T.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds double, double* %41, i64 %idxprom28
  store double %sub27, double* %arrayidx29, align 8, !tbaa !39
  %42 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast float* %xi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %46 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @make_interpolation_tensor(%struct.gs_function_Sd_s* %pfn, i32* %I, double* %T, i32 %a_offset, i32 %s_offset, i32 %ii) #3 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %I.addr = alloca i32*, align 8
  %T.addr = alloca double*, align 8
  %a_offset.addr = alloca i32, align 4
  %s_offset.addr = alloca i32, align 4
  %ii.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %Ii = alloca i32, align 4
  %ib = alloca i32, align 4
  %ie = alloca i32, align 4
  %i = alloca i32, align 4
  %sa = alloca i32, align 4
  %ss = alloca i32, align 4
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  store double* %T, double** %T.addr, align 8, !tbaa !1
  store i32 %a_offset, i32* %a_offset.addr, align 4, !tbaa !19
  store i32 %s_offset, i32* %s_offset.addr, align 4, !tbaa !19
  store i32 %ii, i32* %ii.addr, align 4, !tbaa !19
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %2, i32 0, i32 1
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 10
  %3 = load double*, double** %pole, align 8, !tbaa !29
  %4 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds double, double* %3, i64 %idx.ext
  %5 = load double, double* %add.ptr, align 8, !tbaa !39
  %cmp1 = fcmp oeq double %5, 1.000000e+90
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %7 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %8 = load i32, i32* %s_offset.addr, align 4, !tbaa !19
  %call = call i32 @load_vector(%struct.gs_function_Sd_s* %6, i32 %7, i32 %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %9 = load i32, i32* %code, align 4, !tbaa !19
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %10 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.36

if.else:                                          ; preds = %entry
  %11 = bitcast i32* %Ii to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %ib to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %ie to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %sa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %17, i32 0, i32 1
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params6, i32 0, i32 11
  %18 = load i32*, i32** %array_step, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4, !tbaa !19
  store i32 %19, i32* %sa, align 4, !tbaa !19
  %20 = bitcast i32* %ss to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom7 = sext i32 %21 to i64
  %22 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %22, i32 0, i32 1
  %stream_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params8, i32 0, i32 12
  %23 = load i32*, i32** %stream_step, align 8, !tbaa !31
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 %idxprom7
  %24 = load i32, i32* %arrayidx9, align 4, !tbaa !19
  store i32 %24, i32* %ss, align 4, !tbaa !19
  %25 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %26 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %27 = load double*, double** %T.addr, align 8, !tbaa !1
  %28 = load i32, i32* %ii.addr, align 4, !tbaa !19
  call void @index_span(%struct.gs_function_Sd_s* %25, i32* %26, double* %27, i32 %28, i32* %Ii, i32* %ib, i32* %ie) #5
  %29 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %30 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %31 = load double*, double** %T.addr, align 8, !tbaa !1
  %32 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %33 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %call10 = call i32 @is_tensor_done(%struct.gs_function_Sd_s* %29, i32* %30, double* %31, i32 %32, i32 %33) #5
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end.30, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %34 = load i32, i32* %ib, align 4, !tbaa !19
  store i32 %34, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %35 = load i32, i32* %i, align 4, !tbaa !19
  %36 = load i32, i32* %ie, align 4, !tbaa !19
  %cmp12 = icmp slt i32 %35, %36
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %38 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %39 = load double*, double** %T.addr, align 8, !tbaa !1
  %40 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %41 = load i32, i32* %i, align 4, !tbaa !19
  %42 = load i32, i32* %sa, align 4, !tbaa !19
  %mul = mul nsw i32 %41, %42
  %add = add nsw i32 %40, %mul
  %43 = load i32, i32* %s_offset.addr, align 4, !tbaa !19
  %44 = load i32, i32* %i, align 4, !tbaa !19
  %45 = load i32, i32* %ss, align 4, !tbaa !19
  %mul13 = mul nsw i32 %44, %45
  %add14 = add nsw i32 %43, %mul13
  %46 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub = sub nsw i32 %46, 1
  %call15 = call i32 @make_interpolation_tensor(%struct.gs_function_Sd_s* %37, i32* %38, double* %39, i32 %add, i32 %add14, i32 %sub) #5
  store i32 %call15, i32* %code, align 4, !tbaa !19
  %47 = load i32, i32* %code, align 4, !tbaa !19
  %cmp16 = icmp slt i32 %47, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  %48 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %49 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom19 = sext i32 %50 to i64
  %51 = load double*, double** %T.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds double, double* %51, i64 %idxprom19
  %52 = load double, double* %arrayidx20, align 8, !tbaa !39
  %cmp21 = fcmp une double %52, 0.000000e+00
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %for.end
  %53 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %54 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %55 = load double*, double** %T.addr, align 8, !tbaa !1
  %56 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %57 = load i32, i32* %ib, align 4, !tbaa !19
  %58 = load i32, i32* %sa, align 4, !tbaa !19
  %mul23 = mul nsw i32 %57, %58
  %add24 = add nsw i32 %56, %mul23
  %59 = load i32, i32* %sa, align 4, !tbaa !19
  %60 = load i32, i32* %ie, align 4, !tbaa !19
  %61 = load i32, i32* %ib, align 4, !tbaa !19
  %sub25 = sub nsw i32 %60, %61
  %sub26 = sub nsw i32 %sub25, 1
  %62 = load i32, i32* %Ii, align 4, !tbaa !19
  %63 = load i32, i32* %ib, align 4, !tbaa !19
  %sub27 = sub nsw i32 %62, %63
  %64 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub28 = sub nsw i32 %64, 1
  call void @interpolate_tensors(%struct.gs_function_Sd_s* %53, i32* %54, double* %55, i32 %add24, i32 %59, i32 %sub26, i32 %sub27, i32 %sub28) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.22, %for.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.17
  %65 = bitcast i32* %ss to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast i32* %sa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i32* %ie to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %ib to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %Ii to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.36

if.end.36:                                        ; preds = %cleanup.cont, %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %if.end.36, %cleanup, %if.then.4
  %71 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @evaluate_from_tenzor(%struct.gs_function_Sd_s* %pfn, i32* %I, double* %T, i32 %offset, i32 %ii, double* %y) #3 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %I.addr = alloca i32*, align 8
  %T.addr = alloca double*, align 8
  %offset.addr = alloca i32, align 4
  %ii.addr = alloca i32, align 4
  %y.addr = alloca double*, align 8
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %t0 = alloca double, align 8
  %t1 = alloca double, align 8
  %p = alloca [4 x [64 x double]], align 16
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  store double* %T, double** %T.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !19
  store i32 %ii, i32* %ii.addr, align 4, !tbaa !19
  store double* %y, double** %y.addr, align 8, !tbaa !1
  %0 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %2, i32 0, i32 1
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 11
  %3 = load i32*, i32** %array_step, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !19
  store i32 %4, i32* %s, align 4, !tbaa !19
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %k, align 4, !tbaa !19
  %10 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %10, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params1, i32 0, i32 2
  %11 = load i32, i32* %n, align 4, !tbaa !35
  %cmp2 = icmp slt i32 %9, %11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %12, i32 0, i32 1
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 10
  %13 = load double*, double** %pole, align 8, !tbaa !29
  %14 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds double, double* %13, i64 %idx.ext
  %15 = load i32, i32* %k, align 4, !tbaa !19
  %idx.ext4 = sext i32 %15 to i64
  %add.ptr5 = getelementptr inbounds double, double* %add.ptr, i64 %idx.ext4
  %16 = load double, double* %add.ptr5, align 8, !tbaa !39
  %17 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom6 = sext i32 %17 to i64
  %18 = load double*, double** %y.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds double, double* %18, i64 %idxprom6
  store double %16, double* %arrayidx7, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %k, align 4, !tbaa !19
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.78

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom8 = sext i32 %20 to i64
  %21 = load double*, double** %T.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds double, double* %21, i64 %idxprom8
  %22 = load double, double* %arrayidx9, align 8, !tbaa !39
  %cmp10 = fcmp oeq double %22, 0.000000e+00
  br i1 %cmp10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.else
  %23 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %24 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %25 = load double*, double** %T.addr, align 8, !tbaa !1
  %26 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %27 = load i32, i32* %s, align 4, !tbaa !19
  %28 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom12 = sext i32 %28 to i64
  %29 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %29, i64 %idxprom12
  %30 = load i32, i32* %arrayidx13, align 4, !tbaa !19
  %mul = mul nsw i32 %27, %30
  %add = add nsw i32 %26, %mul
  %31 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub = sub nsw i32 %31, 1
  %32 = load double*, double** %y.addr, align 8, !tbaa !1
  %call = call i32 @evaluate_from_tenzor(%struct.gs_function_Sd_s* %23, i32* %24, double* %25, i32 %add, i32 %sub, double* %32) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.else.14:                                       ; preds = %if.else
  %33 = bitcast double* %t0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #2
  %34 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom15 = sext i32 %34 to i64
  %35 = load double*, double** %T.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds double, double* %35, i64 %idxprom15
  %36 = load double, double* %arrayidx16, align 8, !tbaa !39
  store double %36, double* %t0, align 8, !tbaa !39
  %37 = bitcast double* %t1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #2
  %38 = load double, double* %t0, align 8, !tbaa !39
  %sub17 = fsub double 1.000000e+00, %38
  store double %sub17, double* %t1, align 8, !tbaa !39
  %39 = bitcast [4 x [64 x double]]* %p to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %39) #2
  store i32 0, i32* %l, align 4, !tbaa !19
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.33, %if.else.14
  %40 = load i32, i32* %l, align 4, !tbaa !19
  %cmp19 = icmp slt i32 %40, 4
  br i1 %cmp19, label %for.body.20, label %for.end.35

for.body.20:                                      ; preds = %for.cond.18
  %41 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %42 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %43 = load double*, double** %T.addr, align 8, !tbaa !1
  %44 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %45 = load i32, i32* %s, align 4, !tbaa !19
  %46 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom21 = sext i32 %46 to i64
  %47 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i32, i32* %47, i64 %idxprom21
  %48 = load i32, i32* %arrayidx22, align 4, !tbaa !19
  %mul23 = mul nsw i32 %45, %48
  %add24 = add nsw i32 %44, %mul23
  %49 = load i32, i32* %l, align 4, !tbaa !19
  %50 = load i32, i32* %s, align 4, !tbaa !19
  %div = sdiv i32 %50, 3
  %mul25 = mul nsw i32 %49, %div
  %add26 = add nsw i32 %add24, %mul25
  %51 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub27 = sub nsw i32 %51, 1
  %52 = load i32, i32* %l, align 4, !tbaa !19
  %idxprom28 = sext i32 %52 to i64
  %arrayidx29 = getelementptr inbounds [4 x [64 x double]], [4 x [64 x double]]* %p, i32 0, i64 %idxprom28
  %arraydecay = getelementptr inbounds [64 x double], [64 x double]* %arrayidx29, i32 0, i32 0
  %call30 = call i32 @evaluate_from_tenzor(%struct.gs_function_Sd_s* %41, i32* %42, double* %43, i32 %add26, i32 %sub27, double* %arraydecay) #5
  store i32 %call30, i32* %code, align 4, !tbaa !19
  %53 = load i32, i32* %code, align 4, !tbaa !19
  %cmp31 = icmp slt i32 %53, 0
  br i1 %cmp31, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %for.body.20
  %54 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.20
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end
  %55 = load i32, i32* %l, align 4, !tbaa !19
  %inc34 = add nsw i32 %55, 1
  store i32 %inc34, i32* %l, align 4, !tbaa !19
  br label %for.cond.18

for.end.35:                                       ; preds = %for.cond.18
  store i32 0, i32* %k, align 4, !tbaa !19
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.72, %for.end.35
  %56 = load i32, i32* %k, align 4, !tbaa !19
  %57 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params37 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %57, i32 0, i32 1
  %n38 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params37, i32 0, i32 2
  %58 = load i32, i32* %n38, align 4, !tbaa !35
  %cmp39 = icmp slt i32 %56, %58
  br i1 %cmp39, label %for.body.40, label %for.end.74

for.body.40:                                      ; preds = %for.cond.36
  %59 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom41 = sext i32 %59 to i64
  %arrayidx42 = getelementptr inbounds [4 x [64 x double]], [4 x [64 x double]]* %p, i32 0, i64 0
  %arrayidx43 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx42, i32 0, i64 %idxprom41
  %60 = load double, double* %arrayidx43, align 8, !tbaa !39
  %61 = load double, double* %t1, align 8, !tbaa !39
  %mul44 = fmul double %60, %61
  %62 = load double, double* %t1, align 8, !tbaa !39
  %mul45 = fmul double %mul44, %62
  %63 = load double, double* %t1, align 8, !tbaa !39
  %mul46 = fmul double %mul45, %63
  %64 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom47 = sext i32 %64 to i64
  %arrayidx48 = getelementptr inbounds [4 x [64 x double]], [4 x [64 x double]]* %p, i32 0, i64 1
  %arrayidx49 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx48, i32 0, i64 %idxprom47
  %65 = load double, double* %arrayidx49, align 8, !tbaa !39
  %66 = load double, double* %t1, align 8, !tbaa !39
  %mul50 = fmul double %65, %66
  %67 = load double, double* %t1, align 8, !tbaa !39
  %mul51 = fmul double %mul50, %67
  %68 = load double, double* %t0, align 8, !tbaa !39
  %mul52 = fmul double %mul51, %68
  %mul53 = fmul double %mul52, 3.000000e+00
  %add54 = fadd double %mul46, %mul53
  %69 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom55 = sext i32 %69 to i64
  %arrayidx56 = getelementptr inbounds [4 x [64 x double]], [4 x [64 x double]]* %p, i32 0, i64 2
  %arrayidx57 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx56, i32 0, i64 %idxprom55
  %70 = load double, double* %arrayidx57, align 8, !tbaa !39
  %71 = load double, double* %t1, align 8, !tbaa !39
  %mul58 = fmul double %70, %71
  %72 = load double, double* %t0, align 8, !tbaa !39
  %mul59 = fmul double %mul58, %72
  %73 = load double, double* %t0, align 8, !tbaa !39
  %mul60 = fmul double %mul59, %73
  %mul61 = fmul double %mul60, 3.000000e+00
  %add62 = fadd double %add54, %mul61
  %74 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom63 = sext i32 %74 to i64
  %arrayidx64 = getelementptr inbounds [4 x [64 x double]], [4 x [64 x double]]* %p, i32 0, i64 3
  %arrayidx65 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx64, i32 0, i64 %idxprom63
  %75 = load double, double* %arrayidx65, align 8, !tbaa !39
  %76 = load double, double* %t0, align 8, !tbaa !39
  %mul66 = fmul double %75, %76
  %77 = load double, double* %t0, align 8, !tbaa !39
  %mul67 = fmul double %mul66, %77
  %78 = load double, double* %t0, align 8, !tbaa !39
  %mul68 = fmul double %mul67, %78
  %add69 = fadd double %add62, %mul68
  %79 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom70 = sext i32 %79 to i64
  %80 = load double*, double** %y.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds double, double* %80, i64 %idxprom70
  store double %add69, double* %arrayidx71, align 8, !tbaa !39
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.40
  %81 = load i32, i32* %k, align 4, !tbaa !19
  %inc73 = add nsw i32 %81, 1
  store i32 %inc73, i32* %k, align 4, !tbaa !19
  br label %for.cond.36

for.end.74:                                       ; preds = %for.cond.36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.74, %if.then.32
  %82 = bitcast [4 x [64 x double]]* %p to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %82) #2
  %83 = bitcast double* %t1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast double* %t0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.77

if.end.77:                                        ; preds = %cleanup.cont
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %if.end.78, %cleanup, %if.then.11
  %85 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @load_vector(%struct.gs_function_Sd_s* %pfn, i32 %a_offset, i32 %s_offset) #3 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %a_offset.addr = alloca i32, align 4
  %s_offset.addr = alloca i32, align 4
  %sdata = alloca [64 x i32], align 16
  %k = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32 %a_offset, i32* %a_offset.addr, align 4, !tbaa !19
  store i32 %s_offset, i32* %s_offset.addr, align 4, !tbaa !19
  %0 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %0, i32 0, i32 1
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 10
  %1 = load double*, double** %pole, align 8, !tbaa !29
  %2 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds double, double* %1, i64 %idx.ext
  %3 = load double, double* %add.ptr, align 8, !tbaa !39
  %cmp = fcmp oeq double %3, 1.000000e+90
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %4 = bitcast [64 x i32]* %sdata to i8*
  call void @llvm.lifetime.start(i64 256, i8* %4) #2
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params1, i32 0, i32 6
  %8 = load i32, i32* %BitsPerSample, align 4, !tbaa !37
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [33 x i32 (%struct.gs_function_Sd_s*, i64, i32*)*], [33 x i32 (%struct.gs_function_Sd_s*, i64, i32*)*]* @fn_get_samples, i32 0, i64 %idxprom
  %9 = load i32 (%struct.gs_function_Sd_s*, i64, i32*)*, i32 (%struct.gs_function_Sd_s*, i64, i32*)** %arrayidx, align 8, !tbaa !1
  %10 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %11 = load i32, i32* %s_offset.addr, align 4, !tbaa !19
  %conv = sext i32 %11 to i64
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %sdata, i32 0, i32 0
  %call = call i32 %9(%struct.gs_function_Sd_s* %10, i64 %conv, i32* %arraydecay) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %12 = load i32, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %k, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %k, align 4, !tbaa !19
  %15 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %15, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params5, i32 0, i32 2
  %16 = load i32, i32* %n, align 4, !tbaa !35
  %cmp6 = icmp slt i32 %14, %16
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %18 = load i32, i32* %k, align 4, !tbaa !19
  %19 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds [64 x i32], [64 x i32]* %sdata, i32 0, i64 %idxprom8
  %20 = load i32, i32* %arrayidx9, align 4, !tbaa !19
  %conv10 = uitofp i32 %20 to double
  %call11 = call double @fn_Sd_encode(%struct.gs_function_Sd_s* %17, i32 %18, double %conv10) #5
  %21 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %21, i32 0, i32 1
  %pole13 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params12, i32 0, i32 10
  %22 = load double*, double** %pole13, align 8, !tbaa !29
  %23 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %idx.ext14 = sext i32 %23 to i64
  %add.ptr15 = getelementptr inbounds double, double* %22, i64 %idx.ext14
  %24 = load i32, i32* %k, align 4, !tbaa !19
  %idx.ext16 = sext i32 %24 to i64
  %add.ptr17 = getelementptr inbounds double, double* %add.ptr15, i64 %idx.ext16
  store double %call11, double* %add.ptr17, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %k, align 4, !tbaa !19
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.4
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast [64 x i32]* %sdata to i8*
  call void @llvm.lifetime.end(i64 256, i8* %28) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.20

if.end.20:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %cleanup
  %29 = load i32, i32* %retval
  ret i32 %29

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @index_span(%struct.gs_function_Sd_s* %pfn, i32* %I, double* %T, i32 %ii, i32* %Ii, i32* %ib, i32* %ie) #3 {
entry:
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %I.addr = alloca i32*, align 8
  %T.addr = alloca double*, align 8
  %ii.addr = alloca i32, align 4
  %Ii.addr = alloca i32*, align 8
  %ib.addr = alloca i32*, align 8
  %ie.addr = alloca i32*, align 8
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  store double* %T, double** %T.addr, align 8, !tbaa !1
  store i32 %ii, i32* %ii.addr, align 4, !tbaa !19
  store i32* %Ii, i32** %Ii.addr, align 8, !tbaa !1
  store i32* %ib, i32** %ib.addr, align 8, !tbaa !1
  store i32* %ie, i32** %ie.addr, align 8, !tbaa !1
  %0 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !19
  %3 = load i32*, i32** %Ii.addr, align 8, !tbaa !1
  store i32 %2, i32* %3, align 4, !tbaa !19
  %4 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom1 = sext i32 %4 to i64
  %5 = load double*, double** %T.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 %idxprom1
  %6 = load double, double* %arrayidx2, align 8, !tbaa !39
  %cmp = fcmp une double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %Ii.addr, align 8, !tbaa !1
  %8 = load i32, i32* %7, align 4, !tbaa !19
  %sub = sub nsw i32 %8, 1
  %cmp3 = icmp sgt i32 %sub, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i32*, i32** %Ii.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !19
  %sub4 = sub nsw i32 %10, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub4, %cond.true ], [ 0, %cond.false ]
  %11 = load i32*, i32** %ib.addr, align 8, !tbaa !1
  store i32 %cond, i32* %11, align 4, !tbaa !19
  %12 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %13, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 9
  %14 = load i32*, i32** %Size, align 8, !tbaa !38
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 %idxprom5
  %15 = load i32, i32* %arrayidx6, align 4, !tbaa !19
  %16 = load i32*, i32** %Ii.addr, align 8, !tbaa !1
  %17 = load i32, i32* %16, align 4, !tbaa !19
  %add = add nsw i32 %17, 3
  %cmp7 = icmp slt i32 %15, %add
  br i1 %cmp7, label %cond.true.8, label %cond.false.13

cond.true.8:                                      ; preds = %cond.end
  %18 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %19, i32 0, i32 1
  %Size11 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params10, i32 0, i32 9
  %20 = load i32*, i32** %Size11, align 8, !tbaa !38
  %arrayidx12 = getelementptr inbounds i32, i32* %20, i64 %idxprom9
  %21 = load i32, i32* %arrayidx12, align 4, !tbaa !19
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.end
  %22 = load i32*, i32** %Ii.addr, align 8, !tbaa !1
  %23 = load i32, i32* %22, align 4, !tbaa !19
  %add14 = add nsw i32 %23, 3
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.8
  %cond16 = phi i32 [ %21, %cond.true.8 ], [ %add14, %cond.false.13 ]
  %24 = load i32*, i32** %ie.addr, align 8, !tbaa !1
  store i32 %cond16, i32* %24, align 4, !tbaa !19
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load i32*, i32** %Ii.addr, align 8, !tbaa !1
  %26 = load i32, i32* %25, align 4, !tbaa !19
  %27 = load i32*, i32** %ib.addr, align 8, !tbaa !1
  store i32 %26, i32* %27, align 4, !tbaa !19
  %28 = load i32*, i32** %Ii.addr, align 8, !tbaa !1
  %29 = load i32, i32* %28, align 4, !tbaa !19
  %add17 = add nsw i32 %29, 1
  %30 = load i32*, i32** %ie.addr, align 8, !tbaa !1
  store i32 %add17, i32* %30, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.15
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_tensor_done(%struct.gs_function_Sd_s* %pfn, i32* %I, double* %T, i32 %a_offset, i32 %ii) #3 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %I.addr = alloca i32*, align 8
  %T.addr = alloca double*, align 8
  %a_offset.addr = alloca i32, align 4
  %ii.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %o = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  store double* %T, double** %T.addr, align 8, !tbaa !1
  store i32 %a_offset, i32* %a_offset.addr, align 4, !tbaa !19
  store i32 %ii, i32* %ii.addr, align 4, !tbaa !19
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %o to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %o, align 4, !tbaa !19
  %2 = load i32, i32* %ii.addr, align 4, !tbaa !19
  store i32 %2, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !19
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !19
  %7 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %8, i32 0, i32 1
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 11
  %9 = load i32*, i32** %array_step, align 8, !tbaa !30
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1
  %10 = load i32, i32* %arrayidx2, align 4, !tbaa !19
  %mul = mul nsw i32 %6, %10
  %11 = load i32, i32* %o, align 4, !tbaa !19
  %add = add nsw i32 %11, %mul
  store i32 %add, i32* %o, align 4, !tbaa !19
  %12 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom3 = sext i32 %12 to i64
  %13 = load double*, double** %T.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %13, i64 %idxprom3
  %14 = load double, double* %arrayidx4, align 8, !tbaa !39
  %cmp5 = fcmp une double %14, 0.000000e+00
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %16, i32 0, i32 1
  %array_step8 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params7, i32 0, i32 11
  %17 = load i32*, i32** %array_step8, align 8, !tbaa !30
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom6
  %18 = load i32, i32* %arrayidx9, align 4, !tbaa !19
  %div = sdiv i32 %18, 3
  %19 = load i32, i32* %o, align 4, !tbaa !19
  %add10 = add nsw i32 %19, %div
  store i32 %add10, i32* %o, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !19
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %21, i32 0, i32 1
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params11, i32 0, i32 10
  %22 = load double*, double** %pole, align 8, !tbaa !29
  %23 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds double, double* %22, i64 %idx.ext
  %24 = load i32, i32* %o, align 4, !tbaa !19
  %idx.ext12 = sext i32 %24 to i64
  %add.ptr13 = getelementptr inbounds double, double* %add.ptr, i64 %idx.ext12
  %25 = load double, double* %add.ptr13, align 8, !tbaa !39
  %cmp14 = fcmp une double %25, 1.000000e+90
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15
  %26 = bitcast i32* %o to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @interpolate_tensors(%struct.gs_function_Sd_s* %pfn, i32* %I, double* %T, i32 %offset, i32 %pole_step, i32 %power, i32 %bias, i32 %ii) #3 {
entry:
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %I.addr = alloca i32*, align 8
  %T.addr = alloca double*, align 8
  %offset.addr = alloca i32, align 4
  %pole_step.addr = alloca i32, align 4
  %power.addr = alloca i32, align 4
  %bias.addr = alloca i32, align 4
  %ii.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %Ii = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  store double* %T, double** %T.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !19
  store i32 %pole_step, i32* %pole_step.addr, align 4, !tbaa !19
  store i32 %power, i32* %power.addr, align 4, !tbaa !19
  store i32 %bias, i32* %bias.addr, align 4, !tbaa !19
  store i32 %ii, i32* %ii.addr, align 4, !tbaa !19
  %0 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %2 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %3 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %4 = load i32, i32* %power.addr, align 4, !tbaa !19
  %5 = load i32, i32* %bias.addr, align 4, !tbaa !19
  call void @interpolate_vector(%struct.gs_function_Sd_s* %1, i32 %2, i32 %3, i32 %4, i32 %5) #5
  br label %if.end.14

if.else:                                          ; preds = %entry
  %6 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %8, i32 0, i32 1
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 11
  %9 = load i32*, i32** %array_step, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !19
  store i32 %10, i32* %s, align 4, !tbaa !19
  %11 = bitcast i32* %Ii to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom1 = sext i32 %12 to i64
  %13 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %13, i64 %idxprom1
  %14 = load i32, i32* %arrayidx2, align 4, !tbaa !19
  store i32 %14, i32* %Ii, align 4, !tbaa !19
  %15 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom3 = sext i32 %15 to i64
  %16 = load double*, double** %T.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %16, i64 %idxprom3
  %17 = load double, double* %arrayidx4, align 8, !tbaa !39
  %cmp5 = fcmp oeq double %17, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %18 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %19 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %20 = load double*, double** %T.addr, align 8, !tbaa !1
  %21 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %22 = load i32, i32* %Ii, align 4, !tbaa !19
  %23 = load i32, i32* %s, align 4, !tbaa !19
  %mul = mul nsw i32 %22, %23
  %add = add nsw i32 %21, %mul
  %24 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %25 = load i32, i32* %power.addr, align 4, !tbaa !19
  %26 = load i32, i32* %bias.addr, align 4, !tbaa !19
  %27 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub = sub nsw i32 %27, 1
  call void @interpolate_tensors(%struct.gs_function_Sd_s* %18, i32* %19, double* %20, i32 %add, i32 %24, i32 %25, i32 %26, i32 %sub) #5
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %28 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  store i32 0, i32* %l, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.7
  %29 = load i32, i32* %l, align 4, !tbaa !19
  %cmp8 = icmp slt i32 %29, 4
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %31 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %32 = load double*, double** %T.addr, align 8, !tbaa !1
  %33 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %34 = load i32, i32* %Ii, align 4, !tbaa !19
  %35 = load i32, i32* %s, align 4, !tbaa !19
  %mul9 = mul nsw i32 %34, %35
  %add10 = add nsw i32 %33, %mul9
  %36 = load i32, i32* %l, align 4, !tbaa !19
  %37 = load i32, i32* %s, align 4, !tbaa !19
  %mul11 = mul nsw i32 %36, %37
  %div = sdiv i32 %mul11, 3
  %add12 = add nsw i32 %add10, %div
  %38 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %39 = load i32, i32* %power.addr, align 4, !tbaa !19
  %40 = load i32, i32* %bias.addr, align 4, !tbaa !19
  %41 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub13 = sub nsw i32 %41, 1
  call void @interpolate_tensors(%struct.gs_function_Sd_s* %30, i32* %31, double* %32, i32 %add12, i32 %38, i32 %39, i32 %40, i32 %sub13) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %l, align 4, !tbaa !19
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %l, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.6
  %44 = bitcast i32* %Ii to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @fn_Sd_encode(%struct.gs_function_Sd_s* %pfn, i32 %i, double %sample) #3 {
entry:
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %i.addr = alloca i32, align 4
  %sample.addr = alloca double, align 8
  %d0 = alloca float, align 4
  %d1 = alloca float, align 4
  %r0 = alloca float, align 4
  %r1 = alloca float, align 4
  %value = alloca double, align 8
  %bps = alloca i32, align 4
  %max_samp = alloca i32, align 4
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !19
  store double %sample, double* %sample.addr, align 8, !tbaa !39
  %0 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast float* %r0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast float* %r1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast double* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %6, i32 0, i32 1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  %7 = load i32, i32* %BitsPerSample, align 4, !tbaa !37
  store i32 %7, i32* %bps, align 4, !tbaa !19
  %8 = bitcast i32* %max_samp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %bps, align 4, !tbaa !19
  %conv = sext i32 %9 to i64
  %cmp = icmp ult i64 %conv, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i32, i32* %bps, align 4, !tbaa !19
  %shl = shl i32 1, %10
  %sub = sub nsw i32 %shl, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %max_samp, align 4, !tbaa !19
  %11 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %11, i32 0, i32 1
  %Range = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 3
  %12 = load float*, float** %Range, align 8, !tbaa !53
  %tobool = icmp ne float* %12, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %13 = load i32, i32* %i.addr, align 4, !tbaa !19
  %mul = mul nsw i32 2, %13
  %idxprom = sext i32 %mul to i64
  %14 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %14, i32 0, i32 1
  %Range4 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 3
  %15 = load float*, float** %Range4, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds float, float* %15, i64 %idxprom
  %16 = load float, float* %arrayidx, align 4, !tbaa !54
  store float %16, float* %r0, align 4, !tbaa !54
  %17 = load i32, i32* %i.addr, align 4, !tbaa !19
  %mul5 = mul nsw i32 2, %17
  %add = add nsw i32 %mul5, 1
  %idxprom6 = sext i32 %add to i64
  %18 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %18, i32 0, i32 1
  %Range8 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params7, i32 0, i32 3
  %19 = load float*, float** %Range8, align 8, !tbaa !53
  %arrayidx9 = getelementptr inbounds float, float* %19, i64 %idxprom6
  %20 = load float, float* %arrayidx9, align 4, !tbaa !54
  store float %20, float* %r1, align 4, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %cond.end
  store float 0.000000e+00, float* %r0, align 4, !tbaa !54
  %21 = load i32, i32* %bps, align 4, !tbaa !19
  %shl10 = shl i32 1, %21
  %sub11 = sub nsw i32 %shl10, 1
  %conv12 = sitofp i32 %sub11 to float
  store float %conv12, float* %r1, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %22, i32 0, i32 1
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params13, i32 0, i32 8
  %23 = load float*, float** %Decode, align 8, !tbaa !47
  %tobool14 = icmp ne float* %23, null
  br i1 %tobool14, label %if.then.15, label %if.else.27

if.then.15:                                       ; preds = %if.end
  %24 = load i32, i32* %i.addr, align 4, !tbaa !19
  %mul16 = mul nsw i32 2, %24
  %idxprom17 = sext i32 %mul16 to i64
  %25 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %25, i32 0, i32 1
  %Decode19 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params18, i32 0, i32 8
  %26 = load float*, float** %Decode19, align 8, !tbaa !47
  %arrayidx20 = getelementptr inbounds float, float* %26, i64 %idxprom17
  %27 = load float, float* %arrayidx20, align 4, !tbaa !54
  store float %27, float* %d0, align 4, !tbaa !54
  %28 = load i32, i32* %i.addr, align 4, !tbaa !19
  %mul21 = mul nsw i32 2, %28
  %add22 = add nsw i32 %mul21, 1
  %idxprom23 = sext i32 %add22 to i64
  %29 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %29, i32 0, i32 1
  %Decode25 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params24, i32 0, i32 8
  %30 = load float*, float** %Decode25, align 8, !tbaa !47
  %arrayidx26 = getelementptr inbounds float, float* %30, i64 %idxprom23
  %31 = load float, float* %arrayidx26, align 4, !tbaa !54
  store float %31, float* %d1, align 4, !tbaa !54
  br label %if.end.28

if.else.27:                                       ; preds = %if.end
  %32 = load float, float* %r0, align 4, !tbaa !54
  store float %32, float* %d0, align 4, !tbaa !54
  %33 = load float, float* %r1, align 4, !tbaa !54
  store float %33, float* %d1, align 4, !tbaa !54
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.15
  %34 = load double, double* %sample.addr, align 8, !tbaa !39
  %35 = load float, float* %d1, align 4, !tbaa !54
  %36 = load float, float* %d0, align 4, !tbaa !54
  %sub29 = fsub float %35, %36
  %conv30 = fpext float %sub29 to double
  %mul31 = fmul double %34, %conv30
  %37 = load i32, i32* %max_samp, align 4, !tbaa !19
  %conv32 = uitofp i32 %37 to double
  %div = fdiv double %mul31, %conv32
  %38 = load float, float* %d0, align 4, !tbaa !54
  %conv33 = fpext float %38 to double
  %add34 = fadd double %div, %conv33
  store double %add34, double* %value, align 8, !tbaa !39
  %39 = load double, double* %value, align 8, !tbaa !39
  %40 = load float, float* %r0, align 4, !tbaa !54
  %conv35 = fpext float %40 to double
  %cmp36 = fcmp olt double %39, %conv35
  br i1 %cmp36, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %if.end.28
  %41 = load float, float* %r0, align 4, !tbaa !54
  %conv39 = fpext float %41 to double
  store double %conv39, double* %value, align 8, !tbaa !39
  br label %if.end.47

if.else.40:                                       ; preds = %if.end.28
  %42 = load double, double* %value, align 8, !tbaa !39
  %43 = load float, float* %r1, align 4, !tbaa !54
  %conv41 = fpext float %43 to double
  %cmp42 = fcmp ogt double %42, %conv41
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.else.40
  %44 = load float, float* %r1, align 4, !tbaa !54
  %conv45 = fpext float %44 to double
  store double %conv45, double* %value, align 8, !tbaa !39
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.else.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.38
  %45 = load double, double* %value, align 8, !tbaa !39
  %46 = bitcast i32* %max_samp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast i32* %bps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast double* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = bitcast float* %r1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast float* %r0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  ret double %45
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_gets_1(%struct.gs_function_Sd_s* %pfn, i64 %offset, i32* %samples) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %offset.addr = alloca i64, align 8
  %samples.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !44
  store i32* %samples, i32** %samples.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %1, i32 0, i32 1
  %n1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %2 = load i32, i32* %n1, align 4, !tbaa !35
  store i32 %2, i32* %n, align 4, !tbaa !19
  %3 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #2
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 0
  %8 = load i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !52
  %9 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %9, i32 0, i32 1
  %DataSource4 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 5
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %shr = lshr i64 %10, 3
  %11 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %and = and i64 %11, 7
  %12 = load i32, i32* %n, align 4, !tbaa !19
  %conv = sext i32 %12 to i64
  %add = add i64 %and, %conv
  %add5 = add i64 %add, 7
  %shr6 = lshr i64 %add5, 3
  %conv7 = trunc i64 %shr6 to i32
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call = call i32 %8(%struct.gs_data_source_s* %DataSource4, i64 %shr, i32 %conv7, i8* %arraydecay, i8** %p) #5
  store i32 %call, i32* %code_, align 4, !tbaa !19
  %13 = load i32, i32* %code_, align 4, !tbaa !19
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %14 = load i32, i32* %code_, align 4, !tbaa !19
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4, !tbaa !19
  %17 = load i32, i32* %n, align 4, !tbaa !19
  %cmp9 = icmp slt i32 %16, %17
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !24
  %conv11 = zext i8 %19 to i32
  %20 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %neg = xor i64 %20, -1
  %and12 = and i64 %neg, 7
  %sh_prom = trunc i64 %and12 to i32
  %shr13 = ashr i32 %conv11, %sh_prom
  %and14 = and i32 %shr13, 1
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %21 to i64
  %22 = load i32*, i32** %samples.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %idxprom
  store i32 %and14, i32* %arrayidx, align 4, !tbaa !19
  %23 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %inc = add i64 %23, 1
  store i64 %inc, i64* %offset.addr, align 8, !tbaa !44
  %and15 = and i64 %inc, 7
  %tobool = icmp ne i64 %and15, 0
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.body
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %25 = load i32, i32* %i, align 4, !tbaa !19
  %inc18 = add nsw i32 %25, 1
  store i32 %inc18, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.19

cleanup.19:                                       ; preds = %for.end, %cleanup
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 64, i8* %28) #2
  %29 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_gets_2(%struct.gs_function_Sd_s* %pfn, i64 %offset, i32* %samples) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %offset.addr = alloca i64, align 8
  %samples.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !44
  store i32* %samples, i32** %samples.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %1, i32 0, i32 1
  %n1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %2 = load i32, i32* %n1, align 4, !tbaa !35
  store i32 %2, i32* %n, align 4, !tbaa !19
  %3 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #2
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 0
  %8 = load i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !52
  %9 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %9, i32 0, i32 1
  %DataSource4 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 5
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %shr = lshr i64 %10, 3
  %11 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %and = and i64 %11, 7
  %shr5 = lshr i64 %and, 1
  %12 = load i32, i32* %n, align 4, !tbaa !19
  %conv = sext i32 %12 to i64
  %add = add i64 %shr5, %conv
  %add6 = add i64 %add, 3
  %shr7 = lshr i64 %add6, 2
  %conv8 = trunc i64 %shr7 to i32
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call = call i32 %8(%struct.gs_data_source_s* %DataSource4, i64 %shr, i32 %conv8, i8* %arraydecay, i8** %p) #5
  store i32 %call, i32* %code_, align 4, !tbaa !19
  %13 = load i32, i32* %code_, align 4, !tbaa !19
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %14 = load i32, i32* %code_, align 4, !tbaa !19
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.20 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4, !tbaa !19
  %17 = load i32, i32* %n, align 4, !tbaa !19
  %cmp10 = icmp slt i32 %16, %17
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !24
  %conv12 = zext i8 %19 to i32
  %20 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %and13 = and i64 %20, 7
  %sub = sub i64 6, %and13
  %sh_prom = trunc i64 %sub to i32
  %shr14 = ashr i32 %conv12, %sh_prom
  %and15 = and i32 %shr14, 3
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %21 to i64
  %22 = load i32*, i32** %samples.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %idxprom
  store i32 %and15, i32* %arrayidx, align 4, !tbaa !19
  %23 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %add16 = add i64 %23, 2
  store i64 %add16, i64* %offset.addr, align 8, !tbaa !44
  %and17 = and i64 %add16, 7
  %tobool = icmp ne i64 %and17, 0
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.body
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %25 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.20

cleanup.20:                                       ; preds = %for.end, %cleanup
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 64, i8* %28) #2
  %29 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_gets_4(%struct.gs_function_Sd_s* %pfn, i64 %offset, i32* %samples) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %offset.addr = alloca i64, align 8
  %samples.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !44
  store i32* %samples, i32** %samples.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %1, i32 0, i32 1
  %n1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %2 = load i32, i32* %n1, align 4, !tbaa !35
  store i32 %2, i32* %n, align 4, !tbaa !19
  %3 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #2
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 0
  %8 = load i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !52
  %9 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %9, i32 0, i32 1
  %DataSource4 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 5
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %shr = lshr i64 %10, 3
  %11 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %and = and i64 %11, 7
  %shr5 = lshr i64 %and, 2
  %12 = load i32, i32* %n, align 4, !tbaa !19
  %conv = sext i32 %12 to i64
  %add = add i64 %shr5, %conv
  %add6 = add i64 %add, 1
  %shr7 = lshr i64 %add6, 1
  %conv8 = trunc i64 %shr7 to i32
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call = call i32 %8(%struct.gs_data_source_s* %DataSource4, i64 %shr, i32 %conv8, i8* %arraydecay, i8** %p) #5
  store i32 %call, i32* %code_, align 4, !tbaa !19
  %13 = load i32, i32* %code_, align 4, !tbaa !19
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %14 = load i32, i32* %code_, align 4, !tbaa !19
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4, !tbaa !19
  %17 = load i32, i32* %n, align 4, !tbaa !19
  %cmp10 = icmp slt i32 %16, %17
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %xor = xor i64 %18, 4
  store i64 %xor, i64* %offset.addr, align 8, !tbaa !44
  %and12 = and i64 %xor, 4
  %tobool = icmp ne i64 %and12, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !24
  %conv13 = zext i8 %20 to i32
  %shr14 = ashr i32 %conv13, 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !24
  %conv15 = zext i8 %22 to i32
  %and16 = and i32 %conv15, 15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr14, %cond.true ], [ %and16, %cond.false ]
  %23 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %23 to i64
  %24 = load i32*, i32** %samples.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %24, i64 %idxprom
  store i32 %cond, i32* %arrayidx, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %25 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %for.end, %cleanup
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 64, i8* %28) #2
  %29 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_gets_8(%struct.gs_function_Sd_s* %pfn, i64 %offset, i32* %samples) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %offset.addr = alloca i64, align 8
  %samples.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !44
  store i32* %samples, i32** %samples.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %1, i32 0, i32 1
  %n1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %2 = load i32, i32* %n1, align 4, !tbaa !35
  store i32 %2, i32* %n, align 4, !tbaa !19
  %3 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #2
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 0
  %8 = load i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !52
  %9 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %9, i32 0, i32 1
  %DataSource4 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 5
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %shr = lshr i64 %10, 3
  %11 = load i32, i32* %n, align 4, !tbaa !19
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call = call i32 %8(%struct.gs_data_source_s* %DataSource4, i64 %shr, i32 %11, i8* %arraydecay, i8** %p) #5
  store i32 %call, i32* %code_, align 4, !tbaa !19
  %12 = load i32, i32* %code_, align 4, !tbaa !19
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %13 = load i32, i32* %code_, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load i32, i32* %i, align 4, !tbaa !19
  %16 = load i32, i32* %n, align 4, !tbaa !19
  %cmp5 = icmp slt i32 %15, %16
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !24
  %conv = zext i8 %18 to i32
  %19 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %19 to i64
  %20 = load i32*, i32** %samples.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.6

cleanup.6:                                        ; preds = %for.end, %cleanup
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 64, i8* %24) #2
  %25 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_gets_12(%struct.gs_function_Sd_s* %pfn, i64 %offset, i32* %samples) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %offset.addr = alloca i64, align 8
  %samples.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %buf = alloca [128 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !44
  store i32* %samples, i32** %samples.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %1, i32 0, i32 1
  %n1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %2 = load i32, i32* %n1, align 4, !tbaa !35
  store i32 %2, i32* %n, align 4, !tbaa !19
  %3 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #2
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 0
  %8 = load i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !52
  %9 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %9, i32 0, i32 1
  %DataSource4 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 5
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %shr = lshr i64 %10, 3
  %11 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %and = and i64 %11, 7
  %shr5 = lshr i64 %and, 2
  %12 = load i32, i32* %n, align 4, !tbaa !19
  %mul = mul nsw i32 3, %12
  %conv = sext i32 %mul to i64
  %add = add i64 %shr5, %conv
  %add6 = add i64 %add, 1
  %shr7 = lshr i64 %add6, 1
  %conv8 = trunc i64 %shr7 to i32
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %call = call i32 %8(%struct.gs_data_source_s* %DataSource4, i64 %shr, i32 %conv8, i8* %arraydecay, i8** %p) #5
  store i32 %call, i32* %code_, align 4, !tbaa !19
  %13 = load i32, i32* %code_, align 4, !tbaa !19
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %14 = load i32, i32* %code_, align 4, !tbaa !19
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.28 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4, !tbaa !19
  %17 = load i32, i32* %n, align 4, !tbaa !19
  %cmp10 = icmp slt i32 %16, %17
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %and12 = and i64 %18, 4
  %tobool = icmp ne i64 %and12, 0
  br i1 %tobool, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !24
  %conv14 = zext i8 %20 to i32
  %and15 = and i32 %conv14, 15
  %shl = shl i32 %and15, 8
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv16 = zext i8 %22 to i32
  %add17 = add nsw i32 %shl, %conv16
  %23 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %23 to i64
  %24 = load i32*, i32** %samples.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i32, i32* %24, i64 %idxprom
  store i32 %add17, i32* %arrayidx18, align 4, !tbaa !19
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.27

if.else:                                          ; preds = %for.body
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !24
  %conv19 = zext i8 %27 to i32
  %shl20 = shl i32 %conv19, 4
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx21, align 1, !tbaa !24
  %conv22 = zext i8 %29 to i32
  %shr23 = ashr i32 %conv22, 4
  %add24 = add nsw i32 %shl20, %shr23
  %30 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom25 = sext i32 %30 to i64
  %31 = load i32*, i32** %samples.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i32, i32* %31, i64 %idxprom25
  store i32 %add24, i32* %arrayidx26, align 4, !tbaa !19
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.13
  %33 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %xor = xor i64 %33, 4
  store i64 %xor, i64* %offset.addr, align 8, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %34 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28

cleanup.28:                                       ; preds = %for.end, %cleanup
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 128, i8* %37) #2
  %38 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_gets_16(%struct.gs_function_Sd_s* %pfn, i64 %offset, i32* %samples) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %offset.addr = alloca i64, align 8
  %samples.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %buf = alloca [128 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !44
  store i32* %samples, i32** %samples.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %1, i32 0, i32 1
  %n1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %2 = load i32, i32* %n1, align 4, !tbaa !35
  store i32 %2, i32* %n, align 4, !tbaa !19
  %3 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #2
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 0
  %8 = load i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !52
  %9 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %9, i32 0, i32 1
  %DataSource4 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 5
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %shr = lshr i64 %10, 3
  %11 = load i32, i32* %n, align 4, !tbaa !19
  %mul = mul nsw i32 %11, 2
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %call = call i32 %8(%struct.gs_data_source_s* %DataSource4, i64 %shr, i32 %mul, i8* %arraydecay, i8** %p) #5
  store i32 %call, i32* %code_, align 4, !tbaa !19
  %12 = load i32, i32* %code_, align 4, !tbaa !19
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %13 = load i32, i32* %code_, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load i32, i32* %i, align 4, !tbaa !19
  %16 = load i32, i32* %n, align 4, !tbaa !19
  %cmp5 = icmp slt i32 %15, %16
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !24
  %conv = zext i8 %18 to i32
  %shl = shl i32 %conv, 8
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv6 = zext i8 %20 to i32
  %add = add nsw i32 %shl, %conv6
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %21 to i64
  %22 = load i32*, i32** %samples.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %22, i64 %idxprom
  store i32 %add, i32* %arrayidx7, align 4, !tbaa !19
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.8

cleanup.8:                                        ; preds = %for.end, %cleanup
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast [128 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 128, i8* %27) #2
  %28 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_gets_24(%struct.gs_function_Sd_s* %pfn, i64 %offset, i32* %samples) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %offset.addr = alloca i64, align 8
  %samples.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %buf = alloca [192 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !44
  store i32* %samples, i32** %samples.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %1, i32 0, i32 1
  %n1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %2 = load i32, i32* %n1, align 4, !tbaa !35
  store i32 %2, i32* %n, align 4, !tbaa !19
  %3 = bitcast [192 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 192, i8* %3) #2
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 0
  %8 = load i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !52
  %9 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %9, i32 0, i32 1
  %DataSource4 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 5
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %shr = lshr i64 %10, 3
  %11 = load i32, i32* %n, align 4, !tbaa !19
  %mul = mul nsw i32 %11, 3
  %arraydecay = getelementptr inbounds [192 x i8], [192 x i8]* %buf, i32 0, i32 0
  %call = call i32 %8(%struct.gs_data_source_s* %DataSource4, i64 %shr, i32 %mul, i8* %arraydecay, i8** %p) #5
  store i32 %call, i32* %code_, align 4, !tbaa !19
  %12 = load i32, i32* %code_, align 4, !tbaa !19
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %13 = load i32, i32* %code_, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load i32, i32* %i, align 4, !tbaa !19
  %16 = load i32, i32* %n, align 4, !tbaa !19
  %cmp5 = icmp slt i32 %15, %16
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !24
  %conv = zext i8 %18 to i32
  %shl = shl i32 %conv, 16
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv6 = zext i8 %20 to i32
  %shl7 = shl i32 %conv6, 8
  %add = add nsw i32 %shl, %shl7
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx8, align 1, !tbaa !24
  %conv9 = zext i8 %22 to i32
  %add10 = add nsw i32 %add, %conv9
  %23 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %23 to i64
  %24 = load i32*, i32** %samples.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %24, i64 %idxprom
  store i32 %add10, i32* %arrayidx11, align 4, !tbaa !19
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 3
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %for.end, %cleanup
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast [192 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 192, i8* %29) #2
  %30 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_gets_32(%struct.gs_function_Sd_s* %pfn, i64 %offset, i32* %samples) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %offset.addr = alloca i64, align 8
  %samples.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !44
  store i32* %samples, i32** %samples.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %1, i32 0, i32 1
  %n1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %2 = load i32, i32* %n1, align 4, !tbaa !35
  store i32 %2, i32* %n, align 4, !tbaa !19
  %3 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %3) #2
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 0
  %8 = load i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !52
  %9 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %9, i32 0, i32 1
  %DataSource4 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 5
  %10 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %shr = lshr i64 %10, 3
  %11 = load i32, i32* %n, align 4, !tbaa !19
  %mul = mul nsw i32 %11, 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call = call i32 %8(%struct.gs_data_source_s* %DataSource4, i64 %shr, i32 %mul, i8* %arraydecay, i8** %p) #5
  store i32 %call, i32* %code_, align 4, !tbaa !19
  %12 = load i32, i32* %code_, align 4, !tbaa !19
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %13 = load i32, i32* %code_, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load i32, i32* %i, align 4, !tbaa !19
  %16 = load i32, i32* %n, align 4, !tbaa !19
  %cmp5 = icmp slt i32 %15, %16
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !24
  %conv = zext i8 %18 to i32
  %shl = shl i32 %conv, 24
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %conv6 = zext i8 %20 to i32
  %shl7 = shl i32 %conv6, 16
  %add = add nsw i32 %shl, %shl7
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %21, i64 2
  %22 = load i8, i8* %arrayidx8, align 1, !tbaa !24
  %conv9 = zext i8 %22 to i32
  %shl10 = shl i32 %conv9, 8
  %add11 = add nsw i32 %add, %shl10
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %23, i64 3
  %24 = load i8, i8* %arrayidx12, align 1, !tbaa !24
  %conv13 = zext i8 %24 to i32
  %add14 = add nsw i32 %add11, %conv13
  %25 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %25 to i64
  %26 = load i32*, i32** %samples.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i32, i32* %26, i64 %idxprom
  store i32 %add14, i32* %arrayidx15, align 4, !tbaa !19
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 4
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %for.end, %cleanup
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %31) #2
  %32 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @interpolate_vector(%struct.gs_function_Sd_s* %pfn, i32 %offset, i32 %pole_step, i32 %power, i32 %bias) #3 {
entry:
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %offset.addr = alloca i32, align 4
  %pole_step.addr = alloca i32, align 4
  %power.addr = alloca i32, align 4
  %bias.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !19
  store i32 %pole_step, i32* %pole_step.addr, align 4, !tbaa !19
  store i32 %power, i32* %power.addr, align 4, !tbaa !19
  store i32 %bias, i32* %bias.addr, align 4, !tbaa !19
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %k, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4, !tbaa !19
  %2 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %2, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %3 = load i32, i32* %n, align 4, !tbaa !35
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %4, i32 0, i32 1
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params1, i32 0, i32 10
  %5 = load double*, double** %pole, align 8, !tbaa !29
  %6 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds double, double* %5, i64 %idx.ext
  %7 = load i32, i32* %k, align 4, !tbaa !19
  %idx.ext2 = sext i32 %7 to i64
  %add.ptr3 = getelementptr inbounds double, double* %add.ptr, i64 %idx.ext2
  %8 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %9 = load i32, i32* %power.addr, align 4, !tbaa !19
  %10 = load i32, i32* %bias.addr, align 4, !tbaa !19
  call void @fn_make_poles(double* %add.ptr3, i32 %8, i32 %9, i32 %10) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %k, align 4, !tbaa !19
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fn_make_poles(double* %p, i32 %pole_step, i32 %power, i32 %bias) #0 {
entry:
  %p.addr = alloca double*, align 8
  %pole_step.addr = alloca i32, align 4
  %power.addr = alloca i32, align 4
  %bias.addr = alloca i32, align 4
  %pole_step_minor = alloca i32, align 4
  store double* %p, double** %p.addr, align 8, !tbaa !1
  store i32 %pole_step, i32* %pole_step.addr, align 4, !tbaa !19
  store i32 %power, i32* %power.addr, align 4, !tbaa !19
  store i32 %bias, i32* %bias.addr, align 4, !tbaa !19
  %0 = bitcast i32* %pole_step_minor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %div = sdiv i32 %1, 3
  store i32 %div, i32* %pole_step_minor, align 4, !tbaa !19
  %2 = load i32, i32* %power.addr, align 4, !tbaa !19
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.23
    i32 3, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul = mul nsw i32 %3, 0
  %idxprom = sext i32 %mul to i64
  %4 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8, !tbaa !39
  %mul1 = fmul double 2.000000e+00, %5
  %6 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul2 = mul nsw i32 %6, 1
  %idxprom3 = sext i32 %mul2 to i64
  %7 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %7, i64 %idxprom3
  %8 = load double, double* %arrayidx4, align 8, !tbaa !39
  %mul5 = fmul double 1.000000e+00, %8
  %add = fadd double %mul1, %mul5
  %div6 = fdiv double %add, 3.000000e+00
  %9 = load i32, i32* %pole_step_minor, align 4, !tbaa !19
  %mul7 = mul nsw i32 %9, 1
  %idxprom8 = sext i32 %mul7 to i64
  %10 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds double, double* %10, i64 %idxprom8
  store double %div6, double* %arrayidx9, align 8, !tbaa !39
  %11 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul10 = mul nsw i32 %11, 0
  %idxprom11 = sext i32 %mul10 to i64
  %12 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %12, i64 %idxprom11
  %13 = load double, double* %arrayidx12, align 8, !tbaa !39
  %mul13 = fmul double 1.000000e+00, %13
  %14 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul14 = mul nsw i32 %14, 1
  %idxprom15 = sext i32 %mul14 to i64
  %15 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds double, double* %15, i64 %idxprom15
  %16 = load double, double* %arrayidx16, align 8, !tbaa !39
  %mul17 = fmul double 2.000000e+00, %16
  %add18 = fadd double %mul13, %mul17
  %div19 = fdiv double %add18, 3.000000e+00
  %17 = load i32, i32* %pole_step_minor, align 4, !tbaa !19
  %mul20 = mul nsw i32 %17, 2
  %idxprom21 = sext i32 %mul20 to i64
  %18 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds double, double* %18, i64 %idxprom21
  store double %div19, double* %arrayidx22, align 8, !tbaa !39
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %19 = load double*, double** %p.addr, align 8, !tbaa !1
  %20 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %21 = load i32, i32* %bias.addr, align 4, !tbaa !19
  %mul24 = mul nsw i32 %20, %21
  %idx.ext = sext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds double, double* %19, i64 %idx.ext
  %22 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul25 = mul nsw i32 %22, 0
  %idxprom26 = sext i32 %mul25 to i64
  %23 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds double, double* %23, i64 %idxprom26
  %24 = load double, double* %arrayidx27, align 8, !tbaa !39
  %25 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %26 = load i32, i32* %bias.addr, align 4, !tbaa !19
  %mul28 = mul nsw i32 %25, %26
  %idxprom29 = sext i32 %mul28 to i64
  %27 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds double, double* %27, i64 %idxprom29
  %28 = load double, double* %arrayidx30, align 8, !tbaa !39
  %29 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %30 = load i32, i32* %bias.addr, align 4, !tbaa !19
  %add31 = add nsw i32 1, %30
  %mul32 = mul nsw i32 %29, %add31
  %idxprom33 = sext i32 %mul32 to i64
  %31 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds double, double* %31, i64 %idxprom33
  %32 = load double, double* %arrayidx34, align 8, !tbaa !39
  %33 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul35 = mul nsw i32 %33, 2
  %idxprom36 = sext i32 %mul35 to i64
  %34 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds double, double* %34, i64 %idxprom36
  %35 = load double, double* %arrayidx37, align 8, !tbaa !39
  %36 = load i32, i32* %pole_step_minor, align 4, !tbaa !19
  call void @fn_make_cubic_poles(double* %add.ptr, double %24, double %28, double %32, double %35, i32 %36) #5
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %37 = load double*, double** %p.addr, align 8, !tbaa !1
  %38 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %39 = load i32, i32* %bias.addr, align 4, !tbaa !19
  %mul39 = mul nsw i32 %38, %39
  %idx.ext40 = sext i32 %mul39 to i64
  %add.ptr41 = getelementptr inbounds double, double* %37, i64 %idx.ext40
  %40 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul42 = mul nsw i32 %40, 0
  %idxprom43 = sext i32 %mul42 to i64
  %41 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds double, double* %41, i64 %idxprom43
  %42 = load double, double* %arrayidx44, align 8, !tbaa !39
  %43 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul45 = mul nsw i32 %43, 1
  %idxprom46 = sext i32 %mul45 to i64
  %44 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds double, double* %44, i64 %idxprom46
  %45 = load double, double* %arrayidx47, align 8, !tbaa !39
  %46 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul48 = mul nsw i32 %46, 2
  %idxprom49 = sext i32 %mul48 to i64
  %47 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds double, double* %47, i64 %idxprom49
  %48 = load double, double* %arrayidx50, align 8, !tbaa !39
  %49 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul51 = mul nsw i32 %49, 3
  %idxprom52 = sext i32 %mul51 to i64
  %50 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds double, double* %50, i64 %idxprom52
  %51 = load double, double* %arrayidx53, align 8, !tbaa !39
  %52 = load i32, i32* %pole_step_minor, align 4, !tbaa !19
  call void @fn_make_cubic_poles(double* %add.ptr41, double %42, double %45, double %48, double %51, i32 %52) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.38, %sw.bb.23, %sw.bb
  %53 = bitcast i32* %pole_step_minor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @fn_make_cubic_poles(double* %p, double %f0, double %f1, double %f2, double %f3, i32 %pole_step_minor) #3 {
entry:
  %p.addr = alloca double*, align 8
  %f0.addr = alloca double, align 8
  %f1.addr = alloca double, align 8
  %f2.addr = alloca double, align 8
  %f3.addr = alloca double, align 8
  %pole_step_minor.addr = alloca i32, align 4
  %a = alloca double, align 8
  store double* %p, double** %p.addr, align 8, !tbaa !1
  store double %f0, double* %f0.addr, align 8, !tbaa !39
  store double %f1, double* %f1.addr, align 8, !tbaa !39
  store double %f2, double* %f2.addr, align 8, !tbaa !39
  store double %f3, double* %f3.addr, align 8, !tbaa !39
  store i32 %pole_step_minor, i32* %pole_step_minor.addr, align 4, !tbaa !19
  %0 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store double -5.000000e-01, double* %a, align 8, !tbaa !39
  %1 = load double, double* %f0.addr, align 8, !tbaa !39
  %mul = fmul double -5.000000e-01, %1
  %2 = load double, double* %f1.addr, align 8, !tbaa !39
  %mul1 = fmul double 3.000000e+00, %2
  %add = fadd double %mul, %mul1
  %3 = load double, double* %f2.addr, align 8, !tbaa !39
  %mul2 = fmul double -5.000000e-01, %3
  %sub = fsub double %add, %mul2
  %div = fdiv double %sub, 3.000000e+00
  %4 = load i32, i32* %pole_step_minor.addr, align 4, !tbaa !19
  %mul3 = mul nsw i32 %4, 1
  %idxprom = sext i32 %mul3 to i64
  %5 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  store double %div, double* %arrayidx, align 8, !tbaa !39
  %6 = load double, double* %f1.addr, align 8, !tbaa !39
  %mul4 = fmul double 5.000000e-01, %6
  %7 = load double, double* %f2.addr, align 8, !tbaa !39
  %mul5 = fmul double 3.000000e+00, %7
  %add6 = fadd double %mul4, %mul5
  %8 = load double, double* %f3.addr, align 8, !tbaa !39
  %mul7 = fmul double -5.000000e-01, %8
  %add8 = fadd double %add6, %mul7
  %div9 = fdiv double %add8, 3.000000e+00
  %9 = load i32, i32* %pole_step_minor.addr, align 4, !tbaa !19
  %mul10 = mul nsw i32 %9, 2
  %idxprom11 = sext i32 %mul10 to i64
  %10 = load double*, double** %p.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %10, i64 %idxprom11
  store double %div9, double* %arrayidx12, align 8, !tbaa !39
  %11 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fn_interpolate_cubic(%struct.gs_function_Sd_s* %pfn, float* %fparts, i32* %iparts, i64* %factors, float* %samples, i64 %offset, i32 %m) #0 {
entry:
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %fparts.addr = alloca float*, align 8
  %iparts.addr = alloca i32*, align 8
  %factors.addr = alloca i64*, align 8
  %samples.addr = alloca float*, align 8
  %offset.addr = alloca i64, align 8
  %m.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %sdata = alloca [64 x i32], align 16
  %fpart = alloca float, align 4
  %ipart = alloca i32, align 4
  %delta = alloca i64, align 8
  %size = alloca i32, align 4
  %samples1 = alloca [64 x float], align 16
  %samplesm1 = alloca [64 x float], align 16
  %samples2 = alloca [64 x float], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store float* %fparts, float** %fparts.addr, align 8, !tbaa !1
  store i32* %iparts, i32** %iparts.addr, align 8, !tbaa !1
  store i64* %factors, i64** %factors.addr, align 8, !tbaa !1
  store float* %samples, float** %samples.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !44
  store i32 %m, i32* %m.addr, align 4, !tbaa !19
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  br label %top

top:                                              ; preds = %cleanup, %entry
  %1 = load i32, i32* %m.addr, align 4, !tbaa !19
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %top
  %2 = bitcast [64 x i32]* %sdata to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #2
  %3 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %3, i32 0, i32 1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  %4 = load i32, i32* %BitsPerSample, align 4, !tbaa !37
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [33 x i32 (%struct.gs_function_Sd_s*, i64, i32*)*], [33 x i32 (%struct.gs_function_Sd_s*, i64, i32*)*]* @fn_get_samples, i32 0, i64 %idxprom
  %5 = load i32 (%struct.gs_function_Sd_s*, i64, i32*)*, i32 (%struct.gs_function_Sd_s*, i64, i32*)** %arrayidx, align 8, !tbaa !1
  %6 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %7 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %sdata, i32 0, i32 0
  %call = call i32 %5(%struct.gs_function_Sd_s* %6, i64 %7, i32* %arraydecay) #5
  %8 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %8, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params1, i32 0, i32 2
  %9 = load i32, i32* %n, align 4, !tbaa !35
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %j, align 4, !tbaa !19
  %cmp2 = icmp sge i32 %10, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds [64 x i32], [64 x i32]* %sdata, i32 0, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4, !tbaa !19
  %conv = uitofp i32 %12 to float
  %13 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom5 = sext i32 %13 to i64
  %14 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float, float* %14, i64 %idxprom5
  store float %conv, float* %arrayidx6, align 4, !tbaa !54
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %j, align 4, !tbaa !19
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = bitcast [64 x i32]* %sdata to i8*
  call void @llvm.lifetime.end(i64 256, i8* %16) #2
  br label %if.end.143

if.else:                                          ; preds = %top
  %17 = bitcast float* %fpart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load float*, float** %fparts.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds float, float* %18, i32 1
  store float* %incdec.ptr, float** %fparts.addr, align 8, !tbaa !1
  %19 = load float, float* %18, align 4, !tbaa !54
  store float %19, float* %fpart, align 4, !tbaa !54
  %20 = bitcast i32* %ipart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32*, i32** %iparts.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr7, i32** %iparts.addr, align 8, !tbaa !1
  %22 = load i32, i32* %21, align 4, !tbaa !19
  store i32 %22, i32* %ipart, align 4, !tbaa !19
  %23 = bitcast i64* %delta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load i64*, i64** %factors.addr, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i64, i64* %24, i32 1
  store i64* %incdec.ptr8, i64** %factors.addr, align 8, !tbaa !1
  %25 = load i64, i64* %24, align 8, !tbaa !44
  store i64 %25, i64* %delta, align 8, !tbaa !44
  %26 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %27, i32 0, i32 1
  %m10 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params9, i32 0, i32 0
  %28 = load i32, i32* %m10, align 4, !tbaa !34
  %29 = load i32, i32* %m.addr, align 4, !tbaa !19
  %sub11 = sub nsw i32 %28, %29
  %idxprom12 = sext i32 %sub11 to i64
  %30 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %30, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params13, i32 0, i32 9
  %31 = load i32*, i32** %Size, align 8, !tbaa !38
  %arrayidx14 = getelementptr inbounds i32, i32* %31, i64 %idxprom12
  %32 = load i32, i32* %arrayidx14, align 4, !tbaa !19
  store i32 %32, i32* %size, align 4, !tbaa !19
  %33 = bitcast [64 x float]* %samples1 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %33) #2
  %34 = bitcast [64 x float]* %samplesm1 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %34) #2
  %35 = bitcast [64 x float]* %samples2 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %35) #2
  %36 = load i32, i32* %m.addr, align 4, !tbaa !19
  %dec15 = add nsw i32 %36, -1
  store i32 %dec15, i32* %m.addr, align 4, !tbaa !19
  %37 = load float, float* %fpart, align 4, !tbaa !54
  %conv16 = fpext float %37 to double
  %cmp17 = fcmp oeq double %conv16, 0.000000e+00
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %38 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %39 = load float*, float** %fparts.addr, align 8, !tbaa !1
  %40 = load i32*, i32** %iparts.addr, align 8, !tbaa !1
  %41 = load i64*, i64** %factors.addr, align 8, !tbaa !1
  %42 = load float*, float** %samples.addr, align 8, !tbaa !1
  %43 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %44 = load i32, i32* %m.addr, align 4, !tbaa !19
  call void @fn_interpolate_cubic(%struct.gs_function_Sd_s* %38, float* %39, i32* %40, i64* %41, float* %42, i64 %43, i32 %44) #5
  %45 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %46 = load float*, float** %fparts.addr, align 8, !tbaa !1
  %47 = load i32*, i32** %iparts.addr, align 8, !tbaa !1
  %48 = load i64*, i64** %factors.addr, align 8, !tbaa !1
  %arraydecay20 = getelementptr inbounds [64 x float], [64 x float]* %samples1, i32 0, i32 0
  %49 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %50 = load i64, i64* %delta, align 8, !tbaa !44
  %add = add i64 %49, %50
  %51 = load i32, i32* %m.addr, align 4, !tbaa !19
  call void @fn_interpolate_cubic(%struct.gs_function_Sd_s* %45, float* %46, i32* %47, i64* %48, float* %arraydecay20, i64 %add, i32 %51) #5
  %52 = load i32, i32* %size, align 4, !tbaa !19
  %cmp21 = icmp eq i32 %52, 2
  br i1 %cmp21, label %if.then.23, label %if.end.42

if.then.23:                                       ; preds = %if.end
  %53 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %53, i32 0, i32 1
  %n25 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params24, i32 0, i32 2
  %54 = load i32, i32* %n25, align 4, !tbaa !35
  %sub26 = sub nsw i32 %54, 1
  store i32 %sub26, i32* %j, align 4, !tbaa !19
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.39, %if.then.23
  %55 = load i32, i32* %j, align 4, !tbaa !19
  %cmp28 = icmp sge i32 %55, 0
  br i1 %cmp28, label %for.body.30, label %for.end.41

for.body.30:                                      ; preds = %for.cond.27
  %56 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom31 = sext i32 %56 to i64
  %arrayidx32 = getelementptr inbounds [64 x float], [64 x float]* %samples1, i32 0, i64 %idxprom31
  %57 = load float, float* %arrayidx32, align 4, !tbaa !54
  %58 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom33 = sext i32 %58 to i64
  %59 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds float, float* %59, i64 %idxprom33
  %60 = load float, float* %arrayidx34, align 4, !tbaa !54
  %sub35 = fsub float %57, %60
  %61 = load float, float* %fpart, align 4, !tbaa !54
  %mul = fmul float %sub35, %61
  %62 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom36 = sext i32 %62 to i64
  %63 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds float, float* %63, i64 %idxprom36
  %64 = load float, float* %arrayidx37, align 4, !tbaa !54
  %add38 = fadd float %64, %mul
  store float %add38, float* %arrayidx37, align 4, !tbaa !54
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.30
  %65 = load i32, i32* %j, align 4, !tbaa !19
  %dec40 = add nsw i32 %65, -1
  store i32 %dec40, i32* %j, align 4, !tbaa !19
  br label %for.cond.27

for.end.41:                                       ; preds = %for.cond.27
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end
  %66 = load i32, i32* %ipart, align 4, !tbaa !19
  %cmp43 = icmp eq i32 %66, 0
  br i1 %cmp43, label %if.then.45, label %if.end.73

if.then.45:                                       ; preds = %if.end.42
  %67 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %68 = load float*, float** %fparts.addr, align 8, !tbaa !1
  %69 = load i32*, i32** %iparts.addr, align 8, !tbaa !1
  %70 = load i64*, i64** %factors.addr, align 8, !tbaa !1
  %arraydecay46 = getelementptr inbounds [64 x float], [64 x float]* %samples2, i32 0, i32 0
  %71 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %72 = load i64, i64* %delta, align 8, !tbaa !44
  %mul47 = mul i64 %72, 2
  %add48 = add i64 %71, %mul47
  %73 = load i32, i32* %m.addr, align 4, !tbaa !19
  call void @fn_interpolate_cubic(%struct.gs_function_Sd_s* %67, float* %68, i32* %69, i64* %70, float* %arraydecay46, i64 %add48, i32 %73) #5
  %74 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params49 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %74, i32 0, i32 1
  %n50 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params49, i32 0, i32 2
  %75 = load i32, i32* %n50, align 4, !tbaa !35
  %sub51 = sub nsw i32 %75, 1
  store i32 %sub51, i32* %j, align 4, !tbaa !19
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.70, %if.then.45
  %76 = load i32, i32* %j, align 4, !tbaa !19
  %cmp53 = icmp sge i32 %76, 0
  br i1 %cmp53, label %for.body.55, label %for.end.72

for.body.55:                                      ; preds = %for.cond.52
  %77 = load float, float* %fpart, align 4, !tbaa !54
  %conv56 = fpext float %77 to double
  %78 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom57 = sext i32 %78 to i64
  %79 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds float, float* %79, i64 %idxprom57
  %80 = load float, float* %arrayidx58, align 4, !tbaa !54
  %conv59 = fpext float %80 to double
  %81 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom60 = sext i32 %81 to i64
  %arrayidx61 = getelementptr inbounds [64 x float], [64 x float]* %samples1, i32 0, i64 %idxprom60
  %82 = load float, float* %arrayidx61, align 4, !tbaa !54
  %conv62 = fpext float %82 to double
  %83 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom63 = sext i32 %83 to i64
  %arrayidx64 = getelementptr inbounds [64 x float], [64 x float]* %samples2, i32 0, i64 %idxprom63
  %84 = load float, float* %arrayidx64, align 4, !tbaa !54
  %conv65 = fpext float %84 to double
  %call66 = call double @interpolate_quadratic(double %conv56, double %conv59, double %conv62, double %conv65) #5
  %conv67 = fptrunc double %call66 to float
  %85 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom68 = sext i32 %85 to i64
  %86 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds float, float* %86, i64 %idxprom68
  store float %conv67, float* %arrayidx69, align 4, !tbaa !54
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.55
  %87 = load i32, i32* %j, align 4, !tbaa !19
  %dec71 = add nsw i32 %87, -1
  store i32 %dec71, i32* %j, align 4, !tbaa !19
  br label %for.cond.52

for.end.72:                                       ; preds = %for.cond.52
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.end.42
  %88 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %89 = load float*, float** %fparts.addr, align 8, !tbaa !1
  %90 = load i32*, i32** %iparts.addr, align 8, !tbaa !1
  %91 = load i64*, i64** %factors.addr, align 8, !tbaa !1
  %arraydecay74 = getelementptr inbounds [64 x float], [64 x float]* %samplesm1, i32 0, i32 0
  %92 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %93 = load i64, i64* %delta, align 8, !tbaa !44
  %sub75 = sub i64 %92, %93
  %94 = load i32, i32* %m.addr, align 4, !tbaa !19
  call void @fn_interpolate_cubic(%struct.gs_function_Sd_s* %88, float* %89, i32* %90, i64* %91, float* %arraydecay74, i64 %sub75, i32 %94) #5
  %95 = load i32, i32* %ipart, align 4, !tbaa !19
  %96 = load i32, i32* %size, align 4, !tbaa !19
  %sub76 = sub nsw i32 %96, 2
  %cmp77 = icmp eq i32 %95, %sub76
  br i1 %cmp77, label %if.then.79, label %if.end.105

if.then.79:                                       ; preds = %if.end.73
  %97 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params80 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %97, i32 0, i32 1
  %n81 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params80, i32 0, i32 2
  %98 = load i32, i32* %n81, align 4, !tbaa !35
  %sub82 = sub nsw i32 %98, 1
  store i32 %sub82, i32* %j, align 4, !tbaa !19
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.102, %if.then.79
  %99 = load i32, i32* %j, align 4, !tbaa !19
  %cmp84 = icmp sge i32 %99, 0
  br i1 %cmp84, label %for.body.86, label %for.end.104

for.body.86:                                      ; preds = %for.cond.83
  %100 = load float, float* %fpart, align 4, !tbaa !54
  %sub87 = fsub float 1.000000e+00, %100
  %conv88 = fpext float %sub87 to double
  %101 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom89 = sext i32 %101 to i64
  %arrayidx90 = getelementptr inbounds [64 x float], [64 x float]* %samples1, i32 0, i64 %idxprom89
  %102 = load float, float* %arrayidx90, align 4, !tbaa !54
  %conv91 = fpext float %102 to double
  %103 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom92 = sext i32 %103 to i64
  %104 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds float, float* %104, i64 %idxprom92
  %105 = load float, float* %arrayidx93, align 4, !tbaa !54
  %conv94 = fpext float %105 to double
  %106 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom95 = sext i32 %106 to i64
  %arrayidx96 = getelementptr inbounds [64 x float], [64 x float]* %samplesm1, i32 0, i64 %idxprom95
  %107 = load float, float* %arrayidx96, align 4, !tbaa !54
  %conv97 = fpext float %107 to double
  %call98 = call double @interpolate_quadratic(double %conv88, double %conv91, double %conv94, double %conv97) #5
  %conv99 = fptrunc double %call98 to float
  %108 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom100 = sext i32 %108 to i64
  %109 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds float, float* %109, i64 %idxprom100
  store float %conv99, float* %arrayidx101, align 4, !tbaa !54
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.86
  %110 = load i32, i32* %j, align 4, !tbaa !19
  %dec103 = add nsw i32 %110, -1
  store i32 %dec103, i32* %j, align 4, !tbaa !19
  br label %for.cond.83

for.end.104:                                      ; preds = %for.cond.83
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.105:                                       ; preds = %if.end.73
  %111 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %112 = load float*, float** %fparts.addr, align 8, !tbaa !1
  %113 = load i32*, i32** %iparts.addr, align 8, !tbaa !1
  %114 = load i64*, i64** %factors.addr, align 8, !tbaa !1
  %arraydecay106 = getelementptr inbounds [64 x float], [64 x float]* %samples2, i32 0, i32 0
  %115 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %116 = load i64, i64* %delta, align 8, !tbaa !44
  %mul107 = mul i64 %116, 2
  %add108 = add i64 %115, %mul107
  %117 = load i32, i32* %m.addr, align 4, !tbaa !19
  call void @fn_interpolate_cubic(%struct.gs_function_Sd_s* %111, float* %112, i32* %113, i64* %114, float* %arraydecay106, i64 %add108, i32 %117) #5
  %118 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params109 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %118, i32 0, i32 1
  %n110 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params109, i32 0, i32 2
  %119 = load i32, i32* %n110, align 4, !tbaa !35
  %sub111 = sub nsw i32 %119, 1
  store i32 %sub111, i32* %j, align 4, !tbaa !19
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.134, %if.end.105
  %120 = load i32, i32* %j, align 4, !tbaa !19
  %cmp113 = icmp sge i32 %120, 0
  br i1 %cmp113, label %for.body.115, label %for.end.136

for.body.115:                                     ; preds = %for.cond.112
  %121 = load float, float* %fpart, align 4, !tbaa !54
  %add116 = fadd float %121, 1.000000e+00
  %conv117 = fpext float %add116 to double
  %122 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom118 = sext i32 %122 to i64
  %arrayidx119 = getelementptr inbounds [64 x float], [64 x float]* %samplesm1, i32 0, i64 %idxprom118
  %123 = load float, float* %arrayidx119, align 4, !tbaa !54
  %conv120 = fpext float %123 to double
  %124 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom121 = sext i32 %124 to i64
  %125 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds float, float* %125, i64 %idxprom121
  %126 = load float, float* %arrayidx122, align 4, !tbaa !54
  %conv123 = fpext float %126 to double
  %127 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom124 = sext i32 %127 to i64
  %arrayidx125 = getelementptr inbounds [64 x float], [64 x float]* %samples1, i32 0, i64 %idxprom124
  %128 = load float, float* %arrayidx125, align 4, !tbaa !54
  %conv126 = fpext float %128 to double
  %129 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom127 = sext i32 %129 to i64
  %arrayidx128 = getelementptr inbounds [64 x float], [64 x float]* %samples2, i32 0, i64 %idxprom127
  %130 = load float, float* %arrayidx128, align 4, !tbaa !54
  %conv129 = fpext float %130 to double
  %call130 = call double @interpolate_cubic(double %conv117, double %conv120, double %conv123, double %conv126, double %conv129) #5
  %conv131 = fptrunc double %call130 to float
  %131 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom132 = sext i32 %131 to i64
  %132 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds float, float* %132, i64 %idxprom132
  store float %conv131, float* %arrayidx133, align 4, !tbaa !54
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.115
  %133 = load i32, i32* %j, align 4, !tbaa !19
  %dec135 = add nsw i32 %133, -1
  store i32 %dec135, i32* %j, align 4, !tbaa !19
  br label %for.cond.112

for.end.136:                                      ; preds = %for.cond.112
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.136, %for.end.104, %for.end.72, %for.end.41, %if.then.19
  %134 = bitcast [64 x float]* %samples2 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %134) #2
  %135 = bitcast [64 x float]* %samplesm1 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %135) #2
  %136 = bitcast [64 x float]* %samples1 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %136) #2
  %137 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i64* %delta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  %139 = bitcast i32* %ipart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast float* %fpart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.144 [
    i32 0, label %cleanup.cont
    i32 2, label %top
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.143

if.end.143:                                       ; preds = %cleanup.cont, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.144

cleanup.144:                                      ; preds = %if.end.143, %cleanup
  %141 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %cleanup.dest.145 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.145, label %unreachable [
    i32 0, label %cleanup.cont.146
    i32 1, label %cleanup.cont.146
  ]

cleanup.cont.146:                                 ; preds = %cleanup.144, %cleanup.144
  ret void

unreachable:                                      ; preds = %cleanup.144
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @fn_interpolate_linear(%struct.gs_function_Sd_s* %pfn, float* %fparts, i64* %factors, float* %samples, i64 %offset, i32 %m) #0 {
entry:
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %fparts.addr = alloca float*, align 8
  %factors.addr = alloca i64*, align 8
  %samples.addr = alloca float*, align 8
  %offset.addr = alloca i64, align 8
  %m.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %sdata = alloca [64 x i32], align 16
  %fpart = alloca float, align 4
  %samples1 = alloca [64 x float], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store float* %fparts, float** %fparts.addr, align 8, !tbaa !1
  store i64* %factors, i64** %factors.addr, align 8, !tbaa !1
  store float* %samples, float** %samples.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !44
  store i32 %m, i32* %m.addr, align 4, !tbaa !19
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  br label %top

top:                                              ; preds = %cleanup, %entry
  %1 = load i32, i32* %m.addr, align 4, !tbaa !19
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %top
  %2 = bitcast [64 x i32]* %sdata to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #2
  %3 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %3, i32 0, i32 1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  %4 = load i32, i32* %BitsPerSample, align 4, !tbaa !37
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [33 x i32 (%struct.gs_function_Sd_s*, i64, i32*)*], [33 x i32 (%struct.gs_function_Sd_s*, i64, i32*)*]* @fn_get_samples, i32 0, i64 %idxprom
  %5 = load i32 (%struct.gs_function_Sd_s*, i64, i32*)*, i32 (%struct.gs_function_Sd_s*, i64, i32*)** %arrayidx, align 8, !tbaa !1
  %6 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %7 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %sdata, i32 0, i32 0
  %call = call i32 %5(%struct.gs_function_Sd_s* %6, i64 %7, i32* %arraydecay) #5
  %8 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %8, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params1, i32 0, i32 2
  %9 = load i32, i32* %n, align 4, !tbaa !35
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %j, align 4, !tbaa !19
  %cmp2 = icmp sge i32 %10, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds [64 x i32], [64 x i32]* %sdata, i32 0, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4, !tbaa !19
  %conv = uitofp i32 %12 to float
  %13 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom5 = sext i32 %13 to i64
  %14 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float, float* %14, i64 %idxprom5
  store float %conv, float* %arrayidx6, align 4, !tbaa !54
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %j, align 4, !tbaa !19
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = bitcast [64 x i32]* %sdata to i8*
  call void @llvm.lifetime.end(i64 256, i8* %16) #2
  br label %if.end.36

if.else:                                          ; preds = %top
  %17 = bitcast float* %fpart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load float*, float** %fparts.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds float, float* %18, i32 1
  store float* %incdec.ptr, float** %fparts.addr, align 8, !tbaa !1
  %19 = load float, float* %18, align 4, !tbaa !54
  store float %19, float* %fpart, align 4, !tbaa !54
  %20 = bitcast [64 x float]* %samples1 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %20) #2
  %21 = load float, float* %fpart, align 4, !tbaa !54
  %conv7 = fpext float %21 to double
  %cmp8 = fcmp oeq double %conv7, 0.000000e+00
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %22 = load i64*, i64** %factors.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %incdec.ptr11, i64** %factors.addr, align 8, !tbaa !1
  %23 = load i32, i32* %m.addr, align 4, !tbaa !19
  %dec12 = add nsw i32 %23, -1
  store i32 %dec12, i32* %m.addr, align 4, !tbaa !19
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %24 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %25 = load float*, float** %fparts.addr, align 8, !tbaa !1
  %26 = load i64*, i64** %factors.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i64, i64* %26, i64 1
  %27 = load float*, float** %samples.addr, align 8, !tbaa !1
  %28 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %29 = load i32, i32* %m.addr, align 4, !tbaa !19
  %sub13 = sub nsw i32 %29, 1
  call void @fn_interpolate_linear(%struct.gs_function_Sd_s* %24, float* %25, i64* %add.ptr, float* %27, i64 %28, i32 %sub13) #5
  %30 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %31 = load float*, float** %fparts.addr, align 8, !tbaa !1
  %32 = load i64*, i64** %factors.addr, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i64, i64* %32, i64 1
  %arraydecay15 = getelementptr inbounds [64 x float], [64 x float]* %samples1, i32 0, i32 0
  %33 = load i64, i64* %offset.addr, align 8, !tbaa !44
  %34 = load i64*, i64** %factors.addr, align 8, !tbaa !1
  %35 = load i64, i64* %34, align 8, !tbaa !44
  %add = add i64 %33, %35
  %36 = load i32, i32* %m.addr, align 4, !tbaa !19
  %sub16 = sub nsw i32 %36, 1
  call void @fn_interpolate_linear(%struct.gs_function_Sd_s* %30, float* %31, i64* %add.ptr14, float* %arraydecay15, i64 %add, i32 %sub16) #5
  %37 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %37, i32 0, i32 1
  %n18 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params17, i32 0, i32 2
  %38 = load i32, i32* %n18, align 4, !tbaa !35
  %sub19 = sub nsw i32 %38, 1
  store i32 %sub19, i32* %j, align 4, !tbaa !19
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.32, %if.end
  %39 = load i32, i32* %j, align 4, !tbaa !19
  %cmp21 = icmp sge i32 %39, 0
  br i1 %cmp21, label %for.body.23, label %for.end.34

for.body.23:                                      ; preds = %for.cond.20
  %40 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom24 = sext i32 %40 to i64
  %arrayidx25 = getelementptr inbounds [64 x float], [64 x float]* %samples1, i32 0, i64 %idxprom24
  %41 = load float, float* %arrayidx25, align 4, !tbaa !54
  %42 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom26 = sext i32 %42 to i64
  %43 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds float, float* %43, i64 %idxprom26
  %44 = load float, float* %arrayidx27, align 4, !tbaa !54
  %sub28 = fsub float %41, %44
  %45 = load float, float* %fpart, align 4, !tbaa !54
  %mul = fmul float %sub28, %45
  %46 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom29 = sext i32 %46 to i64
  %47 = load float*, float** %samples.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds float, float* %47, i64 %idxprom29
  %48 = load float, float* %arrayidx30, align 4, !tbaa !54
  %add31 = fadd float %48, %mul
  store float %add31, float* %arrayidx30, align 4, !tbaa !54
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.23
  %49 = load i32, i32* %j, align 4, !tbaa !19
  %dec33 = add nsw i32 %49, -1
  store i32 %dec33, i32* %j, align 4, !tbaa !19
  br label %for.cond.20

for.end.34:                                       ; preds = %for.cond.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.34, %if.then.10
  %50 = bitcast [64 x float]* %samples1 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %50) #2
  %51 = bitcast float* %fpart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %top
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.36

if.end.36:                                        ; preds = %cleanup.cont, %for.end
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @interpolate_quadratic(double %x, double %f0, double %f1, double %f2) #3 {
entry:
  %x.addr = alloca double, align 8
  %f0.addr = alloca double, align 8
  %f1.addr = alloca double, align 8
  %f2.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !39
  store double %f0, double* %f0.addr, align 8, !tbaa !39
  store double %f1, double* %f1.addr, align 8, !tbaa !39
  store double %f2, double* %f2.addr, align 8, !tbaa !39
  %0 = load double, double* %x.addr, align 8, !tbaa !39
  %add = fadd double %0, 1.000000e+00
  %1 = load double, double* %f0.addr, align 8, !tbaa !39
  %2 = load double, double* %f0.addr, align 8, !tbaa !39
  %3 = load double, double* %f1.addr, align 8, !tbaa !39
  %4 = load double, double* %f2.addr, align 8, !tbaa !39
  %call = call double @interpolate_cubic(double %add, double %1, double %2, double %3, double %4) #5
  ret double %call
}

; Function Attrs: nounwind uwtable
define internal double @interpolate_cubic(double %x, double %f0, double %f1, double %f2, double %f3) #0 {
entry:
  %x.addr = alloca double, align 8
  %f0.addr = alloca double, align 8
  %f1.addr = alloca double, align 8
  %f2.addr = alloca double, align 8
  %f3.addr = alloca double, align 8
  %xm1 = alloca double, align 8
  %m2x = alloca double, align 8
  %m3x = alloca double, align 8
  %c = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !39
  store double %f0, double* %f0.addr, align 8, !tbaa !39
  store double %f1, double* %f1.addr, align 8, !tbaa !39
  store double %f2, double* %f2.addr, align 8, !tbaa !39
  store double %f3, double* %f3.addr, align 8, !tbaa !39
  %0 = bitcast double* %xm1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load double, double* %x.addr, align 8, !tbaa !39
  %sub = fsub double %1, 1.000000e+00
  store double %sub, double* %xm1, align 8, !tbaa !39
  %2 = bitcast double* %m2x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load double, double* %x.addr, align 8, !tbaa !39
  %sub1 = fsub double 2.000000e+00, %3
  store double %sub1, double* %m2x, align 8, !tbaa !39
  %4 = bitcast double* %m3x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load double, double* %x.addr, align 8, !tbaa !39
  %sub2 = fsub double 3.000000e+00, %5
  store double %sub2, double* %m3x, align 8, !tbaa !39
  %6 = bitcast double* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load double, double* %x.addr, align 8, !tbaa !39
  %8 = load double, double* %x.addr, align 8, !tbaa !39
  %mul = fmul double %7, %8
  %9 = load double, double* %x.addr, align 8, !tbaa !39
  %mul3 = fmul double %mul, %9
  %mul4 = fmul double -5.000000e-01, %mul3
  %10 = load double, double* %x.addr, align 8, !tbaa !39
  %11 = load double, double* %x.addr, align 8, !tbaa !39
  %mul5 = fmul double %10, %11
  %mul6 = fmul double -2.500000e+00, %mul5
  %sub7 = fsub double %mul4, %mul6
  %12 = load double, double* %x.addr, align 8, !tbaa !39
  %mul8 = fmul double -4.000000e+00, %12
  %add = fadd double %sub7, %mul8
  %sub9 = fsub double %add, -2.000000e+00
  %13 = load double, double* %f0.addr, align 8, !tbaa !39
  %mul10 = fmul double %sub9, %13
  %14 = load double, double* %xm1, align 8, !tbaa !39
  %15 = load double, double* %xm1, align 8, !tbaa !39
  %mul11 = fmul double %14, %15
  %16 = load double, double* %xm1, align 8, !tbaa !39
  %mul12 = fmul double %mul11, %16
  %mul13 = fmul double 1.500000e+00, %mul12
  %17 = load double, double* %xm1, align 8, !tbaa !39
  %18 = load double, double* %xm1, align 8, !tbaa !39
  %mul14 = fmul double %17, %18
  %mul15 = fmul double 2.500000e+00, %mul14
  %sub16 = fsub double %mul13, %mul15
  %add17 = fadd double %sub16, 1.000000e+00
  %19 = load double, double* %f1.addr, align 8, !tbaa !39
  %mul18 = fmul double %add17, %19
  %add19 = fadd double %mul10, %mul18
  %20 = load double, double* %m2x, align 8, !tbaa !39
  %21 = load double, double* %m2x, align 8, !tbaa !39
  %mul20 = fmul double %20, %21
  %22 = load double, double* %m2x, align 8, !tbaa !39
  %mul21 = fmul double %mul20, %22
  %mul22 = fmul double 1.500000e+00, %mul21
  %23 = load double, double* %m2x, align 8, !tbaa !39
  %24 = load double, double* %m2x, align 8, !tbaa !39
  %mul23 = fmul double %23, %24
  %mul24 = fmul double 2.500000e+00, %mul23
  %sub25 = fsub double %mul22, %mul24
  %add26 = fadd double %sub25, 1.000000e+00
  %25 = load double, double* %f2.addr, align 8, !tbaa !39
  %mul27 = fmul double %add26, %25
  %add28 = fadd double %add19, %mul27
  %26 = load double, double* %m3x, align 8, !tbaa !39
  %27 = load double, double* %m3x, align 8, !tbaa !39
  %mul29 = fmul double %26, %27
  %28 = load double, double* %m3x, align 8, !tbaa !39
  %mul30 = fmul double %mul29, %28
  %mul31 = fmul double -5.000000e-01, %mul30
  %29 = load double, double* %m3x, align 8, !tbaa !39
  %30 = load double, double* %m3x, align 8, !tbaa !39
  %mul32 = fmul double %29, %30
  %mul33 = fmul double -2.500000e+00, %mul32
  %sub34 = fsub double %mul31, %mul33
  %31 = load double, double* %m3x, align 8, !tbaa !39
  %mul35 = fmul double -4.000000e+00, %31
  %add36 = fadd double %sub34, %mul35
  %sub37 = fsub double %add36, -2.000000e+00
  %32 = load double, double* %f3.addr, align 8, !tbaa !39
  %mul38 = fmul double %sub37, %32
  %add39 = fadd double %add28, %mul38
  store double %add39, double* %c, align 8, !tbaa !39
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load double, double* %c, align 8, !tbaa !39
  %34 = bitcast double* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast double* %m3x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast double* %m2x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast double* %xm1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  ret double %33
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_Sd_is_monotonic_aux(%struct.gs_function_Sd_s* %pfn, float* %lower, float* %upper, i32* %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %lower.addr = alloca float*, align 8
  %upper.addr = alloca float*, align 8
  %mask.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %ii = alloca i32, align 4
  %I = alloca [4 x i32], align 16
  %T0 = alloca [4 x double], align 16
  %T1 = alloca [4 x double], align 16
  %S0 = alloca [4 x double], align 16
  %S1 = alloca [4 x double], align 16
  %m1 = alloca i32, align 4
  %mm = alloca i32, align 4
  %m12 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %w0 = alloca float, align 4
  %w1 = alloca float, align 4
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store float* %lower, float** %lower.addr, align 8, !tbaa !1
  store float* %upper, float** %upper.addr, align 8, !tbaa !1
  store i32* %mask, i32** %mask.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %3, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %4 = load i32, i32* %m, align 4, !tbaa !34
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %ii, align 4, !tbaa !19
  %5 = bitcast [4 x i32]* %I to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #2
  %6 = bitcast [4 x double]* %T0 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #2
  %7 = bitcast [4 x double]* %T1 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #2
  %8 = bitcast [4 x double]* %S0 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %8) #2
  %9 = bitcast [4 x double]* %S1 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %9) #2
  %10 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %mm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %m12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load i32, i32* %ii, align 4, !tbaa !19
  %cmp = icmp sge i32 %13, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !19
  %15 = load i32, i32* %ii, align 4, !tbaa !19
  %cmp3 = icmp sle i32 %14, %15
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast float* %w0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast float* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %19 = load float*, float** %lower.addr, align 8, !tbaa !1
  %20 = load float*, float** %upper.addr, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %call = call i32 @get_scaled_range(%struct.gs_function_Sd_s* %18, float* %19, float* %20, i32 %21, float* %w0, float* %w1) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %22 = load i32, i32* %code, align 4, !tbaa !19
  %cmp4 = icmp slt i32 %22, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %23 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.body
  %24 = load float, float* %w0, align 4, !tbaa !54
  %conv = fpext float %24 to double
  %25 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %T0, i32 0, i64 %idxprom
  store double %conv, double* %arrayidx, align 8, !tbaa !39
  %26 = load float, float* %w1, align 4, !tbaa !54
  %conv7 = fpext float %26 to double
  %27 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom8 = sext i32 %27 to i64
  %arrayidx9 = getelementptr inbounds [4 x double], [4 x double]* %T1, i32 0, i64 %idxprom8
  store double %conv7, double* %arrayidx9, align 8, !tbaa !39
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %28 = bitcast float* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast float* %w0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %30 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %31, i32 0, i32 1
  %m13 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params11, i32 0, i32 0
  %32 = load i32, i32* %m13, align 4, !tbaa !34
  %cmp14 = icmp eq i32 %32, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %for.end
  %33 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params16 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %33, i32 0, i32 1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params16, i32 0, i32 4
  %34 = load i32, i32* %Order, align 4, !tbaa !25
  %cmp17 = icmp eq i32 %34, 1
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.27

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %35 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %35, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params20, i32 0, i32 2
  %36 = load i32, i32* %n, align 4, !tbaa !35
  %cmp21 = icmp sle i32 %36, 8
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %land.lhs.true.19
  %37 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds [4 x double], [4 x double]* %T0, i32 0, i64 0
  %38 = load double, double* %arrayidx24, align 8, !tbaa !39
  %arrayidx25 = getelementptr inbounds [4 x double], [4 x double]* %T1, i32 0, i64 0
  %39 = load double, double* %arrayidx25, align 8, !tbaa !39
  %40 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  %call26 = call i32 @fn_Sd_1arg_linear_monotonic(%struct.gs_function_Sd_s* %37, double %38, double %39, i32* %40) #5
  store i32 %call26, i32* %code, align 4, !tbaa !19
  %41 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.27:                                        ; preds = %land.lhs.true.19, %land.lhs.true, %for.end
  %42 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %42, i32 0, i32 1
  %m29 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params28, i32 0, i32 0
  %43 = load i32, i32* %m29, align 4, !tbaa !34
  %shl = shl i32 1, %43
  %sub30 = sub nsw i32 %shl, 1
  store i32 %sub30, i32* %m12, align 4, !tbaa !19
  %44 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %T0, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [4 x double], [4 x double]* %T1, i32 0, i32 0
  %arraydecay32 = getelementptr inbounds [4 x i32], [4 x i32]* %I, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [4 x double], [4 x double]* %S0, i32 0, i32 0
  %45 = load i32, i32* %ii, align 4, !tbaa !19
  %call34 = call i32 @make_interpolation_nodes(%struct.gs_function_Sd_s* %44, double* %arraydecay, double* %arraydecay31, i32* %arraydecay32, double* %arraydecay33, i32 0, i32 0, i32 %45) #5
  store i32 %call34, i32* %code, align 4, !tbaa !19
  %46 = load i32, i32* %code, align 4, !tbaa !19
  %cmp35 = icmp slt i32 %46, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.27
  %47 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.38:                                        ; preds = %if.end.27
  store i32 0, i32* %mm, align 4, !tbaa !19
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.59, %if.end.38
  %48 = load i32, i32* %i, align 4, !tbaa !19
  %49 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %49, i32 0, i32 1
  %n41 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params40, i32 0, i32 2
  %50 = load i32, i32* %n41, align 4, !tbaa !35
  %cmp42 = icmp slt i32 %48, %50
  br i1 %cmp42, label %for.body.44, label %for.end.61

for.body.44:                                      ; preds = %for.cond.39
  %51 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %arraydecay45 = getelementptr inbounds [4 x double], [4 x double]* %T0, i32 0, i32 0
  %arraydecay46 = getelementptr inbounds [4 x double], [4 x double]* %T1, i32 0, i32 0
  %arraydecay47 = getelementptr inbounds [4 x i32], [4 x i32]* %I, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [4 x double], [4 x double]* %S0, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [4 x double], [4 x double]* %S1, i32 0, i32 0
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %call50 = call i32 @is_lattice_monotonic(%struct.gs_function_Sd_s* %51, double* %arraydecay45, double* %arraydecay46, i32* %arraydecay47, double* %arraydecay48, double* %arraydecay49, i32 %52, i32* %m1) #5
  store i32 %call50, i32* %code, align 4, !tbaa !19
  %53 = load i32, i32* %code, align 4, !tbaa !19
  %cmp51 = icmp slt i32 %53, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body.44
  %54 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

if.end.54:                                        ; preds = %for.body.44
  %55 = load i32, i32* %m1, align 4, !tbaa !19
  %56 = load i32, i32* %mm, align 4, !tbaa !19
  %or = or i32 %56, %55
  store i32 %or, i32* %mm, align 4, !tbaa !19
  %57 = load i32, i32* %mm, align 4, !tbaa !19
  %58 = load i32, i32* %m12, align 4, !tbaa !19
  %cmp55 = icmp eq i32 %57, %58
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.54
  br label %for.end.61

if.end.58:                                        ; preds = %if.end.54
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %59 = load i32, i32* %i, align 4, !tbaa !19
  %inc60 = add nsw i32 %59, 1
  store i32 %inc60, i32* %i, align 4, !tbaa !19
  br label %for.cond.39

for.end.61:                                       ; preds = %if.then.57, %for.cond.39
  %60 = load i32, i32* %mm, align 4, !tbaa !19
  %61 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 %60, i32* %61, align 4, !tbaa !19
  %62 = load i32, i32* %mm, align 4, !tbaa !19
  %tobool = icmp ne i32 %62, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %for.end.61, %if.then.53, %if.then.37, %if.then.23, %cleanup, %if.then
  %63 = bitcast i32* %m12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %mm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast [4 x double]* %S1 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %66) #2
  %67 = bitcast [4 x double]* %S0 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %67) #2
  %68 = bitcast [4 x double]* %T1 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %68) #2
  %69 = bitcast [4 x double]* %T0 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %69) #2
  %70 = bitcast [4 x i32]* %I to i8*
  call void @llvm.lifetime.end(i64 16, i8* %70) #2
  %71 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @get_scaled_range(%struct.gs_function_Sd_s* %pfn, float* %lower, float* %upper, i32 %i, float* %pw0, float* %pw1) #3 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %lower.addr = alloca float*, align 8
  %upper.addr = alloca float*, align 8
  %i.addr = alloca i32, align 4
  %pw0.addr = alloca float*, align 8
  %pw1.addr = alloca float*, align 8
  %d0 = alloca float, align 4
  %d1 = alloca float, align 4
  %v0 = alloca float, align 4
  %v1 = alloca float, align 4
  %e0 = alloca float, align 4
  %e1 = alloca float, align 4
  %w0 = alloca float, align 4
  %w1 = alloca float, align 4
  %w = alloca float, align 4
  %small_noise = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store float* %lower, float** %lower.addr, align 8, !tbaa !1
  store float* %upper, float** %upper.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !19
  store float* %pw0, float** %pw0.addr, align 8, !tbaa !1
  store float* %pw1, float** %pw1.addr, align 8, !tbaa !1
  %0 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %i.addr, align 4, !tbaa !19
  %mul = mul nsw i32 %1, 2
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %2 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %2, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 1
  %3 = load float*, float** %Domain, align 8, !tbaa !56
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4, !tbaa !54
  store float %4, float* %d0, align 4, !tbaa !54
  %5 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %i.addr, align 4, !tbaa !19
  %mul1 = mul nsw i32 %6, 2
  %add2 = add nsw i32 %mul1, 1
  %idxprom3 = sext i32 %add2 to i64
  %7 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %7, i32 0, i32 1
  %Domain5 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params4, i32 0, i32 1
  %8 = load float*, float** %Domain5, align 8, !tbaa !56
  %arrayidx6 = getelementptr inbounds float, float* %8, i64 %idxprom3
  %9 = load float, float* %arrayidx6, align 4, !tbaa !54
  store float %9, float* %d1, align 4, !tbaa !54
  %10 = bitcast float* %v0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom7 = sext i32 %11 to i64
  %12 = load float*, float** %lower.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %12, i64 %idxprom7
  %13 = load float, float* %arrayidx8, align 4, !tbaa !54
  store float %13, float* %v0, align 4, !tbaa !54
  %14 = bitcast float* %v1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom9 = sext i32 %15 to i64
  %16 = load float*, float** %upper.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds float, float* %16, i64 %idxprom9
  %17 = load float, float* %arrayidx10, align 4, !tbaa !54
  store float %17, float* %v1, align 4, !tbaa !54
  %18 = bitcast float* %e0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast float* %e1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast float* %w0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast float* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast float* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast float* %small_noise to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  store float 0x3EB0C6F7A0000000, float* %small_noise, align 4, !tbaa !54
  %24 = load float, float* %v0, align 4, !tbaa !54
  %25 = load float, float* %d0, align 4, !tbaa !54
  %cmp = fcmp olt float %24, %25
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %26 = load float, float* %v0, align 4, !tbaa !54
  %27 = load float, float* %d1, align 4, !tbaa !54
  %cmp11 = fcmp ogt float %26, %27
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %28 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %28, i32 0, i32 1
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params12, i32 0, i32 7
  %29 = load float*, float** %Encode, align 8, !tbaa !46
  %tobool = icmp ne float* %29, null
  br i1 %tobool, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %30 = load i32, i32* %i.addr, align 4, !tbaa !19
  %mul14 = mul nsw i32 %30, 2
  %add15 = add nsw i32 %mul14, 0
  %idxprom16 = sext i32 %add15 to i64
  %31 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %31, i32 0, i32 1
  %Encode18 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params17, i32 0, i32 7
  %32 = load float*, float** %Encode18, align 8, !tbaa !46
  %arrayidx19 = getelementptr inbounds float, float* %32, i64 %idxprom16
  %33 = load float, float* %arrayidx19, align 4, !tbaa !54
  store float %33, float* %e0, align 4, !tbaa !54
  %34 = load i32, i32* %i.addr, align 4, !tbaa !19
  %mul20 = mul nsw i32 %34, 2
  %add21 = add nsw i32 %mul20, 1
  %idxprom22 = sext i32 %add21 to i64
  %35 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %35, i32 0, i32 1
  %Encode24 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params23, i32 0, i32 7
  %36 = load float*, float** %Encode24, align 8, !tbaa !46
  %arrayidx25 = getelementptr inbounds float, float* %36, i64 %idxprom22
  %37 = load float, float* %arrayidx25, align 4, !tbaa !54
  store float %37, float* %e1, align 4, !tbaa !54
  br label %if.end.29

if.else:                                          ; preds = %if.end
  store float 0.000000e+00, float* %e0, align 4, !tbaa !54
  %38 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom26 = sext i32 %38 to i64
  %39 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params27 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %39, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params27, i32 0, i32 9
  %40 = load i32*, i32** %Size, align 8, !tbaa !38
  %arrayidx28 = getelementptr inbounds i32, i32* %40, i64 %idxprom26
  %41 = load i32, i32* %arrayidx28, align 4, !tbaa !19
  %conv = sitofp i32 %41 to float
  %sub = fsub float %conv, 1.000000e+00
  store float %sub, float* %e1, align 4, !tbaa !54
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.13
  %42 = load float, float* %v0, align 4, !tbaa !54
  %43 = load float, float* %d0, align 4, !tbaa !54
  %sub30 = fsub float %42, %43
  %44 = load float, float* %e1, align 4, !tbaa !54
  %45 = load float, float* %e0, align 4, !tbaa !54
  %sub31 = fsub float %44, %45
  %mul32 = fmul float %sub30, %sub31
  %46 = load float, float* %d1, align 4, !tbaa !54
  %47 = load float, float* %d0, align 4, !tbaa !54
  %sub33 = fsub float %46, %47
  %div = fdiv float %mul32, %sub33
  %48 = load float, float* %e0, align 4, !tbaa !54
  %add34 = fadd float %div, %48
  store float %add34, float* %w0, align 4, !tbaa !54
  %49 = load float, float* %w0, align 4, !tbaa !54
  %cmp35 = fcmp olt float %49, 0.000000e+00
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.29
  store float 0.000000e+00, float* %w0, align 4, !tbaa !54
  br label %if.end.55

if.else.38:                                       ; preds = %if.end.29
  %50 = load float, float* %w0, align 4, !tbaa !54
  %51 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom39 = sext i32 %51 to i64
  %52 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %52, i32 0, i32 1
  %Size41 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params40, i32 0, i32 9
  %53 = load i32*, i32** %Size41, align 8, !tbaa !38
  %arrayidx42 = getelementptr inbounds i32, i32* %53, i64 %idxprom39
  %54 = load i32, i32* %arrayidx42, align 4, !tbaa !19
  %sub43 = sub nsw i32 %54, 1
  %conv44 = sitofp i32 %sub43 to float
  %cmp45 = fcmp oge float %50, %conv44
  br i1 %cmp45, label %if.then.47, label %if.end.54

if.then.47:                                       ; preds = %if.else.38
  %55 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom48 = sext i32 %55 to i64
  %56 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params49 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %56, i32 0, i32 1
  %Size50 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params49, i32 0, i32 9
  %57 = load i32*, i32** %Size50, align 8, !tbaa !38
  %arrayidx51 = getelementptr inbounds i32, i32* %57, i64 %idxprom48
  %58 = load i32, i32* %arrayidx51, align 4, !tbaa !19
  %conv52 = sitofp i32 %58 to float
  %sub53 = fsub float %conv52, 1.000000e+00
  store float %sub53, float* %w0, align 4, !tbaa !54
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.47, %if.else.38
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.37
  %59 = load float, float* %v1, align 4, !tbaa !54
  %60 = load float, float* %d0, align 4, !tbaa !54
  %sub56 = fsub float %59, %60
  %61 = load float, float* %e1, align 4, !tbaa !54
  %62 = load float, float* %e0, align 4, !tbaa !54
  %sub57 = fsub float %61, %62
  %mul58 = fmul float %sub56, %sub57
  %63 = load float, float* %d1, align 4, !tbaa !54
  %64 = load float, float* %d0, align 4, !tbaa !54
  %sub59 = fsub float %63, %64
  %div60 = fdiv float %mul58, %sub59
  %65 = load float, float* %e0, align 4, !tbaa !54
  %add61 = fadd float %div60, %65
  store float %add61, float* %w1, align 4, !tbaa !54
  %66 = load float, float* %w1, align 4, !tbaa !54
  %cmp62 = fcmp olt float %66, 0.000000e+00
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.55
  store float 0.000000e+00, float* %w1, align 4, !tbaa !54
  br label %if.end.82

if.else.65:                                       ; preds = %if.end.55
  %67 = load float, float* %w1, align 4, !tbaa !54
  %68 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom66 = sext i32 %68 to i64
  %69 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params67 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %69, i32 0, i32 1
  %Size68 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params67, i32 0, i32 9
  %70 = load i32*, i32** %Size68, align 8, !tbaa !38
  %arrayidx69 = getelementptr inbounds i32, i32* %70, i64 %idxprom66
  %71 = load i32, i32* %arrayidx69, align 4, !tbaa !19
  %sub70 = sub nsw i32 %71, 1
  %conv71 = sitofp i32 %sub70 to float
  %cmp72 = fcmp oge float %67, %conv71
  br i1 %cmp72, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %if.else.65
  %72 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom75 = sext i32 %72 to i64
  %73 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params76 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %73, i32 0, i32 1
  %Size77 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params76, i32 0, i32 9
  %74 = load i32*, i32** %Size77, align 8, !tbaa !38
  %arrayidx78 = getelementptr inbounds i32, i32* %74, i64 %idxprom75
  %75 = load i32, i32* %arrayidx78, align 4, !tbaa !19
  %conv79 = sitofp i32 %75 to float
  %sub80 = fsub float %conv79, 1.000000e+00
  store float %sub80, float* %w1, align 4, !tbaa !54
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.74, %if.else.65
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.64
  %76 = load float, float* %w0, align 4, !tbaa !54
  %77 = load float, float* %w1, align 4, !tbaa !54
  %cmp83 = fcmp ogt float %76, %77
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.82
  %78 = load float, float* %w0, align 4, !tbaa !54
  store float %78, float* %w, align 4, !tbaa !54
  %79 = load float, float* %w1, align 4, !tbaa !54
  store float %79, float* %w0, align 4, !tbaa !54
  %80 = load float, float* %w, align 4, !tbaa !54
  store float %80, float* %w1, align 4, !tbaa !54
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.end.82
  %81 = load float, float* %w0, align 4, !tbaa !54
  %add87 = fadd float %81, 1.000000e+00
  %conv88 = fpext float %add87 to double
  %call = call double @floor(double %conv88) #6
  %82 = load float, float* %w0, align 4, !tbaa !54
  %conv89 = fpext float %82 to double
  %sub90 = fsub double %call, %conv89
  %83 = load float, float* %e1, align 4, !tbaa !54
  %84 = load float, float* %e0, align 4, !tbaa !54
  %sub91 = fsub float %83, %84
  %cmp92 = fcmp olt float %sub91, 0.000000e+00
  br i1 %cmp92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.86
  %85 = load float, float* %e1, align 4, !tbaa !54
  %86 = load float, float* %e0, align 4, !tbaa !54
  %sub94 = fsub float %85, %86
  %sub95 = fsub float -0.000000e+00, %sub94
  br label %cond.end

cond.false:                                       ; preds = %if.end.86
  %87 = load float, float* %e1, align 4, !tbaa !54
  %88 = load float, float* %e0, align 4, !tbaa !54
  %sub96 = fsub float %87, %88
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub95, %cond.true ], [ %sub96, %cond.false ]
  %mul97 = fmul float 0x3EB0C6F7A0000000, %cond
  %conv98 = fpext float %mul97 to double
  %cmp99 = fcmp olt double %sub90, %conv98
  br i1 %cmp99, label %if.then.101, label %if.end.106

if.then.101:                                      ; preds = %cond.end
  %89 = load float, float* %w0, align 4, !tbaa !54
  %conv102 = fpext float %89 to double
  %call103 = call double @floor(double %conv102) #6
  %add104 = fadd double %call103, 1.000000e+00
  %conv105 = fptrunc double %add104 to float
  store float %conv105, float* %w0, align 4, !tbaa !54
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.101, %cond.end
  %90 = load float, float* %w1, align 4, !tbaa !54
  %conv107 = fpext float %90 to double
  %91 = load float, float* %w1, align 4, !tbaa !54
  %conv108 = fpext float %91 to double
  %call109 = call double @floor(double %conv108) #6
  %sub110 = fsub double %conv107, %call109
  %92 = load float, float* %e1, align 4, !tbaa !54
  %93 = load float, float* %e0, align 4, !tbaa !54
  %sub111 = fsub float %92, %93
  %cmp112 = fcmp olt float %sub111, 0.000000e+00
  br i1 %cmp112, label %cond.true.114, label %cond.false.117

cond.true.114:                                    ; preds = %if.end.106
  %94 = load float, float* %e1, align 4, !tbaa !54
  %95 = load float, float* %e0, align 4, !tbaa !54
  %sub115 = fsub float %94, %95
  %sub116 = fsub float -0.000000e+00, %sub115
  br label %cond.end.119

cond.false.117:                                   ; preds = %if.end.106
  %96 = load float, float* %e1, align 4, !tbaa !54
  %97 = load float, float* %e0, align 4, !tbaa !54
  %sub118 = fsub float %96, %97
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.117, %cond.true.114
  %cond120 = phi float [ %sub116, %cond.true.114 ], [ %sub118, %cond.false.117 ]
  %mul121 = fmul float 0x3EB0C6F7A0000000, %cond120
  %conv122 = fpext float %mul121 to double
  %cmp123 = fcmp olt double %sub110, %conv122
  br i1 %cmp123, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %cond.end.119
  %98 = load float, float* %w1, align 4, !tbaa !54
  %conv126 = fpext float %98 to double
  %call127 = call double @floor(double %conv126) #6
  %conv128 = fptrunc double %call127 to float
  store float %conv128, float* %w1, align 4, !tbaa !54
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %cond.end.119
  %99 = load float, float* %w0, align 4, !tbaa !54
  %100 = load float, float* %w1, align 4, !tbaa !54
  %cmp130 = fcmp ogt float %99, %100
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.129
  %101 = load float, float* %w1, align 4, !tbaa !54
  store float %101, float* %w0, align 4, !tbaa !54
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.end.129
  %102 = load float, float* %w0, align 4, !tbaa !54
  %103 = load float*, float** %pw0.addr, align 8, !tbaa !1
  store float %102, float* %103, align 4, !tbaa !54
  %104 = load float, float* %w1, align 4, !tbaa !54
  %105 = load float*, float** %pw1.addr, align 8, !tbaa !1
  store float %104, float* %105, align 4, !tbaa !54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.133, %if.then
  %106 = bitcast float* %small_noise to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast float* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast float* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast float* %w0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast float* %e1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast float* %e0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast float* %v1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast float* %v0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #2
  %115 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = load i32, i32* %retval
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_Sd_1arg_linear_monotonic(%struct.gs_function_Sd_s* %pfn, double %T0, double %T1, i32* %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %T0.addr = alloca double, align 8
  %T1.addr = alloca double, align 8
  %mask.addr = alloca i32*, align 8
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %code = alloca i32, align 4
  %V0 = alloca [8 x double], align 16
  %V1 = alloca [8 x double], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store double %T0, double* %T0.addr, align 8, !tbaa !39
  store double %T1, double* %T1.addr, align 8, !tbaa !39
  store i32* %mask, i32** %mask.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load double, double* %T0.addr, align 8, !tbaa !39
  %call = call double @floor(double %1) #6
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %i0, align 4, !tbaa !19
  %2 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load double, double* %T1.addr, align 8, !tbaa !39
  %call1 = call double @ceil(double %3) #6
  %conv2 = fptosi double %call1 to i32
  store i32 %conv2, i32* %i1, align 4, !tbaa !19
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast [8 x double]* %V0 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #2
  %6 = bitcast [8 x double]* %V1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %6) #2
  %7 = load i32, i32* %i1, align 4, !tbaa !19
  %8 = load i32, i32* %i0, align 4, !tbaa !19
  %sub = sub nsw i32 %7, %8
  %cmp = icmp sgt i32 %sub, 1
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %10 = load i32, i32* %i0, align 4, !tbaa !19
  %11 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %11, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %12 = load i32, i32* %n, align 4, !tbaa !35
  %mul = mul nsw i32 %10, %12
  %13 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %13, i32 0, i32 1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params4, i32 0, i32 6
  %14 = load i32, i32* %BitsPerSample, align 4, !tbaa !37
  %mul5 = mul nsw i32 %mul, %14
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %V0, i32 0, i32 0
  %call6 = call i32 @load_vector_to(%struct.gs_function_Sd_s* %9, i32 %mul5, double* %arraydecay) #5
  store i32 %call6, i32* %code, align 4, !tbaa !19
  %15 = load i32, i32* %code, align 4, !tbaa !19
  %cmp7 = icmp slt i32 %15, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %16 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %18 = load i32, i32* %i1, align 4, !tbaa !19
  %19 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %19, i32 0, i32 1
  %n11 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params10, i32 0, i32 2
  %20 = load i32, i32* %n11, align 4, !tbaa !35
  %mul12 = mul nsw i32 %18, %20
  %21 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params13 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %21, i32 0, i32 1
  %BitsPerSample14 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params13, i32 0, i32 6
  %22 = load i32, i32* %BitsPerSample14, align 4, !tbaa !37
  %mul15 = mul nsw i32 %mul12, %22
  %arraydecay16 = getelementptr inbounds [8 x double], [8 x double]* %V1, i32 0, i32 0
  %call17 = call i32 @load_vector_to(%struct.gs_function_Sd_s* %17, i32 %mul15, double* %arraydecay16) #5
  store i32 %call17, i32* %code, align 4, !tbaa !19
  %23 = load i32, i32* %code, align 4, !tbaa !19
  %cmp18 = icmp slt i32 %23, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end
  %25 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %26 = load i32, i32* %i0, align 4, !tbaa !19
  %27 = load i32, i32* %i1, align 4, !tbaa !19
  %arraydecay22 = getelementptr inbounds [8 x double], [8 x double]* %V0, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [8 x double], [8 x double]* %V1, i32 0, i32 0
  %call24 = call i32 @fn_Sd_1arg_linear_monotonic_rec(%struct.gs_function_Sd_s* %25, i32 %26, i32 %27, double* %arraydecay22, double* %arraydecay23) #5
  store i32 %call24, i32* %code, align 4, !tbaa !19
  %28 = load i32, i32* %code, align 4, !tbaa !19
  %cmp25 = icmp slt i32 %28, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.21
  %29 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.21
  %30 = load i32, i32* %code, align 4, !tbaa !19
  %31 = load i32, i32* %code, align 4, !tbaa !19
  %shr = ashr i32 %31, 1
  %and = and i32 %30, %shr
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.28
  %32 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 1, i32* %32, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.28
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %entry
  %33 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 0, i32* %33, align 4, !tbaa !19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.29, %if.then.27, %if.then.20, %if.then.9
  %34 = bitcast [8 x double]* %V1 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %34) #2
  %35 = bitcast [8 x double]* %V0 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %35) #2
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @make_interpolation_nodes(%struct.gs_function_Sd_s* %pfn, double* %T0, double* %T1, i32* %I, double* %T, i32 %a_offset, i32 %s_offset, i32 %ii) #3 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %T0.addr = alloca double*, align 8
  %T1.addr = alloca double*, align 8
  %I.addr = alloca i32*, align 8
  %T.addr = alloca double*, align 8
  %a_offset.addr = alloca i32, align 4
  %s_offset.addr = alloca i32, align 4
  %ii.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %sa = alloca i32, align 4
  %ss = alloca i32, align 4
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store double* %T0, double** %T0.addr, align 8, !tbaa !1
  store double* %T1, double** %T1.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  store double* %T, double** %T.addr, align 8, !tbaa !1
  store i32 %a_offset, i32* %a_offset.addr, align 4, !tbaa !19
  store i32 %s_offset, i32* %s_offset.addr, align 4, !tbaa !19
  store i32 %ii, i32* %ii.addr, align 4, !tbaa !19
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %2, i32 0, i32 1
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 10
  %3 = load double*, double** %pole, align 8, !tbaa !29
  %4 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds double, double* %3, i64 %idx.ext
  %5 = load double, double* %add.ptr, align 8, !tbaa !39
  %cmp1 = fcmp oeq double %5, 1.000000e+90
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %7 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %8 = load i32, i32* %s_offset.addr, align 4, !tbaa !19
  %call = call i32 @load_vector(%struct.gs_function_Sd_s* %6, i32 %7, i32 %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %9 = load i32, i32* %code, align 4, !tbaa !19
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %10 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %11 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %11, i32 0, i32 1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params6, i32 0, i32 4
  %12 = load i32, i32* %Order, align 4, !tbaa !25
  %cmp7 = icmp eq i32 %12, 3
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %13 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %14 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %15 = load double*, double** %T.addr, align 8, !tbaa !1
  %16 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %16, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params9, i32 0, i32 0
  %17 = load i32, i32* %m, align 4, !tbaa !34
  %sub = sub nsw i32 %17, 1
  %call10 = call i32 @make_interpolation_tensor(%struct.gs_function_Sd_s* %13, i32* %14, double* %15, i32 0, i32 0, i32 %sub) #5
  store i32 %call10, i32* %code, align 4, !tbaa !19
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.5
  br label %if.end.64

if.else:                                          ; preds = %entry
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom = sext i32 %20 to i64
  %21 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %21, i64 %idxprom
  %22 = load double, double* %arrayidx, align 8, !tbaa !39
  %call12 = call double @floor(double %22) #6
  %conv = fptosi double %call12 to i32
  store i32 %conv, i32* %i0, align 4, !tbaa !19
  %23 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom13 = sext i32 %24 to i64
  %25 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds double, double* %25, i64 %idxprom13
  %26 = load double, double* %arrayidx14, align 8, !tbaa !39
  %call15 = call double @ceil(double %26) #6
  %conv16 = fptosi double %call15 to i32
  store i32 %conv16, i32* %i1, align 4, !tbaa !19
  %27 = bitcast i32* %sa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom17 = sext i32 %28 to i64
  %29 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %29, i32 0, i32 1
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params18, i32 0, i32 11
  %30 = load i32*, i32** %array_step, align 8, !tbaa !30
  %arrayidx19 = getelementptr inbounds i32, i32* %30, i64 %idxprom17
  %31 = load i32, i32* %arrayidx19, align 4, !tbaa !19
  store i32 %31, i32* %sa, align 4, !tbaa !19
  %32 = bitcast i32* %ss to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom20 = sext i32 %33 to i64
  %34 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params21 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %34, i32 0, i32 1
  %stream_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params21, i32 0, i32 12
  %35 = load i32*, i32** %stream_step, align 8, !tbaa !31
  %arrayidx22 = getelementptr inbounds i32, i32* %35, i64 %idxprom20
  %36 = load i32, i32* %arrayidx22, align 4, !tbaa !19
  store i32 %36, i32* %ss, align 4, !tbaa !19
  %37 = load i32, i32* %i0, align 4, !tbaa !19
  %cmp23 = icmp slt i32 %37, 0
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %38 = load i32, i32* %i0, align 4, !tbaa !19
  %39 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom25 = sext i32 %39 to i64
  %40 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params26 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %40, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params26, i32 0, i32 9
  %41 = load i32*, i32** %Size, align 8, !tbaa !38
  %arrayidx27 = getelementptr inbounds i32, i32* %41, i64 %idxprom25
  %42 = load i32, i32* %arrayidx27, align 4, !tbaa !19
  %cmp28 = icmp sge i32 %38, %42
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %if.else
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %lor.lhs.false
  %43 = load i32, i32* %i1, align 4, !tbaa !19
  %cmp32 = icmp slt i32 %43, 0
  br i1 %cmp32, label %if.then.41, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.31
  %44 = load i32, i32* %i1, align 4, !tbaa !19
  %45 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom35 = sext i32 %45 to i64
  %46 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params36 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %46, i32 0, i32 1
  %Size37 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params36, i32 0, i32 9
  %47 = load i32*, i32** %Size37, align 8, !tbaa !38
  %arrayidx38 = getelementptr inbounds i32, i32* %47, i64 %idxprom35
  %48 = load i32, i32* %arrayidx38, align 4, !tbaa !19
  %cmp39 = icmp sge i32 %44, %48
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false.34, %if.end.31
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %lor.lhs.false.34
  %49 = load i32, i32* %i0, align 4, !tbaa !19
  %50 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom43 = sext i32 %50 to i64
  %51 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i32, i32* %51, i64 %idxprom43
  store i32 %49, i32* %arrayidx44, align 4, !tbaa !19
  %52 = load i32, i32* %i1, align 4, !tbaa !19
  %53 = load i32, i32* %i0, align 4, !tbaa !19
  %cmp45 = icmp sgt i32 %52, %53
  %cond = select i1 %cmp45, i32 1, i32 0
  %conv47 = sitofp i32 %cond to double
  %54 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom48 = sext i32 %54 to i64
  %55 = load double*, double** %T.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds double, double* %55, i64 %idxprom48
  store double %conv47, double* %arrayidx49, align 8, !tbaa !39
  %56 = load i32, i32* %i0, align 4, !tbaa !19
  store i32 %56, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.42
  %57 = load i32, i32* %i, align 4, !tbaa !19
  %58 = load i32, i32* %i1, align 4, !tbaa !19
  %cmp50 = icmp sle i32 %57, %58
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %60 = load double*, double** %T0.addr, align 8, !tbaa !1
  %61 = load double*, double** %T1.addr, align 8, !tbaa !1
  %62 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %63 = load double*, double** %T.addr, align 8, !tbaa !1
  %64 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %65 = load i32, i32* %i, align 4, !tbaa !19
  %66 = load i32, i32* %sa, align 4, !tbaa !19
  %mul = mul nsw i32 %65, %66
  %add = add nsw i32 %64, %mul
  %67 = load i32, i32* %s_offset.addr, align 4, !tbaa !19
  %68 = load i32, i32* %i, align 4, !tbaa !19
  %69 = load i32, i32* %ss, align 4, !tbaa !19
  %mul52 = mul nsw i32 %68, %69
  %add53 = add nsw i32 %67, %mul52
  %70 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub54 = sub nsw i32 %70, 1
  %call55 = call i32 @make_interpolation_nodes(%struct.gs_function_Sd_s* %59, double* %60, double* %61, i32* %62, double* %63, i32 %add, i32 %add53, i32 %sub54) #5
  store i32 %call55, i32* %code, align 4, !tbaa !19
  %71 = load i32, i32* %code, align 4, !tbaa !19
  %cmp56 = icmp slt i32 %71, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.body
  %72 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %73 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.58, %if.then.41, %if.then.30
  %74 = bitcast i32* %ss to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %sa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.65 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.64

if.end.64:                                        ; preds = %cleanup.cont, %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %if.end.64, %cleanup, %if.then.4
  %79 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_lattice_monotonic(%struct.gs_function_Sd_s* %pfn, double* %T0, double* %T1, i32* %I, double* %S0, double* %S1, i32 %k, i32* %mask) #3 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %T0.addr = alloca double*, align 8
  %T1.addr = alloca double*, align 8
  %I.addr = alloca i32*, align 8
  %S0.addr = alloca double*, align 8
  %S1.addr = alloca double*, align 8
  %k.addr = alloca i32, align 4
  %mask.addr = alloca i32*, align 8
  %m = alloca i32, align 4
  %mm = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store double* %T0, double** %T0.addr, align 8, !tbaa !1
  store double* %T1, double** %T1.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  store double* %S0, double** %S0.addr, align 8, !tbaa !1
  store double* %S1, double** %S1.addr, align 8, !tbaa !1
  store i32 %k, i32* %k.addr, align 4, !tbaa !19
  store i32* %mask, i32** %mask.addr, align 8, !tbaa !1
  %0 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %mm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %mm, align 4, !tbaa !19
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !19
  %5 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %5, i32 0, i32 1
  %m1 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %6 = load i32, i32* %m1, align 4, !tbaa !34
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %7 to i64
  %8 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %8, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8, !tbaa !39
  %10 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom2 = sext i32 %10 to i64
  %11 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %11, i64 %idxprom2
  %12 = load double, double* %arrayidx3, align 8, !tbaa !39
  %cmp4 = fcmp une double %9, %12
  br i1 %cmp4, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %13 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %14 = load double*, double** %T0.addr, align 8, !tbaa !1
  %15 = load double*, double** %T1.addr, align 8, !tbaa !1
  %16 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %17 = load double*, double** %S0.addr, align 8, !tbaa !1
  %18 = load double*, double** %S1.addr, align 8, !tbaa !1
  %19 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %19, i32 0, i32 1
  %m6 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params5, i32 0, i32 0
  %20 = load i32, i32* %m6, align 4, !tbaa !34
  %sub = sub nsw i32 %20, 1
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %22 = load i32, i32* %k.addr, align 4, !tbaa !19
  %call = call i32 @is_lattice_monotonic_by_dimension(%struct.gs_function_Sd_s* %13, double* %14, double* %15, i32* %16, double* %17, double* %18, i32 %sub, i32 %21, i32 %22, i32* %m) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %23 = load i32, i32* %code, align 4, !tbaa !19
  %cmp7 = icmp slt i32 %23, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %24 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %25 = load i32, i32* %m, align 4, !tbaa !19
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %26 = load i32, i32* %i, align 4, !tbaa !19
  %shl = shl i32 1, %26
  %27 = load i32, i32* %mm, align 4, !tbaa !19
  %or = or i32 %27, %shl
  store i32 %or, i32* %mm, align 4, !tbaa !19
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %28 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %mm, align 4, !tbaa !19
  %30 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 %29, i32* %30, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.8
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %mm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @load_vector_to(%struct.gs_function_Sd_s* %pfn, i32 %s_offset, double* %V) #3 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %s_offset.addr = alloca i32, align 4
  %V.addr = alloca double*, align 8
  %sdata = alloca [64 x i32], align 16
  %k = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32 %s_offset, i32* %s_offset.addr, align 4, !tbaa !19
  store double* %V, double** %V.addr, align 8, !tbaa !1
  %0 = bitcast [64 x i32]* %sdata to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #2
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %3, i32 0, i32 1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  %4 = load i32, i32* %BitsPerSample, align 4, !tbaa !37
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [33 x i32 (%struct.gs_function_Sd_s*, i64, i32*)*], [33 x i32 (%struct.gs_function_Sd_s*, i64, i32*)*]* @fn_get_samples, i32 0, i64 %idxprom
  %5 = load i32 (%struct.gs_function_Sd_s*, i64, i32*)*, i32 (%struct.gs_function_Sd_s*, i64, i32*)** %arrayidx, align 8, !tbaa !1
  %6 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %7 = load i32, i32* %s_offset.addr, align 4, !tbaa !19
  %conv = sext i32 %7 to i64
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %sdata, i32 0, i32 0
  %call = call i32 %5(%struct.gs_function_Sd_s* %6, i64 %conv, i32* %arraydecay) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %8 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %k, align 4, !tbaa !19
  %11 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %11, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 2
  %12 = load i32, i32* %n, align 4, !tbaa !35
  %cmp3 = icmp slt i32 %10, %12
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %14 = load i32, i32* %k, align 4, !tbaa !19
  %15 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds [64 x i32], [64 x i32]* %sdata, i32 0, i64 %idxprom5
  %16 = load i32, i32* %arrayidx6, align 4, !tbaa !19
  %conv7 = uitofp i32 %16 to double
  %call8 = call double @fn_Sd_encode(%struct.gs_function_Sd_s* %13, i32 %14, double %conv7) #5
  %17 = load i32, i32* %k, align 4, !tbaa !19
  %idxprom9 = sext i32 %17 to i64
  %18 = load double*, double** %V.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 %idxprom9
  store double %call8, double* %arrayidx10, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %k, align 4, !tbaa !19
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast [64 x i32]* %sdata to i8*
  call void @llvm.lifetime.end(i64 256, i8* %22) #2
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_Sd_1arg_linear_monotonic_rec(%struct.gs_function_Sd_s* %pfn, i32 %i0, i32 %i1, double* %V0, double* %V1) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %i0.addr = alloca i32, align 4
  %i1.addr = alloca i32, align 4
  %V0.addr = alloca double*, align 8
  %V1.addr = alloca double*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %VV = alloca [8 x double], align 16
  %ii = alloca i32, align 4
  %code17 = alloca i32, align 4
  %cod1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32 %i0, i32* %i0.addr, align 4, !tbaa !19
  store i32 %i1, i32* %i1.addr, align 4, !tbaa !19
  store double* %V0, double** %V0.addr, align 8, !tbaa !1
  store double* %V1, double** %V1.addr, align 8, !tbaa !1
  %0 = load i32, i32* %i1.addr, align 4, !tbaa !19
  %1 = load i32, i32* %i0.addr, align 4, !tbaa !19
  %sub = sub nsw i32 %0, %1
  %cmp = icmp sle i32 %sub, 1
  br i1 %cmp, label %if.then, label %if.else.16

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %code, align 4, !tbaa !19
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !tbaa !19
  %5 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %5, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %6 = load i32, i32* %n, align 4, !tbaa !35
  %cmp1 = icmp slt i32 %4, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %7 to i64
  %8 = load double*, double** %V0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %8, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8, !tbaa !39
  %10 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom2 = sext i32 %10 to i64
  %11 = load double*, double** %V1.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %11, i64 %idxprom2
  %12 = load double, double* %arrayidx3, align 8, !tbaa !39
  %cmp4 = fcmp olt double %9, %12
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !19
  %mul = mul nsw i32 %13, 3
  %shl = shl i32 1, %mul
  %14 = load i32, i32* %code, align 4, !tbaa !19
  %or = or i32 %14, %shl
  store i32 %or, i32* %code, align 4, !tbaa !19
  br label %if.end.15

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom6 = sext i32 %15 to i64
  %16 = load double*, double** %V0.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds double, double* %16, i64 %idxprom6
  %17 = load double, double* %arrayidx7, align 8, !tbaa !39
  %18 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom8 = sext i32 %18 to i64
  %19 = load double*, double** %V1.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds double, double* %19, i64 %idxprom8
  %20 = load double, double* %arrayidx9, align 8, !tbaa !39
  %cmp10 = fcmp ogt double %17, %20
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %mul12 = mul nsw i32 %21, 3
  %shl13 = shl i32 2, %mul12
  %22 = load i32, i32* %code, align 4, !tbaa !19
  %or14 = or i32 %22, %shl13
  store i32 %or14, i32* %code, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %23 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %24, i32* %retval
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  br label %return

if.else.16:                                       ; preds = %entry
  %27 = bitcast [8 x double]* %VV to i8*
  call void @llvm.lifetime.start(i64 64, i8* %27) #2
  %28 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load i32, i32* %i0.addr, align 4, !tbaa !19
  %30 = load i32, i32* %i1.addr, align 4, !tbaa !19
  %add = add nsw i32 %29, %30
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %ii, align 4, !tbaa !19
  %31 = bitcast i32* %code17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %cod1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %34 = load i32, i32* %ii, align 4, !tbaa !19
  %35 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %35, i32 0, i32 1
  %n19 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params18, i32 0, i32 2
  %36 = load i32, i32* %n19, align 4, !tbaa !35
  %mul20 = mul nsw i32 %34, %36
  %37 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params21 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %37, i32 0, i32 1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params21, i32 0, i32 6
  %38 = load i32, i32* %BitsPerSample, align 4, !tbaa !37
  %mul22 = mul nsw i32 %mul20, %38
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %VV, i32 0, i32 0
  %call = call i32 @load_vector_to(%struct.gs_function_Sd_s* %33, i32 %mul22, double* %arraydecay) #5
  store i32 %call, i32* %code17, align 4, !tbaa !19
  %39 = load i32, i32* %code17, align 4, !tbaa !19
  %cmp23 = icmp slt i32 %39, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.16
  %40 = load i32, i32* %code17, align 4, !tbaa !19
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.else.16
  %41 = load i32, i32* %code17, align 4, !tbaa !19
  %42 = load i32, i32* %code17, align 4, !tbaa !19
  %shr = ashr i32 %42, 1
  %and = and i32 %41, %shr
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.25
  %43 = load i32, i32* %code17, align 4, !tbaa !19
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.25
  %44 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %45 = load i32, i32* %i0.addr, align 4, !tbaa !19
  %46 = load i32, i32* %ii, align 4, !tbaa !19
  %47 = load double*, double** %V0.addr, align 8, !tbaa !1
  %arraydecay28 = getelementptr inbounds [8 x double], [8 x double]* %VV, i32 0, i32 0
  %call29 = call i32 @fn_Sd_1arg_linear_monotonic_rec(%struct.gs_function_Sd_s* %44, i32 %45, i32 %46, double* %47, double* %arraydecay28) #5
  store i32 %call29, i32* %code17, align 4, !tbaa !19
  %48 = load i32, i32* %code17, align 4, !tbaa !19
  %cmp30 = icmp slt i32 %48, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.27
  %49 = load i32, i32* %code17, align 4, !tbaa !19
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.27
  %50 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %51 = load i32, i32* %ii, align 4, !tbaa !19
  %52 = load i32, i32* %i1.addr, align 4, !tbaa !19
  %arraydecay33 = getelementptr inbounds [8 x double], [8 x double]* %VV, i32 0, i32 0
  %53 = load double*, double** %V1.addr, align 8, !tbaa !1
  %call34 = call i32 @fn_Sd_1arg_linear_monotonic_rec(%struct.gs_function_Sd_s* %50, i32 %51, i32 %52, double* %arraydecay33, double* %53) #5
  store i32 %call34, i32* %cod1, align 4, !tbaa !19
  %54 = load i32, i32* %cod1, align 4, !tbaa !19
  %cmp35 = icmp slt i32 %54, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  %55 = load i32, i32* %cod1, align 4, !tbaa !19
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.end.32
  %56 = load i32, i32* %code17, align 4, !tbaa !19
  %57 = load i32, i32* %cod1, align 4, !tbaa !19
  %or38 = or i32 %56, %57
  store i32 %or38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.36, %if.then.31, %if.then.26, %if.then.24
  %58 = bitcast i32* %cod1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %code17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast [8 x double]* %VV to i8*
  call void @llvm.lifetime.end(i64 64, i8* %61) #2
  br label %return

return:                                           ; preds = %cleanup, %for.end
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @is_lattice_monotonic_by_dimension(%struct.gs_function_Sd_s* %pfn, double* %T0, double* %T1, i32* %I, double* %S0, double* %S1, i32 %ii, i32 %i0, i32 %k, i32* %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %T0.addr = alloca double*, align 8
  %T1.addr = alloca double*, align 8
  %I.addr = alloca i32*, align 8
  %S0.addr = alloca double*, align 8
  %S1.addr = alloca double*, align 8
  %ii.addr = alloca i32, align 4
  %i0.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %mask.addr = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %bi = alloca i32, align 4
  %ei = alloca i32, align 4
  %m = alloca i32, align 4
  %mm = alloca i32, align 4
  %m1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store double* %T0, double** %T0.addr, align 8, !tbaa !1
  store double* %T1, double** %T1.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  store double* %S0, double** %S0.addr, align 8, !tbaa !1
  store double* %S1, double** %S1.addr, align 8, !tbaa !1
  store i32 %ii, i32* %ii.addr, align 4, !tbaa !19
  store i32 %i0, i32* %i0.addr, align 4, !tbaa !19
  store i32 %k, i32* %k.addr, align 4, !tbaa !19
  store i32* %mask, i32** %mask.addr, align 8, !tbaa !1
  %0 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %2 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %3 = load double*, double** %S0.addr, align 8, !tbaa !1
  %4 = load double*, double** %S1.addr, align 8, !tbaa !1
  %5 = load i32, i32* %i0.addr, align 4, !tbaa !19
  %6 = load i32, i32* %k.addr, align 4, !tbaa !19
  %7 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  %call = call i32 @is_tensor_monotonic_by_dimension(%struct.gs_function_Sd_s* %1, i32* %2, double* %3, double* %4, i32 %5, i32 %6, i32* %7) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %10 = load i32, i32* %i0.addr, align 4, !tbaa !19
  %cmp1 = icmp sgt i32 %9, %10
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %11 = load i32, i32* %ii.addr, align 4, !tbaa !19
  br label %cond.end.5

cond.false:                                       ; preds = %if.else
  %12 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp2 = icmp eq i32 %12, 0
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  %13 = load i32, i32* %i0.addr, align 4, !tbaa !19
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %14 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub = sub nsw i32 %14, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi i32 [ %13, %cond.true.3 ], [ %sub, %cond.false.4 ]
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ %11, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond6, i32* %i1, align 4, !tbaa !19
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom = sext i32 %18 to i64
  %19 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %19, i64 %idxprom
  %20 = load double, double* %arrayidx, align 8, !tbaa !39
  %call7 = call double @floor(double %20) #6
  %conv = fptosi double %call7 to i32
  store i32 %conv, i32* %bi, align 4, !tbaa !19
  %21 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom8 = sext i32 %22 to i64
  %23 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds double, double* %23, i64 %idxprom8
  %24 = load double, double* %arrayidx9, align 8, !tbaa !39
  %call10 = call double @floor(double %24) #6
  %conv11 = fptosi double %call10 to i32
  store i32 %conv11, i32* %ei, align 4, !tbaa !19
  %25 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %mm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %28, i32 0, i32 1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 4
  %29 = load i32, i32* %Order, align 4, !tbaa !25
  %add = add nsw i32 %29, 1
  %mul = mul nsw i32 %add, 3
  %shl = shl i32 1, %mul
  %sub12 = sub nsw i32 %shl, 1
  %and = and i32 1227133513, %sub12
  store i32 %and, i32* %m1, align 4, !tbaa !19
  %30 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom13 = sext i32 %30 to i64
  %31 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds double, double* %31, i64 %idxprom13
  %32 = load double, double* %arrayidx14, align 8, !tbaa !39
  %call15 = call double @floor(double %32) #6
  %33 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom16 = sext i32 %33 to i64
  %34 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds double, double* %34, i64 %idxprom16
  %35 = load double, double* %arrayidx17, align 8, !tbaa !39
  %cmp18 = fcmp oeq double %call15, %35
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %cond.end.5
  %36 = load i32, i32* %ei, align 4, !tbaa !19
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %ei, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then.20, %cond.end.5
  store i32 0, i32* %m, align 4, !tbaa !19
  %37 = load i32, i32* %bi, align 4, !tbaa !19
  store i32 %37, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %38 = load i32, i32* %j, align 4, !tbaa !19
  %39 = load i32, i32* %ei, align 4, !tbaa !19
  %cmp21 = icmp sle i32 %38, %39
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %j, align 4, !tbaa !19
  %41 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom23 = sext i32 %41 to i64
  %42 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i32, i32* %42, i64 %idxprom23
  store i32 %40, i32* %arrayidx24, align 4, !tbaa !19
  %43 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom25 = sext i32 %43 to i64
  %44 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds double, double* %44, i64 %idxprom25
  %45 = load double, double* %arrayidx26, align 8, !tbaa !39
  %46 = load i32, i32* %j, align 4, !tbaa !19
  %conv27 = sitofp i32 %46 to double
  %sub28 = fsub double %45, %conv27
  %cmp29 = fcmp ogt double %sub28, 0.000000e+00
  br i1 %cmp29, label %cond.true.31, label %cond.false.36

cond.true.31:                                     ; preds = %for.body
  %47 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom32 = sext i32 %47 to i64
  %48 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds double, double* %48, i64 %idxprom32
  %49 = load double, double* %arrayidx33, align 8, !tbaa !39
  %50 = load i32, i32* %j, align 4, !tbaa !19
  %conv34 = sitofp i32 %50 to double
  %sub35 = fsub double %49, %conv34
  br label %cond.end.37

cond.false.36:                                    ; preds = %for.body
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.31
  %cond38 = phi double [ %sub35, %cond.true.31 ], [ 0.000000e+00, %cond.false.36 ]
  %51 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom39 = sext i32 %51 to i64
  %52 = load double*, double** %S0.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds double, double* %52, i64 %idxprom39
  store double %cond38, double* %arrayidx40, align 8, !tbaa !39
  %53 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom41 = sext i32 %53 to i64
  %54 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds double, double* %54, i64 %idxprom41
  %55 = load double, double* %arrayidx42, align 8, !tbaa !39
  %56 = load i32, i32* %j, align 4, !tbaa !19
  %conv43 = sitofp i32 %56 to double
  %sub44 = fsub double %55, %conv43
  %cmp45 = fcmp olt double %sub44, 1.000000e+00
  br i1 %cmp45, label %cond.true.47, label %cond.false.52

cond.true.47:                                     ; preds = %cond.end.37
  %57 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom48 = sext i32 %57 to i64
  %58 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds double, double* %58, i64 %idxprom48
  %59 = load double, double* %arrayidx49, align 8, !tbaa !39
  %60 = load i32, i32* %j, align 4, !tbaa !19
  %conv50 = sitofp i32 %60 to double
  %sub51 = fsub double %59, %conv50
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end.37
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.47
  %cond54 = phi double [ %sub51, %cond.true.47 ], [ 1.000000e+00, %cond.false.52 ]
  %61 = load i32, i32* %i1, align 4, !tbaa !19
  %idxprom55 = sext i32 %61 to i64
  %62 = load double*, double** %S1.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds double, double* %62, i64 %idxprom55
  store double %cond54, double* %arrayidx56, align 8, !tbaa !39
  %63 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %64 = load double*, double** %T0.addr, align 8, !tbaa !1
  %65 = load double*, double** %T1.addr, align 8, !tbaa !1
  %66 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %67 = load double*, double** %S0.addr, align 8, !tbaa !1
  %68 = load double*, double** %S1.addr, align 8, !tbaa !1
  %69 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub57 = sub nsw i32 %69, 1
  %70 = load i32, i32* %i0.addr, align 4, !tbaa !19
  %71 = load i32, i32* %k.addr, align 4, !tbaa !19
  %call58 = call i32 @is_lattice_monotonic_by_dimension(%struct.gs_function_Sd_s* %63, double* %64, double* %65, i32* %66, double* %67, double* %68, i32 %sub57, i32 %70, i32 %71, i32* %mm) #5
  store i32 %call58, i32* %code, align 4, !tbaa !19
  %72 = load i32, i32* %code, align 4, !tbaa !19
  %cmp59 = icmp slt i32 %72, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %cond.end.53
  %73 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %cond.end.53
  %74 = load i32, i32* %mm, align 4, !tbaa !19
  %75 = load i32, i32* %m, align 4, !tbaa !19
  %or = or i32 %75, %74
  store i32 %or, i32* %m, align 4, !tbaa !19
  %76 = load i32, i32* %m, align 4, !tbaa !19
  %77 = load i32, i32* %m1, align 4, !tbaa !19
  %cmp63 = icmp eq i32 %76, %77
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  br label %for.end

if.end.66:                                        ; preds = %if.end.62
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %78 = load i32, i32* %j, align 4, !tbaa !19
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %if.then.65, %for.cond
  %79 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp67 = icmp eq i32 %79, 0
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %for.end
  %80 = load i32, i32* %m, align 4, !tbaa !19
  %81 = load i32, i32* %m, align 4, !tbaa !19
  %shr = lshr i32 %81, 1
  %and70 = and i32 %80, %shr
  store i32 %and70, i32* %m, align 4, !tbaa !19
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %for.end
  %82 = load i32, i32* %m, align 4, !tbaa !19
  %83 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 %82, i32* %83, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.71, %if.then.61
  %84 = bitcast i32* %m1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %mm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_tensor_monotonic_by_dimension(%struct.gs_function_Sd_s* %pfn, i32* %I, double* %T0, double* %T1, i32 %i0, i32 %k, i32* %mask) #3 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %I.addr = alloca i32*, align 8
  %T0.addr = alloca double*, align 8
  %T1.addr = alloca double*, align 8
  %i0.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %mask.addr = alloca i32*, align 8
  %pole = alloca [64 x double], align 16
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %ii = alloca i32, align 4
  %TT0 = alloca [3 x double], align 16
  %TT1 = alloca [3 x double], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  store double* %T0, double** %T0.addr, align 8, !tbaa !1
  store double* %T1, double** %T1.addr, align 8, !tbaa !1
  store i32 %i0, i32* %i0.addr, align 4, !tbaa !19
  store i32 %k, i32* %k.addr, align 4, !tbaa !19
  store i32* %mask, i32** %mask.addr, align 8, !tbaa !1
  %0 = bitcast [64 x double]* %pole to i8*
  call void @llvm.lifetime.start(i64 512, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %4, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %5 = load i32, i32* %m, align 4, !tbaa !34
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %ii, align 4, !tbaa !19
  %6 = bitcast [3 x double]* %TT0 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #2
  %7 = bitcast [3 x double]* %TT1 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #2
  %8 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 0, i32* %8, align 4, !tbaa !19
  %9 = load i32, i32* %ii, align 4, !tbaa !19
  %cmp = icmp sge i32 %9, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %11 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %12 = load double*, double** %T0.addr, align 8, !tbaa !1
  %13 = load double*, double** %T1.addr, align 8, !tbaa !1
  %14 = load i32, i32* %k.addr, align 4, !tbaa !19
  %15 = load i32, i32* %ii, align 4, !tbaa !19
  %arraydecay = getelementptr inbounds [64 x double], [64 x double]* %pole, i32 0, i32 0
  %call = call i32 @copy_poles(%struct.gs_function_Sd_s* %10, i32* %11, double* %12, double* %13, i32 %14, i32 %15, double* %arraydecay, i32 0, i32 16) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %16 = load i32, i32* %code, align 4, !tbaa !19
  %cmp1 = icmp slt i32 %16, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %18 = load i32, i32* %ii, align 4, !tbaa !19
  store i32 %18, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %19 = load i32, i32* %i, align 4, !tbaa !19
  %cmp4 = icmp sge i32 %19, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %TT0, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !39
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom5 = sext i32 %21 to i64
  %22 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds double, double* %22, i64 %idxprom5
  %23 = load double, double* %arrayidx6, align 8, !tbaa !39
  %24 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom7 = sext i32 %24 to i64
  %25 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds double, double* %25, i64 %idxprom7
  %26 = load double, double* %arrayidx8, align 8, !tbaa !39
  %cmp9 = fcmp une double %23, %26
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom11 = sext i32 %27 to i64
  %28 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %28, i64 %idxprom11
  %29 = load double, double* %arrayidx12, align 8, !tbaa !39
  %cmp13 = fcmp une double %29, 0.000000e+00
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.10
  %30 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom14 = sext i32 %30 to i64
  %31 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds double, double* %31, i64 %idxprom14
  %32 = load double, double* %arrayidx15, align 8, !tbaa !39
  %cmp16 = fcmp une double %32, 1.000000e+00
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %lor.lhs.false, %if.then.10
  %33 = load double*, double** %T0.addr, align 8, !tbaa !1
  %34 = load double*, double** %T1.addr, align 8, !tbaa !1
  %35 = load i32, i32* %ii, align 4, !tbaa !19
  %36 = load i32, i32* %i, align 4, !tbaa !19
  %arraydecay18 = getelementptr inbounds [64 x double], [64 x double]* %pole, i32 0, i32 0
  %37 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params19 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %37, i32 0, i32 1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params19, i32 0, i32 4
  %38 = load i32, i32* %Order, align 4, !tbaa !25
  call void @clamp_poles(double* %33, double* %34, i32 %35, i32 %36, double* %arraydecay18, i32 0, i32 16, i32 -1, i32 %38) #5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %lor.lhs.false
  %39 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom21 = sext i32 %39 to i64
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %TT1, i32 0, i64 %idxprom21
  store double 1.000000e+00, double* %arrayidx22, align 8, !tbaa !39
  br label %if.end.25

if.else:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom23 = sext i32 %40 to i64
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %TT1, i32 0, i64 %idxprom23
  store double 0.000000e+00, double* %arrayidx24, align 8, !tbaa !39
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %41 = load i32, i32* %i, align 4, !tbaa !19
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay26 = getelementptr inbounds [3 x double], [3 x double]* %TT0, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [3 x double], [3 x double]* %TT1, i32 0, i32 0
  %42 = load i32, i32* %ii, align 4, !tbaa !19
  %43 = load i32, i32* %i0.addr, align 4, !tbaa !19
  %arraydecay28 = getelementptr inbounds [64 x double], [64 x double]* %pole, i32 0, i32 0
  %44 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params29 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %44, i32 0, i32 1
  %Order30 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params29, i32 0, i32 4
  %45 = load i32, i32* %Order30, align 4, !tbaa !25
  %call31 = call i32 @tensor_dimension_monotonity(double* %arraydecay26, double* %arraydecay27, i32 %42, i32 %43, double* %arraydecay28, i32 0, i32 16, i32 -1, i32 %45) #5
  %46 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 %call31, i32* %46, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.2, %if.then
  %47 = bitcast [3 x double]* %TT1 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %47) #2
  %48 = bitcast [3 x double]* %TT0 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %48) #2
  %49 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast [64 x double]* %pole to i8*
  call void @llvm.lifetime.end(i64 512, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_poles(%struct.gs_function_Sd_s* %pfn, i32* %I, double* %T0, double* %T1, i32 %a_offset, i32 %ii, double* %pole, i32 %p_offset, i32 %pole_step) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_Sd_s*, align 8
  %I.addr = alloca i32*, align 8
  %T0.addr = alloca double*, align 8
  %T1.addr = alloca double*, align 8
  %a_offset.addr = alloca i32, align 4
  %ii.addr = alloca i32, align 4
  %pole.addr = alloca double*, align 8
  %p_offset.addr = alloca i32, align 4
  %pole_step.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ei = alloca i32, align 4
  %sa = alloca i32, align 4
  %code = alloca i32, align 4
  %order = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_Sd_s* %pfn, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  store i32* %I, i32** %I.addr, align 8, !tbaa !1
  store double* %T0, double** %T0.addr, align 8, !tbaa !1
  store double* %T1, double** %T1.addr, align 8, !tbaa !1
  store i32 %a_offset, i32* %a_offset.addr, align 4, !tbaa !19
  store i32 %ii, i32* %ii.addr, align 4, !tbaa !19
  store double* %pole, double** %pole.addr, align 8, !tbaa !1
  store i32 %p_offset, i32* %p_offset.addr, align 4, !tbaa !19
  store i32 %pole_step, i32* %pole_step.addr, align 4, !tbaa !19
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %sa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %order to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %5, i32 0, i32 1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 4
  %6 = load i32, i32* %Order, align 4, !tbaa !25
  store i32 %6, i32* %order, align 4, !tbaa !19
  %7 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %cmp = icmp sle i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom = sext i32 %8 to i64
  %9 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %9, i64 %idxprom
  %10 = load double, double* %arrayidx, align 8, !tbaa !39
  %11 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom1 = sext i32 %11 to i64
  %12 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds double, double* %12, i64 %idxprom1
  %13 = load double, double* %arrayidx2, align 8, !tbaa !39
  %cmp3 = fcmp oeq double %10, %13
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %14 = load i32, i32* %order, align 4, !tbaa !19
  %add = add nsw i32 %14, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %ei, align 4, !tbaa !19
  %15 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %16, i32 0, i32 1
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params5, i32 0, i32 11
  %17 = load i32*, i32** %array_step, align 8, !tbaa !30
  %arrayidx6 = getelementptr inbounds i32, i32* %17, i64 %idxprom4
  %18 = load i32, i32* %arrayidx6, align 4, !tbaa !19
  store i32 %18, i32* %sa, align 4, !tbaa !19
  %19 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp7 = icmp eq i32 %19, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %cond.end
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %20 = load i32, i32* %i, align 4, !tbaa !19
  %21 = load i32, i32* %ei, align 4, !tbaa !19
  %cmp9 = icmp slt i32 %20, %21
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %22, i32 0, i32 1
  %pole11 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params10, i32 0, i32 10
  %23 = load double*, double** %pole11, align 8, !tbaa !29
  %24 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds double, double* %23, i64 %idx.ext
  %25 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom12 = sext i32 %25 to i64
  %26 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %26, i64 %idxprom12
  %27 = load i32, i32* %arrayidx13, align 4, !tbaa !19
  %28 = load i32, i32* %sa, align 4, !tbaa !19
  %mul = mul nsw i32 %27, %28
  %idx.ext14 = sext i32 %mul to i64
  %add.ptr15 = getelementptr inbounds double, double* %add.ptr, i64 %idx.ext14
  %29 = load i32, i32* %i, align 4, !tbaa !19
  %30 = load i32, i32* %sa, align 4, !tbaa !19
  %31 = load i32, i32* %order, align 4, !tbaa !19
  %div = sdiv i32 %30, %31
  %mul16 = mul nsw i32 %29, %div
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds double, double* %add.ptr15, i64 %idx.ext17
  %32 = load double, double* %add.ptr18, align 8, !tbaa !39
  %33 = load double*, double** %pole.addr, align 8, !tbaa !1
  %34 = load i32, i32* %p_offset.addr, align 4, !tbaa !19
  %idx.ext19 = sext i32 %34 to i64
  %add.ptr20 = getelementptr inbounds double, double* %33, i64 %idx.ext19
  %35 = load i32, i32* %i, align 4, !tbaa !19
  %36 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul21 = mul nsw i32 %35, %36
  %idx.ext22 = sext i32 %mul21 to i64
  %add.ptr23 = getelementptr inbounds double, double* %add.ptr20, i64 %idx.ext22
  store double %32, double* %add.ptr23, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.else:                                          ; preds = %cond.end
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.40, %if.else
  %38 = load i32, i32* %i, align 4, !tbaa !19
  %39 = load i32, i32* %ei, align 4, !tbaa !19
  %cmp25 = icmp slt i32 %38, %39
  br i1 %cmp25, label %for.body.26, label %for.end.42

for.body.26:                                      ; preds = %for.cond.24
  %40 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn.addr, align 8, !tbaa !1
  %41 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %42 = load double*, double** %T0.addr, align 8, !tbaa !1
  %43 = load double*, double** %T1.addr, align 8, !tbaa !1
  %44 = load i32, i32* %a_offset.addr, align 4, !tbaa !19
  %45 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom27 = sext i32 %45 to i64
  %46 = load i32*, i32** %I.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i32, i32* %46, i64 %idxprom27
  %47 = load i32, i32* %arrayidx28, align 4, !tbaa !19
  %48 = load i32, i32* %sa, align 4, !tbaa !19
  %mul29 = mul nsw i32 %47, %48
  %add30 = add nsw i32 %44, %mul29
  %49 = load i32, i32* %i, align 4, !tbaa !19
  %50 = load i32, i32* %sa, align 4, !tbaa !19
  %51 = load i32, i32* %order, align 4, !tbaa !19
  %div31 = sdiv i32 %50, %51
  %mul32 = mul nsw i32 %49, %div31
  %add33 = add nsw i32 %add30, %mul32
  %52 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub = sub nsw i32 %52, 1
  %53 = load double*, double** %pole.addr, align 8, !tbaa !1
  %54 = load i32, i32* %p_offset.addr, align 4, !tbaa !19
  %55 = load i32, i32* %i, align 4, !tbaa !19
  %56 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul34 = mul nsw i32 %55, %56
  %add35 = add nsw i32 %54, %mul34
  %57 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %div36 = sdiv i32 %57, 4
  %call = call i32 @copy_poles(%struct.gs_function_Sd_s* %40, i32* %41, double* %42, double* %43, i32 %add33, i32 %sub, double* %53, i32 %add35, i32 %div36) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %58 = load i32, i32* %code, align 4, !tbaa !19
  %cmp37 = icmp slt i32 %58, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.body.26
  %59 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %for.body.26
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %60 = load i32, i32* %i, align 4, !tbaa !19
  %inc41 = add nsw i32 %60, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !19
  br label %for.cond.24

for.end.42:                                       ; preds = %for.cond.24
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.38, %if.then
  %61 = bitcast i32* %order to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %sa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal void @clamp_poles(double* %T0, double* %T1, i32 %ii, i32 %i, double* %pole, i32 %p_offset, i32 %pole_step, i32 %pole_step_i, i32 %order) #0 {
entry:
  %T0.addr = alloca double*, align 8
  %T1.addr = alloca double*, align 8
  %ii.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %pole.addr = alloca double*, align 8
  %p_offset.addr = alloca i32, align 4
  %pole_step.addr = alloca i32, align 4
  %pole_step_i.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %ei = alloca i32, align 4
  store double* %T0, double** %T0.addr, align 8, !tbaa !1
  store double* %T1, double** %T1.addr, align 8, !tbaa !1
  store i32 %ii, i32* %ii.addr, align 4, !tbaa !19
  store i32 %i, i32* %i.addr, align 4, !tbaa !19
  store double* %pole, double** %pole.addr, align 8, !tbaa !1
  store i32 %p_offset, i32* %p_offset.addr, align 4, !tbaa !19
  store i32 %pole_step, i32* %pole_step.addr, align 4, !tbaa !19
  store i32 %pole_step_i, i32* %pole_step_i.addr, align 4, !tbaa !19
  store i32 %order, i32* %order.addr, align 4, !tbaa !19
  %0 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %order.addr, align 4, !tbaa !19
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load double*, double** %pole.addr, align 8, !tbaa !1
  %3 = load i32, i32* %p_offset.addr, align 4, !tbaa !19
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds double, double* %2, i64 %idx.ext
  %4 = load i32, i32* %pole_step_i.addr, align 4, !tbaa !19
  %5 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom = sext i32 %5 to i64
  %6 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx, align 8, !tbaa !39
  %8 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom3 = sext i32 %8 to i64
  %9 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %9, i64 %idxprom3
  %10 = load double, double* %arrayidx4, align 8, !tbaa !39
  call void @subcurve(double* %add.ptr, i32 %4, double %7, double %10) #5
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load double*, double** %pole.addr, align 8, !tbaa !1
  %12 = load i32, i32* %p_offset.addr, align 4, !tbaa !19
  %idx.ext5 = sext i32 %12 to i64
  %add.ptr6 = getelementptr inbounds double, double* %11, i64 %idx.ext5
  %13 = load i32, i32* %pole_step_i.addr, align 4, !tbaa !19
  %14 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom7 = sext i32 %14 to i64
  %15 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds double, double* %15, i64 %idxprom7
  %16 = load double, double* %arrayidx8, align 8, !tbaa !39
  %17 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom9 = sext i32 %17 to i64
  %18 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 %idxprom9
  %19 = load double, double* %arrayidx10, align 8, !tbaa !39
  call void @subline(double* %add.ptr6, i32 %13, double %16, double %19) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.25

if.else.11:                                       ; preds = %entry
  %20 = load i32, i32* %i.addr, align 4, !tbaa !19
  %21 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp12 = icmp eq i32 %20, %21
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.11
  %22 = load double*, double** %T0.addr, align 8, !tbaa !1
  %23 = load double*, double** %T1.addr, align 8, !tbaa !1
  %24 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub = sub nsw i32 %24, 1
  %25 = load i32, i32* %i.addr, align 4, !tbaa !19
  %26 = load double*, double** %pole.addr, align 8, !tbaa !1
  %27 = load i32, i32* %p_offset.addr, align 4, !tbaa !19
  %28 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %div = sdiv i32 %28, 4
  %29 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %30 = load i32, i32* %order.addr, align 4, !tbaa !19
  call void @clamp_poles(double* %22, double* %23, i32 %sub, i32 %25, double* %26, i32 %27, i32 %div, i32 %29, i32 %30) #5
  br label %if.end.24

if.else.14:                                       ; preds = %if.else.11
  %31 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  %33 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom15 = sext i32 %33 to i64
  %34 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds double, double* %34, i64 %idxprom15
  %35 = load double, double* %arrayidx16, align 8, !tbaa !39
  %36 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom17 = sext i32 %36 to i64
  %37 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds double, double* %37, i64 %idxprom17
  %38 = load double, double* %arrayidx18, align 8, !tbaa !39
  %cmp19 = fcmp oeq double %35, %38
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.14
  br label %cond.end

cond.false:                                       ; preds = %if.else.14
  %39 = load i32, i32* %order.addr, align 4, !tbaa !19
  %add = add nsw i32 %39, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %ei, align 4, !tbaa !19
  store i32 0, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %40 = load i32, i32* %j, align 4, !tbaa !19
  %41 = load i32, i32* %ei, align 4, !tbaa !19
  %cmp20 = icmp slt i32 %40, %41
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load double*, double** %T0.addr, align 8, !tbaa !1
  %43 = load double*, double** %T1.addr, align 8, !tbaa !1
  %44 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub21 = sub nsw i32 %44, 1
  %45 = load i32, i32* %i.addr, align 4, !tbaa !19
  %46 = load double*, double** %pole.addr, align 8, !tbaa !1
  %47 = load i32, i32* %p_offset.addr, align 4, !tbaa !19
  %48 = load i32, i32* %j, align 4, !tbaa !19
  %49 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul = mul nsw i32 %48, %49
  %add22 = add nsw i32 %47, %mul
  %50 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %div23 = sdiv i32 %50, 4
  %51 = load i32, i32* %pole_step_i.addr, align 4, !tbaa !19
  %52 = load i32, i32* %order.addr, align 4, !tbaa !19
  call void @clamp_poles(double* %42, double* %43, i32 %sub21, i32 %45, double* %46, i32 %add22, i32 %div23, i32 %51, i32 %52) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %j, align 4, !tbaa !19
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  br label %if.end.24

if.end.24:                                        ; preds = %for.end, %if.then.13
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @tensor_dimension_monotonity(double* %T0, double* %T1, i32 %ii, i32 %i0, double* %pole, i32 %p_offset, i32 %pole_step, i32 %pole_step_i, i32 %order) #0 {
entry:
  %retval = alloca i32, align 4
  %T0.addr = alloca double*, align 8
  %T1.addr = alloca double*, align 8
  %ii.addr = alloca i32, align 4
  %i0.addr = alloca i32, align 4
  %pole.addr = alloca double*, align 8
  %p_offset.addr = alloca i32, align 4
  %pole_step.addr = alloca i32, align 4
  %pole_step_i.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %ei = alloca i32, align 4
  %m = alloca i32, align 4
  %mm = alloca i32, align 4
  store double* %T0, double** %T0.addr, align 8, !tbaa !1
  store double* %T1, double** %T1.addr, align 8, !tbaa !1
  store i32 %ii, i32* %ii.addr, align 4, !tbaa !19
  store i32 %i0, i32* %i0.addr, align 4, !tbaa !19
  store double* %pole, double** %pole.addr, align 8, !tbaa !1
  store i32 %p_offset, i32* %p_offset.addr, align 4, !tbaa !19
  store i32 %pole_step, i32* %pole_step.addr, align 4, !tbaa !19
  store i32 %pole_step_i, i32* %pole_step_i.addr, align 4, !tbaa !19
  store i32 %order, i32* %order.addr, align 4, !tbaa !19
  %0 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.6

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %order.addr, align 4, !tbaa !19
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load double*, double** %pole.addr, align 8, !tbaa !1
  %3 = load i32, i32* %p_offset.addr, align 4, !tbaa !19
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds double, double* %2, i64 %idx.ext
  %4 = load i32, i32* %pole_step_i.addr, align 4, !tbaa !19
  %call = call i32 @curve_monotonity(double* %add.ptr, i32 %4) #5
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %5 = load double*, double** %pole.addr, align 8, !tbaa !1
  %6 = load i32, i32* %p_offset.addr, align 4, !tbaa !19
  %idx.ext3 = sext i32 %6 to i64
  %add.ptr4 = getelementptr inbounds double, double* %5, i64 %idx.ext3
  %7 = load i32, i32* %pole_step_i.addr, align 4, !tbaa !19
  %call5 = call i32 @line_monotonity(double* %add.ptr4, i32 %7) #5
  store i32 %call5, i32* %retval
  br label %return

if.else.6:                                        ; preds = %entry
  %8 = load i32, i32* %i0.addr, align 4, !tbaa !19
  %9 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %cmp7 = icmp eq i32 %8, %9
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else.6
  %10 = load double*, double** %T0.addr, align 8, !tbaa !1
  %11 = load double*, double** %T1.addr, align 8, !tbaa !1
  %12 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub = sub nsw i32 %12, 1
  %13 = load i32, i32* %i0.addr, align 4, !tbaa !19
  %14 = load double*, double** %pole.addr, align 8, !tbaa !1
  %15 = load i32, i32* %p_offset.addr, align 4, !tbaa !19
  %16 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %div = sdiv i32 %16, 4
  %17 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %18 = load i32, i32* %order.addr, align 4, !tbaa !19
  %call9 = call i32 @tensor_dimension_monotonity(double* %10, double* %11, i32 %sub, i32 %13, double* %14, i32 %15, i32 %div, i32 %17, i32 %18) #5
  store i32 %call9, i32* %retval
  br label %return

if.else.10:                                       ; preds = %if.else.6
  %19 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom = sext i32 %21 to i64
  %22 = load double*, double** %T0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %22, i64 %idxprom
  %23 = load double, double* %arrayidx, align 8, !tbaa !39
  %24 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %idxprom11 = sext i32 %24 to i64
  %25 = load double*, double** %T1.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %25, i64 %idxprom11
  %26 = load double, double* %arrayidx12, align 8, !tbaa !39
  %cmp13 = fcmp oeq double %23, %26
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.10
  br label %cond.end

cond.false:                                       ; preds = %if.else.10
  %27 = load i32, i32* %order.addr, align 4, !tbaa !19
  %add = add nsw i32 %27, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %ei, align 4, !tbaa !19
  %28 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  store i32 0, i32* %m, align 4, !tbaa !19
  %29 = bitcast i32* %mm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  store i32 0, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %30 = load i32, i32* %j, align 4, !tbaa !19
  %31 = load i32, i32* %ei, align 4, !tbaa !19
  %cmp14 = icmp slt i32 %30, %31
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load double*, double** %T0.addr, align 8, !tbaa !1
  %33 = load double*, double** %T1.addr, align 8, !tbaa !1
  %34 = load i32, i32* %ii.addr, align 4, !tbaa !19
  %sub15 = sub nsw i32 %34, 1
  %35 = load i32, i32* %i0.addr, align 4, !tbaa !19
  %36 = load double*, double** %pole.addr, align 8, !tbaa !1
  %37 = load i32, i32* %p_offset.addr, align 4, !tbaa !19
  %38 = load i32, i32* %j, align 4, !tbaa !19
  %39 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul = mul nsw i32 %38, %39
  %add16 = add nsw i32 %37, %mul
  %40 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %div17 = sdiv i32 %40, 4
  %41 = load i32, i32* %pole_step_i.addr, align 4, !tbaa !19
  %42 = load i32, i32* %order.addr, align 4, !tbaa !19
  %call18 = call i32 @tensor_dimension_monotonity(double* %32, double* %33, i32 %sub15, i32 %35, double* %36, i32 %add16, i32 %div17, i32 %41, i32 %42) #5
  store i32 %call18, i32* %mm, align 4, !tbaa !19
  %43 = load i32, i32* %mm, align 4, !tbaa !19
  %44 = load i32, i32* %j, align 4, !tbaa !19
  %mul19 = mul nsw i32 %44, 3
  %shl = shl i32 %43, %mul19
  %45 = load i32, i32* %m, align 4, !tbaa !19
  %or = or i32 %45, %shl
  store i32 %or, i32* %m, align 4, !tbaa !19
  %46 = load i32, i32* %mm, align 4, !tbaa !19
  %cmp20 = icmp eq i32 %46, 3
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %47 = load i32, i32* %j, align 4, !tbaa !19
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %j, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %for.cond
  %48 = load i32, i32* %m, align 4, !tbaa !19
  store i32 %48, i32* %retval
  %49 = bitcast i32* %mm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  br label %return

return:                                           ; preds = %for.end, %if.then.8, %if.else, %if.then.2
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @subcurve(double* %pole, i32 %pole_step, double %t0, double %t1) #3 {
entry:
  %pole.addr = alloca double*, align 8
  %pole_step.addr = alloca i32, align 4
  %t0.addr = alloca double, align 8
  %t1.addr = alloca double, align 8
  %q0 = alloca double, align 8
  %q1 = alloca double, align 8
  %q2 = alloca double, align 8
  %q3 = alloca double, align 8
  %t01 = alloca double, align 8
  %t11 = alloca double, align 8
  %small = alloca double, align 8
  store double* %pole, double** %pole.addr, align 8, !tbaa !1
  store i32 %pole_step, i32* %pole_step.addr, align 4, !tbaa !19
  store double %t0, double* %t0.addr, align 8, !tbaa !39
  store double %t1, double* %t1.addr, align 8, !tbaa !39
  %0 = bitcast double* %q0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul = mul nsw i32 %1, 0
  %idxprom = sext i32 %mul to i64
  %2 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8, !tbaa !39
  store double %3, double* %q0, align 8, !tbaa !39
  %4 = bitcast double* %q1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul1 = mul nsw i32 %5, 1
  %idxprom2 = sext i32 %mul1 to i64
  %6 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 %idxprom2
  %7 = load double, double* %arrayidx3, align 8, !tbaa !39
  store double %7, double* %q1, align 8, !tbaa !39
  %8 = bitcast double* %q2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul4 = mul nsw i32 %9, 2
  %idxprom5 = sext i32 %mul4 to i64
  %10 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 %idxprom5
  %11 = load double, double* %arrayidx6, align 8, !tbaa !39
  store double %11, double* %q2, align 8, !tbaa !39
  %12 = bitcast double* %q3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul7 = mul nsw i32 %13, 3
  %idxprom8 = sext i32 %mul7 to i64
  %14 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds double, double* %14, i64 %idxprom8
  %15 = load double, double* %arrayidx9, align 8, !tbaa !39
  store double %15, double* %q3, align 8, !tbaa !39
  %16 = bitcast double* %t01 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load double, double* %t0.addr, align 8, !tbaa !39
  %sub = fsub double %17, 1.000000e+00
  store double %sub, double* %t01, align 8, !tbaa !39
  %18 = bitcast double* %t11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load double, double* %t1.addr, align 8, !tbaa !39
  %sub10 = fsub double %19, 1.000000e+00
  store double %sub10, double* %t11, align 8, !tbaa !39
  %20 = bitcast double* %small to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  store double 1.000000e-13, double* %small, align 8, !tbaa !39
  %21 = load double, double* %t0.addr, align 8, !tbaa !39
  %22 = load double, double* %t0.addr, align 8, !tbaa !39
  %23 = load double, double* %q3, align 8, !tbaa !39
  %24 = load double, double* %t0.addr, align 8, !tbaa !39
  %mul11 = fmul double %23, %24
  %25 = load double, double* %q2, align 8, !tbaa !39
  %mul12 = fmul double 3.000000e+00, %25
  %26 = load double, double* %t01, align 8, !tbaa !39
  %mul13 = fmul double %mul12, %26
  %sub14 = fsub double %mul11, %mul13
  %mul15 = fmul double %22, %sub14
  %27 = load double, double* %q1, align 8, !tbaa !39
  %mul16 = fmul double 3.000000e+00, %27
  %28 = load double, double* %t01, align 8, !tbaa !39
  %mul17 = fmul double %mul16, %28
  %29 = load double, double* %t01, align 8, !tbaa !39
  %mul18 = fmul double %mul17, %29
  %add = fadd double %mul15, %mul18
  %mul19 = fmul double %21, %add
  %30 = load double, double* %q0, align 8, !tbaa !39
  %31 = load double, double* %t01, align 8, !tbaa !39
  %mul20 = fmul double %30, %31
  %32 = load double, double* %t01, align 8, !tbaa !39
  %mul21 = fmul double %mul20, %32
  %33 = load double, double* %t01, align 8, !tbaa !39
  %mul22 = fmul double %mul21, %33
  %sub23 = fsub double %mul19, %mul22
  %34 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul24 = mul nsw i32 %34, 0
  %idxprom25 = sext i32 %mul24 to i64
  %35 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds double, double* %35, i64 %idxprom25
  store double %sub23, double* %arrayidx26, align 8, !tbaa !39
  %36 = load double, double* %q1, align 8, !tbaa !39
  %37 = load double, double* %t01, align 8, !tbaa !39
  %mul27 = fmul double %36, %37
  %38 = load double, double* %t0.addr, align 8, !tbaa !39
  %mul28 = fmul double -2.000000e+00, %38
  %39 = load double, double* %t1.addr, align 8, !tbaa !39
  %sub29 = fsub double %mul28, %39
  %40 = load double, double* %t0.addr, align 8, !tbaa !39
  %mul30 = fmul double 3.000000e+00, %40
  %41 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul31 = fmul double %mul30, %41
  %add32 = fadd double %sub29, %mul31
  %mul33 = fmul double %mul27, %add32
  %42 = load double, double* %t0.addr, align 8, !tbaa !39
  %43 = load double, double* %q2, align 8, !tbaa !39
  %44 = load double, double* %t0.addr, align 8, !tbaa !39
  %mul34 = fmul double %43, %44
  %45 = load double, double* %q2, align 8, !tbaa !39
  %mul35 = fmul double 2.000000e+00, %45
  %46 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul36 = fmul double %mul35, %46
  %add37 = fadd double %mul34, %mul36
  %47 = load double, double* %q2, align 8, !tbaa !39
  %mul38 = fmul double 3.000000e+00, %47
  %48 = load double, double* %t0.addr, align 8, !tbaa !39
  %mul39 = fmul double %mul38, %48
  %49 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul40 = fmul double %mul39, %49
  %sub41 = fsub double %add37, %mul40
  %50 = load double, double* %q3, align 8, !tbaa !39
  %51 = load double, double* %t0.addr, align 8, !tbaa !39
  %mul42 = fmul double %50, %51
  %52 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul43 = fmul double %mul42, %52
  %add44 = fadd double %sub41, %mul43
  %mul45 = fmul double %42, %add44
  %add46 = fadd double %mul33, %mul45
  %53 = load double, double* %q0, align 8, !tbaa !39
  %54 = load double, double* %t11, align 8, !tbaa !39
  %mul47 = fmul double %53, %54
  %55 = load double, double* %t01, align 8, !tbaa !39
  %mul48 = fmul double %mul47, %55
  %56 = load double, double* %t01, align 8, !tbaa !39
  %mul49 = fmul double %mul48, %56
  %sub50 = fsub double %add46, %mul49
  %57 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul51 = mul nsw i32 %57, 1
  %idxprom52 = sext i32 %mul51 to i64
  %58 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds double, double* %58, i64 %idxprom52
  store double %sub50, double* %arrayidx53, align 8, !tbaa !39
  %59 = load double, double* %t1.addr, align 8, !tbaa !39
  %60 = load double, double* %q2, align 8, !tbaa !39
  %mul54 = fmul double 2.000000e+00, %60
  %61 = load double, double* %t0.addr, align 8, !tbaa !39
  %mul55 = fmul double %mul54, %61
  %62 = load double, double* %q2, align 8, !tbaa !39
  %63 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul56 = fmul double %62, %63
  %add57 = fadd double %mul55, %mul56
  %64 = load double, double* %q2, align 8, !tbaa !39
  %mul58 = fmul double 3.000000e+00, %64
  %65 = load double, double* %t0.addr, align 8, !tbaa !39
  %mul59 = fmul double %mul58, %65
  %66 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul60 = fmul double %mul59, %66
  %sub61 = fsub double %add57, %mul60
  %67 = load double, double* %q3, align 8, !tbaa !39
  %68 = load double, double* %t0.addr, align 8, !tbaa !39
  %mul62 = fmul double %67, %68
  %69 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul63 = fmul double %mul62, %69
  %add64 = fadd double %sub61, %mul63
  %mul65 = fmul double %59, %add64
  %70 = load double, double* %q1, align 8, !tbaa !39
  %71 = load double, double* %t0.addr, align 8, !tbaa !39
  %sub66 = fsub double -0.000000e+00, %71
  %72 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul67 = fmul double 2.000000e+00, %72
  %sub68 = fsub double %sub66, %mul67
  %73 = load double, double* %t0.addr, align 8, !tbaa !39
  %mul69 = fmul double 3.000000e+00, %73
  %74 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul70 = fmul double %mul69, %74
  %add71 = fadd double %sub68, %mul70
  %mul72 = fmul double %70, %add71
  %75 = load double, double* %t11, align 8, !tbaa !39
  %mul73 = fmul double %mul72, %75
  %add74 = fadd double %mul65, %mul73
  %76 = load double, double* %q0, align 8, !tbaa !39
  %77 = load double, double* %t01, align 8, !tbaa !39
  %mul75 = fmul double %76, %77
  %78 = load double, double* %t11, align 8, !tbaa !39
  %mul76 = fmul double %mul75, %78
  %79 = load double, double* %t11, align 8, !tbaa !39
  %mul77 = fmul double %mul76, %79
  %sub78 = fsub double %add74, %mul77
  %80 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul79 = mul nsw i32 %80, 2
  %idxprom80 = sext i32 %mul79 to i64
  %81 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds double, double* %81, i64 %idxprom80
  store double %sub78, double* %arrayidx81, align 8, !tbaa !39
  %82 = load double, double* %t1.addr, align 8, !tbaa !39
  %83 = load double, double* %t1.addr, align 8, !tbaa !39
  %84 = load double, double* %q2, align 8, !tbaa !39
  %mul82 = fmul double 3.000000e+00, %84
  %85 = load double, double* %q2, align 8, !tbaa !39
  %mul83 = fmul double 3.000000e+00, %85
  %86 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul84 = fmul double %mul83, %86
  %sub85 = fsub double %mul82, %mul84
  %87 = load double, double* %q3, align 8, !tbaa !39
  %88 = load double, double* %t1.addr, align 8, !tbaa !39
  %mul86 = fmul double %87, %88
  %add87 = fadd double %sub85, %mul86
  %mul88 = fmul double %83, %add87
  %89 = load double, double* %q1, align 8, !tbaa !39
  %mul89 = fmul double 3.000000e+00, %89
  %90 = load double, double* %t11, align 8, !tbaa !39
  %mul90 = fmul double %mul89, %90
  %91 = load double, double* %t11, align 8, !tbaa !39
  %mul91 = fmul double %mul90, %91
  %add92 = fadd double %mul88, %mul91
  %mul93 = fmul double %82, %add92
  %92 = load double, double* %q0, align 8, !tbaa !39
  %93 = load double, double* %t11, align 8, !tbaa !39
  %mul94 = fmul double %92, %93
  %94 = load double, double* %t11, align 8, !tbaa !39
  %mul95 = fmul double %mul94, %94
  %95 = load double, double* %t11, align 8, !tbaa !39
  %mul96 = fmul double %mul95, %95
  %sub97 = fsub double %mul93, %mul96
  %96 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul98 = mul nsw i32 %96, 3
  %idxprom99 = sext i32 %mul98 to i64
  %97 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds double, double* %97, i64 %idxprom99
  store double %sub97, double* %arrayidx100, align 8, !tbaa !39
  %98 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul101 = mul nsw i32 %98, 1
  %idxprom102 = sext i32 %mul101 to i64
  %99 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds double, double* %99, i64 %idxprom102
  %100 = load double, double* %arrayidx103, align 8, !tbaa !39
  %101 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul104 = mul nsw i32 %101, 0
  %idxprom105 = sext i32 %mul104 to i64
  %102 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds double, double* %102, i64 %idxprom105
  %103 = load double, double* %arrayidx106, align 8, !tbaa !39
  %sub107 = fsub double %100, %103
  %cmp = fcmp olt double %sub107, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %104 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul108 = mul nsw i32 %104, 1
  %idxprom109 = sext i32 %mul108 to i64
  %105 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds double, double* %105, i64 %idxprom109
  %106 = load double, double* %arrayidx110, align 8, !tbaa !39
  %107 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul111 = mul nsw i32 %107, 0
  %idxprom112 = sext i32 %mul111 to i64
  %108 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds double, double* %108, i64 %idxprom112
  %109 = load double, double* %arrayidx113, align 8, !tbaa !39
  %sub114 = fsub double %106, %109
  %sub115 = fsub double -0.000000e+00, %sub114
  br label %cond.end

cond.false:                                       ; preds = %entry
  %110 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul116 = mul nsw i32 %110, 1
  %idxprom117 = sext i32 %mul116 to i64
  %111 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds double, double* %111, i64 %idxprom117
  %112 = load double, double* %arrayidx118, align 8, !tbaa !39
  %113 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul119 = mul nsw i32 %113, 0
  %idxprom120 = sext i32 %mul119 to i64
  %114 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds double, double* %114, i64 %idxprom120
  %115 = load double, double* %arrayidx121, align 8, !tbaa !39
  %sub122 = fsub double %112, %115
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub115, %cond.true ], [ %sub122, %cond.false ]
  %116 = load double, double* %small, align 8, !tbaa !39
  %cmp123 = fcmp olt double %cond, %116
  br i1 %cmp123, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %117 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul124 = mul nsw i32 %117, 0
  %idxprom125 = sext i32 %mul124 to i64
  %118 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds double, double* %118, i64 %idxprom125
  %119 = load double, double* %arrayidx126, align 8, !tbaa !39
  %120 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul127 = mul nsw i32 %120, 1
  %idxprom128 = sext i32 %mul127 to i64
  %121 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds double, double* %121, i64 %idxprom128
  store double %119, double* %arrayidx129, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %122 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul130 = mul nsw i32 %122, 2
  %idxprom131 = sext i32 %mul130 to i64
  %123 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds double, double* %123, i64 %idxprom131
  %124 = load double, double* %arrayidx132, align 8, !tbaa !39
  %125 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul133 = mul nsw i32 %125, 3
  %idxprom134 = sext i32 %mul133 to i64
  %126 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds double, double* %126, i64 %idxprom134
  %127 = load double, double* %arrayidx135, align 8, !tbaa !39
  %sub136 = fsub double %124, %127
  %cmp137 = fcmp olt double %sub136, 0.000000e+00
  br i1 %cmp137, label %cond.true.138, label %cond.false.147

cond.true.138:                                    ; preds = %if.end
  %128 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul139 = mul nsw i32 %128, 2
  %idxprom140 = sext i32 %mul139 to i64
  %129 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds double, double* %129, i64 %idxprom140
  %130 = load double, double* %arrayidx141, align 8, !tbaa !39
  %131 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul142 = mul nsw i32 %131, 3
  %idxprom143 = sext i32 %mul142 to i64
  %132 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds double, double* %132, i64 %idxprom143
  %133 = load double, double* %arrayidx144, align 8, !tbaa !39
  %sub145 = fsub double %130, %133
  %sub146 = fsub double -0.000000e+00, %sub145
  br label %cond.end.155

cond.false.147:                                   ; preds = %if.end
  %134 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul148 = mul nsw i32 %134, 2
  %idxprom149 = sext i32 %mul148 to i64
  %135 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds double, double* %135, i64 %idxprom149
  %136 = load double, double* %arrayidx150, align 8, !tbaa !39
  %137 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul151 = mul nsw i32 %137, 3
  %idxprom152 = sext i32 %mul151 to i64
  %138 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds double, double* %138, i64 %idxprom152
  %139 = load double, double* %arrayidx153, align 8, !tbaa !39
  %sub154 = fsub double %136, %139
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.147, %cond.true.138
  %cond156 = phi double [ %sub146, %cond.true.138 ], [ %sub154, %cond.false.147 ]
  %140 = load double, double* %small, align 8, !tbaa !39
  %cmp157 = fcmp olt double %cond156, %140
  br i1 %cmp157, label %if.then.158, label %if.end.165

if.then.158:                                      ; preds = %cond.end.155
  %141 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul159 = mul nsw i32 %141, 3
  %idxprom160 = sext i32 %mul159 to i64
  %142 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds double, double* %142, i64 %idxprom160
  %143 = load double, double* %arrayidx161, align 8, !tbaa !39
  %144 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul162 = mul nsw i32 %144, 2
  %idxprom163 = sext i32 %mul162 to i64
  %145 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds double, double* %145, i64 %idxprom163
  store double %143, double* %arrayidx164, align 8, !tbaa !39
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.158, %cond.end.155
  %146 = bitcast double* %small to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast double* %t11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast double* %t01 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %149 = bitcast double* %q3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = bitcast double* %q2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #2
  %151 = bitcast double* %q1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast double* %q0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @subline(double* %pole, i32 %pole_step, double %t0, double %t1) #3 {
entry:
  %pole.addr = alloca double*, align 8
  %pole_step.addr = alloca i32, align 4
  %t0.addr = alloca double, align 8
  %t1.addr = alloca double, align 8
  %q0 = alloca double, align 8
  %q1 = alloca double, align 8
  store double* %pole, double** %pole.addr, align 8, !tbaa !1
  store i32 %pole_step, i32* %pole_step.addr, align 4, !tbaa !19
  store double %t0, double* %t0.addr, align 8, !tbaa !39
  store double %t1, double* %t1.addr, align 8, !tbaa !39
  %0 = bitcast double* %q0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul = mul nsw i32 %1, 0
  %idxprom = sext i32 %mul to i64
  %2 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8, !tbaa !39
  store double %3, double* %q0, align 8, !tbaa !39
  %4 = bitcast double* %q1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul1 = mul nsw i32 %5, 1
  %idxprom2 = sext i32 %mul1 to i64
  %6 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 %idxprom2
  %7 = load double, double* %arrayidx3, align 8, !tbaa !39
  store double %7, double* %q1, align 8, !tbaa !39
  %8 = load double, double* %t0.addr, align 8, !tbaa !39
  %sub = fsub double 1.000000e+00, %8
  %9 = load double, double* %q0, align 8, !tbaa !39
  %mul4 = fmul double %sub, %9
  %10 = load double, double* %t0.addr, align 8, !tbaa !39
  %11 = load double, double* %q1, align 8, !tbaa !39
  %mul5 = fmul double %10, %11
  %add = fadd double %mul4, %mul5
  %12 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul6 = mul nsw i32 %12, 0
  %idxprom7 = sext i32 %mul6 to i64
  %13 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds double, double* %13, i64 %idxprom7
  store double %add, double* %arrayidx8, align 8, !tbaa !39
  %14 = load double, double* %t1.addr, align 8, !tbaa !39
  %sub9 = fsub double 1.000000e+00, %14
  %15 = load double, double* %q0, align 8, !tbaa !39
  %mul10 = fmul double %sub9, %15
  %16 = load double, double* %t1.addr, align 8, !tbaa !39
  %17 = load double, double* %q1, align 8, !tbaa !39
  %mul11 = fmul double %16, %17
  %add12 = fadd double %mul10, %mul11
  %18 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul13 = mul nsw i32 %18, 1
  %idxprom14 = sext i32 %mul13 to i64
  %19 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds double, double* %19, i64 %idxprom14
  store double %add12, double* %arrayidx15, align 8, !tbaa !39
  %20 = bitcast double* %q1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast double* %q0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @curve_monotonity(double* %pole, i32 %pole_step) #3 {
entry:
  %retval = alloca i32, align 4
  %pole.addr = alloca double*, align 8
  %pole_step.addr = alloca i32, align 4
  %p0 = alloca double, align 8
  %p1 = alloca double, align 8
  %p2 = alloca double, align 8
  %p3 = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double* %pole, double** %pole.addr, align 8, !tbaa !1
  store i32 %pole_step, i32* %pole_step.addr, align 4, !tbaa !19
  %0 = bitcast double* %p0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul = mul nsw i32 %1, 0
  %idxprom = sext i32 %mul to i64
  %2 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8, !tbaa !39
  store double %3, double* %p0, align 8, !tbaa !39
  %4 = bitcast double* %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul1 = mul nsw i32 %5, 1
  %idxprom2 = sext i32 %mul1 to i64
  %6 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 %idxprom2
  %7 = load double, double* %arrayidx3, align 8, !tbaa !39
  store double %7, double* %p1, align 8, !tbaa !39
  %8 = bitcast double* %p2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul4 = mul nsw i32 %9, 2
  %idxprom5 = sext i32 %mul4 to i64
  %10 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 %idxprom5
  %11 = load double, double* %arrayidx6, align 8, !tbaa !39
  store double %11, double* %p2, align 8, !tbaa !39
  %12 = bitcast double* %p3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul7 = mul nsw i32 %13, 3
  %idxprom8 = sext i32 %mul7 to i64
  %14 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds double, double* %14, i64 %idxprom8
  %15 = load double, double* %arrayidx9, align 8, !tbaa !39
  store double %15, double* %p3, align 8, !tbaa !39
  %16 = load double, double* %p0, align 8, !tbaa !39
  %17 = load double, double* %p1, align 8, !tbaa !39
  %cmp = fcmp oeq double %16, %17
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %18 = load double, double* %p1, align 8, !tbaa !39
  %19 = load double, double* %p2, align 8, !tbaa !39
  %sub = fsub double %18, %19
  %cmp10 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %20 = load double, double* %p1, align 8, !tbaa !39
  %21 = load double, double* %p2, align 8, !tbaa !39
  %sub11 = fsub double %20, %21
  %sub12 = fsub double -0.000000e+00, %sub11
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %22 = load double, double* %p1, align 8, !tbaa !39
  %23 = load double, double* %p2, align 8, !tbaa !39
  %sub13 = fsub double %22, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub12, %cond.true ], [ %sub13, %cond.false ]
  %cmp14 = fcmp olt double %cond, 1.000000e-13
  br i1 %cmp14, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %cond.end
  %24 = load double, double* %p2, align 8, !tbaa !39
  %25 = load double, double* %p3, align 8, !tbaa !39
  %cmp16 = fcmp oeq double %24, %25
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.15, %cond.end, %entry
  %26 = load double, double* %p0, align 8, !tbaa !39
  %27 = load double, double* %p1, align 8, !tbaa !39
  %cmp17 = fcmp ole double %26, %27
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.23

land.lhs.true.18:                                 ; preds = %if.end
  %28 = load double, double* %p1, align 8, !tbaa !39
  %29 = load double, double* %p2, align 8, !tbaa !39
  %cmp19 = fcmp ole double %28, %29
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.23

land.lhs.true.20:                                 ; preds = %land.lhs.true.18
  %30 = load double, double* %p2, align 8, !tbaa !39
  %31 = load double, double* %p3, align 8, !tbaa !39
  %cmp21 = fcmp ole double %30, %31
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.20
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %land.lhs.true.20, %land.lhs.true.18, %if.end
  %32 = load double, double* %p0, align 8, !tbaa !39
  %33 = load double, double* %p1, align 8, !tbaa !39
  %cmp24 = fcmp oge double %32, %33
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.30

land.lhs.true.25:                                 ; preds = %if.end.23
  %34 = load double, double* %p1, align 8, !tbaa !39
  %35 = load double, double* %p2, align 8, !tbaa !39
  %cmp26 = fcmp oge double %34, %35
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.30

land.lhs.true.27:                                 ; preds = %land.lhs.true.25
  %36 = load double, double* %p2, align 8, !tbaa !39
  %37 = load double, double* %p3, align 8, !tbaa !39
  %cmp28 = fcmp oge double %36, %37
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.27
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %land.lhs.true.27, %land.lhs.true.25, %if.end.23
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29, %if.then.22, %if.then
  %38 = bitcast double* %p3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast double* %p2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast double* %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast double* %p0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @line_monotonity(double* %pole, i32 %pole_step) #3 {
entry:
  %retval = alloca i32, align 4
  %pole.addr = alloca double*, align 8
  %pole_step.addr = alloca i32, align 4
  %p0 = alloca double, align 8
  %p1 = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double* %pole, double** %pole.addr, align 8, !tbaa !1
  store i32 %pole_step, i32* %pole_step.addr, align 4, !tbaa !19
  %0 = bitcast double* %p0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul = mul nsw i32 %1, 0
  %idxprom = sext i32 %mul to i64
  %2 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8, !tbaa !39
  store double %3, double* %p0, align 8, !tbaa !39
  %4 = bitcast double* %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i32, i32* %pole_step.addr, align 4, !tbaa !19
  %mul1 = mul nsw i32 %5, 1
  %idxprom2 = sext i32 %mul1 to i64
  %6 = load double*, double** %pole.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 %idxprom2
  %7 = load double, double* %arrayidx3, align 8, !tbaa !39
  store double %7, double* %p1, align 8, !tbaa !39
  %8 = load double, double* %p1, align 8, !tbaa !39
  %9 = load double, double* %p0, align 8, !tbaa !39
  %sub = fsub double %8, %9
  %cmp = fcmp ogt double %sub, 1.000000e-13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load double, double* %p0, align 8, !tbaa !39
  %11 = load double, double* %p1, align 8, !tbaa !39
  %sub4 = fsub double %10, %11
  %cmp5 = fcmp ogt double %sub4, 1.000000e-13
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %12 = bitcast double* %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = bitcast double* %p0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @gs_function_get_info_default(%struct.gs_function_s*, %struct.gs_function_info_s*) #1

declare i32 @fn_common_get_params(%struct.gs_function_s*, %struct.gs_param_list_s*) #1

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #1

declare i32 @param_write_float_values(%struct.gs_param_list_s*, i8*, float*, i32, i32) #1

declare i32 @param_write_int_values(%struct.gs_param_list_s*, i8*, i32*, i32, i32) #1

declare i8* @fn_copy_values(i8*, i32, i32, %struct.gs_memory_s*) #1

declare i32 @fn_common_scale(%struct.gs_function_s*, %struct.gs_function_s*, %struct.gs_range_s*, %struct.gs_memory_s*) #1

declare i32 @fn_scale_pairs(float**, float*, i32, %struct.gs_range_s*, %struct.gs_memory_s*) #1

declare i32 @fn_common_serialize(%struct.gs_function_s*, %struct.stream_s*) #1

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @serialize_array(float* %a, i32 %half_size, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float*, align 8
  %half_size.addr = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store float* %a, float** %a.addr, align 8, !tbaa !1
  store i32 %half_size, i32* %half_size.addr, align 4, !tbaa !19
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load float*, float** %a.addr, align 8, !tbaa !1
  %cmp = icmp ne float* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load float*, float** %a.addr, align 8, !tbaa !1
  %6 = bitcast float* %5 to i8*
  %7 = load i32, i32* %half_size.addr, align 4, !tbaa !19
  %conv = sext i32 %7 to i64
  %mul = mul i64 4, %conv
  %mul1 = mul i64 %mul, 2
  %conv2 = trunc i64 %mul1 to i32
  %call = call i32 @sputs(%struct.stream_s* %4, i8* %6, i32 %conv2, i32* %n) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !19
  %9 = load i32, i32* %half_size.addr, align 4, !tbaa !19
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call5 = call i32 @sputs(%struct.stream_s* %10, i8* bitcast ([2 x float]* @serialize_array.dummy to i8*), i32 8, i32* %n) #5
  store i32 %call5, i32* %code, align 4, !tbaa !19
  %11 = load i32, i32* %code, align 4, !tbaa !19
  %cmp6 = icmp slt i32 %11, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  %12 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %13 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.8, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @function_Sd_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfn = alloca %struct.gs_function_Sd_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i32 %index, i32* %index.addr, align 4, !tbaa !19
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_function_Sd_s*
  store %struct.gs_function_Sd_s* %2, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.13
    i32 5, label %sw.bb.16
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !19
  %sub = sub nsw i32 %4, 6
  store i32 %sub, i32* %index.addr, align 4, !tbaa !19
  %5 = load i32, i32* %index.addr, align 4, !tbaa !19
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %6 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_data_source, i32 0, i32 4), align 8, !tbaa !57
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %8, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %9 = bitcast %struct.gs_data_source_s* %DataSource to i8*
  %10 = load i32, i32* %index.addr, align 4, !tbaa !19
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %6(%struct.gs_memory_s* %7, i8* %9, i32 32, i32 %10, %struct.enum_ptr_s* %11, %struct.gs_memory_struct_type_s* @st_data_source, %struct.gc_state_s* %12) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %13 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_function, i32 0, i32 4), align 8, !tbaa !57
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %16 = load i32, i32* %size.addr, align 4, !tbaa !19
  %17 = load i32, i32* %index.addr, align 4, !tbaa !19
  %sub1 = sub nsw i32 %17, 1
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_ptr_procs_s* %13(%struct.gs_memory_s* %14, i8* %15, i32 %16, i32 %sub1, %struct.enum_ptr_s* %18, %struct.gs_memory_struct_type_s* @st_function, %struct.gc_state_s* %19) #5
  store %struct.gs_ptr_procs_s* %call2, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gs_function_Sd_s*
  %params3 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %21, i32 0, i32 1
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params3, i32 0, i32 7
  %22 = load float*, float** %Encode, align 8, !tbaa !46
  %23 = bitcast float* %22 to i8*
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr, align 8, !tbaa !59
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %entry
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.gs_function_Sd_s*
  %params5 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %26, i32 0, i32 1
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params5, i32 0, i32 8
  %27 = load float*, float** %Decode, align 8, !tbaa !47
  %28 = bitcast float* %27 to i8*
  %29 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %29, i32 0, i32 0
  store i8* %28, i8** %ptr6, align 8, !tbaa !59
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.7:                                          ; preds = %entry
  %30 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %31 = bitcast i8* %30 to %struct.gs_function_Sd_s*
  %params8 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %31, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params8, i32 0, i32 9
  %32 = load i32*, i32** %Size, align 8, !tbaa !38
  %33 = bitcast i32* %32 to i8*
  %34 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %34, i32 0, i32 0
  store i8* %33, i8** %ptr9, align 8, !tbaa !59
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.10:                                         ; preds = %entry
  %35 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %36 = bitcast i8* %35 to %struct.gs_function_Sd_s*
  %params11 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %36, i32 0, i32 1
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params11, i32 0, i32 10
  %37 = load double*, double** %pole, align 8, !tbaa !29
  %38 = bitcast double* %37 to i8*
  %39 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %39, i32 0, i32 0
  store i8* %38, i8** %ptr12, align 8, !tbaa !59
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.13:                                         ; preds = %entry
  %40 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %41 = bitcast i8* %40 to %struct.gs_function_Sd_s*
  %params14 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %41, i32 0, i32 1
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params14, i32 0, i32 11
  %42 = load i32*, i32** %array_step, align 8, !tbaa !30
  %43 = bitcast i32* %42 to i8*
  %44 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr15 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %44, i32 0, i32 0
  store i8* %43, i8** %ptr15, align 8, !tbaa !59
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.16:                                         ; preds = %entry
  %45 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %46 = bitcast i8* %45 to %struct.gs_function_Sd_s*
  %params17 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %46, i32 0, i32 1
  %stream_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params17, i32 0, i32 12
  %47 = load i32*, i32** %stream_step, align 8, !tbaa !31
  %48 = bitcast i32* %47 to i8*
  %49 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %49, i32 0, i32 0
  store i8* %48, i8** %ptr18, align 8, !tbaa !59
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.16, %sw.bb.13, %sw.bb.10, %sw.bb.7, %sw.bb.4, %sw.bb, %if.end, %if.then
  %50 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %51
}

; Function Attrs: nounwind uwtable
define internal void @function_Sd_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfn = alloca %struct.gs_function_Sd_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_function_Sd_s*
  store %struct.gs_function_Sd_s* %2, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_function, i32 0, i32 5), align 8, !tbaa !61
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !19
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_function, %struct.gc_state_s* %6) #5
  %7 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_data_source, i32 0, i32 5), align 8, !tbaa !61
  %8 = load %struct.gs_function_Sd_s*, %struct.gs_function_Sd_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %8, i32 0, i32 1
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %9 = bitcast %struct.gs_data_source_s* %DataSource to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %7(i8* %9, i32 32, %struct.gs_memory_struct_type_s* @st_data_source, %struct.gc_state_s* %10) #5
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gc_state_s* %11 to %struct.gc_procs_common_s**
  %13 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %12, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %13, i32 0, i32 0
  %14 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !62
  %15 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to %struct.gs_function_Sd_s*
  %params1 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %16, i32 0, i32 1
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params1, i32 0, i32 7
  %17 = load float*, float** %Encode, align 8, !tbaa !46
  %18 = bitcast float* %17 to i8*
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %14(i8* %18, %struct.gc_state_s* %19) #5
  %20 = bitcast i8* %call to float*
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct.gs_function_Sd_s*
  %params2 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %22, i32 0, i32 1
  %Encode3 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params2, i32 0, i32 7
  store float* %20, float** %Encode3, align 8, !tbaa !46
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %24 = bitcast %struct.gc_state_s* %23 to %struct.gc_procs_common_s**
  %25 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %24, align 8, !tbaa !1
  %reloc_struct_ptr4 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %25, i32 0, i32 0
  %26 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr4, align 8, !tbaa !62
  %27 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %28 = bitcast i8* %27 to %struct.gs_function_Sd_s*
  %params5 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %28, i32 0, i32 1
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params5, i32 0, i32 8
  %29 = load float*, float** %Decode, align 8, !tbaa !47
  %30 = bitcast float* %29 to i8*
  %31 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %26(i8* %30, %struct.gc_state_s* %31) #5
  %32 = bitcast i8* %call6 to float*
  %33 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %34 = bitcast i8* %33 to %struct.gs_function_Sd_s*
  %params7 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %34, i32 0, i32 1
  %Decode8 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params7, i32 0, i32 8
  store float* %32, float** %Decode8, align 8, !tbaa !47
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gc_state_s* %35 to %struct.gc_procs_common_s**
  %37 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %36, align 8, !tbaa !1
  %reloc_struct_ptr9 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %37, i32 0, i32 0
  %38 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr9, align 8, !tbaa !62
  %39 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %40 = bitcast i8* %39 to %struct.gs_function_Sd_s*
  %params10 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %40, i32 0, i32 1
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params10, i32 0, i32 9
  %41 = load i32*, i32** %Size, align 8, !tbaa !38
  %42 = bitcast i32* %41 to i8*
  %43 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call11 = call i8* %38(i8* %42, %struct.gc_state_s* %43) #5
  %44 = bitcast i8* %call11 to i32*
  %45 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %46 = bitcast i8* %45 to %struct.gs_function_Sd_s*
  %params12 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %46, i32 0, i32 1
  %Size13 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params12, i32 0, i32 9
  store i32* %44, i32** %Size13, align 8, !tbaa !38
  %47 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %48 = bitcast %struct.gc_state_s* %47 to %struct.gc_procs_common_s**
  %49 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %48, align 8, !tbaa !1
  %reloc_struct_ptr14 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %49, i32 0, i32 0
  %50 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr14, align 8, !tbaa !62
  %51 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %52 = bitcast i8* %51 to %struct.gs_function_Sd_s*
  %params15 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %52, i32 0, i32 1
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params15, i32 0, i32 10
  %53 = load double*, double** %pole, align 8, !tbaa !29
  %54 = bitcast double* %53 to i8*
  %55 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call16 = call i8* %50(i8* %54, %struct.gc_state_s* %55) #5
  %56 = bitcast i8* %call16 to double*
  %57 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %58 = bitcast i8* %57 to %struct.gs_function_Sd_s*
  %params17 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %58, i32 0, i32 1
  %pole18 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params17, i32 0, i32 10
  store double* %56, double** %pole18, align 8, !tbaa !29
  %59 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %60 = bitcast %struct.gc_state_s* %59 to %struct.gc_procs_common_s**
  %61 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %60, align 8, !tbaa !1
  %reloc_struct_ptr19 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %61, i32 0, i32 0
  %62 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr19, align 8, !tbaa !62
  %63 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %64 = bitcast i8* %63 to %struct.gs_function_Sd_s*
  %params20 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %64, i32 0, i32 1
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params20, i32 0, i32 11
  %65 = load i32*, i32** %array_step, align 8, !tbaa !30
  %66 = bitcast i32* %65 to i8*
  %67 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call21 = call i8* %62(i8* %66, %struct.gc_state_s* %67) #5
  %68 = bitcast i8* %call21 to i32*
  %69 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %70 = bitcast i8* %69 to %struct.gs_function_Sd_s*
  %params22 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %70, i32 0, i32 1
  %array_step23 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params22, i32 0, i32 11
  store i32* %68, i32** %array_step23, align 8, !tbaa !30
  %71 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %72 = bitcast %struct.gc_state_s* %71 to %struct.gc_procs_common_s**
  %73 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %72, align 8, !tbaa !1
  %reloc_struct_ptr24 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %73, i32 0, i32 0
  %74 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr24, align 8, !tbaa !62
  %75 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %76 = bitcast i8* %75 to %struct.gs_function_Sd_s*
  %params25 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %76, i32 0, i32 1
  %stream_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params25, i32 0, i32 12
  %77 = load i32*, i32** %stream_step, align 8, !tbaa !31
  %78 = bitcast i32* %77 to i8*
  %79 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call26 = call i8* %74(i8* %78, %struct.gc_state_s* %79) #5
  %80 = bitcast i8* %call26 to i32*
  %81 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %82 = bitcast i8* %81 to %struct.gs_function_Sd_s*
  %params27 = getelementptr inbounds %struct.gs_function_Sd_s, %struct.gs_function_Sd_s* %82, i32 0, i32 1
  %stream_step28 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params27, i32 0, i32 12
  store i32* %80, i32** %stream_step28, align 8, !tbaa !31
  %83 = bitcast %struct.gs_function_Sd_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 96}
!6 = !{!"gs_function_Sd_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !8, i64 40, !7, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !7, i64 128}
!7 = !{!"int", !3, i64 0}
!8 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!9 = !{!6, !2, i64 88}
!10 = !{!6, !2, i64 80}
!11 = !{!12, !2, i64 24}
!12 = !{!"gs_memory_s", !2, i64 0, !13, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!13 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!14 = !{!6, !2, i64 104}
!15 = !{!6, !2, i64 112}
!16 = !{!6, !2, i64 120}
!17 = !{!6, !7, i64 0}
!18 = !{!6, !7, i64 16}
!19 = !{!7, !7, i64 0}
!20 = !{!6, !7, i64 32}
!21 = !{!6, !7, i64 72}
!22 = !{!12, !2, i64 72}
!23 = !{i64 0, i64 4, !19, i64 8, i64 8, !1, i64 16, i64 4, !19, i64 24, i64 8, !1, i64 32, i64 4, !19, i64 40, i64 8, !1, i64 48, i64 4, !24, i64 56, i64 8, !1, i64 64, i64 4, !19, i64 56, i64 8, !1, i64 72, i64 4, !19, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 4, !19}
!24 = !{!3, !3, i64 0}
!25 = !{!26, !7, i64 104}
!26 = !{!"gs_function_Sd_s", !27, i64 0, !6, i64 72}
!27 = !{!"gs_function_head_s", !7, i64 0, !28, i64 8}
!28 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!29 = !{!26, !2, i64 176}
!30 = !{!26, !2, i64 184}
!31 = !{!26, !2, i64 192}
!32 = !{i64 0, i64 4, !19, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1}
!33 = !{!26, !7, i64 200}
!34 = !{!26, !7, i64 72}
!35 = !{!26, !7, i64 88}
!36 = !{!12, !2, i64 88}
!37 = !{!26, !7, i64 144}
!38 = !{!26, !2, i64 168}
!39 = !{!40, !40, i64 0}
!40 = !{!"double", !3, i64 0}
!41 = !{!42, !2, i64 0}
!42 = !{!"gs_function_info_s", !2, i64 0, !43, i64 8, !2, i64 16, !7, i64 24}
!43 = !{!"long", !3, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!42, !43, i64 8}
!46 = !{!26, !2, i64 152}
!47 = !{!26, !2, i64 160}
!48 = !{!49, !2, i64 56}
!49 = !{!"gs_function_s", !27, i64 0, !50, i64 72}
!50 = !{!"gs_function_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24}
!51 = !{!49, !2, i64 24}
!52 = !{!8, !2, i64 0}
!53 = !{!26, !2, i64 96}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !3, i64 0}
!56 = !{!26, !2, i64 80}
!57 = !{!58, !2, i64 32}
!58 = !{!"gs_memory_struct_type_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!59 = !{!60, !2, i64 0}
!60 = !{!"enum_ptr_s", !2, i64 0, !7, i64 8}
!61 = !{!58, !2, i64 40}
!62 = !{!63, !2, i64 0}
!63 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
