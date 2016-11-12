; ModuleID = './gsfunc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
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
%struct.gs_const_string_s = type { i8*, i32 }
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
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type opaque
%struct.gs_range_s = type { float, float }
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }

@.str = private unnamed_addr constant [14 x i8] c"gs_function_t\00", align 1
@function_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @function_enum_ptrs, i32 0, i32 0) }, align 8
@st_function = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @function_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Functions\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Domain\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fn_common_free\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"FunctionType\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"fn_copy_values\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fn_scale_pairs\00", align 1
@fn_common_serialize.dummy = internal constant [8 x float] zeroinitializer, align 16
@function_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 80 }, %struct.gc_ptr_element_s { i16 0, i16 96 }], align 2
@.str.8 = private unnamed_addr constant [18 x i8] c"gs_function_t *[]\00", align 1
@st_function_ptr_element = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @function_ptr_element_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @function_ptr_element_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"gs_function_t *\00", align 1
@st_function_ptr = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @function_ptr_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @function_ptr_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @alloc_function_array(i32 %count, %struct.gs_function_s*** %pFunctions, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %pFunctions.addr = alloca %struct.gs_function_s***, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr = alloca %struct.gs_function_s**, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %count, i32* %count.addr, align 4, !tbaa !1
  store %struct.gs_function_s*** %pFunctions, %struct.gs_function_s**** %pFunctions.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %0 = bitcast %struct.gs_function_s*** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %count.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %3 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !7
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %5 = load i32, i32* %count.addr, align 4, !tbaa !1
  %call = call i8* %3(%struct.gs_memory_s* %4, i32 %5, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_function_ptr_element to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)) #4
  %6 = bitcast i8* %call to %struct.gs_function_s**
  store %struct.gs_function_s** %6, %struct.gs_function_s*** %ptr, align 8, !tbaa !5
  %7 = load %struct.gs_function_s**, %struct.gs_function_s*** %ptr, align 8, !tbaa !5
  %cmp1 = icmp eq %struct.gs_function_s** %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.gs_function_s**, %struct.gs_function_s*** %ptr, align 8, !tbaa !5
  %9 = bitcast %struct.gs_function_s** %8 to i8*
  %10 = load i32, i32* %count.addr, align 4, !tbaa !1
  %conv = zext i32 %10 to i64
  %mul = mul i64 8, %conv
  %call4 = call i8* @memset(i8* %9, i32 0, i64 %mul) #5
  %11 = load %struct.gs_function_s**, %struct.gs_function_s*** %ptr, align 8, !tbaa !5
  %12 = load %struct.gs_function_s***, %struct.gs_function_s**** %pFunctions.addr, align 8, !tbaa !5
  store %struct.gs_function_s** %11, %struct.gs_function_s*** %12, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %13 = bitcast %struct.gs_function_s*** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @fn_common_free_params(%struct.gs_function_params_s* %params, %struct.gs_memory_s* %mem) #1 {
entry:
  %params.addr = alloca %struct.gs_function_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_function_params_s* %params, %struct.gs_function_params_s** %params.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %1 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params.addr, align 8, !tbaa !5
  %Range = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %1, i32 0, i32 3
  %2 = load float*, float** %Range, align 8, !tbaa !10
  %3 = bitcast float* %2 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %0, i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #4
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %5 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params.addr, align 8, !tbaa !5
  %Domain = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %5, i32 0, i32 1
  %6 = load float*, float** %Domain, align 8, !tbaa !12
  %7 = bitcast float* %6 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %4, i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #4
  ret void
}

declare void @gs_free_const_object(%struct.gs_memory_s*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define void @fn_common_free(%struct.gs_function_s* %pfn, i32 %free_params, %struct.gs_memory_s* %mem) #1 {
entry:
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %free_params.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  store i32 %free_params, i32* %free_params.addr, align 4, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %0 = load i32, i32* %free_params.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %1, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free_params1 = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 5
  %2 = load void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)** %free_params1, align 8, !tbaa !13
  %3 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  call void %2(%struct.gs_function_params_s* %params, %struct.gs_memory_s* %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  %6 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !17
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %8 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %9 = bitcast %struct.gs_function_s* %8 to i8*
  call void %6(%struct.gs_memory_s* %7, i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fn_check_mnDR(%struct.gs_function_params_s* %params, i32 %m, i32 %n) #1 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.gs_function_params_s*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_params_s* %params, %struct.gs_function_params_s** %params.addr, align 8, !tbaa !5
  store i32 %m, i32* %m.addr, align 4, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %m.addr, align 4, !tbaa !1
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4, !tbaa !1
  %cmp1 = icmp sle i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !tbaa !1
  %4 = load i32, i32* %m.addr, align 4, !tbaa !1
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %mul = mul nsw i32 2, %5
  %idxprom = sext i32 %mul to i64
  %6 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params.addr, align 8, !tbaa !5
  %Domain = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %6, i32 0, i32 1
  %7 = load float*, float** %Domain, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  %8 = load float, float* %arrayidx, align 4, !tbaa !18
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %mul3 = mul nsw i32 2, %9
  %add = add nsw i32 %mul3, 1
  %idxprom4 = sext i32 %add to i64
  %10 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params.addr, align 8, !tbaa !5
  %Domain5 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %10, i32 0, i32 1
  %11 = load float*, float** %Domain5, align 8, !tbaa !12
  %arrayidx6 = getelementptr inbounds float, float* %11, i64 %idxprom4
  %12 = load float, float* %arrayidx6, align 4, !tbaa !18
  %cmp7 = fcmp ogt float %8, %12
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params.addr, align 8, !tbaa !5
  %Range = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %14, i32 0, i32 3
  %15 = load float*, float** %Range, align 8, !tbaa !10
  %cmp10 = icmp ne float* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.30

if.then.11:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.27, %if.then.11
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = load i32, i32* %n.addr, align 4, !tbaa !1
  %cmp13 = icmp slt i32 %16, %17
  br i1 %cmp13, label %for.body.14, label %for.end.29

for.body.14:                                      ; preds = %for.cond.12
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %mul15 = mul nsw i32 2, %18
  %idxprom16 = sext i32 %mul15 to i64
  %19 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params.addr, align 8, !tbaa !5
  %Range17 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %19, i32 0, i32 3
  %20 = load float*, float** %Range17, align 8, !tbaa !10
  %arrayidx18 = getelementptr inbounds float, float* %20, i64 %idxprom16
  %21 = load float, float* %arrayidx18, align 4, !tbaa !18
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %mul19 = mul nsw i32 2, %22
  %add20 = add nsw i32 %mul19, 1
  %idxprom21 = sext i32 %add20 to i64
  %23 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %params.addr, align 8, !tbaa !5
  %Range22 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %23, i32 0, i32 3
  %24 = load float*, float** %Range22, align 8, !tbaa !10
  %arrayidx23 = getelementptr inbounds float, float* %24, i64 %idxprom21
  %25 = load float, float* %arrayidx23, align 4, !tbaa !18
  %cmp24 = fcmp ogt float %21, %25
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body.14
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %for.body.14
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !1
  br label %for.cond.12

for.end.29:                                       ; preds = %for.cond.12
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.25, %if.then.8, %if.then
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define void @gs_function_get_info_default(%struct.gs_function_s* %pfn, %struct.gs_function_info_s* %pfi) #1 {
entry:
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %pfi.addr = alloca %struct.gs_function_info_s*, align 8
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  store %struct.gs_function_info_s* %pfi, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !5
  %0 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !5
  %DataSource = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %0, i32 0, i32 0
  store %struct.gs_data_source_s* null, %struct.gs_data_source_s** %DataSource, align 8, !tbaa !20
  %1 = load %struct.gs_function_info_s*, %struct.gs_function_info_s** %pfi.addr, align 8, !tbaa !5
  %Functions = getelementptr inbounds %struct.gs_function_info_s, %struct.gs_function_info_s* %1, i32 0, i32 2
  store %struct.gs_function_s** null, %struct.gs_function_s*** %Functions, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fn_common_get_params(%struct.gs_function_s* %pfn, %struct.gs_param_list_s* %plist) #1 {
entry:
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %0 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %2 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %2, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 0
  %call = call i32 @param_write_int(%struct.gs_param_list_s* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32* %type) #4
  store i32 %call, i32* %ecode, align 4, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %4, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 1
  %5 = load float*, float** %Domain, align 8, !tbaa !24
  %tobool = icmp ne float* %5, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %7 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params1 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %7, i32 0, i32 1
  %Domain2 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params1, i32 0, i32 1
  %8 = load float*, float** %Domain2, align 8, !tbaa !24
  %9 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params3 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %9, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params3, i32 0, i32 0
  %10 = load i32, i32* %m, align 4, !tbaa !25
  %mul = mul nsw i32 2, %10
  %call4 = call i32 @param_write_float_values(%struct.gs_param_list_s* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), float* %8, i32 %mul, i32 0) #4
  store i32 %call4, i32* %code, align 4, !tbaa !1
  %11 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %12, i32* %ecode, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %13 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params7 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %13, i32 0, i32 1
  %Range = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params7, i32 0, i32 3
  %14 = load float*, float** %Range, align 8, !tbaa !26
  %tobool8 = icmp ne float* %14, null
  br i1 %tobool8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end.6
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !5
  %16 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params10 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %16, i32 0, i32 1
  %Range11 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params10, i32 0, i32 3
  %17 = load float*, float** %Range11, align 8, !tbaa !26
  %18 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params12 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %18, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params12, i32 0, i32 2
  %19 = load i32, i32* %n, align 4, !tbaa !27
  %mul13 = mul nsw i32 2, %19
  %call14 = call i32 @param_write_float_values(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), float* %17, i32 %mul13, i32 0) #4
  store i32 %call14, i32* %code, align 4, !tbaa !1
  %20 = load i32, i32* %code, align 4, !tbaa !1
  %cmp15 = icmp slt i32 %20, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.9
  %21 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %21, i32* %ecode, align 4, !tbaa !1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.6
  %22 = load i32, i32* %ecode, align 4, !tbaa !1
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  ret i32 %22
}

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_write_float_values(%struct.gs_param_list_s*, i8*, float*, i32, i32) #0

; Function Attrs: nounwind uwtable
define i8* @fn_copy_values(i8* %pvalues, i32 %count, i32 %size, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i8*, align 8
  %pvalues.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %values = alloca i8*, align 8
  store i8* %pvalues, i8** %pvalues.addr, align 8, !tbaa !5
  store i32 %count, i32* %count.addr, align 4, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %0 = load i8*, i8** %pvalues.addr, align 8, !tbaa !5
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %3 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %5 = load i32, i32* %count.addr, align 4, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !1
  %call = call i8* %3(%struct.gs_memory_s* %4, i32 %5, i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #4
  store i8* %call, i8** %values, align 8, !tbaa !5
  %7 = load i8*, i8** %values, align 8, !tbaa !5
  %tobool1 = icmp ne i8* %7, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load i8*, i8** %values, align 8, !tbaa !5
  %9 = load i8*, i8** %pvalues.addr, align 8, !tbaa !5
  %10 = load i32, i32* %count.addr, align 4, !tbaa !1
  %11 = load i32, i32* %size.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %10, %11
  %conv = sext i32 %mul to i64
  %call3 = call i8* @memcpy(i8* %8, i8* %9, i64 %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %12 = load i8*, i8** %values, align 8, !tbaa !5
  store i8* %12, i8** %retval
  %13 = bitcast i8** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %14 = load i8*, i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @fn_scale_pairs(float** %ppvalues, float* %pvalues, i32 %npairs, %struct.gs_range_s* %pranges, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i32, align 4
  %ppvalues.addr = alloca float**, align 8
  %pvalues.addr = alloca float*, align 8
  %npairs.addr = alloca i32, align 4
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %out = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %base = alloca double, align 8
  %factor = alloca double, align 8
  store float** %ppvalues, float*** %ppvalues.addr, align 8, !tbaa !5
  store float* %pvalues, float** %pvalues.addr, align 8, !tbaa !5
  store i32 %npairs, i32* %npairs.addr, align 4, !tbaa !1
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %0 = load float*, float** %pvalues.addr, align 8, !tbaa !5
  %cmp = icmp eq float* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float**, float*** %ppvalues.addr, align 8, !tbaa !5
  store float* null, float** %1, align 8, !tbaa !5
  br label %if.end.34

if.else:                                          ; preds = %entry
  %2 = bitcast float** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %4 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !28
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %6 = load i32, i32* %npairs.addr, align 4, !tbaa !1
  %mul = mul nsw i32 2, %6
  %call = call i8* %4(%struct.gs_memory_s* %5, i32 %mul, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #4
  %7 = bitcast i8* %call to float*
  store float* %7, float** %out, align 8, !tbaa !5
  %8 = load float*, float** %out, align 8, !tbaa !5
  %9 = load float**, float*** %ppvalues.addr, align 8, !tbaa !5
  store float* %8, float** %9, align 8, !tbaa !5
  %10 = load float*, float** %out, align 8, !tbaa !5
  %cmp1 = icmp eq float* %10, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %11 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !5
  %tobool = icmp ne %struct.gs_range_s* %11, null
  br i1 %tobool, label %if.then.3, label %if.else.29

if.then.3:                                        ; preds = %if.end
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = load i32, i32* %npairs.addr, align 4, !tbaa !1
  %cmp4 = icmp slt i32 %13, %14
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast double* %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %17, i64 %idxprom
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx, i32 0, i32 0
  %18 = load float, float* %rmin, align 4, !tbaa !29
  %conv = fpext float %18 to double
  store double %conv, double* %base, align 8, !tbaa !31
  %19 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom5 = sext i32 %20 to i64
  %21 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %21, i64 %idxprom5
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %arrayidx6, i32 0, i32 1
  %22 = load float, float* %rmax, align 4, !tbaa !33
  %conv7 = fpext float %22 to double
  %23 = load double, double* %base, align 8, !tbaa !31
  %sub = fsub double %conv7, %23
  store double %sub, double* %factor, align 8, !tbaa !31
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %mul8 = mul nsw i32 2, %24
  %idxprom9 = sext i32 %mul8 to i64
  %25 = load float*, float** %pvalues.addr, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds float, float* %25, i64 %idxprom9
  %26 = load float, float* %arrayidx10, align 4, !tbaa !18
  %conv11 = fpext float %26 to double
  %27 = load double, double* %factor, align 8, !tbaa !31
  %mul12 = fmul double %conv11, %27
  %28 = load double, double* %base, align 8, !tbaa !31
  %add = fadd double %mul12, %28
  %conv13 = fptrunc double %add to float
  %29 = load i32, i32* %i, align 4, !tbaa !1
  %mul14 = mul nsw i32 2, %29
  %idxprom15 = sext i32 %mul14 to i64
  %30 = load float*, float** %out, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds float, float* %30, i64 %idxprom15
  store float %conv13, float* %arrayidx16, align 4, !tbaa !18
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %mul17 = mul nsw i32 2, %31
  %add18 = add nsw i32 %mul17, 1
  %idxprom19 = sext i32 %add18 to i64
  %32 = load float*, float** %pvalues.addr, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds float, float* %32, i64 %idxprom19
  %33 = load float, float* %arrayidx20, align 4, !tbaa !18
  %conv21 = fpext float %33 to double
  %34 = load double, double* %factor, align 8, !tbaa !31
  %mul22 = fmul double %conv21, %34
  %35 = load double, double* %base, align 8, !tbaa !31
  %add23 = fadd double %mul22, %35
  %conv24 = fptrunc double %add23 to float
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %mul25 = mul nsw i32 2, %36
  %add26 = add nsw i32 %mul25, 1
  %idxprom27 = sext i32 %add26 to i64
  %37 = load float*, float** %out, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds float, float* %37, i64 %idxprom27
  store float %conv24, float* %arrayidx28, align 4, !tbaa !18
  %38 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast double* %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  br label %if.end.33

if.else.29:                                       ; preds = %if.end
  %42 = load float*, float** %out, align 8, !tbaa !5
  %43 = bitcast float* %42 to i8*
  %44 = load float*, float** %pvalues.addr, align 8, !tbaa !5
  %45 = bitcast float* %44 to i8*
  %46 = load i32, i32* %npairs.addr, align 4, !tbaa !1
  %conv30 = sext i32 %46 to i64
  %mul31 = mul i64 8, %conv30
  %call32 = call i8* @memcpy(i8* %43, i8* %45, i64 %mul31) #5
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.29, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.2
  %47 = bitcast float** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.end.34:                                        ; preds = %cleanup.cont, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %cleanup
  %48 = load i32, i32* %retval
  ret i32 %48

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @fn_common_scale(%struct.gs_function_s* %psfn, %struct.gs_function_s* %pfn, %struct.gs_range_s* %pranges, %struct.gs_memory_s* %mem) #1 {
entry:
  %retval = alloca i32, align 4
  %psfn.addr = alloca %struct.gs_function_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %pranges.addr = alloca %struct.gs_range_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_s* %psfn, %struct.gs_function_s** %psfn.addr, align 8, !tbaa !5
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  store %struct.gs_range_s* %pranges, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_function_s*, %struct.gs_function_s** %psfn.addr, align 8, !tbaa !5
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %1, i32 0, i32 0
  %2 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %head1 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %2, i32 0, i32 0
  %3 = bitcast %struct.gs_function_head_s* %head to i8*
  %4 = bitcast %struct.gs_function_head_s* %head1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 72, i32 8, i1 false), !tbaa.struct !34
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %psfn.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %5, i32 0, i32 1
  %Domain = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 1
  store float* null, float** %Domain, align 8, !tbaa !24
  %6 = load %struct.gs_function_s*, %struct.gs_function_s** %psfn.addr, align 8, !tbaa !5
  %params2 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %6, i32 0, i32 1
  %Range = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params2, i32 0, i32 3
  store float* null, float** %Range, align 8, !tbaa !26
  %7 = load %struct.gs_function_s*, %struct.gs_function_s** %psfn.addr, align 8, !tbaa !5
  %params3 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %7, i32 0, i32 1
  %Domain4 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params3, i32 0, i32 1
  %8 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params5 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %8, i32 0, i32 1
  %Domain6 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params5, i32 0, i32 1
  %9 = load float*, float** %Domain6, align 8, !tbaa !24
  %10 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params7 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %10, i32 0, i32 1
  %m = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params7, i32 0, i32 0
  %11 = load i32, i32* %m, align 4, !tbaa !25
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %call = call i32 @fn_scale_pairs(float** %Domain4, float* %9, i32 %11, %struct.gs_range_s* null, %struct.gs_memory_s* %12) #4
  store i32 %call, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct.gs_function_s*, %struct.gs_function_s** %psfn.addr, align 8, !tbaa !5
  %params8 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %13, i32 0, i32 1
  %Range9 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params8, i32 0, i32 3
  %14 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params10 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %14, i32 0, i32 1
  %Range11 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params10, i32 0, i32 3
  %15 = load float*, float** %Range11, align 8, !tbaa !26
  %16 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params12 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %16, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params12, i32 0, i32 2
  %17 = load i32, i32* %n, align 4, !tbaa !27
  %18 = load %struct.gs_range_s*, %struct.gs_range_s** %pranges.addr, align 8, !tbaa !5
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %call13 = call i32 @fn_scale_pairs(float** %Range9, float* %15, i32 %17, %struct.gs_range_s* %18, %struct.gs_memory_s* %19) #4
  store i32 %call13, i32* %code, align 4, !tbaa !1
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %20 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @fn_common_serialize(%struct.gs_function_s* %pfn, %struct.stream_s* %s) #1 {
entry:
  %retval = alloca i32, align 4
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %n = alloca i32, align 4
  %p = alloca %struct.gs_function_params_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !5
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_function_params_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %2, i32 0, i32 1
  store %struct.gs_function_params_s* %params, %struct.gs_function_params_s** %p, align 8, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !5
  %5 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !5
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %5, i32 0, i32 0
  %type = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 0
  %6 = bitcast i32* %type to i8*
  %call = call i32 @sputs(%struct.stream_s* %4, i8* %6, i32 4, i32* %n) #4
  store i32 %call, i32* %code, align 4, !tbaa !1
  %7 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !5
  %10 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %p, align 8, !tbaa !5
  %m = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %10, i32 0, i32 0
  %11 = bitcast i32* %m to i8*
  %call1 = call i32 @sputs(%struct.stream_s* %9, i8* %11, i32 4, i32* %n) #4
  store i32 %call1, i32* %code, align 4, !tbaa !1
  %12 = load i32, i32* %code, align 4, !tbaa !1
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !5
  %15 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %p, align 8, !tbaa !5
  %Domain = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %15, i32 0, i32 1
  %16 = load float*, float** %Domain, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds float, float* %16, i64 0
  %17 = bitcast float* %arrayidx to i8*
  %18 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %p, align 8, !tbaa !5
  %m5 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %18, i32 0, i32 0
  %19 = load i32, i32* %m5, align 4, !tbaa !35
  %conv = sext i32 %19 to i64
  %mul = mul i64 4, %conv
  %mul6 = mul i64 %mul, 2
  %conv7 = trunc i64 %mul6 to i32
  %call8 = call i32 @sputs(%struct.stream_s* %14, i8* %17, i32 %conv7, i32* %n) #4
  store i32 %call8, i32* %code, align 4, !tbaa !1
  %20 = load i32, i32* %code, align 4, !tbaa !1
  %cmp9 = icmp slt i32 %20, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.4
  %21 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.4
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !5
  %23 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %p, align 8, !tbaa !5
  %n13 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %23, i32 0, i32 2
  %24 = bitcast i32* %n13 to i8*
  %call14 = call i32 @sputs(%struct.stream_s* %22, i8* %24, i32 4, i32* %n) #4
  store i32 %call14, i32* %code, align 4, !tbaa !1
  %25 = load i32, i32* %code, align 4, !tbaa !1
  %cmp15 = icmp slt i32 %25, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  %26 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.12
  %27 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %p, align 8, !tbaa !5
  %Range = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %27, i32 0, i32 3
  %28 = load float*, float** %Range, align 8, !tbaa !10
  %cmp19 = icmp eq float* %28, null
  br i1 %cmp19, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.18
  %29 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %p, align 8, !tbaa !5
  %n21 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %29, i32 0, i32 2
  %30 = load i32, i32* %n21, align 4, !tbaa !36
  %mul22 = mul nsw i32 %30, 2
  %cmp23 = icmp sgt i32 %mul22, 8
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true, %if.end.18
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !5
  %32 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %p, align 8, !tbaa !5
  %Range27 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %32, i32 0, i32 3
  %33 = load float*, float** %Range27, align 8, !tbaa !10
  %cmp28 = icmp ne float* %33, null
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %34 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %p, align 8, !tbaa !5
  %Range30 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %34, i32 0, i32 3
  %35 = load float*, float** %Range30, align 8, !tbaa !10
  %arrayidx31 = getelementptr inbounds float, float* %35, i64 0
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float* [ %arrayidx31, %cond.true ], [ getelementptr inbounds ([8 x float], [8 x float]* @fn_common_serialize.dummy, i32 0, i32 0), %cond.false ]
  %36 = bitcast float* %cond to i8*
  %37 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %p, align 8, !tbaa !5
  %n32 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %37, i32 0, i32 2
  %38 = load i32, i32* %n32, align 4, !tbaa !36
  %conv33 = sext i32 %38 to i64
  %mul34 = mul i64 4, %conv33
  %mul35 = mul i64 %mul34, 2
  %conv36 = trunc i64 %mul35 to i32
  %call37 = call i32 @sputs(%struct.stream_s* %31, i8* %36, i32 %conv36, i32* %n) #4
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.25, %if.then.17, %if.then.11, %if.then.3, %if.then
  %39 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast %struct.gs_function_params_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @sputs(%struct.stream_s*, i8*, i32, i32*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @function_ptr_element_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !1
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !5
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %size.addr, align 4, !tbaa !1
  %div = udiv i32 %1, 8
  store i32 %div, i32* %count, align 4, !tbaa !1
  %2 = load i32, i32* %count, align 4, !tbaa !1
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_function_ptr to %struct.gs_memory_struct_type_s*), i32 0, i32 4), align 8, !tbaa !37
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !5
  %6 = load i32, i32* %index.addr, align 4, !tbaa !1
  %7 = load i32, i32* %count, align 4, !tbaa !1
  %rem = urem i32 %6, %7
  %conv = zext i32 %rem to i64
  %mul = mul i64 %conv, 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %mul
  %8 = load i32, i32* %index.addr, align 4, !tbaa !1
  %9 = load i32, i32* %count, align 4, !tbaa !1
  %div1 = udiv i32 %8, %9
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !5
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %add.ptr, i32 8, i32 %div1, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_function_ptr to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %11) #4
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @function_ptr_element_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %count = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !5
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %size.addr, align 4, !tbaa !1
  %div = udiv i32 %1, 8
  store i32 %div, i32* %count, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !tbaa !1
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_function_ptr to %struct.gs_memory_struct_type_s*), i32 0, i32 5), align 8, !tbaa !39
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !5
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  call void %3(i8* %4, i32 8, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_function_ptr to %struct.gs_memory_struct_type_s*), %struct.gc_state_s* %5) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !tbaa !1
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count, align 4, !tbaa !1
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 8
  store i8* %add.ptr, i8** %vptr.addr, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @function_ptr_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !1
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !5
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %0 = load i32, i32* %index.addr, align 4, !tbaa !1
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct.gs_function_s**
  %3 = load %struct.gs_function_s*, %struct.gs_function_s** %2, align 8, !tbaa !5
  %4 = bitcast %struct.gs_function_s* %3 to i8*
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !5
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %5, i32 0, i32 0
  store i8* %4, i8** %ptr, align 8, !tbaa !40
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb, %sw.default
  %6 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %6
}

; Function Attrs: nounwind uwtable
define internal void @function_ptr_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !5
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %0 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %1 = bitcast %struct.gc_state_s* %0 to %struct.gc_procs_common_s**
  %2 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %1, align 8, !tbaa !5
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %2, i32 0, i32 0
  %3 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !42
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !5
  %5 = bitcast i8* %4 to %struct.gs_function_s**
  %6 = load %struct.gs_function_s*, %struct.gs_function_s** %5, align 8, !tbaa !5
  %7 = bitcast %struct.gs_function_s* %6 to i8*
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !5
  %call = call i8* %3(i8* %7, %struct.gc_state_s* %8) #4
  %9 = bitcast i8* %call to %struct.gs_function_s*
  %10 = load i8*, i8** %vptr.addr, align 8, !tbaa !5
  %11 = bitcast i8* %10 to %struct.gs_function_s**
  store %struct.gs_function_s* %9, %struct.gs_function_s** %11, align 8, !tbaa !5
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 104}
!8 = !{!"gs_memory_s", !6, i64 0, !9, i64 8, !6, i64 192, !6, i64 200, !6, i64 208}
!9 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176}
!10 = !{!11, !6, i64 24}
!11 = !{!"gs_function_params_s", !2, i64 0, !6, i64 8, !2, i64 16, !6, i64 24}
!12 = !{!11, !6, i64 8}
!13 = !{!14, !6, i64 48}
!14 = !{!"gs_function_s", !15, i64 0, !11, i64 72}
!15 = !{!"gs_function_head_s", !2, i64 0, !16, i64 8}
!16 = !{!"gs_function_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56}
!17 = !{!8, !6, i64 24}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !3, i64 0}
!20 = !{!21, !6, i64 0}
!21 = !{!"gs_function_info_s", !6, i64 0, !22, i64 8, !6, i64 16, !2, i64 24}
!22 = !{!"long", !3, i64 0}
!23 = !{!21, !6, i64 16}
!24 = !{!14, !6, i64 80}
!25 = !{!14, !2, i64 72}
!26 = !{!14, !6, i64 96}
!27 = !{!14, !2, i64 88}
!28 = !{!8, !6, i64 88}
!29 = !{!30, !19, i64 0}
!30 = !{!"gs_range_s", !19, i64 0, !19, i64 4}
!31 = !{!32, !32, i64 0}
!32 = !{!"double", !3, i64 0}
!33 = !{!30, !19, i64 4}
!34 = !{i64 0, i64 4, !1, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 8, !5}
!35 = !{!11, !2, i64 0}
!36 = !{!11, !2, i64 16}
!37 = !{!38, !6, i64 32}
!38 = !{!"gs_memory_struct_type_s", !2, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56}
!39 = !{!38, !6, i64 40}
!40 = !{!41, !6, i64 0}
!41 = !{!"enum_ptr_s", !6, i64 0, !2, i64 8}
!42 = !{!43, !6, i64 0}
!43 = !{!"gc_procs_common_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
