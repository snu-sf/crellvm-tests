; ModuleID = './gsdsrc.bc'
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
%struct.gs_data_source_s = type { {}*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_param_string_s = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"gs_data_source_t\00", align 1
@st_data_source = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @data_source_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @data_source_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @data_source_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %psrc = alloca %struct.gs_data_source_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_data_source_s** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_data_source_s*
  store %struct.gs_data_source_s* %2, %struct.gs_data_source_s** %psrc, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %4, i32 0, i32 1
  %5 = load i32, i32* %type, align 4, !tbaa !7
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct.gs_data_source_s*
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %7, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %8 = load i8*, i8** %data1, align 8, !tbaa !9
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 0
  store i8* %8, i8** %ptr, align 8, !tbaa !11
  %10 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to %struct.gs_data_source_s*
  %data2 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %11, i32 0, i32 2
  %str3 = bitcast %union.d_* %data2 to %struct.gs_const_string_s*
  %size4 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str3, i32 0, i32 1
  %12 = load i32, i32* %size4, align 4, !tbaa !13
  %13 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size5 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %13, i32 0, i32 1
  store i32 %12, i32* %size5, align 4, !tbaa !14
  store %struct.gs_ptr_procs_s* @ptr_const_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %sw.default
  %14 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc, align 8, !tbaa !1
  %type6 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %14, i32 0, i32 1
  %15 = load i32, i32* %type6, align 4, !tbaa !7
  %cmp7 = icmp eq i32 %15, 3
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct.gs_data_source_s*
  %data9 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %17, i32 0, i32 2
  %strm = bitcast %union.d_* %data9 to %struct.stream_s**
  %18 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %19 = bitcast %struct.stream_s* %18 to i8*
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %20, i32 0, i32 0
  store i8* %19, i8** %ptr10, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.11:                                       ; preds = %if.else
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct.gs_data_source_s*
  %data12 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %22, i32 0, i32 2
  %str13 = bitcast %union.d_* %data12 to %struct.gs_const_string_s*
  %data14 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str13, i32 0, i32 0
  %23 = load i8*, i8** %data14, align 8, !tbaa !9
  %24 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr15 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %24, i32 0, i32 0
  store i8* %23, i8** %ptr15, align 8, !tbaa !11
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.11, %if.then.8, %if.then
  %25 = bitcast %struct.gs_data_source_s** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %26
}

; Function Attrs: nounwind uwtable
define internal void @data_source_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %psrc = alloca %struct.gs_data_source_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_data_source_s** %psrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_data_source_s*
  store %struct.gs_data_source_s* %2, %struct.gs_data_source_s** %psrc, align 8, !tbaa !1
  %3 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %3, i32 0, i32 1
  %4 = load i32, i32* %type, align 4, !tbaa !7
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gc_state_s* %5 to %struct.gc_procs_common_s**
  %7 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %6, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %7, i32 0, i32 2
  %8 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !15
  %9 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to %struct.gs_data_source_s*
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %10, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %8(%struct.gs_const_string_s* %str, %struct.gc_state_s* %11) #4
  br label %if.end.16

if.else:                                          ; preds = %entry
  %12 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %12, i32 0, i32 1
  %13 = load i32, i32* %type1, align 4, !tbaa !7
  %cmp2 = icmp eq i32 %13, 3
  br i1 %cmp2, label %if.then.3, label %if.else.7

if.then.3:                                        ; preds = %if.else
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gc_state_s* %14 to %struct.gc_procs_common_s**
  %16 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %15, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %16, i32 0, i32 0
  %17 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !17
  %18 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %19 = bitcast i8* %18 to %struct.gs_data_source_s*
  %data4 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %19, i32 0, i32 2
  %strm = bitcast %union.d_* %data4 to %struct.stream_s**
  %20 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  %21 = bitcast %struct.stream_s* %20 to i8*
  %22 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %17(i8* %21, %struct.gc_state_s* %22) #4
  %23 = bitcast i8* %call to %struct.stream_s*
  %24 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %25 = bitcast i8* %24 to %struct.gs_data_source_s*
  %data5 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %25, i32 0, i32 2
  %strm6 = bitcast %union.d_* %data5 to %struct.stream_s**
  store %struct.stream_s* %23, %struct.stream_s** %strm6, align 8, !tbaa !1
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %26 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gc_state_s* %26 to %struct.gc_procs_common_s**
  %28 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %27, align 8, !tbaa !1
  %reloc_struct_ptr8 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %28, i32 0, i32 0
  %29 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr8, align 8, !tbaa !17
  %30 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %31 = bitcast i8* %30 to %struct.gs_data_source_s*
  %data9 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %31, i32 0, i32 2
  %str10 = bitcast %union.d_* %data9 to %struct.gs_const_string_s*
  %data11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str10, i32 0, i32 0
  %32 = load i8*, i8** %data11, align 8, !tbaa !9
  %33 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call12 = call i8* %29(i8* %32, %struct.gc_state_s* %33) #4
  %34 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %35 = bitcast i8* %34 to %struct.gs_data_source_s*
  %data13 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %35, i32 0, i32 2
  %str14 = bitcast %union.d_* %data13 to %struct.gs_const_string_s*
  %data15 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str14, i32 0, i32 0
  store i8* %call12, i8** %data15, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.3
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then
  %36 = bitcast %struct.gs_data_source_s** %psrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @data_source_access_string(%struct.gs_data_source_s* %psrc, i64 %start, i32 %length, i8* %buf, i8** %ptr) #0 {
entry:
  %psrc.addr = alloca %struct.gs_data_source_s*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  %oklen = alloca i32, align 4
  store %struct.gs_data_source_s* %psrc, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  store i64 %start, i64* %start.addr, align 8, !tbaa !18
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %1, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %2 = load i8*, i8** %data1, align 8, !tbaa !9
  %3 = load i64, i64* %start.addr, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %4 = load i64, i64* %start.addr, align 8, !tbaa !18
  %5 = load i32, i32* %length.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  %add = add i64 %4, %conv
  %6 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  %data2 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %6, i32 0, i32 2
  %str3 = bitcast %union.d_* %data2 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str3, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !13
  %conv4 = zext i32 %7 to i64
  %cmp = icmp ule i64 %add, %conv4
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %8 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %8, null
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %10 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  store i8* %9, i8** %10, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %13 = load i32, i32* %length.addr, align 4, !tbaa !5
  %conv7 = zext i32 %13 to i64
  %call = call i8* @memcpy(i8* %11, i8* %12, i64 %conv7) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.31

if.else.8:                                        ; preds = %entry
  %14 = load i64, i64* %start.addr, align 8, !tbaa !18
  %15 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  %data9 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %15, i32 0, i32 2
  %str10 = bitcast %union.d_* %data9 to %struct.gs_const_string_s*
  %size11 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str10, i32 0, i32 1
  %16 = load i32, i32* %size11, align 4, !tbaa !13
  %conv12 = zext i32 %16 to i64
  %cmp13 = icmp ult i64 %14, %conv12
  br i1 %cmp13, label %if.then.15, label %if.else.27

if.then.15:                                       ; preds = %if.else.8
  %17 = bitcast i32* %oklen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %18, i32 0, i32 2
  %str17 = bitcast %union.d_* %data16 to %struct.gs_const_string_s*
  %size18 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str17, i32 0, i32 1
  %19 = load i32, i32* %size18, align 4, !tbaa !13
  %conv19 = zext i32 %19 to i64
  %20 = load i64, i64* %start.addr, align 8, !tbaa !18
  %sub = sub i64 %conv19, %20
  %conv20 = trunc i64 %sub to i32
  store i32 %conv20, i32* %oklen, align 4, !tbaa !5
  %21 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i32, i32* %oklen, align 4, !tbaa !5
  %conv21 = zext i32 %23 to i64
  %call22 = call i8* @memcpy(i8* %21, i8* %22, i64 %conv21) #5
  %24 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %25 = load i32, i32* %oklen, align 4, !tbaa !5
  %idx.ext = zext i32 %25 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %26 = load i32, i32* %length.addr, align 4, !tbaa !5
  %27 = load i32, i32* %oklen, align 4, !tbaa !5
  %sub24 = sub i32 %26, %27
  %conv25 = zext i32 %sub24 to i64
  %call26 = call i8* @memset(i8* %add.ptr23, i32 0, i64 %conv25) #5
  %28 = bitcast i32* %oklen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  br label %if.end.30

if.else.27:                                       ; preds = %if.else.8
  %29 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %30 = load i32, i32* %length.addr, align 4, !tbaa !5
  %conv28 = zext i32 %30 to i64
  %call29 = call i8* @memset(i8* %29, i32 0, i64 %conv28) #5
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.15
  %31 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %32 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  store i8* %31, i8** %32, align 8, !tbaa !1
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end
  %33 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @data_source_access_bytes(%struct.gs_data_source_s* %psrc, i64 %start, i32 %length, i8* %buf, i8** %ptr) #0 {
entry:
  %psrc.addr = alloca %struct.gs_data_source_s*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  store %struct.gs_data_source_s* %psrc, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  store i64 %start, i64* %start.addr, align 8, !tbaa !18
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %1, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data1 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  %2 = load i8*, i8** %data1, align 8, !tbaa !9
  %3 = load i64, i64* %start.addr, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %4 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %6 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  store i8* %5, i8** %6, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i32, i32* %length.addr, align 4, !tbaa !5
  %conv = zext i32 %9 to i64
  %call = call i8* @memcpy(i8* %7, i8* %8, i64 %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @data_source_access_stream(%struct.gs_data_source_s* %psrc, i64 %start, i32 %length, i8* %buf, i8** %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %psrc.addr = alloca %struct.gs_data_source_s*, align 8
  %start.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %s = alloca %struct.stream_s*, align 8
  %p = alloca i8*, align 8
  %nread = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_data_source_s* %psrc, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  store i64 %start, i64* %start.addr, align 8, !tbaa !18
  store i32 %length, i32* %length.addr, align 4, !tbaa !5
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_data_source_s*, %struct.gs_data_source_s** %psrc.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %1, i32 0, i32 2
  %strm = bitcast %union.d_* %data to %struct.stream_s**
  %2 = load %struct.stream_s*, %struct.stream_s** %strm, align 8, !tbaa !1
  store %struct.stream_s* %2, %struct.stream_s** %s, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i64, i64* %start.addr, align 8, !tbaa !18
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i32 0, i32 13
  %6 = load i64, i64* %position, align 8, !tbaa !20
  %cmp = icmp uge i64 %4, %6
  br i1 %cmp, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %entry
  %7 = load i64, i64* %start.addr, align 8, !tbaa !18
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %position1 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %8, i32 0, i32 13
  %9 = load i64, i64* %position1, align 8, !tbaa !20
  %sub = sub i64 %7, %9
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %10, i32 0, i32 6
  %11 = load i8*, i8** %cbuf, align 8, !tbaa !25
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %sub
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %12 = load i32, i32* %length.addr, align 4, !tbaa !5
  %idx.ext = zext i32 %12 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cursor = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 5
  %r = bitcast %union.stream_cursor_s* %cursor to %struct.stream_cursor_read_s*
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %14 = load i8*, i8** %limit, align 8, !tbaa !26
  %add.ptr3 = getelementptr inbounds i8, i8* %14, i64 1
  %cmp4 = icmp ule i8* %add.ptr2, %add.ptr3
  br i1 %cmp4, label %if.then, label %if.else.6

if.then:                                          ; preds = %land.lhs.true
  %15 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %15, null
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %17 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  store i8* %16, i8** %17, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %20 = load i32, i32* %length.addr, align 4, !tbaa !5
  %conv = zext i32 %20 to i64
  %call = call i8* @memcpy(i8* %18, i8* %19, i64 %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.25

if.else.6:                                        ; preds = %land.lhs.true, %entry
  %21 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %24 = load i64, i64* %start.addr, align 8, !tbaa !18
  %call7 = call i32 @spseek(%struct.stream_s* %23, i64 %24) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %25, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.else.6
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.else.6
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %27 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %28 = load i32, i32* %length.addr, align 4, !tbaa !5
  %call12 = call i32 @sgets(%struct.stream_s* %26, i8* %27, i32 %28, i32* %nread) #4
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %29, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.11
  %30 = load i32, i32* %nread, align 4, !tbaa !5
  %31 = load i32, i32* %length.addr, align 4, !tbaa !5
  %cmp17 = icmp ne i32 %30, %31
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.16
  %32 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  %tobool21 = icmp ne i8** %32, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %33 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %34 = load i8**, i8*** %ptr.addr, align 8, !tbaa !1
  store i8* %33, i8** %34, align 8, !tbaa !1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.19, %if.then.15, %if.then.10
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.end.25:                                        ; preds = %cleanup.cont, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %if.end.25, %cleanup
  %37 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare i32 @spseek(%struct.stream_s*, i64) #3

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !3, i64 8}
!8 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!9 = !{!10, !2, i64 0}
!10 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!11 = !{!12, !2, i64 0}
!12 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!13 = !{!10, !6, i64 8}
!14 = !{!12, !6, i64 8}
!15 = !{!16, !2, i64 16}
!16 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!17 = !{!16, !2, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !3, i64 0}
!20 = !{!21, !19, i64 176}
!21 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !22, i64 152, !3, i64 154, !3, i64 155, !23, i64 160, !19, i64 176, !24, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !22, i64 264, !22, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !10, i64 312, !6, i64 328, !19, i64 336, !19, i64 344}
!22 = !{!"short", !3, i64 0}
!23 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!24 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!25 = !{!21, !2, i64 136}
!26 = !{!27, !2, i64 8}
!27 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
