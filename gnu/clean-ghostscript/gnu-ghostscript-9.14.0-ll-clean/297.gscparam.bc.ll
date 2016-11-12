; ModuleID = './gscparam.bc'
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
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_c_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_c_param_s*, %struct.gs_param_list_s*, i32, i32, i32 }
%struct.gs_c_param_s = type { %struct.gs_c_param_s*, %struct.gs_param_string_s, i32, %union.c_param_value_s, i32, i8* }
%union.c_param_value_s = type { %struct.gs_c_param_list_s }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }

@gs_param_type_sizes = constant [14 x i8] c"\00\04\04\08\04\10\10\10\10\10\10888", align 1
@gs_param_type_base_sizes = constant [14 x i8] c"\00\04\04\08\04\01\01\04\04\10\10\00\00\00", align 1
@st_c_param_list = internal constant %struct.gs_memory_struct_type_s { i32 56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @c_param_list_reloc_ptrs to i8*) }, align 8
@c_write_procs = internal constant %struct.gs_param_list_procs_s { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)* @c_param_write_typed, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)* @c_param_begin_write_collection, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)* @c_param_end_write_collection, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)* null, i32 (%struct.gs_param_list_s*, i8*)* @c_param_request, i32 (%struct.gs_param_list_s*, i8*)* @c_param_requested, i32 (%struct.gs_param_list_s*, i8*)* null, i32 (%struct.gs_param_list_s*, i8*, i32)* null, i32 (%struct.gs_param_list_s*)* null }, align 8
@.str = private unnamed_addr constant [29 x i8] c"gs_c_param_list_release data\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"gs_c_param_list_release key\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"gs_c_param_list_release alternate data\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"gs_c_param_list_release entry\00", align 1
@c_read_procs = internal constant %struct.gs_param_list_procs_s { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)* @c_param_read_typed, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)* @c_param_begin_read_collection, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)* @c_param_end_read_collection, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)* @c_param_get_next_key, i32 (%struct.gs_param_list_s*, i8*)* null, i32 (%struct.gs_param_list_s*, i8*)* null, i32 (%struct.gs_param_list_s*, i8*)* @c_param_read_get_policy, i32 (%struct.gs_param_list_s*, i8*, i32)* @c_param_read_signal_error, i32 (%struct.gs_param_list_s*)* @c_param_read_commit }, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"c_param_list\00", align 1
@c_param_list_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 2, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([2 x %struct.gc_ptr_element_s], [2 x %struct.gc_ptr_element_s]* @c_param_list_enum_ptrs, i32 0, i32 0) }, align 8
@c_param_list_enum_ptrs = internal constant [2 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 24 }, %struct.gc_ptr_element_s { i16 0, i16 32 }], align 2
@.str.5 = private unnamed_addr constant [19 x i8] c"c_param_write data\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"c_param_write entry\00", align 1
@st_c_param = internal constant %struct.gs_memory_struct_type_s { i32 104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @c_param_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @c_param_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"c_param_add entry\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"c_param_add key\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"gs_c_param\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"c_param_begin_write_collection\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"gs_c_param_read alternate float array\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gs_c_param_list_s* @gs_c_param_list_alloc(%struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %1 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !5
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, %struct.gs_memory_struct_type_s* @st_c_param_list, i8* %3) #5
  %4 = bitcast i8* %call to %struct.gs_c_param_list_s*
  ret %struct.gs_c_param_list_s* %4
}

; Function Attrs: nounwind uwtable
define void @gs_c_param_list_write(%struct.gs_c_param_list_s* %plist, %struct.gs_memory_s* %mem) #0 {
entry:
  %plist.addr = alloca %struct.gs_c_param_list_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_c_param_list_s* %plist, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %1, i32 0, i32 1
  store %struct.gs_memory_s* %0, %struct.gs_memory_s** %memory, align 8, !tbaa !8
  %2 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %2, i32 0, i32 3
  store %struct.gs_c_param_s* null, %struct.gs_c_param_s** %head, align 8, !tbaa !11
  %3 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %3, i32 0, i32 4
  store %struct.gs_param_list_s* null, %struct.gs_param_list_s** %target, align 8, !tbaa !12
  %4 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %4, i32 0, i32 5
  store i32 0, i32* %count, align 4, !tbaa !13
  %5 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %any_requested = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %5, i32 0, i32 6
  store i32 0, i32* %any_requested, align 4, !tbaa !14
  %6 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %persistent_keys = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %6, i32 0, i32 2
  store i32 1, i32* %persistent_keys, align 4, !tbaa !15
  %7 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  call void @gs_c_param_list_write_more(%struct.gs_c_param_list_s* %7) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_c_param_list_write_more(%struct.gs_c_param_list_s* %plist) #0 {
entry:
  %plist.addr = alloca %struct.gs_c_param_list_s*, align 8
  store %struct.gs_c_param_list_s* %plist, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %0, i32 0, i32 0
  store %struct.gs_param_list_procs_s* @c_write_procs, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !16
  %1 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %coll_type = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %1, i32 0, i32 7
  store i32 0, i32* %coll_type, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_c_param_list_set_target(%struct.gs_c_param_list_s* %plist, %struct.gs_param_list_s* %target) #0 {
entry:
  %plist.addr = alloca %struct.gs_c_param_list_s*, align 8
  %target.addr = alloca %struct.gs_param_list_s*, align 8
  store %struct.gs_c_param_list_s* %plist, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %target, %struct.gs_param_list_s** %target.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target.addr, align 8, !tbaa !1
  %1 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %1, i32 0, i32 4
  store %struct.gs_param_list_s* %0, %struct.gs_param_list_s** %target1, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @gs_c_param_list_release(%struct.gs_c_param_list_s* %plist) #0 {
entry:
  %plist.addr = alloca %struct.gs_c_param_list_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %pparam = alloca %struct.gs_c_param_s*, align 8
  %next = alloca %struct.gs_c_param_s*, align 8
  store %struct.gs_c_param_list_s* %plist, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !8
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %entry
  %4 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %4, i32 0, i32 3
  %5 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %head, align 8, !tbaa !11
  store %struct.gs_c_param_s* %5, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_c_param_s* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = bitcast %struct.gs_c_param_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %7, i32 0, i32 0
  %8 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %next1, align 8, !tbaa !18
  store %struct.gs_c_param_s* %8, %struct.gs_c_param_s** %next, align 8, !tbaa !1
  %9 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %9, i32 0, i32 4
  %10 = load i32, i32* %type, align 4, !tbaa !21
  switch i32 %10, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 5, label %sw.bb.2
    i32 6, label %sw.bb.2
    i32 7, label %sw.bb.2
    i32 8, label %sw.bb.2
    i32 9, label %sw.bb.2
    i32 10, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  %11 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %11, i32 0, i32 3
  %d = bitcast %union.c_param_value_s* %value to %struct.gs_c_param_list_s*
  call void @gs_c_param_list_release(%struct.gs_c_param_list_s* %d) #5
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %12 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value3 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %12, i32 0, i32 3
  %s = bitcast %union.c_param_value_s* %value3 to %struct.gs_param_string_s*
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 2
  %13 = load i32, i32* %persistent, align 4, !tbaa !22
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %15 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %15, i32 0, i32 3
  %s5 = bitcast %union.c_param_value_s* %value4 to %struct.gs_param_string_s*
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s5, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8, !tbaa !23
  call void @gs_free_const_object(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  %17 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %free_key = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %17, i32 0, i32 2
  %18 = load i32, i32* %free_key, align 4, !tbaa !24
  %tobool6 = icmp ne i32 %18, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %sw.epilog
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %20 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %20, i32 0, i32 1
  %data8 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  %21 = load i8*, i8** %data8, align 8, !tbaa !25
  %22 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %key9 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %22, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key9, i32 0, i32 1
  %23 = load i32, i32* %size, align 4, !tbaa !26
  call void @gs_free_const_string(%struct.gs_memory_s* %19, i8* %21, i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %sw.epilog
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !27
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %27 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %alternate_typed_data = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %27, i32 0, i32 5
  %28 = load i8*, i8** %alternate_typed_data, align 8, !tbaa !28
  call void %25(%struct.gs_memory_s* %26, i8* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0)) #5
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object12, align 8, !tbaa !27
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %32 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %33 = bitcast %struct.gs_c_param_s* %32 to i8*
  call void %30(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)) #5
  %34 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %next, align 8, !tbaa !1
  %35 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %head13 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %35, i32 0, i32 3
  store %struct.gs_c_param_s* %34, %struct.gs_c_param_s** %head13, align 8, !tbaa !11
  %36 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %36, i32 0, i32 5
  %37 = load i32, i32* %count, align 4, !tbaa !13
  %dec = add i32 %37, -1
  store i32 %dec, i32* %count, align 4, !tbaa !13
  %38 = bitcast %struct.gs_c_param_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @gs_free_const_object(%struct.gs_memory_s*, i8*, i8*) #2

declare void @gs_free_const_string(%struct.gs_memory_s*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gs_c_param_list_read(%struct.gs_c_param_list_s* %plist) #0 {
entry:
  %plist.addr = alloca %struct.gs_c_param_list_s*, align 8
  store %struct.gs_c_param_list_s* %plist, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %0, i32 0, i32 0
  store %struct.gs_param_list_procs_s* @c_read_procs, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !16
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @c_param_write_typed(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_typed_value_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_typed_value_s*, align 8
  %cplist = alloca %struct.gs_c_param_list_s*, align 8
  %coll_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_typed_value_s* %pvalue, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.gs_c_param_list_s*
  store %struct.gs_c_param_list_s* %2, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %3 = bitcast i32* %coll_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %4, i32 0, i32 1
  %5 = load i32, i32* %type, align 4, !tbaa !29
  switch i32 %5, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb.1
    i32 13, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %coll_type, align 4, !tbaa !31
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %coll_type, align 4, !tbaa !31
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %coll_type, align 4, !tbaa !31
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %7 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %8 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %8, i32 0, i32 0
  %9 = bitcast %union.gs_param_value_s* %value to i8*
  %10 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type3 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %10, i32 0, i32 1
  %11 = load i32, i32* %type3, align 4, !tbaa !29
  %call = call i32 @c_param_write(%struct.gs_c_param_list_s* %6, i8* %7, i8* %9, i32 %11) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb.1, %sw.bb
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %14 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %14, i32 0, i32 0
  %d = bitcast %union.gs_param_value_s* %value4 to %struct.gs_param_collection_s*
  %15 = load i32, i32* %coll_type, align 4, !tbaa !31
  %call5 = call i32 @c_param_begin_write_collection(%struct.gs_param_list_s* %12, i8* %13, %struct.gs_param_collection_s* %d, i32 %15) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %16 = bitcast i32* %coll_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_begin_write_collection(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_collection_s* %pvalue, i32 %coll_type) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_collection_s*, align 8
  %coll_type.addr = alloca i32, align 4
  %cplist = alloca %struct.gs_c_param_list_s*, align 8
  %dlist = alloca %struct.gs_c_param_list_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pvalue, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %coll_type, i32* %coll_type.addr, align 4, !tbaa !31
  %0 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.gs_c_param_list_s*
  store %struct.gs_c_param_list_s* %2, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %3 = bitcast %struct.gs_c_param_list_s** %dlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !8
  %call = call %struct.gs_c_param_list_s* @gs_c_param_list_alloc(%struct.gs_memory_s* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0)) #5
  store %struct.gs_c_param_list_s* %call, %struct.gs_c_param_list_s** %dlist, align 8, !tbaa !1
  %6 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %dlist, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_c_param_list_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %dlist, align 8, !tbaa !1
  %8 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !8
  call void @gs_c_param_list_write(%struct.gs_c_param_list_s* %7, %struct.gs_memory_s* %9) #5
  %10 = load i32, i32* %coll_type.addr, align 4, !tbaa !31
  %11 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %dlist, align 8, !tbaa !1
  %coll_type2 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %11, i32 0, i32 7
  store i32 %10, i32* %coll_type2, align 4, !tbaa !17
  %12 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %dlist, align 8, !tbaa !1
  %13 = bitcast %struct.gs_c_param_list_s* %12 to %struct.gs_param_list_s*
  %14 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %14, i32 0, i32 0
  store %struct.gs_param_list_s* %13, %struct.gs_param_list_s** %list, align 8, !tbaa !32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.gs_c_param_list_s** %dlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_end_write_collection(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_collection_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_collection_s*, align 8
  %cplist = alloca %struct.gs_c_param_list_s*, align 8
  %dlist = alloca %struct.gs_c_param_list_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pvalue, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.gs_c_param_list_s*
  store %struct.gs_c_param_list_s* %2, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %3 = bitcast %struct.gs_c_param_list_s** %dlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !32
  %6 = bitcast %struct.gs_param_list_s* %5 to %struct.gs_c_param_list_s*
  store %struct.gs_c_param_list_s* %6, %struct.gs_c_param_list_s** %dlist, align 8, !tbaa !1
  %7 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %9 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list1 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list1, align 8, !tbaa !32
  %11 = bitcast %struct.gs_param_list_s* %10 to i8*
  %12 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %dlist, align 8, !tbaa !1
  %coll_type = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %12, i32 0, i32 7
  %13 = load i32, i32* %coll_type, align 4, !tbaa !17
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %dlist, align 8, !tbaa !1
  %coll_type2 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %14, i32 0, i32 7
  %15 = load i32, i32* %coll_type2, align 4, !tbaa !17
  %cmp3 = icmp eq i32 %15, 2
  %cond = select i1 %cmp3, i32 13, i32 11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ 12, %cond.true ], [ %cond, %cond.false ]
  %call = call i32 @c_param_write(%struct.gs_c_param_list_s* %7, i8* %8, i8* %11, i32 %cond4) #5
  %16 = bitcast %struct.gs_c_param_list_s** %dlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_request(%struct.gs_param_list_s* %plist, i8* %pkey) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %cplist = alloca %struct.gs_c_param_list_s*, align 8
  %pparam = alloca %struct.gs_c_param_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.gs_c_param_list_s*
  store %struct.gs_c_param_list_s* %2, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %3 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %any_requested = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %4, i32 0, i32 6
  store i32 1, i32* %any_requested, align 4, !tbaa !14
  %5 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %6 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call %struct.gs_c_param_s* @c_param_find(%struct.gs_c_param_list_s* %5, i8* %6, i32 1) #5
  %tobool = icmp ne %struct.gs_c_param_s* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call1 = call %struct.gs_c_param_s* @c_param_add(%struct.gs_c_param_list_s* %7, i8* %8) #5
  store %struct.gs_c_param_s* %call1, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %9 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_c_param_s* %9, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %10 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %10, i32 0, i32 4
  store i32 -1, i32* %type, align 4, !tbaa !21
  %11 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %12 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %12, i32 0, i32 3
  store %struct.gs_c_param_s* %11, %struct.gs_c_param_s** %head, align 8, !tbaa !11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %13 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_requested(%struct.gs_param_list_s* %plist, i8* %pkey) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %cplist = alloca %struct.gs_c_param_list_s*, align 8
  %target = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.gs_c_param_list_s*
  store %struct.gs_c_param_list_s* %2, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %3 = bitcast %struct.gs_param_list_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %4, i32 0, i32 4
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target1, align 8, !tbaa !12
  store %struct.gs_param_list_s* %5, %struct.gs_param_list_s** %target, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %any_requested = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %7, i32 0, i32 6
  %8 = load i32, i32* %any_requested, align 4, !tbaa !14
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target, align 8, !tbaa !1
  %tobool2 = icmp ne %struct.gs_param_list_s* %9, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %10, i32 0, i32 0
  %11 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !34
  %requested = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %11, i32 0, i32 5
  %12 = load i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)** %requested, align 8, !tbaa !36
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target, align 8, !tbaa !1
  %14 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 %12(%struct.gs_param_list_s* %13, i8* %14) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %16 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call3 = call %struct.gs_c_param_s* @c_param_find(%struct.gs_c_param_list_s* %15, i8* %16, i32 1) #5
  %cmp = icmp ne %struct.gs_c_param_s* %call3, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target, align 8, !tbaa !1
  %tobool6 = icmp ne %struct.gs_param_list_s* %17, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.5
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %18, i32 0, i32 0
  %19 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs9, align 8, !tbaa !34
  %requested10 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %19, i32 0, i32 5
  %20 = load i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)** %requested10, align 8, !tbaa !36
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target, align 8, !tbaa !1
  %22 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call11 = call i32 %20(%struct.gs_param_list_s* %21, i8* %22) #5
  store i32 %call11, i32* %code, align 4, !tbaa !38
  %23 = load i32, i32* %code, align 4, !tbaa !38
  %cmp12 = icmp slt i32 %23, 0
  %cond13 = select i1 %cmp12, i32 0, i32 1
  store i32 %cond13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.4, %cond.end
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.gs_param_list_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_write(%struct.gs_c_param_list_s* %plist, i8* %pkey, i8* %pvalue, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_c_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %top_level_sizeof = alloca i32, align 4
  %second_level_sizeof = alloca i32, align 4
  %pparam = alloca %struct.gs_c_param_s*, align 8
  %cleanup.dest.slot = alloca i32
  %curr_string = alloca %struct.gs_param_string_s*, align 8
  %end_string = alloca %struct.gs_param_string_s*, align 8
  %top_level_memory = alloca i8*, align 8
  %second_level_memory = alloca i8*, align 8
  store %struct.gs_c_param_list_s* %plist, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i8* %pvalue, i8** %pvalue.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !31
  %0 = bitcast i32* %top_level_sizeof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %top_level_sizeof, align 4, !tbaa !38
  %1 = bitcast i32* %second_level_sizeof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %second_level_sizeof, align 4, !tbaa !38
  %2 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call %struct.gs_c_param_s* @c_param_add(%struct.gs_c_param_list_s* %3, i8* %4) #5
  store %struct.gs_c_param_s* %call, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %5 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_c_param_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %6, i32 0, i32 3
  %7 = bitcast %union.c_param_value_s* %value to i8*
  %8 = load i8*, i8** %pvalue.addr, align 8, !tbaa !1
  %9 = load i32, i32* %type.addr, align 4, !tbaa !31
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* @gs_param_type_sizes, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %10 to i64
  %call1 = call i8* @memcpy(i8* %7, i8* %8, i64 %conv) #6
  %11 = load i32, i32* %type.addr, align 4, !tbaa !31
  %12 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %type2 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %12, i32 0, i32 4
  store i32 %11, i32* %type2, align 4, !tbaa !21
  %13 = load i32, i32* %type.addr, align 4, !tbaa !31
  switch i32 %13, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.11
    i32 8, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %14 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value3 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %14, i32 0, i32 3
  %sa = bitcast %union.c_param_value_s* %value3 to %struct.gs_param_string_array_s*
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa, i32 0, i32 0
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !39
  store %struct.gs_param_string_s* %15, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %17 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %17, i32 0, i32 3
  %sa5 = bitcast %union.c_param_value_s* %value4 to %struct.gs_param_string_array_s*
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa5, i32 0, i32 1
  %18 = load i32, i32* %size, align 4, !tbaa !41
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %16, i64 %idx.ext
  store %struct.gs_param_string_s* %add.ptr, %struct.gs_param_string_s** %end_string, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %19 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %20 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %end_string, align 8, !tbaa !1
  %cmp6 = icmp ult %struct.gs_param_string_s* %19, %20
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %21, i32 0, i32 2
  %22 = load i32, i32* %persistent, align 4, !tbaa !22
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %for.body
  %23 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %size9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %23, i32 0, i32 1
  %24 = load i32, i32* %size9, align 4, !tbaa !42
  %25 = load i32, i32* %second_level_sizeof, align 4, !tbaa !38
  %add = add i32 %25, %24
  store i32 %add, i32* %second_level_sizeof, align 4, !tbaa !38
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %26 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %26, i32 1
  store %struct.gs_param_string_s* %incdec.ptr, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %for.end
  %27 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %27, i32 0, i32 3
  %s = bitcast %union.c_param_value_s* %value12 to %struct.gs_param_string_s*
  %persistent13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s, i32 0, i32 2
  %28 = load i32, i32* %persistent13, align 4, !tbaa !22
  %tobool14 = icmp ne i32 %28, 0
  br i1 %tobool14, label %if.end.78, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.11
  %29 = bitcast i8** %top_level_memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i8* null, i8** %top_level_memory, align 8, !tbaa !1
  %30 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %30, i32 0, i32 3
  %s17 = bitcast %union.c_param_value_s* %value16 to %struct.gs_param_string_s*
  %size18 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s17, i32 0, i32 1
  %31 = load i32, i32* %size18, align 4, !tbaa !42
  %32 = load i32, i32* %type.addr, align 4, !tbaa !31
  %idxprom19 = zext i32 %32 to i64
  %arrayidx20 = getelementptr inbounds [14 x i8], [14 x i8]* @gs_param_type_base_sizes, i32 0, i64 %idxprom19
  %33 = load i8, i8* %arrayidx20, align 1, !tbaa !31
  %conv21 = zext i8 %33 to i32
  %mul = mul i32 %31, %conv21
  store i32 %mul, i32* %top_level_sizeof, align 4, !tbaa !38
  %34 = load i32, i32* %top_level_sizeof, align 4, !tbaa !38
  %35 = load i32, i32* %second_level_sizeof, align 4, !tbaa !38
  %add22 = add i32 %34, %35
  %cmp23 = icmp ugt i32 %add22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.41

if.then.25:                                       ; preds = %if.then.15
  %36 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %36, i32 0, i32 1
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !8
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %38 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !43
  %39 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %39, i32 0, i32 1
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory26, align 8, !tbaa !8
  %41 = load i32, i32* %top_level_sizeof, align 4, !tbaa !38
  %42 = load i32, i32* %second_level_sizeof, align 4, !tbaa !38
  %add27 = add i32 %41, %42
  %call28 = call i8* %38(%struct.gs_memory_s* %40, i32 %add27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)) #5
  store i8* %call28, i8** %top_level_memory, align 8, !tbaa !1
  %43 = load i8*, i8** %top_level_memory, align 8, !tbaa !1
  %cmp29 = icmp eq i8* %43, null
  br i1 %cmp29, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.then.25
  %44 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %44, i32 0, i32 1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !8
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %46 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !27
  %47 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %47, i32 0, i32 1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory34, align 8, !tbaa !8
  %49 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %50 = bitcast %struct.gs_c_param_s* %49 to i8*
  call void %46(%struct.gs_memory_s* %48, i8* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.25
  %51 = load i8*, i8** %top_level_memory, align 8, !tbaa !1
  %52 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value36 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %52, i32 0, i32 3
  %s37 = bitcast %union.c_param_value_s* %value36 to %struct.gs_param_string_s*
  %data38 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s37, i32 0, i32 0
  %53 = load i8*, i8** %data38, align 8, !tbaa !23
  %54 = load i32, i32* %top_level_sizeof, align 4, !tbaa !38
  %conv39 = zext i32 %54 to i64
  %call40 = call i8* @memcpy(i8* %51, i8* %53, i64 %conv39) #6
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.35, %if.then.15
  %55 = load i8*, i8** %top_level_memory, align 8, !tbaa !1
  %56 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value42 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %56, i32 0, i32 3
  %s43 = bitcast %union.c_param_value_s* %value42 to %struct.gs_param_string_s*
  %data44 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %s43, i32 0, i32 0
  store i8* %55, i8** %data44, align 8, !tbaa !23
  %57 = load i32, i32* %second_level_sizeof, align 4, !tbaa !38
  %cmp45 = icmp ugt i32 %57, 0
  br i1 %cmp45, label %if.then.47, label %if.end.77

if.then.47:                                       ; preds = %if.end.41
  %58 = bitcast i8** %second_level_memory to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %59 = load i8*, i8** %top_level_memory, align 8, !tbaa !1
  %60 = load i32, i32* %top_level_sizeof, align 4, !tbaa !38
  %idx.ext48 = zext i32 %60 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %59, i64 %idx.ext48
  store i8* %add.ptr49, i8** %second_level_memory, align 8, !tbaa !1
  %61 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value50 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %61, i32 0, i32 3
  %sa51 = bitcast %union.c_param_value_s* %value50 to %struct.gs_param_string_array_s*
  %data52 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa51, i32 0, i32 0
  %62 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data52, align 8, !tbaa !39
  store %struct.gs_param_string_s* %62, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %63 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %64 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value53 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %64, i32 0, i32 3
  %sa54 = bitcast %union.c_param_value_s* %value53 to %struct.gs_param_string_array_s*
  %size55 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa54, i32 0, i32 1
  %65 = load i32, i32* %size55, align 4, !tbaa !41
  %idx.ext56 = zext i32 %65 to i64
  %add.ptr57 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %63, i64 %idx.ext56
  store %struct.gs_param_string_s* %add.ptr57, %struct.gs_param_string_s** %end_string, align 8, !tbaa !1
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.74, %if.then.47
  %66 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %67 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %end_string, align 8, !tbaa !1
  %cmp59 = icmp ult %struct.gs_param_string_s* %66, %67
  br i1 %cmp59, label %for.body.61, label %for.end.76

for.body.61:                                      ; preds = %for.cond.58
  %68 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %persistent62 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %68, i32 0, i32 2
  %69 = load i32, i32* %persistent62, align 4, !tbaa !22
  %tobool63 = icmp ne i32 %69, 0
  br i1 %tobool63, label %if.end.73, label %if.then.64

if.then.64:                                       ; preds = %for.body.61
  %70 = load i8*, i8** %second_level_memory, align 8, !tbaa !1
  %71 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %data65 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %71, i32 0, i32 0
  %72 = load i8*, i8** %data65, align 8, !tbaa !23
  %73 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %size66 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %73, i32 0, i32 1
  %74 = load i32, i32* %size66, align 4, !tbaa !42
  %conv67 = zext i32 %74 to i64
  %call68 = call i8* @memcpy(i8* %70, i8* %72, i64 %conv67) #6
  %75 = load i8*, i8** %second_level_memory, align 8, !tbaa !1
  %76 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %data69 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %76, i32 0, i32 0
  store i8* %75, i8** %data69, align 8, !tbaa !23
  %77 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %size70 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %77, i32 0, i32 1
  %78 = load i32, i32* %size70, align 4, !tbaa !42
  %79 = load i8*, i8** %second_level_memory, align 8, !tbaa !1
  %idx.ext71 = zext i32 %78 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %79, i64 %idx.ext71
  store i8* %add.ptr72, i8** %second_level_memory, align 8, !tbaa !1
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.64, %for.body.61
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %80 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %80, i32 1
  store %struct.gs_param_string_s* %incdec.ptr75, %struct.gs_param_string_s** %curr_string, align 8, !tbaa !1
  br label %for.cond.58

for.end.76:                                       ; preds = %for.cond.58
  %81 = bitcast i8** %second_level_memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %if.end.41
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.77, %if.then.31
  %82 = bitcast i8** %top_level_memory to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.78

if.end.78:                                        ; preds = %cleanup.cont, %sw.bb.11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.78
  %83 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %84 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %84, i32 0, i32 3
  store %struct.gs_c_param_s* %83, %struct.gs_c_param_s** %head, align 8, !tbaa !11
  %85 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %85, i32 0, i32 5
  %86 = load i32, i32* %count, align 4, !tbaa !13
  %inc = add i32 %86, 1
  store i32 %inc, i32* %count, align 4, !tbaa !13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.79

cleanup.79:                                       ; preds = %sw.epilog, %cleanup, %if.then
  %87 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %second_level_sizeof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %top_level_sizeof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_c_param_s* @c_param_add(%struct.gs_c_param_list_s* %plist, i8* %pkey) #0 {
entry:
  %retval = alloca %struct.gs_c_param_s*, align 8
  %plist.addr = alloca %struct.gs_c_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pparam = alloca %struct.gs_c_param_s*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %str = alloca i8*, align 8
  store %struct.gs_c_param_list_s* %plist, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %1, i32 0, i32 1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !8
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !5
  %4 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !8
  %call = call i8* %3(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* @st_c_param, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #5
  %6 = bitcast i8* %call to %struct.gs_c_param_s*
  store %struct.gs_c_param_s* %6, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %7 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %8) #7
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !38
  %9 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_c_param_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_c_param_s* null, %struct.gs_c_param_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %10, i32 0, i32 3
  %11 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %head, align 8, !tbaa !11
  %12 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %12, i32 0, i32 0
  store %struct.gs_c_param_s* %11, %struct.gs_c_param_s** %next, align 8, !tbaa !18
  %13 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %persistent_keys = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %13, i32 0, i32 2
  %14 = load i32, i32* %persistent_keys, align 4, !tbaa !15
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %15 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %16, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !8
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 16
  %18 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !44
  %19 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %19, i32 0, i32 1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !8
  %21 = load i32, i32* %len, align 4, !tbaa !38
  %call8 = call i8* %18(%struct.gs_memory_s* %20, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)) #5
  store i8* %call8, i8** %str, align 8, !tbaa !1
  %22 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %22, null
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.then.4
  %23 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %23, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !8
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !27
  %26 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %26, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !8
  %28 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %29 = bitcast %struct.gs_c_param_s* %28 to i8*
  call void %25(%struct.gs_memory_s* %27, i8* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #5
  store %struct.gs_c_param_s* null, %struct.gs_c_param_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.4
  %30 = load i8*, i8** %str, align 8, !tbaa !1
  %31 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %32 = load i32, i32* %len, align 4, !tbaa !38
  %conv16 = zext i32 %32 to i64
  %call17 = call i8* @memcpy(i8* %30, i8* %31, i64 %conv16) #6
  %33 = load i8*, i8** %str, align 8, !tbaa !1
  %34 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %34, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 0
  store i8* %33, i8** %data, align 8, !tbaa !25
  %35 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %key18 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %35, i32 0, i32 1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key18, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !45
  %36 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %free_key = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %36, i32 0, i32 2
  store i32 1, i32* %free_key, align 4, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.11
  %37 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %38 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %39 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %key19 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %39, i32 0, i32 1
  %data20 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key19, i32 0, i32 0
  store i8* %38, i8** %data20, align 8, !tbaa !25
  %40 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %key21 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %40, i32 0, i32 1
  %persistent22 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key21, i32 0, i32 2
  store i32 1, i32* %persistent22, align 4, !tbaa !45
  %41 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %free_key23 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %41, i32 0, i32 2
  store i32 0, i32* %free_key23, align 4, !tbaa !24
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %cleanup.cont
  %42 = load i32, i32* %len, align 4, !tbaa !38
  %43 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %key25 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %43, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key25, i32 0, i32 1
  store i32 %42, i32* %size, align 4, !tbaa !26
  %44 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %alternate_typed_data = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %44, i32 0, i32 5
  store i8* null, i8** %alternate_typed_data, align 8, !tbaa !28
  %45 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  store %struct.gs_c_param_s* %45, %struct.gs_c_param_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %if.end.24, %cleanup, %if.then
  %46 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %retval
  ret %struct.gs_c_param_s* %48
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @c_param_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %param = alloca %struct.gs_c_param_s*, align 8
  %cleanup.dest.slot = alloca i32
  %value2 = alloca %struct.gs_param_typed_value_s, align 8
  %key12 = alloca %struct.gs_const_string_s, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !38
  store i32 %index, i32* %index.addr, align 4, !tbaa !38
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_c_param_s** %param to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_c_param_s*
  store %struct.gs_c_param_s* %2, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !38
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb.8
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.11
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !38
  %sub = sub nsw i32 %4, 3
  store i32 %sub, i32* %index.addr, align 4, !tbaa !38
  %5 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %5, i32 0, i32 4
  %6 = load i32, i32* %type, align 4, !tbaa !21
  switch i32 %6, label %sw.default.1 [
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ]

sw.bb:                                            ; preds = %sw.default, %sw.default, %sw.default
  %7 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_c_param_list, i32 0, i32 4), align 8, !tbaa !46
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %9 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %9, i32 0, i32 3
  %d = bitcast %union.c_param_value_s* %value to %struct.gs_c_param_list_s*
  %10 = bitcast %struct.gs_c_param_list_s* %d to i8*
  %11 = load i32, i32* %index.addr, align 4, !tbaa !38
  %12 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %7(%struct.gs_memory_s* %8, i8* %10, i32 56, i32 %11, %struct.enum_ptr_s* %12, %struct.gs_memory_struct_type_s* @st_c_param_list, %struct.gc_state_s* %13) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.1:                                     ; preds = %sw.default
  %14 = bitcast %struct.gs_param_typed_value_s* %value2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %14) #1
  %value3 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value2, i32 0, i32 0
  %15 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %15, i32 0, i32 3
  %16 = bitcast %union.c_param_value_s* %value4 to %union.gs_param_value_s*
  %17 = bitcast %union.gs_param_value_s* %value3 to i8*
  %18 = bitcast %union.gs_param_value_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false), !tbaa.struct !48
  %19 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %type5 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %19, i32 0, i32 4
  %20 = load i32, i32* %type5, align 4, !tbaa !21
  %type6 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value2, i32 0, i32 1
  store i32 %20, i32* %type6, align 4, !tbaa !29
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gs_param_typed_value_s* %value2 to i8*
  %23 = load i32, i32* %index.addr, align 4, !tbaa !38
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %25 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call7 = call %struct.gs_ptr_procs_s* @gs_param_typed_value_enum_ptrs(%struct.gs_memory_s* %21, i8* %22, i32 24, i32 %23, %struct.enum_ptr_s* %24, %struct.gs_memory_struct_type_s* null, %struct.gc_state_s* %25) #5
  store %struct.gs_ptr_procs_s* %call7, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  %26 = bitcast %struct.gs_param_typed_value_s* %value2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %26) #1
  br label %cleanup

sw.bb.8:                                          ; preds = %entry
  %27 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %27, i32 0, i32 0
  %28 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %next, align 8, !tbaa !18
  %29 = bitcast %struct.gs_c_param_s* %28 to i8*
  %30 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %30, i32 0, i32 0
  store i8* %29, i8** %ptr, align 8, !tbaa !53
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.9:                                          ; preds = %entry
  %31 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %alternate_typed_data = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %31, i32 0, i32 5
  %32 = load i8*, i8** %alternate_typed_data, align 8, !tbaa !28
  %33 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %33, i32 0, i32 0
  store i8* %32, i8** %ptr10, align 8, !tbaa !53
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.11:                                         ; preds = %entry
  %34 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %34, i32 0, i32 1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 2
  %35 = load i32, i32* %persistent, align 4, !tbaa !45
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb.11
  %36 = bitcast %struct.gs_const_string_s* %key12 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %36) #1
  %37 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %key13 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %37, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key13, i32 0, i32 0
  %38 = load i8*, i8** %data, align 8, !tbaa !25
  %data14 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key12, i32 0, i32 0
  store i8* %38, i8** %data14, align 8, !tbaa !55
  %39 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %key15 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %39, i32 0, i32 1
  %size16 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key15, i32 0, i32 1
  %40 = load i32, i32* %size16, align 4, !tbaa !26
  %size17 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key12, i32 0, i32 1
  store i32 %40, i32* %size17, align 4, !tbaa !57
  %data18 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key12, i32 0, i32 0
  %41 = load i8*, i8** %data18, align 8, !tbaa !55
  %42 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr19 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %42, i32 0, i32 0
  store i8* %41, i8** %ptr19, align 8, !tbaa !53
  %size20 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key12, i32 0, i32 1
  %43 = load i32, i32* %size20, align 4, !tbaa !57
  %44 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size21 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %44, i32 0, i32 1
  store i32 %43, i32* %size21, align 4, !tbaa !58
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  %45 = bitcast %struct.gs_const_string_s* %key12 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %45) #1
  br label %cleanup

if.else:                                          ; preds = %sw.bb.11
  %46 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr22 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %46, i32 0, i32 0
  store i8* null, i8** %ptr22, align 8, !tbaa !53
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %sw.bb.9, %sw.bb.8, %sw.default.1, %sw.bb
  %47 = bitcast %struct.gs_c_param_s** %param to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %48
}

; Function Attrs: nounwind uwtable
define internal void @c_param_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %param = alloca %struct.gs_c_param_s*, align 8
  %key5 = alloca %struct.gs_const_string_s, align 8
  %value14 = alloca %struct.gs_param_typed_value_s, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !38
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_c_param_s** %param to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_c_param_s*
  store %struct.gs_c_param_s* %2, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gc_state_s* %3 to %struct.gc_procs_common_s**
  %5 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %4, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %5, i32 0, i32 0
  %6 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !59
  %7 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %7, i32 0, i32 0
  %8 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %next, align 8, !tbaa !18
  %9 = bitcast %struct.gs_c_param_s* %8 to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %6(i8* %9, %struct.gc_state_s* %10) #5
  %11 = bitcast i8* %call to %struct.gs_c_param_s*
  %12 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %next1 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %12, i32 0, i32 0
  store %struct.gs_c_param_s* %11, %struct.gs_c_param_s** %next1, align 8, !tbaa !18
  %13 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gc_state_s* %13 to %struct.gc_procs_common_s**
  %15 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %14, align 8, !tbaa !1
  %reloc_struct_ptr2 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %15, i32 0, i32 0
  %16 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr2, align 8, !tbaa !59
  %17 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %alternate_typed_data = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %17, i32 0, i32 5
  %18 = load i8*, i8** %alternate_typed_data, align 8, !tbaa !28
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call i8* %16(i8* %18, %struct.gc_state_s* %19) #5
  %20 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %alternate_typed_data4 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %20, i32 0, i32 5
  store i8* %call3, i8** %alternate_typed_data4, align 8, !tbaa !28
  %21 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %21, i32 0, i32 1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 2
  %22 = load i32, i32* %persistent, align 4, !tbaa !45
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %23 = bitcast %struct.gs_const_string_s* %key5 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %23) #1
  %24 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %key6 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %24, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key6, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8, !tbaa !25
  %data7 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key5, i32 0, i32 0
  store i8* %25, i8** %data7, align 8, !tbaa !55
  %26 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %key8 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %26, i32 0, i32 1
  %size9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key8, i32 0, i32 1
  %27 = load i32, i32* %size9, align 4, !tbaa !26
  %size10 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key5, i32 0, i32 1
  store i32 %27, i32* %size10, align 4, !tbaa !57
  %28 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gc_state_s* %28 to %struct.gc_procs_common_s**
  %30 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %29, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %30, i32 0, i32 2
  %31 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !61
  %32 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %31(%struct.gs_const_string_s* %key5, %struct.gc_state_s* %32) #5
  %data11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %key5, i32 0, i32 0
  %33 = load i8*, i8** %data11, align 8, !tbaa !55
  %34 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %key12 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %34, i32 0, i32 1
  %data13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key12, i32 0, i32 0
  store i8* %33, i8** %data13, align 8, !tbaa !25
  %35 = bitcast %struct.gs_const_string_s* %key5 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %35) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %36 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %36, i32 0, i32 4
  %37 = load i32, i32* %type, align 4, !tbaa !21
  switch i32 %37, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %38 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_c_param_list, i32 0, i32 5), align 8, !tbaa !62
  %39 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %39, i32 0, i32 3
  %d = bitcast %union.c_param_value_s* %value to %struct.gs_c_param_list_s*
  %40 = bitcast %struct.gs_c_param_list_s* %d to i8*
  %41 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %38(i8* %40, i32 56, %struct.gs_memory_struct_type_s* @st_c_param_list, %struct.gc_state_s* %41) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %42 = bitcast %struct.gs_param_typed_value_s* %value14 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %42) #1
  %value15 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value14, i32 0, i32 0
  %43 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %43, i32 0, i32 3
  %44 = bitcast %union.c_param_value_s* %value16 to %union.gs_param_value_s*
  %45 = bitcast %union.gs_param_value_s* %value15 to i8*
  %46 = bitcast %union.gs_param_value_s* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 8, i1 false), !tbaa.struct !48
  %47 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %type17 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %47, i32 0, i32 4
  %48 = load i32, i32* %type17, align 4, !tbaa !21
  %type18 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value14, i32 0, i32 1
  store i32 %48, i32* %type18, align 4, !tbaa !29
  %49 = bitcast %struct.gs_param_typed_value_s* %value14 to i8*
  %50 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void @gs_param_typed_value_reloc_ptrs(i8* %49, i32 24, %struct.gs_memory_struct_type_s* null, %struct.gc_state_s* %50) #5
  %51 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %param, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %51, i32 0, i32 3
  %52 = bitcast %union.c_param_value_s* %value19 to %union.gs_param_value_s*
  %value20 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %value14, i32 0, i32 0
  %53 = bitcast %union.gs_param_value_s* %52 to i8*
  %54 = bitcast %union.gs_param_value_s* %value20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false), !tbaa.struct !48
  %55 = bitcast %struct.gs_param_typed_value_s* %value14 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %55) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %56 = bitcast %struct.gs_c_param_s** %param to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.gs_ptr_procs_s* @gs_param_typed_value_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_param_typed_value_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_c_param_s* @c_param_find(%struct.gs_c_param_list_s* %plist, i8* %pkey, i32 %any) #0 {
entry:
  %retval = alloca %struct.gs_c_param_s*, align 8
  %plist.addr = alloca %struct.gs_c_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %any.addr = alloca i32, align 4
  %pparam = alloca %struct.gs_c_param_s*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_c_param_list_s* %plist, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i32 %any, i32* %any.addr, align 4, !tbaa !38
  %0 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %plist.addr, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %1, i32 0, i32 3
  %2 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %head, align 8, !tbaa !11
  store %struct.gs_c_param_s* %2, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4, !tbaa !38
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_c_param_s* %5, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %key = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %6, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !26
  %8 = load i32, i32* %len, align 4, !tbaa !38
  %cmp2 = icmp eq i32 %7, %8
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %key4 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %9, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %key4, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8, !tbaa !25
  %11 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %12 = load i32, i32* %len, align 4, !tbaa !38
  %conv5 = zext i32 %12 to i64
  %call6 = call i32 @memcmp(i8* %10, i8* %11, i64 %conv5) #7
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %13, i32 0, i32 4
  %14 = load i32, i32* %type, align 4, !tbaa !21
  %cmp7 = icmp ne i32 %14, -1
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load i32, i32* %any.addr, align 4, !tbaa !38
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.then
  %16 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_c_param_s* [ %16, %cond.true ], [ null, %cond.false ]
  store %struct.gs_c_param_s* %cond, %struct.gs_c_param_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %17, i32 0, i32 0
  %18 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %next, align 8, !tbaa !18
  store %struct.gs_c_param_s* %18, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.gs_c_param_s* null, %struct.gs_c_param_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %cond.end
  %19 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %retval
  ret %struct.gs_c_param_s* %21
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @c_param_read_typed(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_typed_value_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_typed_value_s*, align 8
  %cplist = alloca %struct.gs_c_param_list_s*, align 8
  %req_type = alloca i32, align 4
  %pparam = alloca %struct.gs_c_param_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fa = alloca %struct.gs_param_float_array_s, align 8
  %element = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_typed_value_s* %pvalue, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.gs_c_param_list_s*
  store %struct.gs_c_param_list_s* %2, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %3 = bitcast i32* %req_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %4, i32 0, i32 1
  %5 = load i32, i32* %type, align 4, !tbaa !29
  store i32 %5, i32* %req_type, align 4, !tbaa !31
  %6 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call %struct.gs_c_param_s* @c_param_find(%struct.gs_c_param_list_s* %7, i8* %8, i32 0) #5
  store %struct.gs_c_param_s* %call, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_c_param_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %11, i32 0, i32 4
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target, align 8, !tbaa !12
  %tobool = icmp ne %struct.gs_param_list_s* %12, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %13 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %13, i32 0, i32 1
  store i32 -1, i32* %type1, align 4, !tbaa !29
  %14 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %target2 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %14, i32 0, i32 4
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target2, align 8, !tbaa !12
  %16 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %17 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %call3 = call i32 @param_read_requested_typed(%struct.gs_param_list_s* %15, i8* %16, %struct.gs_param_typed_value_s* %17) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

if.end:                                           ; preds = %entry
  %18 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %type4 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %18, i32 0, i32 4
  %19 = load i32, i32* %type4, align 4, !tbaa !21
  %20 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type5 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %20, i32 0, i32 1
  store i32 %19, i32* %type5, align 4, !tbaa !29
  %21 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type6 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %21, i32 0, i32 1
  %22 = load i32, i32* %type6, align 4, !tbaa !29
  switch i32 %22, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %23 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %23, i32 0, i32 3
  %d = bitcast %union.c_param_value_s* %value to %struct.gs_c_param_list_s*
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %d) #5
  %24 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %24, i32 0, i32 3
  %d8 = bitcast %union.c_param_value_s* %value7 to %struct.gs_c_param_list_s*
  %25 = bitcast %struct.gs_c_param_list_s* %d8 to %struct.gs_param_list_s*
  %26 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value9 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %26, i32 0, i32 0
  %d10 = bitcast %union.gs_param_value_s* %value9 to %struct.gs_param_collection_s*
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d10, i32 0, i32 0
  store %struct.gs_param_list_s* %25, %struct.gs_param_list_s** %list, align 8, !tbaa !32
  %27 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value11 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %27, i32 0, i32 3
  %d12 = bitcast %union.c_param_value_s* %value11 to %struct.gs_c_param_list_s*
  %count = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %d12, i32 0, i32 5
  %28 = load i32, i32* %count, align 4, !tbaa !13
  %29 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %29, i32 0, i32 0
  %d14 = bitcast %union.gs_param_value_s* %value13 to %struct.gs_param_collection_s*
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d14, i32 0, i32 1
  store i32 %28, i32* %size, align 4, !tbaa !63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %30 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value15 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %30, i32 0, i32 0
  %31 = bitcast %union.gs_param_value_s* %value15 to i8*
  %32 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %32, i32 0, i32 3
  %33 = bitcast %union.c_param_value_s* %value16 to i8*
  %34 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %type17 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %34, i32 0, i32 4
  %35 = load i32, i32* %type17, align 4, !tbaa !21
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [14 x i8], [14 x i8]* @gs_param_type_sizes, i32 0, i64 %idxprom
  %36 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %36 to i64
  %call18 = call i8* @memcpy(i8* %31, i8* %33, i64 %conv) #6
  %37 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %38 = load i32, i32* %req_type, align 4, !tbaa !31
  %call19 = call i32 @param_coerce_typed(%struct.gs_param_typed_value_s* %37, i32 %38, %struct.gs_memory_s* null) #5
  store i32 %call19, i32* %code, align 4, !tbaa !38
  %39 = load i32, i32* %code, align 4, !tbaa !38
  %cmp20 = icmp eq i32 %39, -20
  br i1 %cmp20, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %sw.epilog
  %40 = load i32, i32* %req_type, align 4, !tbaa !31
  %cmp22 = icmp eq i32 %40, 8
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.62

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %41 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type25 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %41, i32 0, i32 1
  %42 = load i32, i32* %type25, align 4, !tbaa !29
  %cmp26 = icmp eq i32 %42, 7
  br i1 %cmp26, label %if.then.28, label %if.end.62

if.then.28:                                       ; preds = %land.lhs.true.24
  %43 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %43) #1
  %44 = bitcast i32* %element to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value29 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %45, i32 0, i32 3
  %ia = bitcast %union.c_param_value_s* %value29 to %struct.gs_param_int_array_s*
  %size30 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia, i32 0, i32 1
  %46 = load i32, i32* %size30, align 4, !tbaa !64
  %size31 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 1
  store i32 %46, i32* %size31, align 4, !tbaa !66
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !68
  %47 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %alternate_typed_data = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %47, i32 0, i32 5
  %48 = load i8*, i8** %alternate_typed_data, align 8, !tbaa !28
  %cmp32 = icmp eq i8* %48, null
  br i1 %cmp32, label %if.then.34, label %if.end.56

if.then.34:                                       ; preds = %if.then.28
  %49 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %49, i32 0, i32 1
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !8
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %51 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !43
  %52 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %memory35 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %52, i32 0, i32 1
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory35, align 8, !tbaa !8
  %size36 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 1
  %54 = load i32, i32* %size36, align 4, !tbaa !66
  %conv37 = zext i32 %54 to i64
  %mul = mul i64 %conv37, 4
  %conv38 = trunc i64 %mul to i32
  %call39 = call i8* %51(%struct.gs_memory_s* %53, i32 %conv38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0)) #5
  %55 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %alternate_typed_data40 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %55, i32 0, i32 5
  store i8* %call39, i8** %alternate_typed_data40, align 8, !tbaa !28
  %cmp41 = icmp eq i8* %call39, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.34
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.then.34
  store i32 0, i32* %element, align 4, !tbaa !38
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.44
  %56 = load i32, i32* %element, align 4, !tbaa !38
  %size45 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 1
  %57 = load i32, i32* %size45, align 4, !tbaa !66
  %cmp46 = icmp ult i32 %56, %57
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load i32, i32* %element, align 4, !tbaa !38
  %idxprom48 = sext i32 %58 to i64
  %59 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value49 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %59, i32 0, i32 3
  %ia50 = bitcast %union.c_param_value_s* %value49 to %struct.gs_param_int_array_s*
  %data = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia50, i32 0, i32 0
  %60 = load i32*, i32** %data, align 8, !tbaa !69
  %arrayidx51 = getelementptr inbounds i32, i32* %60, i64 %idxprom48
  %61 = load i32, i32* %arrayidx51, align 4, !tbaa !38
  %conv52 = sitofp i32 %61 to float
  %62 = load i32, i32* %element, align 4, !tbaa !38
  %idxprom53 = sext i32 %62 to i64
  %63 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %alternate_typed_data54 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %63, i32 0, i32 5
  %64 = load i8*, i8** %alternate_typed_data54, align 8, !tbaa !28
  %65 = bitcast i8* %64 to float*
  %arrayidx55 = getelementptr inbounds float, float* %65, i64 %idxprom53
  store float %conv52, float* %arrayidx55, align 4, !tbaa !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i32, i32* %element, align 4, !tbaa !38
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %element, align 4, !tbaa !38
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.56

if.end.56:                                        ; preds = %for.end, %if.then.28
  %67 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %alternate_typed_data57 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %67, i32 0, i32 5
  %68 = load i8*, i8** %alternate_typed_data57, align 8, !tbaa !28
  %69 = bitcast i8* %68 to float*
  %data58 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  store float* %69, float** %data58, align 8, !tbaa !70
  %70 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value59 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %70, i32 0, i32 0
  %fa60 = bitcast %union.gs_param_value_s* %value59 to %struct.gs_param_float_array_s*
  %71 = bitcast %struct.gs_param_float_array_s* %fa60 to i8*
  %72 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 16, i32 8, i1 false), !tbaa.struct !71
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.then.43
  %73 = bitcast i32* %element to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %74) #1
  br label %cleanup.63

if.end.62:                                        ; preds = %land.lhs.true.24, %land.lhs.true, %sw.epilog
  %75 = load i32, i32* %code, align 4, !tbaa !38
  store i32 %75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

cleanup.63:                                       ; preds = %if.end.62, %cleanup, %sw.bb, %cond.end
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32* %req_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_begin_read_collection(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_collection_s* %pvalue, i32 %coll_type) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_collection_s*, align 8
  %coll_type.addr = alloca i32, align 4
  %cplist = alloca %struct.gs_c_param_list_s*, align 8
  %pparam = alloca %struct.gs_c_param_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pvalue, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %coll_type, i32* %coll_type.addr, align 4, !tbaa !31
  %0 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.gs_c_param_list_s*
  store %struct.gs_c_param_list_s* %2, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %3 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %5 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call %struct.gs_c_param_s* @c_param_find(%struct.gs_c_param_list_s* %4, i8* %5, i32 0) #5
  store %struct.gs_c_param_s* %call, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %6 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_c_param_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %7, i32 0, i32 4
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target, align 8, !tbaa !12
  %tobool = icmp ne %struct.gs_param_list_s* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %9, i32 0, i32 4
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target1, align 8, !tbaa !12
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %10, i32 0, i32 0
  %11 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !34
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %11, i32 0, i32 1
  %12 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !72
  %13 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %target2 = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %13, i32 0, i32 4
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %target2, align 8, !tbaa !12
  %15 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %16 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %17 = load i32, i32* %coll_type.addr, align 4, !tbaa !31
  %call3 = call i32 %12(%struct.gs_param_list_s* %14, i8* %15, %struct.gs_param_collection_s* %16, i32 %17) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %18, i32 0, i32 4
  %19 = load i32, i32* %type, align 4, !tbaa !21
  switch i32 %19, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb.7
    i32 13, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end
  %20 = load i32, i32* %coll_type.addr, align 4, !tbaa !31
  %cmp4 = icmp ne i32 %20, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.bb
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %21 = load i32, i32* %coll_type.addr, align 4, !tbaa !31
  %cmp8 = icmp eq i32 %21, 2
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb.7
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %sw.bb.7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end, %if.end.10, %if.end.6
  %22 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %22, i32 0, i32 3
  %d = bitcast %union.c_param_value_s* %value to %struct.gs_c_param_list_s*
  call void @gs_c_param_list_read(%struct.gs_c_param_list_s* %d) #5
  %23 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value11 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %23, i32 0, i32 3
  %d12 = bitcast %union.c_param_value_s* %value11 to %struct.gs_c_param_list_s*
  %24 = bitcast %struct.gs_c_param_list_s* %d12 to %struct.gs_param_list_s*
  %25 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %25, i32 0, i32 0
  store %struct.gs_param_list_s* %24, %struct.gs_param_list_s** %list, align 8, !tbaa !32
  %26 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %26, i32 0, i32 3
  %d14 = bitcast %union.c_param_value_s* %value13 to %struct.gs_c_param_list_s*
  %count = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %d14, i32 0, i32 5
  %27 = load i32, i32* %count, align 4, !tbaa !13
  %28 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %28, i32 0, i32 1
  store i32 %27, i32* %size, align 4, !tbaa !63
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.9, %if.then.5, %cond.end
  %29 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_end_read_collection(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_collection_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_collection_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pvalue, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_get_next_key(%struct.gs_param_list_s* %plist, %union.gs_param_enumerator_s* %penum, %struct.gs_param_string_s* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %penum.addr = alloca %union.gs_param_enumerator_s*, align 8
  %key.addr = alloca %struct.gs_param_string_s*, align 8
  %cplist = alloca %struct.gs_c_param_list_s*, align 8
  %pparam = alloca %struct.gs_c_param_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %union.gs_param_enumerator_s* %penum, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %key, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.gs_c_param_list_s*
  store %struct.gs_c_param_list_s* %2, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %3 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %pvoid = bitcast %union.gs_param_enumerator_s* %4 to i8**
  %5 = load i8*, i8** %pvoid, align 8, !tbaa !1
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %pvoid1 = bitcast %union.gs_param_enumerator_s* %6 to i8**
  %7 = load i8*, i8** %pvoid1, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.gs_c_param_s*
  %next = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %8, i32 0, i32 0
  %9 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %next, align 8, !tbaa !18
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.gs_c_param_list_s*, %struct.gs_c_param_list_s** %cplist, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_c_param_list_s, %struct.gs_c_param_list_s* %10, i32 0, i32 3
  %11 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %head, align 8, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_c_param_s* [ %9, %cond.true ], [ %11, %cond.false ]
  store %struct.gs_c_param_s* %cond, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %12 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_c_param_s* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %13 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %14 = bitcast %struct.gs_c_param_s* %13 to i8*
  %15 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %pvoid2 = bitcast %union.gs_param_enumerator_s* %15 to i8**
  store i8* %14, i8** %pvoid2, align 8, !tbaa !1
  %16 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %17 = load %struct.gs_c_param_s*, %struct.gs_c_param_s** %pparam, align 8, !tbaa !1
  %key3 = getelementptr inbounds %struct.gs_c_param_s, %struct.gs_c_param_s* %17, i32 0, i32 1
  %18 = bitcast %struct.gs_param_string_s* %16 to i8*
  %19 = bitcast %struct.gs_param_string_s* %key3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !tbaa.struct !71
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast %struct.gs_c_param_s** %pparam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.gs_c_param_list_s** %cplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_read_get_policy(%struct.gs_param_list_s* %plist, i8* %pkey) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_read_signal_error(%struct.gs_param_list_s* %plist, i8* %pkey, i32 %code) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %code.addr = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !38
  %0 = load i32, i32* %code.addr, align 4, !tbaa !38
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal i32 @c_param_read_commit(%struct.gs_param_list_s* %plist) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  ret i32 0
}

declare i32 @param_read_requested_typed(%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*) #2

declare i32 @param_coerce_typed(%struct.gs_param_typed_value_s*, i32, %struct.gs_memory_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 72}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!9, !2, i64 8}
!9 = !{!"gs_c_param_list_s", !2, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !10, i64 44, !3, i64 48}
!10 = !{!"int", !3, i64 0}
!11 = !{!9, !2, i64 24}
!12 = !{!9, !2, i64 32}
!13 = !{!9, !10, i64 40}
!14 = !{!9, !10, i64 44}
!15 = !{!9, !10, i64 16}
!16 = !{!9, !2, i64 0}
!17 = !{!9, !3, i64 48}
!18 = !{!19, !2, i64 0}
!19 = !{!"gs_c_param_s", !2, i64 0, !20, i64 8, !10, i64 24, !3, i64 32, !3, i64 88, !2, i64 96}
!20 = !{!"gs_param_string_s", !2, i64 0, !10, i64 8, !10, i64 12}
!21 = !{!19, !3, i64 88}
!22 = !{!20, !10, i64 12}
!23 = !{!20, !2, i64 0}
!24 = !{!19, !10, i64 24}
!25 = !{!19, !2, i64 8}
!26 = !{!19, !10, i64 16}
!27 = !{!6, !2, i64 24}
!28 = !{!19, !2, i64 96}
!29 = !{!30, !3, i64 16}
!30 = !{!"gs_param_typed_value_s", !3, i64 0, !3, i64 16}
!31 = !{!3, !3, i64 0}
!32 = !{!33, !2, i64 0}
!33 = !{!"gs_param_collection_s", !2, i64 0, !10, i64 8}
!34 = !{!35, !2, i64 0}
!35 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !10, i64 16}
!36 = !{!37, !2, i64 40}
!37 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!38 = !{!10, !10, i64 0}
!39 = !{!40, !2, i64 0}
!40 = !{!"gs_param_string_array_s", !2, i64 0, !10, i64 8, !10, i64 12}
!41 = !{!40, !10, i64 8}
!42 = !{!20, !10, i64 8}
!43 = !{!6, !2, i64 8}
!44 = !{!6, !2, i64 136}
!45 = !{!19, !10, i64 20}
!46 = !{!47, !2, i64 32}
!47 = !{!"gs_memory_struct_type_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!48 = !{i64 0, i64 4, !38, i64 0, i64 4, !38, i64 0, i64 8, !49, i64 0, i64 4, !51, i64 0, i64 8, !1, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 0, i64 8, !1, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 0, i64 8, !1, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 0, i64 8, !1, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 0, i64 8, !1, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 0, i64 8, !1, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 0, i64 8, !1, i64 8, i64 4, !38}
!49 = !{!50, !50, i64 0}
!50 = !{!"long", !3, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !3, i64 0}
!53 = !{!54, !2, i64 0}
!54 = !{!"enum_ptr_s", !2, i64 0, !10, i64 8}
!55 = !{!56, !2, i64 0}
!56 = !{!"gs_const_string_s", !2, i64 0, !10, i64 8}
!57 = !{!56, !10, i64 8}
!58 = !{!54, !10, i64 8}
!59 = !{!60, !2, i64 0}
!60 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!61 = !{!60, !2, i64 16}
!62 = !{!47, !2, i64 40}
!63 = !{!33, !10, i64 8}
!64 = !{!65, !10, i64 8}
!65 = !{!"gs_param_int_array_s", !2, i64 0, !10, i64 8, !10, i64 12}
!66 = !{!67, !10, i64 8}
!67 = !{!"gs_param_float_array_s", !2, i64 0, !10, i64 8, !10, i64 12}
!68 = !{!67, !10, i64 12}
!69 = !{!65, !2, i64 0}
!70 = !{!67, !2, i64 0}
!71 = !{i64 0, i64 8, !1, i64 8, i64 4, !38, i64 12, i64 4, !38}
!72 = !{!37, !2, i64 8}
