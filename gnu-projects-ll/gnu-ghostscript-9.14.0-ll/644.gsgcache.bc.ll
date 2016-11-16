; ModuleID = './gsgcache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
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
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_glyph_cache_s = type { i32, %struct.gs_glyph_cache_elem_s*, %struct.gs_memory_s*, %struct.gs_font_type42_s*, %struct.stream_s*, i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)* }
%struct.gs_glyph_cache_elem_s = type { %struct.gs_glyph_data_s, i32, i32, %struct.gs_glyph_cache_elem_s* }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_state_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.stream_s = type opaque
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@st_glyph_cache = internal constant %struct.gs_memory_struct_type_s { i32 48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gs_glyph_cache_reloc_ptrs to i8*) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"gs_glyph_cache\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gs_glyph_cache__release\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"gs_glyph_cache_elem__release\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"gs_get_glyph_data_cached\00", align 1
@st_glyph_cache_elem = internal constant %struct.gs_memory_struct_type_s { i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_glyph_cache_elem_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_glyph_cache_elem_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"gs_glyph_cache_elem\00", align 1
@gs_glyph_cache_elem_procs = internal constant %struct.gs_glyph_data_procs_s { void (%struct.gs_glyph_data_s*, i8*)* @gs_glyph_cache_elem__free_data, i32 (%struct.gs_glyph_data_s*, i32, i32)* @gs_glyph_cache_elem__substring }, align 8
@gs_glyph_cache_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 4, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([4 x %struct.gc_ptr_element_s], [4 x %struct.gc_ptr_element_s]* @gs_glyph_cache_enum_ptrs, i32 0, i32 0) }, align 8
@gs_glyph_cache_enum_ptrs = internal constant [4 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 16 }, %struct.gc_ptr_element_s { i16 0, i16 24 }, %struct.gc_ptr_element_s { i16 0, i16 32 }], align 16
@st_glyph_data = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define %struct.gs_glyph_cache_s* @gs_glyph_cache__alloc(%struct.gs_font_type42_s* %pfont, %struct.stream_s* %s, i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)* %read_data) #0 {
entry:
  %retval = alloca %struct.gs_glyph_cache_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %s.addr = alloca %struct.stream_s*, align 8
  %read_data.addr = alloca i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %gdcache = alloca %struct.gs_glyph_cache_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)* %read_data, i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)** %read_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 2
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !19
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = bitcast %struct.gs_glyph_cache_s** %gdcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %6 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !22
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %6(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* @st_glyph_cache, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)) #5
  %8 = bitcast i8* %call to %struct.gs_glyph_cache_s*
  store %struct.gs_glyph_cache_s* %8, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %9 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_glyph_cache_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_glyph_cache_s* null, %struct.gs_glyph_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %total_size = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %10, i32 0, i32 0
  store i32 0, i32* %total_size, align 4, !tbaa !23
  %11 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %11, i32 0, i32 1
  store %struct.gs_glyph_cache_elem_s* null, %struct.gs_glyph_cache_elem_s** %list, align 8, !tbaa !25
  %12 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %13 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %13, i32 0, i32 3
  store %struct.gs_font_type42_s* %12, %struct.gs_font_type42_s** %pfont1, align 8, !tbaa !26
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %s2 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %15, i32 0, i32 4
  store %struct.stream_s* %14, %struct.stream_s** %s2, align 8, !tbaa !27
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %17 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %17, i32 0, i32 2
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %memory3, align 8, !tbaa !28
  %18 = load i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)** %read_data.addr, align 8, !tbaa !1
  %19 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %read_data4 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %19, i32 0, i32 5
  store i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)* %18, i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)** %read_data4, align 8, !tbaa !29
  %20 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gs_font_type42_s* %20 to %struct.gs_font_s*
  %22 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %23 = bitcast %struct.gs_glyph_cache_s* %22 to i8*
  %call5 = call i32 @gs_font_notify_register(%struct.gs_font_s* %21, i32 (i8*, i8*)* @gs_glyph_cache__release, i8* %23) #5
  %24 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  store %struct.gs_glyph_cache_s* %24, %struct.gs_glyph_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast %struct.gs_glyph_cache_s** %gdcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %retval
  ret %struct.gs_glyph_cache_s* %27
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_font_notify_register(%struct.gs_font_s*, i32 (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_glyph_cache__release(i8* %data, i8* %event) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %event.addr = alloca i8*, align 8
  %self = alloca %struct.gs_glyph_cache_s*, align 8
  %e = alloca %struct.gs_glyph_cache_elem_s*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %next_e = alloca %struct.gs_glyph_cache_elem_s*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %event, i8** %event.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_cache_s** %self to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_glyph_cache_s*
  store %struct.gs_glyph_cache_s* %2, %struct.gs_glyph_cache_s** %self, align 8, !tbaa !1
  %3 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %4, i32 0, i32 1
  %5 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %list, align 8, !tbaa !25
  store %struct.gs_glyph_cache_elem_s* %5, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %7, i32 0, i32 3
  %8 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont1, align 8, !tbaa !26
  store %struct.gs_font_type42_s* %8, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_glyph_cache_elem_s* %9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = bitcast %struct.gs_glyph_cache_elem_s** %next_e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %11, i32 0, i32 3
  %12 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %next, align 8, !tbaa !30
  store %struct.gs_glyph_cache_elem_s* %12, %struct.gs_glyph_cache_elem_s** %next_e, align 8, !tbaa !1
  %13 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %13, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gd, i32 0, i32 1
  %14 = load %struct.gs_glyph_data_procs_s*, %struct.gs_glyph_data_procs_s** %procs, align 8, !tbaa !34
  %free = getelementptr inbounds %struct.gs_glyph_data_procs_s, %struct.gs_glyph_data_procs_s* %14, i32 0, i32 0
  %15 = load void (%struct.gs_glyph_data_s*, i8*)*, void (%struct.gs_glyph_data_s*, i8*)** %free, align 8, !tbaa !35
  %16 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd2 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %16, i32 0, i32 0
  call void %15(%struct.gs_glyph_data_s* %gd2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #5
  %17 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %17, i32 0, i32 2
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !28
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !37
  %20 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %20, i32 0, i32 2
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !28
  %22 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %23 = bitcast %struct.gs_glyph_cache_elem_s* %22 to i8*
  call void %19(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)) #5
  %24 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %next_e, align 8, !tbaa !1
  store %struct.gs_glyph_cache_elem_s* %24, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %25 = bitcast %struct.gs_glyph_cache_elem_s** %next_e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self, align 8, !tbaa !1
  %list5 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %26, i32 0, i32 1
  store %struct.gs_glyph_cache_elem_s* null, %struct.gs_glyph_cache_elem_s** %list5, align 8, !tbaa !25
  %27 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %28 = bitcast %struct.gs_font_type42_s* %27 to %struct.gs_font_s*
  %29 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self, align 8, !tbaa !1
  %30 = bitcast %struct.gs_glyph_cache_s* %29 to i8*
  %call = call i32 @gs_font_notify_unregister(%struct.gs_font_s* %28, i32 (i8*, i8*)* @gs_glyph_cache__release, i8* %30) #5
  %31 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %31, i32 0, i32 2
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !28
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !37
  %34 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %34, i32 0, i32 2
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !28
  %36 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self, align 8, !tbaa !1
  %37 = bitcast %struct.gs_glyph_cache_s* %36 to i8*
  call void %33(%struct.gs_memory_s* %35, i8* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #5
  %38 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.gs_glyph_cache_s** %self to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @gs_font_notify_unregister(%struct.gs_font_s*, i32 (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_get_glyph_data_cached(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %gdcache = alloca %struct.gs_glyph_cache_s*, align 8
  %pe = alloca %struct.gs_glyph_cache_elem_s**, align 8
  %e = alloca %struct.gs_glyph_cache_elem_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !38
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_cache_s** %gdcache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 29
  %gdcache1 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 21
  %2 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache1, align 8, !tbaa !39
  store %struct.gs_glyph_cache_s* %2, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %3 = bitcast %struct.gs_glyph_cache_elem_s*** %pe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %5 = load i32, i32* %glyph_index.addr, align 4, !tbaa !38
  %call = call %struct.gs_glyph_cache_elem_s** @gs_glyph_cache_elem__locate(%struct.gs_glyph_cache_s* %4, i32 %5) #5
  store %struct.gs_glyph_cache_elem_s** %call, %struct.gs_glyph_cache_elem_s*** %pe, align 8, !tbaa !1
  %6 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.gs_glyph_cache_elem_s* null, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %7 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %pe, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_glyph_cache_elem_s** %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %pe, align 8, !tbaa !1
  %9 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %8, align 8, !tbaa !1
  %glyph_index2 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %9, i32 0, i32 1
  %10 = load i32, i32* %glyph_index2, align 4, !tbaa !40
  %11 = load i32, i32* %glyph_index.addr, align 4, !tbaa !38
  %cmp3 = icmp ne i32 %10, %11
  br i1 %cmp3, label %if.then, label %if.else.42

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %pe, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gs_glyph_cache_elem_s** %13, null
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %14 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %total_size = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %14, i32 0, i32 0
  %15 = load i32, i32* %total_size, align 4, !tbaa !23
  %cmp5 = icmp sgt i32 %15, 32767
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %16 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %pe, align 8, !tbaa !1
  %17 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %16, align 8, !tbaa !1
  %lock_count = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %17, i32 0, i32 2
  %18 = load i32, i32* %lock_count, align 4, !tbaa !41
  %cmp7 = icmp ule i32 %18, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true.6
  %19 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %pe, align 8, !tbaa !1
  %20 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %19, align 8, !tbaa !1
  store %struct.gs_glyph_cache_elem_s* %20, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %21 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %21, i32 0, i32 0
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gd, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %22 = load i32, i32* %size, align 4, !tbaa !42
  %conv = zext i32 %22 to i64
  %add = add i64 %conv, 64
  %23 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %total_size9 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %23, i32 0, i32 0
  %24 = load i32, i32* %total_size9, align 4, !tbaa !23
  %conv10 = sext i32 %24 to i64
  %sub = sub i64 %conv10, %add
  %conv11 = trunc i64 %sub to i32
  store i32 %conv11, i32* %total_size9, align 4, !tbaa !23
  %25 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd12 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %25, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gd12, i32 0, i32 1
  %26 = load %struct.gs_glyph_data_procs_s*, %struct.gs_glyph_data_procs_s** %procs, align 8, !tbaa !34
  %free = getelementptr inbounds %struct.gs_glyph_data_procs_s, %struct.gs_glyph_data_procs_s* %26, i32 0, i32 0
  %27 = load void (%struct.gs_glyph_data_s*, i8*)*, void (%struct.gs_glyph_data_s*, i8*)** %free, align 8, !tbaa !35
  %28 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd13 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %28, i32 0, i32 0
  call void %27(%struct.gs_glyph_data_s* %gd13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #5
  %29 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %30 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %pe, align 8, !tbaa !1
  call void @gs_glyph_cache_elem__move_to_head(%struct.gs_glyph_cache_s* %29, %struct.gs_glyph_cache_elem_s** %30) #5
  br label %if.end.25

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true, %if.then
  %31 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %31, i32 0, i32 2
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !28
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 8
  %33 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !22
  %34 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %34, i32 0, i32 2
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !28
  %call16 = call i8* %33(%struct.gs_memory_s* %35, %struct.gs_memory_struct_type_s* @st_glyph_cache_elem, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #5
  %36 = bitcast i8* %call16 to %struct.gs_glyph_cache_elem_s*
  store %struct.gs_glyph_cache_elem_s* %36, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %37 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.gs_glyph_cache_elem_s* %37, null
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %38 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %39 = bitcast %struct.gs_glyph_cache_elem_s* %38 to i8*
  %call20 = call i8* @memset(i8* %39, i32 0, i64 64) #6
  %40 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %40, i32 0, i32 1
  %41 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %list, align 8, !tbaa !25
  %42 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %42, i32 0, i32 3
  store %struct.gs_glyph_cache_elem_s* %41, %struct.gs_glyph_cache_elem_s** %next, align 8, !tbaa !30
  %43 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %44 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %list21 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %44, i32 0, i32 1
  store %struct.gs_glyph_cache_elem_s* %43, %struct.gs_glyph_cache_elem_s** %list21, align 8, !tbaa !25
  %45 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %45, i32 0, i32 2
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !28
  %47 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd23 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %47, i32 0, i32 0
  %memory24 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gd23, i32 0, i32 3
  store %struct.gs_memory_s* %46, %struct.gs_memory_s** %memory24, align 8, !tbaa !43
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.8
  %48 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %read_data = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %48, i32 0, i32 5
  %49 = load i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)** %read_data, align 8, !tbaa !29
  %50 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %51 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %51, i32 0, i32 4
  %52 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !27
  %53 = load i32, i32* %glyph_index.addr, align 4, !tbaa !38
  %54 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd26 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %54, i32 0, i32 0
  %call27 = call i32 %49(%struct.gs_font_type42_s* %50, %struct.stream_s* %52, i32 %53, %struct.gs_glyph_data_s* %gd26) #5
  store i32 %call27, i32* %code, align 4, !tbaa !38
  %55 = load i32, i32* %code, align 4, !tbaa !38
  %cmp28 = icmp slt i32 %55, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.25
  %56 = load i32, i32* %code, align 4, !tbaa !38
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.25
  %57 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd32 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %57, i32 0, i32 0
  %bits33 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gd32, i32 0, i32 0
  %size34 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits33, i32 0, i32 1
  %58 = load i32, i32* %size34, align 4, !tbaa !42
  %conv35 = zext i32 %58 to i64
  %add36 = add i64 %conv35, 64
  %59 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %total_size37 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %59, i32 0, i32 0
  %60 = load i32, i32* %total_size37, align 4, !tbaa !23
  %conv38 = sext i32 %60 to i64
  %add39 = add i64 %conv38, %add36
  %conv40 = trunc i64 %add39 to i32
  store i32 %conv40, i32* %total_size37, align 4, !tbaa !23
  %61 = load i32, i32* %glyph_index.addr, align 4, !tbaa !38
  %62 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %glyph_index41 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %62, i32 0, i32 1
  store i32 %61, i32* %glyph_index41, align 4, !tbaa !40
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.30, %if.then.19
  %63 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.43

if.else.42:                                       ; preds = %lor.lhs.false
  %64 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %pe, align 8, !tbaa !1
  %65 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %64, align 8, !tbaa !1
  store %struct.gs_glyph_cache_elem_s* %65, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %66 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !1
  %67 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %pe, align 8, !tbaa !1
  call void @gs_glyph_cache_elem__move_to_head(%struct.gs_glyph_cache_s* %66, %struct.gs_glyph_cache_elem_s** %67) #5
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %cleanup.cont
  %68 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits44 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %68, i32 0, i32 0
  %69 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd45 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %69, i32 0, i32 0
  %bits46 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gd45, i32 0, i32 0
  %70 = bitcast %struct.gs_const_bytestring_s* %bits44 to i8*
  %71 = bitcast %struct.gs_const_bytestring_s* %bits46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 24, i32 8, i1 false), !tbaa.struct !44
  %72 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %73 = bitcast %struct.gs_glyph_cache_elem_s* %72 to i8*
  %74 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %74, i32 0, i32 2
  store i8* %73, i8** %proc_data, align 8, !tbaa !45
  %75 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %procs47 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %75, i32 0, i32 1
  store %struct.gs_glyph_data_procs_s* @gs_glyph_cache_elem_procs, %struct.gs_glyph_data_procs_s** %procs47, align 8, !tbaa !46
  %76 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %lock_count48 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %76, i32 0, i32 2
  %77 = load i32, i32* %lock_count48, align 4, !tbaa !41
  %inc = add i32 %77, 1
  store i32 %inc, i32* %lock_count48, align 4, !tbaa !41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %if.end.43, %cleanup
  %78 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.gs_glyph_cache_elem_s*** %pe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast %struct.gs_glyph_cache_s** %gdcache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_glyph_cache_elem_s** @gs_glyph_cache_elem__locate(%struct.gs_glyph_cache_s* %self, i32 %glyph_index) #0 {
entry:
  %retval = alloca %struct.gs_glyph_cache_elem_s**, align 8
  %self.addr = alloca %struct.gs_glyph_cache_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %e = alloca %struct.gs_glyph_cache_elem_s**, align 8
  %p_unlocked = alloca %struct.gs_glyph_cache_elem_s**, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_glyph_cache_s* %self, %struct.gs_glyph_cache_s** %self.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !38
  %0 = bitcast %struct.gs_glyph_cache_elem_s*** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %1, i32 0, i32 1
  store %struct.gs_glyph_cache_elem_s** %list, %struct.gs_glyph_cache_elem_s*** %e, align 8, !tbaa !1
  %2 = bitcast %struct.gs_glyph_cache_elem_s*** %p_unlocked to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.gs_glyph_cache_elem_s** null, %struct.gs_glyph_cache_elem_s*** %p_unlocked, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %count, align 4, !tbaa !38
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %e, align 8, !tbaa !1
  %5 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %4, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_glyph_cache_elem_s* %5, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %e, align 8, !tbaa !1
  %7 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %6, align 8, !tbaa !1
  %glyph_index1 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %7, i32 0, i32 1
  %8 = load i32, i32* %glyph_index1, align 4, !tbaa !40
  %9 = load i32, i32* %glyph_index.addr, align 4, !tbaa !38
  %cmp2 = icmp eq i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %e, align 8, !tbaa !1
  store %struct.gs_glyph_cache_elem_s** %10, %struct.gs_glyph_cache_elem_s*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %11 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %e, align 8, !tbaa !1
  %12 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %11, align 8, !tbaa !1
  %lock_count = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %12, i32 0, i32 2
  %13 = load i32, i32* %lock_count, align 4, !tbaa !41
  %cmp3 = icmp eq i32 %13, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %14 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %e, align 8, !tbaa !1
  store %struct.gs_glyph_cache_elem_s** %14, %struct.gs_glyph_cache_elem_s*** %p_unlocked, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %15 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %e, align 8, !tbaa !1
  %16 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %15, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %16, i32 0, i32 3
  store %struct.gs_glyph_cache_elem_s** %next, %struct.gs_glyph_cache_elem_s*** %e, align 8, !tbaa !1
  %17 = load i32, i32* %count, align 4, !tbaa !38
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %count, align 4, !tbaa !38
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %p_unlocked, align 8, !tbaa !1
  store %struct.gs_glyph_cache_elem_s** %18, %struct.gs_glyph_cache_elem_s*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %19 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_glyph_cache_elem_s*** %p_unlocked to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.gs_glyph_cache_elem_s*** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %retval
  ret %struct.gs_glyph_cache_elem_s** %22
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @gs_glyph_cache_elem__move_to_head(%struct.gs_glyph_cache_s* %self, %struct.gs_glyph_cache_elem_s** %pe) #3 {
entry:
  %self.addr = alloca %struct.gs_glyph_cache_s*, align 8
  %pe.addr = alloca %struct.gs_glyph_cache_elem_s**, align 8
  %e = alloca %struct.gs_glyph_cache_elem_s*, align 8
  store %struct.gs_glyph_cache_s* %self, %struct.gs_glyph_cache_s** %self.addr, align 8, !tbaa !1
  store %struct.gs_glyph_cache_elem_s** %pe, %struct.gs_glyph_cache_elem_s*** %pe.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %pe.addr, align 8, !tbaa !1
  %2 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %1, align 8, !tbaa !1
  store %struct.gs_glyph_cache_elem_s* %2, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %3 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %3, i32 0, i32 3
  %4 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %next, align 8, !tbaa !30
  %5 = load %struct.gs_glyph_cache_elem_s**, %struct.gs_glyph_cache_elem_s*** %pe.addr, align 8, !tbaa !1
  store %struct.gs_glyph_cache_elem_s* %4, %struct.gs_glyph_cache_elem_s** %5, align 8, !tbaa !1
  %6 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %6, i32 0, i32 1
  %7 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %list, align 8, !tbaa !25
  %8 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %8, i32 0, i32 3
  store %struct.gs_glyph_cache_elem_s* %7, %struct.gs_glyph_cache_elem_s** %next1, align 8, !tbaa !30
  %9 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %10 = load %struct.gs_glyph_cache_s*, %struct.gs_glyph_cache_s** %self.addr, align 8, !tbaa !1
  %list2 = getelementptr inbounds %struct.gs_glyph_cache_s, %struct.gs_glyph_cache_s* %10, i32 0, i32 1
  store %struct.gs_glyph_cache_elem_s* %9, %struct.gs_glyph_cache_elem_s** %list2, align 8, !tbaa !25
  %11 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @gs_glyph_cache_elem_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %e = alloca %struct.gs_glyph_cache_elem_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !38
  store i32 %index, i32* %index.addr, align 4, !tbaa !38
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_glyph_cache_elem_s*
  store %struct.gs_glyph_cache_elem_s* %2, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !38
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !38
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %index.addr, align 4, !tbaa !38
  %5 = load i32, i32* %index.addr, align 4, !tbaa !38
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %6 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_glyph_data, i32 0, i32 4), align 8, !tbaa !47
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %8, i32 0, i32 0
  %9 = bitcast %struct.gs_glyph_data_s* %gd to i8*
  %10 = load i32, i32* %index.addr, align 4, !tbaa !38
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %6(%struct.gs_memory_s* %7, i8* %9, i32 48, i32 %10, %struct.enum_ptr_s* %11, %struct.gs_memory_struct_type_s* @st_glyph_data, %struct.gc_state_s* %12) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gs_glyph_cache_elem_s*
  %next = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %14, i32 0, i32 3
  %15 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %next, align 8, !tbaa !30
  %16 = bitcast %struct.gs_glyph_cache_elem_s* %15 to i8*
  %17 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %17, i32 0, i32 0
  store i8* %16, i8** %ptr, align 8, !tbaa !49
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end, %if.then
  %18 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %19
}

; Function Attrs: nounwind uwtable
define internal void @gs_glyph_cache_elem_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %e = alloca %struct.gs_glyph_cache_elem_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !38
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_glyph_cache_elem_s*
  store %struct.gs_glyph_cache_elem_s* %2, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !51
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.gs_glyph_cache_elem_s*
  %next = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %8, i32 0, i32 3
  %9 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %next, align 8, !tbaa !30
  %10 = bitcast %struct.gs_glyph_cache_elem_s* %9 to i8*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %10, %struct.gc_state_s* %11) #5
  %12 = bitcast i8* %call to %struct.gs_glyph_cache_elem_s*
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gs_glyph_cache_elem_s*
  %next1 = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %14, i32 0, i32 3
  store %struct.gs_glyph_cache_elem_s* %12, %struct.gs_glyph_cache_elem_s** %next1, align 8, !tbaa !30
  %15 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_glyph_data, i32 0, i32 5), align 8, !tbaa !53
  %16 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %gd = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %16, i32 0, i32 0
  %17 = bitcast %struct.gs_glyph_data_s* %gd to i8*
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %15(i8* %17, i32 48, %struct.gs_memory_struct_type_s* @st_glyph_data, %struct.gc_state_s* %18) #5
  %19 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_glyph_cache_elem__free_data(%struct.gs_glyph_data_s* %pgd, i8* %cname) #0 {
entry:
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %cname.addr = alloca i8*, align 8
  %e = alloca %struct.gs_glyph_cache_elem_s*, align 8
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %proc_data, align 8, !tbaa !45
  %3 = bitcast i8* %2 to %struct.gs_glyph_cache_elem_s*
  store %struct.gs_glyph_cache_elem_s* %3, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %4 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %lock_count = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %4, i32 0, i32 2
  %5 = load i32, i32* %lock_count, align 4, !tbaa !41
  %dec = add i32 %5, -1
  store i32 %dec, i32* %lock_count, align 4, !tbaa !41
  %6 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_glyph_cache_elem__substring(%struct.gs_glyph_data_s* %pgd, i32 %offset, i32 %size) #0 {
entry:
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %e = alloca %struct.gs_glyph_cache_elem_s*, align 8
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !38
  store i32 %size, i32* %size.addr, align 4, !tbaa !38
  %0 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %proc_data = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %1, i32 0, i32 2
  %2 = load i8*, i8** %proc_data, align 8, !tbaa !45
  %3 = bitcast i8* %2 to %struct.gs_glyph_cache_elem_s*
  store %struct.gs_glyph_cache_elem_s* %3, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %4 = load %struct.gs_glyph_cache_elem_s*, %struct.gs_glyph_cache_elem_s** %e, align 8, !tbaa !1
  %lock_count = getelementptr inbounds %struct.gs_glyph_cache_elem_s, %struct.gs_glyph_cache_elem_s* %4, i32 0, i32 2
  %5 = load i32, i32* %lock_count, align 4, !tbaa !41
  %inc = add i32 %5, 1
  store i32 %inc, i32* %lock_count, align 4, !tbaa !41
  %6 = bitcast %struct.gs_glyph_cache_elem_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 -28
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 16}
!6 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !7, i64 32, !8, i64 40, !9, i64 56, !2, i64 64, !2, i64 72, !10, i64 80, !10, i64 104, !3, i64 128, !7, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !7, i64 148, !7, i64 152, !11, i64 156, !7, i64 160, !12, i64 168, !13, i64 272, !13, i64 324, !14, i64 376, !17, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !18, i64 448}
!7 = !{!"int", !3, i64 0}
!8 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!11 = !{!"float", !3, i64 0}
!12 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!13 = !{!"gs_font_name_s", !3, i64 0, !7, i64 48}
!14 = !{!"gs_rect_s", !15, i64 0, !15, i64 16}
!15 = !{!"gs_point_s", !16, i64 0, !16, i64 8}
!16 = !{!"double", !3, i64 0}
!17 = !{!"gs_uid_s", !9, i64 0, !2, i64 8}
!18 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !9, i64 48, !9, i64 56, !7, i64 64, !7, i64 68, !3, i64 72, !9, i64 120, !9, i64 128, !9, i64 136, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !2, i64 168, !2, i64 176, !7, i64 184, !7, i64 188, !2, i64 192, !9, i64 200}
!19 = !{!20, !2, i64 0}
!20 = !{!"gs_memory_s", !2, i64 0, !21, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!21 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!22 = !{!20, !2, i64 72}
!23 = !{!24, !7, i64 0}
!24 = !{!"gs_glyph_cache_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!25 = !{!24, !2, i64 8}
!26 = !{!24, !2, i64 24}
!27 = !{!24, !2, i64 32}
!28 = !{!24, !2, i64 16}
!29 = !{!24, !2, i64 40}
!30 = !{!31, !2, i64 56}
!31 = !{!"gs_glyph_cache_elem_s", !32, i64 0, !7, i64 48, !7, i64 52, !2, i64 56}
!32 = !{!"gs_glyph_data_s", !33, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!33 = !{!"gs_const_bytestring_s", !2, i64 0, !7, i64 8, !2, i64 16}
!34 = !{!31, !2, i64 24}
!35 = !{!36, !2, i64 0}
!36 = !{!"gs_glyph_data_procs_s", !2, i64 0, !2, i64 8}
!37 = !{!20, !2, i64 24}
!38 = !{!7, !7, i64 0}
!39 = !{!6, !2, i64 624}
!40 = !{!31, !7, i64 48}
!41 = !{!31, !7, i64 52}
!42 = !{!31, !7, i64 8}
!43 = !{!31, !2, i64 40}
!44 = !{i64 0, i64 8, !1, i64 8, i64 4, !38, i64 16, i64 8, !1}
!45 = !{!32, !2, i64 32}
!46 = !{!32, !2, i64 24}
!47 = !{!48, !2, i64 32}
!48 = !{!"gs_memory_struct_type_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!49 = !{!50, !2, i64 0}
!50 = !{!"enum_ptr_s", !2, i64 0, !7, i64 8}
!51 = !{!52, !2, i64 0}
!52 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!53 = !{!48, !2, i64 40}
