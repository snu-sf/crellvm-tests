; ModuleID = './gsfunc3.bc'
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_function_ElIn_params_s = type { i32, float*, i32, float*, float*, float*, float }
%struct.gs_function_ElIn_s = type { %struct.gs_function_head_s, %struct.gs_function_ElIn_params_s }
%struct.gs_function_1ItSg_params_s = type { i32, float*, i32, float*, i32, %struct.gs_function_s**, float*, float* }
%struct.gs_function_1ItSg_s = type { %struct.gs_function_head_s, %struct.gs_function_1ItSg_params_s }
%struct.gs_function_AdOt_params_s = type { i32, float*, i32, float*, %struct.gs_function_s** }
%struct.gs_function_AdOt_s = type { %struct.gs_function_head_s, %struct.gs_function_AdOt_params_s }

@.str = private unnamed_addr constant [3 x i8] c"C1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"C0\00", align 1
@gs_function_ElIn_init.function_ElIn_head = internal constant %struct.gs_function_head_s { i32 2, %struct.gs_function_procs_s { i32 (%struct.gs_function_s*, float*, float*)* @fn_ElIn_evaluate, i32 (%struct.gs_function_s*, float*, float*, i32*)* @fn_ElIn_is_monotonic, void (%struct.gs_function_s*, %struct.gs_function_info_s*)* @gs_function_get_info_default, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)* @fn_ElIn_get_params, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)* bitcast (i32 (%struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s**, %struct.gs_range_s*, %struct.gs_memory_s*)* @fn_ElIn_make_scaled to i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*), void (%struct.gs_function_params_s*, %struct.gs_memory_s*)* bitcast (void (%struct.gs_function_ElIn_params_s*, %struct.gs_memory_s*)* @gs_function_ElIn_free_params to void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*), void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)* @fn_common_free, i32 (%struct.gs_function_s*, %struct.stream_s*)* @gs_function_ElIn_serialize } }, align 8
@st_function_ElIn = internal constant %struct.gs_memory_struct_type_s { i32 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @function_ElIn_reloc_ptrs to i8*) }, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"gs_function_ElIn_init\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Encode\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Bounds\00", align 1
@gs_function_1ItSg_init.function_1ItSg_head = internal constant %struct.gs_function_head_s { i32 3, %struct.gs_function_procs_s { i32 (%struct.gs_function_s*, float*, float*)* @fn_1ItSg_evaluate, i32 (%struct.gs_function_s*, float*, float*, i32*)* @fn_1ItSg_is_monotonic, void (%struct.gs_function_s*, %struct.gs_function_info_s*)* @fn_1ItSg_get_info, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)* @fn_1ItSg_get_params, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)* bitcast (i32 (%struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s**, %struct.gs_range_s*, %struct.gs_memory_s*)* @fn_1ItSg_make_scaled to i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*), void (%struct.gs_function_params_s*, %struct.gs_memory_s*)* bitcast (void (%struct.gs_function_1ItSg_params_s*, %struct.gs_memory_s*)* @gs_function_1ItSg_free_params to void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*), void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)* @fn_common_free, i32 (%struct.gs_function_s*, %struct.stream_s*)* @gs_function_1ItSg_serialize } }, align 8
@st_function_1ItSg = internal constant %struct.gs_memory_struct_type_s { i32 136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @function_1ItSg_reloc_ptrs to i8*) }, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"gs_function_1ItSg_init\00", align 1
@gs_function_AdOt_init.function_AdOt_head = internal constant %struct.gs_function_head_s { i32 -1, %struct.gs_function_procs_s { i32 (%struct.gs_function_s*, float*, float*)* @fn_AdOt_evaluate, i32 (%struct.gs_function_s*, float*, float*, i32*)* @fn_AdOt_is_monotonic, void (%struct.gs_function_s*, %struct.gs_function_info_s*)* @fn_AdOt_get_info, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)* @fn_common_get_params, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)* bitcast (i32 (%struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s**, %struct.gs_range_s*, %struct.gs_memory_s*)* @fn_AdOt_make_scaled to i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*), void (%struct.gs_function_params_s*, %struct.gs_memory_s*)* bitcast (void (%struct.gs_function_AdOt_params_s*, %struct.gs_memory_s*)* @gs_function_AdOt_free_params to void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*), void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)* @fn_common_free, i32 (%struct.gs_function_s*, %struct.stream_s*)* @gs_function_AdOt_serialize } }, align 8
@st_function_AdOt = internal constant %struct.gs_memory_struct_type_s { i32 112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @function_AdOt_reloc_ptrs to i8*) }, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"gs_function_AdOt_init\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"gs_function_AdOt_init(Domain)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"fn_ElIn_make_scaled\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"gs_function_ElIn_t\00", align 1
@function_ElIn_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* @st_function, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @function_ElIn_enum_ptrs, i32 0, i32 0) }, align 8
@st_function = external constant %struct.gs_memory_struct_type_s, align 8
@function_ElIn_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 104 }, %struct.gc_ptr_element_s { i16 0, i16 112 }], align 2
@.str.11 = private unnamed_addr constant [10 x i8] c"Functions\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"fn_1ItSg_make_scaled\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"gs_function_1ItSg_t\00", align 1
@function_1ItSg_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* @st_function, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @function_1ItSg_enum_ptrs, i32 0, i32 0) }, align 8
@function_1ItSg_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 112 }, %struct.gc_ptr_element_s { i16 0, i16 120 }, %struct.gc_ptr_element_s { i16 0, i16 128 }], align 2
@.str.14 = private unnamed_addr constant [20 x i8] c"fn_AdOt_make_scaled\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"gs_function_AdOt_t\00", align 1
@function_AdOt_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_function, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @function_AdOt_enum_ptrs, i32 0, i32 0) }, align 8
@function_AdOt_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 104 }], align 2

; Function Attrs: nounwind uwtable
define void @gs_function_ElIn_free_params(%struct.gs_function_ElIn_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %params.addr = alloca %struct.gs_function_ElIn_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_function_ElIn_params_s* %params, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %C1 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %1, i32 0, i32 5
  %2 = load float*, float** %C1, align 8, !tbaa !5
  %3 = bitcast float* %2 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %0, i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #5
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %C0 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %5, i32 0, i32 4
  %6 = load float*, float** %C0, align 8, !tbaa !9
  %7 = bitcast float* %6 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %4, i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %8 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_function_ElIn_params_s* %8 to %struct.gs_function_params_s*
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @fn_common_free_params(%struct.gs_function_params_s* %9, %struct.gs_memory_s* %10) #5
  ret void
}

declare void @gs_free_const_object(%struct.gs_memory_s*, i8*, i8*) #1

declare void @fn_common_free_params(%struct.gs_function_params_s*, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_function_ElIn_init(%struct.gs_function_s** %ppfn, %struct.gs_function_ElIn_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %params.addr = alloca %struct.gs_function_ElIn_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pfn = alloca %struct.gs_function_ElIn_s*, align 8
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_ElIn_params_s* %params, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* null, %struct.gs_function_s** %1, align 8, !tbaa !1
  %2 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_function_ElIn_params_s* %2 to %struct.gs_function_params_s*
  %4 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %4, i32 0, i32 2
  %5 = load i32, i32* %n, align 4, !tbaa !10
  %call = call i32 @fn_check_mnDR(%struct.gs_function_params_s* %3, i32 1, i32 %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !11
  %6 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %C0 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %8, i32 0, i32 4
  %9 = load float*, float** %C0, align 8, !tbaa !9
  %cmp1 = icmp eq float* %9, null
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %C1 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %10, i32 0, i32 5
  %11 = load float*, float** %C1, align 8, !tbaa !5
  %cmp2 = icmp eq float* %11, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %12 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %n3 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %12, i32 0, i32 2
  %13 = load i32, i32* %n3, align 4, !tbaa !10
  %cmp4 = icmp ne i32 %13, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end.6:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %N = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %14, i32 0, i32 6
  %15 = load float, float* %N, align 4, !tbaa !12
  %conv = fpext float %15 to double
  %16 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %N7 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %16, i32 0, i32 6
  %17 = load float, float* %N7, align 4, !tbaa !12
  %conv8 = fpext float %17 to double
  %call9 = call double @floor(double %conv8) #6
  %cmp10 = fcmp une double %conv, %call9
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.6
  %18 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %18, i32 0, i32 1
  %19 = load float*, float** %Domain, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds float, float* %19, i64 0
  %20 = load float, float* %arrayidx, align 4, !tbaa !14
  %cmp13 = fcmp olt float %20, 0.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.6
  %21 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %N18 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %21, i32 0, i32 6
  %22 = load float, float* %N18, align 4, !tbaa !12
  %cmp19 = fcmp olt float %22, 0.000000e+00
  br i1 %cmp19, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %if.end.17
  %23 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %Domain22 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %23, i32 0, i32 1
  %24 = load float*, float** %Domain22, align 8, !tbaa !13
  %arrayidx23 = getelementptr inbounds float, float* %24, i64 0
  %25 = load float, float* %arrayidx23, align 4, !tbaa !14
  %cmp24 = fcmp ole float %25, 0.000000e+00
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.32

land.lhs.true.26:                                 ; preds = %if.then.21
  %26 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %Domain27 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %26, i32 0, i32 1
  %27 = load float*, float** %Domain27, align 8, !tbaa !13
  %arrayidx28 = getelementptr inbounds float, float* %27, i64 1
  %28 = load float, float* %arrayidx28, align 4, !tbaa !14
  %cmp29 = fcmp oge float %28, 0.000000e+00
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true.26
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

if.end.32:                                        ; preds = %land.lhs.true.26, %if.then.21
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.17
  %29 = bitcast %struct.gs_function_ElIn_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %31 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !15
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call34 = call i8* %31(%struct.gs_memory_s* %32, %struct.gs_memory_struct_type_s* @st_function_ElIn, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #5
  %33 = bitcast i8* %call34 to %struct.gs_function_ElIn_s*
  store %struct.gs_function_ElIn_s* %33, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %34 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %cmp35 = icmp eq %struct.gs_function_ElIn_s* %34, null
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.33
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.33
  %35 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params39 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %35, i32 0, i32 1
  %36 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %params.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gs_function_ElIn_params_s* %params39 to i8*
  %38 = bitcast %struct.gs_function_ElIn_params_s* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 56, i32 8, i1 false), !tbaa.struct !18
  %39 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %39, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params40, i32 0, i32 0
  store i32 1, i32* %m, align 4, !tbaa !19
  %40 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %40, i32 0, i32 0
  %41 = bitcast %struct.gs_function_head_s* %head to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* bitcast (%struct.gs_function_head_s* @gs_function_ElIn_init.function_ElIn_head to i8*), i64 72, i32 8, i1 false), !tbaa.struct !23
  %42 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %43 = bitcast %struct.gs_function_ElIn_s* %42 to %struct.gs_function_s*
  %44 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %43, %struct.gs_function_s** %44, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.37
  %45 = bitcast %struct.gs_function_ElIn_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.41

cleanup.41:                                       ; preds = %cleanup.cont, %cleanup, %if.then.31, %if.then.15, %if.then.5, %if.then
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_ElIn_evaluate(%struct.gs_function_s* %pfn_common, float* %in, float* %out) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %pfn = alloca %struct.gs_function_ElIn_s*, align 8
  %arg = alloca double, align 8
  %raised = alloca double, align 8
  %i = alloca i32, align 4
  %v0 = alloca float, align 4
  %v1 = alloca float, align 4
  %value = alloca double, align 8
  %r0 = alloca float, align 4
  %r1 = alloca float, align 4
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %in, float** %in.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_ElIn_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_ElIn_s*
  store %struct.gs_function_ElIn_s* %2, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %3 = bitcast double* %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %4, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !14
  %conv = fpext float %5 to double
  store double %conv, double* %arg, align 8, !tbaa !24
  %6 = bitcast double* %raised to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load double, double* %arg, align 8, !tbaa !24
  %9 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %9, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 1
  %10 = load float*, float** %Domain, align 8, !tbaa !26
  %arrayidx1 = getelementptr inbounds float, float* %10, i64 0
  %11 = load float, float* %arrayidx1, align 4, !tbaa !14
  %conv2 = fpext float %11 to double
  %cmp = fcmp olt double %8, %conv2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %12, i32 0, i32 1
  %Domain5 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params4, i32 0, i32 1
  %13 = load float*, float** %Domain5, align 8, !tbaa !26
  %arrayidx6 = getelementptr inbounds float, float* %13, i64 0
  %14 = load float, float* %arrayidx6, align 4, !tbaa !14
  %conv7 = fpext float %14 to double
  store double %conv7, double* %arg, align 8, !tbaa !24
  br label %if.end.19

if.else:                                          ; preds = %entry
  %15 = load double, double* %arg, align 8, !tbaa !24
  %16 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %16, i32 0, i32 1
  %Domain9 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params8, i32 0, i32 1
  %17 = load float*, float** %Domain9, align 8, !tbaa !26
  %arrayidx10 = getelementptr inbounds float, float* %17, i64 1
  %18 = load float, float* %arrayidx10, align 4, !tbaa !14
  %conv11 = fpext float %18 to double
  %cmp12 = fcmp ogt double %15, %conv11
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else
  %19 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params15 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %19, i32 0, i32 1
  %Domain16 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params15, i32 0, i32 1
  %20 = load float*, float** %Domain16, align 8, !tbaa !26
  %arrayidx17 = getelementptr inbounds float, float* %20, i64 1
  %21 = load float, float* %arrayidx17, align 4, !tbaa !14
  %conv18 = fpext float %21 to double
  store double %conv18, double* %arg, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %22 = load double, double* %arg, align 8, !tbaa !24
  %23 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %23, i32 0, i32 1
  %N = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params20, i32 0, i32 6
  %24 = load float, float* %N, align 4, !tbaa !27
  %conv21 = fpext float %24 to double
  %call = call double @pow(double %22, double %conv21) #7
  store double %call, double* %raised, align 8, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %25 = load i32, i32* %i, align 4, !tbaa !11
  %26 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params22 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %26, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params22, i32 0, i32 2
  %27 = load i32, i32* %n, align 4, !tbaa !28
  %cmp23 = icmp slt i32 %25, %27
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = bitcast float* %v0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %29 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %29, i32 0, i32 1
  %C0 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params25, i32 0, i32 4
  %30 = load float*, float** %C0, align 8, !tbaa !29
  %cmp26 = icmp eq float* %30, null
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %32, i32 0, i32 1
  %C029 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params28, i32 0, i32 4
  %33 = load float*, float** %C029, align 8, !tbaa !29
  %arrayidx30 = getelementptr inbounds float, float* %33, i64 %idxprom
  %34 = load float, float* %arrayidx30, align 4, !tbaa !14
  %conv31 = fpext float %34 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %conv31, %cond.false ]
  %conv32 = fptrunc double %cond to float
  store float %conv32, float* %v0, align 4, !tbaa !14
  %35 = bitcast float* %v1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #2
  %36 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params33 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %36, i32 0, i32 1
  %C1 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params33, i32 0, i32 5
  %37 = load float*, float** %C1, align 8, !tbaa !30
  %cmp34 = icmp eq float* %37, null
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.end
  br label %cond.end.43

cond.false.37:                                    ; preds = %cond.end
  %38 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom38 = sext i32 %38 to i64
  %39 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params39 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %39, i32 0, i32 1
  %C140 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params39, i32 0, i32 5
  %40 = load float*, float** %C140, align 8, !tbaa !30
  %arrayidx41 = getelementptr inbounds float, float* %40, i64 %idxprom38
  %41 = load float, float* %arrayidx41, align 4, !tbaa !14
  %conv42 = fpext float %41 to double
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.37, %cond.true.36
  %cond44 = phi double [ 1.000000e+00, %cond.true.36 ], [ %conv42, %cond.false.37 ]
  %conv45 = fptrunc double %cond44 to float
  store float %conv45, float* %v1, align 4, !tbaa !14
  %42 = bitcast double* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #2
  %43 = load float, float* %v0, align 4, !tbaa !14
  %conv46 = fpext float %43 to double
  %44 = load double, double* %raised, align 8, !tbaa !24
  %45 = load float, float* %v1, align 4, !tbaa !14
  %46 = load float, float* %v0, align 4, !tbaa !14
  %sub = fsub float %45, %46
  %conv47 = fpext float %sub to double
  %mul = fmul double %44, %conv47
  %add = fadd double %conv46, %mul
  store double %add, double* %value, align 8, !tbaa !24
  %47 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params48 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %47, i32 0, i32 1
  %Range = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params48, i32 0, i32 3
  %48 = load float*, float** %Range, align 8, !tbaa !31
  %tobool = icmp ne float* %48, null
  br i1 %tobool, label %if.then.49, label %if.end.74

if.then.49:                                       ; preds = %cond.end.43
  %49 = bitcast float* %r0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = load i32, i32* %i, align 4, !tbaa !11
  %mul50 = mul nsw i32 2, %50
  %idxprom51 = sext i32 %mul50 to i64
  %51 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params52 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %51, i32 0, i32 1
  %Range53 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params52, i32 0, i32 3
  %52 = load float*, float** %Range53, align 8, !tbaa !31
  %arrayidx54 = getelementptr inbounds float, float* %52, i64 %idxprom51
  %53 = load float, float* %arrayidx54, align 4, !tbaa !14
  store float %53, float* %r0, align 4, !tbaa !14
  %54 = bitcast float* %r1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load i32, i32* %i, align 4, !tbaa !11
  %mul55 = mul nsw i32 2, %55
  %add56 = add nsw i32 %mul55, 1
  %idxprom57 = sext i32 %add56 to i64
  %56 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params58 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %56, i32 0, i32 1
  %Range59 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params58, i32 0, i32 3
  %57 = load float*, float** %Range59, align 8, !tbaa !31
  %arrayidx60 = getelementptr inbounds float, float* %57, i64 %idxprom57
  %58 = load float, float* %arrayidx60, align 4, !tbaa !14
  store float %58, float* %r1, align 4, !tbaa !14
  %59 = load double, double* %value, align 8, !tbaa !24
  %60 = load float, float* %r0, align 4, !tbaa !14
  %conv61 = fpext float %60 to double
  %cmp62 = fcmp olt double %59, %conv61
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.then.49
  %61 = load float, float* %r0, align 4, !tbaa !14
  %conv65 = fpext float %61 to double
  store double %conv65, double* %value, align 8, !tbaa !24
  br label %if.end.73

if.else.66:                                       ; preds = %if.then.49
  %62 = load double, double* %value, align 8, !tbaa !24
  %63 = load float, float* %r1, align 4, !tbaa !14
  %conv67 = fpext float %63 to double
  %cmp68 = fcmp ogt double %62, %conv67
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.else.66
  %64 = load float, float* %r1, align 4, !tbaa !14
  %conv71 = fpext float %64 to double
  store double %conv71, double* %value, align 8, !tbaa !24
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.else.66
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.64
  %65 = bitcast float* %r1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast float* %r0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %cond.end.43
  %67 = load double, double* %value, align 8, !tbaa !24
  %conv75 = fptrunc double %67 to float
  %68 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom76 = sext i32 %68 to i64
  %69 = load float*, float** %out.addr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds float, float* %69, i64 %idxprom76
  store float %conv75, float* %arrayidx77, align 4, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %if.end.74
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %70 = bitcast double* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast float* %v1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast float* %v0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %73 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast double* %raised to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast double* %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = bitcast %struct.gs_function_ElIn_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_ElIn_is_monotonic(%struct.gs_function_s* %pfn_common, float* %lower, float* %upper, i32* %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %lower.addr = alloca float*, align 8
  %upper.addr = alloca float*, align 8
  %mask.addr = alloca i32*, align 8
  %pfn = alloca %struct.gs_function_ElIn_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %lower, float** %lower.addr, align 8, !tbaa !1
  store float* %upper, float** %upper.addr, align 8, !tbaa !1
  store i32* %mask, i32** %mask.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_ElIn_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_ElIn_s*
  store %struct.gs_function_ElIn_s* %2, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %3 = load float*, float** %lower.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %3, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !14
  %5 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %5, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 1
  %6 = load float*, float** %Domain, align 8, !tbaa !26
  %arrayidx1 = getelementptr inbounds float, float* %6, i64 1
  %7 = load float, float* %arrayidx1, align 4, !tbaa !14
  %cmp = fcmp ogt float %4, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load float*, float** %upper.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %8, i64 0
  %9 = load float, float* %arrayidx2, align 4, !tbaa !14
  %10 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %10, i32 0, i32 1
  %Domain4 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params3, i32 0, i32 1
  %11 = load float*, float** %Domain4, align 8, !tbaa !26
  %arrayidx5 = getelementptr inbounds float, float* %11, i64 0
  %12 = load float, float* %arrayidx5, align 4, !tbaa !14
  %cmp6 = fcmp olt float %9, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 0, i32* %13, align 4, !tbaa !11
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast %struct.gs_function_ElIn_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare void @gs_function_get_info_default(%struct.gs_function_s*, %struct.gs_function_info_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fn_ElIn_get_params(%struct.gs_function_s* %pfn_common, %struct.gs_param_list_s* %plist) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pfn = alloca %struct.gs_function_ElIn_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_ElIn_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_ElIn_s*
  store %struct.gs_function_ElIn_s* %2, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @fn_common_get_params(%struct.gs_function_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %ecode, align 4, !tbaa !11
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %7, i32 0, i32 1
  %C0 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 4
  %8 = load float*, float** %C0, align 8, !tbaa !29
  %tobool = icmp ne float* %8, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %10, i32 0, i32 1
  %C02 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params1, i32 0, i32 4
  %11 = load float*, float** %C02, align 8, !tbaa !29
  %12 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %12, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params3, i32 0, i32 2
  %13 = load i32, i32* %n, align 4, !tbaa !28
  %call4 = call i32 @param_write_float_values(%struct.gs_param_list_s* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %11, i32 %13, i32 0) #5
  store i32 %call4, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %14 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %14, i32* %ecode, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %15 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %15, i32 0, i32 1
  %C1 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params7, i32 0, i32 5
  %16 = load float*, float** %C1, align 8, !tbaa !30
  %tobool8 = icmp ne float* %16, null
  br i1 %tobool8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end.6
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %18 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %18, i32 0, i32 1
  %C111 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params10, i32 0, i32 5
  %19 = load float*, float** %C111, align 8, !tbaa !30
  %20 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %20, i32 0, i32 1
  %n13 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params12, i32 0, i32 2
  %21 = load i32, i32* %n13, align 4, !tbaa !28
  %call14 = call i32 @param_write_float_values(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), float* %19, i32 %21, i32 0) #5
  store i32 %call14, i32* %code, align 4, !tbaa !11
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.9
  %22 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %22, i32* %ecode, align 4, !tbaa !11
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.6
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %24 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn, align 8, !tbaa !1
  %params19 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %24, i32 0, i32 1
  %N = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params19, i32 0, i32 6
  %call20 = call i32 @param_write_float(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), float* %N) #5
  store i32 %call20, i32* %code, align 4, !tbaa !11
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %25 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %25, i32* %ecode, align 4, !tbaa !11
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.18
  %26 = load i32, i32* %ecode, align 4, !tbaa !11
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.gs_function_ElIn_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_ElIn_make_scaled(%struct.gs_function_ElIn_s* %pfn, %struct.gs_function_ElIn_s** %ppsfn, %struct.gs_range_s* %pranges, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_ElIn_s*, align 8
  %ppsfn.addr = alloca %struct.gs_function_ElIn_s**, align 8
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psfn = alloca %struct.gs_function_ElIn_s*, align 8
  %c0 = alloca float*, align 8
  %c1 = alloca float*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %base = alloca double, align 8
  %factor = alloca double, align 8
  store %struct.gs_function_ElIn_s* %pfn, %struct.gs_function_ElIn_s** %pfn.addr, align 8, !tbaa !1
  store %struct.gs_function_ElIn_s** %ppsfn, %struct.gs_function_ElIn_s*** %ppsfn.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_ElIn_s** %psfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !15
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_function_ElIn, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.gs_function_ElIn_s*
  store %struct.gs_function_ElIn_s* %4, %struct.gs_function_ElIn_s** %psfn, align 8, !tbaa !1
  %5 = bitcast float** %c0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast float** %c1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %psfn, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_function_ElIn_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %psfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %10, i32 0, i32 1
  %11 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %11, i32 0, i32 1
  %12 = bitcast %struct.gs_function_ElIn_params_s* %params to i8*
  %13 = bitcast %struct.gs_function_ElIn_params_s* %params1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 56, i32 8, i1 false), !tbaa.struct !18
  %14 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn.addr, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %14, i32 0, i32 1
  %C0 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params2, i32 0, i32 4
  %15 = load float*, float** %C0, align 8, !tbaa !29
  %16 = bitcast float* %15 to i8*
  %17 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %17, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params3, i32 0, i32 2
  %18 = load i32, i32* %n, align 4, !tbaa !28
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call4 = call i8* @fn_copy_values(i8* %16, i32 %18, i32 4, %struct.gs_memory_s* %19) #5
  %20 = bitcast i8* %call4 to float*
  store float* %20, float** %c0, align 8, !tbaa !1
  %21 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %psfn, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %21, i32 0, i32 1
  %C06 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params5, i32 0, i32 4
  store float* %20, float** %C06, align 8, !tbaa !29
  %22 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %22, i32 0, i32 1
  %C1 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params7, i32 0, i32 5
  %23 = load float*, float** %C1, align 8, !tbaa !30
  %24 = bitcast float* %23 to i8*
  %25 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %25, i32 0, i32 1
  %n9 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params8, i32 0, i32 2
  %26 = load i32, i32* %n9, align 4, !tbaa !28
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call10 = call i8* @fn_copy_values(i8* %24, i32 %26, i32 4, %struct.gs_memory_s* %27) #5
  %28 = bitcast i8* %call10 to float*
  store float* %28, float** %c1, align 8, !tbaa !1
  %29 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %psfn, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %29, i32 0, i32 1
  %C112 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params11, i32 0, i32 5
  store float* %28, float** %C112, align 8, !tbaa !30
  %30 = load float*, float** %c0, align 8, !tbaa !1
  %cmp13 = icmp eq float* %30, null
  br i1 %cmp13, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %if.end
  %31 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn.addr, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %31, i32 0, i32 1
  %C015 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params14, i32 0, i32 4
  %32 = load float*, float** %C015, align 8, !tbaa !29
  %cmp16 = icmp ne float* %32, null
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %if.end
  %33 = load float*, float** %c1, align 8, !tbaa !1
  %cmp17 = icmp eq float* %33, null
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %34 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn.addr, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %34, i32 0, i32 1
  %C119 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params18, i32 0, i32 5
  %35 = load float*, float** %C119, align 8, !tbaa !30
  %cmp20 = icmp ne float* %35, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %36 = phi i1 [ false, %lor.rhs ], [ %cmp20, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %37 = phi i1 [ true, %land.lhs.true ], [ %36, %land.end ]
  %cond = select i1 %37, i32 -25, i32 0
  store i32 %cond, i32* %code, align 4, !tbaa !11
  %cmp21 = icmp slt i32 %cond, 0
  br i1 %cmp21, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %38 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %psfn, align 8, !tbaa !1
  %39 = bitcast %struct.gs_function_ElIn_s* %38 to %struct.gs_function_s*
  %40 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gs_function_ElIn_s* %40 to %struct.gs_function_s*
  %42 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call22 = call i32 @fn_common_scale(%struct.gs_function_s* %39, %struct.gs_function_s* %41, %struct.gs_range_s* %42, %struct.gs_memory_s* %43) #5
  store i32 %call22, i32* %code, align 4, !tbaa !11
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %lor.lhs.false, %lor.end
  %44 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %psfn, align 8, !tbaa !1
  %45 = bitcast %struct.gs_function_ElIn_s* %44 to %struct.gs_function_s*
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %45, i32 0, i32 0
  %procs25 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs25, i32 0, i32 6
  %46 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !32
  %47 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %psfn, align 8, !tbaa !1
  %48 = bitcast %struct.gs_function_ElIn_s* %47 to %struct.gs_function_s*
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void %46(%struct.gs_function_s* %48, i32 1, %struct.gs_memory_s* %49) #5
  %50 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %51 = load i32, i32* %i, align 4, !tbaa !11
  %52 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %pfn.addr, align 8, !tbaa !1
  %params27 = getelementptr inbounds %struct.gs_function_ElIn_s, %struct.gs_function_ElIn_s* %52, i32 0, i32 1
  %n28 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params27, i32 0, i32 2
  %53 = load i32, i32* %n28, align 4, !tbaa !28
  %cmp29 = icmp slt i32 %51, %53
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = bitcast double* %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  %55 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %55 to i64
  %56 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %56, i64 %idxprom
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  %57 = load float, float* %rmin, align 4, !tbaa !35
  %conv = fpext float %57 to double
  store double %conv, double* %base, align 8, !tbaa !24
  %58 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  %59 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom30 = sext i32 %59 to i64
  %60 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %60, i64 %idxprom30
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx31, i32 0, i32 1
  %61 = load float, float* %rmax, align 4, !tbaa !37
  %conv32 = fpext float %61 to double
  %62 = load double, double* %base, align 8, !tbaa !24
  %sub = fsub double %conv32, %62
  store double %sub, double* %factor, align 8, !tbaa !24
  %63 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom33 = sext i32 %63 to i64
  %64 = load float*, float** %c1, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds float, float* %64, i64 %idxprom33
  %65 = load float, float* %arrayidx34, align 4, !tbaa !14
  %conv35 = fpext float %65 to double
  %66 = load double, double* %factor, align 8, !tbaa !24
  %mul = fmul double %conv35, %66
  %67 = load double, double* %base, align 8, !tbaa !24
  %add = fadd double %mul, %67
  %conv36 = fptrunc double %add to float
  %68 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom37 = sext i32 %68 to i64
  %69 = load float*, float** %c1, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds float, float* %69, i64 %idxprom37
  store float %conv36, float* %arrayidx38, align 4, !tbaa !14
  %70 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom39 = sext i32 %70 to i64
  %71 = load float*, float** %c0, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds float, float* %71, i64 %idxprom39
  %72 = load float, float* %arrayidx40, align 4, !tbaa !14
  %conv41 = fpext float %72 to double
  %73 = load double, double* %factor, align 8, !tbaa !24
  %mul42 = fmul double %conv41, %73
  %74 = load double, double* %base, align 8, !tbaa !24
  %add43 = fadd double %mul42, %74
  %conv44 = fptrunc double %add43 to float
  %75 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom45 = sext i32 %75 to i64
  %76 = load float*, float** %c0, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds float, float* %76, i64 %idxprom45
  store float %conv44, float* %arrayidx46, align 4, !tbaa !14
  %77 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast double* %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %79 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load %struct.gs_function_ElIn_s*, %struct.gs_function_ElIn_s** %psfn, align 8, !tbaa !1
  %81 = load %struct.gs_function_ElIn_s**, %struct.gs_function_ElIn_s*** %ppsfn.addr, align 8, !tbaa !1
  store %struct.gs_function_ElIn_s* %80, %struct.gs_function_ElIn_s** %81, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.24, %if.then
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast float** %c1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = bitcast float** %c0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast %struct.gs_function_ElIn_s** %psfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = load i32, i32* %retval
  ret i32 %87
}

declare void @fn_common_free(%struct.gs_function_s*, i32, %struct.gs_memory_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gs_function_ElIn_serialize(%struct.gs_function_s* %pfn, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %n = alloca i32, align 4
  %p = alloca %struct.gs_function_ElIn_params_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_function_ElIn_params_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %2, i32 0, i32 1
  %3 = bitcast %struct.gs_function_params_s* %params to %struct.gs_function_ElIn_params_s*
  store %struct.gs_function_ElIn_params_s* %3, %struct.gs_function_ElIn_params_s** %p, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @fn_common_serialize(%struct.gs_function_s* %5, %struct.stream_s* %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !11
  %7 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %10 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %p, align 8, !tbaa !1
  %C0 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %10, i32 0, i32 4
  %11 = load float*, float** %C0, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, float* %11, i64 0
  %12 = bitcast float* %arrayidx to i8*
  %13 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %p, align 8, !tbaa !1
  %n1 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %13, i32 0, i32 2
  %14 = load i32, i32* %n1, align 4, !tbaa !10
  %conv = sext i32 %14 to i64
  %mul = mul i64 4, %conv
  %conv2 = trunc i64 %mul to i32
  %call3 = call i32 @sputs(%struct.stream_s* %9, i8* %12, i32 %conv2, i32* %n) #5
  store i32 %call3, i32* %code, align 4, !tbaa !11
  %15 = load i32, i32* %code, align 4, !tbaa !11
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %18 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %p, align 8, !tbaa !1
  %C1 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %18, i32 0, i32 5
  %19 = load float*, float** %C1, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds float, float* %19, i64 0
  %20 = bitcast float* %arrayidx8 to i8*
  %21 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %p, align 8, !tbaa !1
  %n9 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %21, i32 0, i32 2
  %22 = load i32, i32* %n9, align 4, !tbaa !10
  %conv10 = sext i32 %22 to i64
  %mul11 = mul i64 4, %conv10
  %conv12 = trunc i64 %mul11 to i32
  %call13 = call i32 @sputs(%struct.stream_s* %17, i8* %20, i32 %conv12, i32* %n) #5
  store i32 %call13, i32* %code, align 4, !tbaa !11
  %23 = load i32, i32* %code, align 4, !tbaa !11
  %cmp14 = icmp slt i32 %23, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.7
  %24 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.7
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %26 = load %struct.gs_function_ElIn_params_s*, %struct.gs_function_ElIn_params_s** %p, align 8, !tbaa !1
  %N = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %26, i32 0, i32 6
  %27 = bitcast float* %N to i8*
  %call18 = call i32 @sputs(%struct.stream_s* %25, i8* %27, i32 4, i32* %n) #5
  store i32 %call18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.6, %if.then
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.gs_function_ElIn_params_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @fn_check_mnDR(%struct.gs_function_params_s*, i32, i32) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @gs_function_1ItSg_free_params(%struct.gs_function_1ItSg_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %params.addr = alloca %struct.gs_function_1ItSg_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_function_1ItSg_params_s* %params, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %Encode = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %1, i32 0, i32 7
  %2 = load float*, float** %Encode, align 8, !tbaa !38
  %3 = bitcast float* %2 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %0, i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #5
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %Bounds = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %5, i32 0, i32 6
  %6 = load float*, float** %Bounds, align 8, !tbaa !40
  %7 = bitcast float* %6 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %4, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #5
  %8 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %Functions = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %8, i32 0, i32 5
  %9 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !41
  %10 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %k = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %10, i32 0, i32 4
  %11 = load i32, i32* %k, align 4, !tbaa !42
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @fn_free_functions(%struct.gs_function_s** %9, i32 %11, %struct.gs_memory_s* %12) #5
  %13 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_function_1ItSg_params_s* %13 to %struct.gs_function_params_s*
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @fn_common_free_params(%struct.gs_function_params_s* %14, %struct.gs_memory_s* %15) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fn_free_functions(%struct.gs_function_s** %Functions, i32 %count, %struct.gs_memory_s* %mem) #0 {
entry:
  %Functions.addr = alloca %struct.gs_function_s**, align 8
  %count.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_function_s** %Functions, %struct.gs_function_s*** %Functions.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !11
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %count.addr, align 4, !tbaa !11
  store i32 %1, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !11
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %i, align 4, !tbaa !11
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %4, i64 %idxprom
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_function_s* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %7, i64 %idxprom1
  %8 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx2, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %8, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 6
  %9 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !32
  %10 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %11, i64 %idxprom3
  %12 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx4, align 8, !tbaa !1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void %9(%struct.gs_function_s* %12, i32 1, %struct.gs_memory_s* %13) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gs_function_s** %15 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0)) #5
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_function_1ItSg_init(%struct.gs_function_s** %ppfn, %struct.gs_function_1ItSg_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %params.addr = alloca %struct.gs_function_1ItSg_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %n = alloca i32, align 4
  %prev = alloca float, align 4
  %i = alloca i32, align 4
  %psubfn = alloca %struct.gs_function_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pfn = alloca %struct.gs_function_1ItSg_s*, align 8
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_1ItSg_params_s* %params, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %Range = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %1, i32 0, i32 3
  %2 = load float*, float** %Range, align 8, !tbaa !43
  %cmp = icmp eq float* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %n1 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %3, i32 0, i32 2
  %4 = load i32, i32* %n1, align 4, !tbaa !44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %n, align 4, !tbaa !11
  %5 = bitcast float* %prev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %6, i32 0, i32 1
  %7 = load float*, float** %Domain, align 8, !tbaa !45
  %arrayidx = getelementptr inbounds float, float* %7, i64 0
  %8 = load float, float* %arrayidx, align 4, !tbaa !14
  store float %8, float* %prev, align 4, !tbaa !14
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* null, %struct.gs_function_s** %10, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i32, i32* %i, align 4, !tbaa !11
  %12 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %k = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %12, i32 0, i32 4
  %13 = load i32, i32* %k, align 4, !tbaa !42
  %cmp2 = icmp slt i32 %11, %13
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast %struct.gs_function_s** %psubfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %Functions = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %16, i32 0, i32 5
  %17 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !41
  %arrayidx3 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %17, i64 %idxprom
  %18 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx3, align 8, !tbaa !1
  store %struct.gs_function_s* %18, %struct.gs_function_s** %psubfn, align 8, !tbaa !1
  %19 = load %struct.gs_function_s*, %struct.gs_function_s** %psubfn, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %19, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params4, i32 0, i32 0
  %20 = load i32, i32* %m, align 4, !tbaa !46
  %cmp5 = icmp ne i32 %20, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %21 = load i32, i32* %n, align 4, !tbaa !11
  %cmp6 = icmp eq i32 %21, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %22 = load %struct.gs_function_s*, %struct.gs_function_s** %psubfn, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %22, i32 0, i32 1
  %n9 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params8, i32 0, i32 2
  %23 = load i32, i32* %n9, align 4, !tbaa !47
  store i32 %23, i32* %n, align 4, !tbaa !11
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %24 = load %struct.gs_function_s*, %struct.gs_function_s** %psubfn, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %24, i32 0, i32 1
  %n11 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params10, i32 0, i32 2
  %25 = load i32, i32* %n11, align 4, !tbaa !47
  %26 = load i32, i32* %n, align 4, !tbaa !11
  %cmp12 = icmp ne i32 %25, %26
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.7
  %27 = load i32, i32* %i, align 4, !tbaa !11
  %28 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %k16 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %28, i32 0, i32 4
  %29 = load i32, i32* %k16, align 4, !tbaa !42
  %sub = sub nsw i32 %29, 1
  %cmp17 = icmp slt i32 %27, %sub
  br i1 %cmp17, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %if.end.15
  %30 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom19 = sext i32 %30 to i64
  %31 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %Bounds = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %31, i32 0, i32 6
  %32 = load float*, float** %Bounds, align 8, !tbaa !40
  %arrayidx20 = getelementptr inbounds float, float* %32, i64 %idxprom19
  %33 = load float, float* %arrayidx20, align 4, !tbaa !14
  %34 = load float, float* %prev, align 4, !tbaa !14
  %cmp21 = fcmp olt float %33, %34
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.18
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.18
  %35 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom24 = sext i32 %35 to i64
  %36 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %Bounds25 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %36, i32 0, i32 6
  %37 = load float*, float** %Bounds25, align 8, !tbaa !40
  %arrayidx26 = getelementptr inbounds float, float* %37, i64 %idxprom24
  %38 = load float, float* %arrayidx26, align 4, !tbaa !14
  store float %38, float* %prev, align 4, !tbaa !14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.23, %if.end.15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.22, %if.then.13, %if.then
  %39 = bitcast %struct.gs_function_s** %psubfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %40 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %Domain28 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %41, i32 0, i32 1
  %42 = load float*, float** %Domain28, align 8, !tbaa !45
  %arrayidx29 = getelementptr inbounds float, float* %42, i64 1
  %43 = load float, float* %arrayidx29, align 4, !tbaa !14
  %44 = load float, float* %prev, align 4, !tbaa !14
  %cmp30 = fcmp olt float %43, %44
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.32:                                        ; preds = %for.end
  %45 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %46 = bitcast %struct.gs_function_1ItSg_params_s* %45 to %struct.gs_function_params_s*
  %47 = load i32, i32* %n, align 4, !tbaa !11
  %call = call i32 @fn_check_mnDR(%struct.gs_function_params_s* %46, i32 1, i32 %47) #5
  %48 = bitcast %struct.gs_function_1ItSg_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #2
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %50 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !15
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call33 = call i8* %50(%struct.gs_memory_s* %51, %struct.gs_memory_struct_type_s* @st_function_1ItSg, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)) #5
  %52 = bitcast i8* %call33 to %struct.gs_function_1ItSg_s*
  store %struct.gs_function_1ItSg_s* %52, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %53 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %cmp34 = icmp eq %struct.gs_function_1ItSg_s* %53, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end.36:                                        ; preds = %if.end.32
  %54 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params37 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %54, i32 0, i32 1
  %55 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %params.addr, align 8, !tbaa !1
  %56 = bitcast %struct.gs_function_1ItSg_params_s* %params37 to i8*
  %57 = bitcast %struct.gs_function_1ItSg_params_s* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 64, i32 8, i1 false), !tbaa.struct !48
  %58 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params38 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %58, i32 0, i32 1
  %m39 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params38, i32 0, i32 0
  store i32 1, i32* %m39, align 4, !tbaa !49
  %59 = load i32, i32* %n, align 4, !tbaa !11
  %60 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params40 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %60, i32 0, i32 1
  %n41 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params40, i32 0, i32 2
  store i32 %59, i32* %n41, align 4, !tbaa !51
  %61 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %61, i32 0, i32 0
  %62 = bitcast %struct.gs_function_head_s* %head to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* bitcast (%struct.gs_function_head_s* @gs_function_1ItSg_init.function_1ItSg_head to i8*), i64 72, i32 8, i1 false), !tbaa.struct !23
  %63 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %64 = bitcast %struct.gs_function_1ItSg_s* %63 to %struct.gs_function_s*
  %65 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %64, %struct.gs_function_s** %65, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.42

cleanup.42:                                       ; preds = %if.end.36, %if.then.35
  %66 = bitcast %struct.gs_function_1ItSg_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %cleanup.dest.43 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.43, label %cleanup.45 [
    i32 0, label %cleanup.cont.44
  ]

cleanup.cont.44:                                  ; preds = %cleanup.42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %cleanup.cont.44, %cleanup.42, %if.then.31, %cleanup
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast float* %prev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_1ItSg_evaluate(%struct.gs_function_s* %pfn_common, float* %in, float* %out) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %pfn = alloca %struct.gs_function_1ItSg_s*, align 8
  %arg = alloca float, align 4
  %b0 = alloca float, align 4
  %b1 = alloca float, align 4
  %e0 = alloca float, align 4
  %encoded = alloca float, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %in, float** %in.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_1ItSg_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_1ItSg_s*
  store %struct.gs_function_1ItSg_s* %2, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %3 = bitcast float* %arg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load float*, float** %in.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %4, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !14
  store float %5, float* %arg, align 4, !tbaa !14
  %6 = bitcast float* %b0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast float* %b1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast float* %e0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast float* %encoded to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %11, i32 0, i32 1
  %k1 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 4
  %12 = load i32, i32* %k1, align 4, !tbaa !52
  store i32 %12, i32* %k, align 4, !tbaa !11
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load float, float* %arg, align 4, !tbaa !14
  %15 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %15, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params2, i32 0, i32 1
  %16 = load float*, float** %Domain, align 8, !tbaa !53
  %arrayidx3 = getelementptr inbounds float, float* %16, i64 0
  %17 = load float, float* %arrayidx3, align 4, !tbaa !14
  %cmp = fcmp olt float %14, %17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %18, i32 0, i32 1
  %Domain5 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params4, i32 0, i32 1
  %19 = load float*, float** %Domain5, align 8, !tbaa !53
  %arrayidx6 = getelementptr inbounds float, float* %19, i64 0
  %20 = load float, float* %arrayidx6, align 4, !tbaa !14
  store float %20, float* %arg, align 4, !tbaa !14
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %if.end.23

if.else:                                          ; preds = %entry
  %21 = load float, float* %arg, align 4, !tbaa !14
  %22 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %22, i32 0, i32 1
  %Domain8 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params7, i32 0, i32 1
  %23 = load float*, float** %Domain8, align 8, !tbaa !53
  %arrayidx9 = getelementptr inbounds float, float* %23, i64 1
  %24 = load float, float* %arrayidx9, align 4, !tbaa !14
  %cmp10 = fcmp ogt float %21, %24
  br i1 %cmp10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %if.else
  %25 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %25, i32 0, i32 1
  %Domain13 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params12, i32 0, i32 1
  %26 = load float*, float** %Domain13, align 8, !tbaa !53
  %arrayidx14 = getelementptr inbounds float, float* %26, i64 1
  %27 = load float, float* %arrayidx14, align 4, !tbaa !14
  store float %27, float* %arg, align 4, !tbaa !14
  %28 = load i32, i32* %k, align 4, !tbaa !11
  %sub = sub nsw i32 %28, 1
  store i32 %sub, i32* %i, align 4, !tbaa !11
  br label %if.end.22

if.else.15:                                       ; preds = %if.else
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.15
  %29 = load i32, i32* %i, align 4, !tbaa !11
  %30 = load i32, i32* %k, align 4, !tbaa !11
  %sub16 = sub nsw i32 %30, 1
  %cmp17 = icmp slt i32 %29, %sub16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load float, float* %arg, align 4, !tbaa !14
  %32 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %33, i32 0, i32 1
  %Bounds = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params18, i32 0, i32 6
  %34 = load float*, float** %Bounds, align 8, !tbaa !54
  %arrayidx19 = getelementptr inbounds float, float* %34, i64 %idxprom
  %35 = load float, float* %arrayidx19, align 4, !tbaa !14
  %cmp20 = fcmp ole float %31, %35
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %for.cond
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.then.11
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then
  %37 = load i32, i32* %i, align 4, !tbaa !11
  %cmp24 = icmp eq i32 %37, 0
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %38 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %38, i32 0, i32 1
  %Domain26 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params25, i32 0, i32 1
  %39 = load float*, float** %Domain26, align 8, !tbaa !53
  %arrayidx27 = getelementptr inbounds float, float* %39, i64 0
  %40 = load float, float* %arrayidx27, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  %41 = load i32, i32* %i, align 4, !tbaa !11
  %sub28 = sub nsw i32 %41, 1
  %idxprom29 = sext i32 %sub28 to i64
  %42 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %42, i32 0, i32 1
  %Bounds31 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params30, i32 0, i32 6
  %43 = load float*, float** %Bounds31, align 8, !tbaa !54
  %arrayidx32 = getelementptr inbounds float, float* %43, i64 %idxprom29
  %44 = load float, float* %arrayidx32, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %40, %cond.true ], [ %44, %cond.false ]
  store float %cond, float* %b0, align 4, !tbaa !14
  %45 = load i32, i32* %i, align 4, !tbaa !11
  %46 = load i32, i32* %k, align 4, !tbaa !11
  %sub33 = sub nsw i32 %46, 1
  %cmp34 = icmp eq i32 %45, %sub33
  br i1 %cmp34, label %cond.true.35, label %cond.false.39

cond.true.35:                                     ; preds = %cond.end
  %47 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params36 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %47, i32 0, i32 1
  %Domain37 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params36, i32 0, i32 1
  %48 = load float*, float** %Domain37, align 8, !tbaa !53
  %arrayidx38 = getelementptr inbounds float, float* %48, i64 1
  %49 = load float, float* %arrayidx38, align 4, !tbaa !14
  br label %cond.end.44

cond.false.39:                                    ; preds = %cond.end
  %50 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom40 = sext i32 %50 to i64
  %51 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params41 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %51, i32 0, i32 1
  %Bounds42 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params41, i32 0, i32 6
  %52 = load float*, float** %Bounds42, align 8, !tbaa !54
  %arrayidx43 = getelementptr inbounds float, float* %52, i64 %idxprom40
  %53 = load float, float* %arrayidx43, align 4, !tbaa !14
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.39, %cond.true.35
  %cond45 = phi float [ %49, %cond.true.35 ], [ %53, %cond.false.39 ]
  store float %cond45, float* %b1, align 4, !tbaa !14
  %54 = load i32, i32* %i, align 4, !tbaa !11
  %mul = mul nsw i32 2, %54
  %idxprom46 = sext i32 %mul to i64
  %55 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params47 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %55, i32 0, i32 1
  %Encode = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params47, i32 0, i32 7
  %56 = load float*, float** %Encode, align 8, !tbaa !55
  %arrayidx48 = getelementptr inbounds float, float* %56, i64 %idxprom46
  %57 = load float, float* %arrayidx48, align 4, !tbaa !14
  store float %57, float* %e0, align 4, !tbaa !14
  %58 = load float, float* %b1, align 4, !tbaa !14
  %59 = load float, float* %b0, align 4, !tbaa !14
  %cmp49 = fcmp oeq float %58, %59
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %cond.end.44
  %60 = load float, float* %e0, align 4, !tbaa !14
  store float %60, float* %encoded, align 4, !tbaa !14
  br label %if.end.62

if.else.51:                                       ; preds = %cond.end.44
  %61 = load float, float* %arg, align 4, !tbaa !14
  %62 = load float, float* %b0, align 4, !tbaa !14
  %sub52 = fsub float %61, %62
  %63 = load i32, i32* %i, align 4, !tbaa !11
  %mul53 = mul nsw i32 2, %63
  %add = add nsw i32 %mul53, 1
  %idxprom54 = sext i32 %add to i64
  %64 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params55 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %64, i32 0, i32 1
  %Encode56 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params55, i32 0, i32 7
  %65 = load float*, float** %Encode56, align 8, !tbaa !55
  %arrayidx57 = getelementptr inbounds float, float* %65, i64 %idxprom54
  %66 = load float, float* %arrayidx57, align 4, !tbaa !14
  %67 = load float, float* %e0, align 4, !tbaa !14
  %sub58 = fsub float %66, %67
  %mul59 = fmul float %sub52, %sub58
  %68 = load float, float* %b1, align 4, !tbaa !14
  %69 = load float, float* %b0, align 4, !tbaa !14
  %sub60 = fsub float %68, %69
  %div = fdiv float %mul59, %sub60
  %70 = load float, float* %e0, align 4, !tbaa !14
  %add61 = fadd float %div, %70
  store float %add61, float* %encoded, align 4, !tbaa !14
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.51, %if.then.50
  br label %do.body

do.body:                                          ; preds = %if.end.62
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %71 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom63 = sext i32 %71 to i64
  %72 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params64 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %72, i32 0, i32 1
  %Functions = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params64, i32 0, i32 5
  %73 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !56
  %arrayidx65 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %73, i64 %idxprom63
  %74 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx65, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %74, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %evaluate = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 0
  %75 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate, align 8, !tbaa !57
  %76 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom66 = sext i32 %76 to i64
  %77 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params67 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %77, i32 0, i32 1
  %Functions68 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params67, i32 0, i32 5
  %78 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions68, align 8, !tbaa !56
  %arrayidx69 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %78, i64 %idxprom66
  %79 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx69, align 8, !tbaa !1
  %80 = load float*, float** %out.addr, align 8, !tbaa !1
  %call = call i32 %75(%struct.gs_function_s* %79, float* %encoded, float* %80) #5
  %81 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast float* %encoded to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast float* %e0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast float* %b1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast float* %b0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast float* %arg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast %struct.gs_function_1ItSg_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_1ItSg_is_monotonic(%struct.gs_function_s* %pfn_common, float* %lower, float* %upper, i32* %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %lower.addr = alloca float*, align 8
  %upper.addr = alloca float*, align 8
  %mask.addr = alloca i32*, align 8
  %pfn = alloca %struct.gs_function_1ItSg_s*, align 8
  %v0 = alloca float, align 4
  %v1 = alloca float, align 4
  %d0 = alloca float, align 4
  %d1 = alloca float, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %b0 = alloca float, align 4
  %b1 = alloca float, align 4
  %bsmall = alloca float, align 4
  %esmall = alloca float, align 4
  %e0 = alloca float, align 4
  %e1 = alloca float, align 4
  %w0 = alloca float, align 4
  %w1 = alloca float, align 4
  %vv0 = alloca float, align 4
  %vv1 = alloca float, align 4
  %vb0 = alloca double, align 8
  %vb1 = alloca double, align 8
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %lower, float** %lower.addr, align 8, !tbaa !1
  store float* %upper, float** %upper.addr, align 8, !tbaa !1
  store i32* %mask, i32** %mask.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_1ItSg_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_1ItSg_s*
  store %struct.gs_function_1ItSg_s* %2, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %3 = bitcast float* %v0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load float*, float** %lower.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %4, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !14
  store float %5, float* %v0, align 4, !tbaa !14
  %6 = bitcast float* %v1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load float*, float** %upper.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %7, i64 0
  %8 = load float, float* %arrayidx1, align 4, !tbaa !14
  store float %8, float* %v1, align 4, !tbaa !14
  %9 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %10, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 1
  %11 = load float*, float** %Domain, align 8, !tbaa !53
  %arrayidx2 = getelementptr inbounds float, float* %11, i64 0
  %12 = load float, float* %arrayidx2, align 4, !tbaa !14
  store float %12, float* %d0, align 4, !tbaa !14
  %13 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %14, i32 0, i32 1
  %Domain4 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params3, i32 0, i32 1
  %15 = load float*, float** %Domain4, align 8, !tbaa !53
  %arrayidx5 = getelementptr inbounds float, float* %15, i64 1
  %16 = load float, float* %arrayidx5, align 4, !tbaa !14
  store float %16, float* %d1, align 4, !tbaa !14
  %17 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %18, i32 0, i32 1
  %k7 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params6, i32 0, i32 4
  %19 = load i32, i32* %k7, align 4, !tbaa !52
  store i32 %19, i32* %k, align 4, !tbaa !11
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 0, i32* %21, align 4, !tbaa !11
  %22 = load float, float* %v0, align 4, !tbaa !14
  %23 = load float, float* %v1, align 4, !tbaa !14
  %cmp = fcmp ogt float %22, %23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = load float, float* %v1, align 4, !tbaa !14
  store float %24, float* %v0, align 4, !tbaa !14
  %25 = load float*, float** %lower.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %25, i64 0
  %26 = load float, float* %arrayidx8, align 4, !tbaa !14
  store float %26, float* %v1, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load float, float* %v0, align 4, !tbaa !14
  %28 = load float, float* %d1, align 4, !tbaa !14
  %cmp9 = fcmp ogt float %27, %28
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %29 = load float, float* %v1, align 4, !tbaa !14
  %30 = load float, float* %d0, align 4, !tbaa !14
  %cmp10 = fcmp olt float %29, %30
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.12:                                        ; preds = %lor.lhs.false
  %31 = load float, float* %v0, align 4, !tbaa !14
  %32 = load float, float* %d0, align 4, !tbaa !14
  %cmp13 = fcmp olt float %31, %32
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %33 = load float, float* %d0, align 4, !tbaa !14
  store float %33, float* %v0, align 4, !tbaa !14
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %34 = load float, float* %v1, align 4, !tbaa !14
  %35 = load float, float* %d1, align 4, !tbaa !14
  %cmp16 = fcmp ogt float %34, %35
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %36 = load float, float* %d1, align 4, !tbaa !14
  store float %36, float* %v1, align 4, !tbaa !14
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %37 = load i32, i32* %i, align 4, !tbaa !11
  %38 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params19 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %38, i32 0, i32 1
  %k20 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params19, i32 0, i32 4
  %39 = load i32, i32* %k20, align 4, !tbaa !52
  %cmp21 = icmp slt i32 %37, %39
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = bitcast float* %b0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #2
  %41 = load i32, i32* %i, align 4, !tbaa !11
  %cmp22 = icmp eq i32 %41, 0
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %42 = load float, float* %d0, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %43 = load i32, i32* %i, align 4, !tbaa !11
  %sub = sub nsw i32 %43, 1
  %idxprom = sext i32 %sub to i64
  %44 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %44, i32 0, i32 1
  %Bounds = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params23, i32 0, i32 6
  %45 = load float*, float** %Bounds, align 8, !tbaa !54
  %arrayidx24 = getelementptr inbounds float, float* %45, i64 %idxprom
  %46 = load float, float* %arrayidx24, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %42, %cond.true ], [ %46, %cond.false ]
  store float %cond, float* %b0, align 4, !tbaa !14
  %47 = bitcast float* %b1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = load i32, i32* %i, align 4, !tbaa !11
  %49 = load i32, i32* %k, align 4, !tbaa !11
  %sub25 = sub nsw i32 %49, 1
  %cmp26 = icmp eq i32 %48, %sub25
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.end
  %50 = load float, float* %d1, align 4, !tbaa !14
  br label %cond.end.33

cond.false.28:                                    ; preds = %cond.end
  %51 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom29 = sext i32 %51 to i64
  %52 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %52, i32 0, i32 1
  %Bounds31 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params30, i32 0, i32 6
  %53 = load float*, float** %Bounds31, align 8, !tbaa !54
  %arrayidx32 = getelementptr inbounds float, float* %53, i64 %idxprom29
  %54 = load float, float* %arrayidx32, align 4, !tbaa !14
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.28, %cond.true.27
  %cond34 = phi float [ %50, %cond.true.27 ], [ %54, %cond.false.28 ]
  store float %cond34, float* %b1, align 4, !tbaa !14
  %55 = bitcast float* %bsmall to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load float, float* %b1, align 4, !tbaa !14
  %57 = load float, float* %b0, align 4, !tbaa !14
  %sub35 = fsub float %56, %57
  %mul = fmul float 0x3EB0C6F7A0000000, %sub35
  store float %mul, float* %bsmall, align 4, !tbaa !14
  %58 = bitcast float* %esmall to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #2
  %59 = bitcast float* %e0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  %60 = bitcast float* %e1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  %61 = bitcast float* %w0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %62 = bitcast float* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  %63 = bitcast float* %vv0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = bitcast float* %vv1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = bitcast double* %vb0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #2
  %66 = bitcast double* %vb1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #2
  %67 = load float, float* %v0, align 4, !tbaa !14
  %68 = load float, float* %b1, align 4, !tbaa !14
  %69 = load float, float* %bsmall, align 4, !tbaa !14
  %sub36 = fsub float %68, %69
  %cmp37 = fcmp oge float %67, %sub36
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %cond.end.33
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %cond.end.33
  %70 = load float, float* %b0, align 4, !tbaa !14
  %71 = load float, float* %v0, align 4, !tbaa !14
  %cmp40 = fcmp ogt float %70, %71
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %if.end.39
  %72 = load float, float* %b0, align 4, !tbaa !14
  br label %cond.end.43

cond.false.42:                                    ; preds = %if.end.39
  %73 = load float, float* %v0, align 4, !tbaa !14
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi float [ %72, %cond.true.41 ], [ %73, %cond.false.42 ]
  store float %cond44, float* %vv0, align 4, !tbaa !14
  %74 = load float, float* %v1, align 4, !tbaa !14
  store float %74, float* %vv1, align 4, !tbaa !14
  %75 = load float, float* %vv1, align 4, !tbaa !14
  %76 = load float, float* %b1, align 4, !tbaa !14
  %cmp45 = fcmp ogt float %75, %76
  br i1 %cmp45, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %cond.end.43
  %77 = load float, float* %v1, align 4, !tbaa !14
  %78 = load float, float* %b1, align 4, !tbaa !14
  %79 = load float, float* %bsmall, align 4, !tbaa !14
  %add = fadd float %78, %79
  %cmp46 = fcmp olt float %77, %add
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true
  %80 = load float, float* %b1, align 4, !tbaa !14
  store float %80, float* %vv1, align 4, !tbaa !14
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %land.lhs.true, %cond.end.43
  %81 = load float, float* %vv0, align 4, !tbaa !14
  %82 = load float, float* %vv1, align 4, !tbaa !14
  %cmp49 = fcmp oeq float %81, %82
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.48
  %83 = load float, float* %vv0, align 4, !tbaa !14
  %84 = load float, float* %b1, align 4, !tbaa !14
  %cmp52 = fcmp olt float %83, %84
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.56

land.lhs.true.53:                                 ; preds = %if.end.51
  %85 = load float, float* %vv1, align 4, !tbaa !14
  %86 = load float, float* %b1, align 4, !tbaa !14
  %cmp54 = fcmp ogt float %85, %86
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.53
  %87 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 1, i32* %87, align 4, !tbaa !11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %land.lhs.true.53, %if.end.51
  %88 = load i32, i32* %i, align 4, !tbaa !11
  %mul57 = mul nsw i32 2, %88
  %idxprom58 = sext i32 %mul57 to i64
  %89 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params59 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %89, i32 0, i32 1
  %Encode = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params59, i32 0, i32 7
  %90 = load float*, float** %Encode, align 8, !tbaa !55
  %arrayidx60 = getelementptr inbounds float, float* %90, i64 %idxprom58
  %91 = load float, float* %arrayidx60, align 4, !tbaa !14
  store float %91, float* %e0, align 4, !tbaa !14
  %92 = load i32, i32* %i, align 4, !tbaa !11
  %mul61 = mul nsw i32 2, %92
  %add62 = add nsw i32 %mul61, 1
  %idxprom63 = sext i32 %add62 to i64
  %93 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params64 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %93, i32 0, i32 1
  %Encode65 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params64, i32 0, i32 7
  %94 = load float*, float** %Encode65, align 8, !tbaa !55
  %arrayidx66 = getelementptr inbounds float, float* %94, i64 %idxprom63
  %95 = load float, float* %arrayidx66, align 4, !tbaa !14
  store float %95, float* %e1, align 4, !tbaa !14
  %96 = load float, float* %e1, align 4, !tbaa !14
  %97 = load float, float* %e0, align 4, !tbaa !14
  %sub67 = fsub float %96, %97
  %cmp68 = fcmp olt float %sub67, 0.000000e+00
  br i1 %cmp68, label %cond.true.69, label %cond.false.72

cond.true.69:                                     ; preds = %if.end.56
  %98 = load float, float* %e1, align 4, !tbaa !14
  %99 = load float, float* %e0, align 4, !tbaa !14
  %sub70 = fsub float %98, %99
  %sub71 = fsub float -0.000000e+00, %sub70
  br label %cond.end.74

cond.false.72:                                    ; preds = %if.end.56
  %100 = load float, float* %e1, align 4, !tbaa !14
  %101 = load float, float* %e0, align 4, !tbaa !14
  %sub73 = fsub float %100, %101
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.69
  %cond75 = phi float [ %sub71, %cond.true.69 ], [ %sub73, %cond.false.72 ]
  %mul76 = fmul float 0x3EB0C6F7A0000000, %cond75
  store float %mul76, float* %esmall, align 4, !tbaa !14
  %102 = load float, float* %vv0, align 4, !tbaa !14
  %103 = load float, float* %b0, align 4, !tbaa !14
  %cmp77 = fcmp ogt float %102, %103
  br i1 %cmp77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %cond.end.74
  %104 = load float, float* %vv0, align 4, !tbaa !14
  br label %cond.end.80

cond.false.79:                                    ; preds = %cond.end.74
  %105 = load float, float* %b0, align 4, !tbaa !14
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.78
  %cond81 = phi float [ %104, %cond.true.78 ], [ %105, %cond.false.79 ]
  %conv = fpext float %cond81 to double
  store double %conv, double* %vb0, align 8, !tbaa !24
  %106 = load float, float* %vv1, align 4, !tbaa !14
  %107 = load float, float* %b1, align 4, !tbaa !14
  %cmp82 = fcmp olt float %106, %107
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.end.80
  %108 = load float, float* %vv1, align 4, !tbaa !14
  br label %cond.end.86

cond.false.85:                                    ; preds = %cond.end.80
  %109 = load float, float* %b1, align 4, !tbaa !14
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.84
  %cond87 = phi float [ %108, %cond.true.84 ], [ %109, %cond.false.85 ]
  %conv88 = fpext float %cond87 to double
  store double %conv88, double* %vb1, align 8, !tbaa !24
  %110 = load float, float* %b1, align 4, !tbaa !14
  %111 = load float, float* %b0, align 4, !tbaa !14
  %cmp89 = fcmp oeq float %110, %111
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %cond.end.86
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %cond.end.86
  %112 = load double, double* %vb0, align 8, !tbaa !24
  %113 = load float, float* %b0, align 4, !tbaa !14
  %conv93 = fpext float %113 to double
  %sub94 = fsub double %112, %conv93
  %conv95 = fptrunc double %sub94 to float
  %114 = load float, float* %e1, align 4, !tbaa !14
  %115 = load float, float* %e0, align 4, !tbaa !14
  %sub96 = fsub float %114, %115
  %mul97 = fmul float %conv95, %sub96
  %116 = load float, float* %b1, align 4, !tbaa !14
  %117 = load float, float* %b0, align 4, !tbaa !14
  %sub98 = fsub float %116, %117
  %div = fdiv float %mul97, %sub98
  %118 = load float, float* %e0, align 4, !tbaa !14
  %add99 = fadd float %div, %118
  store float %add99, float* %w0, align 4, !tbaa !14
  %119 = load double, double* %vb1, align 8, !tbaa !24
  %120 = load float, float* %b0, align 4, !tbaa !14
  %conv100 = fpext float %120 to double
  %sub101 = fsub double %119, %conv100
  %conv102 = fptrunc double %sub101 to float
  %121 = load float, float* %e1, align 4, !tbaa !14
  %122 = load float, float* %e0, align 4, !tbaa !14
  %sub103 = fsub float %121, %122
  %mul104 = fmul float %conv102, %sub103
  %123 = load float, float* %b1, align 4, !tbaa !14
  %124 = load float, float* %b0, align 4, !tbaa !14
  %sub105 = fsub float %123, %124
  %div106 = fdiv float %mul104, %sub105
  %125 = load float, float* %e0, align 4, !tbaa !14
  %add107 = fadd float %div106, %125
  store float %add107, float* %w1, align 4, !tbaa !14
  %126 = load float, float* %e0, align 4, !tbaa !14
  %127 = load float, float* %e1, align 4, !tbaa !14
  %cmp108 = fcmp ogt float %126, %127
  br i1 %cmp108, label %if.then.110, label %if.else

if.then.110:                                      ; preds = %if.end.92
  %128 = load float, float* %w0, align 4, !tbaa !14
  %129 = load float, float* %e0, align 4, !tbaa !14
  %cmp111 = fcmp ogt float %128, %129
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.118

land.lhs.true.113:                                ; preds = %if.then.110
  %130 = load float, float* %w0, align 4, !tbaa !14
  %131 = load float, float* %esmall, align 4, !tbaa !14
  %sub114 = fsub float %130, %131
  %132 = load float, float* %e0, align 4, !tbaa !14
  %cmp115 = fcmp ole float %sub114, %132
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %land.lhs.true.113
  %133 = load float, float* %e0, align 4, !tbaa !14
  store float %133, float* %w0, align 4, !tbaa !14
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %land.lhs.true.113, %if.then.110
  %134 = load float, float* %w1, align 4, !tbaa !14
  %135 = load float, float* %e1, align 4, !tbaa !14
  %cmp119 = fcmp olt float %134, %135
  br i1 %cmp119, label %land.lhs.true.121, label %if.end.126

land.lhs.true.121:                                ; preds = %if.end.118
  %136 = load float, float* %w1, align 4, !tbaa !14
  %137 = load float, float* %esmall, align 4, !tbaa !14
  %add122 = fadd float %136, %137
  %138 = load float, float* %e1, align 4, !tbaa !14
  %cmp123 = fcmp oge float %add122, %138
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %land.lhs.true.121
  %139 = load float, float* %e1, align 4, !tbaa !14
  store float %139, float* %w1, align 4, !tbaa !14
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %land.lhs.true.121, %if.end.118
  br label %if.end.143

if.else:                                          ; preds = %if.end.92
  %140 = load float, float* %w0, align 4, !tbaa !14
  %141 = load float, float* %e0, align 4, !tbaa !14
  %cmp127 = fcmp olt float %140, %141
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.134

land.lhs.true.129:                                ; preds = %if.else
  %142 = load float, float* %w0, align 4, !tbaa !14
  %143 = load float, float* %esmall, align 4, !tbaa !14
  %add130 = fadd float %142, %143
  %144 = load float, float* %e0, align 4, !tbaa !14
  %cmp131 = fcmp oge float %add130, %144
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %land.lhs.true.129
  %145 = load float, float* %e0, align 4, !tbaa !14
  store float %145, float* %w0, align 4, !tbaa !14
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %land.lhs.true.129, %if.else
  %146 = load float, float* %w1, align 4, !tbaa !14
  %147 = load float, float* %e1, align 4, !tbaa !14
  %cmp135 = fcmp ogt float %146, %147
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.142

land.lhs.true.137:                                ; preds = %if.end.134
  %148 = load float, float* %w1, align 4, !tbaa !14
  %149 = load float, float* %esmall, align 4, !tbaa !14
  %sub138 = fsub float %148, %149
  %150 = load float, float* %e1, align 4, !tbaa !14
  %cmp139 = fcmp ole float %sub138, %150
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %land.lhs.true.137
  %151 = load float, float* %e1, align 4, !tbaa !14
  store float %151, float* %w1, align 4, !tbaa !14
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %land.lhs.true.137, %if.end.134
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.end.126
  %152 = load float, float* %w0, align 4, !tbaa !14
  %153 = load float, float* %w1, align 4, !tbaa !14
  %cmp144 = fcmp ogt float %152, %153
  br i1 %cmp144, label %if.then.146, label %if.else.154

if.then.146:                                      ; preds = %if.end.143
  %154 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom147 = sext i32 %154 to i64
  %155 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params148 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %155, i32 0, i32 1
  %Functions = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params148, i32 0, i32 5
  %156 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !56
  %arrayidx149 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %156, i64 %idxprom147
  %157 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx149, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %157, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %is_monotonic = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 1
  %158 = load i32 (%struct.gs_function_s*, float*, float*, i32*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)** %is_monotonic, align 8, !tbaa !58
  %159 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom150 = sext i32 %159 to i64
  %160 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params151 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %160, i32 0, i32 1
  %Functions152 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params151, i32 0, i32 5
  %161 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions152, align 8, !tbaa !56
  %arrayidx153 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %161, i64 %idxprom150
  %162 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx153, align 8, !tbaa !1
  %163 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  %call = call i32 %158(%struct.gs_function_s* %162, float* %w1, float* %w0, i32* %163) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.154:                                      ; preds = %if.end.143
  %164 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom155 = sext i32 %164 to i64
  %165 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params156 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %165, i32 0, i32 1
  %Functions157 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params156, i32 0, i32 5
  %166 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions157, align 8, !tbaa !56
  %arrayidx158 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %166, i64 %idxprom155
  %167 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx158, align 8, !tbaa !1
  %head159 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %167, i32 0, i32 0
  %procs160 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head159, i32 0, i32 1
  %is_monotonic161 = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs160, i32 0, i32 1
  %168 = load i32 (%struct.gs_function_s*, float*, float*, i32*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)** %is_monotonic161, align 8, !tbaa !58
  %169 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom162 = sext i32 %169 to i64
  %170 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params163 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %170, i32 0, i32 1
  %Functions164 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params163, i32 0, i32 5
  %171 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions164, align 8, !tbaa !56
  %arrayidx165 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %171, i64 %idxprom162
  %172 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx165, align 8, !tbaa !1
  %173 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  %call166 = call i32 %168(%struct.gs_function_s* %172, float* %w0, float* %w1, i32* %173) #5
  store i32 %call166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.154, %if.then.146, %if.then.91, %if.then.55, %if.then.50, %if.then.38
  %174 = bitcast double* %vb1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  %175 = bitcast double* %vb0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #2
  %176 = bitcast float* %vv1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #2
  %177 = bitcast float* %vv0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #2
  %178 = bitcast float* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast float* %w0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  %180 = bitcast float* %e1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast float* %e0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  %182 = bitcast float* %esmall to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast float* %bsmall to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast float* %b1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast float* %b0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.178 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %186 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %186, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %187 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  store i32 0, i32* %187, align 4, !tbaa !11
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

cleanup.178:                                      ; preds = %for.end, %cleanup, %if.then.11
  %188 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #2
  %189 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  %190 = bitcast float* %d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast float* %d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #2
  %192 = bitcast float* %v1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #2
  %193 = bitcast float* %v0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #2
  %194 = bitcast %struct.gs_function_1ItSg_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #2
  %195 = load i32, i32* %retval
  ret i32 %195
}

; Function Attrs: nounwind uwtable
define internal void @fn_1ItSg_get_info(%struct.gs_function_s* %pfn_common, %struct.gs_function_info_s* %pfi) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %pfi.addr = alloca %struct.gs_function_info_s*, align 8
  %pfn = alloca %struct.gs_function_1ItSg_s*, align 8
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store %struct.gs_function_info_s* %pfi, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_1ItSg_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_1ItSg_s*
  store %struct.gs_function_1ItSg_s* %2, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %3 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %4 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  call void @gs_function_get_info_default(%struct.gs_function_s* %3, %struct.gs_function_info_s* %4) #5
  %5 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %5, i32 0, i32 1
  %Functions = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 5
  %6 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !56
  %7 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %Functions1 = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %7, i32 0, i32 2
  store %struct.gs_function_s** %6, %struct.gs_function_s*** %Functions1, align 8, !tbaa !59
  %8 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %8, i32 0, i32 1
  %k = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params2, i32 0, i32 4
  %9 = load i32, i32* %k, align 4, !tbaa !52
  %10 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %num_Functions = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %10, i32 0, i32 3
  store i32 %9, i32* %num_Functions, align 4, !tbaa !62
  %11 = bitcast %struct.gs_function_1ItSg_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_1ItSg_get_params(%struct.gs_function_s* %pfn_common, %struct.gs_param_list_s* %plist) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pfn = alloca %struct.gs_function_1ItSg_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_1ItSg_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_1ItSg_s*
  store %struct.gs_function_1ItSg_s* %2, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %3 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @fn_common_get_params(%struct.gs_function_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %ecode, align 4, !tbaa !11
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %8, i32 0, i32 1
  %Bounds = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 6
  %9 = load float*, float** %Bounds, align 8, !tbaa !54
  %10 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %10, i32 0, i32 1
  %k = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params1, i32 0, i32 4
  %11 = load i32, i32* %k, align 4, !tbaa !52
  %sub = sub nsw i32 %11, 1
  %call2 = call i32 @param_write_float_values(%struct.gs_param_list_s* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), float* %9, i32 %sub, i32 0) #5
  store i32 %call2, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %12, i32* %ecode, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %14 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %14, i32 0, i32 1
  %Encode = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params3, i32 0, i32 7
  %15 = load float*, float** %Encode, align 8, !tbaa !55
  %16 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %16, i32 0, i32 1
  %k5 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params4, i32 0, i32 4
  %17 = load i32, i32* %k5, align 4, !tbaa !52
  %mul = mul nsw i32 2, %17
  %call6 = call i32 @param_write_float_values(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), float* %15, i32 %mul, i32 0) #5
  store i32 %call6, i32* %code, align 4, !tbaa !11
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %18, i32* %ecode, align 4, !tbaa !11
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %19 = load i32, i32* %ecode, align 4, !tbaa !11
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.gs_function_1ItSg_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_1ItSg_make_scaled(%struct.gs_function_1ItSg_s* %pfn, %struct.gs_function_1ItSg_s** %ppsfn, %struct.gs_range_s* %pranges, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_1ItSg_s*, align 8
  %ppsfn.addr = alloca %struct.gs_function_1ItSg_s**, align 8
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psfn = alloca %struct.gs_function_1ItSg_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_1ItSg_s* %pfn, %struct.gs_function_1ItSg_s** %pfn.addr, align 8, !tbaa !1
  store %struct.gs_function_1ItSg_s** %ppsfn, %struct.gs_function_1ItSg_s*** %ppsfn.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_1ItSg_s** %psfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !15
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_function_1ItSg, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.gs_function_1ItSg_s*
  store %struct.gs_function_1ItSg_s* %4, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_function_1ItSg_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %7, i32 0, i32 1
  %8 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %8, i32 0, i32 1
  %9 = bitcast %struct.gs_function_1ItSg_params_s* %params to i8*
  %10 = bitcast %struct.gs_function_1ItSg_params_s* %params1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 64, i32 8, i1 false), !tbaa.struct !48
  %11 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %11, i32 0, i32 1
  %Functions = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params2, i32 0, i32 5
  store %struct.gs_function_s** null, %struct.gs_function_s*** %Functions, align 8, !tbaa !56
  %12 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn.addr, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %12, i32 0, i32 1
  %Bounds = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params3, i32 0, i32 6
  %13 = load float*, float** %Bounds, align 8, !tbaa !54
  %14 = bitcast float* %13 to i8*
  %15 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn.addr, align 8, !tbaa !1
  %params4 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %15, i32 0, i32 1
  %k = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params4, i32 0, i32 4
  %16 = load i32, i32* %k, align 4, !tbaa !52
  %sub = sub nsw i32 %16, 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call5 = call i8* @fn_copy_values(i8* %14, i32 %sub, i32 4, %struct.gs_memory_s* %17) #5
  %18 = bitcast i8* %call5 to float*
  %19 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %19, i32 0, i32 1
  %Bounds7 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params6, i32 0, i32 6
  store float* %18, float** %Bounds7, align 8, !tbaa !54
  %20 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn.addr, align 8, !tbaa !1
  %params8 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %20, i32 0, i32 1
  %Encode = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params8, i32 0, i32 7
  %21 = load float*, float** %Encode, align 8, !tbaa !55
  %22 = bitcast float* %21 to i8*
  %23 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn.addr, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %23, i32 0, i32 1
  %k10 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params9, i32 0, i32 4
  %24 = load i32, i32* %k10, align 4, !tbaa !52
  %mul = mul nsw i32 2, %24
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call11 = call i8* @fn_copy_values(i8* %22, i32 %mul, i32 4, %struct.gs_memory_s* %25) #5
  %26 = bitcast i8* %call11 to float*
  %27 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %27, i32 0, i32 1
  %Encode13 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params12, i32 0, i32 7
  store float* %26, float** %Encode13, align 8, !tbaa !55
  %28 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %28, i32 0, i32 1
  %Bounds15 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params14, i32 0, i32 6
  %29 = load float*, float** %Bounds15, align 8, !tbaa !54
  %cmp16 = icmp eq float* %29, null
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %30 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %30, i32 0, i32 1
  %Encode18 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params17, i32 0, i32 7
  %31 = load float*, float** %Encode18, align 8, !tbaa !55
  %cmp19 = icmp eq float* %31, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %32 = phi i1 [ true, %if.end ], [ %cmp19, %lor.rhs ]
  %cond = select i1 %32, i32 -25, i32 0
  store i32 %cond, i32* %code, align 4, !tbaa !11
  %cmp20 = icmp slt i32 %cond, 0
  br i1 %cmp20, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %33 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %34 = bitcast %struct.gs_function_1ItSg_s* %33 to %struct.gs_function_s*
  %35 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gs_function_1ItSg_s* %35 to %struct.gs_function_s*
  %37 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call21 = call i32 @fn_common_scale(%struct.gs_function_s* %34, %struct.gs_function_s* %36, %struct.gs_range_s* %37, %struct.gs_memory_s* %38) #5
  store i32 %call21, i32* %code, align 4, !tbaa !11
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.31, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %39 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %params24 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %39, i32 0, i32 1
  %Functions25 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params24, i32 0, i32 5
  %40 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn.addr, align 8, !tbaa !1
  %params26 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %40, i32 0, i32 1
  %Functions27 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params26, i32 0, i32 5
  %41 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions27, align 8, !tbaa !56
  %42 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %pfn.addr, align 8, !tbaa !1
  %params28 = getelementptr inbounds %struct.gs_function_1ItSg_s, %struct.gs_function_1ItSg_s* %42, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params28, i32 0, i32 2
  %43 = load i32, i32* %n, align 4, !tbaa !51
  %44 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call29 = call i32 @fn_scale_functions(%struct.gs_function_s*** %Functions25, %struct.gs_function_s** %41, i32 %43, %struct.gs_range_s* %44, i32 0, %struct.gs_memory_s* %45) #5
  store i32 %call29, i32* %code, align 4, !tbaa !11
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false, %lor.end
  %46 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %47 = bitcast %struct.gs_function_1ItSg_s* %46 to %struct.gs_function_s*
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %47, i32 0, i32 0
  %procs32 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs32, i32 0, i32 6
  %48 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !32
  %49 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %50 = bitcast %struct.gs_function_1ItSg_s* %49 to %struct.gs_function_s*
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void %48(%struct.gs_function_s* %50, i32 1, %struct.gs_memory_s* %51) #5
  %52 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %lor.lhs.false.23
  %53 = load %struct.gs_function_1ItSg_s*, %struct.gs_function_1ItSg_s** %psfn, align 8, !tbaa !1
  %54 = load %struct.gs_function_1ItSg_s**, %struct.gs_function_1ItSg_s*** %ppsfn.addr, align 8, !tbaa !1
  store %struct.gs_function_1ItSg_s* %53, %struct.gs_function_1ItSg_s** %54, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.31, %if.then
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast %struct.gs_function_1ItSg_s** %psfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_function_1ItSg_serialize(%struct.gs_function_s* %pfn, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %n = alloca i32, align 4
  %p = alloca %struct.gs_function_1ItSg_params_s*, align 8
  %code = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_function_1ItSg_params_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %2, i32 0, i32 1
  %3 = bitcast %struct.gs_function_params_s* %params to %struct.gs_function_1ItSg_params_s*
  store %struct.gs_function_1ItSg_params_s* %3, %struct.gs_function_1ItSg_params_s** %p, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @fn_common_serialize(%struct.gs_function_s* %5, %struct.stream_s* %6) #5
  store i32 %call, i32* %code, align 4, !tbaa !11
  %7 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %p, align 8, !tbaa !1
  %k1 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %11, i32 0, i32 4
  %12 = bitcast i32* %k1 to i8*
  %call2 = call i32 @sputs(%struct.stream_s* %10, i8* %12, i32 4, i32* %n) #5
  store i32 %call2, i32* %code, align 4, !tbaa !11
  %13 = load i32, i32* %code, align 4, !tbaa !11
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %k, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %15 = load i32, i32* %k, align 4, !tbaa !11
  %16 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %p, align 8, !tbaa !1
  %k6 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %16, i32 0, i32 4
  %17 = load i32, i32* %k6, align 4, !tbaa !42
  %cmp7 = icmp slt i32 %15, %17
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %18 = load i32, i32* %code, align 4, !tbaa !11
  %cmp8 = icmp sge i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %20 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %p, align 8, !tbaa !1
  %Functions = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %21, i32 0, i32 5
  %22 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %22, i64 %idxprom
  %23 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %23, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %serialize = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 7
  %24 = load i32 (%struct.gs_function_s*, %struct.stream_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)** %serialize, align 8, !tbaa !63
  %25 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom9 = sext i32 %25 to i64
  %26 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %p, align 8, !tbaa !1
  %Functions10 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %26, i32 0, i32 5
  %27 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions10, align 8, !tbaa !41
  %arrayidx11 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %27, i64 %idxprom9
  %28 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx11, align 8, !tbaa !1
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call12 = call i32 %24(%struct.gs_function_s* %28, %struct.stream_s* %29) #5
  store i32 %call12, i32* %code, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %k, align 4, !tbaa !11
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %k, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %land.end
  %31 = load i32, i32* %code, align 4, !tbaa !11
  %cmp13 = icmp slt i32 %31, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.end
  %32 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %for.end
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %34 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %p, align 8, !tbaa !1
  %Bounds = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %34, i32 0, i32 6
  %35 = load float*, float** %Bounds, align 8, !tbaa !40
  %arrayidx16 = getelementptr inbounds float, float* %35, i64 0
  %36 = bitcast float* %arrayidx16 to i8*
  %37 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %p, align 8, !tbaa !1
  %k17 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %37, i32 0, i32 4
  %38 = load i32, i32* %k17, align 4, !tbaa !42
  %sub = sub nsw i32 %38, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 4, %conv
  %conv18 = trunc i64 %mul to i32
  %call19 = call i32 @sputs(%struct.stream_s* %33, i8* %36, i32 %conv18, i32* %n) #5
  store i32 %call19, i32* %code, align 4, !tbaa !11
  %39 = load i32, i32* %code, align 4, !tbaa !11
  %cmp20 = icmp slt i32 %39, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  %40 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.15
  %41 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %42 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %p, align 8, !tbaa !1
  %Encode = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %42, i32 0, i32 7
  %43 = load float*, float** %Encode, align 8, !tbaa !38
  %arrayidx24 = getelementptr inbounds float, float* %43, i64 0
  %44 = bitcast float* %arrayidx24 to i8*
  %45 = load %struct.gs_function_1ItSg_params_s*, %struct.gs_function_1ItSg_params_s** %p, align 8, !tbaa !1
  %k25 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %45, i32 0, i32 4
  %46 = load i32, i32* %k25, align 4, !tbaa !42
  %mul26 = mul nsw i32 %46, 2
  %conv27 = sext i32 %mul26 to i64
  %mul28 = mul i64 4, %conv27
  %conv29 = trunc i64 %mul28 to i32
  %call30 = call i32 @sputs(%struct.stream_s* %41, i8* %44, i32 %conv29, i32* %n) #5
  store i32 %call30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.22, %if.then.14, %if.then.4, %if.then
  %47 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast %struct.gs_function_1ItSg_params_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define void @gs_function_AdOt_free_params(%struct.gs_function_AdOt_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %params.addr = alloca %struct.gs_function_AdOt_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_function_AdOt_params_s* %params, %struct.gs_function_AdOt_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %params.addr, align 8, !tbaa !1
  %Functions = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %0, i32 0, i32 4
  %1 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !64
  %2 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %params.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %2, i32 0, i32 2
  %3 = load i32, i32* %n, align 4, !tbaa !66
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @fn_free_functions(%struct.gs_function_s** %1, i32 %3, %struct.gs_memory_s* %4) #5
  %5 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %params.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_function_AdOt_params_s* %5 to %struct.gs_function_params_s*
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @fn_common_free_params(%struct.gs_function_params_s* %6, %struct.gs_memory_s* %7) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_function_AdOt_init(%struct.gs_function_s** %ppfn, %struct.gs_function_AdOt_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %params.addr = alloca %struct.gs_function_AdOt_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pfn = alloca %struct.gs_function_AdOt_s*, align 8
  %domain = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %dom = alloca float*, align 8
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_AdOt_params_s* %params, %struct.gs_function_AdOt_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %params.addr, align 8, !tbaa !1
  %m1 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %1, i32 0, i32 0
  %2 = load i32, i32* %m1, align 4, !tbaa !67
  store i32 %2, i32* %m, align 4, !tbaa !11
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %params.addr, align 8, !tbaa !1
  %n2 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %4, i32 0, i32 2
  %5 = load i32, i32* %n2, align 4, !tbaa !66
  store i32 %5, i32* %n, align 4, !tbaa !11
  %6 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* null, %struct.gs_function_s** %6, align 8, !tbaa !1
  %7 = load i32, i32* %m, align 4, !tbaa !11
  %cmp = icmp sle i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %n, align 4, !tbaa !11
  %cmp3 = icmp sle i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end:                                           ; preds = %lor.lhs.false
  %9 = bitcast %struct.gs_function_AdOt_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %11 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !15
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %11(%struct.gs_memory_s* %12, %struct.gs_memory_struct_type_s* @st_function_AdOt, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0)) #5
  %13 = bitcast i8* %call to %struct.gs_function_AdOt_s*
  store %struct.gs_function_AdOt_s* %13, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %14 = bitcast float** %domain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 10
  %16 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !68
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load i32, i32* %m, align 4, !tbaa !11
  %mul = mul nsw i32 2, %18
  %call5 = call i8* %16(%struct.gs_memory_s* %17, i32 %mul, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0)) #5
  %19 = bitcast i8* %call5 to float*
  store float* %19, float** %domain, align 8, !tbaa !1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gs_function_AdOt_s* %22, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %23 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %23, i32 0, i32 1
  %24 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %params.addr, align 8, !tbaa !1
  %25 = bitcast %struct.gs_function_AdOt_params_s* %params9 to i8*
  %26 = bitcast %struct.gs_function_AdOt_params_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 40, i32 8, i1 false), !tbaa.struct !69
  %27 = load float*, float** %domain, align 8, !tbaa !1
  %28 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %28, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params10, i32 0, i32 1
  store float* %27, float** %Domain, align 8, !tbaa !70
  %29 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params11 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %29, i32 0, i32 1
  %Range = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params11, i32 0, i32 3
  store float* null, float** %Range, align 8, !tbaa !72
  %30 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %30, i32 0, i32 0
  %31 = bitcast %struct.gs_function_head_s* %head to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast (%struct.gs_function_head_s* @gs_function_AdOt_init.function_AdOt_head to i8*), i64 72, i32 8, i1 false), !tbaa.struct !23
  %32 = load float*, float** %domain, align 8, !tbaa !1
  %cmp12 = icmp eq float* %32, null
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.8
  %33 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %34 = bitcast %struct.gs_function_AdOt_s* %33 to %struct.gs_function_s*
  %head14 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %34, i32 0, i32 0
  %procs15 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head14, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs15, i32 0, i32 6
  %35 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !32
  %36 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %37 = bitcast %struct.gs_function_AdOt_s* %36 to %struct.gs_function_s*
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void %35(%struct.gs_function_s* %37, i32 1, %struct.gs_memory_s* %38) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.8
  %39 = load float*, float** %domain, align 8, !tbaa !1
  %40 = bitcast float* %39 to i8*
  %41 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %params.addr, align 8, !tbaa !1
  %Functions = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %41, i32 0, i32 4
  %42 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !64
  %arrayidx = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %42, i64 0
  %43 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %43, i32 0, i32 1
  %Domain18 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params17, i32 0, i32 1
  %44 = load float*, float** %Domain18, align 8, !tbaa !73
  %45 = bitcast float* %44 to i8*
  %46 = load i32, i32* %m, align 4, !tbaa !11
  %conv = sext i32 %46 to i64
  %mul19 = mul i64 8, %conv
  %call20 = call i8* @memcpy(i8* %40, i8* %45, i64 %mul19) #7
  store i32 1, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.end.16
  %47 = load i32, i32* %i, align 4, !tbaa !11
  %48 = load i32, i32* %n, align 4, !tbaa !11
  %cmp21 = icmp slt i32 %47, %48
  br i1 %cmp21, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %49 = bitcast float** %dom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #2
  %50 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %params.addr, align 8, !tbaa !1
  %Functions23 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %51, i32 0, i32 4
  %52 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions23, align 8, !tbaa !64
  %arrayidx24 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %52, i64 %idxprom
  %53 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx24, align 8, !tbaa !1
  %params25 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %53, i32 0, i32 1
  %Domain26 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params25, i32 0, i32 1
  %54 = load float*, float** %Domain26, align 8, !tbaa !73
  store float* %54, float** %dom, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !11
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %for.body
  %55 = load i32, i32* %j, align 4, !tbaa !11
  %56 = load i32, i32* %m, align 4, !tbaa !11
  %mul28 = mul nsw i32 2, %56
  %cmp29 = icmp slt i32 %55, %mul28
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.27
  %57 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom32 = sext i32 %57 to i64
  %58 = load float*, float** %domain, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds float, float* %58, i64 %idxprom32
  %59 = load float, float* %arrayidx33, align 4, !tbaa !14
  %60 = load float*, float** %dom, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds float, float* %60, i64 0
  %61 = load float, float* %arrayidx34, align 4, !tbaa !14
  %cmp35 = fcmp ogt float %59, %61
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.31
  %62 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom37 = sext i32 %62 to i64
  %63 = load float*, float** %domain, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds float, float* %63, i64 %idxprom37
  %64 = load float, float* %arrayidx38, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %for.body.31
  %65 = load float*, float** %dom, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds float, float* %65, i64 0
  %66 = load float, float* %arrayidx39, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %64, %cond.true ], [ %66, %cond.false ]
  %67 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom40 = sext i32 %67 to i64
  %68 = load float*, float** %domain, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds float, float* %68, i64 %idxprom40
  store float %cond, float* %arrayidx41, align 4, !tbaa !14
  %69 = load i32, i32* %j, align 4, !tbaa !11
  %add = add nsw i32 %69, 1
  %idxprom42 = sext i32 %add to i64
  %70 = load float*, float** %domain, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds float, float* %70, i64 %idxprom42
  %71 = load float, float* %arrayidx43, align 4, !tbaa !14
  %72 = load float*, float** %dom, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds float, float* %72, i64 1
  %73 = load float, float* %arrayidx44, align 4, !tbaa !14
  %cmp45 = fcmp olt float %71, %73
  br i1 %cmp45, label %cond.true.47, label %cond.false.51

cond.true.47:                                     ; preds = %cond.end
  %74 = load i32, i32* %j, align 4, !tbaa !11
  %add48 = add nsw i32 %74, 1
  %idxprom49 = sext i32 %add48 to i64
  %75 = load float*, float** %domain, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds float, float* %75, i64 %idxprom49
  %76 = load float, float* %arrayidx50, align 4, !tbaa !14
  br label %cond.end.53

cond.false.51:                                    ; preds = %cond.end
  %77 = load float*, float** %dom, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds float, float* %77, i64 1
  %78 = load float, float* %arrayidx52, align 4, !tbaa !14
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.47
  %cond54 = phi float [ %76, %cond.true.47 ], [ %78, %cond.false.51 ]
  %79 = load i32, i32* %j, align 4, !tbaa !11
  %add55 = add nsw i32 %79, 1
  %idxprom56 = sext i32 %add55 to i64
  %80 = load float*, float** %domain, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds float, float* %80, i64 %idxprom56
  store float %cond54, float* %arrayidx57, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %cond.end.53
  %81 = load i32, i32* %j, align 4, !tbaa !11
  %add58 = add nsw i32 %81, 2
  store i32 %add58, i32* %j, align 4, !tbaa !11
  %82 = load float*, float** %dom, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %82, i64 2
  store float* %add.ptr, float** %dom, align 8, !tbaa !1
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  %83 = bitcast float** %dom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end
  %84 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  %85 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %86 = bitcast %struct.gs_function_AdOt_s* %85 to %struct.gs_function_s*
  %87 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %86, %struct.gs_function_s** %87, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.60, %if.then.13, %if.then.7
  %88 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast float** %domain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast %struct.gs_function_AdOt_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.64 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %cleanup.cont, %cleanup, %if.then
  %92 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_AdOt_evaluate(%struct.gs_function_s* %pfn_common, float* %in0, float* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %in0.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %pfn = alloca %struct.gs_function_AdOt_s*, align 8
  %in = alloca float*, align 8
  %in_buf = alloca [16 x float], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %in0, float** %in0.addr, align 8, !tbaa !1
  store float* %out, float** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_AdOt_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_AdOt_s*
  store %struct.gs_function_AdOt_s* %2, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %3 = bitcast float** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load float*, float** %in0.addr, align 8, !tbaa !1
  store float* %4, float** %in, align 8, !tbaa !1
  %5 = bitcast [16 x float]* %in_buf to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #2
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load float*, float** %in, align 8, !tbaa !1
  %8 = load float*, float** %out.addr, align 8, !tbaa !1
  %9 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %9, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params, i32 0, i32 2
  %10 = load i32, i32* %n, align 4, !tbaa !74
  %sub = sub nsw i32 %10, 1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds float, float* %8, i64 %idx.ext
  %cmp = icmp ule float* %7, %add.ptr
  br i1 %cmp, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %entry
  %11 = load float*, float** %out.addr, align 8, !tbaa !1
  %12 = load float*, float** %in, align 8, !tbaa !1
  %13 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %13, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params1, i32 0, i32 0
  %14 = load i32, i32* %m, align 4, !tbaa !75
  %sub2 = sub nsw i32 %14, 1
  %idx.ext3 = sext i32 %sub2 to i64
  %add.ptr4 = getelementptr inbounds float, float* %12, i64 %idx.ext3
  %cmp5 = icmp ule float* %11, %add.ptr4
  br i1 %cmp5, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params6 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %15, i32 0, i32 1
  %m7 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params6, i32 0, i32 0
  %16 = load i32, i32* %m7, align 4, !tbaa !75
  %cmp8 = icmp sgt i32 %16, 16
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end:                                           ; preds = %if.then
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %in_buf, i32 0, i32 0
  %17 = bitcast float* %arraydecay to i8*
  %18 = load float*, float** %in, align 8, !tbaa !1
  %19 = bitcast float* %18 to i8*
  %20 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params10 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %20, i32 0, i32 1
  %m11 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params10, i32 0, i32 0
  %21 = load i32, i32* %m11, align 4, !tbaa !75
  %conv = sext i32 %21 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @memcpy(i8* %17, i8* %19, i64 %mul) #7
  %arraydecay12 = getelementptr inbounds [16 x float], [16 x float]* %in_buf, i32 0, i32 0
  store float* %arraydecay12, float** %in, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %22 = load i32, i32* %i, align 4, !tbaa !11
  %23 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %23, i32 0, i32 1
  %n15 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params14, i32 0, i32 2
  %24 = load i32, i32* %n15, align 4, !tbaa !74
  %cmp16 = icmp slt i32 %22, %24
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params18 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %27, i32 0, i32 1
  %Functions = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params18, i32 0, i32 4
  %28 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !76
  %arrayidx = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %28, i64 %idxprom
  %29 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %29, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %evaluate = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 0
  %30 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate, align 8, !tbaa !57
  %31 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom19 = sext i32 %31 to i64
  %32 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params20 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %32, i32 0, i32 1
  %Functions21 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params20, i32 0, i32 4
  %33 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions21, align 8, !tbaa !76
  %arrayidx22 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %33, i64 %idxprom19
  %34 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx22, align 8, !tbaa !1
  %35 = load float*, float** %in, align 8, !tbaa !1
  %36 = load float*, float** %out.addr, align 8, !tbaa !1
  %37 = load i32, i32* %i, align 4, !tbaa !11
  %idx.ext23 = sext i32 %37 to i64
  %add.ptr24 = getelementptr inbounds float, float* %36, i64 %idx.ext23
  %call25 = call i32 %30(%struct.gs_function_s* %34, float* %35, float* %add.ptr24) #5
  store i32 %call25, i32* %code, align 4, !tbaa !11
  %38 = load i32, i32* %code, align 4, !tbaa !11
  %cmp26 = icmp slt i32 %38, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  %39 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.28
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %41 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %for.end, %cleanup, %if.then.9
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast [16 x float]* %in_buf to i8*
  call void @llvm.lifetime.end(i64 64, i8* %43) #2
  %44 = bitcast float** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast %struct.gs_function_AdOt_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @fn_AdOt_is_monotonic(%struct.gs_function_s* %pfn_common, float* %lower, float* %upper, i32* %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %lower.addr = alloca float*, align 8
  %upper.addr = alloca float*, align 8
  %mask.addr = alloca i32*, align 8
  %pfn = alloca %struct.gs_function_AdOt_s*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store float* %lower, float** %lower.addr, align 8, !tbaa !1
  store float* %upper, float** %upper.addr, align 8, !tbaa !1
  store i32* %mask, i32** %mask.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_AdOt_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_AdOt_s*
  store %struct.gs_function_AdOt_s* %2, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !11
  %5 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %5, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params, i32 0, i32 2
  %6 = load i32, i32* %n, align 4, !tbaa !74
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %9, i32 0, i32 1
  %Functions = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params1, i32 0, i32 4
  %10 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !76
  %arrayidx = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %10, i64 %idxprom
  %11 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %11, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %is_monotonic = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 1
  %12 = load i32 (%struct.gs_function_s*, float*, float*, i32*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)** %is_monotonic, align 8, !tbaa !58
  %13 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom2 = sext i32 %13 to i64
  %14 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params3 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %14, i32 0, i32 1
  %Functions4 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params3, i32 0, i32 4
  %15 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions4, align 8, !tbaa !76
  %arrayidx5 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %15, i64 %idxprom2
  %16 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx5, align 8, !tbaa !1
  %17 = load float*, float** %lower.addr, align 8, !tbaa !1
  %18 = load float*, float** %upper.addr, align 8, !tbaa !1
  %19 = load i32*, i32** %mask.addr, align 8, !tbaa !1
  %call = call i32 %12(%struct.gs_function_s* %16, float* %17, float* %18, i32* %19) #5
  store i32 %call, i32* %code, align 4, !tbaa !11
  %20 = load i32, i32* %code, align 4, !tbaa !11
  %cmp6 = icmp sle i32 %20, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %23 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.7

cleanup.7:                                        ; preds = %for.end, %cleanup
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast %struct.gs_function_AdOt_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @fn_AdOt_get_info(%struct.gs_function_s* %pfn_common, %struct.gs_function_info_s* %pfi) #0 {
entry:
  %pfn_common.addr = alloca %struct.gs_function_s*, align 8
  %pfi.addr = alloca %struct.gs_function_info_s*, align 8
  %pfn = alloca %struct.gs_function_AdOt_s*, align 8
  store %struct.gs_function_s* %pfn_common, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  store %struct.gs_function_info_s* %pfi, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_AdOt_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_function_s* %1 to %struct.gs_function_AdOt_s*
  store %struct.gs_function_AdOt_s* %2, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %3 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn_common.addr, align 8, !tbaa !1
  %4 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  call void @gs_function_get_info_default(%struct.gs_function_s* %3, %struct.gs_function_info_s* %4) #5
  %5 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %5, i32 0, i32 1
  %Functions = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params, i32 0, i32 4
  %6 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !76
  %7 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %Functions1 = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %7, i32 0, i32 2
  store %struct.gs_function_s** %6, %struct.gs_function_s*** %Functions1, align 8, !tbaa !59
  %8 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %8, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params2, i32 0, i32 2
  %9 = load i32, i32* %n, align 4, !tbaa !74
  %10 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !1
  %num_Functions = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %10, i32 0, i32 3
  store i32 %9, i32* %num_Functions, align 4, !tbaa !62
  %11 = bitcast %struct.gs_function_AdOt_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret void
}

declare i32 @fn_common_get_params(%struct.gs_function_s*, %struct.gs_param_list_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fn_AdOt_make_scaled(%struct.gs_function_AdOt_s* %pfn, %struct.gs_function_AdOt_s** %ppsfn, %struct.gs_range_s* %pranges, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_AdOt_s*, align 8
  %ppsfn.addr = alloca %struct.gs_function_AdOt_s**, align 8
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psfn = alloca %struct.gs_function_AdOt_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_AdOt_s* %pfn, %struct.gs_function_AdOt_s** %pfn.addr, align 8, !tbaa !1
  store %struct.gs_function_AdOt_s** %ppsfn, %struct.gs_function_AdOt_s*** %ppsfn.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_AdOt_s** %psfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !15
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_function_AdOt, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #5
  %4 = bitcast i8* %call to %struct.gs_function_AdOt_s*
  store %struct.gs_function_AdOt_s* %4, %struct.gs_function_AdOt_s** %psfn, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %psfn, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_function_AdOt_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %psfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %7, i32 0, i32 1
  %8 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn.addr, align 8, !tbaa !1
  %params1 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %8, i32 0, i32 1
  %9 = bitcast %struct.gs_function_AdOt_params_s* %params to i8*
  %10 = bitcast %struct.gs_function_AdOt_params_s* %params1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 40, i32 8, i1 false), !tbaa.struct !69
  %11 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %psfn, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %11, i32 0, i32 1
  %Functions = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params2, i32 0, i32 4
  store %struct.gs_function_s** null, %struct.gs_function_s*** %Functions, align 8, !tbaa !76
  %12 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %psfn, align 8, !tbaa !1
  %13 = bitcast %struct.gs_function_AdOt_s* %12 to %struct.gs_function_s*
  %14 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_function_AdOt_s* %14 to %struct.gs_function_s*
  %16 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call3 = call i32 @fn_common_scale(%struct.gs_function_s* %13, %struct.gs_function_s* %15, %struct.gs_range_s* %16, %struct.gs_memory_s* %17) #5
  store i32 %call3, i32* %code, align 4, !tbaa !11
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %18 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %psfn, align 8, !tbaa !1
  %params5 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %18, i32 0, i32 1
  %Functions6 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params5, i32 0, i32 4
  %19 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn.addr, align 8, !tbaa !1
  %params7 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %19, i32 0, i32 1
  %Functions8 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params7, i32 0, i32 4
  %20 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions8, align 8, !tbaa !76
  %21 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %pfn.addr, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_function_AdOt_s, %struct.gs_function_AdOt_s* %21, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %params9, i32 0, i32 2
  %22 = load i32, i32* %n, align 4, !tbaa !74
  %23 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call10 = call i32 @fn_scale_functions(%struct.gs_function_s*** %Functions6, %struct.gs_function_s** %20, i32 %22, %struct.gs_range_s* %23, i32 1, %struct.gs_memory_s* %24) #5
  store i32 %call10, i32* %code, align 4, !tbaa !11
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %25 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %psfn, align 8, !tbaa !1
  %26 = bitcast %struct.gs_function_AdOt_s* %25 to %struct.gs_function_s*
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %26, i32 0, i32 0
  %procs13 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs13, i32 0, i32 6
  %27 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !32
  %28 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %psfn, align 8, !tbaa !1
  %29 = bitcast %struct.gs_function_AdOt_s* %28 to %struct.gs_function_s*
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void %27(%struct.gs_function_s* %29, i32 1, %struct.gs_memory_s* %30) #5
  %31 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %lor.lhs.false
  %32 = load %struct.gs_function_AdOt_s*, %struct.gs_function_AdOt_s** %psfn, align 8, !tbaa !1
  %33 = load %struct.gs_function_AdOt_s**, %struct.gs_function_AdOt_s*** %ppsfn.addr, align 8, !tbaa !1
  store %struct.gs_function_AdOt_s* %32, %struct.gs_function_AdOt_s** %33, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast %struct.gs_function_AdOt_s** %psfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_function_AdOt_serialize(%struct.gs_function_s* %pfn, %struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %p = alloca %struct.gs_function_AdOt_params_s*, align 8
  %code = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_AdOt_params_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %1, i32 0, i32 1
  %2 = bitcast %struct.gs_function_params_s* %params to %struct.gs_function_AdOt_params_s*
  store %struct.gs_function_AdOt_params_s* %2, %struct.gs_function_AdOt_params_s** %p, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @fn_common_serialize(%struct.gs_function_s* %4, %struct.stream_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !11
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %k, align 4, !tbaa !11
  %10 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %p, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %10, i32 0, i32 2
  %11 = load i32, i32* %n, align 4, !tbaa !66
  %cmp1 = icmp slt i32 %9, %11
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, i32* %code, align 4, !tbaa !11
  %cmp2 = icmp sge i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %p, align 8, !tbaa !1
  %Functions = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %15, i32 0, i32 4
  %16 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions, align 8, !tbaa !64
  %arrayidx = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %16, i64 %idxprom
  %17 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %17, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %serialize = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 7
  %18 = load i32 (%struct.gs_function_s*, %struct.stream_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)** %serialize, align 8, !tbaa !63
  %19 = load i32, i32* %k, align 4, !tbaa !11
  %idxprom3 = sext i32 %19 to i64
  %20 = load %struct.gs_function_AdOt_params_s*, %struct.gs_function_AdOt_params_s** %p, align 8, !tbaa !1
  %Functions4 = getelementptr inbounds %struct.gs_function_AdOt_params_s, %struct.gs_function_AdOt_params_s* %20, i32 0, i32 4
  %21 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions4, align 8, !tbaa !64
  %arrayidx5 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %21, i64 %idxprom3
  %22 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx5, align 8, !tbaa !1
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call6 = call i32 %18(%struct.gs_function_s* %22, %struct.stream_s* %23) #5
  store i32 %call6, i32* %code, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %k, align 4, !tbaa !11
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %k, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %land.end
  %25 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %26 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct.gs_function_AdOt_params_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare double @pow(double, double) #4

declare i32 @param_write_float_values(%struct.gs_param_list_s*, i8*, float*, i32, i32) #1

declare i32 @param_write_float(%struct.gs_param_list_s*, i8*, float*) #1

declare i8* @fn_copy_values(i8*, i32, i32, %struct.gs_memory_s*) #1

declare i32 @fn_common_scale(%struct.gs_function_s*, %struct.gs_function_s*, %struct.gs_range_s*, %struct.gs_memory_s*) #1

declare i32 @fn_common_serialize(%struct.gs_function_s*, %struct.stream_s*) #1

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fn_scale_functions(%struct.gs_function_s*** %ppsfns, %struct.gs_function_s** %pfns, i32 %count, %struct.gs_range_s* %pranges, i32 %step_ranges, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppsfns.addr = alloca %struct.gs_function_s***, align 8
  %pfns.addr = alloca %struct.gs_function_s**, align 8
  %count.addr = alloca i32, align 4
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %step_ranges.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psfns = alloca %struct.gs_function_s**, align 8
  %code = alloca i32, align 4
  %ranges = alloca %struct.gs_range_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code2 = alloca i32, align 4
  store %struct.gs_function_s*** %ppsfns, %struct.gs_function_s**** %ppsfns.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %pfns, %struct.gs_function_s*** %pfns.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !11
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  store i32 %step_ranges, i32* %step_ranges.addr, align 4, !tbaa !11
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_s*** %psfns to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %count.addr, align 4, !tbaa !11
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @alloc_function_array(i32 %2, %struct.gs_function_s*** %psfns, %struct.gs_memory_s* %3) #5
  store i32 %call, i32* %code, align 4, !tbaa !11
  %4 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %5, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %code, align 4, !tbaa !11
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !11
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.13

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !11
  %10 = load i32, i32* %count.addr, align 4, !tbaa !11
  %cmp1 = icmp slt i32 %9, %10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.gs_function_s**, %struct.gs_function_s*** %pfns.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %13, i64 %idxprom
  %14 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %14, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %make_scaled = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 4
  %15 = load i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)** %make_scaled, align 8, !tbaa !77
  %16 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom3 = sext i32 %16 to i64
  %17 = load %struct.gs_function_s**, %struct.gs_function_s*** %pfns.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %17, i64 %idxprom3
  %18 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx4, align 8, !tbaa !1
  %19 = load i32, i32* %i, align 4, !tbaa !11
  %idxprom5 = sext i32 %19 to i64
  %20 = load %struct.gs_function_s**, %struct.gs_function_s*** %psfns, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %20, i64 %idxprom5
  %21 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call7 = call i32 %15(%struct.gs_function_s* %18, %struct.gs_function_s** %arrayidx6, %struct.gs_range_s* %21, %struct.gs_memory_s* %22) #5
  store i32 %call7, i32* %code2, align 4, !tbaa !11
  %23 = load i32, i32* %code2, align 4, !tbaa !11
  %cmp8 = icmp slt i32 %23, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  %24 = load %struct.gs_function_s**, %struct.gs_function_s*** %psfns, align 8, !tbaa !1
  %25 = load i32, i32* %count.addr, align 4, !tbaa !11
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @fn_free_functions(%struct.gs_function_s** %24, i32 %25, %struct.gs_memory_s* %26) #5
  %27 = load i32, i32* %code2, align 4, !tbaa !11
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %for.body
  %28 = load i32, i32* %step_ranges.addr, align 4, !tbaa !11
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.10
  %29 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %29, i32 1
  store %struct.gs_range_s* %incdec.ptr, %struct.gs_range_s** %ranges, align 8, !tbaa !1
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.9
  %30 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %31 = load i32, i32* %i, align 4, !tbaa !11
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.gs_function_s**, %struct.gs_function_s*** %psfns, align 8, !tbaa !1
  %33 = load %struct.gs_function_s***, %struct.gs_function_s**** %ppsfns.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %32, %struct.gs_function_s*** %33, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.13

cleanup.13:                                       ; preds = %for.end, %cleanup, %if.then
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast %struct.gs_range_s** %ranges to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast %struct.gs_function_s*** %psfns to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @alloc_function_array(i32, %struct.gs_function_s***, %struct.gs_memory_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 40}
!6 = !{!"gs_function_ElIn_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !8, i64 48}
!7 = !{!"int", !3, i64 0}
!8 = !{!"float", !3, i64 0}
!9 = !{!6, !2, i64 32}
!10 = !{!6, !7, i64 16}
!11 = !{!7, !7, i64 0}
!12 = !{!6, !8, i64 48}
!13 = !{!6, !2, i64 8}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !2, i64 72}
!16 = !{!"gs_memory_s", !2, i64 0, !17, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!17 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!18 = !{i64 0, i64 4, !11, i64 8, i64 8, !1, i64 16, i64 4, !11, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 4, !14}
!19 = !{!20, !7, i64 72}
!20 = !{!"gs_function_ElIn_s", !21, i64 0, !6, i64 72}
!21 = !{!"gs_function_head_s", !7, i64 0, !22, i64 8}
!22 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!23 = !{i64 0, i64 4, !11, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !3, i64 0}
!26 = !{!20, !2, i64 80}
!27 = !{!20, !8, i64 120}
!28 = !{!20, !7, i64 88}
!29 = !{!20, !2, i64 104}
!30 = !{!20, !2, i64 112}
!31 = !{!20, !2, i64 96}
!32 = !{!33, !2, i64 56}
!33 = !{!"gs_function_s", !21, i64 0, !34, i64 72}
!34 = !{!"gs_function_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24}
!35 = !{!36, !8, i64 0}
!36 = !{!"gs_range_s", !8, i64 0, !8, i64 4}
!37 = !{!36, !8, i64 4}
!38 = !{!39, !2, i64 56}
!39 = !{!"gs_function_1ItSg_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !7, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!40 = !{!39, !2, i64 48}
!41 = !{!39, !2, i64 40}
!42 = !{!39, !7, i64 32}
!43 = !{!39, !2, i64 24}
!44 = !{!39, !7, i64 16}
!45 = !{!39, !2, i64 8}
!46 = !{!33, !7, i64 72}
!47 = !{!33, !7, i64 88}
!48 = !{i64 0, i64 4, !11, i64 8, i64 8, !1, i64 16, i64 4, !11, i64 24, i64 8, !1, i64 32, i64 4, !11, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1}
!49 = !{!50, !7, i64 72}
!50 = !{!"gs_function_1ItSg_s", !21, i64 0, !39, i64 72}
!51 = !{!50, !7, i64 88}
!52 = !{!50, !7, i64 104}
!53 = !{!50, !2, i64 80}
!54 = !{!50, !2, i64 120}
!55 = !{!50, !2, i64 128}
!56 = !{!50, !2, i64 112}
!57 = !{!33, !2, i64 8}
!58 = !{!33, !2, i64 16}
!59 = !{!60, !2, i64 16}
!60 = !{!"gs_function_info_s", !2, i64 0, !61, i64 8, !2, i64 16, !7, i64 24}
!61 = !{!"long", !3, i64 0}
!62 = !{!60, !7, i64 24}
!63 = !{!33, !2, i64 64}
!64 = !{!65, !2, i64 32}
!65 = !{!"gs_function_AdOt_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !2, i64 24, !2, i64 32}
!66 = !{!65, !7, i64 16}
!67 = !{!65, !7, i64 0}
!68 = !{!16, !2, i64 88}
!69 = !{i64 0, i64 4, !11, i64 8, i64 8, !1, i64 16, i64 4, !11, i64 24, i64 8, !1, i64 32, i64 8, !1}
!70 = !{!71, !2, i64 80}
!71 = !{!"gs_function_AdOt_s", !21, i64 0, !65, i64 72}
!72 = !{!71, !2, i64 96}
!73 = !{!33, !2, i64 80}
!74 = !{!71, !7, i64 88}
!75 = !{!71, !7, i64 72}
!76 = !{!71, !2, i64 104}
!77 = !{!33, !2, i64 40}
