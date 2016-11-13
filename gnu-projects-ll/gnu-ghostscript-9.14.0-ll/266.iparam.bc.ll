; ModuleID = './iparam.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
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
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.stack_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_stack_s*, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.iparam_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.0, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { {}*, %struct.ref_s, i32 }
%struct.iparam_loc_s = type { %struct.ref_s*, i32* }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.gs_ref_memory_s = type opaque
%struct.anon.3 = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)*, %struct.ref_s }
%struct.anon.2 = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)*, %struct.ref_s }
%struct.dict_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.5, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_s }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.anon.7 = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)*, %struct.ref_s }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.array_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.gs_ref_memory_s*, %union.anon.8, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32*, i32, i32, %struct.ref_s*, %struct.ref_s* }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, %struct.ref_s, i32 }
%struct.name_s = type opaque
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.obj_header_s = type opaque

@ref_write_procs = internal constant %struct.gs_param_list_procs_s { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)* @ref_param_write_typed, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)* @ref_param_begin_write_collection, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)* @ref_param_end_write_collection, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)* @ref_param_get_next_key, i32 (%struct.gs_param_list_s*, i8*)* null, i32 (%struct.gs_param_list_s*, i8*)* @ref_param_requested, i32 (%struct.gs_param_list_s*, i8*)* null, i32 (%struct.gs_param_list_s*, i8*, i32)* null, i32 (%struct.gs_param_list_s*)* null }, align 8
@.str = private unnamed_addr constant [23 x i8] c"ref_param_write_string\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ref_param_write_typed_array\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ref_param_begin_write_collection\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"ref_param_end_write_collection\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ref_to_key\00", align 1
@ref_read_procs = internal constant %struct.gs_param_list_procs_s { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)* @ref_param_read_typed, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)* @ref_param_begin_read_collection, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)* @ref_param_end_read_collection, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)* @ref_param_get_next_key, i32 (%struct.gs_param_list_s*, i8*)* null, i32 (%struct.gs_param_list_s*, i8*)* null, i32 (%struct.gs_param_list_s*, i8*)* @ref_param_read_get_policy, i32 (%struct.gs_param_list_s*, i8*, i32)* @ref_param_read_signal_error, i32 (%struct.gs_param_list_s*)* @ref_param_read_commit }, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"ref_param_read_init\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"ref_param_read_int_array\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"ref_param_read_float_array\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"ref_read_float_array_param\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"ref_param_read_string_array\00", align 1
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"ref_param_begin_read_collection\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"ref_param_end_read_collection\00", align 1

; Function Attrs: nounwind uwtable
define i32 @stack_param_list_write(%struct.stack_param_list_s* %plist, %struct.ref_stack_s* %pstack, %struct.ref_s* %pwanted, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %plist.addr = alloca %struct.stack_param_list_s*, align 8
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %pwanted.addr = alloca %struct.ref_s*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.stack_param_list_s* %plist, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store %struct.ref_s* %pwanted, %struct.ref_s** %pwanted.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %0, i32 0, i32 4
  %w = bitcast %union.anon* %u to %struct.anon.3*
  %write = getelementptr inbounds %struct.anon.3, %struct.anon.3* %w, i32 0, i32 0
  store i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)* @stack_param_write, i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)** %write, align 8, !tbaa !5
  %1 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stack_param_list_s* %1 to %struct.iparam_list_s*
  %3 = load %struct.ref_s*, %struct.ref_s** %pwanted.addr, align 8, !tbaa !1
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  call void @ref_param_write_init(%struct.iparam_list_s* %2, %struct.ref_s* %3, %struct.gs_ref_memory_s* %4) #5
  %5 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %enumerate = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %5, i32 0, i32 5
  store i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)* @stack_param_enumerate, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)** %enumerate, align 8, !tbaa !11
  %6 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %7 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %pstack1 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %7, i32 0, i32 9
  store %struct.ref_stack_s* %6, %struct.ref_stack_s** %pstack1, align 8, !tbaa !13
  %8 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %skip = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %8, i32 0, i32 10
  store i32 0, i32* %skip, align 4, !tbaa !14
  %9 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %9, i32 0, i32 7
  store i32 0, i32* %count, align 4, !tbaa !15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @stack_param_write(%struct.iparam_list_s* %plist, %struct.ref_s* %pkey, %struct.ref_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  %splist = alloca %struct.stack_param_list_s*, align 8
  %pstack = alloca %struct.ref_stack_s*, align 8
  %p = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stack_param_list_s** %splist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.iparam_list_s* %1 to %struct.stack_param_list_s*
  store %struct.stack_param_list_s* %2, %struct.stack_param_list_s** %splist, align 8, !tbaa !1
  %3 = bitcast %struct.ref_stack_s** %pstack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %splist, align 8, !tbaa !1
  %pstack1 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %4, i32 0, i32 9
  %5 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack1, align 8, !tbaa !13
  store %struct.ref_stack_s* %5, %struct.ref_stack_s** %pstack, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %7, i32 0, i32 0
  %8 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !16
  store %struct.ref_s* %8, %struct.ref_s** %p, align 8, !tbaa !1
  %9 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %9, i32 0, i32 2
  %10 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !18
  %11 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack, align 8, !tbaa !1
  %call = call i32 @ref_stack_push(%struct.ref_stack_s* %13, i32 2) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %14 = load i32, i32* %code, align 4, !tbaa !19
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %16 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack, align 8, !tbaa !1
  %call5 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %16, i64 1) #5
  %17 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %18 = bitcast %struct.ref_s* %call5 to i8*
  %19 = bitcast %struct.ref_s* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false), !tbaa.struct !20
  %20 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack, align 8, !tbaa !1
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %20, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !16
  store %struct.ref_s* %21, %struct.ref_s** %p, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.8

if.else:                                          ; preds = %entry
  %23 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !1
  %24 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack, align 8, !tbaa !1
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %24, i32 0, i32 0
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p7, align 8, !tbaa !16
  %25 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %26 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %27 = bitcast %struct.ref_s* %arrayidx to i8*
  %28 = bitcast %struct.ref_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false), !tbaa.struct !20
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %cleanup.cont
  %29 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %30 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %31 = bitcast %struct.ref_s* %29 to i8*
  %32 = bitcast %struct.ref_s* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !tbaa.struct !20
  %33 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %splist, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %33, i32 0, i32 7
  %34 = load i32, i32* %count, align 4, !tbaa !15
  %inc = add i32 %34, 1
  store i32 %inc, i32* %count, align 4, !tbaa !15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.9

cleanup.9:                                        ; preds = %if.end.8, %cleanup
  %35 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.ref_stack_s** %pstack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.stack_param_list_s** %splist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal void @ref_param_write_init(%struct.iparam_list_s* %plist, %struct.ref_s* %pwanted, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pwanted.addr = alloca %struct.ref_s*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pwanted, %struct.ref_s** %pwanted.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %1 = bitcast %struct.iparam_list_s* %0 to %struct.gs_param_list_s*
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  call void @gs_param_list_init(%struct.gs_param_list_s* %1, %struct.gs_param_list_procs_s* @ref_write_procs, %struct.gs_memory_s* %3) #5
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %5 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %ref_memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %5, i32 0, i32 3
  store %struct.gs_ref_memory_s* %4, %struct.gs_ref_memory_s** %ref_memory, align 8, !tbaa !26
  %6 = load %struct.ref_s*, %struct.ref_s** %pwanted.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %7, i32 0, i32 4
  %w = bitcast %union.anon.0* %u to %struct.anon.2*
  %wanted = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %wanted, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !28
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %u1 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %8, i32 0, i32 4
  %w2 = bitcast %union.anon.0* %u1 to %struct.anon.2*
  %wanted3 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w2, i32 0, i32 1
  %9 = load %struct.ref_s*, %struct.ref_s** %pwanted.addr, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s* %wanted3 to i8*
  %11 = bitcast %struct.ref_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false), !tbaa.struct !20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %results = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %12, i32 0, i32 6
  store i32* null, i32** %results, align 8, !tbaa !29
  %13 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %int_keys = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %13, i32 0, i32 8
  store i32 0, i32* %int_keys, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @stack_param_enumerate(%struct.iparam_list_s* %plist, %union.gs_param_enumerator_s* %penum, %struct.gs_param_string_s* %key, i32* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %penum.addr = alloca %union.gs_param_enumerator_s*, align 8
  %key.addr = alloca %struct.gs_param_string_s*, align 8
  %type.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  %splist = alloca %struct.stack_param_list_s*, align 8
  %index = alloca i32, align 4
  %stack_element = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %union.gs_param_enumerator_s* %penum, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %key, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  store i32* %type, i32** %type.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.stack_param_list_s** %splist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %3 = bitcast %struct.iparam_list_s* %2 to %struct.stack_param_list_s*
  store %struct.stack_param_list_s* %3, %struct.stack_param_list_s** %splist, align 8, !tbaa !1
  %4 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %intval = bitcast %union.gs_param_enumerator_s* %5 to i32*
  %6 = load i32, i32* %intval, align 4, !tbaa !19
  store i32 %6, i32* %index, align 4, !tbaa !19
  %7 = bitcast %struct.ref_s** %stack_element to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %splist, align 8, !tbaa !1
  %pstack = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %8, i32 0, i32 9
  %9 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack, align 8, !tbaa !13
  %10 = load i32, i32* %index, align 4, !tbaa !19
  %add = add nsw i32 %10, 1
  %11 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %splist, align 8, !tbaa !1
  %skip = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %11, i32 0, i32 10
  %12 = load i32, i32* %skip, align 4, !tbaa !14
  %add1 = add i32 %add, %12
  %conv = zext i32 %add1 to i64
  %call = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %9, i64 %conv) #5
  store %struct.ref_s* %call, %struct.ref_s** %stack_element, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %stack_element, align 8, !tbaa !1
  %tobool = icmp ne %struct.ref_s* %13, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %14 = load i32, i32* %index, align 4, !tbaa !19
  %add2 = add nsw i32 %14, 2
  store i32 %add2, i32* %index, align 4, !tbaa !19
  %15 = load %struct.ref_s*, %struct.ref_s** %stack_element, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %16 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv3 = zext i8 %17 to i32
  %cmp = icmp eq i32 %conv3, 13
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load %struct.ref_s*, %struct.ref_s** %stack_element, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %19 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx7, align 1, !tbaa !31
  %conv8 = zext i8 %20 to i32
  %21 = load i32*, i32** %type.addr, align 8, !tbaa !1
  store i32 %conv8, i32* %21, align 4, !tbaa !31
  %22 = load %struct.ref_s*, %struct.ref_s** %stack_element, align 8, !tbaa !1
  %23 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %24 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %call9 = call i32 @ref_to_key(%struct.ref_s* %22, %struct.gs_param_string_s* %23, %struct.iparam_list_s* %24) #5
  store i32 %call9, i32* %code, align 4, !tbaa !19
  %25 = load i32, i32* %index, align 4, !tbaa !19
  %26 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %intval10 = bitcast %union.gs_param_enumerator_s* %26 to i32*
  store i32 %25, i32* %intval10, align 4, !tbaa !19
  %27 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %28 = bitcast %struct.ref_s** %stack_element to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.stack_param_list_s** %splist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @dict_param_list_write(%struct.dict_param_list_s* %plist, %struct.ref_s* %pdict, %struct.ref_s* %pwanted, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.dict_param_list_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %pwanted.addr = alloca %struct.ref_s*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.dict_param_list_s* %plist, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.ref_s* %pwanted, %struct.ref_s** %pwanted.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %1 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %1, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %2 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %3, i32 0, i32 4
  %w = bitcast %union.anon.5* %u to %struct.anon.7*
  %write = getelementptr inbounds %struct.anon.7, %struct.anon.7* %w, i32 0, i32 0
  store i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)* @dict_param_write, i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)** %write, align 8, !tbaa !5
  %4 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %enumerate = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %4, i32 0, i32 5
  store i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)* @dict_param_enumerate, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)** %enumerate, align 8, !tbaa !32
  %5 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %6 = bitcast %struct.dict_param_list_s* %5 to %struct.iparam_list_s*
  %7 = load %struct.ref_s*, %struct.ref_s** %pwanted.addr, align 8, !tbaa !1
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  call void @ref_param_write_init(%struct.iparam_list_s* %6, %struct.ref_s* %7, %struct.gs_ref_memory_s* %8) #5
  %9 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %9, i32 0, i32 9
  %10 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %11 = bitcast %struct.ref_s* %dict to i8*
  %12 = bitcast %struct.ref_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false), !tbaa.struct !20
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_param_write(%struct.iparam_list_s* %plist, %struct.ref_s* %pkey, %struct.ref_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.iparam_list_s* %1 to %struct.dict_param_list_s*
  %dict = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %2, i32 0, i32 9
  %3 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %call = call i32 @dict_put(%struct.ref_s* %dict, %struct.ref_s* %3, %struct.ref_s* %4, %struct.dict_stack_s* null) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %5 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !19
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 0, %cond.false ]
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_param_enumerate(%struct.iparam_list_s* %plist, %union.gs_param_enumerator_s* %penum, %struct.gs_param_string_s* %key, i32* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %penum.addr = alloca %union.gs_param_enumerator_s*, align 8
  %key.addr = alloca %struct.gs_param_string_s*, align 8
  %type.addr = alloca i32*, align 8
  %elt = alloca [2 x %struct.ref_s], align 16
  %code = alloca i32, align 4
  %pdlist = alloca %struct.dict_param_list_s*, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %union.gs_param_enumerator_s* %penum, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %key, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  store i32* %type, i32** %type.addr, align 8, !tbaa !1
  %0 = bitcast [2 x %struct.ref_s]* %elt to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.dict_param_list_s** %pdlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %4 = bitcast %struct.iparam_list_s* %3 to %struct.dict_param_list_s*
  store %struct.dict_param_list_s* %4, %struct.dict_param_list_s** %pdlist, align 8, !tbaa !1
  %5 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %intval = bitcast %union.gs_param_enumerator_s* %6 to i32*
  %7 = load i32, i32* %intval, align 4, !tbaa !19
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %intval1 = bitcast %union.gs_param_enumerator_s* %8 to i32*
  %9 = load i32, i32* %intval1, align 4, !tbaa !19
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %pdlist, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %10, i32 0, i32 9
  %call = call i32 @dict_first(%struct.ref_s* %dict) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %index, align 4, !tbaa !19
  %11 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %pdlist, align 8, !tbaa !1
  %dict2 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %11, i32 0, i32 9
  %12 = load i32, i32* %index, align 4, !tbaa !19
  %arraydecay = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i32 0
  %call3 = call i32 @dict_next(%struct.ref_s* %dict2, i32 %12, %struct.ref_s* %arraydecay) #5
  store i32 %call3, i32* %index, align 4, !tbaa !19
  %13 = load i32, i32* %index, align 4, !tbaa !19
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %arrayidx = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx5, align 1, !tbaa !31
  %conv = zext i8 %15 to i32
  %16 = load i32*, i32** %type.addr, align 8, !tbaa !1
  store i32 %conv, i32* %16, align 4, !tbaa !31
  %arrayidx6 = getelementptr inbounds [2 x %struct.ref_s], [2 x %struct.ref_s]* %elt, i32 0, i64 0
  %17 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %18 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %call7 = call i32 @ref_to_key(%struct.ref_s* %arrayidx6, %struct.gs_param_string_s* %17, %struct.iparam_list_s* %18) #5
  store i32 %call7, i32* %code, align 4, !tbaa !19
  %19 = load i32, i32* %index, align 4, !tbaa !19
  %20 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %intval8 = bitcast %union.gs_param_enumerator_s* %20 to i32*
  store i32 %19, i32* %intval8, align 4, !tbaa !19
  %21 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.dict_param_list_s** %pdlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast [2 x %struct.ref_s]* %elt to i8*
  call void @llvm.lifetime.end(i64 32, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @array_indexed_param_list_read(%struct.dict_param_list_s* %plist, %struct.ref_s* %parray, %struct.ref_s* %ppolicies, i32 %require_all, %struct.gs_ref_memory_s* %ref_memory) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.dict_param_list_s*, align 8
  %parray.addr = alloca %struct.ref_s*, align 8
  %ppolicies.addr = alloca %struct.ref_s*, align 8
  %require_all.addr = alloca i32, align 4
  %ref_memory.addr = alloca %struct.gs_ref_memory_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.dict_param_list_s* %plist, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %parray, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  store %struct.ref_s* %ppolicies, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  store i32 %require_all, i32* %require_all.addr, align 4, !tbaa !19
  store %struct.gs_ref_memory_s* %ref_memory, %struct.gs_ref_memory_s** %ref_memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.dict_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 1056
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %7 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv4 = zext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 4
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %9 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %10, i32 0, i32 4
  %r = bitcast %union.anon.5* %u to %struct.anon.6*
  %read = getelementptr inbounds %struct.anon.6, %struct.anon.6* %r, i32 0, i32 0
  store i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)* @array_indexed_param_read, i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)** %read, align 8, !tbaa !34
  %11 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %11, i32 0, i32 9
  %12 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %13 = bitcast %struct.ref_s* %dict to i8*
  %14 = bitcast %struct.ref_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false), !tbaa.struct !20
  %15 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !36
  %18 = load %struct.ref_s*, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  %19 = load i32, i32* %require_all.addr, align 4, !tbaa !19
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ref_memory.addr, align 8, !tbaa !1
  %call8 = call i32 @ref_param_read_init(%struct.iparam_list_s* %15, i32 %17, %struct.ref_s* %18, i32 %19, %struct.gs_ref_memory_s* %20) #5
  store i32 %call8, i32* %code, align 4, !tbaa !19
  %21 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %int_keys = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %21, i32 0, i32 8
  store i32 1, i32* %int_keys, align 4, !tbaa !37
  %22 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @array_indexed_param_read(%struct.iparam_list_s* %plist, %struct.ref_s* %pkey, %struct.iparam_loc_s* %ploc) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %ploc.addr = alloca %struct.iparam_loc_s*, align 8
  %arr = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  store %struct.iparam_loc_s* %ploc, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %arr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.iparam_list_s* %1 to %struct.dict_param_list_s*
  %dict = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %2, i32 0, i32 9
  store %struct.ref_s* %dict, %struct.ref_s** %arr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %8 = load i64, i64* %intval, align 8, !tbaa !22
  %cmp2 = icmp slt i64 %8, 0
  br i1 %cmp2, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval5 = bitcast %union.v* %value4 to i64*
  %10 = load i64, i64* %intval5, align 8, !tbaa !22
  %11 = load %struct.ref_s*, %struct.ref_s** %arr, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  %12 = load i32, i32* %rsize, align 4, !tbaa !36
  %conv7 = zext i32 %12 to i64
  %cmp8 = icmp sge i64 %10, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %lor.lhs.false
  %13 = load %struct.ref_s*, %struct.ref_s** %arr, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %refs = bitcast %union.v* %value12 to %struct.ref_s**
  %14 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %intval14 = bitcast %union.v* %value13 to i64*
  %16 = load i64, i64* %intval14, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 %16
  %17 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %17, i32 0, i32 0
  store %struct.ref_s* %add.ptr, %struct.ref_s** %pvalue, align 8, !tbaa !38
  %18 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %intval16 = bitcast %union.v* %value15 to i64*
  %19 = load i64, i64* %intval16, align 8, !tbaa !22
  %20 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %results = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %20, i32 0, i32 6
  %21 = load i32*, i32** %results, align 8, !tbaa !29
  %arrayidx17 = getelementptr inbounds i32, i32* %21, i64 %19
  %22 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %22, i32 0, i32 1
  store i32* %arrayidx17, i32** %presult, align 8, !tbaa !40
  %23 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult18 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %23, i32 0, i32 1
  %24 = load i32*, i32** %presult18, align 8, !tbaa !40
  store i32 1, i32* %24, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %25 = bitcast %struct.ref_s** %arr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_init(%struct.iparam_list_s* %plist, i32 %count, %struct.ref_s* %ppolicies, i32 %require_all, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %count.addr = alloca i32, align 4
  %ppolicies.addr = alloca %struct.ref_s*, align 8
  %require_all.addr = alloca i32, align 4
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !19
  store %struct.ref_s* %ppolicies, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  store i32 %require_all, i32* %require_all.addr, align 4, !tbaa !19
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %1 = bitcast %struct.iparam_list_s* %0 to %struct.gs_param_list_s*
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  call void @gs_param_list_init(%struct.gs_param_list_s* %1, %struct.gs_param_list_procs_s* @ref_read_procs, %struct.gs_memory_s* %3) #5
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %5 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %ref_memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %5, i32 0, i32 3
  store %struct.gs_ref_memory_s* %4, %struct.gs_ref_memory_s** %ref_memory, align 8, !tbaa !26
  %6 = load %struct.ref_s*, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %7, i32 0, i32 4
  %r = bitcast %union.anon.0* %u to %struct.anon.1*
  %policies = getelementptr inbounds %struct.anon.1, %struct.anon.1* %r, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %policies, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !28
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %u1 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %8, i32 0, i32 4
  %r2 = bitcast %union.anon.0* %u1 to %struct.anon.1*
  %policies3 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %r2, i32 0, i32 1
  %9 = load %struct.ref_s*, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s* %policies3 to i8*
  %11 = bitcast %struct.ref_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false), !tbaa.struct !20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %require_all.addr, align 4, !tbaa !19
  %13 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %u4 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %13, i32 0, i32 4
  %r5 = bitcast %union.anon.0* %u4 to %struct.anon.1*
  %require_all6 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %r5, i32 0, i32 2
  store i32 %12, i32* %require_all6, align 4, !tbaa !41
  %14 = load i32, i32* %count.addr, align 4, !tbaa !19
  %15 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %count7 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %15, i32 0, i32 7
  store i32 %14, i32* %count7, align 4, !tbaa !42
  %16 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %16, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %18 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !44
  %19 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %19, i32 0, i32 1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !43
  %21 = load i32, i32* %count.addr, align 4, !tbaa !19
  %call = call i8* %18(%struct.gs_memory_s* %20, i32 %21, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #5
  %22 = bitcast i8* %call to i32*
  %23 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %results = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %23, i32 0, i32 6
  store i32* %22, i32** %results, align 8, !tbaa !29
  %24 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %results9 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %24, i32 0, i32 6
  %25 = load i32*, i32** %results9, align 8, !tbaa !29
  %cmp10 = icmp eq i32* %25, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %26 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %results13 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %26, i32 0, i32 6
  %27 = load i32*, i32** %results13, align 8, !tbaa !29
  %28 = bitcast i32* %27 to i8*
  %29 = load i32, i32* %count.addr, align 4, !tbaa !19
  %conv = zext i32 %29 to i64
  %mul = mul i64 %conv, 4
  %call14 = call i8* @memset(i8* %28, i32 0, i64 %mul) #6
  %30 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %int_keys = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %30, i32 0, i32 8
  store i32 0, i32* %int_keys, align 4, !tbaa !30
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @array_param_list_read(%struct.array_param_list_s* %plist, %struct.ref_s* %bot, i32 %count, %struct.ref_s* %ppolicies, i32 %require_all, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.array_param_list_s*, align 8
  %bot.addr = alloca %struct.ref_s*, align 8
  %count.addr = alloca i32, align 4
  %ppolicies.addr = alloca %struct.ref_s*, align 8
  %require_all.addr = alloca i32, align 4
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.array_param_list_s* %plist, %struct.array_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %bot, %struct.ref_s** %bot.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !19
  store %struct.ref_s* %ppolicies, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  store i32 %require_all, i32* %require_all.addr, align 4, !tbaa !19
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.array_param_list_s*, %struct.array_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.array_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = load i32, i32* %count.addr, align 4, !tbaa !19
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.array_param_list_s*, %struct.array_param_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %4, i32 0, i32 4
  %r = bitcast %union.anon.8* %u to %struct.anon.9*
  %read = getelementptr inbounds %struct.anon.9, %struct.anon.9* %r, i32 0, i32 0
  store i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)* @array_param_read, i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)** %read, align 8, !tbaa !34
  %5 = load %struct.array_param_list_s*, %struct.array_param_list_s** %plist.addr, align 8, !tbaa !1
  %enumerate = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %5, i32 0, i32 5
  store i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)* @array_param_enumerate, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)** %enumerate, align 8, !tbaa !47
  %6 = load %struct.ref_s*, %struct.ref_s** %bot.addr, align 8, !tbaa !1
  %7 = load %struct.array_param_list_s*, %struct.array_param_list_s** %plist.addr, align 8, !tbaa !1
  %bot1 = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %7, i32 0, i32 9
  store %struct.ref_s* %6, %struct.ref_s** %bot1, align 8, !tbaa !49
  %8 = load %struct.ref_s*, %struct.ref_s** %bot.addr, align 8, !tbaa !1
  %9 = load i32, i32* %count.addr, align 4, !tbaa !19
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 %idx.ext
  %10 = load %struct.array_param_list_s*, %struct.array_param_list_s** %plist.addr, align 8, !tbaa !1
  %top = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %10, i32 0, i32 10
  store %struct.ref_s* %add.ptr, %struct.ref_s** %top, align 8, !tbaa !50
  %11 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %12 = load i32, i32* %count.addr, align 4, !tbaa !19
  %13 = load %struct.ref_s*, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  %14 = load i32, i32* %require_all.addr, align 4, !tbaa !19
  %15 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_read_init(%struct.iparam_list_s* %11, i32 %12, %struct.ref_s* %13, i32 %14, %struct.gs_ref_memory_s* %15) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @array_param_read(%struct.iparam_list_s* %plist, %struct.ref_s* %pkey, %struct.iparam_loc_s* %ploc) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %ploc.addr = alloca %struct.iparam_loc_s*, align 8
  %bot = alloca %struct.ref_s*, align 8
  %ptr = alloca %struct.ref_s*, align 8
  %top = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  store %struct.iparam_loc_s* %ploc, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %bot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.iparam_list_s* %1 to %struct.array_param_list_s*
  %bot1 = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %2, i32 0, i32 9
  %3 = load %struct.ref_s*, %struct.ref_s** %bot1, align 8, !tbaa !49
  store %struct.ref_s* %3, %struct.ref_s** %bot, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !1
  store %struct.ref_s* %5, %struct.ref_s** %ptr, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %top to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %8 = bitcast %struct.iparam_list_s* %7 to %struct.array_param_list_s*
  %top2 = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %8, i32 0, i32 10
  %9 = load %struct.ref_s*, %struct.ref_s** %top2, align 8, !tbaa !50
  store %struct.ref_s* %9, %struct.ref_s** %top, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !1
  %cmp = icmp ult %struct.ref_s* %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %14 to i32
  %cmp3 = icmp eq i32 %conv, 13
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  %16 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %17 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %pname6 = bitcast %union.v* %value5 to %struct.name_s**
  %18 = load %struct.name_s*, %struct.name_s** %pname6, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.name_s* %16, %18
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  %20 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %20, i32 0, i32 0
  store %struct.ref_s* %add.ptr, %struct.ref_s** %pvalue, align 8, !tbaa !38
  %21 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %23 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %results = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %23, i32 0, i32 6
  %24 = load i32*, i32** %results, align 8, !tbaa !29
  %arrayidx9 = getelementptr inbounds i32, i32* %24, i64 %sub.ptr.div
  %25 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %25, i32 0, i32 1
  store i32* %arrayidx9, i32** %presult, align 8, !tbaa !40
  %26 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult10 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %26, i32 0, i32 1
  %27 = load i32*, i32** %presult10, align 8, !tbaa !40
  store i32 1, i32* %27, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 2
  store %struct.ref_s* %add.ptr11, %struct.ref_s** %ptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %29 = bitcast %struct.ref_s** %top to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.ref_s** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct.ref_s** %bot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @array_param_enumerate(%struct.iparam_list_s* %plist, %union.gs_param_enumerator_s* %penum, %struct.gs_param_string_s* %key, i32* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %penum.addr = alloca %union.gs_param_enumerator_s*, align 8
  %key.addr = alloca %struct.gs_param_string_s*, align 8
  %type.addr = alloca i32*, align 8
  %index = alloca i32, align 4
  %bot = alloca %struct.ref_s*, align 8
  %ptr = alloca %struct.ref_s*, align 8
  %top = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %union.gs_param_enumerator_s* %penum, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %key, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  store i32* %type, i32** %type.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %intval = bitcast %union.gs_param_enumerator_s* %1 to i32*
  %2 = load i32, i32* %intval, align 4, !tbaa !19
  store i32 %2, i32* %index, align 4, !tbaa !19
  %3 = bitcast %struct.ref_s** %bot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %5 = bitcast %struct.iparam_list_s* %4 to %struct.array_param_list_s*
  %bot1 = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %5, i32 0, i32 9
  %6 = load %struct.ref_s*, %struct.ref_s** %bot1, align 8, !tbaa !49
  store %struct.ref_s* %6, %struct.ref_s** %bot, align 8, !tbaa !1
  %7 = bitcast %struct.ref_s** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !1
  %9 = load i32, i32* %index, align 4, !tbaa !19
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 %idx.ext
  store %struct.ref_s* %add.ptr, %struct.ref_s** %ptr, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s** %top to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %12 = bitcast %struct.iparam_list_s* %11 to %struct.array_param_list_s*
  %top2 = getelementptr inbounds %struct.array_param_list_s, %struct.array_param_list_s* %12, i32 0, i32 10
  %13 = load %struct.ref_s*, %struct.ref_s** %top2, align 8, !tbaa !50
  store %struct.ref_s* %13, %struct.ref_s** %top, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !1
  %cmp = icmp ult %struct.ref_s* %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %index, align 4, !tbaa !19
  %add = add nsw i32 %16, 2
  store i32 %add, i32* %index, align 4, !tbaa !19
  %17 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %18 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %19 to i32
  %cmp3 = icmp eq i32 %conv, 13
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %22 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %23 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @ref_to_key(%struct.ref_s* %21, %struct.gs_param_string_s* %22, %struct.iparam_list_s* %23) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %24 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %25 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx7, align 1, !tbaa !31
  %conv8 = zext i8 %26 to i32
  %27 = load i32*, i32** %type.addr, align 8, !tbaa !1
  store i32 %conv8, i32* %27, align 4, !tbaa !31
  %28 = load i32, i32* %index, align 4, !tbaa !19
  %29 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %intval9 = bitcast %union.gs_param_enumerator_s* %29 to i32*
  store i32 %28, i32* %intval9, align 4, !tbaa !19
  %30 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load %struct.ref_s*, %struct.ref_s** %ptr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 2
  store %struct.ref_s* %add.ptr10, %struct.ref_s** %ptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %33 = bitcast %struct.ref_s** %top to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.ref_s** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.ref_s** %bot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @stack_param_list_read(%struct.stack_param_list_s* %plist, %struct.ref_stack_s* %pstack, i32 %skip, %struct.ref_s* %ppolicies, i32 %require_all, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.stack_param_list_s*, align 8
  %pstack.addr = alloca %struct.ref_stack_s*, align 8
  %skip.addr = alloca i32, align 4
  %ppolicies.addr = alloca %struct.ref_s*, align 8
  %require_all.addr = alloca i32, align 4
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stack_param_list_s* %plist, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_stack_s* %pstack, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  store i32 %skip, i32* %skip.addr, align 4, !tbaa !19
  store %struct.ref_s* %ppolicies, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  store i32 %require_all, i32* %require_all.addr, align 4, !tbaa !19
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stack_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %call = call i32 @ref_stack_counttomark(%struct.ref_stack_s* %4) #5
  store i32 %call, i32* %count, align 4, !tbaa !19
  %5 = load i32, i32* %count, align 4, !tbaa !19
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %skip.addr, align 4, !tbaa !19
  %add = add i32 %6, 1
  %7 = load i32, i32* %count, align 4, !tbaa !19
  %sub = sub i32 %7, %add
  store i32 %sub, i32* %count, align 4, !tbaa !19
  %8 = load i32, i32* %count, align 4, !tbaa !19
  %and = and i32 %8, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %9 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %9, i32 0, i32 4
  %r = bitcast %union.anon* %u to %struct.anon*
  %read = getelementptr inbounds %struct.anon, %struct.anon* %r, i32 0, i32 0
  store i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)* @stack_param_read, i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)** %read, align 8, !tbaa !34
  %10 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %enumerate = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %10, i32 0, i32 5
  store i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)* @stack_param_enumerate, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)** %enumerate, align 8, !tbaa !11
  %11 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack.addr, align 8, !tbaa !1
  %12 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %pstack3 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %12, i32 0, i32 9
  store %struct.ref_stack_s* %11, %struct.ref_stack_s** %pstack3, align 8, !tbaa !13
  %13 = load i32, i32* %skip.addr, align 4, !tbaa !19
  %14 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %plist.addr, align 8, !tbaa !1
  %skip4 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %14, i32 0, i32 10
  store i32 %13, i32* %skip4, align 4, !tbaa !14
  %15 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %16 = load i32, i32* %count, align 4, !tbaa !19
  %shr = lshr i32 %16, 1
  %17 = load %struct.ref_s*, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  %18 = load i32, i32* %require_all.addr, align 4, !tbaa !19
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call5 = call i32 @ref_param_read_init(%struct.iparam_list_s* %15, i32 %shr, %struct.ref_s* %17, i32 %18, %struct.gs_ref_memory_s* %19) #5
  store i32 %call5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.then.1, %if.then
  %20 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @ref_stack_counttomark(%struct.ref_stack_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @stack_param_read(%struct.iparam_list_s* %plist, %struct.ref_s* %pkey, %struct.iparam_loc_s* %ploc) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %ploc.addr = alloca %struct.iparam_loc_s*, align 8
  %splist = alloca %struct.stack_param_list_s*, align 8
  %pstack = alloca %struct.ref_stack_s*, align 8
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  %p = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  store %struct.iparam_loc_s* %ploc, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stack_param_list_s** %splist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.iparam_list_s* %1 to %struct.stack_param_list_s*
  store %struct.stack_param_list_s* %2, %struct.stack_param_list_s** %splist, align 8, !tbaa !1
  %3 = bitcast %struct.ref_stack_s** %pstack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %splist, align 8, !tbaa !1
  %pstack1 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %4, i32 0, i32 9
  %5 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack1, align 8, !tbaa !13
  store %struct.ref_stack_s* %5, %struct.ref_stack_s** %pstack, align 8, !tbaa !1
  %6 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %splist, align 8, !tbaa !1
  %skip = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %7, i32 0, i32 10
  %8 = load i32, i32* %skip, align 4, !tbaa !14
  %add = add i32 %8, 1
  store i32 %add, i32* %index, align 4, !tbaa !19
  %9 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.stack_param_list_s*, %struct.stack_param_list_s** %splist, align 8, !tbaa !1
  %count2 = getelementptr inbounds %struct.stack_param_list_s, %struct.stack_param_list_s* %10, i32 0, i32 7
  %11 = load i32, i32* %count2, align 4, !tbaa !15
  store i32 %11, i32* %count, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %count, align 4, !tbaa !19
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack, align 8, !tbaa !1
  %15 = load i32, i32* %index, align 4, !tbaa !19
  %conv = zext i32 %15 to i64
  %call = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %14, i64 %conv) #5
  store %struct.ref_s* %call, %struct.ref_s** %p, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv3 = zext i8 %18 to i32
  %cmp = icmp eq i32 %conv3, 13
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %19 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %pname = bitcast %union.v* %value to %struct.name_s**
  %20 = load %struct.name_s*, %struct.name_s** %pname, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %pname6 = bitcast %union.v* %value5 to %struct.name_s**
  %22 = load %struct.name_s*, %struct.name_s** %pname6, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.name_s* %20, %22
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %23 = load %struct.ref_stack_s*, %struct.ref_stack_s** %pstack, align 8, !tbaa !1
  %24 = load i32, i32* %index, align 4, !tbaa !19
  %sub = sub i32 %24, 1
  %conv9 = zext i32 %sub to i64
  %call10 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %23, i64 %conv9) #5
  %25 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %25, i32 0, i32 0
  store %struct.ref_s* %call10, %struct.ref_s** %pvalue, align 8, !tbaa !38
  %26 = load i32, i32* %count, align 4, !tbaa !19
  %sub11 = sub i32 %26, 1
  %idxprom = zext i32 %sub11 to i64
  %27 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %results = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %27, i32 0, i32 6
  %28 = load i32*, i32** %results, align 8, !tbaa !29
  %arrayidx12 = getelementptr inbounds i32, i32* %28, i64 %idxprom
  %29 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %29, i32 0, i32 1
  store i32* %arrayidx12, i32** %presult, align 8, !tbaa !40
  %30 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult13 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %30, i32 0, i32 1
  %31 = load i32*, i32** %presult13, align 8, !tbaa !40
  store i32 1, i32* %31, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %32 = bitcast %struct.ref_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %33 = load i32, i32* %count, align 4, !tbaa !19
  %dec = add i32 %33, -1
  store i32 %dec, i32* %count, align 4, !tbaa !19
  %34 = load i32, i32* %index, align 4, !tbaa !19
  %add14 = add i32 %34, 2
  store i32 %add14, i32* %index, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

cleanup.15:                                       ; preds = %for.end, %cleanup
  %35 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.ref_stack_s** %pstack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.stack_param_list_s** %splist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @dict_param_list_read(%struct.dict_param_list_s* %plist, %struct.ref_s* %pdict, %struct.ref_s* %ppolicies, i32 %require_all, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.dict_param_list_s*, align 8
  %pdict.addr = alloca %struct.ref_s*, align 8
  %ppolicies.addr = alloca %struct.ref_s*, align 8
  %require_all.addr = alloca i32, align 4
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.dict_param_list_s* %plist, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pdict, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  store %struct.ref_s* %ppolicies, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  store i32 %require_all, i32* %require_all.addr, align 4, !tbaa !19
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.dict_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.ref_s* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %5, i32 0, i32 4
  %r = bitcast %union.anon.5* %u to %struct.anon.6*
  %read = getelementptr inbounds %struct.anon.6, %struct.anon.6* %r, i32 0, i32 0
  store i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)* @empty_param_read, i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)** %read, align 8, !tbaa !34
  store i32 0, i32* %count, align 4, !tbaa !19
  br label %if.end.6

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %6 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %pdict1 = bitcast %union.v* %value to %struct.dict_s**
  %7 = load %struct.dict_s*, %struct.dict_s** %pdict1, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %7, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %u3 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %9, i32 0, i32 4
  %r4 = bitcast %union.anon.5* %u3 to %struct.anon.6*
  %read5 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %r4, i32 0, i32 0
  store i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)* @dict_param_read, i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)** %read5, align 8, !tbaa !34
  %10 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %10, i32 0, i32 9
  %11 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %12 = bitcast %struct.ref_s* %dict to i8*
  %13 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !20
  %14 = load %struct.ref_s*, %struct.ref_s** %pdict.addr, align 8, !tbaa !1
  %call = call i32 @dict_max_index(%struct.ref_s* %14) #5
  %add = add i32 %call, 1
  store i32 %add, i32* %count, align 4, !tbaa !19
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %if.then
  %15 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %enumerate = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %15, i32 0, i32 5
  store i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)* @dict_param_enumerate, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)** %enumerate, align 8, !tbaa !32
  %16 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %17 = load i32, i32* %count, align 4, !tbaa !19
  %18 = load %struct.ref_s*, %struct.ref_s** %ppolicies.addr, align 8, !tbaa !1
  %19 = load i32, i32* %require_all.addr, align 4, !tbaa !19
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call7 = call i32 @ref_param_read_init(%struct.iparam_list_s* %16, i32 %17, %struct.ref_s* %18, i32 %19, %struct.gs_ref_memory_s* %20) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.2
  %21 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @empty_param_read(%struct.iparam_list_s* %plist, %struct.ref_s* %pkey, %struct.iparam_loc_s* %ploc) #0 {
entry:
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %ploc.addr = alloca %struct.iparam_loc_s*, align 8
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  store %struct.iparam_loc_s* %ploc, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_param_read(%struct.iparam_list_s* %plist, %struct.ref_s* %pkey, %struct.iparam_loc_s* %ploc) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %ploc.addr = alloca %struct.iparam_loc_s*, align 8
  %spdict = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  store %struct.iparam_loc_s* %ploc, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %spdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.iparam_list_s* %1 to %struct.dict_param_list_s*
  %dict = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %2, i32 0, i32 9
  store %struct.ref_s* %dict, %struct.ref_s** %spdict, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %spdict, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %6 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %6, i32 0, i32 0
  %call = call i32 @dict_find(%struct.ref_s* %4, %struct.ref_s* %5, %struct.ref_s** %pvalue) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %7 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp ne i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %spdict, align 8, !tbaa !1
  %9 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue1 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %9, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %pvalue1, align 8, !tbaa !38
  %call2 = call i32 @dict_value_index(%struct.ref_s* %8, %struct.ref_s* %10) #5
  %idxprom = sext i32 %call2 to i64
  %11 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %results = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %11, i32 0, i32 6
  %12 = load i32*, i32** %results, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %13, i32 0, i32 1
  store i32* %arrayidx, i32** %presult, align 8, !tbaa !40
  %14 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult3 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %14, i32 0, i32 1
  %15 = load i32*, i32** %presult3, align 8, !tbaa !40
  store i32 1, i32* %15, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.ref_s** %spdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @dict_max_index(%struct.ref_s*) #2

declare i32 @ref_stack_push(%struct.ref_stack_s*, i32) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

declare void @gs_param_list_init(%struct.gs_param_list_s*, %struct.gs_param_list_procs_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_typed(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_typed_value_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_typed_value_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %value = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_typed_value_s* %pvalue, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %code, align 4, !tbaa !19
  %5 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %5, i32 0, i32 1
  %6 = load i32, i32* %type, align 4, !tbaa !51
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.18
    i32 5, label %sw.bb.23
    i32 6, label %sw.bb.26
    i32 7, label %sw.bb.33
    i32 8, label %sw.bb.38
    i32 9, label %sw.bb.44
    i32 10, label %sw.bb.50
    i32 11, label %sw.bb.56
    i32 12, label %sw.bb.56
    i32 13, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %entry
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !28
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value2 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %7, i32 0, i32 0
  %b = bitcast %union.gs_param_value_s* %value2 to i32*
  %8 = load i32, i32* %b, align 4, !tbaa !19
  %conv = trunc i32 %8 to i16
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %boolval = bitcast %union.v* %value3 to i16*
  store i16 %conv, i16* %boolval, align 2, !tbaa !21
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  store i16 256, i16* %type_attrs5, align 2, !tbaa !28
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %9 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %9, i32 0, i32 0
  %i = bitcast %union.gs_param_value_s* %value7 to i32*
  %10 = load i32, i32* %i, align 4, !tbaa !19
  %conv8 = sext i32 %10 to i64
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %intval = bitcast %union.v* %value9 to i64*
  store i64 %conv8, i64* %intval, align 8, !tbaa !22
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  store i16 2816, i16* %type_attrs11, align 2, !tbaa !28
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %11 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %11, i32 0, i32 0
  %l = bitcast %union.gs_param_value_s* %value13 to i64*
  %12 = load i64, i64* %l, align 8, !tbaa !22
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %intval15 = bitcast %union.v* %value14 to i64*
  store i64 %12, i64* %intval15, align 8, !tbaa !22
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  store i16 2816, i16* %type_attrs17, align 2, !tbaa !28
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %13 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %13, i32 0, i32 0
  %f = bitcast %union.gs_param_value_s* %value19 to float*
  %14 = load float, float* %f, align 4, !tbaa !24
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %realval = bitcast %union.v* %value20 to float*
  store float %14, float* %realval, align 4, !tbaa !24
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs22 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 0
  store i16 4096, i16* %type_attrs22, align 2, !tbaa !28
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_requested(%struct.gs_param_list_s* %15, i8* %16) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.23
  %17 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %17, i32 0, i32 0
  %s = bitcast %union.gs_param_value_s* %value24 to %struct.gs_param_string_s*
  %18 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %ref_memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %18, i32 0, i32 3
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ref_memory, align 8, !tbaa !26
  %call25 = call i32 @ref_param_write_string_value(%struct.ref_s* %value, %struct.gs_param_string_s* %s, %struct.gs_ref_memory_s* %19) #5
  store i32 %call25, i32* %code, align 4, !tbaa !19
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call27 = call i32 @ref_param_requested(%struct.gs_param_list_s* %20, i8* %21) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %sw.bb.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %sw.bb.26
  %22 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %22, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %24 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value31 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %24, i32 0, i32 0
  %n = bitcast %union.gs_param_value_s* %value31 to %struct.gs_param_string_s*
  %call32 = call i32 @ref_param_write_name_value(%struct.gs_memory_s* %23, %struct.ref_s* %value, %struct.gs_param_string_s* %n) #5
  store i32 %call32, i32* %code, align 4, !tbaa !19
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %27 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value34 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %27, i32 0, i32 0
  %ia = bitcast %union.gs_param_value_s* %value34 to %struct.gs_param_int_array_s*
  %28 = bitcast %struct.gs_param_int_array_s* %ia to i8*
  %29 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value35 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %29, i32 0, i32 0
  %ia36 = bitcast %union.gs_param_value_s* %value35 to %struct.gs_param_int_array_s*
  %size = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %ia36, i32 0, i32 1
  %30 = load i32, i32* %size, align 4, !tbaa !53
  %call37 = call i32 @ref_param_write_typed_array(%struct.gs_param_list_s* %25, i8* %26, i8* %28, i32 %30, i32 (%struct.ref_s*, i8*, i32, %struct.gs_ref_memory_s*)* @ref_param_make_int) #5
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.38:                                         ; preds = %entry
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %33 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value39 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %33, i32 0, i32 0
  %fa = bitcast %union.gs_param_value_s* %value39 to %struct.gs_param_float_array_s*
  %34 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  %35 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value40 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %35, i32 0, i32 0
  %fa41 = bitcast %union.gs_param_value_s* %value40 to %struct.gs_param_float_array_s*
  %size42 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa41, i32 0, i32 1
  %36 = load i32, i32* %size42, align 4, !tbaa !55
  %call43 = call i32 @ref_param_write_typed_array(%struct.gs_param_list_s* %31, i8* %32, i8* %34, i32 %36, i32 (%struct.ref_s*, i8*, i32, %struct.gs_ref_memory_s*)* @ref_param_make_float) #5
  store i32 %call43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.44:                                         ; preds = %entry
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %38 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %39 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value45 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %39, i32 0, i32 0
  %sa = bitcast %union.gs_param_value_s* %value45 to %struct.gs_param_string_array_s*
  %40 = bitcast %struct.gs_param_string_array_s* %sa to i8*
  %41 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value46 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %41, i32 0, i32 0
  %sa47 = bitcast %union.gs_param_value_s* %value46 to %struct.gs_param_string_array_s*
  %size48 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sa47, i32 0, i32 1
  %42 = load i32, i32* %size48, align 4, !tbaa !57
  %call49 = call i32 @ref_param_write_typed_array(%struct.gs_param_list_s* %37, i8* %38, i8* %40, i32 %42, i32 (%struct.ref_s*, i8*, i32, %struct.gs_ref_memory_s*)* @ref_param_make_string) #5
  store i32 %call49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.50:                                         ; preds = %entry
  %43 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %44 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %45 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value51 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %45, i32 0, i32 0
  %na = bitcast %union.gs_param_value_s* %value51 to %struct.gs_param_string_array_s*
  %46 = bitcast %struct.gs_param_string_array_s* %na to i8*
  %47 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value52 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %47, i32 0, i32 0
  %na53 = bitcast %union.gs_param_value_s* %value52 to %struct.gs_param_string_array_s*
  %size54 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %na53, i32 0, i32 1
  %48 = load i32, i32* %size54, align 4, !tbaa !57
  %call55 = call i32 @ref_param_write_typed_array(%struct.gs_param_list_s* %43, i8* %44, i8* %46, i32 %48, i32 (%struct.ref_s*, i8*, i32, %struct.gs_ref_memory_s*)* @ref_param_make_name) #5
  store i32 %call55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.56:                                         ; preds = %entry, %entry, %entry
  %49 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %50 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %51 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %51, i32 0, i32 0
  %d = bitcast %union.gs_param_value_s* %value57 to %struct.gs_param_collection_s*
  %52 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type58 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %52, i32 0, i32 1
  %53 = load i32, i32* %type58, align 4, !tbaa !51
  %sub = sub i32 %53, 11
  %call59 = call i32 @ref_param_begin_write_collection(%struct.gs_param_list_s* %49, i8* %50, %struct.gs_param_collection_s* %d, i32 %sub) #5
  store i32 %call59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.30, %if.end, %sw.bb.18, %sw.bb.12, %sw.bb.6, %sw.bb.1, %sw.bb
  %54 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %54, 0
  br i1 %cmp, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %sw.epilog
  %55 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %sw.epilog
  %56 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %57 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call63 = call i32 @ref_param_write(%struct.iparam_list_s* %56, i8* %57, %struct.ref_s* %value) #5
  store i32 %call63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.62, %if.then.61, %sw.default, %sw.bb.56, %sw.bb.50, %sw.bb.44, %sw.bb.38, %sw.bb.33, %if.then.29, %if.then
  %58 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast %struct.ref_s* %value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %59) #1
  %60 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_begin_write_collection(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_collection_s* %pvalue, i32 %coll_type) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_collection_s*, align 8
  %coll_type.addr = alloca i32, align 4
  %iplist = alloca %struct.iparam_list_s*, align 8
  %imem = alloca %struct.gs_ref_memory_s*, align 8
  %dlist = alloca %struct.dict_param_list_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dref = alloca %struct.ref_s, align 8
  %aref = alloca %struct.ref_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pvalue, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %coll_type, i32* %coll_type.addr, align 4, !tbaa !31
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %ref_memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %4, i32 0, i32 3
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ref_memory, align 8, !tbaa !26
  store %struct.gs_ref_memory_s* %5, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %6 = bitcast %struct.dict_param_list_s** %dlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !59
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !61
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %10, i32 0, i32 1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !59
  %call = call i8* %9(%struct.gs_memory_s* %11, i32 104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #5
  %12 = bitcast i8* %call to %struct.dict_param_list_s*
  store %struct.dict_param_list_s* %12, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %cmp = icmp eq %struct.dict_param_list_s* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %coll_type.addr, align 4, !tbaa !31
  %cmp2 = icmp ne i32 %15, 2
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %16 = bitcast %struct.ref_s* %dref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #1
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %18 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %18, i32 0, i32 1
  %19 = load i32, i32* %size, align 4, !tbaa !62
  %call4 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %17, i32 %19, %struct.ref_s* %dref) #5
  store i32 %call4, i32* %code, align 4, !tbaa !19
  %20 = load i32, i32* %code, align 4, !tbaa !19
  %cmp5 = icmp sge i32 %20, 0
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.then.3
  %21 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call7 = call i32 @dict_param_list_write(%struct.dict_param_list_s* %21, %struct.ref_s* %dref, %struct.ref_s* null, %struct.gs_ref_memory_s* %22) #5
  store i32 %call7, i32* %code, align 4, !tbaa !19
  %23 = load i32, i32* %coll_type.addr, align 4, !tbaa !31
  %cmp8 = icmp eq i32 %23, 1
  %conv = zext i1 %cmp8 to i32
  %24 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %int_keys = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %24, i32 0, i32 8
  store i32 %conv, i32* %int_keys, align 4, !tbaa !37
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.then.3
  %25 = bitcast %struct.ref_s* %dref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #1
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %26 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %26) #1
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %28 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %size10 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %28, i32 0, i32 1
  %29 = load i32, i32* %size10, align 4, !tbaa !62
  %call11 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %27, %struct.ref_s* %aref, i32 112, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #5
  store i32 %call11, i32* %code, align 4, !tbaa !19
  %30 = load i32, i32* %code, align 4, !tbaa !19
  %cmp12 = icmp sge i32 %30, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.else
  %31 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %32 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem, align 8, !tbaa !1
  %call15 = call i32 @array_new_indexed_plist_write(%struct.dict_param_list_s* %31, %struct.ref_s* %aref, %struct.ref_s* null, %struct.gs_ref_memory_s* %32) #5
  store i32 %call15, i32* %code, align 4, !tbaa !19
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.else
  %33 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.9
  %34 = load i32, i32* %code, align 4, !tbaa !19
  %cmp18 = icmp slt i32 %34, 0
  br i1 %cmp18, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %if.end.17
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %35, i32 0, i32 1
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !59
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %38, i32 0, i32 1
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !59
  %40 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %41 = bitcast %struct.dict_param_list_s* %40 to i8*
  call void %37(%struct.gs_memory_s* %39, i8* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %if.end.25

if.else.24:                                       ; preds = %if.end.17
  %42 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %43 = bitcast %struct.dict_param_list_s* %42 to %struct.gs_param_list_s*
  %44 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %44, i32 0, i32 0
  store %struct.gs_param_list_s* %43, %struct.gs_param_list_s** %list, align 8, !tbaa !65
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.20
  %45 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast %struct.dict_param_list_s** %dlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.gs_ref_memory_s** %imem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_end_write_collection(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_collection_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_collection_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pvalue, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %5 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %6, i32 0, i32 0
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !65
  %8 = bitcast %struct.gs_param_list_s* %7 to %struct.dict_param_list_s*
  %dict = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %8, i32 0, i32 9
  %call = call i32 @ref_param_write(%struct.iparam_list_s* %4, i8* %5, %struct.ref_s* %dict) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %9, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !59
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %12, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !59
  %14 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list2 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %14, i32 0, i32 0
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list2, align 8, !tbaa !65
  %16 = bitcast %struct.gs_param_list_s* %15 to i8*
  call void %11(%struct.gs_memory_s* %13, i8* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #5
  %17 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list3 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %17, i32 0, i32 0
  store %struct.gs_param_list_s* null, %struct.gs_param_list_s** %list3, align 8, !tbaa !65
  %18 = load i32, i32* %code, align 4, !tbaa !19
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_get_next_key(%struct.gs_param_list_s* %plist, %union.gs_param_enumerator_s* %penum, %struct.gs_param_string_s* %key) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %penum.addr = alloca %union.gs_param_enumerator_s*, align 8
  %key.addr = alloca %struct.gs_param_string_s*, align 8
  %keytype = alloca i32, align 4
  %pilist = alloca %struct.iparam_list_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %union.gs_param_enumerator_s* %penum, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %key, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %0 = bitcast i32* %keytype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.iparam_list_s** %pilist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_param_list_s* %2 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %3, %struct.iparam_list_s** %pilist, align 8, !tbaa !1
  %4 = load %struct.iparam_list_s*, %struct.iparam_list_s** %pilist, align 8, !tbaa !1
  %enumerate = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %4, i32 0, i32 5
  %5 = load i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)** %enumerate, align 8, !tbaa !66
  %6 = load %struct.iparam_list_s*, %struct.iparam_list_s** %pilist, align 8, !tbaa !1
  %7 = load %union.gs_param_enumerator_s*, %union.gs_param_enumerator_s** %penum.addr, align 8, !tbaa !1
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %call = call i32 %5(%struct.iparam_list_s* %6, %union.gs_param_enumerator_s* %7, %struct.gs_param_string_s* %8, i32* %keytype) #5
  %9 = bitcast %struct.iparam_list_s** %pilist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = bitcast i32* %keytype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_requested(%struct.gs_param_list_s* %plist, i8* %pkey) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %ciplist = alloca %struct.iparam_list_s*, align 8
  %kref = alloca %struct.ref_s, align 8
  %ignore_value = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %ciplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %ciplist, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %kref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.ref_s** %ignore_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.iparam_list_s*, %struct.iparam_list_s** %ciplist, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %5, i32 0, i32 4
  %w = bitcast %union.anon.0* %u to %struct.anon.2*
  %wanted = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %wanted, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.iparam_list_s*, %struct.iparam_list_s** %ciplist, align 8, !tbaa !1
  %9 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_key(%struct.iparam_list_s* %8, i8* %9, %struct.ref_s* %kref) #5
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.iparam_list_s*, %struct.iparam_list_s** %ciplist, align 8, !tbaa !1
  %u6 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %10, i32 0, i32 4
  %w7 = bitcast %union.anon.0* %u6 to %struct.anon.2*
  %wanted8 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w7, i32 0, i32 1
  %call9 = call i32 @dict_find(%struct.ref_s* %wanted8, %struct.ref_s* %kref, %struct.ref_s** %ignore_value) #5
  %cmp10 = icmp sgt i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  store i32 %conv11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %11 = bitcast %struct.ref_s** %ignore_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.ref_s* %kref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %12) #1
  %13 = bitcast %struct.iparam_list_s** %ciplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_string_value(%struct.ref_s* %pref, %struct.gs_param_string_s* %pvalue, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_s*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  %pdata = alloca i8*, align 8
  %n = alloca i32, align 4
  %pstr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pvalue, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8, !tbaa !67
  store i8* %2, i8** %pdata, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4, !tbaa !69
  store i32 %5, i32* %n, align 4, !tbaa !19
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i32 0, i32 2
  %7 = load i32, i32* %persistent, align 4, !tbaa !70
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %pdata, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  store i8* %8, i8** %const_bytes, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !28
  %11 = load i32, i32* %n, align 4, !tbaa !19
  %12 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  store i32 %11, i32* %rsize, align 4, !tbaa !36
  br label %if.end.11

if.else:                                          ; preds = %entry
  %13 = bitcast i8** %pstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %16 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !71
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %19 = load i32, i32* %n, align 4, !tbaa !19
  %call = call i8* %16(%struct.gs_memory_s* %18, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #5
  store i8* %call, i8** %pstr, align 8, !tbaa !1
  %20 = load i8*, i8** %pstr, align 8, !tbaa !1
  %cmp = icmp eq i8* %20, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %21 = load i8*, i8** %pstr, align 8, !tbaa !1
  %22 = load i8*, i8** %pdata, align 8, !tbaa !1
  %23 = load i32, i32* %n, align 4, !tbaa !19
  %conv = zext i32 %23 to i64
  %call3 = call i8* @memcpy(i8* %21, i8* %22, i64 %conv) #6
  %24 = load i8*, i8** %pstr, align 8, !tbaa !1
  %25 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %bytes = bitcast %union.v* %value4 to i8**
  store i8* %24, i8** %bytes, align 8, !tbaa !1
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call5 = call i32 @imemory_space(%struct.gs_ref_memory_s* %26) #5
  %or = or i32 96, %call5
  %add = add i32 4608, %or
  %conv6 = trunc i32 %add to i16
  %27 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs8 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 0
  store i16 %conv6, i16* %type_attrs8, align 2, !tbaa !28
  %28 = load i32, i32* %n, align 4, !tbaa !19
  %29 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %rsize10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  store i32 %28, i32* %rsize10, align 4, !tbaa !36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %30 = bitcast i8** %pstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.11

if.end.11:                                        ; preds = %cleanup.cont, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %if.end.11, %cleanup
  %31 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_name_value(%struct.gs_memory_s* %mem, %struct.ref_s* %pref, %struct.gs_param_string_s* %pvalue) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pref.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pvalue, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 2
  %1 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !72
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %1, i32 0, i32 16
  %2 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !73
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8, !tbaa !67
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !69
  %7 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %8 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %8, i32 0, i32 2
  %9 = load i32, i32* %persistent, align 4, !tbaa !70
  %tobool = icmp ne i32 %9, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %call = call i32 @names_ref(%struct.name_table_s* %2, i8* %4, i32 %6, %struct.ref_s* %7, i32 %cond) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_typed_array(%struct.gs_param_list_s* %plist, i8* %pkey, i8* %pvalue, i32 %count, i32 (%struct.ref_s*, i8*, i32, %struct.gs_ref_memory_s*)* %make) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %make.addr = alloca i32 (%struct.ref_s*, i8*, i32, %struct.gs_ref_memory_s*)*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %value = alloca %struct.ref_s, align 8
  %i = alloca i32, align 4
  %pe = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i8* %pvalue, i8** %pvalue.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !19
  store i32 (%struct.ref_s*, i8*, i32, %struct.gs_ref_memory_s*)* %make, i32 (%struct.ref_s*, i8*, i32, %struct.gs_ref_memory_s*)** %make.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.ref_s** %pe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %9 = load i32, i32* %count.addr, align 4, !tbaa !19
  %call = call i32 @ref_array_param_requested(%struct.iparam_list_s* %7, i8* %8, %struct.ref_s* %value, i32 %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !19
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs = bitcast %union.v* %value1 to %struct.ref_s**
  %11 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %11, %struct.ref_s** %pe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !19
  %13 = load i32, i32* %count.addr, align 4, !tbaa !19
  %cmp2 = icmp ult i32 %12, %13
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32 (%struct.ref_s*, i8*, i32, %struct.gs_ref_memory_s*)*, i32 (%struct.ref_s*, i8*, i32, %struct.gs_ref_memory_s*)** %make.addr, align 8, !tbaa !1
  %15 = load %struct.ref_s*, %struct.ref_s** %pe, align 8, !tbaa !1
  %16 = load i8*, i8** %pvalue.addr, align 8, !tbaa !1
  %17 = load i32, i32* %i, align 4, !tbaa !19
  %18 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %ref_memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %18, i32 0, i32 3
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ref_memory, align 8, !tbaa !26
  %call3 = call i32 %14(%struct.ref_s* %15, i8* %16, i32 %17, %struct.gs_ref_memory_s* %19) #5
  store i32 %call3, i32* %code, align 4, !tbaa !19
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %20 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  %22 = load %struct.ref_s*, %struct.ref_s** %pe, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %pe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %24 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call7 = call i32 @ref_param_write(%struct.iparam_list_s* %23, i8* %24, %struct.ref_s* %value) #5
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.5, %if.then
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.ref_s** %pe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.ref_s* %value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
  %29 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_make_int(%struct.ref_s* %pe, i8* %pvalue, i32 %i, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %pe.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.ref_s* %pe, %struct.ref_s** %pe.addr, align 8, !tbaa !1
  store i8* %pvalue, i8** %pvalue.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !19
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom = zext i32 %0 to i64
  %1 = load i8*, i8** %pvalue.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_param_int_array_s*
  %data = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %2, i32 0, i32 0
  %3 = load i32*, i32** %data, align 8, !tbaa !75
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !19
  %conv = sext i32 %4 to i64
  %5 = load %struct.ref_s*, %struct.ref_s** %pe.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !22
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %6) #5
  %add = add i32 2816, %call
  %conv1 = trunc i32 %add to i16
  %7 = load %struct.ref_s*, %struct.ref_s** %pe.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv1, i16* %type_attrs, align 2, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_make_float(%struct.ref_s* %pe, i8* %pvalue, i32 %i, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %pe.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.ref_s* %pe, %struct.ref_s** %pe.addr, align 8, !tbaa !1
  store i8* %pvalue, i8** %pvalue.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !19
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom = zext i32 %0 to i64
  %1 = load i8*, i8** %pvalue.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_param_float_array_s*
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %2, i32 0, i32 0
  %3 = load float*, float** %data, align 8, !tbaa !76
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4, !tbaa !24
  %5 = load %struct.ref_s*, %struct.ref_s** %pe.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  store float %4, float* %realval, align 4, !tbaa !24
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %6) #5
  %add = add i32 4096, %call
  %conv = trunc i32 %add to i16
  %7 = load %struct.ref_s*, %struct.ref_s** %pe.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_make_string(%struct.ref_s* %pe, i8* %pvalue, i32 %i, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %pe.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.ref_s* %pe, %struct.ref_s** %pe.addr, align 8, !tbaa !1
  store i8* %pvalue, i8** %pvalue.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !19
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %pe.addr, align 8, !tbaa !1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom = zext i32 %1 to i64
  %2 = load i8*, i8** %pvalue.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.gs_param_string_array_s*
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %3, i32 0, i32 0
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !77
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i64 %idxprom
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_write_string_value(%struct.ref_s* %0, %struct.gs_param_string_s* %arrayidx, %struct.gs_ref_memory_s* %5) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_make_name(%struct.ref_s* %pe, i8* %pvalue, i32 %i, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %pe.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.ref_s* %pe, %struct.ref_s** %pe.addr, align 8, !tbaa !1
  store i8* %pvalue, i8** %pvalue.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !19
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_ref_memory_s* %0 to %struct.gs_memory_s*
  %2 = load %struct.ref_s*, %struct.ref_s** %pe.addr, align 8, !tbaa !1
  %3 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom = zext i32 %3 to i64
  %4 = load i8*, i8** %pvalue.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gs_param_string_array_s*
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %5, i32 0, i32 0
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data, align 8, !tbaa !77
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i64 %idxprom
  %call = call i32 @ref_param_write_name_value(%struct.gs_memory_s* %1, %struct.ref_s* %2, %struct.gs_param_string_s* %arrayidx) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write(%struct.iparam_list_s* %plist, i8* %pkey, %struct.ref_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  %kref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %kref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %3 = bitcast %struct.iparam_list_s* %2 to %struct.gs_param_list_s*
  %4 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_requested(%struct.gs_param_list_s* %3, i8* %4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call1 = call i32 @ref_param_key(%struct.iparam_list_s* %5, i8* %6, %struct.ref_s* %kref) #5
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %7 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %9 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %9, i32 0, i32 4
  %w = bitcast %union.anon.0* %u to %struct.anon.2*
  %write = getelementptr inbounds %struct.anon.2, %struct.anon.2* %w, i32 0, i32 0
  %10 = load i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)*, i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)** %write, align 8, !tbaa !5
  %11 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %12 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %call4 = call i32 %10(%struct.iparam_list_s* %11, %struct.ref_s* %kref, %struct.ref_s* %12) #5
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s* %kref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #2

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @ref_array_param_requested(%struct.iparam_list_s* %iplist, i8* %pkey, %struct.ref_s* %pvalue, i32 %size, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %iplist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %iplist, %struct.iparam_list_s** %iplist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.iparam_list_s* %1 to %struct.gs_param_list_s*
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_requested(%struct.gs_param_list_s* %2, i8* %3) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist.addr, align 8, !tbaa !1
  %ref_memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %4, i32 0, i32 3
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ref_memory, align 8, !tbaa !26
  %6 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !19
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %5, %struct.ref_s* %6, i32 112, i32 %7, i8* %8) #5
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %9 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !19
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

declare i32 @imemory_new_mask(%struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_key(%struct.iparam_list_s* %plist, i8* %pkey, %struct.ref_s* %pkref) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pkref.addr = alloca %struct.ref_s*, align 8
  %key = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.ref_s* %pkref, %struct.ref_s** %pkref.addr, align 8, !tbaa !1
  %0 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %int_keys = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %0, i32 0, i32 8
  %1 = load i32, i32* %int_keys, align 4, !tbaa !30
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast i64* %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64* %key) #6
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = load i64, i64* %key, align 8, !tbaa !22
  %5 = load %struct.ref_s*, %struct.ref_s** %pkref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %4, i64* %intval, align 8, !tbaa !22
  %6 = load %struct.ref_s*, %struct.ref_s** %pkref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.1
  %7 = bitcast i64* %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 2
  %10 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !72
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %10, i32 0, i32 16
  %11 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !73
  %12 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %13) #7
  %conv = trunc i64 %call2 to i32
  %14 = load %struct.ref_s*, %struct.ref_s** %pkref.addr, align 8, !tbaa !1
  %call3 = call i32 @names_ref(%struct.name_table_s* %11, i8* %12, i32 %conv, %struct.ref_s* %14, i32 0) #5
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %cleanup
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @dict_alloc(%struct.gs_ref_memory_s*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @array_new_indexed_plist_write(%struct.dict_param_list_s* %plist, %struct.ref_s* %parray, %struct.ref_s* %pwanted, %struct.gs_ref_memory_s* %imem) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.dict_param_list_s*, align 8
  %parray.addr = alloca %struct.ref_s*, align 8
  %pwanted.addr = alloca %struct.ref_s*, align 8
  %imem.addr = alloca %struct.gs_ref_memory_s*, align 8
  store %struct.dict_param_list_s* %plist, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.ref_s* %parray, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  store %struct.ref_s* %pwanted, %struct.ref_s** %pwanted.addr, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %imem, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %3 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %3) #5
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %4 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %5 = load i16, i16* %type_attrs4, align 2, !tbaa !28
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %do.body.2
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %do.body.2
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %6 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %6, i32 0, i32 4
  %w = bitcast %union.anon.5* %u to %struct.anon.7*
  %write = getelementptr inbounds %struct.anon.7, %struct.anon.7* %w, i32 0, i32 0
  store i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)* @array_new_indexed_param_write, i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.ref_s*)** %write, align 8, !tbaa !5
  %7 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = bitcast %struct.dict_param_list_s* %7 to %struct.iparam_list_s*
  %9 = load %struct.ref_s*, %struct.ref_s** %pwanted.addr, align 8, !tbaa !1
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %imem.addr, align 8, !tbaa !1
  call void @ref_param_write_init(%struct.iparam_list_s* %8, %struct.ref_s* %9, %struct.gs_ref_memory_s* %10) #5
  %11 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %dict = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %11, i32 0, i32 9
  %12 = load %struct.ref_s*, %struct.ref_s** %parray.addr, align 8, !tbaa !1
  %13 = bitcast %struct.ref_s* %dict to i8*
  %14 = bitcast %struct.ref_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false), !tbaa.struct !20
  %15 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %plist.addr, align 8, !tbaa !1
  %int_keys = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %15, i32 0, i32 8
  store i32 1, i32* %int_keys, align 4, !tbaa !37
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.8, %if.then.6, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @array_new_indexed_param_write(%struct.iparam_list_s* %iplist, %struct.ref_s* %pkey, %struct.ref_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %iplist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca %struct.ref_s*, align 8
  %pvalue.addr = alloca %struct.ref_s*, align 8
  %arr = alloca %struct.ref_s*, align 8
  %eltp = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %iplist, %struct.iparam_list_s** %iplist.addr, align 8, !tbaa !1
  store %struct.ref_s* %pkey, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  store %struct.ref_s* %pvalue, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %arr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.iparam_list_s* %1 to %struct.dict_param_list_s*
  %dict = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %2, i32 0, i32 9
  store %struct.ref_s* %dict, %struct.ref_s** %arr, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %eltp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %8 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx4, align 1, !tbaa !31
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 11
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %10) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %do.body
  %11 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %12 = load i64, i64* %intval, align 8, !tbaa !22
  %13 = load %struct.ref_s*, %struct.ref_s** %arr, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 2
  %14 = load i32, i32* %rsize, align 4, !tbaa !36
  %conv11 = zext i32 %14 to i64
  %cmp12 = icmp uge i64 %12, %conv11
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs17 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 0
  %16 = load i16, i16* %type_attrs17, align 2, !tbaa !28
  %conv18 = zext i16 %16 to i32
  %and = and i32 %conv18, 12
  %17 = load %struct.ref_s*, %struct.ref_s** %arr, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %18 = load i16, i16* %type_attrs20, align 2, !tbaa !28
  %conv21 = zext i16 %18 to i32
  %and22 = and i32 %conv21, 12
  %cmp23 = icmp ugt i32 %and, %and22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %do.end
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %do.end
  %19 = load %struct.ref_s*, %struct.ref_s** %arr, align 8, !tbaa !1
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %refs = bitcast %union.v* %value27 to %struct.ref_s**
  %20 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %21 = load %struct.ref_s*, %struct.ref_s** %pkey.addr, align 8, !tbaa !1
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %22 = load i64, i64* %intval29, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 %22
  store %struct.ref_s* %add.ptr, %struct.ref_s** %eltp, align 8, !tbaa !1
  %23 = load %struct.ref_s*, %struct.ref_s** %eltp, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %pvalue.addr, align 8, !tbaa !1
  %25 = bitcast %struct.ref_s* %23 to i8*
  %26 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !tbaa.struct !20
  %27 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist.addr, align 8, !tbaa !1
  %ref_memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %27, i32 0, i32 3
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ref_memory, align 8, !tbaa !26
  %call30 = call i32 @imemory_new_mask(%struct.gs_ref_memory_s* %28) #5
  %29 = load %struct.ref_s*, %struct.ref_s** %eltp, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  %30 = load i16, i16* %type_attrs32, align 2, !tbaa !28
  %conv33 = zext i16 %30 to i32
  %or = or i32 %conv33, %call30
  %conv34 = trunc i32 %or to i16
  store i16 %conv34, i16* %type_attrs32, align 2, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25, %if.then.14, %if.then.8, %if.then
  %31 = bitcast %struct.ref_s** %eltp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.ref_s** %arr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @ref_to_key(%struct.ref_s* %pref, %struct.gs_param_string_s* %key, %struct.iparam_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %pref.addr = alloca %struct.ref_s*, align 8
  %key.addr = alloca %struct.gs_param_string_s*, align 8
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %nref = alloca %struct.ref_s, align 8
  %istr = alloca [23 x i8], align 16
  %len = alloca i32, align 4
  %buf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %pref, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %key, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 2
  %6 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !72
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %6, i32 0, i32 16
  %7 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !73
  %8 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %7, %struct.ref_s* %8, %struct.ref_s* %nref) #5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %9 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %10 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %10, i32 0, i32 0
  store i8* %9, i8** %data, align 8, !tbaa !67
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !36
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 1
  store i32 %11, i32* %size, align 4, !tbaa !69
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !70
  %14 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %14) #1
  br label %if.end.25

if.else:                                          ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %16 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx5, align 1, !tbaa !31
  %conv6 = zext i8 %17 to i32
  %cmp7 = icmp eq i32 %conv6, 11
  br i1 %cmp7, label %if.then.9, label %if.else.23

if.then.9:                                        ; preds = %if.else
  %18 = bitcast [23 x i8]* %istr to i8*
  call void @llvm.lifetime.start(i64 23, i8* %18) #1
  %19 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %arraydecay = getelementptr inbounds [23 x i8], [23 x i8]* %istr, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %pref.addr, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %intval = bitcast %union.v* %value10 to i64*
  %22 = load i64, i64* %intval, align 8, !tbaa !22
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 %22) #5
  %arraydecay11 = getelementptr inbounds [23 x i8], [23 x i8]* %istr, i32 0, i32 0
  %call12 = call i64 @strlen(i8* %arraydecay11) #7
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, i32* %len, align 4, !tbaa !19
  %23 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %23, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !43
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %25 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !71
  %26 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %26, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !43
  %28 = load i32, i32* %len, align 4, !tbaa !19
  %call16 = call i8* %25(%struct.gs_memory_s* %27, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #5
  store i8* %call16, i8** %buf, align 8, !tbaa !1
  %29 = load i8*, i8** %buf, align 8, !tbaa !1
  %tobool = icmp ne i8* %29, null
  br i1 %tobool, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %if.then.9
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.9
  %30 = load i8*, i8** %buf, align 8, !tbaa !1
  %31 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %data18 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %31, i32 0, i32 0
  store i8* %30, i8** %data18, align 8, !tbaa !67
  %32 = load i32, i32* %len, align 4, !tbaa !19
  %33 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %size19 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %33, i32 0, i32 1
  store i32 %32, i32* %size19, align 4, !tbaa !69
  %34 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %key.addr, align 8, !tbaa !1
  %persistent20 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %34, i32 0, i32 2
  store i32 1, i32* %persistent20, align 4, !tbaa !70
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.17
  %35 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast [23 x i8]* %istr to i8*
  call void @llvm.lifetime.end(i64 23, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.else.23:                                       ; preds = %if.else
  store i32 -20, i32* %retval
  br label %return

if.end.24:                                        ; preds = %cleanup.cont
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else.23, %cleanup
  %38 = load i32, i32* %retval
  ret i32 %38

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare i32 @dict_put(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.dict_stack_s*) #2

declare i32 @dict_first(%struct.ref_s*) #2

declare i32 @dict_next(%struct.ref_s*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_typed(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_typed_value_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_typed_value_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %loc = alloca %struct.iparam_loc_s, align 8
  %elt = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %enumr = alloca %union.gs_param_enumerator_s, align 8
  %key = alloca %struct.gs_param_string_s, align 8
  %keytype = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_typed_value_s* %pvalue, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %7 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_read(%struct.iparam_list_s* %6, i8* %7, %struct.iparam_loc_s* %loc, i32 -1) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %8 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %pvalue1 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %pvalue1, align 8, !tbaa !38
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %12 to i32
  switch i32 %conv, label %sw.default.93 [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 1, label %sw.bb.43
    i32 2, label %sw.bb.49
    i32 11, label %sw.bb.71
    i32 13, label %sw.bb.76
    i32 14, label %sw.bb.81
    i32 16, label %sw.bb.83
    i32 18, label %sw.bb.88
    i32 9, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %pvalue2 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %pvalue2, align 8, !tbaa !38
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %14 = load i16, i16* %type_attrs4, align 2, !tbaa !28
  %conv5 = zext i16 %14 to i32
  %and = and i32 %conv5, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %sw.bb
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 1
  %15 = load i32*, i32** %presult, align 8, !tbaa !40
  store i32 -7, i32* %15, align 4, !tbaa !19
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %sw.bb
  %pvalue8 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %pvalue8, align 8, !tbaa !38
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %17 = load i32, i32* %rsize, align 4, !tbaa !36
  %cmp10 = icmp ule i32 %17, 0
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.7
  %18 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %18, i32 0, i32 1
  store i32 13, i32* %type, align 4, !tbaa !51
  %19 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %19, i32 0, i32 0
  %d = bitcast %union.gs_param_value_s* %value to %struct.gs_param_collection_s*
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d, i32 0, i32 0
  store %struct.gs_param_list_s* null, %struct.gs_param_list_s** %list, align 8, !tbaa !65
  %20 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %20, i32 0, i32 0
  %d14 = bitcast %union.gs_param_value_s* %value13 to %struct.gs_param_collection_s*
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d14, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !62
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.7
  %21 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %21, i32 0, i32 1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !59
  %pvalue16 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %pvalue16, align 8, !tbaa !38
  %call17 = call i32 @array_get(%struct.gs_memory_s* %22, %struct.ref_s* %23, i64 0, %struct.ref_s* %elt) #5
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  %24 = bitcast i16* %type_attrs19 to i8*
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx20, align 1, !tbaa !31
  %conv21 = zext i8 %25 to i32
  switch i32 %conv21, label %sw.default [
    i32 11, label %sw.bb.22
    i32 16, label %sw.bb.31
    i32 18, label %sw.bb.35
    i32 13, label %sw.bb.39
  ]

sw.bb.22:                                         ; preds = %if.end.15
  %26 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type23 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %26, i32 0, i32 1
  store i32 7, i32* %type23, align 4, !tbaa !51
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %29 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %29, i32 0, i32 0
  %ia = bitcast %union.gs_param_value_s* %value24 to %struct.gs_param_int_array_s*
  %call25 = call i32 @ref_param_read_int_array(%struct.gs_param_list_s* %27, i8* %28, %struct.gs_param_int_array_s* %ia) #5
  store i32 %call25, i32* %code, align 4, !tbaa !19
  %30 = load i32, i32* %code, align 4, !tbaa !19
  %cmp26 = icmp ne i32 %30, -20
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.22
  %31 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %sw.bb.22
  %presult30 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 1
  %32 = load i32*, i32** %presult30, align 8, !tbaa !40
  store i32 0, i32* %32, align 4, !tbaa !19
  br label %sw.bb.31

sw.bb.31:                                         ; preds = %if.end.15, %if.end.29
  %33 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type32 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %33, i32 0, i32 1
  store i32 8, i32* %type32, align 4, !tbaa !51
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %36 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value33 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %36, i32 0, i32 0
  %fa = bitcast %union.gs_param_value_s* %value33 to %struct.gs_param_float_array_s*
  %call34 = call i32 @ref_param_read_float_array(%struct.gs_param_list_s* %34, i8* %35, %struct.gs_param_float_array_s* %fa) #5
  store i32 %call34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.35:                                         ; preds = %if.end.15
  %37 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type36 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %37, i32 0, i32 1
  store i32 9, i32* %type36, align 4, !tbaa !51
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %40 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %40, i32 0, i32 0
  %sa = bitcast %union.gs_param_value_s* %value37 to %struct.gs_param_string_array_s*
  %call38 = call i32 @ref_param_read_string_array(%struct.gs_param_list_s* %38, i8* %39, %struct.gs_param_string_array_s* %sa) #5
  store i32 %call38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.39:                                         ; preds = %if.end.15
  %41 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type40 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %41, i32 0, i32 1
  store i32 10, i32* %type40, align 4, !tbaa !51
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %43 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %44 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value41 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %44, i32 0, i32 0
  %na = bitcast %union.gs_param_value_s* %value41 to %struct.gs_param_string_array_s*
  %call42 = call i32 @ref_param_read_string_array(%struct.gs_param_list_s* %42, i8* %43, %struct.gs_param_string_array_s* %na) #5
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end.15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.43:                                         ; preds = %if.end
  %45 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type44 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %45, i32 0, i32 1
  store i32 1, i32* %type44, align 4, !tbaa !51
  %pvalue45 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %pvalue45, align 8, !tbaa !38
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  %boolval = bitcast %union.v* %value46 to i16*
  %47 = load i16, i16* %boolval, align 2, !tbaa !21
  %conv47 = zext i16 %47 to i32
  %48 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value48 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %48, i32 0, i32 0
  %b = bitcast %union.gs_param_value_s* %value48 to i32*
  store i32 %conv47, i32* %b, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.49:                                         ; preds = %if.end
  %49 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %50 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %51 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value50 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %51, i32 0, i32 0
  %d51 = bitcast %union.gs_param_value_s* %value50 to %struct.gs_param_collection_s*
  %call52 = call i32 @ref_param_begin_read_collection(%struct.gs_param_list_s* %49, i8* %50, %struct.gs_param_collection_s* %d51, i32 0) #5
  store i32 %call52, i32* %code, align 4, !tbaa !19
  %52 = load i32, i32* %code, align 4, !tbaa !19
  %cmp53 = icmp slt i32 %52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %sw.bb.49
  %53 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %sw.bb.49
  %54 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type57 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %54, i32 0, i32 1
  store i32 11, i32* %type57, align 4, !tbaa !51
  %55 = bitcast %union.gs_param_enumerator_s* %enumr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.start(i64 16, i8* %56) #1
  %57 = bitcast i32* %keytype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  call void @param_init_enumerator(%union.gs_param_enumerator_s* %enumr) #5
  %58 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %59 = bitcast %struct.gs_param_list_s* %58 to %struct.iparam_list_s*
  %enumerate = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %59, i32 0, i32 5
  %60 = load i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)*, i32 (%struct.iparam_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*, i32*)** %enumerate, align 8, !tbaa !66
  %61 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value58 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %61, i32 0, i32 0
  %d59 = bitcast %union.gs_param_value_s* %value58 to %struct.gs_param_collection_s*
  %list60 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d59, i32 0, i32 0
  %62 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list60, align 8, !tbaa !65
  %63 = bitcast %struct.gs_param_list_s* %62 to %struct.iparam_list_s*
  %call61 = call i32 %60(%struct.iparam_list_s* %63, %union.gs_param_enumerator_s* %enumr, %struct.gs_param_string_s* %key, i32* %keytype) #5
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.70, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.56
  %64 = load i32, i32* %keytype, align 4, !tbaa !31
  %cmp63 = icmp eq i32 %64, 11
  br i1 %cmp63, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %land.lhs.true
  %65 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value66 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %65, i32 0, i32 0
  %d67 = bitcast %union.gs_param_value_s* %value66 to %struct.gs_param_collection_s*
  %list68 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %d67, i32 0, i32 0
  %66 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list68, align 8, !tbaa !65
  %67 = bitcast %struct.gs_param_list_s* %66 to %struct.dict_param_list_s*
  %int_keys = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %67, i32 0, i32 8
  store i32 1, i32* %int_keys, align 4, !tbaa !37
  %68 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type69 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %68, i32 0, i32 1
  store i32 12, i32* %type69, align 4, !tbaa !51
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %land.lhs.true, %if.end.56
  %69 = bitcast i32* %keytype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.gs_param_string_s* %key to i8*
  call void @llvm.lifetime.end(i64 16, i8* %70) #1
  %71 = bitcast %union.gs_param_enumerator_s* %enumr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.71:                                         ; preds = %if.end
  %72 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type72 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %72, i32 0, i32 1
  store i32 3, i32* %type72, align 4, !tbaa !51
  %pvalue73 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %73 = load %struct.ref_s*, %struct.ref_s** %pvalue73, align 8, !tbaa !38
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 1
  %intval = bitcast %union.v* %value74 to i64*
  %74 = load i64, i64* %intval, align 8, !tbaa !22
  %75 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value75 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %75, i32 0, i32 0
  %l = bitcast %union.gs_param_value_s* %value75 to i64*
  store i64 %74, i64* %l, align 8, !tbaa !22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.76:                                         ; preds = %if.end
  %76 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type77 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %76, i32 0, i32 1
  store i32 6, i32* %type77, align 4, !tbaa !51
  %77 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory78 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %77, i32 0, i32 1
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory78, align 8, !tbaa !59
  %79 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value79 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %79, i32 0, i32 0
  %n = bitcast %union.gs_param_value_s* %value79 to %struct.gs_param_string_s*
  %call80 = call i32 @ref_param_read_string_value(%struct.gs_memory_s* %78, %struct.iparam_loc_s* %loc, %struct.gs_param_string_s* %n) #5
  store i32 %call80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.81:                                         ; preds = %if.end
  %80 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type82 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %80, i32 0, i32 1
  store i32 0, i32* %type82, align 4, !tbaa !51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.83:                                         ; preds = %if.end
  %pvalue84 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %81 = load %struct.ref_s*, %struct.ref_s** %pvalue84, align 8, !tbaa !38
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 1
  %realval = bitcast %union.v* %value85 to float*
  %82 = load float, float* %realval, align 4, !tbaa !24
  %83 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value86 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %83, i32 0, i32 0
  %f = bitcast %union.gs_param_value_s* %value86 to float*
  store float %82, float* %f, align 4, !tbaa !24
  %84 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type87 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %84, i32 0, i32 1
  store i32 4, i32* %type87, align 4, !tbaa !51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.88:                                         ; preds = %if.end, %if.end
  %85 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %type89 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %85, i32 0, i32 1
  store i32 5, i32* %type89, align 4, !tbaa !51
  %86 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory90 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %86, i32 0, i32 1
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory90, align 8, !tbaa !59
  %88 = load %struct.gs_param_typed_value_s*, %struct.gs_param_typed_value_s** %pvalue.addr, align 8, !tbaa !1
  %value91 = getelementptr inbounds %struct.gs_param_typed_value_s, %struct.gs_param_typed_value_s* %88, i32 0, i32 0
  %s = bitcast %union.gs_param_value_s* %value91 to %struct.gs_param_string_s*
  %call92 = call i32 @ref_param_read_string_value(%struct.gs_memory_s* %87, %struct.iparam_loc_s* %loc, %struct.gs_param_string_s* %s) #5
  store i32 %call92, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.93:                                    ; preds = %if.end
  br label %sw.epilog.94

sw.epilog.94:                                     ; preds = %sw.default.93
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.94, %sw.bb.88, %sw.bb.83, %sw.bb.81, %sw.bb.76, %sw.bb.71, %if.end.70, %if.then.55, %sw.bb.43, %sw.epilog, %sw.bb.39, %sw.bb.35, %sw.bb.31, %if.then.28, %if.then.12, %if.then.6, %if.then
  %89 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %90) #1
  %91 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %91) #1
  %92 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_begin_read_collection(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_collection_s* %pvalue, i32 %coll_type) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_collection_s*, align 8
  %coll_type.addr = alloca i32, align 4
  %iplist = alloca %struct.iparam_list_s*, align 8
  %loc = alloca %struct.iparam_loc_s, align 8
  %int_keys = alloca i32, align 4
  %code = alloca i32, align 4
  %dlist = alloca %struct.dict_param_list_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pvalue, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %coll_type, i32* %coll_type.addr, align 4, !tbaa !31
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %int_keys to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %coll_type.addr, align 4, !tbaa !31
  %cmp = icmp ne i32 %5, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %int_keys, align 4, !tbaa !19
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_read(%struct.iparam_list_s* %7, i8* %8, %struct.iparam_loc_s* %loc, i32 -1) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %9 = bitcast %struct.dict_param_list_s** %dlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %code, align 4, !tbaa !19
  %cmp1 = icmp ne i32 %10, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %12, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !59
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %14 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !61
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %15, i32 0, i32 1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !59
  %call4 = call i8* %14(%struct.gs_memory_s* %16, i32 104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0)) #5
  %17 = bitcast i8* %call4 to %struct.dict_param_list_s*
  store %struct.dict_param_list_s* %17, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %18 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.dict_param_list_s* %18, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %pvalue9 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %pvalue9, align 8, !tbaa !38
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %20 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv10 = zext i8 %21 to i32
  %cmp11 = icmp eq i32 %conv10, 2
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.8
  %22 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %pvalue14 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %pvalue14, align 8, !tbaa !38
  %24 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %ref_memory = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %24, i32 0, i32 3
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ref_memory, align 8, !tbaa !26
  %call15 = call i32 @dict_param_list_read(%struct.dict_param_list_s* %22, %struct.ref_s* %23, %struct.ref_s* null, i32 0, %struct.gs_ref_memory_s* %25) #5
  store i32 %call15, i32* %code, align 4, !tbaa !19
  %26 = load i32, i32* %int_keys, align 4, !tbaa !19
  %27 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %int_keys16 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %27, i32 0, i32 8
  store i32 %26, i32* %int_keys16, align 4, !tbaa !37
  %28 = load i32, i32* %code, align 4, !tbaa !19
  %cmp17 = icmp sge i32 %28, 0
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.13
  %pvalue20 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %pvalue20, align 8, !tbaa !38
  %call21 = call i32 @dict_length(%struct.ref_s* %29) #5
  %30 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %30, i32 0, i32 1
  store i32 %call21, i32* %size, align 4, !tbaa !62
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.13
  br label %if.end.42

if.else:                                          ; preds = %if.end.8
  %31 = load i32, i32* %int_keys, align 4, !tbaa !19
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.40

land.lhs.true:                                    ; preds = %if.else
  %pvalue23 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %pvalue23, align 8, !tbaa !38
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  %33 = load i16, i16* %type_attrs25, align 2, !tbaa !28
  %conv26 = zext i16 %33 to i32
  %and = and i32 %conv26, 15360
  %cmp27 = icmp eq i32 %and, 1024
  br i1 %cmp27, label %if.then.29, label %if.else.40

if.then.29:                                       ; preds = %land.lhs.true
  %34 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %pvalue30 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %35 = load %struct.ref_s*, %struct.ref_s** %pvalue30, align 8, !tbaa !38
  %36 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %ref_memory31 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %36, i32 0, i32 3
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %ref_memory31, align 8, !tbaa !26
  %call32 = call i32 @array_indexed_param_list_read(%struct.dict_param_list_s* %34, %struct.ref_s* %35, %struct.ref_s* null, i32 0, %struct.gs_ref_memory_s* %37) #5
  store i32 %call32, i32* %code, align 4, !tbaa !19
  %38 = load i32, i32* %code, align 4, !tbaa !19
  %cmp33 = icmp sge i32 %38, 0
  br i1 %cmp33, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.then.29
  %pvalue36 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %39 = load %struct.ref_s*, %struct.ref_s** %pvalue36, align 8, !tbaa !38
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 2
  %40 = load i32, i32* %rsize, align 4, !tbaa !36
  %41 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %size38 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %41, i32 0, i32 1
  store i32 %40, i32* %size38, align 4, !tbaa !62
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.then.29
  br label %if.end.41

if.else.40:                                       ; preds = %land.lhs.true, %if.else
  store i32 -20, i32* %code, align 4, !tbaa !19
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end.39
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.22
  %42 = load i32, i32* %code, align 4, !tbaa !19
  %cmp43 = icmp slt i32 %42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %if.end.42
  %43 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory46 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %43, i32 0, i32 1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory46, align 8, !tbaa !59
  %procs47 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs47, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory48 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %46, i32 0, i32 1
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory48, align 8, !tbaa !59
  %48 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %49 = bitcast %struct.dict_param_list_s* %48 to i8*
  call void %45(%struct.gs_memory_s* %47, i8* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #5
  %50 = load i32, i32* %code, align 4, !tbaa !19
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 1
  %51 = load i32*, i32** %presult, align 8, !tbaa !40
  store i32 %50, i32* %51, align 4, !tbaa !19
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.end.42
  %52 = load %struct.dict_param_list_s*, %struct.dict_param_list_s** %dlist, align 8, !tbaa !1
  %53 = bitcast %struct.dict_param_list_s* %52 to %struct.gs_param_list_s*
  %54 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %54, i32 0, i32 0
  store %struct.gs_param_list_s* %53, %struct.gs_param_list_s** %list, align 8, !tbaa !65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.45, %if.then.7, %if.then
  %55 = bitcast %struct.dict_param_list_s** %dlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %int_keys to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #1
  %59 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_end_read_collection(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_collection_s* %pvalue) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_collection_s*, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pvalue, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %0, i32 0, i32 0
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !65
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.dict_param_list_s*
  %memory = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !78
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %4 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %5 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list1 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %5, i32 0, i32 0
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list1, align 8, !tbaa !65
  %7 = bitcast %struct.gs_param_list_s* %6 to %struct.dict_param_list_s*
  %memory2 = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !78
  %9 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list3 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list3, align 8, !tbaa !65
  %11 = bitcast %struct.gs_param_list_s* %10 to %struct.dict_param_list_s*
  %results = getelementptr inbounds %struct.dict_param_list_s, %struct.dict_param_list_s* %11, i32 0, i32 6
  %12 = load i32*, i32** %results, align 8, !tbaa !79
  %13 = bitcast i32* %12 to i8*
  call void %4(%struct.gs_memory_s* %8, i8* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0)) #5
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %14, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !59
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object6, align 8, !tbaa !64
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %17, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !59
  %19 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pvalue.addr, align 8, !tbaa !1
  %list8 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %19, i32 0, i32 0
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list8, align 8, !tbaa !65
  %21 = bitcast %struct.gs_param_list_s* %20 to i8*
  call void %16(%struct.gs_memory_s* %18, i8* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0)) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_get_policy(%struct.gs_param_list_s* %plist, i8* %pkey) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %4, i32 0, i32 4
  %r = bitcast %union.anon.0* %u to %struct.anon.1*
  %policies = getelementptr inbounds %struct.anon.1, %struct.anon.1* %r, i32 0, i32 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %policies, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %u2 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %7, i32 0, i32 4
  %r3 = bitcast %union.anon.0* %u2 to %struct.anon.1*
  %policies4 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %r3, i32 0, i32 1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %policies4, i8* %8, %struct.ref_s** %pvalue) #5
  %cmp5 = icmp sgt i32 %call, 0
  br i1 %cmp5, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %9 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %10 = bitcast i16* %type_attrs9 to i8*
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx10, align 1, !tbaa !31
  %conv11 = zext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 11
  br i1 %cmp12, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true, %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.7
  %12 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %13 = load i64, i64* %intval, align 8, !tbaa !22
  %conv14 = trunc i64 %13 to i32
  store i32 %conv14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_signal_error(%struct.gs_param_list_s* %plist, i8* %pkey, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %code.addr = alloca i32, align 4
  %iplist = alloca %struct.iparam_list_s*, align 8
  %loc = alloca %struct.iparam_loc_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !19
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %5 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_read(%struct.iparam_list_s* %4, i8* %5, %struct.iparam_loc_s* %loc, i32 -1) #5
  %6 = load i32, i32* %code.addr, align 4, !tbaa !19
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 1
  %7 = load i32*, i32** %presult, align 8, !tbaa !40
  store i32 %6, i32* %7, align 4, !tbaa !19
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call1 = call i32 @ref_param_read_get_policy(%struct.gs_param_list_s* %8, i8* %9) #5
  switch i32 %call1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.2:                                          ; preds = %entry
  store i32 -26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %10 = load i32, i32* %code.addr, align 4, !tbaa !19
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb.2, %sw.bb
  %11 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #1
  %12 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_commit(%struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %i = alloca i32, align 4
  %ecode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %ecode, align 4, !tbaa !19
  %5 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %5, i32 0, i32 4
  %r = bitcast %union.anon.0* %u to %struct.anon.1*
  %require_all = getelementptr inbounds %struct.anon.1, %struct.anon.1* %r, i32 0, i32 2
  %6 = load i32, i32* %require_all, align 4, !tbaa !41
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4, !tbaa !19
  %8 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %8, i32 0, i32 7
  %9 = load i32, i32* %count, align 4, !tbaa !42
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %results = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %11, i32 0, i32 6
  %12 = load i32*, i32** %results, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !19
  %cmp1 = icmp eq i32 %13, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %for.body
  store i32 -21, i32* %ecode, align 4, !tbaa !19
  %14 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom3 = sext i32 %14 to i64
  %15 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %results4 = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %15, i32 0, i32 6
  %16 = load i32*, i32** %results4, align 8, !tbaa !29
  %arrayidx5 = getelementptr inbounds i32, i32* %16, i64 %idxprom3
  store i32 -21, i32* %arrayidx5, align 4, !tbaa !19
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %17 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %ecode, align 4, !tbaa !19
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %19 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read(%struct.iparam_list_s* %plist, i8* %pkey, %struct.iparam_loc_s* %ploc, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %ploc.addr = alloca %struct.iparam_loc_s*, align 8
  %type.addr = alloca i32, align 4
  %iplist = alloca %struct.iparam_list_s*, align 8
  %kref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.iparam_loc_s* %ploc, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !19
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.iparam_list_s* %1, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %2 = bitcast %struct.ref_s* %kref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_key(%struct.iparam_list_s* %4, i8* %5, %struct.ref_s* %kref) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %6 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.iparam_list_s, %struct.iparam_list_s* %8, i32 0, i32 4
  %r = bitcast %union.anon.0* %u to %struct.anon.1*
  %read = getelementptr inbounds %struct.anon.1, %struct.anon.1* %r, i32 0, i32 0
  %read1 = bitcast {}** %read to i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)**
  %9 = load i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)*, i32 (%struct.iparam_list_s*, %struct.ref_s*, %struct.iparam_loc_s*)** %read1, align 8, !tbaa !34
  %10 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %11 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %call2 = call i32 %9(%struct.iparam_list_s* %10, %struct.ref_s* %kref, %struct.iparam_loc_s* %11) #5
  store i32 %call2, i32* %code, align 4, !tbaa !19
  %12 = load i32, i32* %code, align 4, !tbaa !19
  %cmp3 = icmp ne i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %14 = load i32, i32* %type.addr, align 4, !tbaa !19
  %cmp6 = icmp sge i32 %14, 0
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.5
  %15 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %15, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !38
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %17 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %18 to i32
  %19 = load i32, i32* %type.addr, align 4, !tbaa !19
  %cmp8 = icmp eq i32 %conv, %19
  br i1 %cmp8, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  %20 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %20, i32 0, i32 1
  %21 = load i32*, i32** %presult, align 8, !tbaa !40
  store i32 -20, i32* %21, align 4, !tbaa !19
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.10, %if.then.4, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.ref_s* %kref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #1
  %24 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_int_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_int_array_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_int_array_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %loc = alloca %struct.iparam_loc_s, align 8
  %code = alloca i32, align 4
  %piv = alloca i32*, align 8
  %size = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %elt = alloca %struct.ref_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_int_array_s* %pvalue, %struct.gs_param_int_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %6 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_read_array(%struct.iparam_list_s* %5, i8* %6, %struct.iparam_loc_s* %loc) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %7 = bitcast i32** %piv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28

if.end:                                           ; preds = %entry
  %pvalue1 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %pvalue1, align 8, !tbaa !38
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %13 = load i32, i32* %rsize, align 4, !tbaa !36
  store i32 %13, i32* %size, align 4, !tbaa !19
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %14, i32 0, i32 1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !59
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %16 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !44
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %17, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !59
  %19 = load i32, i32* %size, align 4, !tbaa !19
  %call3 = call i8* %16(%struct.gs_memory_s* %18, i32 %19, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #5
  %20 = bitcast i8* %call3 to i32*
  store i32* %20, i32** %piv, align 8, !tbaa !1
  %21 = load i32*, i32** %piv, align 8, !tbaa !1
  %cmp4 = icmp eq i32* %21, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28

if.end.6:                                         ; preds = %if.end
  store i64 0, i64* %i, align 8, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %22 = load i64, i64* %i, align 8, !tbaa !22
  %23 = load i32, i32* %size, align 4, !tbaa !19
  %conv = zext i32 %23 to i64
  %cmp7 = icmp slt i64 %22, %conv
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %25, i32 0, i32 1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !59
  %pvalue10 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %27 = load %struct.ref_s*, %struct.ref_s** %pvalue10, align 8, !tbaa !38
  %28 = load i64, i64* %i, align 8, !tbaa !22
  %call11 = call i32 @array_get(%struct.gs_memory_s* %26, %struct.ref_s* %27, i64 %28, %struct.ref_s* %elt) #5
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %29 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv13 = zext i8 %30 to i32
  %cmp14 = icmp eq i32 %conv13, 11
  br i1 %cmp14, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.body
  store i32 -20, i32* %code, align 4, !tbaa !19
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %for.body
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %elt, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %31 = load i64, i64* %intval, align 8, !tbaa !22
  %conv18 = trunc i64 %31 to i32
  %32 = load i64, i64* %i, align 8, !tbaa !22
  %33 = load i32*, i32** %piv, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i32, i32* %33, i64 %32
  store i32 %conv18, i32* %arrayidx19, align 4, !tbaa !19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16
  %34 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %35 = load i64, i64* %i, align 8, !tbaa !22
  %inc = add nsw i64 %35, 1
  store i64 %inc, i64* %i, align 8, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %36 = load i32, i32* %code, align 4, !tbaa !19
  %cmp20 = icmp slt i32 %36, 0
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %for.end
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory23 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %37, i32 0, i32 1
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !59
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 2
  %39 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %40, i32 0, i32 1
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory25, align 8, !tbaa !59
  %42 = load i32*, i32** %piv, align 8, !tbaa !1
  %43 = bitcast i32* %42 to i8*
  call void %39(%struct.gs_memory_s* %41, i8* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #5
  %44 = load i32, i32* %code, align 4, !tbaa !19
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 1
  %45 = load i32*, i32** %presult, align 8, !tbaa !40
  store i32 %44, i32* %45, align 4, !tbaa !19
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28

if.end.26:                                        ; preds = %for.end
  %46 = load i32*, i32** %piv, align 8, !tbaa !1
  %47 = load %struct.gs_param_int_array_s*, %struct.gs_param_int_array_s** %pvalue.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %47, i32 0, i32 0
  store i32* %46, i32** %data, align 8, !tbaa !75
  %48 = load i32, i32* %size, align 4, !tbaa !19
  %49 = load %struct.gs_param_int_array_s*, %struct.gs_param_int_array_s** %pvalue.addr, align 8, !tbaa !1
  %size27 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %49, i32 0, i32 1
  store i32 %48, i32* %size27, align 4, !tbaa !53
  %50 = load %struct.gs_param_int_array_s*, %struct.gs_param_int_array_s** %pvalue.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %50, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !80
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28

cleanup.28:                                       ; preds = %if.end.26, %if.then.22, %if.then.5, %if.then
  %51 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32** %piv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %55) #1
  %56 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_float_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_float_array_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_float_array_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %loc = alloca %struct.iparam_loc_s, align 8
  %aref = alloca %struct.ref_s, align 8
  %elt = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %pfv = alloca float*, align 8
  %size = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_float_array_s* %pvalue, %struct.gs_param_float_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %8 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_read_array(%struct.iparam_list_s* %7, i8* %8, %struct.iparam_loc_s* %loc) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %9 = bitcast float** %pfv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %pvalue1 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %pvalue1, align 8, !tbaa !38
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %15 = load i32, i32* %rsize, align 4, !tbaa !36
  store i32 %15, i32* %size, align 4, !tbaa !19
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %16, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !59
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %18 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !44
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %19, i32 0, i32 1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !59
  %21 = load i32, i32* %size, align 4, !tbaa !19
  %call3 = call i8* %18(%struct.gs_memory_s* %20, i32 %21, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #5
  %22 = bitcast i8* %call3 to float*
  store float* %22, float** %pfv, align 8, !tbaa !1
  %23 = load float*, float** %pfv, align 8, !tbaa !1
  %cmp4 = icmp eq float* %23, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %pvalue7 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %pvalue7, align 8, !tbaa !38
  %25 = bitcast %struct.ref_s* %aref to i8*
  %26 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !tbaa.struct !20
  %pvalue8 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  store %struct.ref_s* %elt, %struct.ref_s** %pvalue8, align 8, !tbaa !38
  store i64 0, i64* %i, align 8, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %27 = load i32, i32* %code, align 4, !tbaa !19
  %cmp9 = icmp sge i32 %27, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %28 = load i64, i64* %i, align 8, !tbaa !22
  %29 = load i32, i32* %size, align 4, !tbaa !19
  %conv = zext i32 %29 to i64
  %cmp10 = icmp slt i64 %28, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %30 = phi i1 [ false, %for.cond ], [ %cmp10, %land.rhs ]
  br i1 %30, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %31, i32 0, i32 1
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !59
  %33 = load i64, i64* %i, align 8, !tbaa !22
  %call13 = call i32 @array_get(%struct.gs_memory_s* %32, %struct.ref_s* %aref, i64 %33, %struct.ref_s* %elt) #5
  %34 = load float*, float** %pfv, align 8, !tbaa !1
  %35 = load i64, i64* %i, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds float, float* %34, i64 %35
  %call14 = call i32 @float_param(%struct.ref_s* %elt, float* %add.ptr) #5
  store i32 %call14, i32* %code, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i64, i64* %i, align 8, !tbaa !22
  %inc = add nsw i64 %36, 1
  store i64 %inc, i64* %i, align 8, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %land.end
  %37 = load i32, i32* %code, align 4, !tbaa !19
  %cmp15 = icmp slt i32 %37, 0
  br i1 %cmp15, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %for.end
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %38, i32 0, i32 1
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !59
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %41, i32 0, i32 1
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !59
  %43 = load float*, float** %pfv, align 8, !tbaa !1
  %44 = bitcast float* %43 to i8*
  call void %40(%struct.gs_memory_s* %42, i8* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0)) #5
  %45 = load i32, i32* %code, align 4, !tbaa !19
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 1
  %46 = load i32*, i32** %presult, align 8, !tbaa !40
  store i32 %45, i32* %46, align 4, !tbaa !19
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %for.end
  %47 = load float*, float** %pfv, align 8, !tbaa !1
  %48 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pvalue.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %48, i32 0, i32 0
  store float* %47, float** %data, align 8, !tbaa !76
  %49 = load i32, i32* %size, align 4, !tbaa !19
  %50 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pvalue.addr, align 8, !tbaa !1
  %size22 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %50, i32 0, i32 1
  store i32 %49, i32* %size22, align 4, !tbaa !55
  %51 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pvalue.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %51, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !81
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.17, %if.then.5, %if.then
  %52 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast float** %pfv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #1
  %57 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %57) #1
  %58 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #1
  %59 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_string_array(%struct.gs_param_list_s* %plist, i8* %pkey, %struct.gs_param_string_array_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_array_s*, align 8
  %iplist = alloca %struct.iparam_list_s*, align 8
  %loc = alloca %struct.iparam_loc_s, align 8
  %aref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %psv = alloca %struct.gs_param_string_s*, align 8
  %size = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %elt = alloca %struct.ref_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.gs_param_string_array_s* %pvalue, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_param_list_s* %1 to %struct.iparam_list_s*
  store %struct.iparam_list_s* %2, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %3 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.iparam_list_s*, %struct.iparam_list_s** %iplist, align 8, !tbaa !1
  %7 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_read_array(%struct.iparam_list_s* %6, i8* %7, %struct.iparam_loc_s* %loc) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %8 = bitcast %struct.gs_param_string_s** %psv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %pvalue1 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %13 = load %struct.ref_s*, %struct.ref_s** %pvalue1, align 8, !tbaa !38
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %14 = load i32, i32* %rsize, align 4, !tbaa !36
  store i32 %14, i32* %size, align 4, !tbaa !19
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %15, i32 0, i32 1
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !59
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %17 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !44
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %18, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !59
  %20 = load i32, i32* %size, align 4, !tbaa !19
  %call3 = call i8* %17(%struct.gs_memory_s* %19, i32 %20, i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)) #5
  %21 = bitcast i8* %call3 to %struct.gs_param_string_s*
  store %struct.gs_param_string_s* %21, %struct.gs_param_string_s** %psv, align 8, !tbaa !1
  %22 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psv, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.gs_param_string_s* %22, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %pvalue7 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  %23 = load %struct.ref_s*, %struct.ref_s** %pvalue7, align 8, !tbaa !38
  %24 = bitcast %struct.ref_s* %aref to i8*
  %25 = bitcast %struct.ref_s* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false), !tbaa.struct !20
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %26 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %27 to i32
  %cmp9 = icmp eq i32 %conv, 4
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.6
  store i64 0, i64* %i, align 8, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %28 = load i32, i32* %code, align 4, !tbaa !19
  %cmp12 = icmp sge i32 %28, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %29 = load i64, i64* %i, align 8, !tbaa !22
  %30 = load i32, i32* %size, align 4, !tbaa !19
  %conv14 = zext i32 %30 to i64
  %cmp15 = icmp slt i64 %29, %conv14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %31 = phi i1 [ false, %for.cond ], [ %cmp15, %land.rhs ]
  br i1 %31, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %aref, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %32 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %33 = load i64, i64* %i, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 %33
  %pvalue17 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  store %struct.ref_s* %add.ptr, %struct.ref_s** %pvalue17, align 8, !tbaa !38
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %34, i32 0, i32 1
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !59
  %36 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psv, align 8, !tbaa !1
  %37 = load i64, i64* %i, align 8, !tbaa !22
  %add.ptr19 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %36, i64 %37
  %call20 = call i32 @ref_param_read_string_value(%struct.gs_memory_s* %35, %struct.iparam_loc_s* %loc, %struct.gs_param_string_s* %add.ptr19) #5
  store i32 %call20, i32* %code, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i64, i64* %i, align 8, !tbaa !22
  %inc = add nsw i64 %38, 1
  store i64 %inc, i64* %i, align 8, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.39

if.else:                                          ; preds = %if.end.6
  %39 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %39) #1
  %pvalue21 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 0
  store %struct.ref_s* %elt, %struct.ref_s** %pvalue21, align 8, !tbaa !38
  store i64 0, i64* %i, align 8, !tbaa !22
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.36, %if.else
  %40 = load i32, i32* %code, align 4, !tbaa !19
  %cmp23 = icmp sge i32 %40, 0
  br i1 %cmp23, label %land.rhs.25, label %land.end.29

land.rhs.25:                                      ; preds = %for.cond.22
  %41 = load i64, i64* %i, align 8, !tbaa !22
  %42 = load i32, i32* %size, align 4, !tbaa !19
  %conv26 = zext i32 %42 to i64
  %cmp27 = icmp slt i64 %41, %conv26
  br label %land.end.29

land.end.29:                                      ; preds = %land.rhs.25, %for.cond.22
  %43 = phi i1 [ false, %for.cond.22 ], [ %cmp27, %land.rhs.25 ]
  br i1 %43, label %for.body.30, label %for.end.38

for.body.30:                                      ; preds = %land.end.29
  %44 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %44, i32 0, i32 1
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !59
  %46 = load i64, i64* %i, align 8, !tbaa !22
  %call32 = call i32 @array_get(%struct.gs_memory_s* %45, %struct.ref_s* %aref, i64 %46, %struct.ref_s* %elt) #5
  %47 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %47, i32 0, i32 1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory33, align 8, !tbaa !59
  %49 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psv, align 8, !tbaa !1
  %50 = load i64, i64* %i, align 8, !tbaa !22
  %add.ptr34 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %49, i64 %50
  %call35 = call i32 @ref_param_read_string_value(%struct.gs_memory_s* %48, %struct.iparam_loc_s* %loc, %struct.gs_param_string_s* %add.ptr34) #5
  store i32 %call35, i32* %code, align 4, !tbaa !19
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.30
  %51 = load i64, i64* %i, align 8, !tbaa !22
  %inc37 = add nsw i64 %51, 1
  store i64 %inc37, i64* %i, align 8, !tbaa !22
  br label %for.cond.22

for.end.38:                                       ; preds = %land.end.29
  %52 = bitcast %struct.ref_s* %elt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %52) #1
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %for.end
  %53 = load i32, i32* %code, align 4, !tbaa !19
  %cmp40 = icmp slt i32 %53, 0
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.39
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %54, i32 0, i32 1
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !59
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 2
  %56 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !64
  %57 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %57, i32 0, i32 1
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory45, align 8, !tbaa !59
  %59 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psv, align 8, !tbaa !1
  %60 = bitcast %struct.gs_param_string_s* %59 to i8*
  call void %56(%struct.gs_memory_s* %58, i8* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)) #5
  %61 = load i32, i32* %code, align 4, !tbaa !19
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %loc, i32 0, i32 1
  %62 = load i32*, i32** %presult, align 8, !tbaa !40
  store i32 %61, i32* %62, align 4, !tbaa !19
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.end.39
  %63 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %psv, align 8, !tbaa !1
  %64 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %64, i32 0, i32 0
  store %struct.gs_param_string_s* %63, %struct.gs_param_string_s** %data, align 8, !tbaa !77
  %65 = load i32, i32* %size, align 4, !tbaa !19
  %66 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %size47 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %66, i32 0, i32 1
  store i32 %65, i32* %size47, align 4, !tbaa !57
  %67 = load %struct.gs_param_string_array_s*, %struct.gs_param_string_array_s** %pvalue.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %67, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !82
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.42, %if.then.5, %if.then
  %68 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.gs_param_string_s** %psv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast %struct.ref_s* %aref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %72) #1
  %73 = bitcast %struct.iparam_loc_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %73) #1
  %74 = bitcast %struct.iparam_list_s** %iplist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75
}

declare void @param_init_enumerator(%union.gs_param_enumerator_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_string_value(%struct.gs_memory_s* %mem, %struct.iparam_loc_s* %ploc, %struct.gs_param_string_s* %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ploc.addr = alloca %struct.iparam_loc_s*, align 8
  %pvalue.addr = alloca %struct.gs_param_string_s*, align 8
  %pref = alloca %struct.ref_s*, align 8
  %nref = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.iparam_loc_s* %ploc, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pvalue, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue1 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %1, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %pvalue1, align 8, !tbaa !38
  store %struct.ref_s* %2, %struct.ref_s** %pref, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb.3
    i32 9, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %6 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 2
  %8 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !72
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %8, i32 0, i32 16
  %9 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !73
  %10 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %9, %struct.ref_s* %10, %struct.ref_s* %nref) #5
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %11 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 0
  store i8* %11, i8** %data, align 8, !tbaa !67
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %nref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 2
  %13 = load i32, i32* %rsize, align 4, !tbaa !36
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 1
  store i32 %13, i32* %size, align 4, !tbaa !69
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !70
  %16 = bitcast %struct.ref_s* %nref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %16) #1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %17 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue4 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %17, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %pvalue4, align 8, !tbaa !38
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %19 = load i16, i16* %type_attrs6, align 2, !tbaa !28
  %conv7 = zext i16 %19 to i32
  %and = and i32 %conv7, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.3
  %20 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %20, i32 0, i32 1
  %21 = load i32*, i32** %presult, align 8, !tbaa !40
  store i32 -7, i32* %21, align 4, !tbaa !19
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb.3
  %22 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %const_bytes9 = bitcast %union.v* %value8 to i8**
  %23 = load i8*, i8** %const_bytes9, align 8, !tbaa !1
  %24 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %data10 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %24, i32 0, i32 0
  store i8* %23, i8** %data10, align 8, !tbaa !67
  %25 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %rsize12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 2
  %26 = load i32, i32* %rsize12, align 4, !tbaa !36
  %27 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %size13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %27, i32 0, i32 1
  store i32 %26, i32* %size13, align 4, !tbaa !69
  %28 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %persistent14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %28, i32 0, i32 2
  store i32 0, i32* %persistent14, align 4, !tbaa !70
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %29 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue16 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %29, i32 0, i32 0
  %30 = load %struct.ref_s*, %struct.ref_s** %pvalue16, align 8, !tbaa !38
  %tas17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs18 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas17, i32 0, i32 0
  %31 = load i16, i16* %type_attrs18, align 2, !tbaa !28
  %conv19 = zext i16 %31 to i32
  %and20 = and i32 %conv19, 32
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %sw.bb.15
  %32 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult23 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %32, i32 0, i32 1
  %33 = load i32*, i32** %presult23, align 8, !tbaa !40
  store i32 -7, i32* %33, align 4, !tbaa !19
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %sw.bb.15
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %35 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !83
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %37 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %pstruct = bitcast %union.v* %value25 to %struct.obj_header_s**
  %38 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %39 = bitcast %struct.obj_header_s* %38 to i8*
  %call = call %struct.gs_memory_struct_type_s* %35(%struct.gs_memory_s* %36, i8* %39) #5
  %cmp = icmp ne %struct.gs_memory_struct_type_s* %call, @st_bytes
  br i1 %cmp, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %40 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult28 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %40, i32 0, i32 1
  %41 = load i32*, i32** %presult28, align 8, !tbaa !40
  store i32 -20, i32* %41, align 4, !tbaa !19
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  %42 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %pstruct31 = bitcast %union.v* %value30 to %struct.obj_header_s**
  %43 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct31, align 8, !tbaa !1
  %44 = bitcast %struct.obj_header_s* %43 to i8*
  %45 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %data32 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %45, i32 0, i32 0
  store i8* %44, i8** %data32, align 8, !tbaa !67
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 14
  %47 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !84
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %49 = load %struct.ref_s*, %struct.ref_s** %pref, align 8, !tbaa !1
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  %pstruct35 = bitcast %union.v* %value34 to %struct.obj_header_s**
  %50 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct35, align 8, !tbaa !1
  %51 = bitcast %struct.obj_header_s* %50 to i8*
  %call36 = call i32 %47(%struct.gs_memory_s* %48, i8* %51) #5
  %52 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %size37 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %52, i32 0, i32 1
  store i32 %call36, i32* %size37, align 4, !tbaa !69
  %53 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pvalue.addr, align 8, !tbaa !1
  %persistent38 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %53, i32 0, i32 2
  store i32 0, i32* %persistent38, align 4, !tbaa !70
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %54 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult39 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %54, i32 0, i32 1
  %55 = load i32*, i32** %presult39, align 8, !tbaa !40
  store i32 -20, i32* %55, align 4, !tbaa !19
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.29, %if.end, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.27, %if.then.22, %if.then
  %56 = bitcast %struct.ref_s** %pref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_array(%struct.iparam_list_s* %plist, i8* %pkey, %struct.iparam_loc_s* %ploc) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.iparam_list_s*, align 8
  %pkey.addr = alloca i8*, align 8
  %ploc.addr = alloca %struct.iparam_loc_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.iparam_list_s* %plist, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pkey, i8** %pkey.addr, align 8, !tbaa !1
  store %struct.iparam_loc_s* %ploc, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.iparam_list_s*, %struct.iparam_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %pkey.addr, align 8, !tbaa !1
  %3 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %call = call i32 @ref_param_read(%struct.iparam_list_s* %1, i8* %2, %struct.iparam_loc_s* %3, i32 -1) #5
  store i32 %call, i32* %code, align 4, !tbaa !19
  %4 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %6, i32 0, i32 0
  %7 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !38
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %8 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 15360
  %cmp1 = icmp eq i32 %and, 1024
  br i1 %cmp1, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %9, i32 0, i32 1
  %10 = load i32*, i32** %presult, align 8, !tbaa !40
  store i32 -20, i32* %10, align 4, !tbaa !19
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %pvalue5 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %11, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %pvalue5, align 8, !tbaa !38
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  %13 = load i16, i16* %type_attrs7, align 2, !tbaa !28
  %conv8 = zext i16 %13 to i32
  %and9 = and i32 %conv8, 32
  %tobool = icmp ne i32 %and9, 0
  br i1 %tobool, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end.4
  %14 = load %struct.iparam_loc_s*, %struct.iparam_loc_s** %ploc.addr, align 8, !tbaa !1
  %presult11 = getelementptr inbounds %struct.iparam_loc_s, %struct.iparam_loc_s* %14, i32 0, i32 1
  %15 = load i32*, i32** %presult11, align 8, !tbaa !40
  store i32 -7, i32* %15, align 4, !tbaa !19
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.10, %if.then.3, %if.then
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @float_param(%struct.ref_s*, float*) #2

declare i32 @dict_length(%struct.ref_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_value_index(%struct.ref_s*, %struct.ref_s*) #2

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
!5 = !{!6, !2, i64 0}
!6 = !{!"", !2, i64 0, !7, i64 8}
!7 = !{!"ref_s", !8, i64 0, !3, i64 8}
!8 = !{!"tas_s", !9, i64 0, !9, i64 2, !10, i64 4}
!9 = !{!"short", !3, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!12, !2, i64 64}
!12 = !{!"stack_param_list_s", !2, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !10, i64 80, !10, i64 84, !2, i64 88, !10, i64 96}
!13 = !{!12, !2, i64 88}
!14 = !{!12, !10, i64 96}
!15 = !{!12, !10, i64 80}
!16 = !{!17, !2, i64 0}
!17 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !2, i64 80, !2, i64 88}
!18 = !{!17, !2, i64 16}
!19 = !{!10, !10, i64 0}
!20 = !{i64 0, i64 2, !21, i64 2, i64 2, !21, i64 4, i64 4, !19, i64 8, i64 8, !22, i64 8, i64 2, !21, i64 8, i64 4, !24, i64 8, i64 8, !22, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !22}
!21 = !{!9, !9, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !3, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !3, i64 0}
!26 = !{!27, !2, i64 24}
!27 = !{!"iparam_list_s", !2, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !10, i64 80, !10, i64 84}
!28 = !{!7, !9, i64 0}
!29 = !{!27, !2, i64 72}
!30 = !{!27, !10, i64 84}
!31 = !{!3, !3, i64 0}
!32 = !{!33, !2, i64 64}
!33 = !{!"dict_param_list_s", !2, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !10, i64 80, !10, i64 84, !7, i64 88}
!34 = !{!35, !2, i64 0}
!35 = !{!"", !2, i64 0, !7, i64 8, !10, i64 24}
!36 = !{!7, !10, i64 4}
!37 = !{!33, !10, i64 84}
!38 = !{!39, !2, i64 0}
!39 = !{!"iparam_loc_s", !2, i64 0, !2, i64 8}
!40 = !{!39, !2, i64 8}
!41 = !{!35, !10, i64 24}
!42 = !{!27, !10, i64 80}
!43 = !{!27, !2, i64 8}
!44 = !{!45, !2, i64 88}
!45 = !{!"gs_memory_s", !2, i64 0, !46, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!46 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!47 = !{!48, !2, i64 64}
!48 = !{!"array_param_list_s", !2, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !3, i64 32, !2, i64 64, !2, i64 72, !10, i64 80, !10, i64 84, !2, i64 88, !2, i64 96}
!49 = !{!48, !2, i64 88}
!50 = !{!48, !2, i64 96}
!51 = !{!52, !3, i64 16}
!52 = !{!"gs_param_typed_value_s", !3, i64 0, !3, i64 16}
!53 = !{!54, !10, i64 8}
!54 = !{!"gs_param_int_array_s", !2, i64 0, !10, i64 8, !10, i64 12}
!55 = !{!56, !10, i64 8}
!56 = !{!"gs_param_float_array_s", !2, i64 0, !10, i64 8, !10, i64 12}
!57 = !{!58, !10, i64 8}
!58 = !{!"gs_param_string_array_s", !2, i64 0, !10, i64 8, !10, i64 12}
!59 = !{!60, !2, i64 8}
!60 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !10, i64 16}
!61 = !{!45, !2, i64 64}
!62 = !{!63, !10, i64 8}
!63 = !{!"gs_param_collection_s", !2, i64 0, !10, i64 8}
!64 = !{!45, !2, i64 24}
!65 = !{!63, !2, i64 0}
!66 = !{!27, !2, i64 64}
!67 = !{!68, !2, i64 0}
!68 = !{!"gs_param_string_s", !2, i64 0, !10, i64 8, !10, i64 12}
!69 = !{!68, !10, i64 8}
!70 = !{!68, !10, i64 12}
!71 = !{!45, !2, i64 136}
!72 = !{!45, !2, i64 192}
!73 = !{!74, !2, i64 120}
!74 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !23, i64 104, !2, i64 112, !2, i64 120, !10, i64 128, !2, i64 136, !10, i64 144, !10, i64 148, !3, i64 152, !2, i64 168, !10, i64 176, !2, i64 184, !10, i64 192, !2, i64 200, !2, i64 208}
!75 = !{!54, !2, i64 0}
!76 = !{!56, !2, i64 0}
!77 = !{!58, !2, i64 0}
!78 = !{!33, !2, i64 8}
!79 = !{!33, !2, i64 72}
!80 = !{!54, !10, i64 12}
!81 = !{!56, !10, i64 12}
!82 = !{!58, !10, i64 12}
!83 = !{!45, !2, i64 128}
!84 = !{!45, !2, i64 120}
