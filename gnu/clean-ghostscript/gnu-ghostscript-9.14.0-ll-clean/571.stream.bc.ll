; ModuleID = './stream.bc'
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
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@st_stream = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 352, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @stream_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @stream_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @stream_finalize, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"stream_state\00", align 1
@st_stream_state = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_no_template = internal constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_stream_state to %struct.gs_memory_struct_type_s*), i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* null, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"ssetfilename\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"s_disable(file_name)\00", align 1
@s_filter_read_procs = constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_std_noseek, void (%struct.stream_s*)* @s_std_read_reset, i32 (%struct.stream_s*)* @s_std_read_flush, i32 (%struct.stream_s*)* @s_filter_close, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* null, i32 (%struct.stream_s*, i32)* null }, align 8
@s_filter_write_procs = constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_std_noseek, void (%struct.stream_s*)* @s_std_write_reset, i32 (%struct.stream_s*)* @s_filter_write_flush, i32 (%struct.stream_s*)* @s_filter_close, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* null, i32 (%struct.stream_s*, i32)* null }, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"s_std_close\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"sreadline(buffer)\00", align 1
@sread_string.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_string_available, i32 (%struct.stream_s*, i64)* @s_string_read_seek, void (%struct.stream_s*)* @s_std_read_reset, i32 (%struct.stream_s*)* @s_std_read_flush, i32 (%struct.stream_s*)* @s_std_null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_string_read_process, i32 (%struct.stream_s*, i32)* null }, align 8
@sread_string_reusable.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_string_available, i32 (%struct.stream_s*, i64)* @s_string_read_seek, void (%struct.stream_s*)* @s_string_reusable_reset, i32 (%struct.stream_s*)* @s_string_reusable_flush, i32 (%struct.stream_s*)* @s_close_disable, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_string_read_process, i32 (%struct.stream_s*, i32)* null }, align 8
@swrite_string.p = internal constant %struct.stream_procs { i32 (%struct.stream_s*, i64*)* @s_std_noavailable, i32 (%struct.stream_s*, i64)* @s_string_write_seek, void (%struct.stream_s*)* @s_std_write_reset, i32 (%struct.stream_s*)* @s_std_null, i32 (%struct.stream_s*)* @s_std_null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_string_write_process, i32 (%struct.stream_s*, i32)* null }, align 8
@swrite_position_only.discard_buf = internal global [50 x i8] zeroinitializer, align 16
@s_NullE_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_stream_state to %struct.gs_memory_struct_type_s*), i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_Null_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"s_add_filter(stream)\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"s_add_filter(buf)\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"s_close_filters(buf)\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"s_close_filters(stream)\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"s_close_filters(state)\00", align 1
@s_NullD_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_stream_state to %struct.gs_memory_struct_type_s*), i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_Null_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @stream_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %st = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_s*
  store %struct.stream_s* %2, %struct.stream_s** %st, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.14
    i32 4, label %sw.bb.16
    i32 5, label %sw.bb.18
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %foreign = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 10
  %5 = load i8, i8* %foreign, align 1, !tbaa !7
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %6, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %7 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf_string = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 12
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !16
  %cmp = icmp ne i8* %8, null
  br i1 %cmp, label %if.then.1, label %if.else.8

if.then.1:                                        ; preds = %if.else
  %9 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to %struct.stream_s*
  %cbuf_string2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 12
  %data3 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string2, i32 0, i32 0
  %11 = load i8*, i8** %data3, align 8, !tbaa !17
  %12 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %12, i32 0, i32 0
  store i8* %11, i8** %ptr4, align 8, !tbaa !14
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to %struct.stream_s*
  %cbuf_string5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 12
  %size6 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string5, i32 0, i32 1
  %15 = load i32, i32* %size6, align 4, !tbaa !18
  %16 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size7 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %16, i32 0, i32 1
  store i32 %15, i32* %size7, align 4, !tbaa !19
  store %struct.gs_ptr_procs_s* @ptr_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.8:                                        ; preds = %if.else
  %17 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 6
  %18 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %19 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %19, i32 0, i32 0
  store i8* %18, i8** %ptr9, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.10:                                         ; preds = %entry
  %20 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.stream_s*
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 15
  %22 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !21
  %23 = bitcast %struct.stream_s* %22 to i8*
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr11 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr11, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.12:                                         ; preds = %entry
  %25 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %26 = bitcast i8* %25 to %struct.stream_s*
  %prev = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 21
  %27 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !22
  %28 = bitcast %struct.stream_s* %27 to i8*
  %29 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr13 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %29, i32 0, i32 0
  store i8* %28, i8** %ptr13, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.14:                                         ; preds = %entry
  %30 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %31 = bitcast i8* %30 to %struct.stream_s*
  %next = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 22
  %32 = load %struct.stream_s*, %struct.stream_s** %next, align 8, !tbaa !23
  %33 = bitcast %struct.stream_s* %32 to i8*
  %34 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr15 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %34, i32 0, i32 0
  store i8* %33, i8** %ptr15, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.16:                                         ; preds = %entry
  %35 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %36 = bitcast i8* %35 to %struct.stream_s*
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 18
  %37 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !24
  %38 = bitcast %struct.stream_state_s* %37 to i8*
  %39 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr17 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %39, i32 0, i32 0
  store i8* %38, i8** %ptr17, align 8, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.18:                                         ; preds = %entry
  %40 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %file_name = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 27
  %data19 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name, i32 0, i32 0
  %41 = load i8*, i8** %data19, align 8, !tbaa !25
  %42 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr20 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %42, i32 0, i32 0
  store i8* %41, i8** %ptr20, align 8, !tbaa !14
  %43 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %file_name21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 27
  %size22 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name21, i32 0, i32 1
  %44 = load i32, i32* %size22, align 4, !tbaa !26
  %45 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size23 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %45, i32 0, i32 1
  store i32 %44, i32* %size23, align 4, !tbaa !19
  store %struct.gs_ptr_procs_s* @ptr_const_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb.12, %sw.bb.10, %if.else.8, %if.then.1, %if.then, %sw.default
  %46 = bitcast %struct.stream_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %47
}

; Function Attrs: nounwind uwtable
define internal void @stream_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %st = alloca %struct.stream_s*, align 8
  %cbuf_old = alloca i8*, align 8
  %reloc = alloca i64, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_s*
  store %struct.stream_s* %2, %struct.stream_s** %st, align 8, !tbaa !1
  %3 = bitcast i8** %cbuf_old to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 6
  %5 = load i8*, i8** %cbuf, align 8, !tbaa !20
  store i8* %5, i8** %cbuf_old, align 8, !tbaa !1
  %6 = load i8*, i8** %cbuf_old, align 8, !tbaa !1
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %foreign = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 10
  %8 = load i8, i8* %foreign, align 1, !tbaa !7
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end.18, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = bitcast i64* %reloc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf_string = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 12
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !16
  %cmp1 = icmp ne i8* %11, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gc_state_s* %12 to %struct.gc_procs_common_s**
  %14 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %13, align 8, !tbaa !1
  %reloc_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %14, i32 0, i32 1
  %15 = load void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)** %reloc_string, align 8, !tbaa !27
  %16 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf_string3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 12
  %17 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %15(%struct.gs_string_s* %cbuf_string3, %struct.gc_state_s* %17) #4
  %18 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf_string4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 12
  %data5 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string4, i32 0, i32 0
  %19 = load i8*, i8** %data5, align 8, !tbaa !16
  %20 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 6
  store i8* %19, i8** %cbuf6, align 8, !tbaa !20
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gc_state_s* %21 to %struct.gc_procs_common_s**
  %23 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %22, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %23, i32 0, i32 0
  %24 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !29
  %25 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 6
  %26 = load i8*, i8** %cbuf7, align 8, !tbaa !20
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %24(i8* %26, %struct.gc_state_s* %27) #4
  %28 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 6
  store i8* %call, i8** %cbuf8, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %29 = load i8*, i8** %cbuf_old, align 8, !tbaa !1
  %30 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 6
  %31 = load i8*, i8** %cbuf9, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %reloc, align 8, !tbaa !30
  %32 = load i64, i64* %reloc, align 8, !tbaa !30
  %33 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %34 = load i8*, i8** %ptr, align 8, !tbaa !31
  %idx.neg = sub i64 0, %32
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.neg
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !31
  %35 = load i64, i64* %reloc, align 8, !tbaa !30
  %36 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cursor10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 5
  %r11 = bitcast %union.stream_cursor_s* %cursor10 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r11, i32 0, i32 1
  %37 = load i8*, i8** %limit, align 8, !tbaa !33
  %idx.neg12 = sub i64 0, %35
  %add.ptr13 = getelementptr inbounds i8, i8* %37, i64 %idx.neg12
  store i8* %add.ptr13, i8** %limit, align 8, !tbaa !33
  %38 = load i64, i64* %reloc, align 8, !tbaa !30
  %39 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_write_s*
  %limit15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  %40 = load i8*, i8** %limit15, align 8, !tbaa !34
  %idx.neg16 = sub i64 0, %38
  %add.ptr17 = getelementptr inbounds i8, i8* %40, i64 %idx.neg16
  store i8* %add.ptr17, i8** %limit15, align 8, !tbaa !34
  %41 = bitcast i64* %reloc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %land.lhs.true, %entry
  %42 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %43 = bitcast %struct.gc_state_s* %42 to %struct.gc_procs_common_s**
  %44 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %43, align 8, !tbaa !1
  %reloc_struct_ptr19 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %44, i32 0, i32 0
  %45 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr19, align 8, !tbaa !29
  %46 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 15
  %47 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !21
  %48 = bitcast %struct.stream_s* %47 to i8*
  %49 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call20 = call i8* %45(i8* %48, %struct.gc_state_s* %49) #4
  %50 = bitcast i8* %call20 to %struct.stream_s*
  %51 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %strm21 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %51, i32 0, i32 15
  store %struct.stream_s* %50, %struct.stream_s** %strm21, align 8, !tbaa !21
  %52 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %53 = bitcast %struct.gc_state_s* %52 to %struct.gc_procs_common_s**
  %54 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %53, align 8, !tbaa !1
  %reloc_struct_ptr22 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %54, i32 0, i32 0
  %55 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr22, align 8, !tbaa !29
  %56 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 21
  %57 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !22
  %58 = bitcast %struct.stream_s* %57 to i8*
  %59 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call23 = call i8* %55(i8* %58, %struct.gc_state_s* %59) #4
  %60 = bitcast i8* %call23 to %struct.stream_s*
  %61 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %prev24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %61, i32 0, i32 21
  store %struct.stream_s* %60, %struct.stream_s** %prev24, align 8, !tbaa !22
  %62 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %63 = bitcast %struct.gc_state_s* %62 to %struct.gc_procs_common_s**
  %64 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %63, align 8, !tbaa !1
  %reloc_struct_ptr25 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %64, i32 0, i32 0
  %65 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr25, align 8, !tbaa !29
  %66 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.stream_s, %struct.stream_s* %66, i32 0, i32 22
  %67 = load %struct.stream_s*, %struct.stream_s** %next, align 8, !tbaa !23
  %68 = bitcast %struct.stream_s* %67 to i8*
  %69 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call26 = call i8* %65(i8* %68, %struct.gc_state_s* %69) #4
  %70 = bitcast i8* %call26 to %struct.stream_s*
  %71 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %next27 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %71, i32 0, i32 22
  store %struct.stream_s* %70, %struct.stream_s** %next27, align 8, !tbaa !23
  %72 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %73 = bitcast %struct.gc_state_s* %72 to %struct.gc_procs_common_s**
  %74 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %73, align 8, !tbaa !1
  %reloc_struct_ptr28 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %74, i32 0, i32 0
  %75 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr28, align 8, !tbaa !29
  %76 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %76, i32 0, i32 18
  %77 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !24
  %78 = bitcast %struct.stream_state_s* %77 to i8*
  %79 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call29 = call i8* %75(i8* %78, %struct.gc_state_s* %79) #4
  %80 = bitcast i8* %call29 to %struct.stream_state_s*
  %81 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %state30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %81, i32 0, i32 18
  store %struct.stream_state_s* %80, %struct.stream_state_s** %state30, align 8, !tbaa !24
  %82 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %83 = bitcast %struct.gc_state_s* %82 to %struct.gc_procs_common_s**
  %84 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %83, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %84, i32 0, i32 2
  %85 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !36
  %86 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %file_name = getelementptr inbounds %struct.stream_s, %struct.stream_s* %86, i32 0, i32 27
  %87 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %85(%struct.gs_const_string_s* %file_name, %struct.gc_state_s* %87) #4
  %88 = bitcast i8** %cbuf_old to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast %struct.stream_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stream_finalize(%struct.gs_memory_s* %cmem, i8* %vptr) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %st = alloca %struct.stream_s*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.stream_s*
  store %struct.stream_s* %2, %struct.stream_s** %st, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 11
  %5 = load i8, i8* %modes, align 1, !tbaa !37
  %conv = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %6 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %is_temp = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 16
  %7 = load i32, i32* %is_temp, align 4, !tbaa !38
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %8 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 26
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !39
  %cmp3 = icmp ne %struct._IO_FILE* %9, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %10 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 6
  store i8* null, i8** %cbuf, align 8, !tbaa !20
  %11 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %cbuf_string = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 12
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !16
  %12 = load %struct.stream_s*, %struct.stream_s** %st, align 8, !tbaa !1
  %call = call i32 @sclose(%struct.stream_s* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %do.end
  %13 = bitcast %struct.stream_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind uwtable
define void @s_init(%struct.stream_s* %s, %struct.gs_memory_s* %mem) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 1
  store %struct.gs_memory_s* %0, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %report_error = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 2
  store i32 (%struct.stream_state_s*, i8*)* @s_no_report_error, i32 (%struct.stream_state_s*, i8*)** %report_error, align 8, !tbaa !41
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %min_left = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 3
  store i32 0, i32* %min_left, align 4, !tbaa !42
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %error_string = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 4
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %error_string, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !43
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 22
  store %struct.stream_s* null, %struct.stream_s** %next, align 8, !tbaa !23
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 21
  store %struct.stream_s* null, %struct.stream_s** %prev, align 8, !tbaa !22
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 27
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !44
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 27
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name1, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !45
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %close_strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 23
  store i32 0, i32* %close_strm, align 4, !tbaa !46
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %close_at_eod = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 24
  store i32 1, i32* %close_at_eod, align 4, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @s_no_report_error(%struct.stream_state_s* %st, i8* %str) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.stream_s* @s_alloc(%struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %retval = alloca %struct.stream_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  %s = alloca %struct.stream_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !48
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_stream to %struct.gs_memory_struct_type_s*), i8* %4) #4
  %5 = bitcast i8* %call to %struct.stream_s*
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @s_init(%struct.stream_s* %7, %struct.gs_memory_s* %8) #4
  %9 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  store %struct.stream_s* %9, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = load %struct.stream_s*, %struct.stream_s** %retval
  ret %struct.stream_s* %11
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @s_init_state(%struct.stream_state_s* %st, %struct.stream_template_s* %templat, %struct.gs_memory_s* %mem) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %templat.addr = alloca %struct.stream_template_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %templat1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %1, i32 0, i32 0
  store %struct.stream_template_s* %0, %struct.stream_template_s** %templat1, align 8, !tbaa !51
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %3, i32 0, i32 1
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  %4 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %report_error = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %4, i32 0, i32 2
  store i32 (%struct.stream_state_s*, i8*)* @s_no_report_error, i32 (%struct.stream_state_s*, i8*)** %report_error, align 8, !tbaa !54
  %5 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %min_left = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %5, i32 0, i32 3
  store i32 0, i32* %min_left, align 4, !tbaa !55
  %6 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %error_string = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %6, i32 0, i32 4
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %error_string, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %stype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %stype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %st = alloca %struct.stream_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %stype, %struct.gs_memory_struct_type_s** %stype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !48
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %stype.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* %4, i8* %5) #4
  %6 = bitcast i8* %call to %struct.stream_state_s*
  store %struct.stream_state_s* %6, %struct.stream_state_s** %st, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %tobool = icmp ne %struct.stream_state_s* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @s_init_state(%struct.stream_state_s* %8, %struct.stream_template_s* null, %struct.gs_memory_s* %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %10 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %11 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret %struct.stream_state_s* %10
}

; Function Attrs: nounwind uwtable
define void @s_std_init(%struct.stream_s* %s, i8* %ptr, i32 %len, %struct.stream_procs* %pp, i32 %modes) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pp.addr = alloca %struct.stream_procs*, align 8
  %modes.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  store %struct.stream_procs* %pp, %struct.stream_procs** %pp.addr, align 8, !tbaa !1
  store i32 %modes, i32* %modes.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 0
  store %struct.stream_template_s* @s_no_template, %struct.stream_template_s** %templat, align 8, !tbaa !56
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 6
  store i8* %1, i8** %cbuf, align 8, !tbaa !20
  %3 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 -1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr, i8** %ptr1, align 8, !tbaa !57
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr, i8** %limit, align 8, !tbaa !33
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %r4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_read_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r4, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr5, align 8, !tbaa !31
  %7 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -1
  %8 = load i32, i32* %len.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %8 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 %idx.ext
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_write_s*
  %limit10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w9, i32 0, i32 2
  store i8* %add.ptr7, i8** %limit10, align 8, !tbaa !34
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 9
  store i16 0, i16* %end_status, align 2, !tbaa !58
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %foreign = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 10
  store i8 0, i8* %foreign, align 1, !tbaa !7
  %12 = load i32, i32* %modes.addr, align 4, !tbaa !5
  %conv = trunc i32 %12 to i8
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 11
  store i8 %conv, i8* %modes11, align 1, !tbaa !37
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf_string = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 12
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !16
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 13
  store i64 0, i64* %position, align 8, !tbaa !59
  %16 = load i32, i32* %len.addr, align 4, !tbaa !5
  %17 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 8
  store i32 %16, i32* %cbsize, align 4, !tbaa !60
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 7
  store i32 %16, i32* %bsize, align 4, !tbaa !61
  %19 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 15
  store %struct.stream_s* null, %struct.stream_s** %strm, align 8, !tbaa !21
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %is_temp = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 16
  store i32 0, i32* %is_temp, align 4, !tbaa !38
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 14
  %22 = load %struct.stream_procs*, %struct.stream_procs** %pp.addr, align 8, !tbaa !1
  %23 = bitcast %struct.stream_procs* %procs to i8*
  %24 = bitcast %struct.stream_procs* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 56, i32 8, i1 false), !tbaa.struct !62
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %26 = bitcast %struct.stream_s* %25 to %struct.stream_state_s*
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 18
  store %struct.stream_state_s* %26, %struct.stream_state_s** %state, align 8, !tbaa !24
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 26
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8, !tbaa !39
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 27
  %data12 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name, i32 0, i32 0
  store i8* null, i8** %data12, align 8, !tbaa !44
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 27
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name13, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !45
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 1
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  %tobool = icmp ne %struct.gs_memory_s* %32, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @ssetfilename(%struct.stream_s* %s, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %str = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 27
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name, i32 0, i32 0
  %2 = load i8*, i8** %data1, align 8, !tbaa !44
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !63
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !40
  %8 = load i32, i32* %size.addr, align 4, !tbaa !5
  %add = add i32 %8, 1
  %call = call i8* %5(%struct.gs_memory_s* %7, i32 %add, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !40
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 18
  %11 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !64
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !40
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 27
  %data7 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name6, i32 0, i32 0
  %15 = load i8*, i8** %data7, align 8, !tbaa !44
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 27
  %size9 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name8, i32 0, i32 1
  %17 = load i32, i32* %size9, align 4, !tbaa !45
  %18 = load i32, i32* %size.addr, align 4, !tbaa !5
  %add10 = add i32 %18, 1
  %call11 = call i8* %11(%struct.gs_memory_s* %13, i8* %15, i32 %17, i32 %add10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call11, %cond.false ]
  store i8* %cond, i8** %str, align 8, !tbaa !1
  %19 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %19, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %20 = load i8*, i8** %str, align 8, !tbaa !1
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %22 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %22 to i64
  %call13 = call i8* @memcpy(i8* %20, i8* %21, i64 %conv) #5
  %23 = load i32, i32* %size.addr, align 4, !tbaa !5
  %idxprom = zext i32 %23 to i64
  %24 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !43
  %25 = load i8*, i8** %str, align 8, !tbaa !1
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 27
  %data15 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name14, i32 0, i32 0
  store i8* %25, i8** %data15, align 8, !tbaa !44
  %27 = load i32, i32* %size.addr, align 4, !tbaa !5
  %add16 = add i32 %27, 1
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 27
  %size18 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name17, i32 0, i32 1
  store i32 %add16, i32* %size18, align 4, !tbaa !45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %29 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @sfilename(%struct.stream_s* %s, %struct.gs_const_string_s* %pfname) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pfname.addr = alloca %struct.gs_const_string_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pfname, %struct.gs_const_string_s** %pfname.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 27
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8, !tbaa !44
  %2 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pfname.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %2, i32 0, i32 0
  store i8* %1, i8** %data1, align 8, !tbaa !25
  %3 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pfname.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %data2, align 8, !tbaa !25
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pfname.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %5, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !26
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 27
  %size4 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name3, i32 0, i32 1
  %7 = load i32, i32* %size4, align 4, !tbaa !45
  %sub = sub i32 %7, 1
  %8 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pfname.addr, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %8, i32 0, i32 1
  store i32 %sub, i32* %size5, align 4, !tbaa !26
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @s_std_null(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @s_std_read_reset(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 6
  %1 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr, i8** %limit, align 8, !tbaa !33
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define void @s_std_write_reset(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 6
  %1 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @s_std_read_flush(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 6
  %1 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr, i8** %limit, align 8, !tbaa !33
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !31
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 9
  %5 = load i16, i16* %end_status, align 2, !tbaa !58
  %tobool = icmp ne i16 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_read_buf(%struct.stream_s* %6) #4
  br label %while.body

while.end:                                        ; preds = %if.then
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 9
  %8 = load i16, i16* %end_status3, align 2, !tbaa !58
  %conv = sext i16 %8 to i32
  %cmp = icmp eq i32 %conv, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 9
  %10 = load i16, i16* %end_status5, align 2, !tbaa !58
  %conv6 = sext i16 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv6, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @s_process_read_buf(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @stream_compact(%struct.stream_s* %1, i32 0) #4
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %call = call i32 @sreadbuf(%struct.stream_s* %2, %struct.stream_cursor_write_s* %w) #4
  store i32 %call, i32* %status, align 4, !tbaa !5
  %4 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %status, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %5, %cond.false ]
  %conv = trunc i32 %cond to i16
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 9
  store i16 %conv, i16* %end_status, align 2, !tbaa !58
  %7 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s_std_write_flush(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_write_buf(%struct.stream_s* %0, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @s_process_write_buf(%struct.stream_s* %s, i32 %last) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %last.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %3 = load i32, i32* %last.addr, align 4, !tbaa !5
  %call = call i32 @swritebuf(%struct.stream_s* %1, %struct.stream_cursor_read_s* %r, i32 %3) #4
  store i32 %call, i32* %status, align 4, !tbaa !5
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @stream_compact(%struct.stream_s* %4, i32 0) #4
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %status, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %6, %cond.false ]
  %7 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @s_std_noavailable(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64* %pl, i64** %pl.addr, align 8, !tbaa !1
  %0 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 -1, i64* %0, align 8, !tbaa !30
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s_std_noseek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !30
  ret i32 -2
}

; Function Attrs: nounwind uwtable
define i32 @s_std_close(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s_std_switch_mode(%struct.stream_s* %s, i32 %writing) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %writing.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %writing, i32* %writing.addr, align 4, !tbaa !5
  ret i32 -2
}

; Function Attrs: nounwind uwtable
define void @s_disable(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 6
  store i8* null, i8** %cbuf, align 8, !tbaa !20
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 7
  store i32 0, i32* %bsize, align 4, !tbaa !61
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 9
  store i16 -1, i16* %end_status, align 2, !tbaa !58
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 11
  store i8 0, i8* %modes, align 1, !tbaa !37
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf_string = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 12
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !16
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* null, i8** %limit, align 8, !tbaa !33
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !31
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_write_s*
  %limit4 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* null, i8** %limit4, align 8, !tbaa !34
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 14
  %close = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 4
  store i32 (%struct.stream_s*)* @s_std_null, i32 (%struct.stream_s*)** %close, align 8, !tbaa !65
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 15
  store %struct.stream_s* null, %struct.stream_s** %strm, align 8, !tbaa !21
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %11 = bitcast %struct.stream_s* %10 to %struct.stream_state_s*
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 18
  store %struct.stream_state_s* %11, %struct.stream_state_s** %state, align 8, !tbaa !24
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 0
  store %struct.stream_template_s* @s_no_template, %struct.stream_template_s** %templat, align 8, !tbaa !56
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 27
  %data5 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name, i32 0, i32 0
  %15 = load i8*, i8** %data5, align 8, !tbaa !44
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  %tobool6 = icmp ne %struct.gs_memory_s* %17, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !40
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 27
  %data10 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name9, i32 0, i32 0
  %21 = load i8*, i8** %data10, align 8, !tbaa !44
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name11 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 27
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name11, i32 0, i32 1
  %23 = load i32, i32* %size, align 4, !tbaa !45
  call void @gs_free_const_string(%struct.gs_memory_s* %19, i8* %21, i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 27
  %data13 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name12, i32 0, i32 0
  store i8* null, i8** %data13, align 8, !tbaa !44
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %file_name14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 27
  %size15 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %file_name14, i32 0, i32 1
  store i32 0, i32* %size15, align 4, !tbaa !45
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !40
  %tobool18 = icmp ne %struct.gs_memory_s* %27, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %if.then.19
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %if.end.16
  ret void
}

declare void @gs_free_const_string(%struct.gs_memory_s*, i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @s_filter_write_flush(%struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_write_buf(%struct.stream_s* %1, i32 0) #4
  store i32 %call, i32* %status, align 4, !tbaa !5
  %2 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 15
  %5 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !21
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %6 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !66
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %strm1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 15
  %8 = load %struct.stream_s*, %struct.stream_s** %strm1, align 8, !tbaa !21
  %call2 = call i32 %6(%struct.stream_s* %8) #4
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @s_filter_close(%struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
  %close = alloca i32, align 4
  %stemp = alloca %struct.stream_s*, align 8
  %status2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %close to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %close_strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 23
  %3 = load i32, i32* %close_strm, align 4, !tbaa !46
  store i32 %3, i32* %close, align 4, !tbaa !5
  %4 = bitcast %struct.stream_s** %stemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 15
  %6 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !21
  store %struct.stream_s* %6, %struct.stream_s** %stemp, align 8, !tbaa !1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 11
  %8 = load i8, i8* %modes, align 1, !tbaa !37
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %9 = bitcast i32* %status2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_write_buf(%struct.stream_s* %10, i32 1) #4
  store i32 %call, i32* %status2, align 4, !tbaa !5
  %11 = load i32, i32* %status2, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %11, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, i32* %status2, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %12, -1
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %status2, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  %14 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 14
  %flush = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 3
  %15 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %flush, align 8, !tbaa !66
  %16 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %call8 = call i32 %15(%struct.stream_s* %16) #4
  store i32 %call8, i32* %status2, align 4, !tbaa !5
  %17 = load i32, i32* %status2, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %17, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %if.end
  %18 = load i32, i32* %status2, align 4, !tbaa !5
  %cmp12 = icmp ne i32 %18, -1
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.11
  %19 = load i32, i32* %status2, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %land.lhs.true.11, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.14, %if.then.7
  %20 = bitcast i32* %status2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.16

if.end.16:                                        ; preds = %cleanup.cont, %entry
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call17 = call i32 @s_std_close(%struct.stream_s* %21) #4
  store i32 %call17, i32* %status, align 4, !tbaa !5
  %22 = load i32, i32* %status, align 4, !tbaa !5
  %cmp18 = icmp ne i32 %22, 0
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %if.end.16
  %23 = load i32, i32* %status, align 4, !tbaa !5
  %cmp21 = icmp ne i32 %23, -1
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  %24 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.end.24:                                        ; preds = %land.lhs.true.20, %if.end.16
  %25 = load i32, i32* %close, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %land.lhs.true.25, label %if.end.30

land.lhs.true.25:                                 ; preds = %if.end.24
  %26 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %cmp26 = icmp ne %struct.stream_s* %26, null
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %land.lhs.true.25
  %27 = load %struct.stream_s*, %struct.stream_s** %stemp, align 8, !tbaa !1
  %call29 = call i32 @sclose(%struct.stream_s* %27) #4
  store i32 %call29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.end.30:                                        ; preds = %land.lhs.true.25, %if.end.24
  %28 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

cleanup.31:                                       ; preds = %if.end.30, %if.then.28, %if.then.23, %cleanup
  %29 = bitcast %struct.stream_s** %stemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast i32* %close to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @sclose(%struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %st = alloca %struct.stream_state_s*, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %release = alloca void (%struct.stream_state_s*)*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 14
  %close = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 4
  %3 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %close, align 8, !tbaa !65
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.stream_s* %4) #4
  store i32 %call, i32* %status, align 4, !tbaa !5
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 18
  %8 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !24
  store %struct.stream_state_s* %8, %struct.stream_state_s** %st, align 8, !tbaa !1
  %9 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.stream_state_s* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %if.end
  %10 = bitcast void (%struct.stream_state_s*)** %release to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %11, i32 0, i32 0
  %12 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !51
  %release3 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %12, i32 0, i32 5
  %13 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release3, align 8, !tbaa !67
  store void (%struct.stream_state_s*)* %13, void (%struct.stream_state_s*)** %release, align 8, !tbaa !1
  %14 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release, align 8, !tbaa !1
  %cmp4 = icmp ne void (%struct.stream_state_s*)* %14, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  %15 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release, align 8, !tbaa !1
  %16 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  call void %15(%struct.stream_state_s* %16) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.2
  %17 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %19 = bitcast %struct.stream_s* %18 to %struct.stream_state_s*
  %cmp7 = icmp ne %struct.stream_state_s* %17, %19
  br i1 %cmp7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.6
  %20 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %20, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  %cmp8 = icmp ne %struct.gs_memory_s* %21, null
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %land.lhs.true
  %22 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %22, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !53
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !69
  %25 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %25, i32 0, i32 1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !53
  %27 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %28 = bitcast %struct.stream_state_s* %27 to i8*
  call void %24(%struct.gs_memory_s* %26, i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %land.lhs.true, %if.end.6
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %30 = bitcast %struct.stream_s* %29 to %struct.stream_state_s*
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 18
  store %struct.stream_state_s* %30, %struct.stream_state_s** %state14, align 8, !tbaa !24
  %32 = bitcast void (%struct.stream_state_s*)** %release to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.13, %if.end
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @s_disable(%struct.stream_s* %33) #4
  %34 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then
  %35 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @savailable(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64* %pl, i64** %pl.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 14
  %available = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 0
  %1 = load i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64*)** %available, align 8, !tbaa !70
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct.stream_s* %2, i64* %3) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i64 @stell(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr = alloca i8*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 11
  %2 = load i8, i8* %modes, align 1, !tbaa !37
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %4 = load i8*, i8** %ptr2, align 8, !tbaa !57
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_read_s*
  %ptr4 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %6 = load i8*, i8** %ptr4, align 8, !tbaa !31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %6, %cond.false ]
  store i8* %cond, i8** %ptr, align 8, !tbaa !1
  %7 = load i8*, i8** %ptr, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %7, null
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  %8 = load i8*, i8** %ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 6
  %10 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi i64 [ 0, %cond.true.7 ], [ %sub.ptr.sub, %cond.false.8 ]
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 13
  %12 = load i64, i64* %position, align 8, !tbaa !59
  %add = add nsw i64 %cond10, %12
  %13 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i32 @spseek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !30
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 14
  %seek = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 1
  %1 = load i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*, i64)** %seek, align 8, !tbaa !71
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load i64, i64* %pos.addr, align 8, !tbaa !30
  %call = call i32 %1(%struct.stream_s* %2, i64 %3) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @sswitch(%struct.stream_s* %s, i32 %writing) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %writing.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %writing, i32* %writing.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 14
  %switch_mode = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 6
  %1 = load i32 (%struct.stream_s*, i32)*, i32 (%struct.stream_s*, i32)** %switch_mode, align 8, !tbaa !72
  %cmp = icmp eq i32 (%struct.stream_s*, i32)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 14
  %switch_mode2 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs1, i32 0, i32 6
  %3 = load i32 (%struct.stream_s*, i32)*, i32 (%struct.stream_s*, i32)** %switch_mode2, align 8, !tbaa !72
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %5 = load i32, i32* %writing.addr, align 4, !tbaa !5
  %call = call i32 %3(%struct.stream_s* %4, i32 %5) #4
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @spgetcc(%struct.stream_s* %s, i32 %close_at_eod) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %close_at_eod.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %left = alloca i32, align 4
  %min_left = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %close_at_eod, i32* %close_at_eod.addr, align 4, !tbaa !5
  %0 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %min_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 9
  %4 = load i16, i16* %end_status, align 2, !tbaa !58
  %conv = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv, -1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 9
  %6 = load i16, i16* %end_status2, align 2, !tbaa !58
  %conv3 = sext i16 %6 to i32
  %cmp4 = icmp eq i32 %conv3, -2
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 18
  %8 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !24
  %min_left6 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %8, i32 0, i32 3
  %9 = load i32, i32* %min_left6, align 4, !tbaa !55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %min_left, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status7 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 9
  %11 = load i16, i16* %end_status7, align 2, !tbaa !58
  %conv8 = sext i16 %11 to i32
  store i32 %conv8, i32* %status, align 4, !tbaa !5
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %13 = load i8*, i8** %limit, align 8, !tbaa !33
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 5
  %r10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r10, i32 0, i32 0
  %15 = load i8*, i8** %ptr, align 8, !tbaa !31
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv11 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv11, i32* %left, align 4, !tbaa !5
  %16 = load i32, i32* %left, align 4, !tbaa !5
  %17 = load i32, i32* %min_left, align 4, !tbaa !5
  %cmp12 = icmp sle i32 %16, %17
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i32, i32* %status, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_read_buf(%struct.stream_s* %20) #4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load i32, i32* %left, align 4, !tbaa !5
  %22 = load i32, i32* %min_left, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %21, %22
  br i1 %cmp16, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %while.end
  %23 = load i32, i32* %left, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %23, 0
  br i1 %cmp18, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true
  %24 = load i32, i32* %status, align 4, !tbaa !5
  %cmp21 = icmp ne i32 %24, -1
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.40

land.lhs.true.23:                                 ; preds = %lor.lhs.false.20
  %25 = load i32, i32* %status, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %25, -2
  br i1 %cmp24, label %if.then, label %if.end.40

if.then:                                          ; preds = %land.lhs.true.23, %land.lhs.true
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @stream_compact(%struct.stream_s* %26, i32 1) #4
  %27 = load i32, i32* %status, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %27, -1
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.39

land.lhs.true.28:                                 ; preds = %if.then
  %28 = load i32, i32* %close_at_eod.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %land.lhs.true.29, label %if.end.39

land.lhs.true.29:                                 ; preds = %land.lhs.true.28
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %close_at_eod30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 24
  %30 = load i32, i32* %close_at_eod30, align 4, !tbaa !47
  %tobool31 = icmp ne i32 %30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %land.lhs.true.29
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call33 = call i32 @sclose(%struct.stream_s* %31) #4
  store i32 %call33, i32* %status, align 4, !tbaa !5
  %32 = load i32, i32* %status, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %32, 0
  br i1 %cmp34, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.then.32
  store i32 -1, i32* %status, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.then.32
  %33 = load i32, i32* %status, align 4, !tbaa !5
  %conv37 = trunc i32 %33 to i16
  %34 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status38 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 9
  store i16 %conv37, i16* %end_status38, align 2, !tbaa !58
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %land.lhs.true.29, %land.lhs.true.28, %if.then
  %35 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %land.lhs.true.23, %lor.lhs.false.20, %while.end
  %36 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 5
  %r42 = bitcast %union.stream_cursor_s* %cursor41 to %struct.stream_cursor_read_s*
  %ptr43 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r42, i32 0, i32 0
  %37 = load i8*, i8** %ptr43, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %ptr43, align 8, !tbaa !31
  %38 = load i8, i8* %incdec.ptr, align 1, !tbaa !43
  %conv44 = zext i8 %38 to i32
  store i32 %conv44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.end.39
  %39 = bitcast i32* %min_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal void @stream_compact(%struct.stream_s* %s, i32 %always) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %always.addr = alloca i32, align 4
  %dist = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i32 %always, i32* %always.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %1 = load i8*, i8** %ptr, align 8, !tbaa !31
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 6
  %3 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %cmp = icmp uge i8* %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %always.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 9
  %6 = load i16, i16* %end_status, align 2, !tbaa !58
  %conv = sext i16 %6 to i32
  %cmp1 = icmp sge i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %7 = bitcast i32* %dist to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %r4 = bitcast %union.stream_cursor_s* %cursor3 to %struct.stream_cursor_read_s*
  %ptr5 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r4, i32 0, i32 0
  %9 = load i8*, i8** %ptr5, align 8, !tbaa !31
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 6
  %11 = load i8*, i8** %cbuf6, align 8, !tbaa !20
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv7 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv7, i32* %dist, align 4, !tbaa !5
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 6
  %13 = load i8*, i8** %cbuf8, align 8, !tbaa !20
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor9 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 5
  %r10 = bitcast %union.stream_cursor_s* %cursor9 to %struct.stream_cursor_read_s*
  %ptr11 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r10, i32 0, i32 0
  %15 = load i8*, i8** %ptr11, align 8, !tbaa !31
  %add.ptr12 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %r14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r14, i32 0, i32 1
  %17 = load i8*, i8** %limit, align 8, !tbaa !33
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 5
  %r16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_read_s*
  %ptr17 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r16, i32 0, i32 0
  %19 = load i8*, i8** %ptr17, align 8, !tbaa !31
  %sub.ptr.lhs.cast18 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast19 = ptrtoint i8* %19 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %conv21 = trunc i64 %sub.ptr.sub20 to i32
  %conv22 = zext i32 %conv21 to i64
  %call = call i8* @memmove(i8* %13, i8* %add.ptr12, i64 %conv22) #5
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 6
  %21 = load i8*, i8** %cbuf23, align 8, !tbaa !20
  %add.ptr24 = getelementptr inbounds i8, i8* %21, i64 -1
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor25 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %r26 = bitcast %union.stream_cursor_s* %cursor25 to %struct.stream_cursor_read_s*
  %ptr27 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r26, i32 0, i32 0
  store i8* %add.ptr24, i8** %ptr27, align 8, !tbaa !31
  %23 = load i32, i32* %dist, align 4, !tbaa !5
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %r29 = bitcast %union.stream_cursor_s* %cursor28 to %struct.stream_cursor_read_s*
  %limit30 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r29, i32 0, i32 1
  %25 = load i8*, i8** %limit30, align 8, !tbaa !33
  %idx.ext = zext i32 %23 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr31 = getelementptr inbounds i8, i8* %25, i64 %idx.neg
  store i8* %add.ptr31, i8** %limit30, align 8, !tbaa !33
  %26 = load i32, i32* %dist, align 4, !tbaa !5
  %conv32 = zext i32 %26 to i64
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %27, i32 0, i32 13
  %28 = load i64, i64* %position, align 8, !tbaa !59
  %add = add nsw i64 %28, %conv32
  store i64 %add, i64* %position, align 8, !tbaa !59
  %29 = bitcast i32* %dist to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @spputc(%struct.stream_s* %s, i8 zeroext %b) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %b.addr = alloca i8, align 1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8 %b, i8* %b.addr, align 1, !tbaa !43
  br label %for.cond

for.cond:                                         ; preds = %if.end.10, %entry
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 9
  %1 = load i16, i16* %end_status, align 2, !tbaa !58
  %tobool = icmp ne i16 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 9
  %3 = load i16, i16* %end_status1, align 2, !tbaa !58
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %for.cond
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !57
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %w3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w3, i32 0, i32 2
  %7 = load i8*, i8** %limit, align 8, !tbaa !34
  %cmp = icmp uge i8* %5, %7
  br i1 %cmp, label %if.end.10, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %8 = load i8, i8* %b.addr, align 1, !tbaa !43
  %9 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor6 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %9, i32 0, i32 5
  %w7 = bitcast %union.stream_cursor_s* %cursor6 to %struct.stream_cursor_write_s*
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w7, i32 0, i32 1
  %10 = load i8*, i8** %ptr8, align 8, !tbaa !57
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %ptr8, align 8, !tbaa !57
  store i8 %8, i8* %incdec.ptr, align 1, !tbaa !43
  %11 = load i8, i8* %b.addr, align 1, !tbaa !43
  %conv9 = zext i8 %11 to i32
  store i32 %conv9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_process_write_buf(%struct.stream_s* %12, i32 0) #4
  br label %for.cond

return:                                           ; preds = %if.then.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @sungetc(%struct.stream_s* %s, i8 zeroext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %c.addr = alloca i8, align 1
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8 %c, i8* %c.addr, align 1, !tbaa !43
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 11
  %1 = load i8, i8* %modes, align 1, !tbaa !37
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %3 = load i8*, i8** %ptr, align 8, !tbaa !31
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 6
  %5 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %cmp2 = icmp ult i8* %3, %5
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 5
  %r6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_read_s*
  %ptr7 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r6, i32 0, i32 0
  %7 = load i8*, i8** %ptr7, align 8, !tbaa !31
  %8 = load i8, i8* %7, align 1, !tbaa !43
  %conv8 = zext i8 %8 to i32
  %9 = load i8, i8* %c.addr, align 1, !tbaa !43
  %conv9 = zext i8 %9 to i32
  %cmp10 = icmp ne i32 %conv8, %conv9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor12 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 5
  %r13 = bitcast %union.stream_cursor_s* %cursor12 to %struct.stream_cursor_read_s*
  %ptr14 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r13, i32 0, i32 0
  %11 = load i8*, i8** %ptr14, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 -1
  store i8* %incdec.ptr, i8** %ptr14, align 8, !tbaa !31
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @sgets(%struct.stream_s* %s, i8* %buf, i32 %nmax, i32* %pn) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %buf.addr = alloca i8*, align 8
  %nmax.addr = alloca i32, align 4
  %pn.addr = alloca i32*, align 8
  %cw = alloca %struct.stream_cursor_write_s, align 8
  %status = alloca i32, align 4
  %min_left = alloca i64, align 8
  %left = alloca i32, align 4
  %wanted = alloca i32, align 4
  %c = alloca i32, align 4
  %st = alloca %struct.stream_state_s*, align 8
  %wptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %nmax, i32* %nmax.addr, align 4, !tbaa !5
  store i32* %pn, i32** %pn.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_cursor_write_s* %cw to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %status, align 4, !tbaa !5
  %2 = bitcast i64* %min_left to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 9
  %4 = load i16, i16* %end_status, align 2, !tbaa !58
  %conv = sext i16 %4 to i32
  %cmp = icmp eq i32 %conv, -1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 9
  %6 = load i16, i16* %end_status2, align 2, !tbaa !58
  %conv3 = sext i16 %6 to i32
  %cmp4 = icmp eq i32 %conv3, -2
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 18
  %8 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !24
  %min_left6 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %8, i32 0, i32 3
  %9 = load i32, i32* %min_left6, align 4, !tbaa !55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %9, %cond.false ]
  %conv7 = sext i32 %cond to i64
  store i64 %conv7, i64* %min_left, align 8, !tbaa !30
  %10 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 -1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !57
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  %11 = load i8*, i8** %ptr8, align 8, !tbaa !57
  %12 = load i32, i32* %nmax.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %12 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 2
  store i8* %add.ptr9, i8** %limit, align 8, !tbaa !34
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.97, %cond.end
  %ptr10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  %13 = load i8*, i8** %ptr10, align 8, !tbaa !57
  %limit11 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 2
  %14 = load i8*, i8** %limit11, align 8, !tbaa !34
  %cmp12 = icmp ult i8* %13, %14
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit14 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %17 = load i8*, i8** %limit14, align 8, !tbaa !33
  %18 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor15 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %18, i32 0, i32 5
  %r16 = bitcast %union.stream_cursor_s* %cursor15 to %struct.stream_cursor_read_s*
  %ptr17 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r16, i32 0, i32 0
  %19 = load i8*, i8** %ptr17, align 8, !tbaa !31
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv18 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv18, i32* %left, align 4, !tbaa !5
  %conv19 = sext i32 %conv18 to i64
  %20 = load i64, i64* %min_left, align 8, !tbaa !30
  %cmp20 = icmp sgt i64 %conv19, %20
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %21 = load i64, i64* %min_left, align 8, !tbaa !30
  %22 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 5
  %r23 = bitcast %union.stream_cursor_s* %cursor22 to %struct.stream_cursor_read_s*
  %limit24 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r23, i32 0, i32 1
  %23 = load i8*, i8** %limit24, align 8, !tbaa !33
  %idx.neg = sub i64 0, %21
  %add.ptr25 = getelementptr inbounds i8, i8* %23, i64 %idx.neg
  store i8* %add.ptr25, i8** %limit24, align 8, !tbaa !33
  %24 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %r27 = bitcast %union.stream_cursor_s* %cursor26 to %struct.stream_cursor_read_s*
  %call = call i32 @stream_move(%struct.stream_cursor_read_s* %r27, %struct.stream_cursor_write_s* %cw) #4
  %25 = load i64, i64* %min_left, align 8, !tbaa !30
  %26 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %r29 = bitcast %union.stream_cursor_s* %cursor28 to %struct.stream_cursor_read_s*
  %limit30 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r29, i32 0, i32 1
  %27 = load i8*, i8** %limit30, align 8, !tbaa !33
  %add.ptr31 = getelementptr inbounds i8, i8* %27, i64 %25
  store i8* %add.ptr31, i8** %limit30, align 8, !tbaa !33
  br label %if.end.94

if.else:                                          ; preds = %while.body
  %28 = bitcast i32* %wanted to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #2
  %limit32 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 2
  %29 = load i8*, i8** %limit32, align 8, !tbaa !34
  %ptr33 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  %30 = load i8*, i8** %ptr33, align 8, !tbaa !57
  %sub.ptr.lhs.cast34 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast35 = ptrtoint i8* %30 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %conv37 = trunc i64 %sub.ptr.sub36 to i32
  store i32 %conv37, i32* %wanted, align 4, !tbaa !5
  %31 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #2
  %32 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #2
  %33 = load i32, i32* %wanted, align 4, !tbaa !5
  %34 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %34, i32 0, i32 7
  %35 = load i32, i32* %bsize, align 4, !tbaa !61
  %shr = lshr i32 %35, 2
  %cmp38 = icmp uge i32 %33, %shr
  br i1 %cmp38, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %if.else
  %36 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state40 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 18
  %37 = load %struct.stream_state_s*, %struct.stream_state_s** %state40, align 8, !tbaa !24
  store %struct.stream_state_s* %37, %struct.stream_state_s** %st, align 8, !tbaa !1
  %cmp41 = icmp ne %struct.stream_state_s* %37, null
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.81

land.lhs.true.43:                                 ; preds = %land.lhs.true
  %38 = load i32, i32* %wanted, align 4, !tbaa !5
  %39 = load %struct.stream_state_s*, %struct.stream_state_s** %st, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %39, i32 0, i32 0
  %40 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !51
  %min_out_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %40, i32 0, i32 4
  %41 = load i32, i32* %min_out_size, align 4, !tbaa !73
  %cmp44 = icmp uge i32 %38, %41
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.81

land.lhs.true.46:                                 ; preds = %land.lhs.true.43
  %42 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 9
  %43 = load i16, i16* %end_status47, align 2, !tbaa !58
  %conv48 = sext i16 %43 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.81

land.lhs.true.51:                                 ; preds = %land.lhs.true.46
  %44 = load i32, i32* %left, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %44, 0
  br i1 %cmp52, label %if.then.54, label %if.end.81

if.then.54:                                       ; preds = %land.lhs.true.51
  %45 = bitcast i8** %wptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %ptr55 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  %46 = load i8*, i8** %ptr55, align 8, !tbaa !57
  store i8* %46, i8** %wptr, align 8, !tbaa !1
  %47 = load i64, i64* %min_left, align 8, !tbaa !30
  %limit56 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 2
  %48 = load i8*, i8** %limit56, align 8, !tbaa !34
  %idx.neg57 = sub i64 0, %47
  %add.ptr58 = getelementptr inbounds i8, i8* %48, i64 %idx.neg57
  store i8* %add.ptr58, i8** %limit56, align 8, !tbaa !34
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call59 = call i32 @sreadbuf(%struct.stream_s* %49, %struct.stream_cursor_write_s* %cw) #4
  store i32 %call59, i32* %status, align 4, !tbaa !5
  %50 = load i64, i64* %min_left, align 8, !tbaa !30
  %limit60 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 2
  %51 = load i8*, i8** %limit60, align 8, !tbaa !34
  %add.ptr61 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %add.ptr61, i8** %limit60, align 8, !tbaa !34
  %52 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @stream_compact(%struct.stream_s* %52, i32 1) #4
  %53 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 6
  %54 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %add.ptr62 = getelementptr inbounds i8, i8* %54, i64 -1
  %55 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor63 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 5
  %r64 = bitcast %union.stream_cursor_s* %cursor63 to %struct.stream_cursor_read_s*
  %limit65 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r64, i32 0, i32 1
  store i8* %add.ptr62, i8** %limit65, align 8, !tbaa !33
  %56 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor66 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 5
  %r67 = bitcast %union.stream_cursor_s* %cursor66 to %struct.stream_cursor_read_s*
  %ptr68 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r67, i32 0, i32 0
  store i8* %add.ptr62, i8** %ptr68, align 8, !tbaa !31
  %ptr69 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  %57 = load i8*, i8** %ptr69, align 8, !tbaa !57
  %58 = load i8*, i8** %wptr, align 8, !tbaa !1
  %sub.ptr.lhs.cast70 = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast71 = ptrtoint i8* %58 to i64
  %sub.ptr.sub72 = sub i64 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71
  %59 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 13
  %60 = load i64, i64* %position, align 8, !tbaa !59
  %add = add nsw i64 %60, %sub.ptr.sub72
  store i64 %add, i64* %position, align 8, !tbaa !59
  %61 = load i32, i32* %status, align 4, !tbaa !5
  %cmp73 = icmp sle i32 %61, 0
  br i1 %cmp73, label %if.then.80, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.then.54
  %ptr76 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  %62 = load i8*, i8** %ptr76, align 8, !tbaa !57
  %limit77 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 2
  %63 = load i8*, i8** %limit77, align 8, !tbaa !34
  %cmp78 = icmp eq i8* %62, %63
  br i1 %cmp78, label %if.then.80, label %if.end

if.then.80:                                       ; preds = %lor.lhs.false.75, %if.then.54
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.75
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.80
  %64 = bitcast i8** %wptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.89 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.81

if.end.81:                                        ; preds = %cleanup.cont, %land.lhs.true.51, %land.lhs.true.46, %land.lhs.true.43, %land.lhs.true, %if.else
  %65 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call82 = call i32 @spgetcc(%struct.stream_s* %65, i32 1) #4
  store i32 %call82, i32* %c, align 4, !tbaa !5
  %66 = load i32, i32* %c, align 4, !tbaa !5
  %cmp83 = icmp slt i32 %66, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.81
  %67 = load i32, i32* %c, align 4, !tbaa !5
  store i32 %67, i32* %status, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.89

if.end.86:                                        ; preds = %if.end.81
  %68 = load i32, i32* %c, align 4, !tbaa !5
  %conv87 = trunc i32 %68 to i8
  %ptr88 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  %69 = load i8*, i8** %ptr88, align 8, !tbaa !57
  %incdec.ptr = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr, i8** %ptr88, align 8, !tbaa !57
  store i8 %conv87, i8* %incdec.ptr, align 1, !tbaa !43
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.89

cleanup.89:                                       ; preds = %if.end.86, %if.then.85, %cleanup
  %70 = bitcast %struct.stream_state_s** %st to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i32* %wanted to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %cleanup.dest.92 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.92, label %cleanup.95 [
    i32 0, label %cleanup.cont.93
  ]

cleanup.cont.93:                                  ; preds = %cleanup.89
  br label %if.end.94

if.end.94:                                        ; preds = %cleanup.cont.93, %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.95

cleanup.95:                                       ; preds = %if.end.94, %cleanup.89
  %73 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %cleanup.dest.96 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.96, label %unreachable [
    i32 0, label %cleanup.cont.97
    i32 3, label %while.end
  ]

cleanup.cont.97:                                  ; preds = %cleanup.95
  br label %while.cond

while.end:                                        ; preds = %cleanup.95, %while.cond
  %ptr98 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  %74 = load i8*, i8** %ptr98, align 8, !tbaa !57
  %add.ptr99 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast100 = ptrtoint i8* %add.ptr99 to i64
  %sub.ptr.rhs.cast101 = ptrtoint i8* %75 to i64
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101
  %conv103 = trunc i64 %sub.ptr.sub102 to i32
  %76 = load i32*, i32** %pn.addr, align 8, !tbaa !1
  store i32 %conv103, i32* %76, align 4, !tbaa !5
  %77 = load i32, i32* %status, align 4, !tbaa !5
  %cmp104 = icmp sge i32 %77, 0
  br i1 %cmp104, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %while.end
  br label %cond.end.108

cond.false.107:                                   ; preds = %while.end
  %78 = load i32, i32* %status, align 4, !tbaa !5
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.106
  %cond109 = phi i32 [ 0, %cond.true.106 ], [ %78, %cond.false.107 ]
  store i32 1, i32* %cleanup.dest.slot
  %79 = bitcast i64* %min_left to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast %struct.stream_cursor_write_s* %cw to i8*
  call void @llvm.lifetime.end(i64 24, i8* %81) #2
  ret i32 %cond109

unreachable:                                      ; preds = %cleanup.95
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @stream_move(%struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw) #0 {
entry:
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %count = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 1
  %2 = load i8*, i8** %limit, align 8, !tbaa !33
  %3 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %ptr, align 8, !tbaa !31
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !5
  %5 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %6, i32 0, i32 2
  %7 = load i8*, i8** %limit1, align 8, !tbaa !34
  %8 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %8, i32 0, i32 1
  %9 = load i8*, i8** %ptr2, align 8, !tbaa !57
  %sub.ptr.lhs.cast3 = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %9 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  store i32 %conv6, i32* %wcount, align 4, !tbaa !5
  %10 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %rcount, align 4, !tbaa !5
  %13 = load i32, i32* %wcount, align 4, !tbaa !5
  %cmp = icmp ule i32 %12, %13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %rcount, align 4, !tbaa !5
  store i32 %14, i32* %count, align 4, !tbaa !5
  store i32 0, i32* %status, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %wcount, align 4, !tbaa !5
  store i32 %15, i32* %count, align 4, !tbaa !5
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %16, i32 0, i32 1
  %17 = load i8*, i8** %ptr8, align 8, !tbaa !57
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %18, i32 0, i32 0
  %19 = load i8*, i8** %ptr9, align 8, !tbaa !31
  %add.ptr10 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i32, i32* %count, align 4, !tbaa !5
  %conv11 = zext i32 %20 to i64
  %call = call i8* @memmove(i8* %add.ptr, i8* %add.ptr10, i64 %conv11) #5
  %21 = load i32, i32* %count, align 4, !tbaa !5
  %22 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %22, i32 0, i32 0
  %23 = load i8*, i8** %ptr12, align 8, !tbaa !31
  %idx.ext = zext i32 %21 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr13, i8** %ptr12, align 8, !tbaa !31
  %24 = load i32, i32* %count, align 4, !tbaa !5
  %25 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr14 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %25, i32 0, i32 1
  %26 = load i8*, i8** %ptr14, align 8, !tbaa !57
  %idx.ext15 = zext i32 %24 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %26, i64 %idx.ext15
  store i8* %add.ptr16, i8** %ptr14, align 8, !tbaa !57
  %27 = load i32, i32* %status, align 4, !tbaa !5
  %28 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @sreadbuf(%struct.stream_s* %s, %struct.stream_cursor_write_s* %pbuf) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pbuf.addr = alloca %struct.stream_cursor_write_s*, align 8
  %prev = alloca %struct.stream_s*, align 8
  %curr = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
  %strm = alloca %struct.stream_s*, align 8
  %pw = alloca %struct.stream_cursor_write_s*, align 8
  %oldpos = alloca i8*, align 8
  %cr = alloca %struct.stream_cursor_read_s, align 8
  %pr = alloca %struct.stream_cursor_read_s*, align 8
  %left = alloca i32, align 4
  %eof = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ahead = alloca %struct.stream_s*, align 8
  %cstat = alloca i32, align 4
  %back = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pbuf, %struct.stream_cursor_write_s** %pbuf.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct.stream_s* null, %struct.stream_s** %prev, align 8, !tbaa !1
  %1 = bitcast %struct.stream_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %curr, align 8, !tbaa !1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.125, %entry
  %4 = bitcast %struct.stream_s** %strm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.stream_cursor_write_s** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %oldpos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  br label %for.cond.1

for.cond.1:                                       ; preds = %cleanup.cont, %for.cond
  %7 = bitcast %struct.stream_cursor_read_s* %cr to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #2
  %8 = bitcast %struct.stream_cursor_read_s** %pr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %eof to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %strm2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 15
  %12 = load %struct.stream_s*, %struct.stream_s** %strm2, align 8, !tbaa !21
  store %struct.stream_s* %12, %struct.stream_s** %strm, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_s* %13, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond.1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %cr, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !31
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %cr, i32 0, i32 1
  store i8* null, i8** %limit, align 8, !tbaa !33
  store %struct.stream_cursor_read_s* %cr, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  store i32 0, i32* %left, align 4, !tbaa !5
  store i32 0, i32* %eof, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.cond.1
  %14 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  store %struct.stream_cursor_read_s* %r, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  %15 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 9
  %16 = load i16, i16* %end_status, align 2, !tbaa !58
  %conv = sext i16 %16 to i32
  %cmp3 = icmp eq i32 %conv, -1
  br i1 %cmp3, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %17 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %end_status5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 9
  %18 = load i16, i16* %end_status5, align 2, !tbaa !58
  %conv6 = sext i16 %18 to i32
  %cmp7 = icmp eq i32 %conv6, -2
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.else
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %19 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 18
  %20 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !24
  %min_left = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %20, i32 0, i32 3
  %21 = load i32, i32* %min_left, align 4, !tbaa !55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %left, align 4, !tbaa !5
  %22 = load i32, i32* %left, align 4, !tbaa !5
  %conv9 = sext i32 %22 to i64
  %23 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  %limit10 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %limit10, align 8, !tbaa !33
  %25 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  %ptr11 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %25, i32 0, i32 0
  %26 = load i8*, i8** %ptr11, align 8, !tbaa !31
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp12 = icmp slt i64 %conv9, %sub.ptr.sub
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %cond.end
  %27 = load i32, i32* %left, align 4, !tbaa !5
  %conv15 = sext i32 %27 to i64
  br label %cond.end.22

cond.false.16:                                    ; preds = %cond.end
  %28 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  %limit17 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %28, i32 0, i32 1
  %29 = load i8*, i8** %limit17, align 8, !tbaa !33
  %30 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %30, i32 0, i32 0
  %31 = load i8*, i8** %ptr18, align 8, !tbaa !31
  %sub.ptr.lhs.cast19 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %31 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.16, %cond.true.14
  %cond23 = phi i64 [ %conv15, %cond.true.14 ], [ %sub.ptr.sub21, %cond.false.16 ]
  %conv24 = trunc i64 %cond23 to i32
  store i32 %conv24, i32* %left, align 4, !tbaa !5
  %32 = load i32, i32* %left, align 4, !tbaa !5
  %33 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  %limit25 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %33, i32 0, i32 1
  %34 = load i8*, i8** %limit25, align 8, !tbaa !33
  %idx.ext = sext i32 %32 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.neg
  store i8* %add.ptr, i8** %limit25, align 8, !tbaa !33
  %35 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %end_status26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 9
  %36 = load i16, i16* %end_status26, align 2, !tbaa !58
  %conv27 = sext i16 %36 to i32
  %cmp28 = icmp eq i32 %conv27, -1
  %conv29 = zext i1 %cmp28 to i32
  store i32 %conv29, i32* %eof, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.end.22, %if.then
  %37 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %cmp30 = icmp eq %struct.stream_s* %37, null
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %if.end
  %38 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pbuf.addr, align 8, !tbaa !1
  br label %cond.end.35

cond.false.33:                                    ; preds = %if.end
  %39 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %cursor34 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %39, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor34 to %struct.stream_cursor_write_s*
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.32
  %cond36 = phi %struct.stream_cursor_write_s* [ %38, %cond.true.32 ], [ %w, %cond.false.33 ]
  store %struct.stream_cursor_write_s* %cond36, %struct.stream_cursor_write_s** %pw, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %cond.end.35
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw, align 8, !tbaa !1
  %ptr37 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %40, i32 0, i32 1
  %41 = load i8*, i8** %ptr37, align 8, !tbaa !57
  store i8* %41, i8** %oldpos, align 8, !tbaa !1
  %42 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 14
  %process = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  %43 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !74
  %44 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %state38 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %44, i32 0, i32 18
  %45 = load %struct.stream_state_s*, %struct.stream_state_s** %state38, align 8, !tbaa !24
  %46 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  %47 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw, align 8, !tbaa !1
  %48 = load i32, i32* %eof, align 4, !tbaa !5
  %call = call i32 %43(%struct.stream_state_s* %45, %struct.stream_cursor_read_s* %46, %struct.stream_cursor_write_s* %47, i32 %48) #4
  store i32 %call, i32* %status, align 4, !tbaa !5
  %49 = load i32, i32* %left, align 4, !tbaa !5
  %50 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  %limit39 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %50, i32 0, i32 1
  %51 = load i8*, i8** %limit39, align 8, !tbaa !33
  %idx.ext40 = sext i32 %49 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %51, i64 %idx.ext40
  store i8* %add.ptr41, i8** %limit39, align 8, !tbaa !33
  br label %do.body.42

do.body.42:                                       ; preds = %do.end
  br label %do.cond.43

do.cond.43:                                       ; preds = %do.body.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  %52 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %cmp45 = icmp eq %struct.stream_s* %52, null
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %do.end.44
  %53 = load i32, i32* %status, align 4, !tbaa !5
  %cmp48 = icmp ne i32 %53, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false.47, %do.end.44
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %lor.lhs.false.47
  %54 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %end_status52 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %54, i32 0, i32 9
  %55 = load i16, i16* %end_status52, align 2, !tbaa !58
  %conv53 = sext i16 %55 to i32
  %cmp54 = icmp slt i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.69

if.then.56:                                       ; preds = %if.end.51
  %56 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %end_status57 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 9
  %57 = load i16, i16* %end_status57, align 2, !tbaa !58
  %conv58 = sext i16 %57 to i32
  %cmp59 = icmp ne i32 %conv58, -1
  br i1 %cmp59, label %if.then.65, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.then.56
  %58 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw, align 8, !tbaa !1
  %ptr62 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %58, i32 0, i32 1
  %59 = load i8*, i8** %ptr62, align 8, !tbaa !57
  %60 = load i8*, i8** %oldpos, align 8, !tbaa !1
  %cmp63 = icmp eq i8* %59, %60
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %lor.lhs.false.61, %if.then.56
  %61 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %end_status66 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %61, i32 0, i32 9
  %62 = load i16, i16* %end_status66, align 2, !tbaa !58
  %conv67 = sext i16 %62 to i32
  store i32 %conv67, i32* %status, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %lor.lhs.false.61
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %if.end.51
  br label %do.body.70

do.body.70:                                       ; preds = %if.end.69
  %63 = bitcast %struct.stream_s** %ahead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %strm71 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %64, i32 0, i32 15
  %65 = load %struct.stream_s*, %struct.stream_s** %strm71, align 8, !tbaa !21
  store %struct.stream_s* %65, %struct.stream_s** %ahead, align 8, !tbaa !1
  %66 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %67 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %strm72 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %67, i32 0, i32 15
  store %struct.stream_s* %66, %struct.stream_s** %strm72, align 8, !tbaa !21
  %68 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  store %struct.stream_s* %68, %struct.stream_s** %prev, align 8, !tbaa !1
  %69 = load %struct.stream_s*, %struct.stream_s** %ahead, align 8, !tbaa !1
  store %struct.stream_s* %69, %struct.stream_s** %curr, align 8, !tbaa !1
  %70 = bitcast %struct.stream_s** %ahead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  br label %do.cond.73

do.cond.73:                                       ; preds = %do.body.70
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  %71 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  call void @stream_compact(%struct.stream_s* %71, i32 0) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.74, %if.end.68, %if.then.50
  %72 = bitcast i32* %eof to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast %struct.stream_cursor_read_s** %pr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast %struct.stream_cursor_read_s* %cr to i8*
  call void @llvm.lifetime.end(i64 24, i8* %75) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.1

for.end:                                          ; preds = %cleanup
  %76 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %cmp78 = icmp ne %struct.stream_s* %76, null
  br i1 %cmp78, label %land.lhs.true, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %for.end
  %77 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.stream_s, %struct.stream_s* %77, i32 0, i32 26
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !39
  %tobool = icmp ne %struct._IO_FILE* %78, null
  br i1 %tobool, label %land.lhs.true, label %if.end.103

land.lhs.true:                                    ; preds = %lor.lhs.false.80, %for.end
  %79 = load i32, i32* %status, align 4, !tbaa !5
  %cmp81 = icmp eq i32 %79, -1
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.103

land.lhs.true.83:                                 ; preds = %land.lhs.true
  %80 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %cursor84 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %80, i32 0, i32 5
  %r85 = bitcast %union.stream_cursor_s* %cursor84 to %struct.stream_cursor_read_s*
  %ptr86 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r85, i32 0, i32 0
  %81 = load i8*, i8** %ptr86, align 8, !tbaa !31
  %82 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %cursor87 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %82, i32 0, i32 5
  %r88 = bitcast %union.stream_cursor_s* %cursor87 to %struct.stream_cursor_read_s*
  %limit89 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r88, i32 0, i32 1
  %83 = load i8*, i8** %limit89, align 8, !tbaa !33
  %cmp90 = icmp uge i8* %81, %83
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.103

land.lhs.true.92:                                 ; preds = %land.lhs.true.83
  %84 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %close_at_eod = getelementptr inbounds %struct.stream_s, %struct.stream_s* %84, i32 0, i32 24
  %85 = load i32, i32* %close_at_eod, align 4, !tbaa !47
  %tobool93 = icmp ne i32 %85, 0
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.103

land.lhs.true.94:                                 ; preds = %land.lhs.true.92
  %86 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %cmp95 = icmp eq %struct.stream_s* %86, null
  br i1 %cmp95, label %if.then.97, label %if.end.103

if.then.97:                                       ; preds = %land.lhs.true.94
  %87 = bitcast i32* %cstat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #2
  %88 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %call98 = call i32 @sclose(%struct.stream_s* %88) #4
  store i32 %call98, i32* %cstat, align 4, !tbaa !5
  %89 = load i32, i32* %cstat, align 4, !tbaa !5
  %cmp99 = icmp ne i32 %89, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.97
  %90 = load i32, i32* %cstat, align 4, !tbaa !5
  store i32 %90, i32* %status, align 4, !tbaa !5
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.then.97
  %91 = bitcast i32* %cstat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #2
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true.94, %land.lhs.true.92, %land.lhs.true.83, %land.lhs.true, %lor.lhs.false.80
  %92 = load i32, i32* %status, align 4, !tbaa !5
  %cmp104 = icmp sge i32 %92, 0
  br i1 %cmp104, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %if.end.103
  br label %cond.end.108

cond.false.107:                                   ; preds = %if.end.103
  %93 = load i32, i32* %status, align 4, !tbaa !5
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.106
  %cond109 = phi i32 [ 0, %cond.true.106 ], [ %93, %cond.false.107 ]
  %conv110 = trunc i32 %cond109 to i16
  %94 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %end_status111 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %94, i32 0, i32 9
  store i16 %conv110, i16* %end_status111, align 2, !tbaa !58
  %95 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %cmp112 = icmp eq %struct.stream_s* %95, null
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %cond.end.108
  %96 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %96, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

if.end.115:                                       ; preds = %cond.end.108
  br label %do.body.116

do.body.116:                                      ; preds = %if.end.115
  %97 = bitcast %struct.stream_s** %back to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #2
  %98 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %strm117 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %98, i32 0, i32 15
  %99 = load %struct.stream_s*, %struct.stream_s** %strm117, align 8, !tbaa !21
  store %struct.stream_s* %99, %struct.stream_s** %back, align 8, !tbaa !1
  %100 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %101 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %strm118 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %101, i32 0, i32 15
  store %struct.stream_s* %100, %struct.stream_s** %strm118, align 8, !tbaa !21
  %102 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  store %struct.stream_s* %102, %struct.stream_s** %curr, align 8, !tbaa !1
  %103 = load %struct.stream_s*, %struct.stream_s** %back, align 8, !tbaa !1
  store %struct.stream_s* %103, %struct.stream_s** %prev, align 8, !tbaa !1
  %104 = bitcast %struct.stream_s** %back to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.body.116
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.121

cleanup.121:                                      ; preds = %do.end.120, %if.then.114
  %105 = bitcast i8** %oldpos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast %struct.stream_cursor_write_s** %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast %struct.stream_s** %strm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %cleanup.dest.124 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.124, label %cleanup.126 [
    i32 0, label %cleanup.cont.125
  ]

cleanup.cont.125:                                 ; preds = %cleanup.121
  br label %for.cond

cleanup.126:                                      ; preds = %cleanup.121
  %108 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast %struct.stream_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast %struct.stream_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = load i32, i32* %retval
  ret i32 %111

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @sputs(%struct.stream_s* %s, i8* %str, i32 %wlen, i32* %pn) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %str.addr = alloca i8*, align 8
  %wlen.addr = alloca i32, align 4
  %pn.addr = alloca i32*, align 8
  %len = alloca i32, align 4
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %wlen, i32* %wlen.addr, align 4, !tbaa !5
  store i32* %pn, i32** %pn.addr, align 8, !tbaa !1
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %wlen.addr, align 4, !tbaa !5
  store i32 %1, i32* %len, align 4, !tbaa !5
  %2 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 9
  %4 = load i16, i16* %end_status, align 2, !tbaa !58
  %conv = sext i16 %4 to i32
  store i32 %conv, i32* %status, align 4, !tbaa !5
  %5 = load i32, i32* %status, align 4, !tbaa !5
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.47

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.46, %if.then
  %6 = load i32, i32* %len, align 4, !tbaa !5
  %cmp2 = icmp ugt i32 %6, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  %9 = load i8*, i8** %limit, align 8, !tbaa !34
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 5
  %w5 = bitcast %union.stream_cursor_s* %cursor4 to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w5, i32 0, i32 1
  %11 = load i8*, i8** %ptr, align 8, !tbaa !57
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv6, i32* %count, align 4, !tbaa !5
  %12 = load i32, i32* %count, align 4, !tbaa !5
  %cmp7 = icmp ugt i32 %12, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %while.body
  %13 = load i32, i32* %count, align 4, !tbaa !5
  %14 = load i32, i32* %len, align 4, !tbaa !5
  %cmp10 = icmp ugt i32 %13, %14
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.9
  %15 = load i32, i32* %len, align 4, !tbaa !5
  store i32 %15, i32* %count, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.9
  %16 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %16, i32 0, i32 5
  %w14 = bitcast %union.stream_cursor_s* %cursor13 to %struct.stream_cursor_write_s*
  %ptr15 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w14, i32 0, i32 1
  %17 = load i8*, i8** %ptr15, align 8, !tbaa !57
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %19 = load i32, i32* %count, align 4, !tbaa !5
  %conv16 = zext i32 %19 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %18, i64 %conv16) #5
  %20 = load i32, i32* %count, align 4, !tbaa !5
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 5
  %w18 = bitcast %union.stream_cursor_s* %cursor17 to %struct.stream_cursor_write_s*
  %ptr19 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w18, i32 0, i32 1
  %22 = load i8*, i8** %ptr19, align 8, !tbaa !57
  %idx.ext = zext i32 %20 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr20, i8** %ptr19, align 8, !tbaa !57
  %23 = load i32, i32* %count, align 4, !tbaa !5
  %24 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %idx.ext21 = zext i32 %23 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %24, i64 %idx.ext21
  store i8* %add.ptr22, i8** %str.addr, align 8, !tbaa !1
  %25 = load i32, i32* %count, align 4, !tbaa !5
  %26 = load i32, i32* %len, align 4, !tbaa !5
  %sub = sub i32 %26, %25
  store i32 %sub, i32* %len, align 4, !tbaa !5
  br label %if.end.43

if.else:                                          ; preds = %while.body
  call void @llvm.lifetime.start(i64 1, i8* %ch) #2
  %27 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !43
  store i8 %28, i8* %ch, align 1, !tbaa !43
  %29 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor23 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %29, i32 0, i32 5
  %w24 = bitcast %union.stream_cursor_s* %cursor23 to %struct.stream_cursor_write_s*
  %ptr25 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w24, i32 0, i32 1
  %30 = load i8*, i8** %ptr25, align 8, !tbaa !57
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 5
  %w27 = bitcast %union.stream_cursor_s* %cursor26 to %struct.stream_cursor_write_s*
  %limit28 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w27, i32 0, i32 2
  %32 = load i8*, i8** %limit28, align 8, !tbaa !34
  %cmp29 = icmp uge i8* %30, %32
  br i1 %cmp29, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %33 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 5
  %w32 = bitcast %union.stream_cursor_s* %cursor31 to %struct.stream_cursor_write_s*
  %ptr33 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w32, i32 0, i32 1
  %34 = load i8*, i8** %ptr33, align 8, !tbaa !57
  %incdec.ptr34 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr34, i8** %ptr33, align 8, !tbaa !57
  %35 = load i8, i8* %ch, align 1, !tbaa !43
  %36 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %36, i32 0, i32 5
  %w36 = bitcast %union.stream_cursor_s* %cursor35 to %struct.stream_cursor_write_s*
  %ptr37 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w36, i32 0, i32 1
  %37 = load i8*, i8** %ptr37, align 8, !tbaa !57
  store i8 %35, i8* %37, align 1, !tbaa !43
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %38 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %39 = load i8, i8* %ch, align 1, !tbaa !43
  %call38 = call i32 @spputc(%struct.stream_s* %38, i8 zeroext %39) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call38, %cond.false ]
  store i32 %cond, i32* %status, align 4, !tbaa !5
  %40 = load i32, i32* %status, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %40, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %cond.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %cond.end
  %41 = load i32, i32* %len, align 4, !tbaa !5
  %dec = add i32 %41, -1
  store i32 %dec, i32* %len, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.41
  call void @llvm.lifetime.end(i64 1, i8* %ch) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.43

if.end.43:                                        ; preds = %cleanup.cont, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.44

cleanup.44:                                       ; preds = %if.end.43, %cleanup
  %42 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %cleanup.dest.45 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.45, label %unreachable [
    i32 0, label %cleanup.cont.46
    i32 3, label %while.end
  ]

cleanup.cont.46:                                  ; preds = %cleanup.44
  br label %while.cond

while.end:                                        ; preds = %cleanup.44, %while.cond
  br label %if.end.47

if.end.47:                                        ; preds = %while.end, %entry
  %43 = load i32, i32* %wlen.addr, align 4, !tbaa !5
  %44 = load i32, i32* %len, align 4, !tbaa !5
  %sub48 = sub i32 %43, %44
  %45 = load i32*, i32** %pn.addr, align 8, !tbaa !1
  store i32 %sub48, i32* %45, align 4, !tbaa !5
  %46 = load i32, i32* %status, align 4, !tbaa !5
  %cmp49 = icmp sge i32 %46, 0
  br i1 %cmp49, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %if.end.47
  br label %cond.end.53

cond.false.52:                                    ; preds = %if.end.47
  %47 = load i32, i32* %status, align 4, !tbaa !5
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.51
  %cond54 = phi i32 [ 0, %cond.true.51 ], [ %47, %cond.false.52 ]
  store i32 1, i32* %cleanup.dest.slot
  %48 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  ret i32 %cond54

unreachable:                                      ; preds = %cleanup.44
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @spskip(%struct.stream_s* %s, i64 %nskip, i64* %pskipped) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %nskip.addr = alloca i64, align 8
  %pskipped.addr = alloca i64*, align 8
  %n = alloca i64, align 8
  %min_left = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %pos = alloca i64, align 8
  %status = alloca i32, align 4
  %status27 = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %nskip, i64* %nskip.addr, align 8, !tbaa !30
  store i64* %pskipped, i64** %pskipped.addr, align 8, !tbaa !1
  %0 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i64, i64* %nskip.addr, align 8, !tbaa !30
  store i64 %1, i64* %n, align 8, !tbaa !30
  %2 = bitcast i64* %min_left to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i64, i64* %nskip.addr, align 8, !tbaa !30
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 11
  %5 = load i8, i8* %modes, align 1, !tbaa !37
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i64*, i64** %pskipped.addr, align 8, !tbaa !1
  store i64 0, i64* %6, align 8, !tbaa !30
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %modes3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 11
  %8 = load i8, i8* %modes3, align 1, !tbaa !37
  %conv4 = zext i8 %8 to i32
  %and5 = and i32 %conv4, 4
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %9 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %10) #4
  store i64 %call, i64* %pos, align 8, !tbaa !30
  %11 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %13 = load i64, i64* %pos, align 8, !tbaa !30
  %14 = load i64, i64* %n, align 8, !tbaa !30
  %add = add nsw i64 %13, %14
  %call9 = call i32 @spseek(%struct.stream_s* %12, i64 %add) #4
  store i32 %call9, i32* %status, align 4, !tbaa !5
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call10 = call i64 @stell(%struct.stream_s* %15) #4
  %16 = load i64, i64* %pos, align 8, !tbaa !30
  %sub = sub nsw i64 %call10, %16
  %17 = load i64*, i64** %pskipped.addr, align 8, !tbaa !1
  store i64 %sub, i64* %17, align 8, !tbaa !30
  %18 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %19 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  br label %cleanup.81

if.end.11:                                        ; preds = %if.end
  %21 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 9
  %22 = load i16, i16* %end_status, align 2, !tbaa !58
  %conv12 = sext i16 %22 to i32
  %cmp13 = icmp eq i32 %conv12, -1
  br i1 %cmp13, label %cond.true, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.11
  %23 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 9
  %24 = load i16, i16* %end_status16, align 2, !tbaa !58
  %conv17 = sext i16 %24 to i32
  %cmp18 = icmp eq i32 %conv17, -2
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.15, %if.end.11
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.15
  %25 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 18
  %26 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !24
  %min_left20 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %26, i32 0, i32 3
  %27 = load i32, i32* %min_left20, align 4, !tbaa !55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %27, %cond.false ]
  %conv21 = sext i32 %cond to i64
  store i64 %conv21, i64* %min_left, align 8, !tbaa !30
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cond.end
  %28 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %29 = load i8*, i8** %limit, align 8, !tbaa !33
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor22 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 5
  %r23 = bitcast %union.stream_cursor_s* %cursor22 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r23, i32 0, i32 0
  %31 = load i8*, i8** %ptr, align 8, !tbaa !31
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %32 = load i64, i64* %n, align 8, !tbaa !30
  %33 = load i64, i64* %min_left, align 8, !tbaa !30
  %add24 = add nsw i64 %32, %33
  %cmp25 = icmp slt i64 %sub.ptr.sub, %add24
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = bitcast i32* %status27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor28 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %r29 = bitcast %union.stream_cursor_s* %cursor28 to %struct.stream_cursor_read_s*
  %limit30 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r29, i32 0, i32 1
  %36 = load i8*, i8** %limit30, align 8, !tbaa !33
  %37 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor31 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 5
  %r32 = bitcast %union.stream_cursor_s* %cursor31 to %struct.stream_cursor_read_s*
  %ptr33 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r32, i32 0, i32 0
  %38 = load i8*, i8** %ptr33, align 8, !tbaa !31
  %sub.ptr.lhs.cast34 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast35 = ptrtoint i8* %38 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %39 = load i64, i64* %n, align 8, !tbaa !30
  %sub37 = sub nsw i64 %39, %sub.ptr.sub36
  store i64 %sub37, i64* %n, align 8, !tbaa !30
  %40 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor38 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 5
  %r39 = bitcast %union.stream_cursor_s* %cursor38 to %struct.stream_cursor_read_s*
  %limit40 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r39, i32 0, i32 1
  %41 = load i8*, i8** %limit40, align 8, !tbaa !33
  %42 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor41 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %42, i32 0, i32 5
  %r42 = bitcast %union.stream_cursor_s* %cursor41 to %struct.stream_cursor_read_s*
  %ptr43 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r42, i32 0, i32 0
  store i8* %41, i8** %ptr43, align 8, !tbaa !31
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status44 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %43, i32 0, i32 9
  %44 = load i16, i16* %end_status44, align 2, !tbaa !58
  %tobool = icmp ne i16 %44, 0
  br i1 %tobool, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %while.body
  %45 = load i64, i64* %nskip.addr, align 8, !tbaa !30
  %46 = load i64, i64* %n, align 8, !tbaa !30
  %sub46 = sub nsw i64 %45, %46
  %47 = load i64*, i64** %pskipped.addr, align 8, !tbaa !1
  store i64 %sub46, i64* %47, align 8, !tbaa !30
  %48 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status47 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %48, i32 0, i32 9
  %49 = load i16, i16* %end_status47, align 2, !tbaa !58
  %conv48 = sext i16 %49 to i32
  store i32 %conv48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %while.body
  %50 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor50 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %50, i32 0, i32 5
  %r51 = bitcast %union.stream_cursor_s* %cursor50 to %struct.stream_cursor_read_s*
  %limit52 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r51, i32 0, i32 1
  %51 = load i8*, i8** %limit52, align 8, !tbaa !33
  %52 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor53 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %52, i32 0, i32 5
  %r54 = bitcast %union.stream_cursor_s* %cursor53 to %struct.stream_cursor_read_s*
  %ptr55 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r54, i32 0, i32 0
  %53 = load i8*, i8** %ptr55, align 8, !tbaa !31
  %sub.ptr.lhs.cast56 = ptrtoint i8* %51 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %53 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %cmp59 = icmp sgt i64 %sub.ptr.sub58, 1
  br i1 %cmp59, label %cond.true.61, label %cond.false.69

cond.true.61:                                     ; preds = %if.end.49
  %54 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor62 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %54, i32 0, i32 5
  %r63 = bitcast %union.stream_cursor_s* %cursor62 to %struct.stream_cursor_read_s*
  %ptr64 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r63, i32 0, i32 0
  %55 = load i8*, i8** %ptr64, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr, i8** %ptr64, align 8, !tbaa !31
  %56 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor65 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %56, i32 0, i32 5
  %r66 = bitcast %union.stream_cursor_s* %cursor65 to %struct.stream_cursor_read_s*
  %ptr67 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r66, i32 0, i32 0
  %57 = load i8*, i8** %ptr67, align 8, !tbaa !31
  %58 = load i8, i8* %57, align 1, !tbaa !43
  %conv68 = zext i8 %58 to i32
  br label %cond.end.71

cond.false.69:                                    ; preds = %if.end.49
  %59 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call70 = call i32 @spgetcc(%struct.stream_s* %59, i32 1) #4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.61
  %cond72 = phi i32 [ %conv68, %cond.true.61 ], [ %call70, %cond.false.69 ]
  store i32 %cond72, i32* %status27, align 4, !tbaa !5
  %60 = load i32, i32* %status27, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %60, 0
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %cond.end.71
  %61 = load i64, i64* %nskip.addr, align 8, !tbaa !30
  %62 = load i64, i64* %n, align 8, !tbaa !30
  %sub76 = sub nsw i64 %61, %62
  %63 = load i64*, i64** %pskipped.addr, align 8, !tbaa !1
  store i64 %sub76, i64* %63, align 8, !tbaa !30
  %64 = load i32, i32* %status27, align 4, !tbaa !5
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %cond.end.71
  %65 = load i64, i64* %n, align 8, !tbaa !30
  %dec = add nsw i64 %65, -1
  store i64 %dec, i64* %n, align 8, !tbaa !30
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.77, %if.then.75, %if.then.45
  %66 = bitcast i32* %status27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.81 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %67 = load i64, i64* %n, align 8, !tbaa !30
  %68 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor78 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %68, i32 0, i32 5
  %r79 = bitcast %union.stream_cursor_s* %cursor78 to %struct.stream_cursor_read_s*
  %ptr80 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r79, i32 0, i32 0
  %69 = load i8*, i8** %ptr80, align 8, !tbaa !31
  %add.ptr = getelementptr inbounds i8, i8* %69, i64 %67
  store i8* %add.ptr, i8** %ptr80, align 8, !tbaa !31
  %70 = load i64, i64* %nskip.addr, align 8, !tbaa !30
  %71 = load i64*, i64** %pskipped.addr, align 8, !tbaa !1
  store i64 %70, i64* %71, align 8, !tbaa !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81

cleanup.81:                                       ; preds = %while.end, %cleanup, %if.then.8, %if.then
  %72 = bitcast i64* %min_left to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast i64* %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define i32 @sreadline(%struct.stream_s* %s_in, %struct.stream_s* %s_out, i8* %readline_data, %struct.gs_const_string_s* %prompt, %struct.gs_string_s* %buf, %struct.gs_memory_s* %bufmem, i32* %pcount, i32* %pin_eol, i32 (%struct.stream_s*)* %is_stdin) #0 {
entry:
  %retval = alloca i32, align 4
  %s_in.addr = alloca %struct.stream_s*, align 8
  %s_out.addr = alloca %struct.stream_s*, align 8
  %readline_data.addr = alloca i8*, align 8
  %prompt.addr = alloca %struct.gs_const_string_s*, align 8
  %buf.addr = alloca %struct.gs_string_s*, align 8
  %bufmem.addr = alloca %struct.gs_memory_s*, align 8
  %pcount.addr = alloca i32*, align 8
  %pin_eol.addr = alloca i32*, align 8
  %is_stdin.addr = alloca i32 (%struct.stream_s*)*, align 8
  %count = alloca i32, align 4
  %ignore_n = alloca i32, align 4
  %ch = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ch9 = alloca i32, align 4
  %ch23 = alloca i32, align 4
  %nsize = alloca i32, align 4
  %ndata = alloca i8*, align 8
  store %struct.stream_s* %s_in, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  store %struct.stream_s* %s_out, %struct.stream_s** %s_out.addr, align 8, !tbaa !1
  store i8* %readline_data, i8** %readline_data.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %prompt, %struct.gs_const_string_s** %prompt.addr, align 8, !tbaa !1
  store %struct.gs_string_s* %buf, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %bufmem, %struct.gs_memory_s** %bufmem.addr, align 8, !tbaa !1
  store i32* %pcount, i32** %pcount.addr, align 8, !tbaa !1
  store i32* %pin_eol, i32** %pin_eol.addr, align 8, !tbaa !1
  store i32 (%struct.stream_s*)* %is_stdin, i32 (%struct.stream_s*)** %is_stdin.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !5
  store i32 %2, i32* %count, align 4, !tbaa !5
  %3 = load i32, i32* %count, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.stream_s*, %struct.stream_s** %s_out.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.stream_s* %4, null
  br i1 %tobool, label %land.lhs.true.1, label %if.end.6

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %5 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %prompt.addr, align 8, !tbaa !1
  %tobool2 = icmp ne %struct.gs_const_string_s* %5, null
  br i1 %tobool2, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true.1
  %6 = bitcast i32* %ignore_n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.stream_s*, %struct.stream_s** %s_out.addr, align 8, !tbaa !1
  %9 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %prompt.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8, !tbaa !25
  %11 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %prompt.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %11, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !26
  %call = call i32 @sputs(%struct.stream_s* %8, i8* %10, i32 %12, i32* %ignore_n) #4
  store i32 %call, i32* %ch, align 4, !tbaa !5
  %13 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %14 = load i32, i32* %ch, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %15 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast i32* %ignore_n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.6

if.end.6:                                         ; preds = %cleanup.cont, %land.lhs.true.1, %land.lhs.true, %entry
  br label %top

top:                                              ; preds = %cleanup.76, %if.end.6
  %17 = load i32*, i32** %pin_eol.addr, align 8, !tbaa !1
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %if.then.8, label %if.end.22

if.then.8:                                        ; preds = %top
  %19 = bitcast i32* %ch9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.stream_s*, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  %call10 = call i32 @spgetcc(%struct.stream_s* %20, i32 0) #4
  store i32 %call10, i32* %ch9, align 4, !tbaa !5
  %21 = load i32, i32* %ch9, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %21, -1
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.8
  %22 = load i32*, i32** %pin_eol.addr, align 8, !tbaa !1
  store i32 0, i32* %22, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.else:                                          ; preds = %if.then.8
  %23 = load i32, i32* %ch9, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %23, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  %24 = load i32, i32* %ch9, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

if.else.15:                                       ; preds = %if.else
  %25 = load i32, i32* %ch9, align 4, !tbaa !5
  %cmp16 = icmp ne i32 %25, 10
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.15
  %26 = load %struct.stream_s*, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %27 = load i8*, i8** %ptr, align 8, !tbaa !31
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !31
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19
  %28 = load i32*, i32** %pin_eol.addr, align 8, !tbaa !1
  store i32 0, i32* %28, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.21

cleanup.21:                                       ; preds = %if.end.20, %if.then.14, %if.then.12
  %29 = bitcast i32* %ch9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  br label %cleanup.79

if.end.22:                                        ; preds = %top
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.78, %if.end.22
  %30 = bitcast i32* %ch23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = load %struct.stream_s*, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  %cursor24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %31, i32 0, i32 5
  %r25 = bitcast %union.stream_cursor_s* %cursor24 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r25, i32 0, i32 1
  %32 = load i8*, i8** %limit, align 8, !tbaa !33
  %33 = load %struct.stream_s*, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  %cursor26 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %33, i32 0, i32 5
  %r27 = bitcast %union.stream_cursor_s* %cursor26 to %struct.stream_cursor_read_s*
  %ptr28 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r27, i32 0, i32 0
  %34 = load i8*, i8** %ptr28, align 8, !tbaa !31
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp29 = icmp sgt i64 %sub.ptr.sub, 1
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %35 = load %struct.stream_s*, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  %cursor30 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 5
  %r31 = bitcast %union.stream_cursor_s* %cursor30 to %struct.stream_cursor_read_s*
  %ptr32 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r31, i32 0, i32 0
  %36 = load i8*, i8** %ptr32, align 8, !tbaa !31
  %incdec.ptr33 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr33, i8** %ptr32, align 8, !tbaa !31
  %37 = load %struct.stream_s*, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  %cursor34 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %37, i32 0, i32 5
  %r35 = bitcast %union.stream_cursor_s* %cursor34 to %struct.stream_cursor_read_s*
  %ptr36 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r35, i32 0, i32 0
  %38 = load i8*, i8** %ptr36, align 8, !tbaa !31
  %39 = load i8, i8* %38, align 1, !tbaa !43
  %conv = zext i8 %39 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %40 = load %struct.stream_s*, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  %call37 = call i32 @spgetcc(%struct.stream_s* %40, i32 1) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call37, %cond.false ]
  store i32 %cond, i32* %ch23, align 4, !tbaa !5
  %41 = load i32, i32* %ch23, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %41, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %cond.end
  %42 = load i32, i32* %count, align 4, !tbaa !5
  %43 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  store i32 %42, i32* %43, align 4, !tbaa !5
  %44 = load i32, i32* %ch23, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.41:                                        ; preds = %cond.end
  %45 = load i32, i32* %ch23, align 4, !tbaa !5
  switch i32 %45, label %sw.epilog [
    i32 13, label %sw.bb
    i32 10, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %if.end.41
  %46 = load i32, i32* %count, align 4, !tbaa !5
  %47 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  store i32 %46, i32* %47, align 4, !tbaa !5
  %48 = load i32*, i32** %pin_eol.addr, align 8, !tbaa !1
  store i32 1, i32* %48, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.76

sw.bb.42:                                         ; preds = %if.end.41
  %49 = load i32, i32* %count, align 4, !tbaa !5
  %50 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  store i32 %49, i32* %50, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

sw.epilog:                                        ; preds = %if.end.41
  %51 = load i32, i32* %count, align 4, !tbaa !5
  %52 = load %struct.gs_string_s*, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  %size43 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %52, i32 0, i32 1
  %53 = load i32, i32* %size43, align 4, !tbaa !18
  %cmp44 = icmp uge i32 %51, %53
  br i1 %cmp44, label %if.then.46, label %if.end.73

if.then.46:                                       ; preds = %sw.epilog
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bufmem.addr, align 8, !tbaa !1
  %tobool47 = icmp ne %struct.gs_memory_s* %54, null
  br i1 %tobool47, label %if.end.53, label %if.then.48

if.then.48:                                       ; preds = %if.then.46
  %55 = load %struct.stream_s*, %struct.stream_s** %s_in.addr, align 8, !tbaa !1
  %cursor49 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 5
  %r50 = bitcast %union.stream_cursor_s* %cursor49 to %struct.stream_cursor_read_s*
  %ptr51 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r50, i32 0, i32 0
  %56 = load i8*, i8** %ptr51, align 8, !tbaa !31
  %incdec.ptr52 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %incdec.ptr52, i8** %ptr51, align 8, !tbaa !31
  %57 = load i32, i32* %count, align 4, !tbaa !5
  %58 = load i32*, i32** %pcount.addr, align 8, !tbaa !1
  store i32 %57, i32* %58, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.76

if.end.53:                                        ; preds = %if.then.46
  %59 = bitcast i32* %nsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  %60 = load i32, i32* %count, align 4, !tbaa !5
  %61 = load i32, i32* %count, align 4, !tbaa !5
  %cmp54 = icmp ugt i32 %61, 20
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.end.53
  %62 = load i32, i32* %count, align 4, !tbaa !5
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.end.53
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i32 [ %62, %cond.true.56 ], [ 20, %cond.false.57 ]
  %add = add i32 %60, %cond59
  store i32 %add, i32* %nsize, align 4, !tbaa !5
  %63 = bitcast i8** %ndata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bufmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 18
  %65 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !64
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %bufmem.addr, align 8, !tbaa !1
  %67 = load %struct.gs_string_s*, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  %data60 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %67, i32 0, i32 0
  %68 = load i8*, i8** %data60, align 8, !tbaa !17
  %69 = load %struct.gs_string_s*, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  %size61 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %69, i32 0, i32 1
  %70 = load i32, i32* %size61, align 4, !tbaa !18
  %71 = load i32, i32* %nsize, align 4, !tbaa !5
  %call62 = call i8* %65(%struct.gs_memory_s* %66, i8* %68, i32 %70, i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #4
  store i8* %call62, i8** %ndata, align 8, !tbaa !1
  %72 = load i8*, i8** %ndata, align 8, !tbaa !1
  %cmp63 = icmp eq i8* %72, null
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %cond.end.58
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69

if.end.66:                                        ; preds = %cond.end.58
  %73 = load i8*, i8** %ndata, align 8, !tbaa !1
  %74 = load %struct.gs_string_s*, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  %data67 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %74, i32 0, i32 0
  store i8* %73, i8** %data67, align 8, !tbaa !17
  %75 = load i32, i32* %nsize, align 4, !tbaa !5
  %76 = load %struct.gs_string_s*, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  %size68 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %76, i32 0, i32 1
  store i32 %75, i32* %size68, align 4, !tbaa !18
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.69

cleanup.69:                                       ; preds = %if.end.66, %if.then.65
  %77 = bitcast i8** %ndata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast i32* %nsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %cleanup.dest.71 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.71, label %cleanup.76 [
    i32 0, label %cleanup.cont.72
  ]

cleanup.cont.72:                                  ; preds = %cleanup.69
  br label %if.end.73

if.end.73:                                        ; preds = %cleanup.cont.72, %sw.epilog
  %79 = load i32, i32* %ch23, align 4, !tbaa !5
  %conv74 = trunc i32 %79 to i8
  %80 = load i32, i32* %count, align 4, !tbaa !5
  %inc = add i32 %80, 1
  store i32 %inc, i32* %count, align 4, !tbaa !5
  %idxprom = zext i32 %80 to i64
  %81 = load %struct.gs_string_s*, %struct.gs_string_s** %buf.addr, align 8, !tbaa !1
  %data75 = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %81, i32 0, i32 0
  %82 = load i8*, i8** %data75, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds i8, i8* %82, i64 %idxprom
  store i8 %conv74, i8* %arrayidx, align 1, !tbaa !43
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.76

cleanup.76:                                       ; preds = %if.end.73, %cleanup.69, %if.then.48, %sw.bb.42, %sw.bb, %if.then.40
  %83 = bitcast i32* %ch23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %cleanup.dest.77 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.77, label %cleanup.79 [
    i32 0, label %cleanup.cont.78
    i32 2, label %top
  ]

cleanup.cont.78:                                  ; preds = %cleanup.76
  br label %for.cond

cleanup.79:                                       ; preds = %cleanup.76, %cleanup.21, %cleanup
  %84 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal i32 @swritebuf(%struct.stream_s* %s, %struct.stream_cursor_read_s* %pbuf, i32 %last) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pbuf.addr = alloca %struct.stream_cursor_read_s*, align 8
  %last.addr = alloca i32, align 4
  %prev = alloca %struct.stream_s*, align 8
  %curr = alloca %struct.stream_s*, align 8
  %depth = alloca i32, align 4
  %status = alloca i32, align 4
  %strm = alloca %struct.stream_s*, align 8
  %cw = alloca %struct.stream_cursor_write_s, align 8
  %pr = alloca %struct.stream_cursor_read_s*, align 8
  %pw = alloca %struct.stream_cursor_write_s*, align 8
  %end = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ahead = alloca %struct.stream_s*, align 8
  %back = alloca %struct.stream_s*, align 8
  %back116 = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pbuf, %struct.stream_cursor_read_s** %pbuf.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct.stream_s* null, %struct.stream_s** %prev, align 8, !tbaa !1
  %1 = bitcast %struct.stream_s** %curr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %curr, align 8, !tbaa !1
  %3 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %depth, align 4, !tbaa !5
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  br label %for.cond

for.cond:                                         ; preds = %do.end.127, %entry
  br label %for.cond.1

for.cond.1:                                       ; preds = %cleanup.cont, %for.cond
  %5 = bitcast %struct.stream_s** %strm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %strm2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 15
  %7 = load %struct.stream_s*, %struct.stream_s** %strm2, align 8, !tbaa !21
  store %struct.stream_s* %7, %struct.stream_s** %strm, align 8, !tbaa !1
  %8 = bitcast %struct.stream_cursor_write_s* %cw to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #2
  %9 = bitcast %struct.stream_cursor_read_s** %pr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast %struct.stream_cursor_write_s** %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.rhs, label %land.end.7

land.rhs:                                         ; preds = %for.cond.1
  %13 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_s* %13, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %14 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %14, 1
  br i1 %cmp3, label %land.rhs.4, label %land.end

land.rhs.4:                                       ; preds = %lor.rhs
  %15 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 9
  %16 = load i16, i16* %end_status, align 2, !tbaa !58
  %conv = sext i16 %16 to i32
  %cmp5 = icmp eq i32 %conv, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs.4, %lor.rhs
  %17 = phi i1 [ false, %lor.rhs ], [ %cmp5, %land.rhs.4 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %18 = phi i1 [ true, %land.rhs ], [ %17, %land.end ]
  br label %land.end.7

land.end.7:                                       ; preds = %lor.end, %for.cond.1
  %19 = phi i1 [ false, %for.cond.1 ], [ %18, %lor.end ]
  %land.ext = zext i1 %19 to i32
  store i32 %land.ext, i32* %end, align 4, !tbaa !5
  %20 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.stream_s* %20, null
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.end.7
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 1
  store i8* null, i8** %ptr, align 8, !tbaa !57
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %cw, i32 0, i32 2
  store i8* null, i8** %limit, align 8, !tbaa !34
  store %struct.stream_cursor_write_s* %cw, %struct.stream_cursor_write_s** %pw, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %land.end.7
  %21 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  store %struct.stream_cursor_write_s* %w, %struct.stream_cursor_write_s** %pw, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %cmp10 = icmp eq %struct.stream_s* %22, null
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end
  %23 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pbuf.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %23, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  br label %if.end.15

if.else.13:                                       ; preds = %if.end
  %24 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %cursor14 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor14 to %struct.stream_cursor_read_s*
  store %struct.stream_cursor_read_s* %r, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %do.body

do.body:                                          ; preds = %if.end.15
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %end_status16 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 9
  %26 = load i16, i16* %end_status16, align 2, !tbaa !58
  %conv17 = sext i16 %26 to i32
  store i32 %conv17, i32* %status, align 4, !tbaa !5
  %27 = load i32, i32* %status, align 4, !tbaa !5
  %cmp18 = icmp sge i32 %27, 0
  br i1 %cmp18, label %if.then.20, label %if.end.37

if.then.20:                                       ; preds = %do.end
  %28 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %28, i32 0, i32 14
  %process = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  %29 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !74
  %30 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %30, i32 0, i32 18
  %31 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !24
  %32 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr, align 8, !tbaa !1
  %33 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw, align 8, !tbaa !1
  %34 = load i32, i32* %end, align 4, !tbaa !5
  %call = call i32 %29(%struct.stream_state_s* %31, %struct.stream_cursor_read_s* %32, %struct.stream_cursor_write_s* %33, i32 %34) #4
  store i32 %call, i32* %status, align 4, !tbaa !5
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.body.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %35 = load i32, i32* %status, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %35, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %do.end.23
  %36 = load i32, i32* %end, align 4, !tbaa !5
  %tobool26 = icmp ne i32 %36, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %status, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %do.end.23
  %37 = load i32, i32* %status, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %37, -1
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.28
  %38 = load i32, i32* %status, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %38, -2
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %lor.lhs.false, %if.end.28
  %39 = load i32, i32* %status, align 4, !tbaa !5
  %conv34 = trunc i32 %39 to i16
  %40 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %end_status35 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %40, i32 0, i32 9
  store i16 %conv34, i16* %end_status35, align 2, !tbaa !58
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %lor.lhs.false
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %do.end
  %41 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %cmp38 = icmp eq %struct.stream_s* %41, null
  br i1 %cmp38, label %if.then.46, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end.37
  %42 = load i32, i32* %status, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %42, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.47

land.lhs.true.43:                                 ; preds = %lor.lhs.false.40
  %43 = load i32, i32* %status, align 4, !tbaa !5
  %cmp44 = icmp ne i32 %43, -1
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.43, %if.end.37
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %land.lhs.true.43, %lor.lhs.false.40
  %44 = load i32, i32* %status, align 4, !tbaa !5
  %cmp48 = icmp ne i32 %44, 1
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.end.47
  %45 = load i32, i32* %end, align 4, !tbaa !5
  %tobool51 = icmp ne i32 %45, 0
  br i1 %tobool51, label %lor.lhs.false.52, label %if.then.54

lor.lhs.false.52:                                 ; preds = %if.then.50
  %46 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %is_temp = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 16
  %47 = load i32, i32* %is_temp, align 4, !tbaa !38
  %tobool53 = icmp ne i32 %47, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %lor.lhs.false.52, %if.then.50
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %lor.lhs.false.52
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.47
  %48 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %end_status57 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %48, i32 0, i32 9
  %49 = load i16, i16* %end_status57, align 2, !tbaa !58
  %conv58 = sext i16 %49 to i32
  store i32 %conv58, i32* %status, align 4, !tbaa !5
  %50 = load i32, i32* %status, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %50, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.67

land.lhs.true.61:                                 ; preds = %if.end.56
  %51 = load i32, i32* %status, align 4, !tbaa !5
  %cmp62 = icmp ne i32 %51, -1
  br i1 %cmp62, label %if.then.66, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %land.lhs.true.61
  %52 = load i32, i32* %end, align 4, !tbaa !5
  %tobool65 = icmp ne i32 %52, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %lor.lhs.false.64, %land.lhs.true.61
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %lor.lhs.false.64, %if.end.56
  %53 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %is_temp68 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %53, i32 0, i32 16
  %54 = load i32, i32* %is_temp68, align 4, !tbaa !38
  %tobool69 = icmp ne i32 %54, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.end.67
  %55 = load i32, i32* %depth, align 4, !tbaa !5
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %depth, align 4, !tbaa !5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.67
  br label %do.body.72

do.body.72:                                       ; preds = %if.end.71
  br label %do.cond.73

do.cond.73:                                       ; preds = %do.body.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.74
  %56 = bitcast %struct.stream_s** %ahead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %57 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %strm76 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %57, i32 0, i32 15
  %58 = load %struct.stream_s*, %struct.stream_s** %strm76, align 8, !tbaa !21
  store %struct.stream_s* %58, %struct.stream_s** %ahead, align 8, !tbaa !1
  %59 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %60 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %strm77 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %60, i32 0, i32 15
  store %struct.stream_s* %59, %struct.stream_s** %strm77, align 8, !tbaa !21
  %61 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  store %struct.stream_s* %61, %struct.stream_s** %prev, align 8, !tbaa !1
  %62 = load %struct.stream_s*, %struct.stream_s** %ahead, align 8, !tbaa !1
  store %struct.stream_s* %62, %struct.stream_s** %curr, align 8, !tbaa !1
  %63 = bitcast %struct.stream_s** %ahead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  br label %do.cond.78

do.cond.78:                                       ; preds = %do.body.75
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  %64 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  call void @stream_compact(%struct.stream_s* %64, i32 0) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.79, %if.then.66, %if.then.54, %if.then.46
  %65 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #2
  %66 = bitcast %struct.stream_cursor_write_s** %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast %struct.stream_cursor_read_s** %pr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast %struct.stream_cursor_write_s* %cw to i8*
  call void @llvm.lifetime.end(i64 24, i8* %68) #2
  %69 = bitcast %struct.stream_s** %strm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.1

for.end:                                          ; preds = %cleanup
  %70 = load i32, i32* %status, align 4, !tbaa !5
  %cmp84 = icmp sge i32 %70, 0
  br i1 %cmp84, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %71 = load i32, i32* %status, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %71, %cond.false ]
  %conv86 = trunc i32 %cond to i16
  %72 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %end_status87 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %72, i32 0, i32 9
  store i16 %conv86, i16* %end_status87, align 2, !tbaa !58
  %73 = load i32, i32* %status, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %73, 0
  br i1 %cmp88, label %if.then.93, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %cond.end
  %74 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %cmp91 = icmp eq %struct.stream_s* %74, null
  br i1 %cmp91, label %if.then.93, label %if.end.114

if.then.93:                                       ; preds = %lor.lhs.false.90, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.113, %if.then.93
  %75 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %tobool94 = icmp ne %struct.stream_s* %75, null
  br i1 %tobool94, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.95

do.body.95:                                       ; preds = %while.body
  br label %do.cond.96

do.cond.96:                                       ; preds = %do.body.95
  br label %do.end.97

do.end.97:                                        ; preds = %do.cond.96
  br label %do.body.98

do.body.98:                                       ; preds = %do.end.97
  %76 = bitcast %struct.stream_s** %back to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #2
  %77 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %strm99 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %77, i32 0, i32 15
  %78 = load %struct.stream_s*, %struct.stream_s** %strm99, align 8, !tbaa !21
  store %struct.stream_s* %78, %struct.stream_s** %back, align 8, !tbaa !1
  %79 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %80 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %strm100 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %80, i32 0, i32 15
  store %struct.stream_s* %79, %struct.stream_s** %strm100, align 8, !tbaa !21
  %81 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  store %struct.stream_s* %81, %struct.stream_s** %curr, align 8, !tbaa !1
  %82 = load %struct.stream_s*, %struct.stream_s** %back, align 8, !tbaa !1
  store %struct.stream_s* %82, %struct.stream_s** %prev, align 8, !tbaa !1
  %83 = bitcast %struct.stream_s** %back to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  br label %do.cond.101

do.cond.101:                                      ; preds = %do.body.98
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %84 = load i32, i32* %status, align 4, !tbaa !5
  %cmp103 = icmp sge i32 %84, 0
  br i1 %cmp103, label %if.then.105, label %if.else.107

if.then.105:                                      ; preds = %do.end.102
  %85 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %end_status106 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %85, i32 0, i32 9
  store i16 0, i16* %end_status106, align 2, !tbaa !58
  br label %if.end.113

if.else.107:                                      ; preds = %do.end.102
  %86 = load i32, i32* %status, align 4, !tbaa !5
  %cmp108 = icmp eq i32 %86, -2
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.else.107
  %87 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %end_status111 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %87, i32 0, i32 9
  store i16 -2, i16* %end_status111, align 2, !tbaa !58
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.else.107
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.105
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %88 = load i32, i32* %status, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %89 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast %struct.stream_s** %curr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast %struct.stream_s** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  ret i32 %88

if.end.114:                                       ; preds = %lor.lhs.false.90
  br label %do.body.115

do.body.115:                                      ; preds = %if.end.114
  %93 = bitcast %struct.stream_s** %back116 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #2
  %94 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %strm117 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %94, i32 0, i32 15
  %95 = load %struct.stream_s*, %struct.stream_s** %strm117, align 8, !tbaa !21
  store %struct.stream_s* %95, %struct.stream_s** %back116, align 8, !tbaa !1
  %96 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %97 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  %strm118 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %97, i32 0, i32 15
  store %struct.stream_s* %96, %struct.stream_s** %strm118, align 8, !tbaa !21
  %98 = load %struct.stream_s*, %struct.stream_s** %prev, align 8, !tbaa !1
  store %struct.stream_s* %98, %struct.stream_s** %curr, align 8, !tbaa !1
  %99 = load %struct.stream_s*, %struct.stream_s** %back116, align 8, !tbaa !1
  store %struct.stream_s* %99, %struct.stream_s** %prev, align 8, !tbaa !1
  %100 = bitcast %struct.stream_s** %back116 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #2
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.body.115
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  %101 = load %struct.stream_s*, %struct.stream_s** %curr, align 8, !tbaa !1
  %is_temp121 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %101, i32 0, i32 16
  %102 = load i32, i32* %is_temp121, align 4, !tbaa !38
  %tobool122 = icmp ne i32 %102, 0
  br i1 %tobool122, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %do.end.120
  %103 = load i32, i32* %depth, align 4, !tbaa !5
  %dec = add nsw i32 %103, -1
  store i32 %dec, i32* %depth, align 4, !tbaa !5
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %do.end.120
  br label %do.body.125

do.body.125:                                      ; preds = %if.end.124
  br label %do.cond.126

do.cond.126:                                      ; preds = %do.body.125
  br label %do.end.127

do.end.127:                                       ; preds = %do.cond.126
  br label %for.cond

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @sread_string(%struct.stream_s* %s, i8* %ptr, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void @s_std_init(%struct.stream_s* %0, i8* %1, i32 %2, %struct.stream_procs* @sread_string.p, i32 5) #4
  %3 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf_string = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 12
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string, i32 0, i32 0
  store i8* %3, i8** %data, align 8, !tbaa !16
  %5 = load i32, i32* %len.addr, align 4, !tbaa !5
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf_string1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 12
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string1, i32 0, i32 1
  store i32 %5, i32* %size, align 4, !tbaa !75
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 9
  store i16 -1, i16* %end_status, align 2, !tbaa !58
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  %9 = load i8*, i8** %limit, align 8, !tbaa !34
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_read_s*
  %limit3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %9, i8** %limit3, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_string_available(%struct.stream_s* %s, i64* %pl) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pl.addr = alloca i64*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64* %pl, i64** %pl.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %1 = load i8*, i8** %limit, align 8, !tbaa !33
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  %3 = load i8*, i8** %ptr, align 8, !tbaa !31
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 %sub.ptr.sub, i64* %4, align 8, !tbaa !30
  %5 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  %6 = load i64, i64* %5, align 8, !tbaa !30
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %close_at_eod = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 24
  %8 = load i32, i32* %close_at_eod, align 4, !tbaa !47
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64*, i64** %pl.addr, align 8, !tbaa !1
  store i64 -1, i64* %9, align 8, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_string_read_seek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !30
  %0 = load i64, i64* %pos.addr, align 8, !tbaa !30
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %pos.addr, align 8, !tbaa !30
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 7
  %3 = load i32, i32* %bsize, align 4, !tbaa !61
  %conv = zext i32 %3 to i64
  %cmp1 = icmp sgt i64 %1, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 6
  %5 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %6 = load i64, i64* %pos.addr, align 8, !tbaa !30
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %add.ptr3, i8** %ptr, align 8, !tbaa !31
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 6
  %9 = load i8*, i8** %cbuf4, align 8, !tbaa !20
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bsize5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 7
  %11 = load i32, i32* %bsize5, align 4, !tbaa !61
  %idx.ext = zext i32 %11 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 -1
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor8 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %12, i32 0, i32 5
  %r9 = bitcast %union.stream_cursor_s* %cursor8 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r9, i32 0, i32 1
  store i8* %add.ptr7, i8** %limit, align 8, !tbaa !33
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 13
  store i64 0, i64* %position, align 8, !tbaa !59
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @s_string_read_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ignore_pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %ignore_pr, %struct.stream_cursor_read_s** %ignore_pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define void @sread_string_reusable(%struct.stream_s* %s, i8* %ptr, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void @sread_string(%struct.stream_s* %0, i8* %1, i32 %2) #4
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 14
  %4 = bitcast %struct.stream_procs* %procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.stream_procs* @sread_string_reusable.p to i8*), i64 56, i32 8, i1 false), !tbaa.struct !62
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %close_at_eod = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 24
  store i32 0, i32* %close_at_eod, align 4, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_string_reusable_reset(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 6
  %1 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !31
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 5
  %r2 = bitcast %union.stream_cursor_s* %cursor1 to %struct.stream_cursor_read_s*
  %ptr3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r2, i32 0, i32 0
  %4 = load i8*, i8** %ptr3, align 8, !tbaa !31
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 7
  %6 = load i32, i32* %bsize, align 4, !tbaa !61
  %idx.ext = zext i32 %6 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %r6 = bitcast %union.stream_cursor_s* %cursor5 to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r6, i32 0, i32 1
  store i8* %add.ptr4, i8** %limit, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_string_reusable_flush(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 6
  %1 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 7
  %3 = load i32, i32* %bsize, align 4, !tbaa !61
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr1, i8** %limit, align 8, !tbaa !33
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 5
  %r3 = bitcast %union.stream_cursor_s* %cursor2 to %struct.stream_cursor_read_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r3, i32 0, i32 0
  store i8* %add.ptr1, i8** %ptr, align 8, !tbaa !31
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s_close_disable(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %0, i32 0, i32 19
  %1 = load i16, i16* %read_id, align 2, !tbaa !76
  %conv = zext i16 %1 to i32
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 20
  %3 = load i16, i16* %write_id, align 2, !tbaa !77
  %conv1 = zext i16 %3 to i32
  %or = or i32 %conv, %conv1
  %add = add nsw i32 %or, 1
  %conv2 = trunc i32 %add to i16
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %write_id3 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 20
  store i16 %conv2, i16* %write_id3, align 2, !tbaa !77
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %read_id4 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 19
  store i16 %conv2, i16* %read_id4, align 2, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @swrite_string(%struct.stream_s* %s, i8* %ptr, i32 %len) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void @s_std_init(%struct.stream_s* %0, i8* %1, i32 %2, %struct.stream_procs* @swrite_string.p, i32 6) #4
  %3 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf_string = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 12
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string, i32 0, i32 0
  store i8* %3, i8** %data, align 8, !tbaa !16
  %5 = load i32, i32* %len.addr, align 4, !tbaa !5
  %6 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf_string1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %6, i32 0, i32 12
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %cbuf_string1, i32 0, i32 1
  store i32 %5, i32* %size, align 4, !tbaa !75
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_string_write_seek(%struct.stream_s* %s, i64 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pos.addr = alloca i64, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i64 %pos, i64* %pos.addr, align 8, !tbaa !30
  %0 = load i64, i64* %pos.addr, align 8, !tbaa !30
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %pos.addr, align 8, !tbaa !30
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bsize = getelementptr inbounds %struct.stream_s, %struct.stream_s* %2, i32 0, i32 7
  %3 = load i32, i32* %bsize, align 4, !tbaa !61
  %conv = zext i32 %3 to i64
  %cmp1 = icmp sgt i64 %1, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %4, i32 0, i32 6
  %5 = load i8*, i8** %cbuf, align 8, !tbaa !20
  %6 = load i64, i64* %pos.addr, align 8, !tbaa !30
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 5
  %w = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_write_s*
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %add.ptr3, i8** %ptr, align 8, !tbaa !57
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @s_string_write_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %ignore_pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %ignore_pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %ignore_pw, %struct.stream_cursor_write_s** %ignore_pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 -1, i32 -2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @swrite_position_only(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  call void @swrite_string(%struct.stream_s* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @swrite_position_only.discard_buf, i32 0, i32 0), i32 50) #4
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 14
  %process = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  store i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_write_position_process, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_write_position_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %ignore_pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %ignore_pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %ignore_pw, %struct.stream_cursor_write_s** %ignore_pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %limit, align 8, !tbaa !33
  %2 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %2, i32 0, i32 0
  store i8* %1, i8** %ptr, align 8, !tbaa !31
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s_init_filter(%struct.stream_s* %fs, %struct.stream_state_s* %fss, i8* %buf, i32 %bsize, %struct.stream_s* %target) #0 {
entry:
  %retval = alloca i32, align 4
  %fs.addr = alloca %struct.stream_s*, align 8
  %fss.addr = alloca %struct.stream_state_s*, align 8
  %buf.addr = alloca i8*, align 8
  %bsize.addr = alloca i32, align 4
  %target.addr = alloca %struct.stream_s*, align 8
  %templat = alloca %struct.stream_template_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %fs, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %fss, %struct.stream_state_s** %fss.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %bsize, i32* %bsize.addr, align 4, !tbaa !5
  store %struct.stream_s* %target, %struct.stream_s** %target.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %fss.addr, align 8, !tbaa !1
  %templat1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %1, i32 0, i32 0
  %2 = load %struct.stream_template_s*, %struct.stream_template_s** %templat1, align 8, !tbaa !51
  store %struct.stream_template_s* %2, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %3 = load i32, i32* %bsize.addr, align 4, !tbaa !5
  %4 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %min_in_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %4, i32 0, i32 3
  %5 = load i32, i32* %min_in_size, align 4, !tbaa !78
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.stream_s*, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %8 = load i32, i32* %bsize.addr, align 4, !tbaa !5
  call void @s_std_init(%struct.stream_s* %6, i8* %7, i32 %8, %struct.stream_procs* @s_filter_write_procs, i32 2) #4
  %9 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %9, i32 0, i32 2
  %10 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !79
  %11 = load %struct.stream_s*, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 14
  %process2 = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  store i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %10, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process2, align 8, !tbaa !74
  %12 = load %struct.stream_state_s*, %struct.stream_state_s** %fss.addr, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 18
  store %struct.stream_state_s* %12, %struct.stream_state_s** %state, align 8, !tbaa !24
  %14 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %init = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %14, i32 0, i32 1
  %15 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init, align 8, !tbaa !80
  %tobool = icmp ne i32 (%struct.stream_state_s*)* %15, null
  br i1 %tobool, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.end
  %16 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !1
  %init4 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %16, i32 0, i32 1
  %17 = load i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)** %init4, align 8, !tbaa !80
  %18 = load %struct.stream_state_s*, %struct.stream_state_s** %fss.addr, align 8, !tbaa !1
  %call = call i32 %17(%struct.stream_state_s* %18) #4
  %conv = trunc i32 %call to i16
  %19 = load %struct.stream_s*, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  %end_status = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 9
  store i16 %conv, i16* %end_status, align 2, !tbaa !58
  %20 = load %struct.stream_s*, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  %end_status5 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 9
  %21 = load i16, i16* %end_status5, align 2, !tbaa !58
  %conv6 = sext i16 %21 to i32
  %cmp7 = icmp slt i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.then.3
  %22 = load %struct.stream_s*, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  %end_status10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %22, i32 0, i32 9
  %23 = load i16, i16* %end_status10, align 2, !tbaa !58
  %conv11 = sext i16 %23 to i32
  store i32 %conv11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %24 = load %struct.stream_s*, %struct.stream_s** %target.addr, align 8, !tbaa !1
  %25 = load %struct.stream_s*, %struct.stream_s** %fs.addr, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %25, i32 0, i32 15
  store %struct.stream_s* %24, %struct.stream_s** %strm, align 8, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.9, %if.then
  %26 = bitcast %struct.stream_template_s** %templat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define %struct.stream_s* @s_add_filter(%struct.stream_s** %ps, %struct.stream_template_s* %templat, %struct.stream_state_s* %ss, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca %struct.stream_s*, align 8
  %ps.addr = alloca %struct.stream_s**, align 8
  %templat.addr = alloca %struct.stream_template_s*, align 8
  %ss.addr = alloca %struct.stream_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %es = alloca %struct.stream_s*, align 8
  %ess = alloca %struct.stream_state_s*, align 8
  %bsize = alloca i32, align 4
  %buf = alloca i8*, align 8
  %null_template = alloca %struct.stream_template_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_template_s* %templat, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  store %struct.stream_state_s* %ss, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %es to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.stream_state_s** %ess to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %bsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %min_in_size = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %3, i32 0, i32 3
  %4 = load i32, i32* %min_in_size, align 4, !tbaa !78
  %cmp = icmp ugt i32 %4, 256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %min_in_size1 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %5, i32 0, i32 3
  %6 = load i32, i32* %min_in_size1, align 4, !tbaa !78
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 256, %cond.false ]
  store i32 %cond, i32* %bsize, align 4, !tbaa !5
  %7 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %bsize, align 4, !tbaa !5
  %9 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %10 = load %struct.stream_s*, %struct.stream_s** %9, align 8, !tbaa !1
  %bsize2 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 7
  %11 = load i32, i32* %bsize2, align 4, !tbaa !61
  %cmp3 = icmp ugt i32 %8, %11
  br i1 %cmp3, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %cond.end
  %12 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %12, i32 0, i32 2
  %13 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !79
  %14 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_NullE_template, i32 0, i32 2), align 8, !tbaa !79
  %cmp4 = icmp ne i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %13, %14
  br i1 %cmp4, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %15 = bitcast %struct.stream_template_s* %null_template to i8*
  call void @llvm.lifetime.start(i64 56, i8* %15) #2
  %16 = bitcast %struct.stream_template_s* %null_template to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast (%struct.stream_template_s* @s_NullE_template to i8*), i64 56, i32 8, i1 false), !tbaa.struct !81
  %17 = load i32, i32* %bsize, align 4, !tbaa !5
  %min_in_size5 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %null_template, i32 0, i32 3
  store i32 %17, i32* %min_in_size5, align 4, !tbaa !78
  %18 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @s_add_filter(%struct.stream_s** %18, %struct.stream_template_s* %null_template, %struct.stream_state_s* null, %struct.gs_memory_s* %19) #4
  %cmp6 = icmp eq %struct.stream_s* %call, null
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.7
  %20 = bitcast %struct.stream_template_s* %null_template to i8*
  call void @llvm.lifetime.end(i64 56, i8* %20) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.8

if.end.8:                                         ; preds = %cleanup.cont, %land.lhs.true, %cond.end
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call9 = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #4
  store %struct.stream_s* %call9, %struct.stream_s** %es, align 8, !tbaa !1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %23 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !82
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load i32, i32* %bsize, align 4, !tbaa !5
  %call10 = call i8* %23(%struct.gs_memory_s* %24, i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #4
  store i8* %call10, i8** %buf, align 8, !tbaa !1
  %26 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %cmp11 = icmp eq %struct.stream_s* %26, null
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %27 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %27, null
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.8
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !69
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %29(%struct.gs_memory_s* %30, i8* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)) #4
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %free_object16 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %33 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object16, align 8, !tbaa !69
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %35 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %36 = bitcast %struct.stream_s* %35 to i8*
  call void %33(%struct.gs_memory_s* %34, i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)) #4
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end.17:                                        ; preds = %lor.lhs.false
  %37 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.stream_state_s* %37, null
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %if.end.17
  %38 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %39 = bitcast %struct.stream_s* %38 to %struct.stream_state_s*
  br label %cond.end.21

cond.false.20:                                    ; preds = %if.end.17
  %40 = load %struct.stream_state_s*, %struct.stream_state_s** %ss.addr, align 8, !tbaa !1
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi %struct.stream_state_s* [ %39, %cond.true.19 ], [ %40, %cond.false.20 ]
  store %struct.stream_state_s* %cond22, %struct.stream_state_s** %ess, align 8, !tbaa !1
  %41 = load %struct.stream_template_s*, %struct.stream_template_s** %templat.addr, align 8, !tbaa !1
  %42 = load %struct.stream_state_s*, %struct.stream_state_s** %ess, align 8, !tbaa !1
  %templat23 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %42, i32 0, i32 0
  store %struct.stream_template_s* %41, %struct.stream_template_s** %templat23, align 8, !tbaa !51
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %44 = load %struct.stream_state_s*, %struct.stream_state_s** %ess, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %44, i32 0, i32 1
  store %struct.gs_memory_s* %43, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %46 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %46, i32 0, i32 1
  store %struct.gs_memory_s* %45, %struct.gs_memory_s** %memory24, align 8, !tbaa !40
  %47 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %48 = load %struct.stream_state_s*, %struct.stream_state_s** %ess, align 8, !tbaa !1
  %49 = load i8*, i8** %buf, align 8, !tbaa !1
  %50 = load i32, i32* %bsize, align 4, !tbaa !5
  %51 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %52 = load %struct.stream_s*, %struct.stream_s** %51, align 8, !tbaa !1
  %call25 = call i32 @s_init_filter(%struct.stream_s* %47, %struct.stream_state_s* %48, i8* %49, i32 %50, %struct.stream_s* %52) #4
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %cond.end.21
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end.28:                                        ; preds = %cond.end.21
  %53 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %54 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %53, %struct.stream_s** %54, align 8, !tbaa !1
  %55 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  store %struct.stream_s* %55, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %if.end.28, %if.then.27, %if.then.13, %cleanup
  %56 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast i32* %bsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast %struct.stream_state_s** %ess to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast %struct.stream_s** %es to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = load %struct.stream_s*, %struct.stream_s** %retval
  ret %struct.stream_s* %60
}

; Function Attrs: nounwind uwtable
define i32 @s_close_filters(%struct.stream_s** %ps, %struct.stream_s* %target) #0 {
entry:
  %retval = alloca i32, align 4
  %ps.addr = alloca %struct.stream_s**, align 8
  %target.addr = alloca %struct.stream_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %sbuf = alloca i8*, align 8
  %next = alloca %struct.stream_s*, align 8
  %status = alloca i32, align 4
  %ss = alloca %struct.stream_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s** %ps, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %target, %struct.stream_s** %target.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %1 = load %struct.stream_s*, %struct.stream_s** %0, align 8, !tbaa !1
  %2 = load %struct.stream_s*, %struct.stream_s** %target.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.stream_s* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  %5 = load %struct.stream_s*, %struct.stream_s** %4, align 8, !tbaa !1
  store %struct.stream_s* %5, %struct.stream_s** %s, align 8, !tbaa !1
  %6 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %7, i32 0, i32 18
  %8 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !24
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %8, i32 0, i32 1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %10 = bitcast i8** %sbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 6
  %12 = load i8*, i8** %cbuf, align 8, !tbaa !20
  store i8* %12, i8** %sbuf, align 8, !tbaa !1
  %13 = bitcast %struct.stream_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %14, i32 0, i32 15
  %15 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !21
  store %struct.stream_s* %15, %struct.stream_s** %next, align 8, !tbaa !1
  %16 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call = call i32 @sclose(%struct.stream_s* %17) #4
  store i32 %call, i32* %status, align 4, !tbaa !5
  %18 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %state1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 18
  %20 = load %struct.stream_state_s*, %struct.stream_state_s** %state1, align 8, !tbaa !24
  store %struct.stream_state_s* %20, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %21 = load i32, i32* %status, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %21, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %22 = load i32, i32* %status, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_memory_s* %23, null
  br i1 %tobool, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %if.end
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !69
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %27 = load i8*, i8** %sbuf, align 8, !tbaa !1
  call void %25(%struct.gs_memory_s* %26, i8* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0)) #4
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object5, align 8, !tbaa !69
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %32 = bitcast %struct.stream_s* %31 to i8*
  call void %29(%struct.gs_memory_s* %30, i8* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0)) #4
  %33 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %34 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %35 = bitcast %struct.stream_s* %34 to %struct.stream_state_s*
  %cmp6 = icmp ne %struct.stream_state_s* %33, %35
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then.3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object9 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object9, align 8, !tbaa !69
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %39 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %40 = bitcast %struct.stream_state_s* %39 to i8*
  call void %37(%struct.gs_memory_s* %38, i8* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.then.3
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %41 = load %struct.stream_s*, %struct.stream_s** %next, align 8, !tbaa !1
  %42 = load %struct.stream_s**, %struct.stream_s*** %ps.addr, align 8, !tbaa !1
  store %struct.stream_s* %41, %struct.stream_s** %42, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then
  %43 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast %struct.stream_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast i8** %sbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  %47 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %48 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %cleanup
  %49 = load i32, i32* %retval
  ret i32 %49

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @file_close_finish(%struct.stream_s* %s) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @file_close_disable(%struct.stream_s* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %save_close = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 25
  %2 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %save_close, align 8, !tbaa !83
  %cmp = icmp ne i32 (%struct.stream_s*)* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %save_close1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %3, i32 0, i32 25
  %4 = load i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)** %save_close1, align 8, !tbaa !83
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct.stream_s* %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call3 = call i32 @s_close_disable(%struct.stream_s* %7) #4
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call4 = call i32 @file_close_finish(%struct.stream_s* %8) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @s_Null_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %1 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %call = call i32 @stream_move(%struct.stream_cursor_read_s* %0, %struct.stream_cursor_write_s* %1) #4
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
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
!7 = !{!8, !3, i64 154}
!8 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !9, i64 152, !3, i64 154, !3, i64 155, !10, i64 160, !11, i64 176, !12, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !9, i64 264, !9, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !13, i64 312, !6, i64 328, !11, i64 336, !11, i64 344}
!9 = !{!"short", !3, i64 0}
!10 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!11 = !{!"long", !3, i64 0}
!12 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!13 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!14 = !{!15, !2, i64 0}
!15 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!16 = !{!8, !2, i64 160}
!17 = !{!10, !2, i64 0}
!18 = !{!10, !6, i64 8}
!19 = !{!15, !6, i64 8}
!20 = !{!8, !2, i64 136}
!21 = !{!8, !2, i64 240}
!22 = !{!8, !2, i64 272}
!23 = !{!8, !2, i64 280}
!24 = !{!8, !2, i64 256}
!25 = !{!13, !2, i64 0}
!26 = !{!13, !6, i64 8}
!27 = !{!28, !2, i64 8}
!28 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!29 = !{!28, !2, i64 0}
!30 = !{!11, !11, i64 0}
!31 = !{!32, !2, i64 0}
!32 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!33 = !{!32, !2, i64 8}
!34 = !{!35, !2, i64 16}
!35 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!36 = !{!28, !2, i64 16}
!37 = !{!8, !3, i64 155}
!38 = !{!8, !6, i64 248}
!39 = !{!8, !2, i64 304}
!40 = !{!8, !2, i64 8}
!41 = !{!8, !2, i64 16}
!42 = !{!8, !6, i64 24}
!43 = !{!3, !3, i64 0}
!44 = !{!8, !2, i64 312}
!45 = !{!8, !6, i64 320}
!46 = !{!8, !6, i64 288}
!47 = !{!8, !6, i64 292}
!48 = !{!49, !2, i64 72}
!49 = !{!"gs_memory_s", !2, i64 0, !50, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!50 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!51 = !{!52, !2, i64 0}
!52 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28}
!53 = !{!52, !2, i64 8}
!54 = !{!52, !2, i64 16}
!55 = !{!52, !6, i64 24}
!56 = !{!8, !2, i64 0}
!57 = !{!35, !2, i64 8}
!58 = !{!8, !9, i64 152}
!59 = !{!8, !11, i64 176}
!60 = !{!8, !6, i64 148}
!61 = !{!8, !6, i64 144}
!62 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1}
!63 = !{!49, !2, i64 136}
!64 = !{!49, !2, i64 152}
!65 = !{!8, !2, i64 216}
!66 = !{!8, !2, i64 208}
!67 = !{!68, !2, i64 32}
!68 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!69 = !{!49, !2, i64 24}
!70 = !{!8, !2, i64 184}
!71 = !{!8, !2, i64 192}
!72 = !{!8, !2, i64 232}
!73 = !{!68, !6, i64 28}
!74 = !{!8, !2, i64 224}
!75 = !{!8, !6, i64 168}
!76 = !{!8, !9, i64 264}
!77 = !{!8, !9, i64 266}
!78 = !{!68, !6, i64 24}
!79 = !{!68, !2, i64 16}
!80 = !{!68, !2, i64 8}
!81 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1}
!82 = !{!49, !2, i64 64}
!83 = !{!8, !2, i64 296}
