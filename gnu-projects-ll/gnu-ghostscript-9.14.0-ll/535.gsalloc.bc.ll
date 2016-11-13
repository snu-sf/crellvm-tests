; ModuleID = './gsalloc.bc'
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
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.lost_ = type { i64, i64, i64 }
%struct.ref_s = type opaque
%struct.alloc_change_s = type opaque
%struct.alloc_save_s = type opaque
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct._m = type { i32 }

@hdr_id = global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"gs_ref_memory\00", align 1
@st_ref_memory = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 1496, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_memory_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @ref_memory_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@gs_ref_memory_procs = constant %struct.gs_memory_procs_s { i8* (%struct.gs_memory_s*, i32, i8*)* @i_alloc_bytes_immovable, i8* (%struct.gs_memory_s*, i8*, i32, i8*)* @i_resize_object, void (%struct.gs_memory_s*, i8*, i8*)* @i_free_object, %struct.gs_memory_s* (%struct.gs_memory_s*)* @i_stable, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)* @i_status, void (%struct.gs_memory_s*, i32, i8*)* @i_free_all, void (%struct.gs_memory_s*)* @i_consolidate_free, i8* (%struct.gs_memory_s*, i32, i8*)* @i_alloc_bytes, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @i_alloc_struct, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @i_alloc_struct_immovable, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @i_alloc_byte_array, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @i_alloc_byte_array_immovable, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* @i_alloc_struct_array, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* @i_alloc_struct_array_immovable, i32 (%struct.gs_memory_s*, i8*)* @i_object_size, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)* @i_object_type, i8* (%struct.gs_memory_s*, i32, i8*)* @i_alloc_string, i8* (%struct.gs_memory_s*, i32, i8*)* @i_alloc_string_immovable, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)* @i_resize_string, void (%struct.gs_memory_s*, i8*, i32, i8*)* @i_free_string, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)* @i_register_root, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)* @i_unregister_root, void (%struct.gs_memory_s*, i32)* @i_enable_free }, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"ialloc_solo(allocation failure)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"chunk_t\00", align 1
@chunk_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @chunk_enum_ptrs, i32 0, i32 0) }, align 8
@st_chunk = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @chunk_reloc_ptrs to i8*) }, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"alloc_free_chunk(data)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"alloc_free_chunk(chunk struct)\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"ialloc_solo(chunk)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ialloc_solo\00", align 1
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@st_free = external constant %struct.gs_memory_struct_type_s, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"large object chunk\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"chunk\00", align 1
@gs_debug = external global [128 x i8], align 16
@.str.9 = private unnamed_addr constant [19 x i8] c"large string chunk\00", align 1
@st_gc_root_t = external constant %struct.gs_memory_struct_type_s, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"i_register_root\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"i_unregister_root\00", align 1
@chunk_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 72 }, %struct.gc_ptr_element_s { i16 0, i16 80 }], align 2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @ref_memory_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_ref_memory_s*
  %streams = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 22
  %3 = load %struct.stream_s*, %struct.stream_s** %streams, align 8, !tbaa !7
  %4 = bitcast %struct.stream_s* %3 to i8*
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %5, i32 0, i32 0
  store i8* %4, i8** %ptr, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct.gs_ref_memory_s*
  %names_array = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 23
  %8 = load %struct.ref_s*, %struct.ref_s** %names_array, align 8, !tbaa !18
  %9 = bitcast %struct.ref_s* %8 to i8*
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 0
  store i8* %9, i8** %ptr2, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.gs_ref_memory_s*
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %12, i32 0, i32 26
  %13 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8, !tbaa !19
  %14 = bitcast %struct.alloc_change_s* %13 to i8*
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* %14, i8** %ptr4, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct.gs_ref_memory_s*
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 28
  %18 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !20
  %19 = bitcast %struct.alloc_save_s* %18 to i8*
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %20, i32 0, i32 0
  store i8* %19, i8** %ptr6, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct.gs_ref_memory_s*
  %scan_limit = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %22, i32 0, i32 27
  %23 = load %struct.alloc_change_s*, %struct.alloc_change_s** %scan_limit, align 8, !tbaa !21
  %24 = bitcast %struct.alloc_change_s* %23 to i8*
  %25 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %25, i32 0, i32 0
  store i8* %24, i8** %ptr8, align 8, !tbaa !16
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb, %sw.default
  %26 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %26
}

; Function Attrs: nounwind uwtable
define internal void @ref_memory_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mptr = alloca %struct.gs_ref_memory_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %mptr, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !22
  %7 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.gs_ref_memory_s*
  %streams = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 22
  %9 = load %struct.stream_s*, %struct.stream_s** %streams, align 8, !tbaa !7
  %10 = bitcast %struct.stream_s* %9 to i8*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %10, %struct.gc_state_s* %11) #4
  %12 = bitcast i8* %call to %struct.stream_s*
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.gs_ref_memory_s*
  %streams1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 22
  store %struct.stream_s* %12, %struct.stream_s** %streams1, align 8, !tbaa !7
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gc_state_s* %15 to %struct.gc_procs_common_s**
  %17 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %16, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %17, i32 0, i32 0
  %18 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !22
  %19 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to %struct.gs_ref_memory_s*
  %names_array = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %20, i32 0, i32 23
  %21 = load %struct.ref_s*, %struct.ref_s** %names_array, align 8, !tbaa !18
  %22 = bitcast %struct.ref_s* %21 to i8*
  %23 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %18(i8* %22, %struct.gc_state_s* %23) #4
  %24 = bitcast i8* %call3 to %struct.ref_s*
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.gs_ref_memory_s*
  %names_array4 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 23
  store %struct.ref_s* %24, %struct.ref_s** %names_array4, align 8, !tbaa !18
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gc_state_s* %27 to %struct.gc_procs_common_s**
  %29 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %28, align 8, !tbaa !1
  %reloc_struct_ptr5 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %29, i32 0, i32 0
  %30 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr5, align 8, !tbaa !22
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to %struct.gs_ref_memory_s*
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %32, i32 0, i32 26
  %33 = load %struct.alloc_change_s*, %struct.alloc_change_s** %changes, align 8, !tbaa !19
  %34 = bitcast %struct.alloc_change_s* %33 to i8*
  %35 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call i8* %30(i8* %34, %struct.gc_state_s* %35) #4
  %36 = bitcast i8* %call6 to %struct.alloc_change_s*
  %37 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %38 = bitcast i8* %37 to %struct.gs_ref_memory_s*
  %changes7 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %38, i32 0, i32 26
  store %struct.alloc_change_s* %36, %struct.alloc_change_s** %changes7, align 8, !tbaa !19
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %40 = bitcast %struct.gc_state_s* %39 to %struct.gc_procs_common_s**
  %41 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %40, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %41, i32 0, i32 0
  %42 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !22
  %43 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %44 = bitcast i8* %43 to %struct.gs_ref_memory_s*
  %scan_limit = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %44, i32 0, i32 27
  %45 = load %struct.alloc_change_s*, %struct.alloc_change_s** %scan_limit, align 8, !tbaa !21
  %46 = bitcast %struct.alloc_change_s* %45 to i8*
  %47 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call9 = call i8* %42(i8* %46, %struct.gc_state_s* %47) #4
  %48 = bitcast i8* %call9 to %struct.alloc_change_s*
  %49 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %50 = bitcast i8* %49 to %struct.gs_ref_memory_s*
  %scan_limit10 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %50, i32 0, i32 27
  store %struct.alloc_change_s* %48, %struct.alloc_change_s** %scan_limit10, align 8, !tbaa !21
  %51 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gc_state_s* %51 to %struct.gc_procs_common_s**
  %53 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %52, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %53, i32 0, i32 0
  %54 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !22
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mptr, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %55, i32 0, i32 28
  %56 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !20
  %57 = bitcast %struct.alloc_save_s* %56 to i8*
  %58 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call i8* %54(i8* %57, %struct.gc_state_s* %58) #4
  %59 = bitcast i8* %call12 to %struct.alloc_save_s*
  %60 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mptr, align 8, !tbaa !1
  %reloc_saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %60, i32 0, i32 31
  store %struct.alloc_save_s* %59, %struct.alloc_save_s** %reloc_saved, align 8, !tbaa !24
  %61 = bitcast %struct.gs_ref_memory_s** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @i_alloc_bytes_immovable(%struct.gs_memory_s* %mem, i32 %size, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %obj = alloca %struct.obj_header_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  %6 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.obj_header_s* @alloc_obj(%struct.gs_ref_memory_s* %4, i64 %conv, %struct.gs_memory_struct_type_s* @st_bytes, i32 3, i8* %6) #4
  store %struct.obj_header_s* %call, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %7 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %cmp = icmp eq %struct.obj_header_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %9 = bitcast %struct.obj_header_s* %8 to i8*
  store i8* %9, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %10 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @i_resize_object(%struct.gs_memory_s* %mem, i8* %obj, i32 %new_num_elements, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %obj.addr = alloca i8*, align 8
  %new_num_elements.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %pp = alloca %struct.obj_header_s*, align 8
  %pstype = alloca %struct.gs_memory_struct_type_s*, align 8
  %old_size = alloca i64, align 8
  %new_size = alloca i64, align 8
  %old_size_rounded = alloca i64, align 8
  %new_size_rounded = alloca i64, align 8
  %new_obj = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store i32 %new_num_elements, i32* %new_num_elements.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.obj_header_s*
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %5, i64 -1
  store %struct.obj_header_s* %add.ptr, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %6 = bitcast %struct.gs_memory_struct_type_s** %pstype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %7, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %8 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %8, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  %9 = bitcast i64* %old_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %d1 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %10, i32 0, i32 0
  %o2 = bitcast %union._d* %d1 to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o2, i32 0, i32 1
  %11 = load i32, i32* %size, align 4, !tbaa !25
  %conv = zext i32 %11 to i64
  store i64 %conv, i64* %old_size, align 8, !tbaa !27
  %12 = bitcast i64* %new_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %13, i32 0, i32 0
  %14 = load i32, i32* %ssize, align 4, !tbaa !28
  %conv3 = zext i32 %14 to i64
  %15 = load i32, i32* %new_num_elements.addr, align 4, !tbaa !5
  %conv4 = zext i32 %15 to i64
  %mul = mul i64 %conv3, %conv4
  store i64 %mul, i64* %new_size, align 8, !tbaa !27
  %16 = bitcast i64* %old_size_rounded to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i64, i64* %old_size, align 8, !tbaa !27
  %add = add i64 %17, 7
  %and = and i64 %add, -8
  store i64 %and, i64* %old_size_rounded, align 8, !tbaa !27
  %18 = bitcast i64* %new_size_rounded to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i64, i64* %new_size, align 8, !tbaa !27
  %add5 = add i64 %19, 7
  %and6 = and i64 %add5, -8
  store i64 %and6, i64* %new_size_rounded, align 8, !tbaa !27
  %20 = bitcast i8** %new_obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i8* null, i8** %new_obj, align 8, !tbaa !1
  %21 = load i64, i64* %old_size_rounded, align 8, !tbaa !27
  %22 = load i64, i64* %new_size_rounded, align 8, !tbaa !27
  %cmp = icmp eq i64 %21, %22
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load i64, i64* %new_size, align 8, !tbaa !27
  %conv8 = trunc i64 %23 to i32
  %24 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %d9 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %24, i32 0, i32 0
  %o10 = bitcast %union._d* %d9 to %struct.obj_header_data_s*
  %size11 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o10, i32 0, i32 1
  store i32 %conv8, i32* %size11, align 4, !tbaa !25
  %25 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  store i8* %25, i8** %new_obj, align 8, !tbaa !1
  br label %if.end.33

if.else:                                          ; preds = %entry
  %26 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %27 = load i64, i64* %old_size_rounded, align 8, !tbaa !27
  %add.ptr12 = getelementptr inbounds i8, i8* %26, i64 %27
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %28, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 3
  %29 = load i8*, i8** %cbot, align 8, !tbaa !30
  %cmp13 = icmp eq i8* %add.ptr12, %29
  br i1 %cmp13, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %if.else
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc15 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %30, i32 0, i32 13
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc15, i32 0, i32 6
  %31 = load i8*, i8** %ctop, align 8, !tbaa !31
  %32 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %33 = load i64, i64* %new_size_rounded, align 8, !tbaa !27
  %cmp16 = icmp uge i64 %sub.ptr.sub, %33
  br i1 %cmp16, label %if.then.18, label %if.else.26

if.then.18:                                       ; preds = %land.lhs.true
  %34 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %35 = load i64, i64* %new_size_rounded, align 8, !tbaa !27
  %add.ptr19 = getelementptr inbounds i8, i8* %34, i64 %35
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc20 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %36, i32 0, i32 13
  %cbot21 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc20, i32 0, i32 3
  store i8* %add.ptr19, i8** %cbot21, align 8, !tbaa !30
  %37 = load i64, i64* %new_size, align 8, !tbaa !27
  %conv22 = trunc i64 %37 to i32
  %38 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %d23 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %38, i32 0, i32 0
  %o24 = bitcast %union._d* %d23 to %struct.obj_header_data_s*
  %size25 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o24, i32 0, i32 1
  store i32 %conv22, i32* %size25, align 4, !tbaa !25
  %39 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  store i8* %39, i8** %new_obj, align 8, !tbaa !1
  br label %if.end.32

if.else.26:                                       ; preds = %land.lhs.true, %if.else
  %40 = load i64, i64* %new_size_rounded, align 8, !tbaa !27
  %add27 = add i64 %40, 24
  %41 = load i64, i64* %old_size_rounded, align 8, !tbaa !27
  %cmp28 = icmp ule i64 %add27, %41
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.else.26
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %43 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %44 = bitcast i8* %43 to %struct.obj_header_s*
  %45 = load i64, i64* %new_size, align 8, !tbaa !27
  %conv31 = trunc i64 %45 to i32
  call void @trim_obj(%struct.gs_ref_memory_s* %42, %struct.obj_header_s* %44, i32 %conv31, %struct.chunk_s* null) #4
  %46 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  store i8* %46, i8** %new_obj, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.30, %if.else.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then.18
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  %47 = load i8*, i8** %new_obj, align 8, !tbaa !1
  %tobool = icmp ne i8* %47, null
  br i1 %tobool, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.33
  br label %do.body

do.body:                                          ; preds = %if.then.34
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %48 = load i8*, i8** %new_obj, align 8, !tbaa !1
  store i8* %48, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.33
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %50 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !32
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %52 = load i32, i32* %new_num_elements.addr, align 4, !tbaa !5
  %53 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  %54 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %50(%struct.gs_memory_s* %51, i32 %52, %struct.gs_memory_struct_type_s* %53, i8* %54) #4
  store i8* %call, i8** %new_obj, align 8, !tbaa !1
  %55 = load i8*, i8** %new_obj, align 8, !tbaa !1
  %cmp36 = icmp eq i8* %55, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.35
  %56 = load i8*, i8** %new_obj, align 8, !tbaa !1
  %57 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %58 = load i64, i64* %old_size, align 8, !tbaa !27
  %59 = load i64, i64* %new_size, align 8, !tbaa !27
  %cmp40 = icmp ult i64 %58, %59
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.39
  %60 = load i64, i64* %old_size, align 8, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %if.end.39
  %61 = load i64, i64* %new_size, align 8, !tbaa !27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %60, %cond.true ], [ %61, %cond.false ]
  %call42 = call i8* @memcpy(i8* %56, i8* %57, i64 %cond) #5
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %63 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %65 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %66 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %63(%struct.gs_memory_s* %64, i8* %65, i8* %66) #4
  %67 = load i8*, i8** %new_obj, align 8, !tbaa !1
  store i8* %67, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.38, %do.end
  %68 = bitcast i8** %new_obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i64* %new_size_rounded to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i64* %old_size_rounded to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i64* %new_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i64* %old_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.gs_memory_struct_type_s** %pstype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.obj_header_s** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i8*, i8** %retval
  ret i8* %76
}

; Function Attrs: nounwind uwtable
define internal void @i_free_object(%struct.gs_memory_s* %mem, i8* %ptr, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %pp = alloca %struct.obj_header_s*, align 8
  %pstype = alloca %struct.gs_memory_struct_type_s*, align 8
  %saved_stype = alloca %struct.gs_memory_struct_type_s, align 8
  %finalize = alloca void (%struct.gs_memory_s*, i8*)*, align 8
  %size = alloca i32, align 4
  %rounded_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cl = alloca %struct.chunk_locator_s, align 8
  %pfl = alloca %struct.obj_header_s**, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_memory_struct_type_s** %pstype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_memory_struct_type_s* %saved_stype to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #1
  %6 = bitcast void (%struct.gs_memory_s*, i8*)** %finalize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %rounded_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to %struct.obj_header_s*
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %11, i64 -1
  store %struct.obj_header_s* %add.ptr, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %12 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %12, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %13 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %13, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  %14 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %d1 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %14, i32 0, i32 0
  %o2 = bitcast %union._d* %d1 to %struct.obj_header_data_s*
  %size3 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o2, i32 0, i32 1
  %15 = load i32, i32* %size3, align 4, !tbaa !25
  store i32 %15, i32* %size, align 4, !tbaa !5
  %16 = load i32, i32* %size, align 4, !tbaa !5
  %add = add i32 %16, 7
  %and = and i32 %add, -8
  %conv = zext i32 %and to i64
  %conv4 = trunc i64 %conv to i32
  store i32 %conv4, i32* %rounded_size, align 4, !tbaa !5
  %17 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  %finalize5 = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %17, i32 0, i32 6
  %18 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize5, align 8, !tbaa !35
  store void (%struct.gs_memory_s*, i8*)* %18, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %19 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %cmp6 = icmp ne void (%struct.gs_memory_s*, i8*)* %19, null
  br i1 %cmp6, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %if.end
  %20 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 97), align 1, !tbaa !36
  %conv9 = sext i8 %20 to i32
  %tobool = icmp ne i32 %conv9, 0
  br i1 %tobool, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %21 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 65), align 1, !tbaa !36
  %conv10 = sext i8 %21 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.then.8
  %22 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  %23 = bitcast %struct.gs_memory_struct_type_s* %saved_stype to i8*
  %24 = bitcast %struct.gs_memory_struct_type_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 64, i32 8, i1 false), !tbaa.struct !37
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  call void %25(%struct.gs_memory_s* %26, i8* %27) #4
  %28 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 97), align 1, !tbaa !36
  %conv14 = sext i8 %28 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %do.end
  %29 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 65), align 1, !tbaa !36
  %conv17 = sext i8 %29 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.16, %do.end
  store %struct.gs_memory_struct_type_s* %saved_stype, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %lor.lhs.false.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %30 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %31 = load i32, i32* %rounded_size, align 4, !tbaa !5
  %idx.ext = zext i32 %31 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %32, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 3
  %33 = load i8*, i8** %cbot, align 8, !tbaa !30
  %cmp23 = icmp eq i8* %add.ptr22, %33
  br i1 %cmp23, label %if.then.25, label %if.end.43

if.then.25:                                       ; preds = %if.end.21
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.body.29
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  %34 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %35 = bitcast %struct.obj_header_s* %34 to i8*
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc35 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %36, i32 0, i32 13
  %cbot36 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc35, i32 0, i32 3
  store i8* %35, i8** %cbot36, align 8, !tbaa !30
  %37 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %38 = bitcast %struct.obj_header_s* %37 to i8*
  %39 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc37 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %39, i32 0, i32 13
  %int_freed_top = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc37, i32 0, i32 2
  %40 = load i8*, i8** %int_freed_top, align 8, !tbaa !38
  %cmp38 = icmp ule i8* %38, %40
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %do.end.34
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc41 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %41, i32 0, i32 13
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  call void @consolidate_chunk_free(%struct.chunk_s* %cc41, %struct.gs_ref_memory_s* %42) #4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %do.end.34
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.178

if.end.43:                                        ; preds = %if.end.21
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %d44 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %43, i32 0, i32 0
  %o45 = bitcast %union._d* %d44 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o45, i32 0, i32 0
  %h = bitcast %union._f* %f to %struct._h*
  %44 = bitcast %struct._h* %h to i32*
  %bf.load = load i32, i32* %44, align 4
  %bf.clear = and i32 %bf.load, 1
  %tobool46 = icmp ne i32 %bf.clear, 0
  br i1 %tobool46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %if.end.43
  %45 = bitcast %struct.chunk_locator_s* %cl to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #1
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 0
  store %struct.gs_ref_memory_s* %46, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !39
  %cp = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp, align 8, !tbaa !40
  %47 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %call = call i32 @chunk_locate_ptr(i8* %47, %struct.chunk_locator_s* %cl) #4
  %tobool48 = icmp ne i32 %call, 0
  br i1 %tobool48, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.then.47
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %is_controlled = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %48, i32 0, i32 9
  %49 = load i32, i32* %is_controlled, align 4, !tbaa !41
  %tobool50 = icmp ne i32 %49, 0
  br i1 %tobool50, label %if.end.53, label %if.then.51

if.then.51:                                       ; preds = %if.then.49
  %cp52 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cl, i32 0, i32 1
  %50 = load %struct.chunk_s*, %struct.chunk_s** %cp52, align 8, !tbaa !40
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  call void @alloc_free_chunk(%struct.chunk_s* %50, %struct.gs_ref_memory_s* %51) #4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.then.49
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.then.47
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.end.53
  %52 = bitcast %struct.chunk_locator_s* %cl to i8*
  call void @llvm.lifetime.end(i64 16, i8* %52) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.178 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.55

if.end.55:                                        ; preds = %cleanup.cont, %if.end.43
  %53 = load i32, i32* %rounded_size, align 4, !tbaa !5
  %conv56 = zext i32 %53 to i64
  %cmp57 = icmp uge i64 %conv56, 8
  br i1 %cmp57, label %if.then.59, label %if.else.158

if.then.59:                                       ; preds = %if.end.55
  %54 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %55 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %55, i32 0, i32 15
  %memory60 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed, i32 0, i32 0
  store %struct.gs_ref_memory_s* %54, %struct.gs_ref_memory_s** %memory60, align 8, !tbaa !42
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed61 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %56, i32 0, i32 15
  %cp62 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed61, i32 0, i32 1
  %57 = load %struct.chunk_s*, %struct.chunk_s** %cp62, align 8, !tbaa !40
  %cmp63 = icmp ne %struct.chunk_s* %57, null
  br i1 %cmp63, label %land.lhs.true, label %lor.lhs.false.90

land.lhs.true:                                    ; preds = %if.then.59
  %58 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed65 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %59, i32 0, i32 15
  %cp66 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed65, i32 0, i32 1
  %60 = load %struct.chunk_s*, %struct.chunk_s** %cp66, align 8, !tbaa !40
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %60, i32 0, i32 1
  %61 = load i8*, i8** %cbase, align 8, !tbaa !43
  %cmp67 = icmp uge i8* %58, %61
  br i1 %cmp67, label %land.lhs.true.69, label %lor.lhs.false.90

land.lhs.true.69:                                 ; preds = %land.lhs.true
  %62 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %63 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed70 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %63, i32 0, i32 15
  %cp71 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed70, i32 0, i32 1
  %64 = load %struct.chunk_s*, %struct.chunk_s** %cp71, align 8, !tbaa !40
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %64, i32 0, i32 8
  %65 = load i8*, i8** %cend, align 8, !tbaa !44
  %cmp72 = icmp ult i8* %62, %65
  br i1 %cmp72, label %land.lhs.true.74, label %lor.lhs.false.90

land.lhs.true.74:                                 ; preds = %land.lhs.true.69
  %66 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed75 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %66, i32 0, i32 15
  %cp76 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed75, i32 0, i32 1
  %67 = load %struct.chunk_s*, %struct.chunk_s** %cp76, align 8, !tbaa !40
  %inner_count = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %67, i32 0, i32 12
  %68 = load i32, i32* %inner_count, align 4, !tbaa !45
  %cmp77 = icmp ne i32 %68, 0
  br i1 %cmp77, label %land.lhs.true.79, label %if.then.94

land.lhs.true.79:                                 ; preds = %land.lhs.true.74
  %69 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %70 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed80 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %70, i32 0, i32 15
  %cp81 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed80, i32 0, i32 1
  %71 = load %struct.chunk_s*, %struct.chunk_s** %cp81, align 8, !tbaa !40
  %cbot82 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %71, i32 0, i32 3
  %72 = load i8*, i8** %cbot82, align 8, !tbaa !46
  %cmp83 = icmp uge i8* %69, %72
  br i1 %cmp83, label %land.lhs.true.85, label %if.then.94

land.lhs.true.85:                                 ; preds = %land.lhs.true.79
  %73 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %74 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed86 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %74, i32 0, i32 15
  %cp87 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed86, i32 0, i32 1
  %75 = load %struct.chunk_s*, %struct.chunk_s** %cp87, align 8, !tbaa !40
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %75, i32 0, i32 6
  %76 = load i8*, i8** %ctop, align 8, !tbaa !47
  %cmp88 = icmp ult i8* %73, %76
  br i1 %cmp88, label %lor.lhs.false.90, label %if.then.94

lor.lhs.false.90:                                 ; preds = %land.lhs.true.85, %land.lhs.true.69, %land.lhs.true, %if.then.59
  %77 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %78 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed91 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %78, i32 0, i32 15
  %call92 = call i32 @chunk_locate_ptr(i8* %77, %struct.chunk_locator_s* %cfreed91) #4
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.157

if.then.94:                                       ; preds = %lor.lhs.false.90, %land.lhs.true.85, %land.lhs.true.79, %land.lhs.true.74
  %79 = bitcast %struct.obj_header_s*** %pfl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = load i32, i32* %size, align 4, !tbaa !5
  %cmp95 = icmp ugt i32 %80, 800
  br i1 %cmp95, label %if.then.97, label %if.else

if.then.97:                                       ; preds = %if.then.94
  %81 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %freelists = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %81, i32 0, i32 34
  %arrayidx = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists, i32 0, i64 101
  store %struct.obj_header_s** %arrayidx, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  %82 = load i32, i32* %rounded_size, align 4, !tbaa !5
  %83 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %largest_free_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %83, i32 0, i32 33
  %84 = load i32, i32* %largest_free_size, align 4, !tbaa !48
  %cmp98 = icmp ugt i32 %82, %84
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.then.97
  %85 = load i32, i32* %rounded_size, align 4, !tbaa !5
  %86 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %largest_free_size101 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %86, i32 0, i32 33
  store i32 %85, i32* %largest_free_size101, align 4, !tbaa !48
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.then.97
  br label %if.end.106

if.else:                                          ; preds = %if.then.94
  %87 = load i32, i32* %size, align 4, !tbaa !5
  %add103 = add i32 %87, 7
  %shr = lshr i32 %add103, 3
  %idxprom = zext i32 %shr to i64
  %88 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %freelists104 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %88, i32 0, i32 34
  %arrayidx105 = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists104, i32 0, i64 %idxprom
  store %struct.obj_header_s** %arrayidx105, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  br label %if.end.106

if.end.106:                                       ; preds = %if.else, %if.end.102
  %89 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed107 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %89, i32 0, i32 15
  %cp108 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed107, i32 0, i32 1
  %90 = load %struct.chunk_s*, %struct.chunk_s** %cp108, align 8, !tbaa !49
  %chead = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %90, i32 0, i32 0
  %91 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !50
  %92 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc109 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %92, i32 0, i32 13
  %chead110 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc109, i32 0, i32 0
  %93 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead110, align 8, !tbaa !51
  %cmp111 = icmp eq %struct.chunk_head_s* %91, %93
  br i1 %cmp111, label %if.then.113, label %if.else.124

if.then.113:                                      ; preds = %if.end.106
  %94 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %95 = bitcast %struct.obj_header_s* %94 to i8*
  %96 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc114 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %96, i32 0, i32 13
  %int_freed_top115 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc114, i32 0, i32 2
  %97 = load i8*, i8** %int_freed_top115, align 8, !tbaa !38
  %cmp116 = icmp uge i8* %95, %97
  br i1 %cmp116, label %if.then.118, label %if.end.123

if.then.118:                                      ; preds = %if.then.113
  %98 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %99 = load i32, i32* %rounded_size, align 4, !tbaa !5
  %idx.ext119 = zext i32 %99 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %98, i64 %idx.ext119
  %100 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc121 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %100, i32 0, i32 13
  %int_freed_top122 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc121, i32 0, i32 2
  store i8* %add.ptr120, i8** %int_freed_top122, align 8, !tbaa !38
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.118, %if.then.113
  br label %if.end.137

if.else.124:                                      ; preds = %if.end.106
  %101 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %102 = bitcast %struct.obj_header_s* %101 to i8*
  %103 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed125 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %103, i32 0, i32 15
  %cp126 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed125, i32 0, i32 1
  %104 = load %struct.chunk_s*, %struct.chunk_s** %cp126, align 8, !tbaa !49
  %int_freed_top127 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %104, i32 0, i32 2
  %105 = load i8*, i8** %int_freed_top127, align 8, !tbaa !52
  %cmp128 = icmp uge i8* %102, %105
  br i1 %cmp128, label %if.then.130, label %if.end.136

if.then.130:                                      ; preds = %if.else.124
  %106 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %107 = load i32, i32* %rounded_size, align 4, !tbaa !5
  %idx.ext131 = zext i32 %107 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %106, i64 %idx.ext131
  %108 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfreed133 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %108, i32 0, i32 15
  %cp134 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed133, i32 0, i32 1
  %109 = load %struct.chunk_s*, %struct.chunk_s** %cp134, align 8, !tbaa !49
  %int_freed_top135 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %109, i32 0, i32 2
  store i8* %add.ptr132, i8** %int_freed_top135, align 8, !tbaa !52
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.130, %if.else.124
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.123
  %110 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %d138 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %110, i32 0, i32 0
  %o139 = bitcast %union._d* %d138 to %struct.obj_header_data_s*
  %t140 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o139, i32 0, i32 2
  %type141 = bitcast %union._t* %t140 to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* @st_free, %struct.gs_memory_struct_type_s** %type141, align 8, !tbaa !1
  %111 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %d142 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %111, i32 0, i32 0
  %o143 = bitcast %union._d* %d142 to %struct.obj_header_data_s*
  %f144 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o143, i32 0, i32 0
  %m = bitcast %union._f* %f144 to %struct._m*
  %112 = bitcast %struct._m* %m to i32*
  %bf.load145 = load i32, i32* %112, align 4
  %bf.clear146 = and i32 %bf.load145, 1
  %bf.set = or i32 %bf.clear146, -2
  store i32 %bf.set, i32* %112, align 4
  br label %do.body.147

do.body.147:                                      ; preds = %if.end.137
  br label %do.body.148

do.body.148:                                      ; preds = %do.body.147
  br label %do.cond.149

do.cond.149:                                      ; preds = %do.body.148
  br label %do.end.150

do.end.150:                                       ; preds = %do.cond.149
  br label %do.cond.151

do.cond.151:                                      ; preds = %do.end.150
  br label %do.end.152

do.end.152:                                       ; preds = %do.cond.151
  %113 = load %struct.obj_header_s**, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  %114 = load %struct.obj_header_s*, %struct.obj_header_s** %113, align 8, !tbaa !1
  %115 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %116 = bitcast i8* %115 to %struct.obj_header_s**
  store %struct.obj_header_s* %114, %struct.obj_header_s** %116, align 8, !tbaa !1
  %117 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %118 = bitcast i8* %117 to %struct.obj_header_s*
  %119 = load %struct.obj_header_s**, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  store %struct.obj_header_s* %118, %struct.obj_header_s** %119, align 8, !tbaa !1
  br label %do.body.153

do.body.153:                                      ; preds = %do.end.152
  br label %do.cond.154

do.cond.154:                                      ; preds = %do.body.153
  br label %do.end.155

do.end.155:                                       ; preds = %do.cond.154
  store i32 1, i32* %cleanup.dest.slot
  %120 = bitcast %struct.obj_header_s*** %pfl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  br label %cleanup.178

if.end.157:                                       ; preds = %lor.lhs.false.90
  br label %if.end.169

if.else.158:                                      ; preds = %if.end.55
  %121 = load %struct.obj_header_s*, %struct.obj_header_s** %pp, align 8, !tbaa !1
  %d159 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %121, i32 0, i32 0
  %o160 = bitcast %union._d* %d159 to %struct.obj_header_data_s*
  %t161 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o160, i32 0, i32 2
  %type162 = bitcast %union._t* %t161 to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* @st_free, %struct.gs_memory_struct_type_s** %type162, align 8, !tbaa !1
  br label %do.body.163

do.body.163:                                      ; preds = %if.else.158
  br label %do.body.164

do.body.164:                                      ; preds = %do.body.163
  br label %do.cond.165

do.cond.165:                                      ; preds = %do.body.164
  br label %do.end.166

do.end.166:                                       ; preds = %do.cond.165
  br label %do.cond.167

do.cond.167:                                      ; preds = %do.end.166
  br label %do.end.168

do.end.168:                                       ; preds = %do.cond.167
  br label %if.end.169

if.end.169:                                       ; preds = %do.end.168, %if.end.157
  br label %do.body.170

do.body.170:                                      ; preds = %if.end.169
  br label %do.cond.171

do.cond.171:                                      ; preds = %do.body.170
  br label %do.end.172

do.end.172:                                       ; preds = %do.cond.171
  %122 = load i32, i32* %size, align 4, !tbaa !5
  %conv173 = zext i32 %122 to i64
  %add174 = add i64 %conv173, 24
  %add175 = add i64 %add174, 7
  %and176 = and i64 %add175, -8
  %123 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %123, i32 0, i32 18
  %objects = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 0
  %124 = load i64, i64* %objects, align 8, !tbaa !53
  %add177 = add i64 %124, %and176
  store i64 %add177, i64* %objects, align 8, !tbaa !53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.178

cleanup.178:                                      ; preds = %do.end.172, %do.end.155, %cleanup, %if.end.42, %if.then
  %125 = bitcast i32* %rounded_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast void (%struct.gs_memory_s*, i8*)** %finalize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct.gs_memory_struct_type_s* %saved_stype to i8*
  call void @llvm.lifetime.end(i64 64, i8* %128) #1
  %129 = bitcast %struct.gs_memory_struct_type_s** %pstype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast %struct.obj_header_s** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %cleanup.dest.185 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.185, label %unreachable [
    i32 0, label %cleanup.cont.186
    i32 1, label %cleanup.cont.186
  ]

cleanup.cont.186:                                 ; preds = %cleanup.178, %cleanup.178
  ret void

unreachable:                                      ; preds = %cleanup.178
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_s* @i_stable(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !54
  ret %struct.gs_memory_s* %1
}

; Function Attrs: nounwind uwtable
define internal void @i_status(%struct.gs_memory_s* %mem, %struct.gs_memory_status_s* %pstat) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstat.addr = alloca %struct.gs_memory_status_s*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %unused = alloca i64, align 8
  %inner = alloca i64, align 8
  %cp = alloca %struct.chunk_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_status_s* %pstat, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast i64* %unused to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 18
  %refs = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 1
  %5 = load i64, i64* %refs, align 8, !tbaa !55
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %lost1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %6, i32 0, i32 18
  %strings = getelementptr inbounds %struct.lost_, %struct.lost_* %lost1, i32 0, i32 2
  %7 = load i64, i64* %strings, align 8, !tbaa !56
  %add = add i64 %5, %7
  store i64 %add, i64* %unused, align 8, !tbaa !27
  %8 = bitcast i64* %inner to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 0, i64* %inner, align 8, !tbaa !27
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %9) #4
  %10 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 11
  %12 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !57
  store %struct.chunk_s* %12, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %13 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp ne %struct.chunk_s* %13, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %14, i32 0, i32 6
  %15 = load i8*, i8** %ctop, align 8, !tbaa !47
  %16 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %16, i32 0, i32 3
  %17 = load i8*, i8** %cbot, align 8, !tbaa !46
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load i64, i64* %unused, align 8, !tbaa !27
  %add2 = add i64 %18, %sub.ptr.sub
  store i64 %add2, i64* %unused, align 8, !tbaa !27
  %19 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %outer = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %19, i32 0, i32 11
  %20 = load %struct.chunk_s*, %struct.chunk_s** %outer, align 8, !tbaa !58
  %tobool = icmp ne %struct.chunk_s* %20, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %21 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %21, i32 0, i32 8
  %22 = load i8*, i8** %cend, align 8, !tbaa !44
  %23 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %chead = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %23, i32 0, i32 0
  %24 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !50
  %25 = bitcast %struct.chunk_head_s* %24 to i8*
  %sub.ptr.lhs.cast3 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %25 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %26 = load i64, i64* %inner, align 8, !tbaa !27
  %add6 = add i64 %26, %sub.ptr.sub5
  store i64 %add6, i64* %inner, align 8, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %27 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %27, i32 0, i32 10
  %28 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !59
  store %struct.chunk_s* %28, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call = call i64 @compute_free_objects(%struct.gs_ref_memory_s* %30) #4
  %31 = load i64, i64* %unused, align 8, !tbaa !27
  %add7 = add i64 %31, %call
  store i64 %add7, i64* %unused, align 8, !tbaa !27
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %32, i32 0, i32 16
  %33 = load i64, i64* %allocated, align 8, !tbaa !60
  %34 = load i64, i64* %inner, align 8, !tbaa !27
  %add8 = add i64 %33, %34
  %35 = load i64, i64* %unused, align 8, !tbaa !27
  %sub = sub i64 %add8, %35
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %previous_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %36, i32 0, i32 32
  %used = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %previous_status, i32 0, i32 1
  %37 = load i64, i64* %used, align 8, !tbaa !61
  %add9 = add i64 %sub, %37
  %38 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %used10 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %38, i32 0, i32 1
  store i64 %add9, i64* %used10, align 8, !tbaa !62
  %39 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %allocated11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %39, i32 0, i32 16
  %40 = load i64, i64* %allocated11, align 8, !tbaa !60
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %previous_status12 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %41, i32 0, i32 32
  %allocated13 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %previous_status12, i32 0, i32 0
  %42 = load i64, i64* %allocated13, align 8, !tbaa !63
  %add14 = add i64 %40, %42
  %43 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %allocated15 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %43, i32 0, i32 0
  store i64 %add14, i64* %allocated15, align 8, !tbaa !64
  %44 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %is_thread_safe = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %44, i32 0, i32 2
  store i32 0, i32* %is_thread_safe, align 4, !tbaa !65
  %45 = bitcast i64* %inner to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i64* %unused to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @i_free_all(%struct.gs_memory_s* %mem, i32 %free_mask, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %free_mask.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %csucc = alloca %struct.chunk_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %free_mask, i32* %free_mask.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %free_mask.addr, align 4, !tbaa !5
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.chunk_s** %csucc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %6, i32 0, i32 12
  %7 = load %struct.chunk_s*, %struct.chunk_s** %clast, align 8, !tbaa !66
  store %struct.chunk_s* %7, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp ne %struct.chunk_s* %8, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cprev = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %9, i32 0, i32 9
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !67
  store %struct.chunk_s* %10, %struct.chunk_s** %csucc, align 8, !tbaa !1
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %cbase, align 8, !tbaa !43
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 24
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_memory_s* %13 to i8*
  %cmp1 = icmp ne i8* %add.ptr, %14
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.body
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  call void @alloc_free_chunk(%struct.chunk_s* %15, %struct.gs_ref_memory_s* %16) #4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.chunk_s*, %struct.chunk_s** %csucc, align 8, !tbaa !1
  store %struct.chunk_s* %17, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast %struct.chunk_s** %csucc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  br label %if.end.3

if.end.3:                                         ; preds = %for.end, %entry
  %19 = load i32, i32* %free_mask.addr, align 4, !tbaa !5
  %and4 = and i32 %19, 4
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.19

if.then.6:                                        ; preds = %if.end.3
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %clast7 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %20, i32 0, i32 12
  %21 = load %struct.chunk_s*, %struct.chunk_s** %clast7, align 8, !tbaa !66
  store %struct.chunk_s* %21, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.16, %if.then.6
  %22 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.chunk_s* %22, null
  br i1 %cmp9, label %for.body.10, label %for.end.18

for.body.10:                                      ; preds = %for.cond.8
  %23 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase11 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %cbase11, align 8, !tbaa !43
  %add.ptr12 = getelementptr inbounds i8, i8* %24, i64 24
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gs_memory_s* %25 to i8*
  %cmp13 = icmp eq i8* %add.ptr12, %26
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body.10
  %27 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  call void @alloc_free_chunk(%struct.chunk_s* %27, %struct.gs_ref_memory_s* %28) #4
  br label %for.end.18

if.end.15:                                        ; preds = %for.body.10
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %29 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cprev17 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %29, i32 0, i32 9
  %30 = load %struct.chunk_s*, %struct.chunk_s** %cprev17, align 8, !tbaa !67
  store %struct.chunk_s* %30, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond.8

for.end.18:                                       ; preds = %if.then.14, %for.cond.8
  br label %if.end.19

if.end.19:                                        ; preds = %for.end.18, %if.end.3
  %31 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @i_consolidate_free(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_memory_s* %0 to %struct.gs_ref_memory_s*
  call void @ialloc_consolidate_free(%struct.gs_ref_memory_s* %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @i_alloc_bytes(%struct.gs_memory_s* %mem, i32 %size, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %obj = alloca %struct.obj_header_s*, align 8
  %pfl = alloca %struct.obj_header_s**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.obj_header_s*** %pfl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp ule i32 %5, 800
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %add = add i32 %6, 7
  %shr = lshr i32 %add, 3
  %idxprom = zext i32 %shr to i64
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %freelists = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 34
  %arrayidx = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists, i32 0, i64 %idxprom
  store %struct.obj_header_s** %arrayidx, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.obj_header_s* %8, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.obj_header_s**, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %9, align 8, !tbaa !1
  store %struct.obj_header_s* %10, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %11 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %12 = bitcast %struct.obj_header_s* %11 to %struct.obj_header_s**
  %13 = load %struct.obj_header_s*, %struct.obj_header_s** %12, align 8, !tbaa !1
  %14 = load %struct.obj_header_s**, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  store %struct.obj_header_s* %13, %struct.obj_header_s** %14, align 8, !tbaa !1
  %15 = load i32, i32* %size.addr, align 4, !tbaa !5
  %16 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %16, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx2, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size3 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  store i32 %15, i32* %size3, align 4, !tbaa !25
  %17 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %17, i64 -1
  %d5 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx4, i32 0, i32 0
  %o6 = bitcast %union._d* %d5 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o6, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* @st_bytes, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.body.7

do.body.7:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.7
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.end
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  br label %do.cond.11

do.cond.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  br label %if.end.80

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp13 = icmp ugt i32 %18, 800
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.31

land.lhs.true.14:                                 ; preds = %if.else
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %20 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call %struct.obj_header_s* @large_freelist_alloc(%struct.gs_ref_memory_s* %19, i32 %20) #4
  store %struct.obj_header_s* %call, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %cmp15 = icmp ne %struct.obj_header_s* %call, null
  br i1 %cmp15, label %if.then.16, label %if.else.31

if.then.16:                                       ; preds = %land.lhs.true.14
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %21, i64 -1
  %d18 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx17, i32 0, i32 0
  %o19 = bitcast %union._d* %d18 to %struct.obj_header_data_s*
  %t20 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o19, i32 0, i32 2
  %type21 = bitcast %union._t* %t20 to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* @st_bytes, %struct.gs_memory_struct_type_s** %type21, align 8, !tbaa !1
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.16
  br label %do.body.23

do.body.23:                                       ; preds = %do.body.22
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.end.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.body.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.79

if.else.31:                                       ; preds = %land.lhs.true.14, %if.else
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %22, i32 0, i32 13
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 6
  %23 = load i8*, i8** %ctop, align 8, !tbaa !31
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc32 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc32, i32 0, i32 3
  %25 = load i8*, i8** %cbot, align 8, !tbaa !30
  %26 = bitcast i8* %25 to %struct.obj_header_s*
  store %struct.obj_header_s* %26, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %27 = bitcast %struct.obj_header_s* %26 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %28 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %28 to i64
  %add33 = add i64 %conv, 56
  %cmp34 = icmp uge i64 %sub.ptr.sub, %add33
  br i1 %cmp34, label %land.lhs.true.36, label %if.else.69

land.lhs.true.36:                                 ; preds = %if.else.31
  %29 = load i32, i32* %size.addr, align 4, !tbaa !5
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %large_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %30, i32 0, i32 6
  %31 = load i32, i32* %large_size, align 4, !tbaa !68
  %cmp37 = icmp ult i32 %29, %31
  br i1 %cmp37, label %if.then.39, label %if.else.69

if.then.39:                                       ; preds = %land.lhs.true.36
  %32 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %33 = bitcast %struct.obj_header_s* %32 to i8*
  %34 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv40 = zext i32 %34 to i64
  %add41 = add i64 %conv40, 24
  %add42 = add i64 %add41, 7
  %and = and i64 %add42, -8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %and
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc43 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %35, i32 0, i32 13
  %cbot44 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc43, i32 0, i32 3
  store i8* %add.ptr, i8** %cbot44, align 8, !tbaa !30
  %36 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d45 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %36, i32 0, i32 0
  %o46 = bitcast %union._d* %d45 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o46, i32 0, i32 0
  %h = bitcast %union._f* %f to %struct._h*
  %37 = bitcast %struct._h* %h to i32*
  %bf.load = load i32, i32* %37, align 4
  %bf.clear = and i32 %bf.load, 1
  store i32 %bf.clear, i32* %37, align 4
  %38 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d47 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %38, i32 0, i32 0
  %o48 = bitcast %union._d* %d47 to %struct.obj_header_data_s*
  %f49 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o48, i32 0, i32 0
  %h50 = bitcast %union._f* %f49 to %struct._h*
  %39 = bitcast %struct._h* %h50 to i32*
  %bf.load51 = load i32, i32* %39, align 4
  %bf.clear52 = and i32 %bf.load51, -2
  store i32 %bf.clear52, i32* %39, align 4
  %40 = load i32, i32* %size.addr, align 4, !tbaa !5
  %41 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d53 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %41, i32 0, i32 0
  %o54 = bitcast %union._d* %d53 to %struct.obj_header_data_s*
  %size55 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o54, i32 0, i32 1
  store i32 %40, i32* %size55, align 4, !tbaa !25
  %42 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d56 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %42, i32 0, i32 0
  %o57 = bitcast %union._d* %d56 to %struct.obj_header_data_s*
  %t58 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o57, i32 0, i32 2
  %type59 = bitcast %union._t* %t58 to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* @st_bytes, %struct.gs_memory_struct_type_s** %type59, align 8, !tbaa !1
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %43, i32 1
  store %struct.obj_header_s* %incdec.ptr, %struct.obj_header_s** %obj, align 8, !tbaa !1
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.39
  br label %do.body.61

do.body.61:                                       ; preds = %do.body.60
  br label %do.cond.62

do.cond.62:                                       ; preds = %do.body.61
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.end.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.65
  br label %do.cond.67

do.cond.67:                                       ; preds = %do.body.66
  br label %do.end.68

do.end.68:                                        ; preds = %do.cond.67
  br label %if.end.78

if.else.69:                                       ; preds = %land.lhs.true.36, %if.else.31
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %45 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv70 = zext i32 %45 to i64
  %46 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call71 = call %struct.obj_header_s* @alloc_obj(%struct.gs_ref_memory_s* %44, i64 %conv70, %struct.gs_memory_struct_type_s* @st_bytes, i32 0, i8* %46) #4
  store %struct.obj_header_s* %call71, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %47 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %cmp72 = icmp eq %struct.obj_header_s* %47, null
  br i1 %cmp72, label %if.then.74, label %if.end

if.then.74:                                       ; preds = %if.else.69
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else.69
  br label %do.body.75

do.body.75:                                       ; preds = %if.end
  br label %do.cond.76

do.cond.76:                                       ; preds = %do.body.75
  br label %do.end.77

do.end.77:                                        ; preds = %do.cond.76
  br label %if.end.78

if.end.78:                                        ; preds = %do.end.77, %do.end.68
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %do.end.30
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %do.end.12
  %48 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %49 = bitcast %struct.obj_header_s* %48 to i8*
  store i8* %49, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.80, %if.then.74
  %50 = bitcast %struct.obj_header_s*** %pfl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load i8*, i8** %retval
  ret i8* %53
}

; Function Attrs: nounwind uwtable
define internal i8* @i_alloc_struct(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %size = alloca i32, align 4
  %obj = alloca %struct.obj_header_s*, align 8
  %pfl = alloca %struct.obj_header_s**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %4, i32 0, i32 0
  %5 = load i32, i32* %ssize, align 4, !tbaa !28
  store i32 %5, i32* %size, align 4, !tbaa !5
  %6 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.obj_header_s*** %pfl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %size, align 4, !tbaa !5
  %cmp = icmp ule i32 %8, 800
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end
  %9 = load i32, i32* %size, align 4, !tbaa !5
  %add = add i32 %9, 7
  %shr = lshr i32 %add, 3
  %idxprom = zext i32 %shr to i64
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %freelists = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %10, i32 0, i32 34
  %arrayidx = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists, i32 0, i64 %idxprom
  store %struct.obj_header_s** %arrayidx, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  %11 = load %struct.obj_header_s*, %struct.obj_header_s** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.obj_header_s* %11, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.obj_header_s**, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  %13 = load %struct.obj_header_s*, %struct.obj_header_s** %12, align 8, !tbaa !1
  store %struct.obj_header_s* %13, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %14 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %15 = bitcast %struct.obj_header_s* %14 to %struct.obj_header_s**
  %16 = load %struct.obj_header_s*, %struct.obj_header_s** %15, align 8, !tbaa !1
  %17 = load %struct.obj_header_s**, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  store %struct.obj_header_s* %16, %struct.obj_header_s** %17, align 8, !tbaa !1
  %18 = load i32, i32* %size, align 4, !tbaa !5
  %19 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %19, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx2, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size3 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  store i32 %18, i32* %size3, align 4, !tbaa !25
  %20 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %21, i64 -1
  %d5 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx4, i32 0, i32 0
  %o6 = bitcast %union._d* %d5 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o6, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* %20, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  br label %do.body.7

do.body.7:                                        ; preds = %if.then
  br label %do.body.8

do.body.8:                                        ; preds = %do.body.7
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.body.8
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  br label %do.cond.11

do.cond.11:                                       ; preds = %do.end.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  br label %do.cond.14

do.cond.14:                                       ; preds = %do.body.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  br label %if.end.83

if.else:                                          ; preds = %land.lhs.true, %do.end
  %22 = load i32, i32* %size, align 4, !tbaa !5
  %cmp16 = icmp ugt i32 %22, 800
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.34

land.lhs.true.17:                                 ; preds = %if.else
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %24 = load i32, i32* %size, align 4, !tbaa !5
  %call = call %struct.obj_header_s* @large_freelist_alloc(%struct.gs_ref_memory_s* %23, i32 %24) #4
  store %struct.obj_header_s* %call, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %cmp18 = icmp ne %struct.obj_header_s* %call, null
  br i1 %cmp18, label %if.then.19, label %if.else.34

if.then.19:                                       ; preds = %land.lhs.true.17
  %25 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %26 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %26, i64 -1
  %d21 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx20, i32 0, i32 0
  %o22 = bitcast %union._d* %d21 to %struct.obj_header_data_s*
  %t23 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o22, i32 0, i32 2
  %type24 = bitcast %union._t* %t23 to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* %25, %struct.gs_memory_struct_type_s** %type24, align 8, !tbaa !1
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.19
  br label %do.body.26

do.body.26:                                       ; preds = %do.body.25
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  br label %do.cond.29

do.cond.29:                                       ; preds = %do.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.body.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  br label %if.end.82

if.else.34:                                       ; preds = %land.lhs.true.17, %if.else
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %27, i32 0, i32 13
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 6
  %28 = load i8*, i8** %ctop, align 8, !tbaa !31
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc35 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %29, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc35, i32 0, i32 3
  %30 = load i8*, i8** %cbot, align 8, !tbaa !30
  %31 = bitcast i8* %30 to %struct.obj_header_s*
  store %struct.obj_header_s* %31, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %32 = bitcast %struct.obj_header_s* %31 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %33 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %33 to i64
  %add36 = add i64 %conv, 56
  %cmp37 = icmp uge i64 %sub.ptr.sub, %add36
  br i1 %cmp37, label %land.lhs.true.39, label %if.else.72

land.lhs.true.39:                                 ; preds = %if.else.34
  %34 = load i32, i32* %size, align 4, !tbaa !5
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %large_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %35, i32 0, i32 6
  %36 = load i32, i32* %large_size, align 4, !tbaa !68
  %cmp40 = icmp ult i32 %34, %36
  br i1 %cmp40, label %if.then.42, label %if.else.72

if.then.42:                                       ; preds = %land.lhs.true.39
  %37 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %38 = bitcast %struct.obj_header_s* %37 to i8*
  %39 = load i32, i32* %size, align 4, !tbaa !5
  %conv43 = zext i32 %39 to i64
  %add44 = add i64 %conv43, 24
  %add45 = add i64 %add44, 7
  %and = and i64 %add45, -8
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %and
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc46 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %40, i32 0, i32 13
  %cbot47 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc46, i32 0, i32 3
  store i8* %add.ptr, i8** %cbot47, align 8, !tbaa !30
  %41 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d48 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %41, i32 0, i32 0
  %o49 = bitcast %union._d* %d48 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o49, i32 0, i32 0
  %h = bitcast %union._f* %f to %struct._h*
  %42 = bitcast %struct._h* %h to i32*
  %bf.load = load i32, i32* %42, align 4
  %bf.clear = and i32 %bf.load, 1
  store i32 %bf.clear, i32* %42, align 4
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d50 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %43, i32 0, i32 0
  %o51 = bitcast %union._d* %d50 to %struct.obj_header_data_s*
  %f52 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o51, i32 0, i32 0
  %h53 = bitcast %union._f* %f52 to %struct._h*
  %44 = bitcast %struct._h* %h53 to i32*
  %bf.load54 = load i32, i32* %44, align 4
  %bf.clear55 = and i32 %bf.load54, -2
  store i32 %bf.clear55, i32* %44, align 4
  %45 = load i32, i32* %size, align 4, !tbaa !5
  %46 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d56 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %46, i32 0, i32 0
  %o57 = bitcast %union._d* %d56 to %struct.obj_header_data_s*
  %size58 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o57, i32 0, i32 1
  store i32 %45, i32* %size58, align 4, !tbaa !25
  %47 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %48 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d59 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %48, i32 0, i32 0
  %o60 = bitcast %union._d* %d59 to %struct.obj_header_data_s*
  %t61 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o60, i32 0, i32 2
  %type62 = bitcast %union._t* %t61 to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* %47, %struct.gs_memory_struct_type_s** %type62, align 8, !tbaa !1
  %49 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %49, i32 1
  store %struct.obj_header_s* %incdec.ptr, %struct.obj_header_s** %obj, align 8, !tbaa !1
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.42
  br label %do.body.64

do.body.64:                                       ; preds = %do.body.63
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.body.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  br label %do.cond.67

do.cond.67:                                       ; preds = %do.end.66
  br label %do.end.68

do.end.68:                                        ; preds = %do.cond.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  br label %if.end.81

if.else.72:                                       ; preds = %land.lhs.true.39, %if.else.34
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %51 = load i32, i32* %size, align 4, !tbaa !5
  %conv73 = zext i32 %51 to i64
  %52 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %53 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call74 = call %struct.obj_header_s* @alloc_obj(%struct.gs_ref_memory_s* %50, i64 %conv73, %struct.gs_memory_struct_type_s* %52, i32 0, i8* %53) #4
  store %struct.obj_header_s* %call74, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %54 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %cmp75 = icmp eq %struct.obj_header_s* %54, null
  br i1 %cmp75, label %if.then.77, label %if.end

if.then.77:                                       ; preds = %if.else.72
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else.72
  br label %do.body.78

do.body.78:                                       ; preds = %if.end
  br label %do.cond.79

do.cond.79:                                       ; preds = %do.body.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.cond.79
  br label %if.end.81

if.end.81:                                        ; preds = %do.end.80, %do.end.71
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %do.end.33
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %do.end.15
  %55 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %56 = bitcast %struct.obj_header_s* %55 to i8*
  store i8* %56, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.83, %if.then.77
  %57 = bitcast %struct.obj_header_s*** %pfl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i8*, i8** %retval
  ret i8* %61
}

; Function Attrs: nounwind uwtable
define internal i8* @i_alloc_struct_immovable(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %size = alloca i32, align 4
  %obj = alloca %struct.obj_header_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %4, i32 0, i32 0
  %5 = load i32, i32* %ssize, align 4, !tbaa !28
  store i32 %5, i32* %size, align 4, !tbaa !5
  %6 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %8 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %8 to i64
  %9 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.obj_header_s* @alloc_obj(%struct.gs_ref_memory_s* %7, i64 %conv, %struct.gs_memory_struct_type_s* %9, i32 3, i8* %10) #4
  store %struct.obj_header_s* %call, %struct.obj_header_s** %obj, align 8, !tbaa !1
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.cond.2

do.cond.2:                                        ; preds = %do.body.1
  br label %do.end.3

do.end.3:                                         ; preds = %do.cond.2
  %11 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %12 = bitcast %struct.obj_header_s* %11 to i8*
  %13 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @i_alloc_byte_array(%struct.gs_memory_s* %mem, i32 %num_elements, i32 %elt_size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %obj = alloca %struct.obj_header_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !5
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %5 = load i32, i32* %num_elements.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  %6 = load i32, i32* %elt_size.addr, align 4, !tbaa !5
  %conv1 = zext i32 %6 to i64
  %mul = mul i64 %conv, %conv1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.obj_header_s* @alloc_obj(%struct.gs_ref_memory_s* %4, i64 %mul, %struct.gs_memory_struct_type_s* @st_bytes, i32 2, i8* %7) #4
  store %struct.obj_header_s* %call, %struct.obj_header_s** %obj, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %9 = bitcast %struct.obj_header_s* %8 to i8*
  %10 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @i_alloc_byte_array_immovable(%struct.gs_memory_s* %mem, i32 %num_elements, i32 %elt_size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %obj = alloca %struct.obj_header_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !5
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %5 = load i32, i32* %num_elements.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  %6 = load i32, i32* %elt_size.addr, align 4, !tbaa !5
  %conv1 = zext i32 %6 to i64
  %mul = mul i64 %conv, %conv1
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.obj_header_s* @alloc_obj(%struct.gs_ref_memory_s* %4, i64 %mul, %struct.gs_memory_struct_type_s* @st_bytes, i32 3, i8* %7) #4
  store %struct.obj_header_s* %call, %struct.obj_header_s** %obj, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %9 = bitcast %struct.obj_header_s* %8 to i8*
  %10 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @i_alloc_struct_array(%struct.gs_memory_s* %mem, i32 %num_elements, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %obj = alloca %struct.obj_header_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %5 = load i32, i32* %num_elements.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  %6 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %6, i32 0, i32 0
  %7 = load i32, i32* %ssize, align 4, !tbaa !28
  %conv1 = zext i32 %7 to i64
  %mul = mul i64 %conv, %conv1
  %8 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.obj_header_s* @alloc_obj(%struct.gs_ref_memory_s* %4, i64 %mul, %struct.gs_memory_struct_type_s* %8, i32 2, i8* %9) #4
  store %struct.obj_header_s* %call, %struct.obj_header_s** %obj, align 8, !tbaa !1
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  br label %do.cond.3

do.cond.3:                                        ; preds = %do.body.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.cond.3
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %11 = bitcast %struct.obj_header_s* %10 to i8*
  %12 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal i8* @i_alloc_struct_array_immovable(%struct.gs_memory_s* %mem, i32 %num_elements, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %obj = alloca %struct.obj_header_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %5 = load i32, i32* %num_elements.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  %6 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %6, i32 0, i32 0
  %7 = load i32, i32* %ssize, align 4, !tbaa !28
  %conv1 = zext i32 %7 to i64
  %mul = mul i64 %conv, %conv1
  %8 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.obj_header_s* @alloc_obj(%struct.gs_ref_memory_s* %4, i64 %mul, %struct.gs_memory_struct_type_s* %8, i32 3, i8* %9) #4
  store %struct.obj_header_s* %call, %struct.obj_header_s** %obj, align 8, !tbaa !1
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  br label %do.cond.3

do.cond.3:                                        ; preds = %do.body.2
  br label %do.end.4

do.end.4:                                         ; preds = %do.cond.3
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %11 = bitcast %struct.obj_header_s* %10 to i8*
  %12 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @i_object_size(%struct.gs_memory_s* %mem, i8* %obj) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %obj.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.obj_header_s*
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %1, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %add.ptr, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %2 = load i32, i32* %size, align 4, !tbaa !25
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_struct_type_s* @i_object_type(%struct.gs_memory_s* %mem, i8* %obj) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %obj.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.obj_header_s*
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %1, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %add.ptr, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %2 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  ret %struct.gs_memory_struct_type_s* %2
}

; Function Attrs: nounwind uwtable
define internal i8* @i_alloc_string(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %str = alloca i8*, align 8
  %cp_orig = alloca %struct.chunk_s*, align 8
  %cleanup.dest.slot = alloca i32
  %cp = alloca %struct.chunk_s*, align 8
  %cp38 = alloca %struct.chunk_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.chunk_s** %cp_orig to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 14
  %6 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !69
  store %struct.chunk_s* %6, %struct.chunk_s** %cp_orig, align 8, !tbaa !1
  %7 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %conv = zext i32 %7 to i64
  %add = add i64 %conv, sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %nbytes.addr, align 4, !tbaa !5
  %8 = load %struct.chunk_s*, %struct.chunk_s** %cp_orig, align 8, !tbaa !1
  %cmp = icmp eq %struct.chunk_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %9, i32 0, i32 11
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !57
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %pcc3 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 14
  store %struct.chunk_s* %10, %struct.chunk_s** %pcc3, align 8, !tbaa !69
  store %struct.chunk_s* %10, %struct.chunk_s** %cp_orig, align 8, !tbaa !1
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  call void @alloc_open_chunk(%struct.gs_ref_memory_s* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %top

top:                                              ; preds = %cleanup.54, %cleanup, %if.end
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %13, i32 0, i32 13
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 6
  %14 = load i8*, i8** %ctop, align 8, !tbaa !31
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc4 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %15, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc4, i32 0, i32 3
  %16 = load i8*, i8** %cbot, align 8, !tbaa !30
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %17 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %conv5 = zext i32 %17 to i64
  %cmp6 = icmp sgt i64 %sub.ptr.sub, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.18

if.then.8:                                        ; preds = %top
  br label %do.body

do.body:                                          ; preds = %if.then.8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc9 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 13
  %ctop10 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc9, i32 0, i32 6
  %20 = load i8*, i8** %ctop10, align 8, !tbaa !31
  %idx.ext = zext i32 %18 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.neg
  store i8* %add.ptr, i8** %ctop10, align 8, !tbaa !31
  store i8* %add.ptr, i8** %str, align 8, !tbaa !1
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.end.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %21 = load i8*, i8** %str, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds i8, i8* %21, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  store i8* %add.ptr17, i8** %str, align 8, !tbaa !1
  %22 = load i8*, i8** %str, align 8, !tbaa !1
  store i8* %22, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.18:                                        ; preds = %top
  %23 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc19 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 13
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc19, i32 0, i32 10
  %25 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !70
  store %struct.chunk_s* %25, %struct.chunk_s** %cp, align 8, !tbaa !1
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %26) #4
  %27 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp20 = icmp eq %struct.chunk_s* %27, null
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.18
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cfirst23 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %28, i32 0, i32 11
  %29 = load %struct.chunk_s*, %struct.chunk_s** %cfirst23, align 8, !tbaa !57
  store %struct.chunk_s* %29, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.18
  %30 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %pcc25 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %31, i32 0, i32 14
  store %struct.chunk_s* %30, %struct.chunk_s** %pcc25, align 8, !tbaa !69
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  call void @alloc_open_chunk(%struct.gs_ref_memory_s* %32) #4
  %33 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %34 = load %struct.chunk_s*, %struct.chunk_s** %cp_orig, align 8, !tbaa !1
  %cmp26 = icmp ne %struct.chunk_s* %33, %34
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.28
  %35 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %top
  ]

cleanup.cont:                                     ; preds = %cleanup
  %36 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %conv30 = zext i32 %36 to i64
  %cmp31 = icmp ugt i64 %conv30, 3616814528
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %cleanup.cont
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.34:                                        ; preds = %cleanup.cont
  %37 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %large_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %38, i32 0, i32 6
  %39 = load i32, i32* %large_size, align 4, !tbaa !68
  %cmp35 = icmp uge i32 %37, %39
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.34
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %41 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %42 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @i_alloc_string_immovable(%struct.gs_memory_s* %40, i32 %41, i8* %42) #4
  store i8* %call, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.else:                                          ; preds = %if.end.34
  %43 = bitcast %struct.chunk_s** %cp38 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %chunk_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %45, i32 0, i32 5
  %46 = load i32, i32* %chunk_size, align 4, !tbaa !71
  %conv39 = zext i32 %46 to i64
  %call40 = call %struct.chunk_s* @alloc_acquire_chunk(%struct.gs_ref_memory_s* %44, i64 %conv39, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #4
  store %struct.chunk_s* %call40, %struct.chunk_s** %cp38, align 8, !tbaa !1
  %47 = load %struct.chunk_s*, %struct.chunk_s** %cp38, align 8, !tbaa !1
  %cmp41 = icmp eq %struct.chunk_s* %47, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

if.end.44:                                        ; preds = %if.else
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %48) #4
  %49 = load %struct.chunk_s*, %struct.chunk_s** %cp38, align 8, !tbaa !1
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %pcc45 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %50, i32 0, i32 14
  store %struct.chunk_s* %49, %struct.chunk_s** %pcc45, align 8, !tbaa !69
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc46 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %51, i32 0, i32 13
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %pcc47 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %52, i32 0, i32 14
  %53 = load %struct.chunk_s*, %struct.chunk_s** %pcc47, align 8, !tbaa !69
  %54 = bitcast %struct.chunk_s* %cc46 to i8*
  %55 = bitcast %struct.chunk_s* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 184, i32 8, i1 false), !tbaa.struct !72
  br label %do.body.48

do.body.48:                                       ; preds = %if.end.44
  br label %do.body.49

do.body.49:                                       ; preds = %do.body.48
  br label %do.cond.50

do.cond.50:                                       ; preds = %do.body.49
  br label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  br label %do.cond.52

do.cond.52:                                       ; preds = %do.end.51
  br label %do.end.53

do.end.53:                                        ; preds = %do.cond.52
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %do.end.53, %if.then.43
  %56 = bitcast %struct.chunk_s** %cp38 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %cleanup.dest.55 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.55, label %cleanup.56 [
    i32 2, label %top
  ]

cleanup.56:                                       ; preds = %cleanup.54, %if.then.37, %if.then.33, %do.end.16
  %57 = bitcast %struct.chunk_s** %cp_orig to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i8*, i8** %retval
  ret i8* %60

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i8* @i_alloc_string_immovable(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %str = alloca i8*, align 8
  %asize = alloca i32, align 4
  %cp = alloca %struct.chunk_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %asize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %conv = zext i32 %6 to i64
  %add = add i64 %conv, sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %nbytes.addr, align 4, !tbaa !5
  %7 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %add2 = add i32 %7, 63
  %div = udiv i32 %add2, 64
  %conv3 = zext i32 %div to i64
  %mul = mul i64 %conv3, 76
  %add4 = add i64 %mul, 32
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* %asize, align 4, !tbaa !5
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %9 = load i32, i32* %asize, align 4, !tbaa !5
  %conv6 = zext i32 %9 to i64
  %call = call %struct.chunk_s* @alloc_acquire_chunk(%struct.gs_ref_memory_s* %8, i64 %conv6, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0)) #4
  store %struct.chunk_s* %call, %struct.chunk_s** %cp, align 8, !tbaa !1
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp eq %struct.chunk_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %climit = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 7
  %12 = load i8*, i8** %climit, align 8, !tbaa !73
  %13 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %13 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.neg
  %14 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %14, i32 0, i32 6
  store i8* %add.ptr, i8** %ctop, align 8, !tbaa !47
  store i8* %add.ptr, i8** %str, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.8

do.body.8:                                        ; preds = %do.end
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.8
  br label %do.cond.10

do.cond.10:                                       ; preds = %do.body.9
  br label %do.end.11

do.end.11:                                        ; preds = %do.cond.10
  br label %do.cond.12

do.cond.12:                                       ; preds = %do.end.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  %15 = load i8*, i8** %str, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %15, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  store i8* %add.ptr14, i8** %str, align 8, !tbaa !1
  %16 = load i8*, i8** %str, align 8, !tbaa !1
  store i8* %16, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.13, %if.then
  %17 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i32* %asize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load i8*, i8** %retval
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal i8* @i_resize_string(%struct.gs_memory_s* %mem, i8* %data, i32 %old_num, i32 %new_num, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %old_num.addr = alloca i32, align 4
  %new_num.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %old_num, i32* %old_num.addr, align 4, !tbaa !5
  store i32 %new_num, i32* %new_num.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %5 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %6, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 sub (i64 0, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64)))
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %8 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %conv = zext i32 %8 to i64
  %add = add i64 %conv, sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %old_num.addr, align 4, !tbaa !5
  %9 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %conv2 = zext i32 %9 to i64
  %add3 = add i64 %conv2, sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %conv4 = trunc i64 %add3 to i32
  store i32 %conv4, i32* %new_num.addr, align 4, !tbaa !5
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 13
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 6
  %12 = load i8*, i8** %ctop, align 8, !tbaa !31
  %cmp5 = icmp eq i8* %10, %12
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %14 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %cmp7 = icmp ult i32 %13, %14
  br i1 %cmp7, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc9 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %15, i32 0, i32 13
  %ctop10 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc9, i32 0, i32 6
  %16 = load i8*, i8** %ctop10, align 8, !tbaa !31
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc11, i32 0, i32 3
  %18 = load i8*, i8** %cbot, align 8, !tbaa !30
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %20 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %sub = sub i32 %19, %20
  %conv12 = zext i32 %sub to i64
  %cmp13 = icmp sgt i64 %sub.ptr.sub, %conv12
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %22 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %22 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  %23 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %idx.ext17 = zext i32 %23 to i64
  %idx.neg = sub i64 0, %idx.ext17
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  store i8* %add.ptr18, i8** %ptr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then.15
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %24 = load i8*, i8** %ptr, align 8, !tbaa !1
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc19 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %25, i32 0, i32 13
  %ctop20 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc19, i32 0, i32 6
  store i8* %24, i8** %ctop20, align 8, !tbaa !31
  %26 = load i8*, i8** %ptr, align 8, !tbaa !1
  %27 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %28 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %29 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %cmp21 = icmp ult i32 %28, %29
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %30 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %31 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %31, %cond.false ]
  %conv23 = zext i32 %cond to i64
  %call = call i8* @memmove(i8* %26, i8* %27, i64 %conv23) #5
  %32 = load i8*, i8** %ptr, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i8, i8* %32, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  store i8* %add.ptr24, i8** %ptr, align 8, !tbaa !1
  br label %if.end.64

if.else:                                          ; preds = %lor.lhs.false, %if.end
  %33 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %34 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %cmp25 = icmp ult i32 %33, %34
  br i1 %cmp25, label %if.then.27, label %if.else.41

if.then.27:                                       ; preds = %if.else
  %35 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %35, i8** %ptr, align 8, !tbaa !1
  %36 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %37 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %sub28 = sub i32 %36, %37
  %conv29 = zext i32 %sub28 to i64
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %38, i32 0, i32 18
  %strings = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 2
  %39 = load i64, i64* %strings, align 8, !tbaa !56
  %add30 = add i64 %39, %conv29
  store i64 %add30, i64* %strings, align 8, !tbaa !56
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.27
  br label %do.body.32

do.body.32:                                       ; preds = %do.body.31
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.body.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.end.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.body.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  %40 = load i8*, i8** %ptr, align 8, !tbaa !1
  %add.ptr40 = getelementptr inbounds i8, i8* %40, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  store i8* %add.ptr40, i8** %ptr, align 8, !tbaa !1
  br label %if.end.63

if.else.41:                                       ; preds = %if.else
  %41 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr42 = getelementptr inbounds i8, i8* %41, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  store i8* %add.ptr42, i8** %data.addr, align 8, !tbaa !1
  %42 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %conv43 = zext i32 %42 to i64
  %sub44 = sub i64 %conv43, sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %conv45 = trunc i64 %sub44 to i32
  store i32 %conv45, i32* %old_num.addr, align 4, !tbaa !5
  %43 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %conv46 = zext i32 %43 to i64
  %sub47 = sub i64 %conv46, sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %conv48 = trunc i64 %sub47 to i32
  store i32 %conv48, i32* %new_num.addr, align 4, !tbaa !5
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %45 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !74
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %47 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %48 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call49 = call i8* %45(%struct.gs_memory_s* %46, i32 %47, i8* %48) #4
  store i8* %call49, i8** %ptr, align 8, !tbaa !1
  %49 = load i8*, i8** %ptr, align 8, !tbaa !1
  %cmp50 = icmp eq i8* %49, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.41
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.else.41
  %50 = load i8*, i8** %ptr, align 8, !tbaa !1
  %51 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %52 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %53 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  %cmp54 = icmp ult i32 %52, %53
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.end.53
  %54 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.end.53
  %55 = load i32, i32* %new_num.addr, align 4, !tbaa !5
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i32 [ %54, %cond.true.56 ], [ %55, %cond.false.57 ]
  %conv60 = zext i32 %cond59 to i64
  %call61 = call i8* @memcpy(i8* %50, i8* %51, i64 %conv60) #5
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs62, i32 0, i32 19
  %57 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !75
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %59 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %60 = load i32, i32* %old_num.addr, align 4, !tbaa !5
  %61 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %57(%struct.gs_memory_s* %58, i8* %59, i32 %60, i8* %61) #4
  br label %if.end.63

if.end.63:                                        ; preds = %cond.end.58, %do.end.39
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %cond.end
  %62 = load i8*, i8** %ptr, align 8, !tbaa !1
  store i8* %62, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.64, %if.then.52, %if.then
  %63 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = load i8*, i8** %retval
  ret i8* %65
}

; Function Attrs: nounwind uwtable
define internal void @i_free_string(%struct.gs_memory_s* %mem, i8* %data, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 sub (i64 0, i64 sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64)))
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  %add = add i64 %conv, sub (i64 24, i64 sext (i32 ptrtoint (i64* getelementptr inbounds (%struct.obj_header_data_s, %struct.obj_header_data_s* null, i32 0, i32 3) to i32) to i64))
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %nbytes.addr, align 4, !tbaa !5
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 13
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 6
  %8 = load i8*, i8** %ctop, align 8, !tbaa !31
  %cmp = icmp eq i8* %6, %8
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %cc4 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %10, i32 0, i32 13
  %ctop5 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc4, i32 0, i32 6
  %11 = load i8*, i8** %ctop5, align 8, !tbaa !31
  %idx.ext = zext i32 %9 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr6, i8** %ctop5, align 8, !tbaa !31
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %do.body.7

do.body.7:                                        ; preds = %if.else
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.body.7
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %12 = load i32, i32* %nbytes.addr, align 4, !tbaa !5
  %conv10 = zext i32 %12 to i64
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %13, i32 0, i32 18
  %strings = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 2
  %14 = load i64, i64* %strings, align 8, !tbaa !56
  %add11 = add i64 %14, %conv10
  store i64 %add11, i64* %strings, align 8, !tbaa !56
  br label %if.end

if.end:                                           ; preds = %do.end.9, %do.end
  br label %do.body.12

do.body.12:                                       ; preds = %if.end
  br label %do.body.13

do.body.13:                                       ; preds = %do.body.12
  br label %do.cond.14

do.cond.14:                                       ; preds = %do.body.13
  br label %do.end.15

do.end.15:                                        ; preds = %do.cond.14
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  br label %if.end.18

if.end.18:                                        ; preds = %do.end.17, %entry
  %15 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @i_register_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %rp, %struct.gs_ptr_procs_s* %ptype, i8** %up, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rp.addr = alloca %struct.gs_gc_root_s*, align 8
  %ptype.addr = alloca %struct.gs_ptr_procs_s*, align 8
  %up.addr = alloca i8**, align 8
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_gc_root_s* %rp, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %ptype, %struct.gs_ptr_procs_s** %ptype.addr, align 8, !tbaa !1
  store i8** %up, i8*** %up.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_gc_root_s* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !76
  %call = call i8* @gs_raw_alloc_struct_immovable(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* @st_gc_root_t, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)) #4
  %6 = bitcast i8* %call to %struct.gs_gc_root_s*
  store %struct.gs_gc_root_s* %6, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %7 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gs_gc_root_s* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %free_on_unregister = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %8, i32 0, i32 3
  store i32 1, i32* %free_on_unregister, align 4, !tbaa !77
  br label %if.end.4

if.else:                                          ; preds = %entry
  %9 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %free_on_unregister3 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %9, i32 0, i32 3
  store i32 0, i32* %free_on_unregister3, align 4, !tbaa !77
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype.addr, align 8, !tbaa !1
  %11 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %ptype5 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %11, i32 0, i32 1
  store %struct.gs_ptr_procs_s* %10, %struct.gs_ptr_procs_s** %ptype5, align 8, !tbaa !79
  %12 = load i8**, i8*** %up.addr, align 8, !tbaa !1
  %13 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %13, i32 0, i32 2
  store i8** %12, i8*** %p, align 8, !tbaa !80
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %roots = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 24
  %15 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %roots, align 8, !tbaa !81
  %16 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %16, i32 0, i32 0
  store %struct.gs_gc_root_s* %15, %struct.gs_gc_root_s** %next, align 8, !tbaa !82
  %17 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %roots6 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %18, i32 0, i32 24
  store %struct.gs_gc_root_s* %17, %struct.gs_gc_root_s** %roots6, align 8, !tbaa !81
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.2
  %19 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @i_unregister_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %rp, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rp.addr = alloca %struct.gs_gc_root_s*, align 8
  %cname.addr = alloca i8*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %rpp = alloca %struct.gs_gc_root_s**, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_gc_root_s* %rp, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %2, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_gc_root_s*** %rpp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %roots = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 24
  store %struct.gs_gc_root_s** %roots, %struct.gs_gc_root_s*** %rpp, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %5 = load %struct.gs_gc_root_s**, %struct.gs_gc_root_s*** %rpp, align 8, !tbaa !1
  %6 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %5, align 8, !tbaa !1
  %7 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_gc_root_s* %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.gs_gc_root_s**, %struct.gs_gc_root_s*** %rpp, align 8, !tbaa !1
  %9 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %8, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %9, i32 0, i32 0
  store %struct.gs_gc_root_s** %next, %struct.gs_gc_root_s*** %rpp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.gs_gc_root_s**, %struct.gs_gc_root_s*** %rpp, align 8, !tbaa !1
  %11 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %10, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %11, i32 0, i32 0
  %12 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %next1, align 8, !tbaa !82
  %13 = load %struct.gs_gc_root_s**, %struct.gs_gc_root_s*** %rpp, align 8, !tbaa !1
  store %struct.gs_gc_root_s* %12, %struct.gs_gc_root_s** %13, align 8, !tbaa !1
  %14 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %free_on_unregister = getelementptr inbounds %struct.gs_gc_root_s, %struct.gs_gc_root_s* %14, i32 0, i32 3
  %15 = load i32, i32* %free_on_unregister, align 4, !tbaa !77
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !76
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %non_gc_memory2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !76
  %21 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gs_gc_root_s* %21 to i8*
  call void %18(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %23 = bitcast %struct.gs_gc_root_s*** %rpp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @i_enable_free(%struct.gs_memory_s* %mem, i32 %enable) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %enable.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %enable, i32* %enable.addr, align 4, !tbaa !5
  %0 = load i32, i32* %enable.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @i_free_object, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 19
  store void (%struct.gs_memory_s*, i8*, i32, i8*)* @i_free_string, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !75
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object3 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @gs_ignore_free_object, void (%struct.gs_memory_s*, i8*, i8*)** %free_object3, align 8, !tbaa !34
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_string5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 19
  store void (%struct.gs_memory_s*, i8*, i32, i8*)* @gs_ignore_free_string, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string5, align 8, !tbaa !75
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_ref_memory_s* @ialloc_alloc_state(%struct.gs_memory_s* %parent, i32 %chunk_size) #0 {
entry:
  %retval = alloca %struct.gs_ref_memory_s*, align 8
  %parent.addr = alloca %struct.gs_memory_s*, align 8
  %chunk_size.addr = alloca i32, align 4
  %cp = alloca %struct.chunk_s*, align 8
  %iimem = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %parent, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  store i32 %chunk_size, i32* %chunk_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_ref_memory_s** %iimem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %call = call i8* @ialloc_solo(%struct.gs_memory_s* %2, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_ref_memory to %struct.gs_memory_struct_type_s*), %struct.chunk_s** %cp) #4
  %3 = bitcast i8* %call to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %3, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_ref_memory_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_ref_memory_s* null, %struct.gs_ref_memory_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %6 = bitcast %struct.gs_ref_memory_s* %5 to %struct.gs_memory_s*
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 0
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !83
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 1
  %9 = bitcast %struct.gs_memory_procs_s* %procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.gs_memory_procs_s* @gs_ref_memory_procs to i8*), i64 184, i32 8, i1 false), !tbaa.struct !84
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 2
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !85
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %gs_lib_ctx1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %12, i32 0, i32 2
  store %struct.gs_lib_ctx_s* %11, %struct.gs_lib_ctx_s** %gs_lib_ctx1, align 8, !tbaa !86
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 3
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !76
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 4
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !87
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %thread_safe_memory2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 4
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %thread_safe_memory2, align 8, !tbaa !88
  %18 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %chunk_size3 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 5
  store i32 %18, i32* %chunk_size3, align 4, !tbaa !71
  %20 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %div = udiv i32 %20, 4
  %and = and i32 %div, -8
  %add = add i32 %and, 1
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %large_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 6
  store i32 %add, i32* %large_size, align 4, !tbaa !68
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %is_controlled = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %22, i32 0, i32 9
  store i32 0, i32* %is_controlled, align 4, !tbaa !41
  %23 = load i32, i32* %chunk_size.addr, align 4, !tbaa !5
  %conv = zext i32 %23 to i64
  %mul = mul nsw i64 %conv, 3
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %gc_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 8
  %vm_threshold = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status, i32 0, i32 0
  store i64 %mul, i64* %vm_threshold, align 8, !tbaa !89
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %gc_status4 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %25, i32 0, i32 8
  %max_vm = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status4, i32 0, i32 1
  store i64 2147483647, i64* %max_vm, align 8, !tbaa !90
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %gc_status5 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 8
  %psignal = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status5, i32 0, i32 2
  store i32* null, i32** %psignal, align 8, !tbaa !91
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %gc_status6 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %27, i32 0, i32 8
  %signal_value = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status6, i32 0, i32 3
  store i32 0, i32* %signal_value, align 4, !tbaa !92
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %gc_status7 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %28, i32 0, i32 8
  %enabled = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status7, i32 0, i32 4
  store i32 0, i32* %enabled, align 4, !tbaa !93
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %gc_status8 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %29, i32 0, i32 8
  %requested = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status8, i32 0, i32 5
  store i64 0, i64* %requested, align 8, !tbaa !94
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %gc_allocated = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %30, i32 0, i32 17
  store i64 0, i64* %gc_allocated, align 8, !tbaa !95
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %previous_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %31, i32 0, i32 32
  %allocated = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %previous_status, i32 0, i32 0
  store i64 0, i64* %allocated, align 8, !tbaa !63
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %previous_status9 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %32, i32 0, i32 32
  %used = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %previous_status9, i32 0, i32 1
  store i64 0, i64* %used, align 8, !tbaa !61
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  call void @ialloc_reset(%struct.gs_ref_memory_s* %33) #4
  %34 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %35, i32 0, i32 12
  store %struct.chunk_s* %34, %struct.chunk_s** %clast, align 8, !tbaa !66
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %36, i32 0, i32 11
  store %struct.chunk_s* %34, %struct.chunk_s** %cfirst, align 8, !tbaa !57
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  call void @ialloc_set_limit(%struct.gs_ref_memory_s* %37) #4
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %38, i32 0, i32 13
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 6
  store i8* null, i8** %ctop, align 8, !tbaa !31
  %39 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %cc10 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %39, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc10, i32 0, i32 3
  store i8* null, i8** %cbot, align 8, !tbaa !30
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %40, i32 0, i32 14
  store %struct.chunk_s* null, %struct.chunk_s** %pcc, align 8, !tbaa !69
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %save_level = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %41, i32 0, i32 19
  store i32 0, i32* %save_level, align 4, !tbaa !96
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %new_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %42, i32 0, i32 20
  store i32 0, i32* %new_mask, align 4, !tbaa !97
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %test_mask = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %43, i32 0, i32 21
  store i32 -1, i32* %test_mask, align 4, !tbaa !98
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %44, i32 0, i32 22
  store %struct.stream_s* null, %struct.stream_s** %streams, align 8, !tbaa !7
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %names_array = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %45, i32 0, i32 23
  store %struct.ref_s* null, %struct.ref_s** %names_array, align 8, !tbaa !18
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %roots = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %46, i32 0, i32 24
  store %struct.gs_gc_root_s* null, %struct.gs_gc_root_s** %roots, align 8, !tbaa !81
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %num_contexts = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %47, i32 0, i32 25
  store i32 0, i32* %num_contexts, align 4, !tbaa !99
  %48 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %48, i32 0, i32 28
  store %struct.alloc_save_s* null, %struct.alloc_save_s** %saved, align 8, !tbaa !20
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %49, %struct.gs_ref_memory_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %50 = bitcast %struct.gs_ref_memory_s** %iimem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %retval
  ret %struct.gs_ref_memory_s* %52
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i8* @ialloc_solo(%struct.gs_memory_s* %parent, %struct.gs_memory_struct_type_s* %pstype, %struct.chunk_s** %pcp) #0 {
entry:
  %retval = alloca i8*, align 8
  %parent.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %pcp.addr = alloca %struct.chunk_s**, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %csize = alloca i32, align 4
  %cdata = alloca i8*, align 8
  %obj = alloca %struct.obj_header_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %parent, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.chunk_s** %pcp, %struct.chunk_s*** %pcp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %call = call i8* @gs_raw_alloc_struct_immovable(%struct.gs_memory_s* %1, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_chunk to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)) #4
  %2 = bitcast i8* %call to %struct.chunk_s*
  store %struct.chunk_s* %2, %struct.chunk_s** %cp, align 8, !tbaa !1
  %3 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %4, i32 0, i32 0
  %5 = load i32, i32* %ssize, align 4, !tbaa !28
  %conv = zext i32 %5 to i64
  %add = add i64 56, %conv
  %add1 = add i64 %add, 7
  %and = and i64 %add1, -8
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %csize, align 4, !tbaa !5
  %6 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !100
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %10 = load i32, i32* %csize, align 4, !tbaa !5
  %call3 = call i8* %8(%struct.gs_memory_s* %9, i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)) #4
  store i8* %call3, i8** %cdata, align 8, !tbaa !1
  %11 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i8*, i8** %cdata, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 32
  %13 = bitcast i8* %add.ptr to %struct.obj_header_s*
  store %struct.obj_header_s* %13, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %14 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp eq %struct.chunk_s* %14, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load i8*, i8** %cdata, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %15, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %19 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %20 = bitcast %struct.chunk_s* %19 to i8*
  call void %17(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)) #4
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object9, align 8, !tbaa !34
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %cdata, align 8, !tbaa !1
  call void %22(%struct.gs_memory_s* %23, i8* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)) #4
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %25 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %26 = load i8*, i8** %cdata, align 8, !tbaa !1
  %27 = load i8*, i8** %cdata, align 8, !tbaa !1
  %28 = load i32, i32* %csize, align 4, !tbaa !5
  %idx.ext = zext i32 %28 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  call void @alloc_init_chunk(%struct.chunk_s* %25, i8* %26, i8* %add.ptr10, i32 0, %struct.chunk_s* null) #4
  %29 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %29, i32 0, i32 6
  %30 = load i8*, i8** %ctop, align 8, !tbaa !47
  %31 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %31, i32 0, i32 3
  store i8* %30, i8** %cbot, align 8, !tbaa !46
  %32 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %32, i32 0, i32 10
  store %struct.chunk_s* null, %struct.chunk_s** %cnext, align 8, !tbaa !59
  %33 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cprev = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %33, i32 0, i32 9
  store %struct.chunk_s* null, %struct.chunk_s** %cprev, align 8, !tbaa !67
  %34 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %34, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 0
  %h = bitcast %union._f* %f to %struct._h*
  %35 = bitcast %struct._h* %h to i32*
  %bf.load = load i32, i32* %35, align 4
  %bf.clear = and i32 %bf.load, 1
  store i32 %bf.clear, i32* %35, align 4
  %36 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d11 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %36, i32 0, i32 0
  %o12 = bitcast %union._d* %d11 to %struct.obj_header_data_s*
  %f13 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o12, i32 0, i32 0
  %h14 = bitcast %union._f* %f13 to %struct._h*
  %37 = bitcast %struct._h* %h14 to i32*
  %bf.load15 = load i32, i32* %37, align 4
  %bf.clear16 = and i32 %bf.load15, -2
  %bf.set = or i32 %bf.clear16, 1
  store i32 %bf.set, i32* %37, align 4
  %38 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize17 = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %38, i32 0, i32 0
  %39 = load i32, i32* %ssize17, align 4, !tbaa !28
  %40 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d18 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %40, i32 0, i32 0
  %o19 = bitcast %union._d* %d18 to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o19, i32 0, i32 1
  store i32 %39, i32* %size, align 4, !tbaa !25
  %41 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %42 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %d20 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %42, i32 0, i32 0
  %o21 = bitcast %union._d* %d20 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o21, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* %41, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %43 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %44 = load %struct.chunk_s**, %struct.chunk_s*** %pcp.addr, align 8, !tbaa !1
  store %struct.chunk_s* %43, %struct.chunk_s** %44, align 8, !tbaa !1
  %45 = load %struct.obj_header_s*, %struct.obj_header_s** %obj, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %45, i64 1
  %46 = bitcast %struct.obj_header_s* %add.ptr22 to i8*
  store i8* %46, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %47 = bitcast %struct.obj_header_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i8*, i8** %retval
  ret i8* %51
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @ialloc_reset(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %0, i32 0, i32 11
  store %struct.chunk_s* null, %struct.chunk_s** %cfirst, align 8, !tbaa !57
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 12
  store %struct.chunk_s* null, %struct.chunk_s** %clast, align 8, !tbaa !66
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 13
  %rcur = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 4
  store %struct.obj_header_s* null, %struct.obj_header_s** %rcur, align 8, !tbaa !101
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %3, i32 0, i32 13
  %rtop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc1, i32 0, i32 5
  store i8* null, i8** %rtop, align 8, !tbaa !102
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 13
  %has_refs = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc2, i32 0, i32 13
  store i32 0, i32* %has_refs, align 4, !tbaa !103
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 16
  store i64 0, i64* %allocated, align 8, !tbaa !60
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %changes = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %6, i32 0, i32 26
  store %struct.alloc_change_s* null, %struct.alloc_change_s** %changes, align 8, !tbaa !19
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %scan_limit = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 27
  store %struct.alloc_change_s* null, %struct.alloc_change_s** %scan_limit, align 8, !tbaa !21
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %total_scanned = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 29
  store i64 0, i64* %total_scanned, align 8, !tbaa !104
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %total_scanned_after_compacting = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %9, i32 0, i32 30
  store i64 0, i64* %total_scanned_after_compacting, align 8, !tbaa !105
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @ialloc_reset_free(%struct.gs_ref_memory_s* %10) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ialloc_set_limit(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %max_allocated = alloca i64, align 8
  %limit = alloca i64, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i64* %max_allocated to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 8
  %max_vm = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status, i32 0, i32 1
  %2 = load i64, i64* %max_vm, align 8, !tbaa !90
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %previous_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %3, i32 0, i32 32
  %allocated = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %previous_status, i32 0, i32 0
  %4 = load i64, i64* %allocated, align 8, !tbaa !63
  %cmp = icmp ugt i64 %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 8
  %max_vm2 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status1, i32 0, i32 1
  %6 = load i64, i64* %max_vm2, align 8, !tbaa !90
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %previous_status3 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 32
  %allocated4 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %previous_status3, i32 0, i32 0
  %8 = load i64, i64* %allocated4, align 8, !tbaa !63
  %sub = sub i64 %6, %8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %max_allocated, align 8, !tbaa !27
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status5 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %9, i32 0, i32 8
  %enabled = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status5, i32 0, i32 4
  %10 = load i32, i32* %enabled, align 4, !tbaa !93
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else.21

if.then:                                          ; preds = %cond.end
  %11 = bitcast i64* %limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_allocated = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %12, i32 0, i32 17
  %13 = load i64, i64* %gc_allocated, align 8, !tbaa !95
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status6 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 8
  %vm_threshold = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status6, i32 0, i32 0
  %15 = load i64, i64* %vm_threshold, align 8, !tbaa !89
  %add = add i64 %13, %15
  store i64 %add, i64* %limit, align 8, !tbaa !27
  %16 = load i64, i64* %limit, align 8, !tbaa !27
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %previous_status7 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 32
  %allocated8 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %previous_status7, i32 0, i32 0
  %18 = load i64, i64* %allocated8, align 8, !tbaa !63
  %cmp9 = icmp ult i64 %16, %18
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %limit11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 10
  store i64 0, i64* %limit11, align 8, !tbaa !106
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %previous_status12 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %20, i32 0, i32 32
  %allocated13 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %previous_status12, i32 0, i32 0
  %21 = load i64, i64* %allocated13, align 8, !tbaa !63
  %22 = load i64, i64* %limit, align 8, !tbaa !27
  %sub14 = sub i64 %22, %21
  store i64 %sub14, i64* %limit, align 8, !tbaa !27
  %23 = load i64, i64* %limit, align 8, !tbaa !27
  %24 = load i64, i64* %max_allocated, align 8, !tbaa !27
  %cmp15 = icmp ult i64 %23, %24
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %if.else
  %25 = load i64, i64* %limit, align 8, !tbaa !27
  br label %cond.end.18

cond.false.17:                                    ; preds = %if.else
  %26 = load i64, i64* %max_allocated, align 8, !tbaa !27
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi i64 [ %25, %cond.true.16 ], [ %26, %cond.false.17 ]
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %limit20 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %27, i32 0, i32 10
  store i64 %cond19, i64* %limit20, align 8, !tbaa !106
  br label %if.end

if.end:                                           ; preds = %cond.end.18, %if.then.10
  %28 = bitcast i64* %limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %if.end.32

if.else.21:                                       ; preds = %cond.end
  %29 = load i64, i64* %max_allocated, align 8, !tbaa !27
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_allocated22 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %30, i32 0, i32 17
  %31 = load i64, i64* %gc_allocated22, align 8, !tbaa !95
  %add23 = add i64 %31, 8000000
  %cmp24 = icmp ult i64 %29, %add23
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.else.21
  %32 = load i64, i64* %max_allocated, align 8, !tbaa !27
  br label %cond.end.29

cond.false.26:                                    ; preds = %if.else.21
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_allocated27 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %33, i32 0, i32 17
  %34 = load i64, i64* %gc_allocated27, align 8, !tbaa !95
  %add28 = add i64 %34, 8000000
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.26, %cond.true.25
  %cond30 = phi i64 [ %32, %cond.true.25 ], [ %add28, %cond.false.26 ]
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %limit31 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %35, i32 0, i32 10
  store i64 %cond30, i64* %limit31, align 8, !tbaa !106
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end.29, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.32
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = bitcast i64* %max_allocated to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @ialloc_free_state(%struct.gs_ref_memory_s* %iimem) #0 {
entry:
  %iimem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_ref_memory_s* %iimem, %struct.gs_ref_memory_s** %iimem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_ref_memory_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem.addr, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %3, i32 0, i32 11
  %4 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !57
  store %struct.chunk_s* %4, %struct.chunk_s** %cp, align 8, !tbaa !1
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %iimem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !76
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.chunk_s* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %chead = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 0
  %12 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !50
  %13 = bitcast %struct.chunk_head_s* %12 to i8*
  call void %9(%struct.gs_memory_s* %10, i8* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)) #4
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object5, align 8, !tbaa !34
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %17 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %18 = bitcast %struct.chunk_s* %17 to i8*
  call void %15(%struct.gs_memory_s* %16, i8* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %19 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
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

; Function Attrs: nounwind uwtable
define i32 @ialloc_add_chunk(%struct.gs_ref_memory_s* %imem, i64 %space, i8* %cname) #0 {
entry:
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %space.addr = alloca i64, align 8
  %cname.addr = alloca i8*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  store i64 %space, i64* %space.addr, align 8, !tbaa !27
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %is_controlled = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 9
  store i32 0, i32* %is_controlled, align 4, !tbaa !41
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %chunk_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 5
  %3 = load i32, i32* %chunk_size, align 4, !tbaa !71
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %large_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 6
  store i32 %3, i32* %large_size, align 4, !tbaa !68
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 10
  store i64 9223372036854775807, i64* %limit, align 8, !tbaa !106
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %gc_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %6, i32 0, i32 8
  %max_vm = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status, i32 0, i32 1
  store i64 9223372036854775807, i64* %max_vm, align 8, !tbaa !90
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %8 = load i64, i64* %space.addr, align 8, !tbaa !27
  %9 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.chunk_s* @alloc_add_chunk(%struct.gs_ref_memory_s* %7, i64 %8, i8* %9) #4
  store %struct.chunk_s* %call, %struct.chunk_s** %cp, align 8, !tbaa !1
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %10, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !107
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %12, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 0
  store i8* (%struct.gs_memory_s*, i32, i8*)* %11, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !108
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %13, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 8
  %14 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !109
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %15, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 9
  store i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* %14, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !110
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %16, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 10
  %17 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !111
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %18, i32 0, i32 1
  %alloc_byte_array_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 11
  store i8* (%struct.gs_memory_s*, i32, i32, i8*)* %17, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array_immovable, align 8, !tbaa !112
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 12
  %20 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !113
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 1
  %alloc_struct_array_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 13
  store i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* %20, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array_immovable, align 8, !tbaa !114
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %22, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 16
  %23 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !115
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 1
  %alloc_string_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 17
  store i8* (%struct.gs_memory_s*, i32, i8*)* %23, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string_immovable, align 8, !tbaa !116
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %is_controlled10 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %25, i32 0, i32 9
  store i32 1, i32* %is_controlled10, align 4, !tbaa !41
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %limit11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 10
  store i64 0, i64* %limit11, align 8, !tbaa !106
  %27 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %tobool = icmp ne %struct.chunk_s* %27, null
  %cond = select i1 %tobool, i32 0, i32 -25
  %28 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal %struct.chunk_s* @alloc_add_chunk(%struct.gs_ref_memory_s* %mem, i64 %csize, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %csize.addr = alloca i64, align 8
  %cname.addr = alloca i8*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %csize, i64* %csize.addr, align 8, !tbaa !27
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i64, i64* %csize.addr, align 8, !tbaa !27
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call %struct.chunk_s* @alloc_acquire_chunk(%struct.gs_ref_memory_s* %1, i64 %2, i32 1, i8* %3) #4
  store %struct.chunk_s* %call, %struct.chunk_s** %cp, align 8, !tbaa !1
  %4 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %tobool = icmp ne %struct.chunk_s* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %5) #4
  %6 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 14
  store %struct.chunk_s* %6, %struct.chunk_s** %pcc, align 8, !tbaa !69
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 13
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %9, i32 0, i32 14
  %10 = load %struct.chunk_s*, %struct.chunk_s** %pcc1, align 8, !tbaa !69
  %11 = bitcast %struct.chunk_s* %cc to i8*
  %12 = bitcast %struct.chunk_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 184, i32 8, i1 false), !tbaa.struct !72
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.3

do.cond.3:                                        ; preds = %do.end
  br label %do.end.4

do.end.4:                                         ; preds = %do.cond.3
  br label %if.end

if.end:                                           ; preds = %do.end.4, %entry
  %13 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %14 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret %struct.chunk_s* %13
}

; Function Attrs: nounwind uwtable
define void @ialloc_gc_prepare(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %streams = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %0, i32 0, i32 22
  %1 = load %struct.stream_s*, %struct.stream_s** %streams, align 8, !tbaa !7
  %cmp = icmp ne %struct.stream_s* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %streams1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %3, i32 0, i32 22
  %4 = load %struct.stream_s*, %struct.stream_s** %streams1, align 8, !tbaa !7
  store %struct.stream_s* %4, %struct.stream_s** %s, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 22
  %6 = load %struct.stream_s*, %struct.stream_s** %next, align 8, !tbaa !117
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %streams2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 22
  store %struct.stream_s* %6, %struct.stream_s** %streams2, align 8, !tbaa !7
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 22
  store %struct.stream_s* null, %struct.stream_s** %next3, align 8, !tbaa !117
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 21
  store %struct.stream_s* null, %struct.stream_s** %prev, align 8, !tbaa !123
  %10 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ialloc_reset_free(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.obj_header_s**, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.obj_header_s*** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 18
  %objects = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 0
  store i64 0, i64* %objects, align 8, !tbaa !53
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %3, i32 0, i32 18
  %refs = getelementptr inbounds %struct.lost_, %struct.lost_* %lost1, i32 0, i32 1
  store i64 0, i64* %refs, align 8, !tbaa !55
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost2 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 18
  %strings = getelementptr inbounds %struct.lost_, %struct.lost_* %lost2, i32 0, i32 2
  store i64 0, i64* %strings, align 8, !tbaa !56
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 15
  %cp = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp, align 8, !tbaa !49
  store i32 0, i32* %i, align 4, !tbaa !5
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %freelists = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %6, i32 0, i32 34
  %arrayidx = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists, i32 0, i64 0
  store %struct.obj_header_s** %arrayidx, %struct.obj_header_s*** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 102
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.obj_header_s**, %struct.obj_header_s*** %p, align 8, !tbaa !1
  store %struct.obj_header_s* null, %struct.obj_header_s** %8, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %10 = load %struct.obj_header_s**, %struct.obj_header_s*** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.obj_header_s*, %struct.obj_header_s** %10, i32 1
  store %struct.obj_header_s** %incdec.ptr, %struct.obj_header_s*** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %largest_free_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 33
  store i32 0, i32* %largest_free_size, align 4, !tbaa !48
  %12 = bitcast %struct.obj_header_s*** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_memory_gc_status(%struct.gs_ref_memory_s* %mem, %struct.gs_memory_gc_status_s* %pstat) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %pstat.addr = alloca %struct.gs_memory_gc_status_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_gc_status_s* %pstat, %struct.gs_memory_gc_status_s** %pstat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_gc_status_s*, %struct.gs_memory_gc_status_s** %pstat.addr, align 8, !tbaa !1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 8
  %2 = bitcast %struct.gs_memory_gc_status_s* %0 to i8*
  %3 = bitcast %struct.gs_memory_gc_status_s* %gc_status to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 40, i32 8, i1 false), !tbaa.struct !124
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_memory_set_gc_status(%struct.gs_ref_memory_s* %mem, %struct.gs_memory_gc_status_s* %pstat) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %pstat.addr = alloca %struct.gs_memory_gc_status_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_gc_status_s* %pstat, %struct.gs_memory_gc_status_s** %pstat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %0, i32 0, i32 8
  %1 = load %struct.gs_memory_gc_status_s*, %struct.gs_memory_gc_status_s** %pstat.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_gc_status_s* %gc_status to i8*
  %3 = bitcast %struct.gs_memory_gc_status_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 40, i32 8, i1 false), !tbaa.struct !124
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @ialloc_set_limit(%struct.gs_ref_memory_s* %4) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_memory_set_vm_threshold(%struct.gs_ref_memory_s* %mem, i64 %val) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %val.addr = alloca i64, align 8
  %stat = alloca %struct.gs_memory_gc_status_s, align 8
  %stable = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %val, i64* %val.addr, align 8, !tbaa !27
  %0 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast %struct.gs_ref_memory_s** %stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !83
  %4 = bitcast %struct.gs_memory_s* %3 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %4, %struct.gs_ref_memory_s** %stable, align 8, !tbaa !1
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %5, %struct.gs_memory_gc_status_s* %stat) #4
  %6 = load i64, i64* %val.addr, align 8, !tbaa !27
  %vm_threshold = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 0
  store i64 %6, i64* %vm_threshold, align 8, !tbaa !125
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_memory_set_gc_status(%struct.gs_ref_memory_s* %7, %struct.gs_memory_gc_status_s* %stat) #4
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %stable, align 8, !tbaa !1
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %8, %struct.gs_memory_gc_status_s* %stat) #4
  %9 = load i64, i64* %val.addr, align 8, !tbaa !27
  %vm_threshold1 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 0
  store i64 %9, i64* %vm_threshold1, align 8, !tbaa !125
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %stable, align 8, !tbaa !1
  call void @gs_memory_set_gc_status(%struct.gs_ref_memory_s* %10, %struct.gs_memory_gc_status_s* %stat) #4
  %11 = bitcast %struct.gs_ref_memory_s** %stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_memory_set_vm_reclaim(%struct.gs_ref_memory_s* %mem, i32 %enabled) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %enabled.addr = alloca i32, align 4
  %stat = alloca %struct.gs_memory_gc_status_s, align 8
  %stable = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %enabled, i32* %enabled.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast %struct.gs_ref_memory_s** %stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !83
  %4 = bitcast %struct.gs_memory_s* %3 to %struct.gs_ref_memory_s*
  store %struct.gs_ref_memory_s* %4, %struct.gs_ref_memory_s** %stable, align 8, !tbaa !1
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %5, %struct.gs_memory_gc_status_s* %stat) #4
  %6 = load i32, i32* %enabled.addr, align 4, !tbaa !5
  %enabled1 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 4
  store i32 %6, i32* %enabled1, align 4, !tbaa !126
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_memory_set_gc_status(%struct.gs_ref_memory_s* %7, %struct.gs_memory_gc_status_s* %stat) #4
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %stable, align 8, !tbaa !1
  call void @gs_memory_gc_status(%struct.gs_ref_memory_s* %8, %struct.gs_memory_gc_status_s* %stat) #4
  %9 = load i32, i32* %enabled.addr, align 4, !tbaa !5
  %enabled2 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %stat, i32 0, i32 4
  store i32 %9, i32* %enabled2, align 4, !tbaa !126
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %stable, align 8, !tbaa !1
  call void @gs_memory_set_gc_status(%struct.gs_ref_memory_s* %10, %struct.gs_memory_gc_status_s* %stat) #4
  %11 = bitcast %struct.gs_ref_memory_s** %stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_memory_gc_status_s* %stat to i8*
  call void @llvm.lifetime.end(i64 40, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ialloc_consolidate_free(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %cprev = alloca %struct.chunk_s*, align 8
  %cnext = alloca %struct.chunk_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.chunk_s** %cprev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %2) #4
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %3, i32 0, i32 12
  %4 = load %struct.chunk_s*, %struct.chunk_s** %clast, align 8, !tbaa !66
  store %struct.chunk_s* %4, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp ne %struct.chunk_s* %5, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cprev1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %6, i32 0, i32 9
  %7 = load %struct.chunk_s*, %struct.chunk_s** %cprev1, align 8, !tbaa !67
  store %struct.chunk_s* %7, %struct.chunk_s** %cprev, align 8, !tbaa !1
  %8 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @consolidate_chunk_free(%struct.chunk_s* %8, %struct.gs_ref_memory_s* %9) #4
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %10, i32 0, i32 3
  %11 = load i8*, i8** %cbot, align 8, !tbaa !46
  %12 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %cbase, align 8, !tbaa !43
  %cmp2 = icmp eq i8* %11, %13
  br i1 %cmp2, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %14, i32 0, i32 6
  %15 = load i8*, i8** %ctop, align 8, !tbaa !47
  %16 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %climit = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %16, i32 0, i32 7
  %17 = load i8*, i8** %climit, align 8, !tbaa !73
  %cmp3 = icmp eq i8* %15, %17
  br i1 %cmp3, label %if.then, label %if.end.28

if.then:                                          ; preds = %land.lhs.true
  %18 = bitcast %struct.chunk_s** %cnext to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext4 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %19, i32 0, i32 10
  %20 = load %struct.chunk_s*, %struct.chunk_s** %cnext4, align 8, !tbaa !59
  store %struct.chunk_s* %20, %struct.chunk_s** %cnext, align 8, !tbaa !1
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %is_controlled = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 9
  %22 = load i32, i32* %is_controlled, align 4, !tbaa !41
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end.27, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %23 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_free_chunk(%struct.chunk_s* %23, %struct.gs_ref_memory_s* %24) #4
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %25, i32 0, i32 14
  %26 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !69
  %27 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.chunk_s* %26, %27
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.5
  %28 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.chunk_s* %28, null
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %29 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !1
  br label %cond.end.24

cond.false:                                       ; preds = %if.then.7
  %30 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.chunk_s* %30, null
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false
  %31 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !1
  br label %cond.end.22

cond.false.11:                                    ; preds = %cond.false
  %32 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !1
  %cbot12 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %32, i32 0, i32 3
  %33 = load i8*, i8** %cbot12, align 8, !tbaa !46
  %34 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !1
  %ctop13 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %34, i32 0, i32 6
  %35 = load i8*, i8** %ctop13, align 8, !tbaa !47
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %36 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !1
  %cbot14 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %36, i32 0, i32 3
  %37 = load i8*, i8** %cbot14, align 8, !tbaa !46
  %38 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !1
  %ctop15 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %38, i32 0, i32 6
  %39 = load i8*, i8** %ctop15, align 8, !tbaa !47
  %sub.ptr.lhs.cast16 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast17 = ptrtoint i8* %39 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %cmp19 = icmp sgt i64 %sub.ptr.sub, %sub.ptr.sub18
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false.11
  %40 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !1
  br label %cond.end

cond.false.21:                                    ; preds = %cond.false.11
  %41 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.21, %cond.true.20
  %cond = phi %struct.chunk_s* [ %40, %cond.true.20 ], [ %41, %cond.false.21 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end, %cond.true.10
  %cond23 = phi %struct.chunk_s* [ %31, %cond.true.10 ], [ %cond, %cond.end ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end.22, %cond.true
  %cond25 = phi %struct.chunk_s* [ %29, %cond.true ], [ %cond23, %cond.end.22 ]
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc26 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %42, i32 0, i32 14
  store %struct.chunk_s* %cond25, %struct.chunk_s** %pcc26, align 8, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %cond.end.24, %if.then.5
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  %43 = bitcast %struct.chunk_s** %cnext to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %44 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !1
  store %struct.chunk_s* %44, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_open_chunk(%struct.gs_ref_memory_s* %45) #4
  %46 = bitcast %struct.chunk_s** %cprev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_close_chunk(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %0, i32 0, i32 14
  %1 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !69
  %cmp = icmp ne %struct.chunk_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 14
  %3 = load %struct.chunk_s*, %struct.chunk_s** %pcc1, align 8, !tbaa !69
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 13
  %5 = bitcast %struct.chunk_s* %3 to i8*
  %6 = bitcast %struct.chunk_s* %cc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 184, i32 8, i1 false), !tbaa.struct !72
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @consolidate_chunk_free(%struct.chunk_s* %cp, %struct.gs_ref_memory_s* %mem) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %begin_free = alloca %struct.obj_header_s*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.obj_header_s** %begin_free to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.obj_header_s* null, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %1 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %cbase, align 8, !tbaa !43
  %3 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %int_freed_top = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %3, i32 0, i32 2
  store i8* %2, i8** %int_freed_top, align 8, !tbaa !52
  %4 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %5, i32 0, i32 1
  %6 = load i8*, i8** %cbase1, align 8, !tbaa !43
  %7 = bitcast i8* %6 to %struct.obj_header_s*
  store %struct.obj_header_s* %7, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %8 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %9, i32 0, i32 3
  %10 = load i8*, i8** %cbot, align 8, !tbaa !46
  %11 = bitcast i8* %10 to %struct.obj_header_s*
  store %struct.obj_header_s* %11, %struct.obj_header_s** %end, align 8, !tbaa !1
  %12 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %14 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp = icmp ult %struct.obj_header_s* %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %15, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size2 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %16 = load i32, i32* %size2, align 4, !tbaa !25
  store i32 %16, i32* %size, align 4, !tbaa !5
  %17 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d3 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %17, i32 0, i32 0
  %o4 = bitcast %union._d* %d3 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o4, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %18 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gs_memory_struct_type_s* %18, @st_free
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %19 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.obj_header_s* %19, null
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %20 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  store %struct.obj_header_s* %20, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.11

if.else:                                          ; preds = %for.body
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %tobool = icmp ne %struct.obj_header_s* %21, null
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %22 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %23 = bitcast %struct.obj_header_s* %22 to i8*
  %24 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %int_freed_top9 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %24, i32 0, i32 2
  store i8* %23, i8** %int_freed_top9, align 8, !tbaa !52
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  store %struct.obj_header_s* null, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %25 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %26 = bitcast %struct.obj_header_s* %25 to i8*
  %27 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %27 to i64
  %add = add i64 %conv, 24
  %add12 = add i64 %add, 7
  %and = and i64 %add12, -8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %and
  %28 = bitcast i8* %add.ptr to %struct.obj_header_s*
  store %struct.obj_header_s* %28, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %tobool13 = icmp ne %struct.obj_header_s* %32, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %for.end
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %34 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %35 = bitcast %struct.obj_header_s* %34 to i8*
  %36 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot15 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %36, i32 0, i32 3
  %37 = load i8*, i8** %cbot15, align 8, !tbaa !46
  call void @remove_range_from_freelist(%struct.gs_ref_memory_s* %33, i8* %35, i8* %37) #4
  br label %do.body

do.body:                                          ; preds = %if.then.14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %38 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %39 = bitcast %struct.obj_header_s* %38 to i8*
  %40 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot16 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %40, i32 0, i32 3
  store i8* %39, i8** %cbot16, align 8, !tbaa !46
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %for.end
  %41 = bitcast %struct.obj_header_s** %begin_free to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_free_chunk(%struct.chunk_s* %cp, %struct.gs_ref_memory_s* %mem) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %parent = alloca %struct.gs_memory_s*, align 8
  %cdata = alloca i8*, align 8
  %csize = alloca i64, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %parent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !76
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %3 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %chead = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %4, i32 0, i32 0
  %5 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !50
  %6 = bitcast %struct.chunk_head_s* %5 to i8*
  store i8* %6, i8** %cdata, align 8, !tbaa !1
  %7 = bitcast i64* %csize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %8, i32 0, i32 8
  %9 = load i8*, i8** %cend, align 8, !tbaa !44
  %10 = load i8*, i8** %cdata, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %csize, align 8, !tbaa !27
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_unlink_chunk(%struct.chunk_s* %11, %struct.gs_ref_memory_s* %12) #4
  %13 = load i32, i32* getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_chunk to %struct.gs_memory_struct_type_s*), i32 0, i32 0), align 4, !tbaa !28
  %conv = zext i32 %13 to i64
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 16
  %15 = load i64, i64* %allocated, align 8, !tbaa !60
  %sub = sub i64 %15, %conv
  store i64 %sub, i64* %allocated, align 8, !tbaa !60
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %16, i32 0, i32 15
  %cp1 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed, i32 0, i32 1
  %17 = load %struct.chunk_s*, %struct.chunk_s** %cp1, align 8, !tbaa !49
  %18 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.chunk_s* %17, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed3 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 15
  %cp4 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed3, i32 0, i32 1
  store %struct.chunk_s* null, %struct.chunk_s** %cp4, align 8, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %outer = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %20, i32 0, i32 11
  %21 = load %struct.chunk_s*, %struct.chunk_s** %outer, align 8, !tbaa !58
  %cmp5 = icmp eq %struct.chunk_s* %21, null
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %22 = load i64, i64* %csize, align 8, !tbaa !27
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %allocated8 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %23, i32 0, i32 16
  %24 = load i64, i64* %allocated8, align 8, !tbaa !60
  %sub9 = sub i64 %24, %22
  store i64 %sub9, i64* %allocated8, align 8, !tbaa !60
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %28 = load i8*, i8** %cdata, align 8, !tbaa !1
  call void %26(%struct.gs_memory_s* %27, i8* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %29 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %outer10 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %29, i32 0, i32 11
  %30 = load %struct.chunk_s*, %struct.chunk_s** %outer10, align 8, !tbaa !58
  %inner_count = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %30, i32 0, i32 12
  %31 = load i32, i32* %inner_count, align 4, !tbaa !45
  %dec = add i32 %31, -1
  store i32 %dec, i32* %inner_count, align 4, !tbaa !45
  br label %do.body

do.body:                                          ; preds = %if.else
  br label %do.body.11

do.body.11:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.11
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.12

do.cond.12:                                       ; preds = %do.end
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  br label %if.end.14

if.end.14:                                        ; preds = %do.end.13, %if.then.7
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object16 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object16, align 8, !tbaa !34
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %35 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %36 = bitcast %struct.chunk_s* %35 to i8*
  call void %33(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #4
  %37 = bitcast i64* %csize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.gs_memory_s** %parent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_open_chunk(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %0, i32 0, i32 14
  %1 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !69
  %cmp = icmp ne %struct.chunk_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 13
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %3, i32 0, i32 14
  %4 = load %struct.chunk_s*, %struct.chunk_s** %pcc1, align 8, !tbaa !69
  %5 = bitcast %struct.chunk_s* %cc to i8*
  %6 = bitcast %struct.chunk_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 184, i32 8, i1 false), !tbaa.struct !72
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define void @alloc_link_chunk(%struct.chunk_s* %cp, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %cdata = alloca i8*, align 8
  %icp = alloca %struct.chunk_s*, align 8
  %prev = alloca %struct.chunk_s*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %cbase, align 8, !tbaa !43
  store i8* %2, i8** %cdata, align 8, !tbaa !1
  %3 = bitcast %struct.chunk_s** %icp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.chunk_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 12
  %6 = load %struct.chunk_s*, %struct.chunk_s** %clast, align 8, !tbaa !66
  %tobool = icmp ne %struct.chunk_s* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %cdata, align 8, !tbaa !1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %clast1 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 12
  %9 = load %struct.chunk_s*, %struct.chunk_s** %clast1, align 8, !tbaa !66
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %9, i32 0, i32 6
  %10 = load i8*, i8** %ctop, align 8, !tbaa !47
  %cmp = icmp uge i8* %7, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store %struct.chunk_s* null, %struct.chunk_s** %icp, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 11
  %12 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !57
  store %struct.chunk_s* %12, %struct.chunk_s** %icp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %13 = load %struct.chunk_s*, %struct.chunk_s** %icp, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.chunk_s* %13, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %14 = load i8*, i8** %cdata, align 8, !tbaa !1
  %15 = load %struct.chunk_s*, %struct.chunk_s** %icp, align 8, !tbaa !1
  %ctop3 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %15, i32 0, i32 6
  %16 = load i8*, i8** %ctop3, align 8, !tbaa !47
  %cmp4 = icmp uge i8* %14, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.chunk_s*, %struct.chunk_s** %icp, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %18, i32 0, i32 10
  %19 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !59
  store %struct.chunk_s* %19, %struct.chunk_s** %icp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %20 = load %struct.chunk_s*, %struct.chunk_s** %icp, align 8, !tbaa !1
  %21 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cnext5 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %21, i32 0, i32 10
  store %struct.chunk_s* %20, %struct.chunk_s** %cnext5, align 8, !tbaa !59
  %22 = load %struct.chunk_s*, %struct.chunk_s** %icp, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.chunk_s* %22, null
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.end
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %clast8 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %23, i32 0, i32 12
  %24 = load %struct.chunk_s*, %struct.chunk_s** %clast8, align 8, !tbaa !66
  store %struct.chunk_s* %24, %struct.chunk_s** %prev, align 8, !tbaa !1
  %25 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %clast9 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 12
  store %struct.chunk_s* %25, %struct.chunk_s** %clast9, align 8, !tbaa !66
  br label %if.end.12

if.else.10:                                       ; preds = %if.end
  %27 = load %struct.chunk_s*, %struct.chunk_s** %icp, align 8, !tbaa !1
  %cprev = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %27, i32 0, i32 9
  %28 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !67
  store %struct.chunk_s* %28, %struct.chunk_s** %prev, align 8, !tbaa !1
  %29 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %30 = load %struct.chunk_s*, %struct.chunk_s** %icp, align 8, !tbaa !1
  %cprev11 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %30, i32 0, i32 9
  store %struct.chunk_s* %29, %struct.chunk_s** %cprev11, align 8, !tbaa !67
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.7
  %31 = load %struct.chunk_s*, %struct.chunk_s** %prev, align 8, !tbaa !1
  %32 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cprev13 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %32, i32 0, i32 9
  store %struct.chunk_s* %31, %struct.chunk_s** %cprev13, align 8, !tbaa !67
  %33 = load %struct.chunk_s*, %struct.chunk_s** %prev, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.chunk_s* %33, null
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.12
  %34 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %cfirst16 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %35, i32 0, i32 11
  store %struct.chunk_s* %34, %struct.chunk_s** %cfirst16, align 8, !tbaa !57
  br label %if.end.19

if.else.17:                                       ; preds = %if.end.12
  %36 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %37 = load %struct.chunk_s*, %struct.chunk_s** %prev, align 8, !tbaa !1
  %cnext18 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %37, i32 0, i32 10
  store %struct.chunk_s* %36, %struct.chunk_s** %cnext18, align 8, !tbaa !59
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.15
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %38, i32 0, i32 14
  %39 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !69
  %cmp20 = icmp ne %struct.chunk_s* %39, null
  br i1 %cmp20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.19
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %pcc22 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %40, i32 0, i32 14
  %41 = load %struct.chunk_s*, %struct.chunk_s** %pcc22, align 8, !tbaa !69
  %cnext23 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %41, i32 0, i32 10
  %42 = load %struct.chunk_s*, %struct.chunk_s** %cnext23, align 8, !tbaa !59
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %43, i32 0, i32 13
  %cnext24 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 10
  store %struct.chunk_s* %42, %struct.chunk_s** %cnext24, align 8, !tbaa !70
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %pcc25 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %44, i32 0, i32 14
  %45 = load %struct.chunk_s*, %struct.chunk_s** %pcc25, align 8, !tbaa !69
  %cprev26 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %45, i32 0, i32 9
  %46 = load %struct.chunk_s*, %struct.chunk_s** %cprev26, align 8, !tbaa !67
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %cc27 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %47, i32 0, i32 13
  %cprev28 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc27, i32 0, i32 9
  store %struct.chunk_s* %46, %struct.chunk_s** %cprev28, align 8, !tbaa !127
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.21, %if.end.19
  %48 = bitcast %struct.chunk_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.chunk_s** %icp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_init_chunk(%struct.chunk_s* %cp, i8* %bot, i8* %top, i32 %has_strings, %struct.chunk_s* %outer) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %bot.addr = alloca i8*, align 8
  %top.addr = alloca i8*, align 8
  %has_strings.addr = alloca i32, align 4
  %outer.addr = alloca %struct.chunk_s*, align 8
  %cdata = alloca i8*, align 8
  %nquanta = alloca i32, align 4
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store i8* %bot, i8** %bot.addr, align 8, !tbaa !1
  store i8* %top, i8** %top.addr, align 8, !tbaa !1
  store i32 %has_strings, i32* %has_strings.addr, align 4, !tbaa !5
  store %struct.chunk_s* %outer, %struct.chunk_s** %outer.addr, align 8, !tbaa !1
  %0 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %bot.addr, align 8, !tbaa !1
  store i8* %1, i8** %cdata, align 8, !tbaa !1
  %2 = load %struct.chunk_s*, %struct.chunk_s** %outer.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.chunk_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.chunk_s*, %struct.chunk_s** %outer.addr, align 8, !tbaa !1
  %inner_count = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %3, i32 0, i32 12
  %4 = load i32, i32* %inner_count, align 4, !tbaa !45
  %inc = add i32 %4, 1
  store i32 %inc, i32* %inner_count, align 4, !tbaa !45
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %cdata, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.chunk_head_s*
  %7 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %chead = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %7, i32 0, i32 0
  store %struct.chunk_head_s* %6, %struct.chunk_head_s** %chead, align 8, !tbaa !50
  %8 = load i8*, i8** %cdata, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 32
  store i8* %add.ptr, i8** %cdata, align 8, !tbaa !1
  %9 = load i8*, i8** %cdata, align 8, !tbaa !1
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %int_freed_top = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %10, i32 0, i32 2
  store i8* %9, i8** %int_freed_top, align 8, !tbaa !52
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 1
  store i8* %9, i8** %cbase, align 8, !tbaa !43
  %12 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %12, i32 0, i32 3
  store i8* %9, i8** %cbot, align 8, !tbaa !46
  %13 = load i8*, i8** %top.addr, align 8, !tbaa !1
  %14 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %14, i32 0, i32 8
  store i8* %13, i8** %cend, align 8, !tbaa !44
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %rcur = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %15, i32 0, i32 4
  store %struct.obj_header_s* null, %struct.obj_header_s** %rcur, align 8, !tbaa !128
  %16 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %rtop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %16, i32 0, i32 5
  store i8* null, i8** %rtop, align 8, !tbaa !129
  %17 = load %struct.chunk_s*, %struct.chunk_s** %outer.addr, align 8, !tbaa !1
  %18 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %outer1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %18, i32 0, i32 11
  store %struct.chunk_s* %17, %struct.chunk_s** %outer1, align 8, !tbaa !58
  %19 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %inner_count2 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %19, i32 0, i32 12
  store i32 0, i32* %inner_count2, align 4, !tbaa !45
  %20 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %has_refs = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %20, i32 0, i32 13
  store i32 0, i32* %has_refs, align 4, !tbaa !130
  %21 = load i8*, i8** %cdata, align 8, !tbaa !1
  %22 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %22, i32 0, i32 19
  store i8* %21, i8** %sbase, align 8, !tbaa !131
  %23 = load i32, i32* %has_strings.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %24 = load i8*, i8** %top.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %cdata, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp3 = icmp uge i64 %sub.ptr.sub, 83
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  %26 = bitcast i32* %nquanta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i8*, i8** %top.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %cdata, align 8, !tbaa !1
  %sub.ptr.lhs.cast5 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %28 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %div = udiv i64 %sub.ptr.sub7, 76
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %nquanta, align 4, !tbaa !5
  %29 = load i8*, i8** %cdata, align 8, !tbaa !1
  %30 = load i32, i32* %nquanta, align 4, !tbaa !5
  %mul = mul i32 %30, 64
  %idx.ext = zext i32 %mul to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %31 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %climit = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %31, i32 0, i32 7
  store i8* %add.ptr8, i8** %climit, align 8, !tbaa !73
  %32 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %climit9 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %32, i32 0, i32 7
  %33 = load i8*, i8** %climit9, align 8, !tbaa !73
  %34 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %34, i32 0, i32 17
  store i8* %33, i8** %smark, align 8, !tbaa !132
  %35 = load i32, i32* %nquanta, align 4, !tbaa !5
  %mul10 = mul i32 %35, 8
  %36 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark_size = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %36, i32 0, i32 18
  store i32 %mul10, i32* %smark_size, align 4, !tbaa !133
  %37 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark11 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %37, i32 0, i32 17
  %38 = load i8*, i8** %smark11, align 8, !tbaa !132
  %39 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark_size12 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %39, i32 0, i32 18
  %40 = load i32, i32* %smark_size12, align 4, !tbaa !133
  %idx.ext13 = zext i32 %40 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %38, i64 %idx.ext13
  %41 = bitcast i8* %add.ptr14 to i32*
  %42 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sreloc = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %42, i32 0, i32 20
  store i32* %41, i32** %sreloc, align 8, !tbaa !134
  %43 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sreloc15 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %43, i32 0, i32 20
  %44 = load i32*, i32** %sreloc15, align 8, !tbaa !134
  %45 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sfree1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %45, i32 0, i32 14
  store i32* %44, i32** %sfree1, align 8, !tbaa !135
  %46 = bitcast i32* %nquanta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %if.end
  %47 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cend16 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %47, i32 0, i32 8
  %48 = load i8*, i8** %cend16, align 8, !tbaa !44
  %49 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %climit17 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %49, i32 0, i32 7
  store i8* %48, i8** %climit17, align 8, !tbaa !73
  %50 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sfree118 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %50, i32 0, i32 14
  store i32* null, i32** %sfree118, align 8, !tbaa !135
  %51 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark19 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %51, i32 0, i32 17
  store i8* null, i8** %smark19, align 8, !tbaa !132
  %52 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %smark_size20 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %52, i32 0, i32 18
  store i32 0, i32* %smark_size20, align 4, !tbaa !133
  %53 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sreloc21 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %53, i32 0, i32 20
  store i32* null, i32** %sreloc21, align 8, !tbaa !134
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.4
  %54 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %climit23 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %54, i32 0, i32 7
  %55 = load i8*, i8** %climit23, align 8, !tbaa !73
  %56 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %56, i32 0, i32 6
  store i8* %55, i8** %ctop, align 8, !tbaa !47
  %57 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  call void @alloc_init_free_strings(%struct.chunk_s* %57) #4
  %58 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_init_free_strings(%struct.chunk_s* %cp) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %0 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sfree1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %0, i32 0, i32 14
  %1 = load i32*, i32** %sfree1, align 8, !tbaa !135
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sfree11 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %2, i32 0, i32 14
  %3 = load i32*, i32** %sfree11, align 8, !tbaa !135
  %4 = bitcast i32* %3 to i8*
  %5 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %climit = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %5, i32 0, i32 7
  %6 = load i8*, i8** %climit, align 8, !tbaa !73
  %7 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %chead = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %7, i32 0, i32 0
  %8 = load %struct.chunk_head_s*, %struct.chunk_head_s** %chead, align 8, !tbaa !50
  %9 = bitcast %struct.chunk_head_s* %8 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 255
  %shr = ashr i64 %add, 8
  %mul = mul i64 %shr, 4
  %call = call i8* @memset(i8* %4, i32 0, i64 %mul) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %sfree = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %10, i32 0, i32 15
  store i32 0, i32* %sfree, align 4, !tbaa !136
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define void @alloc_unlink_chunk(%struct.chunk_s* %cp, %struct.gs_ref_memory_s* %mem) #0 {
entry:
  %cp.addr = alloca %struct.chunk_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cprev = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %0, i32 0, i32 9
  %1 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !67
  %cmp = icmp eq %struct.chunk_s* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %2, i32 0, i32 10
  %3 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !59
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %4, i32 0, i32 11
  store %struct.chunk_s* %3, %struct.chunk_s** %cfirst, align 8, !tbaa !57
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cnext1 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %5, i32 0, i32 10
  %6 = load %struct.chunk_s*, %struct.chunk_s** %cnext1, align 8, !tbaa !59
  %7 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cprev2 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %7, i32 0, i32 9
  %8 = load %struct.chunk_s*, %struct.chunk_s** %cprev2, align 8, !tbaa !67
  %cnext3 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %8, i32 0, i32 10
  store %struct.chunk_s* %6, %struct.chunk_s** %cnext3, align 8, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cnext4 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %9, i32 0, i32 10
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cnext4, align 8, !tbaa !59
  %cmp5 = icmp eq %struct.chunk_s* %10, null
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.end
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cprev7 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 9
  %12 = load %struct.chunk_s*, %struct.chunk_s** %cprev7, align 8, !tbaa !67
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %13, i32 0, i32 12
  store %struct.chunk_s* %12, %struct.chunk_s** %clast, align 8, !tbaa !66
  br label %if.end.12

if.else.8:                                        ; preds = %if.end
  %14 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cprev9 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %14, i32 0, i32 9
  %15 = load %struct.chunk_s*, %struct.chunk_s** %cprev9, align 8, !tbaa !67
  %16 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cnext10 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %16, i32 0, i32 10
  %17 = load %struct.chunk_s*, %struct.chunk_s** %cnext10, align 8, !tbaa !59
  %cprev11 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %17, i32 0, i32 9
  store %struct.chunk_s* %15, %struct.chunk_s** %cprev11, align 8, !tbaa !67
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.6
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %18, i32 0, i32 14
  %19 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !69
  %cmp13 = icmp ne %struct.chunk_s* %19, null
  br i1 %cmp13, label %if.then.14, label %if.end.29

if.then.14:                                       ; preds = %if.end.12
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc15 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %20, i32 0, i32 14
  %21 = load %struct.chunk_s*, %struct.chunk_s** %pcc15, align 8, !tbaa !69
  %cnext16 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %21, i32 0, i32 10
  %22 = load %struct.chunk_s*, %struct.chunk_s** %cnext16, align 8, !tbaa !59
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %23, i32 0, i32 13
  %cnext17 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 10
  store %struct.chunk_s* %22, %struct.chunk_s** %cnext17, align 8, !tbaa !70
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc18 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 14
  %25 = load %struct.chunk_s*, %struct.chunk_s** %pcc18, align 8, !tbaa !69
  %cprev19 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %25, i32 0, i32 9
  %26 = load %struct.chunk_s*, %struct.chunk_s** %cprev19, align 8, !tbaa !67
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc20 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %27, i32 0, i32 13
  %cprev21 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc20, i32 0, i32 9
  store %struct.chunk_s* %26, %struct.chunk_s** %cprev21, align 8, !tbaa !127
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc22 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %28, i32 0, i32 14
  %29 = load %struct.chunk_s*, %struct.chunk_s** %pcc22, align 8, !tbaa !69
  %30 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cmp23 = icmp eq %struct.chunk_s* %29, %30
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.then.14
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc25 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %31, i32 0, i32 14
  store %struct.chunk_s* null, %struct.chunk_s** %pcc25, align 8, !tbaa !69
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc26 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %32, i32 0, i32 13
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc26, i32 0, i32 6
  store i8* null, i8** %ctop, align 8, !tbaa !31
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc27 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %33, i32 0, i32 13
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc27, i32 0, i32 3
  store i8* null, i8** %cbot, align 8, !tbaa !30
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.then.14
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @chunk_locate_ptr(i8* %ptr, %struct.chunk_locator_s* %clp) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  %clp.addr = alloca %struct.chunk_locator_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store %struct.chunk_locator_s* %clp, %struct.chunk_locator_s** %clp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.chunk_locator_s*, %struct.chunk_locator_s** %clp.addr, align 8, !tbaa !1
  %cp1 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %1, i32 0, i32 1
  %2 = load %struct.chunk_s*, %struct.chunk_s** %cp1, align 8, !tbaa !40
  store %struct.chunk_s* %2, %struct.chunk_s** %cp, align 8, !tbaa !1
  %3 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp eq %struct.chunk_s* %3, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct.chunk_locator_s*, %struct.chunk_locator_s** %clp.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %4, i32 0, i32 0
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !39
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %5, i32 0, i32 11
  %6 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !57
  store %struct.chunk_s* %6, %struct.chunk_s** %cp, align 8, !tbaa !1
  %7 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.chunk_s* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %9 = load %struct.chunk_locator_s*, %struct.chunk_locator_s** %clp.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %9, i32 0, i32 0
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory4, align 8, !tbaa !39
  %clast = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %10, i32 0, i32 12
  %11 = load %struct.chunk_s*, %struct.chunk_s** %clast, align 8, !tbaa !66
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %cbase, align 8, !tbaa !43
  %cmp5 = icmp uge i8* %8, %12
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.chunk_locator_s*, %struct.chunk_locator_s** %clp.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %13, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %memory7, align 8, !tbaa !39
  %clast8 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 12
  %15 = load %struct.chunk_s*, %struct.chunk_s** %clast8, align 8, !tbaa !66
  store %struct.chunk_s* %15, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %16 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %17 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase11 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %17, i32 0, i32 1
  %18 = load i8*, i8** %cbase11, align 8, !tbaa !43
  %cmp12 = icmp ult i8* %16, %18
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.13
  %19 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cprev = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %19, i32 0, i32 9
  %20 = load %struct.chunk_s*, %struct.chunk_s** %cprev, align 8, !tbaa !67
  store %struct.chunk_s* %20, %struct.chunk_s** %cp, align 8, !tbaa !1
  %21 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.chunk_s* %21, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.16
  %22 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %23 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase17 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %cbase17, align 8, !tbaa !43
  %cmp18 = icmp ult i8* %22, %24
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %26 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %26, i32 0, i32 8
  %27 = load i8*, i8** %cend, align 8, !tbaa !44
  %cmp19 = icmp uge i8* %25, %27
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %do.end
  br label %if.end.31

if.else:                                          ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %if.else
  %28 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %29 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cend22 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %29, i32 0, i32 8
  %30 = load i8*, i8** %cend22, align 8, !tbaa !44
  %cmp23 = icmp uge i8* %28, %30
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %31, i32 0, i32 10
  %32 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !59
  store %struct.chunk_s* %32, %struct.chunk_s** %cp, align 8, !tbaa !1
  %33 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp24 = icmp eq %struct.chunk_s* %33, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %35 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase27 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %35, i32 0, i32 1
  %36 = load i8*, i8** %cbase27, align 8, !tbaa !43
  %cmp28 = icmp ult i8* %34, %36
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %while.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.21
  %37 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %38 = load %struct.chunk_locator_s*, %struct.chunk_locator_s** %clp.addr, align 8, !tbaa !1
  %cp32 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %38, i32 0, i32 1
  store %struct.chunk_s* %37, %struct.chunk_s** %cp32, align 8, !tbaa !40
  %39 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %inner_count = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %39, i32 0, i32 12
  %40 = load i32, i32* %inner_count, align 4, !tbaa !45
  %cmp33 = icmp ne i32 %40, 0
  br i1 %cmp33, label %land.rhs, label %land.end.37

land.rhs:                                         ; preds = %if.end.31
  %41 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %42 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %42, i32 0, i32 3
  %43 = load i8*, i8** %cbot, align 8, !tbaa !46
  %cmp34 = icmp uge i8* %41, %43
  br i1 %cmp34, label %land.rhs.35, label %land.end

land.rhs.35:                                      ; preds = %land.rhs
  %44 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %45 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %45, i32 0, i32 6
  %46 = load i8*, i8** %ctop, align 8, !tbaa !47
  %cmp36 = icmp ult i8* %44, %46
  br label %land.end

land.end:                                         ; preds = %land.rhs.35, %land.rhs
  %47 = phi i1 [ false, %land.rhs ], [ %cmp36, %land.rhs.35 ]
  br label %land.end.37

land.end.37:                                      ; preds = %land.end, %if.end.31
  %48 = phi i1 [ false, %if.end.31 ], [ %47, %land.end ]
  %lnot = xor i1 %48, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end.37, %if.then.29, %if.then.25, %if.then.20, %if.then.15, %if.then.3
  %49 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i8* @gs_raw_alloc_struct_immovable(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.obj_header_s* @large_freelist_alloc(%struct.gs_ref_memory_s* %mem, i32 %size) #0 {
entry:
  %retval = alloca %struct.obj_header_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %aligned_size = alloca i32, align 4
  %aligned_min_size = alloca i32, align 4
  %aligned_max_size = alloca i32, align 4
  %best_fit = alloca %struct.obj_header_s*, align 8
  %best_fit_prev = alloca %struct.obj_header_s**, align 8
  %best_fit_size = alloca i32, align 4
  %pfree = alloca %struct.obj_header_s*, align 8
  %ppfprev = alloca %struct.obj_header_s**, align 8
  %largest_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %free_size = alloca i32, align 4
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i32* %aligned_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %add = add i32 %1, 7
  %and = and i32 %add, -8
  %conv = zext i32 %and to i64
  %conv1 = trunc i64 %conv to i32
  store i32 %conv1, i32* %aligned_size, align 4, !tbaa !5
  %2 = bitcast i32* %aligned_min_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %aligned_size, align 4, !tbaa !5
  %conv2 = zext i32 %3 to i64
  %add3 = add i64 %conv2, 24
  %conv4 = trunc i64 %add3 to i32
  store i32 %conv4, i32* %aligned_min_size, align 4, !tbaa !5
  %4 = bitcast i32* %aligned_max_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %aligned_min_size, align 4, !tbaa !5
  %conv5 = zext i32 %5 to i64
  %6 = load i32, i32* %aligned_min_size, align 4, !tbaa !5
  %div = udiv i32 %6, 8
  %add6 = add i32 %div, 7
  %and7 = and i32 %add6, -8
  %conv8 = zext i32 %and7 to i64
  %add9 = add i64 %conv5, %conv8
  %conv10 = trunc i64 %add9 to i32
  store i32 %conv10, i32* %aligned_max_size, align 4, !tbaa !5
  %7 = bitcast %struct.obj_header_s** %best_fit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct.obj_header_s* null, %struct.obj_header_s** %best_fit, align 8, !tbaa !1
  %8 = bitcast %struct.obj_header_s*** %best_fit_prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.obj_header_s** null, %struct.obj_header_s*** %best_fit_prev, align 8, !tbaa !1
  %9 = bitcast i32* %best_fit_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -1, i32* %best_fit_size, align 4, !tbaa !5
  %10 = bitcast %struct.obj_header_s** %pfree to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.obj_header_s*** %ppfprev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %freelists = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %12, i32 0, i32 34
  %arrayidx = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists, i32 0, i64 101
  store %struct.obj_header_s** %arrayidx, %struct.obj_header_s*** %ppfprev, align 8, !tbaa !1
  %13 = bitcast i32* %largest_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %largest_size, align 4, !tbaa !5
  %14 = load i32, i32* %aligned_size, align 4, !tbaa !5
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %largest_free_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %15, i32 0, i32 33
  %16 = load i32, i32* %largest_free_size, align 4, !tbaa !48
  %cmp = icmp ugt i32 %14, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.obj_header_s* null, %struct.obj_header_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %17 = load %struct.obj_header_s**, %struct.obj_header_s*** %ppfprev, align 8, !tbaa !1
  %18 = load %struct.obj_header_s*, %struct.obj_header_s** %17, align 8, !tbaa !1
  store %struct.obj_header_s* %18, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %cmp12 = icmp ne %struct.obj_header_s* %18, null
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = bitcast i32* %free_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %20, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx14, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size15 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %21 = load i32, i32* %size15, align 4, !tbaa !25
  %add16 = add i32 %21, 7
  %and17 = and i32 %add16, -8
  %conv18 = zext i32 %and17 to i64
  %conv19 = trunc i64 %conv18 to i32
  store i32 %conv19, i32* %free_size, align 4, !tbaa !5
  %22 = load i32, i32* %free_size, align 4, !tbaa !5
  %23 = load i32, i32* %aligned_size, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %22, %23
  br i1 %cmp20, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %24 = load i32, i32* %free_size, align 4, !tbaa !5
  %25 = load i32, i32* %aligned_min_size, align 4, !tbaa !5
  %cmp22 = icmp uge i32 %24, %25
  br i1 %cmp22, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %lor.lhs.false
  %26 = load i32, i32* %free_size, align 4, !tbaa !5
  %27 = load i32, i32* %best_fit_size, align 4, !tbaa !5
  %cmp24 = icmp ult i32 %26, %27
  br i1 %cmp24, label %if.then.26, label %if.end.35

if.then.26:                                       ; preds = %land.lhs.true, %while.body
  %28 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  store %struct.obj_header_s* %28, %struct.obj_header_s** %best_fit, align 8, !tbaa !1
  %29 = load %struct.obj_header_s**, %struct.obj_header_s*** %ppfprev, align 8, !tbaa !1
  store %struct.obj_header_s** %29, %struct.obj_header_s*** %best_fit_prev, align 8, !tbaa !1
  %30 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %30, i64 -1
  %d28 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx27, i32 0, i32 0
  %o29 = bitcast %union._d* %d28 to %struct.obj_header_data_s*
  %size30 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o29, i32 0, i32 1
  %31 = load i32, i32* %size30, align 4, !tbaa !25
  store i32 %31, i32* %best_fit_size, align 4, !tbaa !5
  %32 = load i32, i32* %best_fit_size, align 4, !tbaa !5
  %33 = load i32, i32* %aligned_max_size, align 4, !tbaa !5
  %cmp31 = icmp ule i32 %32, %33
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.26
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.then.26
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true, %lor.lhs.false
  %34 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %35 = bitcast %struct.obj_header_s* %34 to %struct.obj_header_s**
  store %struct.obj_header_s** %35, %struct.obj_header_s*** %ppfprev, align 8, !tbaa !1
  %36 = load i32, i32* %free_size, align 4, !tbaa !5
  %37 = load i32, i32* %largest_size, align 4, !tbaa !5
  %cmp36 = icmp ugt i32 %36, %37
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  %38 = load i32, i32* %free_size, align 4, !tbaa !5
  store i32 %38, i32* %largest_size, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.33
  %39 = bitcast i32* %free_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %40 = load %struct.obj_header_s*, %struct.obj_header_s** %best_fit, align 8, !tbaa !1
  %cmp40 = icmp eq %struct.obj_header_s* %40, null
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %while.end
  %41 = load i32, i32* %largest_size, align 4, !tbaa !5
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %largest_free_size43 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %42, i32 0, i32 33
  store i32 %41, i32* %largest_free_size43, align 4, !tbaa !48
  store %struct.obj_header_s* null, %struct.obj_header_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.44:                                        ; preds = %while.end
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %best_fit, align 8, !tbaa !1
  %44 = bitcast %struct.obj_header_s* %43 to %struct.obj_header_s**
  %45 = load %struct.obj_header_s*, %struct.obj_header_s** %44, align 8, !tbaa !1
  %46 = load %struct.obj_header_s**, %struct.obj_header_s*** %best_fit_prev, align 8, !tbaa !1
  store %struct.obj_header_s* %45, %struct.obj_header_s** %46, align 8, !tbaa !1
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %48 = load %struct.obj_header_s*, %struct.obj_header_s** %best_fit, align 8, !tbaa !1
  %49 = load i32, i32* %aligned_size, align 4, !tbaa !5
  call void @trim_obj(%struct.gs_ref_memory_s* %47, %struct.obj_header_s* %48, i32 %49, %struct.chunk_s* null) #4
  %50 = load i32, i32* %size.addr, align 4, !tbaa !5
  %51 = load %struct.obj_header_s*, %struct.obj_header_s** %best_fit, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %51, i64 -1
  %d46 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx45, i32 0, i32 0
  %o47 = bitcast %union._d* %d46 to %struct.obj_header_data_s*
  %size48 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o47, i32 0, i32 1
  store i32 %50, i32* %size48, align 4, !tbaa !25
  %52 = load %struct.obj_header_s*, %struct.obj_header_s** %best_fit, align 8, !tbaa !1
  store %struct.obj_header_s* %52, %struct.obj_header_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %if.end.44, %if.then.42, %if.then
  %53 = bitcast i32* %largest_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %struct.obj_header_s*** %ppfprev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.obj_header_s** %pfree to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %best_fit_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast %struct.obj_header_s*** %best_fit_prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast %struct.obj_header_s** %best_fit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %aligned_max_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %aligned_min_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %aligned_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = load %struct.obj_header_s*, %struct.obj_header_s** %retval
  ret %struct.obj_header_s* %62

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct.obj_header_s* @alloc_obj(%struct.gs_ref_memory_s* %mem, i64 %lsize, %struct.gs_memory_struct_type_s* %pstype, i32 %flags, i8* %cname) #0 {
entry:
  %retval = alloca %struct.obj_header_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %lsize.addr = alloca i64, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %flags.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %ptr = alloca %struct.obj_header_s*, align 8
  %asize = alloca i64, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %cleanup.dest.slot = alloca i32
  %cp_orig = alloca %struct.chunk_s*, align 8
  %asize23 = alloca i32, align 4
  %allocate_success = alloca i32, align 4
  %cp72 = alloca %struct.chunk_s*, align 8
  %cp85 = alloca %struct.chunk_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %lsize, i64* %lsize.addr, align 8, !tbaa !27
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !36
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.obj_header_s** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64, i64* %lsize.addr, align 8, !tbaa !27
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %large_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %2, i32 0, i32 6
  %3 = load i32, i32* %large_size, align 4, !tbaa !68
  %conv = zext i32 %3 to i64
  %cmp = icmp uge i64 %1, %conv
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %flags.addr, align 4, !tbaa !36
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = bitcast i64* %asize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i64, i64* %lsize.addr, align 8, !tbaa !27
  %add = add i64 %6, 7
  %and2 = and i64 %add, -8
  %add3 = add i64 %and2, 24
  store i64 %add3, i64* %asize, align 8, !tbaa !27
  %7 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load i64, i64* %asize, align 8, !tbaa !27
  %add4 = add i64 %9, 32
  %call = call %struct.chunk_s* @alloc_acquire_chunk(%struct.gs_ref_memory_s* %8, i64 %add4, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #4
  store %struct.chunk_s* %call, %struct.chunk_s** %cp, align 8, !tbaa !1
  %10 = load i64, i64* %asize, align 8, !tbaa !27
  %cmp5 = icmp ugt i64 %10, 4294967295
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store %struct.obj_header_s* null, %struct.obj_header_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.chunk_s* %11, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store %struct.obj_header_s* null, %struct.obj_header_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %12 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %12, i32 0, i32 3
  %13 = load i8*, i8** %cbot, align 8, !tbaa !46
  %14 = bitcast i8* %13 to %struct.obj_header_s*
  store %struct.obj_header_s* %14, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %15 = load i64, i64* %asize, align 8, !tbaa !27
  %16 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot12 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %16, i32 0, i32 3
  %17 = load i8*, i8** %cbot12, align 8, !tbaa !46
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %15
  store i8* %add.ptr, i8** %cbot12, align 8, !tbaa !46
  %18 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %18, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 0
  %h = bitcast %union._f* %f to %struct._h*
  %19 = bitcast %struct._h* %h to i32*
  %bf.load = load i32, i32* %19, align 4
  %bf.clear = and i32 %bf.load, 1
  store i32 %bf.clear, i32* %19, align 4
  %20 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %d13 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %20, i32 0, i32 0
  %o14 = bitcast %union._d* %d13 to %struct.obj_header_data_s*
  %f15 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o14, i32 0, i32 0
  %h16 = bitcast %union._f* %f15 to %struct._h*
  %21 = bitcast %struct._h* %h16 to i32*
  %bf.load17 = load i32, i32* %21, align 4
  %bf.clear18 = and i32 %bf.load17, -2
  %bf.set = or i32 %bf.clear18, 1
  store i32 %bf.set, i32* %21, align 4
  %22 = load i64, i64* %lsize.addr, align 8, !tbaa !27
  %conv19 = trunc i64 %22 to i32
  %23 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %d20 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %23, i32 0, i32 0
  %o21 = bitcast %union._d* %d20 to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o21, i32 0, i32 1
  store i32 %conv19, i32* %size, align 4, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.7
  %24 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i64* %asize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.140 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.130

if.else:                                          ; preds = %lor.lhs.false
  %26 = bitcast %struct.chunk_s** %cp_orig to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %27, i32 0, i32 14
  %28 = load %struct.chunk_s*, %struct.chunk_s** %pcc, align 8, !tbaa !69
  store %struct.chunk_s* %28, %struct.chunk_s** %cp_orig, align 8, !tbaa !1
  %29 = bitcast i32* %asize23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i64, i64* %lsize.addr, align 8, !tbaa !27
  %conv24 = trunc i64 %30 to i32
  %conv25 = zext i32 %conv24 to i64
  %add26 = add i64 %conv25, 24
  %add27 = add i64 %add26, 7
  %and28 = and i64 %add27, -8
  %conv29 = trunc i64 %and28 to i32
  store i32 %conv29, i32* %asize23, align 4, !tbaa !5
  %31 = bitcast i32* %allocate_success to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 0, i32* %allocate_success, align 4, !tbaa !5
  %32 = load i64, i64* %lsize.addr, align 8, !tbaa !27
  %cmp30 = icmp ugt i64 %32, 800
  br i1 %cmp30, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.else
  %33 = load i32, i32* %flags.addr, align 4, !tbaa !36
  %and32 = and i32 %33, 2
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %land.lhs.true
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %35 = load i64, i64* %lsize.addr, align 8, !tbaa !27
  %conv35 = trunc i64 %35 to i32
  %call36 = call %struct.obj_header_s* @large_freelist_alloc(%struct.gs_ref_memory_s* %34, i32 %conv35) #4
  store %struct.obj_header_s* %call36, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %cmp37 = icmp ne %struct.obj_header_s* %call36, null
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.34
  %36 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %36, i32 -1
  store %struct.obj_header_s* %incdec.ptr, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.40:                                        ; preds = %if.then.34
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %land.lhs.true, %if.else
  %37 = load %struct.chunk_s*, %struct.chunk_s** %cp_orig, align 8, !tbaa !1
  %cmp42 = icmp eq %struct.chunk_s* %37, null
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.41
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %38, i32 0, i32 11
  %39 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !57
  %40 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc45 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %40, i32 0, i32 14
  store %struct.chunk_s* %39, %struct.chunk_s** %pcc45, align 8, !tbaa !69
  store %struct.chunk_s* %39, %struct.chunk_s** %cp_orig, align 8, !tbaa !1
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_open_chunk(%struct.gs_ref_memory_s* %41) #4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.41
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.46
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %42, i32 0, i32 13
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 6
  %43 = load i8*, i8** %ctop, align 8, !tbaa !47
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc47 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %44, i32 0, i32 13
  %cbot48 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc47, i32 0, i32 3
  %45 = load i8*, i8** %cbot48, align 8, !tbaa !46
  %46 = bitcast i8* %45 to %struct.obj_header_s*
  store %struct.obj_header_s* %46, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %47 = bitcast %struct.obj_header_s* %46 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %48 = load i32, i32* %asize23, align 4, !tbaa !5
  %conv49 = zext i32 %48 to i64
  %add50 = add i64 %conv49, 24
  %cmp51 = icmp ugt i64 %sub.ptr.sub, %add50
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body
  store i32 1, i32* %allocate_success, align 4, !tbaa !5
  br label %do.end

if.else.54:                                       ; preds = %do.body
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %is_controlled = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %49, i32 0, i32 9
  %50 = load i32, i32* %is_controlled, align 4, !tbaa !41
  %tobool55 = icmp ne i32 %50, 0
  br i1 %tobool55, label %if.then.56, label %if.end.70

if.then.56:                                       ; preds = %if.else.54
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %52 = bitcast %struct.gs_ref_memory_s* %51 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 1
  %consolidate_free = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 6
  %53 = load void (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*)** %consolidate_free, align 8, !tbaa !137
  %54 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %55 = bitcast %struct.gs_ref_memory_s* %54 to %struct.gs_memory_s*
  call void %53(%struct.gs_memory_s* %55) #4
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc57 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %56, i32 0, i32 13
  %ctop58 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc57, i32 0, i32 6
  %57 = load i8*, i8** %ctop58, align 8, !tbaa !47
  %58 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc59 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %58, i32 0, i32 13
  %cbot60 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc59, i32 0, i32 3
  %59 = load i8*, i8** %cbot60, align 8, !tbaa !46
  %60 = bitcast i8* %59 to %struct.obj_header_s*
  store %struct.obj_header_s* %60, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %61 = bitcast %struct.obj_header_s* %60 to i8*
  %sub.ptr.lhs.cast61 = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast62 = ptrtoint i8* %61 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %62 = load i32, i32* %asize23, align 4, !tbaa !5
  %conv64 = zext i32 %62 to i64
  %add65 = add i64 %conv64, 24
  %cmp66 = icmp ugt i64 %sub.ptr.sub63, %add65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.56
  store i32 1, i32* %allocate_success, align 4, !tbaa !5
  br label %do.end

if.end.69:                                        ; preds = %if.then.56
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.else.54
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70
  %63 = bitcast %struct.chunk_s** %cp72 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc73 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %64, i32 0, i32 13
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc73, i32 0, i32 10
  %65 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !70
  store %struct.chunk_s* %65, %struct.chunk_s** %cp72, align 8, !tbaa !1
  %66 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %66) #4
  %67 = load %struct.chunk_s*, %struct.chunk_s** %cp72, align 8, !tbaa !1
  %cmp74 = icmp eq %struct.chunk_s* %67, null
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.71
  %68 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfirst77 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %68, i32 0, i32 11
  %69 = load %struct.chunk_s*, %struct.chunk_s** %cfirst77, align 8, !tbaa !57
  store %struct.chunk_s* %69, %struct.chunk_s** %cp72, align 8, !tbaa !1
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.71
  %70 = load %struct.chunk_s*, %struct.chunk_s** %cp72, align 8, !tbaa !1
  %71 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc79 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %71, i32 0, i32 14
  store %struct.chunk_s* %70, %struct.chunk_s** %pcc79, align 8, !tbaa !69
  %72 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_open_chunk(%struct.gs_ref_memory_s* %72) #4
  %73 = bitcast %struct.chunk_s** %cp72 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  br label %do.cond

do.cond:                                          ; preds = %if.end.78
  %74 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %pcc80 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %74, i32 0, i32 14
  %75 = load %struct.chunk_s*, %struct.chunk_s** %pcc80, align 8, !tbaa !69
  %76 = load %struct.chunk_s*, %struct.chunk_s** %cp_orig, align 8, !tbaa !1
  %cmp81 = icmp ne %struct.chunk_s* %75, %76
  br i1 %cmp81, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.68, %if.then.53
  %77 = load i32, i32* %allocate_success, align 4, !tbaa !5
  %tobool83 = icmp ne i32 %77, 0
  br i1 %tobool83, label %if.end.92, label %if.then.84

if.then.84:                                       ; preds = %do.end
  %78 = bitcast %struct.chunk_s** %cp85 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %80 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %chunk_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %80, i32 0, i32 5
  %81 = load i32, i32* %chunk_size, align 4, !tbaa !71
  %conv86 = zext i32 %81 to i64
  %call87 = call %struct.chunk_s* @alloc_add_chunk(%struct.gs_ref_memory_s* %79, i64 %conv86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #4
  store %struct.chunk_s* %call87, %struct.chunk_s** %cp85, align 8, !tbaa !1
  %82 = load %struct.chunk_s*, %struct.chunk_s** %cp85, align 8, !tbaa !1
  %tobool88 = icmp ne %struct.chunk_s* %82, null
  br i1 %tobool88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.then.84
  %83 = load %struct.chunk_s*, %struct.chunk_s** %cp85, align 8, !tbaa !1
  %cbot90 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %83, i32 0, i32 3
  %84 = load i8*, i8** %cbot90, align 8, !tbaa !46
  %85 = bitcast i8* %84 to %struct.obj_header_s*
  store %struct.obj_header_s* %85, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  store i32 1, i32* %allocate_success, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.then.84
  %86 = bitcast %struct.chunk_s** %cp85 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %do.end
  %87 = load i32, i32* %allocate_success, align 4, !tbaa !5
  %tobool93 = icmp ne i32 %87, 0
  br i1 %tobool93, label %if.then.94, label %if.else.98

if.then.94:                                       ; preds = %if.end.92
  %88 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %89 = bitcast %struct.obj_header_s* %88 to i8*
  %90 = load i32, i32* %asize23, align 4, !tbaa !5
  %idx.ext = zext i32 %90 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %89, i64 %idx.ext
  %91 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc96 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %91, i32 0, i32 13
  %cbot97 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc96, i32 0, i32 3
  store i8* %add.ptr95, i8** %cbot97, align 8, !tbaa !30
  br label %if.end.108

if.else.98:                                       ; preds = %if.end.92
  %92 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %is_controlled99 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %92, i32 0, i32 9
  %93 = load i32, i32* %is_controlled99, align 4, !tbaa !41
  %tobool100 = icmp ne i32 %93, 0
  br i1 %tobool100, label %lor.lhs.false.101, label %if.then.106

lor.lhs.false.101:                                ; preds = %if.else.98
  %94 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %95 = load i64, i64* %lsize.addr, align 8, !tbaa !27
  %conv102 = trunc i64 %95 to i32
  %call103 = call %struct.obj_header_s* @scavenge_low_free(%struct.gs_ref_memory_s* %94, i32 %conv102) #4
  store %struct.obj_header_s* %call103, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %cmp104 = icmp eq %struct.obj_header_s* %call103, null
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %lor.lhs.false.101, %if.else.98
  store %struct.obj_header_s* null, %struct.obj_header_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.107:                                       ; preds = %lor.lhs.false.101
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.94
  %96 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %d109 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %96, i32 0, i32 0
  %o110 = bitcast %union._d* %d109 to %struct.obj_header_data_s*
  %f111 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o110, i32 0, i32 0
  %h112 = bitcast %union._f* %f111 to %struct._h*
  %97 = bitcast %struct._h* %h112 to i32*
  %bf.load113 = load i32, i32* %97, align 4
  %bf.clear114 = and i32 %bf.load113, 1
  store i32 %bf.clear114, i32* %97, align 4
  %98 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %d115 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %98, i32 0, i32 0
  %o116 = bitcast %union._d* %d115 to %struct.obj_header_data_s*
  %f117 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o116, i32 0, i32 0
  %h118 = bitcast %union._f* %f117 to %struct._h*
  %99 = bitcast %struct._h* %h118 to i32*
  %bf.load119 = load i32, i32* %99, align 4
  %bf.clear120 = and i32 %bf.load119, -2
  store i32 %bf.clear120, i32* %99, align 4
  %100 = load i64, i64* %lsize.addr, align 8, !tbaa !27
  %conv121 = trunc i64 %100 to i32
  %101 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %d122 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %101, i32 0, i32 0
  %o123 = bitcast %union._d* %d122 to %struct.obj_header_data_s*
  %size124 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o123, i32 0, i32 1
  store i32 %conv121, i32* %size124, align 4, !tbaa !25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %if.then.39, %if.end.108, %if.then.106
  %102 = bitcast i32* %allocate_success to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %asize23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast %struct.chunk_s** %cp_orig to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %cleanup.dest.128 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.128, label %cleanup.140 [
    i32 0, label %cleanup.cont.129
    i32 2, label %done
  ]

cleanup.cont.129:                                 ; preds = %cleanup.125
  br label %if.end.130

if.end.130:                                       ; preds = %cleanup.cont.129, %cleanup.cont
  br label %done

done:                                             ; preds = %if.end.130, %cleanup.125
  %105 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %106 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %d131 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %106, i32 0, i32 0
  %o132 = bitcast %union._d* %d131 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o132, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* %105, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %107 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %107, i32 1
  store %struct.obj_header_s* %incdec.ptr133, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  br label %do.body.134

do.body.134:                                      ; preds = %done
  br label %do.body.135

do.body.135:                                      ; preds = %do.body.134
  br label %do.cond.136

do.cond.136:                                      ; preds = %do.body.135
  br label %do.end.137

do.end.137:                                       ; preds = %do.cond.136
  br label %do.cond.138

do.cond.138:                                      ; preds = %do.end.137
  br label %do.end.139

do.end.139:                                       ; preds = %do.cond.138
  %108 = load %struct.obj_header_s*, %struct.obj_header_s** %ptr, align 8, !tbaa !1
  store %struct.obj_header_s* %108, %struct.obj_header_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

cleanup.140:                                      ; preds = %do.end.139, %cleanup.125, %cleanup
  %109 = bitcast %struct.obj_header_s** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = load %struct.obj_header_s*, %struct.obj_header_s** %retval
  ret %struct.obj_header_s* %110
}

; Function Attrs: nounwind uwtable
define internal void @trim_obj(%struct.gs_ref_memory_s* %mem, %struct.obj_header_s* %obj, i32 %size, %struct.chunk_s* %cp) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %obj.addr = alloca %struct.obj_header_s*, align 8
  %size.addr = alloca i32, align 4
  %cp.addr = alloca %struct.chunk_s*, align 8
  %rounded_size = alloca i32, align 4
  %pre_obj = alloca %struct.obj_header_s*, align 8
  %excess_pre = alloca %struct.obj_header_s*, align 8
  %old_rounded_size = alloca i32, align 4
  %excess_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pfl = alloca %struct.obj_header_s**, align 8
  %rounded_size104 = alloca i32, align 4
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.obj_header_s* %obj, %struct.obj_header_s** %obj.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.chunk_s* %cp, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rounded_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !5
  %add = add i32 %1, 7
  %and = and i32 %add, -8
  %conv = zext i32 %and to i64
  %conv1 = trunc i64 %conv to i32
  store i32 %conv1, i32* %rounded_size, align 4, !tbaa !5
  %2 = bitcast %struct.obj_header_s** %pre_obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.obj_header_s*, %struct.obj_header_s** %obj.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %3, i64 -1
  store %struct.obj_header_s* %add.ptr, %struct.obj_header_s** %pre_obj, align 8, !tbaa !1
  %4 = bitcast %struct.obj_header_s** %excess_pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.obj_header_s*, %struct.obj_header_s** %obj.addr, align 8, !tbaa !1
  %6 = bitcast %struct.obj_header_s* %5 to i8*
  %7 = load i32, i32* %rounded_size, align 4, !tbaa !5
  %idx.ext = zext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %8 = bitcast i8* %add.ptr2 to %struct.obj_header_s*
  store %struct.obj_header_s* %8, %struct.obj_header_s** %excess_pre, align 8, !tbaa !1
  %9 = bitcast i32* %old_rounded_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %pre_obj, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %10, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size3 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %11 = load i32, i32* %size3, align 4, !tbaa !25
  %add4 = add i32 %11, 7
  %and5 = and i32 %add4, -8
  %conv6 = zext i32 %and5 to i64
  %conv7 = trunc i64 %conv6 to i32
  store i32 %conv7, i32* %old_rounded_size, align 4, !tbaa !5
  %12 = bitcast i32* %excess_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %old_rounded_size, align 4, !tbaa !5
  %14 = load i32, i32* %rounded_size, align 4, !tbaa !5
  %sub = sub i32 %13, %14
  %conv8 = zext i32 %sub to i64
  %sub9 = sub i64 %conv8, 24
  %conv10 = trunc i64 %sub9 to i32
  store i32 %conv10, i32* %excess_size, align 4, !tbaa !5
  %15 = load i32, i32* %size.addr, align 4, !tbaa !5
  %16 = load %struct.obj_header_s*, %struct.obj_header_s** %pre_obj, align 8, !tbaa !1
  %d11 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %16, i32 0, i32 0
  %o12 = bitcast %union._d* %d11 to %struct.obj_header_data_s*
  %size13 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o12, i32 0, i32 1
  store i32 %15, i32* %size13, align 4, !tbaa !25
  %17 = load i32, i32* %old_rounded_size, align 4, !tbaa !5
  %18 = load i32, i32* %rounded_size, align 4, !tbaa !5
  %cmp = icmp eq i32 %17, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load %struct.obj_header_s*, %struct.obj_header_s** %pre_obj, align 8, !tbaa !1
  %d15 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %19, i32 0, i32 0
  %o16 = bitcast %union._d* %d15 to %struct.obj_header_data_s*
  %f = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o16, i32 0, i32 0
  %h = bitcast %union._f* %f to %struct._h*
  %20 = bitcast %struct._h* %h to i32*
  %bf.load = load i32, i32* %20, align 4
  %bf.clear = and i32 %bf.load, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.17, label %if.end.71

if.then.17:                                       ; preds = %if.end
  %21 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %tobool18 = icmp ne %struct.chunk_s* %21, null
  br i1 %tobool18, label %if.end.54, label %if.then.19

if.then.19:                                       ; preds = %if.then.17
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %23, i32 0, i32 15
  %memory = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed, i32 0, i32 0
  store %struct.gs_ref_memory_s* %22, %struct.gs_ref_memory_s** %memory, align 8, !tbaa !42
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed20 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %24, i32 0, i32 15
  %cp21 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed20, i32 0, i32 1
  %25 = load %struct.chunk_s*, %struct.chunk_s** %cp21, align 8, !tbaa !40
  %cmp22 = icmp ne %struct.chunk_s* %25, null
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.19
  %26 = load %struct.obj_header_s*, %struct.obj_header_s** %obj.addr, align 8, !tbaa !1
  %27 = bitcast %struct.obj_header_s* %26 to i8*
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed24 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %28, i32 0, i32 15
  %cp25 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed24, i32 0, i32 1
  %29 = load %struct.chunk_s*, %struct.chunk_s** %cp25, align 8, !tbaa !40
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %29, i32 0, i32 1
  %30 = load i8*, i8** %cbase, align 8, !tbaa !43
  %cmp26 = icmp uge i8* %27, %30
  br i1 %cmp26, label %land.lhs.true.28, label %lor.lhs.false

land.lhs.true.28:                                 ; preds = %land.lhs.true
  %31 = load %struct.obj_header_s*, %struct.obj_header_s** %obj.addr, align 8, !tbaa !1
  %32 = bitcast %struct.obj_header_s* %31 to i8*
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed29 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %33, i32 0, i32 15
  %cp30 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed29, i32 0, i32 1
  %34 = load %struct.chunk_s*, %struct.chunk_s** %cp30, align 8, !tbaa !40
  %cend = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %34, i32 0, i32 8
  %35 = load i8*, i8** %cend, align 8, !tbaa !44
  %cmp31 = icmp ult i8* %32, %35
  br i1 %cmp31, label %land.lhs.true.33, label %lor.lhs.false

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed34 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %36, i32 0, i32 15
  %cp35 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed34, i32 0, i32 1
  %37 = load %struct.chunk_s*, %struct.chunk_s** %cp35, align 8, !tbaa !40
  %inner_count = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %37, i32 0, i32 12
  %38 = load i32, i32* %inner_count, align 4, !tbaa !45
  %cmp36 = icmp ne i32 %38, 0
  br i1 %cmp36, label %land.lhs.true.38, label %if.then.50

land.lhs.true.38:                                 ; preds = %land.lhs.true.33
  %39 = load %struct.obj_header_s*, %struct.obj_header_s** %obj.addr, align 8, !tbaa !1
  %40 = bitcast %struct.obj_header_s* %39 to i8*
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed39 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %41, i32 0, i32 15
  %cp40 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed39, i32 0, i32 1
  %42 = load %struct.chunk_s*, %struct.chunk_s** %cp40, align 8, !tbaa !40
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %42, i32 0, i32 3
  %43 = load i8*, i8** %cbot, align 8, !tbaa !46
  %cmp41 = icmp uge i8* %40, %43
  br i1 %cmp41, label %land.lhs.true.43, label %if.then.50

land.lhs.true.43:                                 ; preds = %land.lhs.true.38
  %44 = load %struct.obj_header_s*, %struct.obj_header_s** %obj.addr, align 8, !tbaa !1
  %45 = bitcast %struct.obj_header_s* %44 to i8*
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed44 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %46, i32 0, i32 15
  %cp45 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed44, i32 0, i32 1
  %47 = load %struct.chunk_s*, %struct.chunk_s** %cp45, align 8, !tbaa !40
  %ctop = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %47, i32 0, i32 6
  %48 = load i8*, i8** %ctop, align 8, !tbaa !47
  %cmp46 = icmp ult i8* %45, %48
  br i1 %cmp46, label %lor.lhs.false, label %if.then.50

lor.lhs.false:                                    ; preds = %land.lhs.true.43, %land.lhs.true.28, %land.lhs.true, %if.then.19
  %49 = load %struct.obj_header_s*, %struct.obj_header_s** %obj.addr, align 8, !tbaa !1
  %50 = bitcast %struct.obj_header_s* %49 to i8*
  %51 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed48 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %51, i32 0, i32 15
  %call = call i32 @chunk_locate_ptr(i8* %50, %struct.chunk_locator_s* %cfreed48) #4
  %tobool49 = icmp ne i32 %call, 0
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %lor.lhs.false, %land.lhs.true.43, %land.lhs.true.38, %land.lhs.true.33
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed51 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %52, i32 0, i32 15
  %cp52 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed51, i32 0, i32 1
  %53 = load %struct.chunk_s*, %struct.chunk_s** %cp52, align 8, !tbaa !49
  store %struct.chunk_s* %53, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %lor.lhs.false
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.17
  %54 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %tobool55 = icmp ne %struct.chunk_s* %54, null
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %55 = load %struct.obj_header_s*, %struct.obj_header_s** %excess_pre, align 8, !tbaa !1
  %56 = bitcast %struct.obj_header_s* %55 to i8*
  %57 = load %struct.chunk_s*, %struct.chunk_s** %cp.addr, align 8, !tbaa !1
  %cbot57 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %57, i32 0, i32 3
  store i8* %56, i8** %cbot57, align 8, !tbaa !46
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.54
  %58 = load %struct.obj_header_s*, %struct.obj_header_s** %pre_obj, align 8, !tbaa !1
  %d59 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %58, i32 0, i32 0
  %o60 = bitcast %union._d* %d59 to %struct.obj_header_data_s*
  %f61 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o60, i32 0, i32 0
  %h62 = bitcast %union._f* %f61 to %struct._h*
  %59 = bitcast %struct._h* %h62 to i32*
  %bf.load63 = load i32, i32* %59, align 4
  %bf.clear64 = and i32 %bf.load63, 1
  store i32 %bf.clear64, i32* %59, align 4
  %60 = load %struct.obj_header_s*, %struct.obj_header_s** %pre_obj, align 8, !tbaa !1
  %d65 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %60, i32 0, i32 0
  %o66 = bitcast %union._d* %d65 to %struct.obj_header_data_s*
  %f67 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o66, i32 0, i32 0
  %h68 = bitcast %union._f* %f67 to %struct._h*
  %61 = bitcast %struct._h* %h68 to i32*
  %bf.load69 = load i32, i32* %61, align 4
  %bf.clear70 = and i32 %bf.load69, -2
  store i32 %bf.clear70, i32* %61, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.58, %if.end
  %62 = load %struct.obj_header_s*, %struct.obj_header_s** %excess_pre, align 8, !tbaa !1
  %d72 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %62, i32 0, i32 0
  %o73 = bitcast %union._d* %d72 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o73, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* @st_free, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %63 = load i32, i32* %excess_size, align 4, !tbaa !5
  %64 = load %struct.obj_header_s*, %struct.obj_header_s** %excess_pre, align 8, !tbaa !1
  %d74 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %64, i32 0, i32 0
  %o75 = bitcast %union._d* %d74 to %struct.obj_header_data_s*
  %size76 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o75, i32 0, i32 1
  store i32 %63, i32* %size76, align 4, !tbaa !25
  %65 = load %struct.obj_header_s*, %struct.obj_header_s** %excess_pre, align 8, !tbaa !1
  %d77 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %65, i32 0, i32 0
  %o78 = bitcast %union._d* %d77 to %struct.obj_header_data_s*
  %f79 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o78, i32 0, i32 0
  %h80 = bitcast %union._f* %f79 to %struct._h*
  %66 = bitcast %struct._h* %h80 to i32*
  %bf.load81 = load i32, i32* %66, align 4
  %bf.clear82 = and i32 %bf.load81, 1
  store i32 %bf.clear82, i32* %66, align 4
  %67 = load %struct.obj_header_s*, %struct.obj_header_s** %excess_pre, align 8, !tbaa !1
  %d83 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %67, i32 0, i32 0
  %o84 = bitcast %union._d* %d83 to %struct.obj_header_data_s*
  %f85 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o84, i32 0, i32 0
  %h86 = bitcast %union._f* %f85 to %struct._h*
  %68 = bitcast %struct._h* %h86 to i32*
  %bf.load87 = load i32, i32* %68, align 4
  %bf.clear88 = and i32 %bf.load87, -2
  store i32 %bf.clear88, i32* %68, align 4
  %69 = load i32, i32* %excess_size, align 4, !tbaa !5
  %cmp89 = icmp uge i32 %69, 8
  br i1 %cmp89, label %if.then.91, label %if.else.121

if.then.91:                                       ; preds = %if.end.71
  %70 = bitcast %struct.obj_header_s*** %pfl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %71 = load %struct.obj_header_s*, %struct.obj_header_s** %excess_pre, align 8, !tbaa !1
  %72 = bitcast %struct.obj_header_s* %71 to i8*
  %73 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %73, i32 0, i32 13
  %int_freed_top = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc, i32 0, i32 2
  %74 = load i8*, i8** %int_freed_top, align 8, !tbaa !38
  %cmp92 = icmp uge i8* %72, %74
  br i1 %cmp92, label %if.then.94, label %if.end.99

if.then.94:                                       ; preds = %if.then.91
  %75 = load %struct.obj_header_s*, %struct.obj_header_s** %excess_pre, align 8, !tbaa !1
  %76 = bitcast %struct.obj_header_s* %75 to i8*
  %77 = load i32, i32* %excess_size, align 4, !tbaa !5
  %idx.ext95 = zext i32 %77 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %76, i64 %idx.ext95
  %78 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cc97 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %78, i32 0, i32 13
  %int_freed_top98 = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %cc97, i32 0, i32 2
  store i8* %add.ptr96, i8** %int_freed_top98, align 8, !tbaa !38
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.94, %if.then.91
  %79 = load i32, i32* %excess_size, align 4, !tbaa !5
  %cmp100 = icmp ule i32 %79, 800
  br i1 %cmp100, label %if.then.102, label %if.else

if.then.102:                                      ; preds = %if.end.99
  %80 = load i32, i32* %excess_size, align 4, !tbaa !5
  %add103 = add i32 %80, 7
  %shr = lshr i32 %add103, 3
  %idxprom = zext i32 %shr to i64
  %81 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %freelists = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %81, i32 0, i32 34
  %arrayidx = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists, i32 0, i64 %idxprom
  store %struct.obj_header_s** %arrayidx, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  br label %if.end.116

if.else:                                          ; preds = %if.end.99
  %82 = bitcast i32* %rounded_size104 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = load i32, i32* %excess_size, align 4, !tbaa !5
  %add105 = add i32 %83, 7
  %and106 = and i32 %add105, -8
  %conv107 = zext i32 %and106 to i64
  %conv108 = trunc i64 %conv107 to i32
  store i32 %conv108, i32* %rounded_size104, align 4, !tbaa !5
  %84 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %freelists109 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %84, i32 0, i32 34
  %arrayidx110 = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists109, i32 0, i64 101
  store %struct.obj_header_s** %arrayidx110, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  %85 = load i32, i32* %rounded_size104, align 4, !tbaa !5
  %86 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %largest_free_size = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %86, i32 0, i32 33
  %87 = load i32, i32* %largest_free_size, align 4, !tbaa !48
  %cmp111 = icmp ugt i32 %85, %87
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.else
  %88 = load i32, i32* %rounded_size104, align 4, !tbaa !5
  %89 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %largest_free_size114 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %89, i32 0, i32 33
  store i32 %88, i32* %largest_free_size114, align 4, !tbaa !48
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.else
  %90 = bitcast i32* %rounded_size104 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.102
  %91 = load %struct.obj_header_s**, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  %92 = load %struct.obj_header_s*, %struct.obj_header_s** %91, align 8, !tbaa !1
  %93 = load %struct.obj_header_s*, %struct.obj_header_s** %excess_pre, align 8, !tbaa !1
  %add.ptr117 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %93, i64 1
  %94 = bitcast %struct.obj_header_s* %add.ptr117 to %struct.obj_header_s**
  store %struct.obj_header_s* %92, %struct.obj_header_s** %94, align 8, !tbaa !1
  %95 = load %struct.obj_header_s*, %struct.obj_header_s** %excess_pre, align 8, !tbaa !1
  %add.ptr118 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %95, i64 1
  %96 = load %struct.obj_header_s**, %struct.obj_header_s*** %pfl, align 8, !tbaa !1
  store %struct.obj_header_s* %add.ptr118, %struct.obj_header_s** %96, align 8, !tbaa !1
  %97 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %98 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfreed119 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %98, i32 0, i32 15
  %memory120 = getelementptr inbounds %struct.chunk_locator_s, %struct.chunk_locator_s* %cfreed119, i32 0, i32 0
  store %struct.gs_ref_memory_s* %97, %struct.gs_ref_memory_s** %memory120, align 8, !tbaa !42
  %99 = bitcast %struct.obj_header_s*** %pfl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  br label %if.end.125

if.else.121:                                      ; preds = %if.end.71
  %100 = load i32, i32* %excess_size, align 4, !tbaa !5
  %conv122 = zext i32 %100 to i64
  %add123 = add i64 %conv122, 24
  %101 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %101, i32 0, i32 18
  %objects = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 0
  %102 = load i64, i64* %objects, align 8, !tbaa !53
  %add124 = add i64 %102, %add123
  store i64 %add124, i64* %objects, align 8, !tbaa !53
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.121, %if.end.116
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.125, %if.then.56, %if.then
  %103 = bitcast i32* %excess_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %old_rounded_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast %struct.obj_header_s** %excess_pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast %struct.obj_header_s** %pre_obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast i32* %rounded_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
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

; Function Attrs: nounwind uwtable
define internal %struct.chunk_s* @alloc_acquire_chunk(%struct.gs_ref_memory_s* %mem, i64 %csize, i32 %has_strings, i8* %cname) #0 {
entry:
  %retval = alloca %struct.chunk_s*, align 8
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %csize.addr = alloca i64, align 8
  %has_strings.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %parent = alloca %struct.gs_memory_s*, align 8
  %cp = alloca %struct.chunk_s*, align 8
  %cdata = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i64 %csize, i64* %csize.addr, align 8, !tbaa !27
  store i32 %has_strings, i32* %has_strings.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %parent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !76
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %3 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64, i64* %csize.addr, align 8, !tbaa !27
  %6 = load i64, i64* %csize.addr, align 8, !tbaa !27
  %conv = trunc i64 %6 to i32
  %conv1 = zext i32 %conv to i64
  %cmp = icmp ne i64 %5, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.chunk_s* null, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @gs_raw_alloc_struct_immovable(%struct.gs_memory_s* %7, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_chunk to %struct.gs_memory_struct_type_s*), i8* %8) #4
  %9 = bitcast i8* %call to %struct.chunk_s*
  store %struct.chunk_s* %9, %struct.chunk_s** %cp, align 8, !tbaa !1
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %10, i32 0, i32 8
  %psignal = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status, i32 0, i32 2
  %11 = load i32*, i32** %psignal, align 8, !tbaa !91
  %cmp3 = icmp ne i32* %11, null
  br i1 %cmp3, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %if.end
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %12, i32 0, i32 16
  %13 = load i64, i64* %allocated, align 8, !tbaa !60
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %14, i32 0, i32 10
  %15 = load i64, i64* %limit, align 8, !tbaa !106
  %cmp6 = icmp uge i64 %13, %15
  br i1 %cmp6, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.then.5
  %16 = load i64, i64* %csize.addr, align 8, !tbaa !27
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status9 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %17, i32 0, i32 8
  %requested = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status9, i32 0, i32 5
  %18 = load i64, i64* %requested, align 8, !tbaa !94
  %add = add i64 %18, %16
  store i64 %add, i64* %requested, align 8, !tbaa !94
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %limit10 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %19, i32 0, i32 10
  %20 = load i64, i64* %limit10, align 8, !tbaa !106
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %21, i32 0, i32 8
  %max_vm = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status11, i32 0, i32 1
  %22 = load i64, i64* %max_vm, align 8, !tbaa !90
  %cmp12 = icmp uge i64 %20, %22
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.8
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !34
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %26 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %27 = bitcast %struct.chunk_s* %26 to i8*
  %28 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %24(%struct.gs_memory_s* %25, i8* %27, i8* %28) #4
  store %struct.chunk_s* null, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.8
  br label %do.body

do.body:                                          ; preds = %if.end.15
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status16 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %29, i32 0, i32 8
  %signal_value = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status16, i32 0, i32 3
  %30 = load i32, i32* %signal_value, align 4, !tbaa !92
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status17 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %31, i32 0, i32 8
  %psignal18 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status17, i32 0, i32 2
  %32 = load i32*, i32** %psignal18, align 8, !tbaa !91
  store i32 %30, i32* %32, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %if.then.5
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 0
  %34 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !100
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %36 = load i64, i64* %csize.addr, align 8, !tbaa !27
  %conv22 = trunc i64 %36 to i32
  %37 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call23 = call i8* %34(%struct.gs_memory_s* %35, i32 %conv22, i8* %37) #4
  store i8* %call23, i8** %cdata, align 8, !tbaa !1
  %38 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp24 = icmp eq %struct.chunk_s* %38, null
  br i1 %cmp24, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %39 = load i8*, i8** %cdata, align 8, !tbaa !1
  %cmp26 = icmp eq i8* %39, null
  br i1 %cmp26, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.20
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %procs29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %free_object30 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs29, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object30, align 8, !tbaa !34
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %43 = load i8*, i8** %cdata, align 8, !tbaa !1
  %44 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %41(%struct.gs_memory_s* %42, i8* %43, i8* %44) #4
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %procs31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %free_object32 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs31, i32 0, i32 2
  %46 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object32, align 8, !tbaa !34
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %parent, align 8, !tbaa !1
  %48 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %49 = bitcast %struct.chunk_s* %48 to i8*
  %50 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %46(%struct.gs_memory_s* %47, i8* %49, i8* %50) #4
  %51 = load i64, i64* %csize.addr, align 8, !tbaa !27
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %gc_status33 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %52, i32 0, i32 8
  %requested34 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status33, i32 0, i32 5
  store i64 %51, i64* %requested34, align 8, !tbaa !94
  store %struct.chunk_s* null, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %lor.lhs.false
  %53 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %54 = load i8*, i8** %cdata, align 8, !tbaa !1
  %55 = load i8*, i8** %cdata, align 8, !tbaa !1
  %56 = load i64, i64* %csize.addr, align 8, !tbaa !27
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %56
  %57 = load i32, i32* %has_strings.addr, align 4, !tbaa !5
  call void @alloc_init_chunk(%struct.chunk_s* %53, i8* %54, i8* %add.ptr, i32 %57, %struct.chunk_s* null) #4
  %58 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  call void @alloc_link_chunk(%struct.chunk_s* %58, %struct.gs_ref_memory_s* %59) #4
  %60 = load i32, i32* getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_chunk to %struct.gs_memory_struct_type_s*), i32 0, i32 0), align 4, !tbaa !28
  %conv36 = zext i32 %60 to i64
  %61 = load i64, i64* %csize.addr, align 8, !tbaa !27
  %add37 = add i64 %conv36, %61
  %62 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %allocated38 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %62, i32 0, i32 16
  %63 = load i64, i64* %allocated38, align 8, !tbaa !60
  %add39 = add i64 %63, %add37
  store i64 %add39, i64* %allocated38, align 8, !tbaa !60
  %64 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  store %struct.chunk_s* %64, %struct.chunk_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.28, %if.then.14, %if.then
  %65 = bitcast i8** %cdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.gs_memory_s** %parent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load %struct.chunk_s*, %struct.chunk_s** %retval
  ret %struct.chunk_s* %68
}

; Function Attrs: nounwind uwtable
define internal %struct.obj_header_s* @scavenge_low_free(%struct.gs_ref_memory_s* %mem, i32 %request_size) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %request_size.addr = alloca i32, align 4
  %found_pre = alloca %struct.obj_header_s*, align 8
  %begin_free = alloca %struct.obj_header_s*, align 8
  %found_free = alloca i32, align 4
  %request_size_rounded = alloca i32, align 4
  %need_free = alloca i32, align 4
  %cp = alloca %struct.chunk_s*, align 8
  %pre = alloca %struct.obj_header_s*, align 8
  %end = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %request_size, i32* %request_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.obj_header_s** %found_pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.obj_header_s* null, %struct.obj_header_s** %found_pre, align 8, !tbaa !1
  %1 = bitcast %struct.obj_header_s** %begin_free to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.obj_header_s* null, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %2 = bitcast i32* %found_free to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %request_size_rounded to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %request_size.addr, align 4, !tbaa !5
  %conv = zext i32 %4 to i64
  %add = add i64 %conv, 24
  %add1 = add i64 %add, 7
  %and = and i64 %add1, -8
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %request_size_rounded, align 4, !tbaa !5
  %5 = bitcast i32* %need_free to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %request_size_rounded, align 4, !tbaa !5
  %conv3 = zext i32 %6 to i64
  %add4 = add i64 %conv3, 24
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* %need_free, align 4, !tbaa !5
  %7 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %cfirst = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %8, i32 0, i32 11
  %9 = load %struct.chunk_s*, %struct.chunk_s** %cfirst, align 8, !tbaa !57
  store %struct.chunk_s* %9, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.58, %entry
  %10 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cmp = icmp ne %struct.chunk_s* %10, null
  br i1 %cmp, label %for.body, label %for.end.59

for.body:                                         ; preds = %for.cond
  store %struct.obj_header_s* null, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  store i32 0, i32* %found_free, align 4, !tbaa !5
  %11 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbase = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %cbase, align 8, !tbaa !43
  %14 = bitcast i8* %13 to %struct.obj_header_s*
  store %struct.obj_header_s* %14, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %15 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cbot = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %16, i32 0, i32 3
  %17 = load i8*, i8** %cbot, align 8, !tbaa !46
  %18 = bitcast i8* %17 to %struct.obj_header_s*
  store %struct.obj_header_s* %18, %struct.obj_header_s** %end, align 8, !tbaa !1
  %19 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %20 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %end, align 8, !tbaa !1
  %cmp8 = icmp ult %struct.obj_header_s* %20, %21
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %22 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %22, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size11 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %23 = load i32, i32* %size11, align 4, !tbaa !25
  store i32 %23, i32* %size, align 4, !tbaa !5
  %24 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d12 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %24, i32 0, i32 0
  %o13 = bitcast %union._d* %d12 to %struct.obj_header_data_s*
  %t = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o13, i32 0, i32 2
  %type = bitcast %union._t* %t to %struct.gs_memory_struct_type_s**
  %25 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.gs_memory_struct_type_s* %25, @st_free
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.10
  %26 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.obj_header_s* %26, null
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then
  store i32 0, i32* %found_free, align 4, !tbaa !5
  %27 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  store %struct.obj_header_s* %27, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then
  %28 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %d19 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %28, i32 0, i32 0
  %o20 = bitcast %union._d* %d19 to %struct.obj_header_data_s*
  %size21 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o20, i32 0, i32 1
  %29 = load i32, i32* %size21, align 4, !tbaa !25
  %conv22 = zext i32 %29 to i64
  %add23 = add i64 %conv22, 24
  %add24 = add i64 %add23, 7
  %and25 = and i64 %add24, -8
  %30 = load i32, i32* %found_free, align 4, !tbaa !5
  %conv26 = zext i32 %30 to i64
  %add27 = add i64 %conv26, %and25
  %conv28 = trunc i64 %add27 to i32
  store i32 %conv28, i32* %found_free, align 4, !tbaa !5
  %31 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %cmp29 = icmp ne %struct.obj_header_s* %31, null
  br i1 %cmp29, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end
  %32 = load i32, i32* %found_free, align 4, !tbaa !5
  %33 = load i32, i32* %need_free, align 4, !tbaa !5
  %cmp31 = icmp uge i32 %32, %33
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.34:                                        ; preds = %land.lhs.true, %if.end
  br label %if.end.35

if.else:                                          ; preds = %for.body.10
  store %struct.obj_header_s* null, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %34 = load %struct.obj_header_s*, %struct.obj_header_s** %pre, align 8, !tbaa !1
  %35 = bitcast %struct.obj_header_s* %34 to i8*
  %36 = load i32, i32* %size, align 4, !tbaa !5
  %conv36 = zext i32 %36 to i64
  %add37 = add i64 %conv36, 24
  %add38 = add i64 %add37, 7
  %and39 = and i64 %add38, -8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %and39
  %37 = bitcast i8* %add.ptr to %struct.obj_header_s*
  store %struct.obj_header_s* %37, %struct.obj_header_s** %pre, align 8, !tbaa !1
  br label %for.cond.7

for.end:                                          ; preds = %if.then.33, %for.cond.7
  %38 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.obj_header_s** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.obj_header_s** %pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %cmp40 = icmp ne %struct.obj_header_s* %41, null
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.57

land.lhs.true.42:                                 ; preds = %for.end
  %42 = load i32, i32* %found_free, align 4, !tbaa !5
  %43 = load i32, i32* %need_free, align 4, !tbaa !5
  %cmp43 = icmp uge i32 %42, %43
  br i1 %cmp43, label %if.then.45, label %if.end.57

if.then.45:                                       ; preds = %land.lhs.true.42
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %45 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %46 = bitcast %struct.obj_header_s* %45 to i8*
  %47 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  %48 = bitcast %struct.obj_header_s* %47 to i8*
  %49 = load i32, i32* %found_free, align 4, !tbaa !5
  %idx.ext = zext i32 %49 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %48, i64 %idx.ext
  call void @remove_range_from_freelist(%struct.gs_ref_memory_s* %44, i8* %46, i8* %add.ptr46) #4
  %50 = load %struct.obj_header_s*, %struct.obj_header_s** %begin_free, align 8, !tbaa !1
  store %struct.obj_header_s* %50, %struct.obj_header_s** %found_pre, align 8, !tbaa !1
  %51 = load %struct.obj_header_s*, %struct.obj_header_s** %found_pre, align 8, !tbaa !1
  %d47 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %51, i32 0, i32 0
  %o48 = bitcast %union._d* %d47 to %struct.obj_header_data_s*
  %t49 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o48, i32 0, i32 2
  %type50 = bitcast %union._t* %t49 to %struct.gs_memory_struct_type_s**
  store %struct.gs_memory_struct_type_s* @st_free, %struct.gs_memory_struct_type_s** %type50, align 8, !tbaa !1
  %52 = load i32, i32* %found_free, align 4, !tbaa !5
  %conv51 = zext i32 %52 to i64
  %sub = sub i64 %conv51, 24
  %conv52 = trunc i64 %sub to i32
  %53 = load %struct.obj_header_s*, %struct.obj_header_s** %found_pre, align 8, !tbaa !1
  %d53 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %53, i32 0, i32 0
  %o54 = bitcast %union._d* %d53 to %struct.obj_header_data_s*
  %size55 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o54, i32 0, i32 1
  store i32 %conv52, i32* %size55, align 4, !tbaa !25
  %54 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %55 = load %struct.obj_header_s*, %struct.obj_header_s** %found_pre, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %55, i64 1
  %56 = load i32, i32* %request_size.addr, align 4, !tbaa !5
  %57 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  call void @trim_obj(%struct.gs_ref_memory_s* %54, %struct.obj_header_s* %add.ptr56, i32 %56, %struct.chunk_s* %57) #4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.45, %land.lhs.true.42, %for.end
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %58 = load %struct.chunk_s*, %struct.chunk_s** %cp, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.chunk_s, %struct.chunk_s* %58, i32 0, i32 10
  %59 = load %struct.chunk_s*, %struct.chunk_s** %cnext, align 8, !tbaa !59
  store %struct.chunk_s* %59, %struct.chunk_s** %cp, align 8, !tbaa !1
  br label %for.cond

for.end.59:                                       ; preds = %for.cond
  %60 = load %struct.obj_header_s*, %struct.obj_header_s** %found_pre, align 8, !tbaa !1
  %61 = bitcast %struct.chunk_s** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32* %need_free to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %request_size_rounded to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %found_free to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.obj_header_s** %begin_free to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct.obj_header_s** %found_pre to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  ret %struct.obj_header_s* %60
}

; Function Attrs: nounwind uwtable
define internal void @remove_range_from_freelist(%struct.gs_ref_memory_s* %mem, i8* %bottom, i8* %top) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %bottom.addr = alloca i8*, align 8
  %top.addr = alloca i8*, align 8
  %num_free = alloca [102 x i32], align 16
  %smallest = alloca i32, align 4
  %largest = alloca i32, align 4
  %cur = alloca %struct.obj_header_s*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %removed = alloca i32, align 4
  %count = alloca i32, align 4
  %pfree = alloca %struct.obj_header_s*, align 8
  %ppfprev = alloca %struct.obj_header_s**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %bottom, i8** %bottom.addr, align 8, !tbaa !1
  store i8* %top, i8** %top.addr, align 8, !tbaa !1
  %0 = bitcast [102 x i32]* %num_free to i8*
  call void @llvm.lifetime.start(i64 408, i8* %0) #1
  %1 = bitcast i32* %smallest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 102, i32* %smallest, align 4, !tbaa !5
  %2 = bitcast i32* %largest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -1, i32* %largest, align 4, !tbaa !5
  %3 = bitcast %struct.obj_header_s** %cur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %removed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %removed, align 4, !tbaa !5
  %7 = load i8*, i8** %bottom.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.obj_header_s*
  store %struct.obj_header_s* %8, %struct.obj_header_s** %cur, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.obj_header_s*, %struct.obj_header_s** %cur, align 8, !tbaa !1
  %10 = load i8*, i8** %top.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to %struct.obj_header_s*
  %cmp = icmp ne %struct.obj_header_s* %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.obj_header_s*, %struct.obj_header_s** %cur, align 8, !tbaa !1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %12, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size1 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %13 = load i32, i32* %size1, align 4, !tbaa !25
  store i32 %13, i32* %size, align 4, !tbaa !5
  %14 = load i32, i32* %size, align 4, !tbaa !5
  %cmp2 = icmp ugt i32 %14, 800
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load i32, i32* %size, align 4, !tbaa !5
  %add = add i32 %15, 7
  %shr = lshr i32 %add, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 101, %cond.true ], [ %shr, %cond.false ]
  store i32 %cond, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load i32, i32* %smallest, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %16, %17
  br i1 %cmp3, label %if.then, label %if.end.11

if.then:                                          ; preds = %cond.end
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %18, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  br label %for.inc

if.end:                                           ; preds = %if.then
  %19 = load i32, i32* %smallest, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %19, 102
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [102 x i32], [102 x i32]* %num_free, i32 0, i64 %idxprom
  %21 = bitcast i32* %arrayidx to i8*
  %22 = load i32, i32* %smallest, align 4, !tbaa !5
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %sub = sub nsw i32 %22, %23
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @memset(i8* %21, i32 0, i64 %mul) #5
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %24 to i64
  %arrayidx9 = getelementptr inbounds [102 x i32], [102 x i32]* %num_free, i32 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  %25 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %25, i32* %smallest, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %cond.end
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %27 = load i32, i32* %largest, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %26, %27
  br i1 %cmp12, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.end.11
  %28 = load i32, i32* %largest, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %28, 0
  br i1 %cmp15, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.then.14
  %29 = load i32, i32* %largest, align 4, !tbaa !5
  %add18 = add nsw i32 %29, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [102 x i32], [102 x i32]* %num_free, i32 0, i64 %idxprom19
  %30 = bitcast i32* %arrayidx20 to i8*
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %32 = load i32, i32* %largest, align 4, !tbaa !5
  %sub21 = sub nsw i32 %31, %32
  %conv22 = sext i32 %sub21 to i64
  %mul23 = mul i64 %conv22, 4
  %call24 = call i8* @memset(i8* %30, i32 0, i64 %mul23) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.17, %if.then.14
  %33 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %33, i32* %largest, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.11
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds [102 x i32], [102 x i32]* %num_free, i32 0, i64 %idxprom27
  %35 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %arrayidx28, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.5
  %36 = load %struct.obj_header_s*, %struct.obj_header_s** %cur, align 8, !tbaa !1
  %37 = bitcast %struct.obj_header_s* %36 to i8*
  %38 = load i32, i32* %size, align 4, !tbaa !5
  %conv29 = zext i32 %38 to i64
  %add30 = add i64 %conv29, 24
  %add31 = add i64 %add30, 7
  %and = and i64 %add31, -8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %and
  %39 = bitcast i8* %add.ptr to %struct.obj_header_s*
  store %struct.obj_header_s* %39, %struct.obj_header_s** %cur, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %smallest, align 4, !tbaa !5
  store i32 %40, i32* %i, align 4, !tbaa !5
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.66, %for.end
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %42 = load i32, i32* %largest, align 4, !tbaa !5
  %cmp33 = icmp sle i32 %41, %42
  br i1 %cmp33, label %for.body.35, label %for.end.68

for.body.35:                                      ; preds = %for.cond.32
  %43 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %44 to i64
  %arrayidx37 = getelementptr inbounds [102 x i32], [102 x i32]* %num_free, i32 0, i64 %idxprom36
  %45 = load i32, i32* %arrayidx37, align 4, !tbaa !5
  store i32 %45, i32* %count, align 4, !tbaa !5
  %46 = bitcast %struct.obj_header_s** %pfree to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = bitcast %struct.obj_header_s*** %ppfprev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load i32, i32* %count, align 4, !tbaa !5
  %tobool = icmp ne i32 %48, 0
  br i1 %tobool, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %for.body.35
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %for.body.35
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %49 to i64
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %freelists = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %50, i32 0, i32 34
  %arrayidx41 = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists, i32 0, i64 %idxprom40
  store %struct.obj_header_s** %arrayidx41, %struct.obj_header_s*** %ppfprev, align 8, !tbaa !1
  br label %for.cond.42

for.cond.42:                                      ; preds = %if.end.62, %if.end.39
  %51 = load %struct.obj_header_s**, %struct.obj_header_s*** %ppfprev, align 8, !tbaa !1
  %52 = load %struct.obj_header_s*, %struct.obj_header_s** %51, align 8, !tbaa !1
  store %struct.obj_header_s* %52, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %53 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %54 = bitcast %struct.obj_header_s* %53 to i8*
  %55 = load i8*, i8** %bottom.addr, align 8, !tbaa !1
  %cmp43 = icmp uge i8* %54, %55
  br i1 %cmp43, label %land.lhs.true, label %if.else.61

land.lhs.true:                                    ; preds = %for.cond.42
  %56 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %57 = bitcast %struct.obj_header_s* %56 to i8*
  %58 = load i8*, i8** %top.addr, align 8, !tbaa !1
  %cmp45 = icmp ult i8* %57, %58
  br i1 %cmp45, label %if.then.47, label %if.else.61

if.then.47:                                       ; preds = %land.lhs.true
  %59 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %60 = bitcast %struct.obj_header_s* %59 to %struct.obj_header_s**
  %61 = load %struct.obj_header_s*, %struct.obj_header_s** %60, align 8, !tbaa !1
  %62 = load %struct.obj_header_s**, %struct.obj_header_s*** %ppfprev, align 8, !tbaa !1
  store %struct.obj_header_s* %61, %struct.obj_header_s** %62, align 8, !tbaa !1
  %63 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %63, i64 -1
  %d49 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx48, i32 0, i32 0
  %o50 = bitcast %union._d* %d49 to %struct.obj_header_data_s*
  %size51 = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o50, i32 0, i32 1
  %64 = load i32, i32* %size51, align 4, !tbaa !25
  %add52 = add i32 %64, 7
  %and53 = and i32 %add52, -8
  %conv54 = zext i32 %and53 to i64
  %65 = load i32, i32* %removed, align 4, !tbaa !5
  %conv55 = zext i32 %65 to i64
  %add56 = add i64 %conv55, %conv54
  %conv57 = trunc i64 %add56 to i32
  store i32 %conv57, i32* %removed, align 4, !tbaa !5
  %66 = load i32, i32* %count, align 4, !tbaa !5
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %count, align 4, !tbaa !5
  %tobool58 = icmp ne i32 %dec, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.then.47
  br label %for.end.63

if.end.60:                                        ; preds = %if.then.47
  br label %if.end.62

if.else.61:                                       ; preds = %land.lhs.true, %for.cond.42
  %67 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %68 = bitcast %struct.obj_header_s* %67 to %struct.obj_header_s**
  store %struct.obj_header_s** %68, %struct.obj_header_s*** %ppfprev, align 8, !tbaa !1
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.end.60
  br label %for.cond.42

for.end.63:                                       ; preds = %if.then.59
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.63, %if.then.38
  %69 = bitcast %struct.obj_header_s*** %ppfprev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.obj_header_s** %pfree to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc.66
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.66

for.inc.66:                                       ; preds = %cleanup.cont, %cleanup
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %inc67 = add nsw i32 %72, 1
  store i32 %inc67, i32* %i, align 4, !tbaa !5
  br label %for.cond.32

for.end.68:                                       ; preds = %for.cond.32
  %73 = load i8*, i8** %top.addr, align 8, !tbaa !1
  %74 = load i8*, i8** %bottom.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %74 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %75 = load i32, i32* %removed, align 4, !tbaa !5
  %conv69 = zext i32 %75 to i64
  %sub70 = sub nsw i64 %sub.ptr.sub, %conv69
  %76 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %76, i32 0, i32 18
  %objects = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 0
  %77 = load i64, i64* %objects, align 8, !tbaa !53
  %sub71 = sub i64 %77, %sub70
  store i64 %sub71, i64* %objects, align 8, !tbaa !53
  %78 = bitcast i32* %removed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast %struct.obj_header_s** %cur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %largest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %smallest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast [102 x i32]* %num_free to i8*
  call void @llvm.lifetime.end(i64 408, i8* %84) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i64 @compute_free_objects(%struct.gs_ref_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %unused = alloca i64, align 8
  %i = alloca i32, align 4
  %pfree = alloca %struct.obj_header_s*, align 8
  store %struct.gs_ref_memory_s* %mem, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i64* %unused to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %lost = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %1, i32 0, i32 18
  %objects = getelementptr inbounds %struct.lost_, %struct.lost_* %lost, i32 0, i32 0
  %2 = load i64, i64* %objects, align 8, !tbaa !53
  store i64 %2, i64* %unused, align 8, !tbaa !27
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 102
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.obj_header_s** %pfree to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem.addr, align 8, !tbaa !1
  %freelists = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %7, i32 0, i32 34
  %arrayidx = getelementptr inbounds [102 x %struct.obj_header_s*], [102 x %struct.obj_header_s*]* %freelists, i32 0, i64 %idxprom
  %8 = load %struct.obj_header_s*, %struct.obj_header_s** %arrayidx, align 8, !tbaa !1
  store %struct.obj_header_s* %8, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %9 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.obj_header_s* %9, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %10, i64 -1
  %d = getelementptr inbounds %struct.obj_header_s, %struct.obj_header_s* %arrayidx4, i32 0, i32 0
  %o = bitcast %union._d* %d to %struct.obj_header_data_s*
  %size = getelementptr inbounds %struct.obj_header_data_s, %struct.obj_header_data_s* %o, i32 0, i32 1
  %11 = load i32, i32* %size, align 4, !tbaa !25
  %add = add i32 %11, 7
  %and = and i32 %add, -8
  %conv = zext i32 %and to i64
  %12 = load i64, i64* %unused, align 8, !tbaa !27
  %add5 = add i64 %12, %conv
  store i64 %add5, i64* %unused, align 8, !tbaa !27
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load %struct.obj_header_s*, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  %14 = bitcast %struct.obj_header_s* %13 to %struct.obj_header_s**
  %15 = load %struct.obj_header_s*, %struct.obj_header_s** %14, align 8, !tbaa !1
  store %struct.obj_header_s* %15, %struct.obj_header_s** %pfree, align 8, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %16 = bitcast %struct.obj_header_s** %pfree to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  %18 = load i64, i64* %unused, align 8, !tbaa !27
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i64* %unused to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i64 %18
}

declare void @gs_ignore_free_object(%struct.gs_memory_s*, i8*, i8*) #2

declare void @gs_ignore_free_string(%struct.gs_memory_s*, i8*, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 568}
!8 = !{!"gs_ref_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !10, i64 232, !6, i64 272, !11, i64 280, !2, i64 288, !2, i64 296, !12, i64 304, !2, i64 488, !13, i64 496, !11, i64 512, !11, i64 520, !14, i64 528, !6, i64 552, !6, i64 556, !6, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !6, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !11, i64 624, !11, i64 632, !2, i64 640, !15, i64 648, !6, i64 672, !3, i64 680}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!"gs_memory_gc_status_s", !11, i64 0, !11, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !11, i64 32}
!11 = !{!"long", !3, i64 0}
!12 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !6, i64 96, !6, i64 100, !2, i64 104, !6, i64 112, !2, i64 120, !2, i64 128, !6, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!13 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!14 = !{!"lost_", !11, i64 0, !11, i64 8, !11, i64 16}
!15 = !{!"gs_memory_status_s", !11, i64 0, !11, i64 8, !6, i64 16}
!16 = !{!17, !2, i64 0}
!17 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!18 = !{!8, !2, i64 576}
!19 = !{!8, !2, i64 600}
!20 = !{!8, !2, i64 616}
!21 = !{!8, !2, i64 608}
!22 = !{!23, !2, i64 0}
!23 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!8, !2, i64 640}
!25 = !{!26, !6, i64 4}
!26 = !{!"obj_header_data_s", !3, i64 0, !6, i64 4, !3, i64 8, !11, i64 16}
!27 = !{!11, !11, i64 0}
!28 = !{!29, !6, i64 0}
!29 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!30 = !{!8, !2, i64 328}
!31 = !{!8, !2, i64 352}
!32 = !{!33, !2, i64 104}
!33 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!34 = !{!33, !2, i64 24}
!35 = !{!29, !2, i64 48}
!36 = !{!3, !3, i64 0}
!37 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1}
!38 = !{!8, !2, i64 320}
!39 = !{!13, !2, i64 0}
!40 = !{!13, !2, i64 8}
!41 = !{!8, !6, i64 272}
!42 = !{!8, !2, i64 496}
!43 = !{!12, !2, i64 8}
!44 = !{!12, !2, i64 64}
!45 = !{!12, !6, i64 96}
!46 = !{!12, !2, i64 24}
!47 = !{!12, !2, i64 48}
!48 = !{!8, !6, i64 672}
!49 = !{!8, !2, i64 504}
!50 = !{!12, !2, i64 0}
!51 = !{!8, !2, i64 304}
!52 = !{!12, !2, i64 16}
!53 = !{!8, !11, i64 528}
!54 = !{!33, !2, i64 0}
!55 = !{!8, !11, i64 536}
!56 = !{!8, !11, i64 544}
!57 = !{!8, !2, i64 288}
!58 = !{!12, !2, i64 88}
!59 = !{!12, !2, i64 80}
!60 = !{!8, !11, i64 512}
!61 = !{!8, !11, i64 656}
!62 = !{!15, !11, i64 8}
!63 = !{!8, !11, i64 648}
!64 = !{!15, !11, i64 0}
!65 = !{!15, !6, i64 16}
!66 = !{!8, !2, i64 296}
!67 = !{!12, !2, i64 72}
!68 = !{!8, !6, i64 220}
!69 = !{!8, !2, i64 488}
!70 = !{!8, !2, i64 384}
!71 = !{!8, !6, i64 216}
!72 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 4, !5, i64 100, i64 4, !5, i64 104, i64 8, !1, i64 112, i64 4, !5, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 4, !5, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1}
!73 = !{!12, !2, i64 56}
!74 = !{!33, !2, i64 136}
!75 = !{!33, !2, i64 160}
!76 = !{!8, !2, i64 200}
!77 = !{!78, !6, i64 24}
!78 = !{!"gs_gc_root_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!79 = !{!78, !2, i64 8}
!80 = !{!78, !2, i64 16}
!81 = !{!8, !2, i64 584}
!82 = !{!78, !2, i64 0}
!83 = !{!8, !2, i64 0}
!84 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1}
!85 = !{!33, !2, i64 192}
!86 = !{!8, !2, i64 192}
!87 = !{!33, !2, i64 208}
!88 = !{!8, !2, i64 208}
!89 = !{!8, !11, i64 232}
!90 = !{!8, !11, i64 240}
!91 = !{!8, !2, i64 248}
!92 = !{!8, !6, i64 256}
!93 = !{!8, !6, i64 260}
!94 = !{!8, !11, i64 264}
!95 = !{!8, !11, i64 520}
!96 = !{!8, !6, i64 552}
!97 = !{!8, !6, i64 556}
!98 = !{!8, !6, i64 560}
!99 = !{!8, !6, i64 592}
!100 = !{!33, !2, i64 8}
!101 = !{!8, !2, i64 336}
!102 = !{!8, !2, i64 344}
!103 = !{!8, !6, i64 404}
!104 = !{!8, !11, i64 624}
!105 = !{!8, !11, i64 632}
!106 = !{!8, !11, i64 280}
!107 = !{!8, !2, i64 64}
!108 = !{!8, !2, i64 8}
!109 = !{!8, !2, i64 72}
!110 = !{!8, !2, i64 80}
!111 = !{!8, !2, i64 88}
!112 = !{!8, !2, i64 96}
!113 = !{!8, !2, i64 104}
!114 = !{!8, !2, i64 112}
!115 = !{!8, !2, i64 136}
!116 = !{!8, !2, i64 144}
!117 = !{!118, !2, i64 280}
!118 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !119, i64 152, !3, i64 154, !3, i64 155, !120, i64 160, !11, i64 176, !121, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !119, i64 264, !119, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !122, i64 312, !6, i64 328, !11, i64 336, !11, i64 344}
!119 = !{!"short", !3, i64 0}
!120 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!121 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!122 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!123 = !{!118, !2, i64 272}
!124 = !{i64 0, i64 8, !27, i64 8, i64 8, !27, i64 16, i64 8, !1, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 8, !27}
!125 = !{!10, !11, i64 0}
!126 = !{!10, !6, i64 28}
!127 = !{!8, !2, i64 376}
!128 = !{!12, !2, i64 32}
!129 = !{!12, !2, i64 40}
!130 = !{!12, !6, i64 100}
!131 = !{!12, !2, i64 144}
!132 = !{!12, !2, i64 128}
!133 = !{!12, !6, i64 136}
!134 = !{!12, !2, i64 152}
!135 = !{!12, !2, i64 104}
!136 = !{!12, !6, i64 112}
!137 = !{!33, !2, i64 56}
