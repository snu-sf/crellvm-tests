; ModuleID = './smd5.bc'
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
%struct.stream_MD5E_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.gs_md5_state_s }
%struct.gs_md5_state_s = type { [2 x i32], [4 x i32], [64 x i8] }

@st_MD5E_state = internal constant %struct.gs_memory_struct_type_s { i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_MD5E_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_MD5E_state, i32 (%struct.stream_state_s*)* @s_MD5E_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_MD5E_process, i32 1, i32 16, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [19 x i8] c"s_MD5E_make_stream\00", align 1
@s_MD5C_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_MD5E_state, i32 (%struct.stream_state_s*)* @s_MD5E_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_MD5C_process, i32 1, i32 1024, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"s_MD5E_make_stream(buffer)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"MD5Encode state\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_MD5E_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_MD5E_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_MD5E_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_MD5E_state_s*
  store %struct.stream_MD5E_state_s* %2, %struct.stream_MD5E_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_MD5E_state_s*, %struct.stream_MD5E_state_s** %ss, align 8, !tbaa !1
  %md5 = getelementptr inbounds %struct.stream_MD5E_state_s, %struct.stream_MD5E_state_s* %3, i32 0, i32 5
  call void @gs_md5_init(%struct.gs_md5_state_s* %md5) #4
  %4 = bitcast %struct.stream_MD5E_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_MD5E_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_MD5E_state_s*, align 8
  %status = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_MD5E_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_MD5E_state_s*
  store %struct.stream_MD5E_state_s* %2, %struct.stream_MD5E_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %status, align 4, !tbaa !5
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !7
  %6 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %limit, align 8, !tbaa !9
  %cmp = icmp ult i8* %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.stream_MD5E_state_s*, %struct.stream_MD5E_state_s** %ss, align 8, !tbaa !1
  %md5 = getelementptr inbounds %struct.stream_MD5E_state_s, %struct.stream_MD5E_state_s* %8, i32 0, i32 5
  %9 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %ptr1, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %limit2, align 8, !tbaa !9
  %13 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %13, i32 0, i32 0
  %14 = load i8*, i8** %ptr3, align 8, !tbaa !7
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  call void @gs_md5_append(%struct.gs_md5_state_s* %md5, i8* %add.ptr, i32 %conv) #4
  %15 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit4 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %15, i32 0, i32 1
  %16 = load i8*, i8** %limit4, align 8, !tbaa !9
  %17 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr5 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %17, i32 0, i32 0
  store i8* %16, i8** %ptr5, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.6, label %if.end.21

if.then.6:                                        ; preds = %if.end
  %19 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit7 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %19, i32 0, i32 2
  %20 = load i8*, i8** %limit7, align 8, !tbaa !10
  %21 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %21, i32 0, i32 1
  %22 = load i8*, i8** %ptr8, align 8, !tbaa !12
  %sub.ptr.lhs.cast9 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %22 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %cmp12 = icmp sge i64 %sub.ptr.sub11, 16
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.6
  %23 = load %struct.stream_MD5E_state_s*, %struct.stream_MD5E_state_s** %ss, align 8, !tbaa !1
  %md515 = getelementptr inbounds %struct.stream_MD5E_state_s, %struct.stream_MD5E_state_s* %23, i32 0, i32 5
  %24 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %ptr16, align 8, !tbaa !12
  %add.ptr17 = getelementptr inbounds i8, i8* %25, i64 1
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md515, i8* %add.ptr17) #4
  %26 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %26, i32 0, i32 1
  %27 = load i8*, i8** %ptr18, align 8, !tbaa !12
  %add.ptr19 = getelementptr inbounds i8, i8* %27, i64 16
  store i8* %add.ptr19, i8** %ptr18, align 8, !tbaa !12
  store i32 -1, i32* %status, align 4, !tbaa !5
  br label %if.end.20

if.else:                                          ; preds = %if.then.6
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %28 = load i32, i32* %status, align 4, !tbaa !5
  %29 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.stream_MD5E_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define %struct.stream_s* @s_MD5E_make_stream(%struct.gs_memory_s* %mem, i8* %digest, i32 %digest_size) #0 {
entry:
  %retval = alloca %struct.stream_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %digest.addr = alloca i8*, align 8
  %digest_size.addr = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %ss = alloca %struct.stream_state_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %digest, i8** %digest.addr, align 8, !tbaa !1
  store i32 %digest_size, i32* %digest_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_MD5E_template, i32 0, i32 0), align 8, !tbaa !13
  %call1 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  store %struct.stream_state_s* %call1, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %5 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_state_s* %5, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.stream_s* %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %7, i32 0, i32 0
  store %struct.stream_template_s* @s_MD5E_template, %struct.stream_template_s** %templat, align 8, !tbaa !15
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %9 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %10 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %11 = load i32, i32* %digest_size.addr, align 4, !tbaa !5
  %call3 = call i32 @s_init_filter(%struct.stream_s* %8, %struct.stream_state_s* %9, i8* %10, i32 %11, %struct.stream_s* null) #4
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %err

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 15
  store %struct.stream_s* %12, %struct.stream_s** %strm, align 8, !tbaa !17
  %14 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  store %struct.stream_s* %14, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

err:                                              ; preds = %if.then.5, %if.then
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !24
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %19 = bitcast %struct.stream_state_s* %18 to i8*
  call void %16(%struct.gs_memory_s* %17, i8* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !24
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %24 = bitcast %struct.stream_s* %23 to i8*
  call void %21(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.6
  %25 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load %struct.stream_s*, %struct.stream_s** %retval
  ret %struct.stream_s* %27
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.stream_s* @s_alloc(%struct.gs_memory_s*, i8*) #2

declare %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*) #2

declare i32 @s_init_filter(%struct.stream_s*, %struct.stream_state_s*, i8*, i32, %struct.stream_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_MD5C_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_MD5E_state_s*, align 8
  %nr = alloca i32, align 4
  %nw = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_MD5E_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_MD5E_state_s*
  store %struct.stream_MD5E_state_s* %2, %struct.stream_MD5E_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %nr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %limit, align 8, !tbaa !9
  %6 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %ptr, align 8, !tbaa !7
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %nr, align 4, !tbaa !5
  %8 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %9, i32 0, i32 2
  %10 = load i8*, i8** %limit1, align 8, !tbaa !10
  %11 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %ptr2, align 8, !tbaa !12
  %sub.ptr.lhs.cast3 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %12 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  store i32 %conv6, i32* %nw, align 4, !tbaa !5
  %13 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %nr, align 4, !tbaa !5
  %15 = load i32, i32* %nw, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %16 = load i32, i32* %nr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %nw, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, i32* %n, align 4, !tbaa !5
  %18 = load %struct.stream_MD5E_state_s*, %struct.stream_MD5E_state_s** %ss, align 8, !tbaa !1
  %md5 = getelementptr inbounds %struct.stream_MD5E_state_s, %struct.stream_MD5E_state_s* %18, i32 0, i32 5
  %19 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %19, i32 0, i32 0
  %20 = load i8*, i8** %ptr8, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i32, i32* %n, align 4, !tbaa !5
  call void @gs_md5_append(%struct.gs_md5_state_s* %md5, i8* %add.ptr, i32 %21) #4
  %22 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %22, i32 0, i32 1
  %23 = load i8*, i8** %ptr9, align 8, !tbaa !12
  %add.ptr10 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr11 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %24, i32 0, i32 0
  %25 = load i8*, i8** %ptr11, align 8, !tbaa !7
  %add.ptr12 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i32, i32* %n, align 4, !tbaa !5
  %conv13 = sext i32 %26 to i64
  %call = call i8* @memcpy(i8* %add.ptr10, i8* %add.ptr12, i64 %conv13) #5
  %27 = load i32, i32* %n, align 4, !tbaa !5
  %28 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr14 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %28, i32 0, i32 0
  %29 = load i8*, i8** %ptr14, align 8, !tbaa !7
  %idx.ext = sext i32 %27 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr15, i8** %ptr14, align 8, !tbaa !7
  %30 = load i32, i32* %n, align 4, !tbaa !5
  %31 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %31, i32 0, i32 1
  %32 = load i8*, i8** %ptr16, align 8, !tbaa !12
  %idx.ext17 = sext i32 %30 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %32, i64 %idx.ext17
  store i8* %add.ptr18, i8** %ptr16, align 8, !tbaa !12
  %33 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit19 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %33, i32 0, i32 2
  %34 = load i8*, i8** %limit19, align 8, !tbaa !10
  %35 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr20 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %35, i32 0, i32 1
  %36 = load i8*, i8** %ptr20, align 8, !tbaa !12
  %cmp21 = icmp eq i8* %34, %36
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %37 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %nr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.stream_MD5E_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define %struct.stream_s* @s_MD5C_make_stream(%struct.gs_memory_s* %mem, %struct.stream_s* %strm) #0 {
entry:
  %retval = alloca %struct.stream_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %strm.addr = alloca %struct.stream_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %ss = alloca %struct.stream_state_s*, align 8
  %buffer_size = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.stream_s* %strm, %struct.stream_s** %strm.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_MD5E_template, i32 0, i32 0), align 8, !tbaa !13
  %call1 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  store %struct.stream_state_s* %call1, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %5 = bitcast i32* %buffer_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1024, i32* %buffer_size, align 4, !tbaa !5
  %6 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !27
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load i32, i32* %buffer_size, align 4, !tbaa !5
  %call2 = call i8* %8(%struct.gs_memory_s* %9, i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #4
  store i8* %call2, i8** %buffer, align 8, !tbaa !1
  %11 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %cmp = icmp eq %struct.stream_state_s* %11, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.stream_s* %12, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %13 = load i8*, i8** %buffer, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %13, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  br label %err

if.end:                                           ; preds = %lor.lhs.false.4
  %14 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %14, i32 0, i32 0
  store %struct.stream_template_s* @s_MD5C_template, %struct.stream_template_s** %templat, align 8, !tbaa !15
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %16 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %17 = load i8*, i8** %buffer, align 8, !tbaa !1
  %18 = load i32, i32* %buffer_size, align 4, !tbaa !5
  %call6 = call i32 @s_init_filter(%struct.stream_s* %15, %struct.stream_state_s* %16, i8* %17, i32 %18, %struct.stream_s* null) #4
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %err

if.end.9:                                         ; preds = %if.end
  %19 = load %struct.stream_s*, %struct.stream_s** %strm.addr, align 8, !tbaa !1
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %strm10 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 15
  store %struct.stream_s* %19, %struct.stream_s** %strm10, align 8, !tbaa !17
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %close_strm = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 23
  store i32 1, i32* %close_strm, align 4, !tbaa !28
  %22 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  store %struct.stream_s* %22, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

err:                                              ; preds = %if.then.8, %if.then
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !24
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %26 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %27 = bitcast %struct.stream_state_s* %26 to i8*
  call void %24(%struct.gs_memory_s* %25, i8* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object13 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object13, align 8, !tbaa !24
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %31 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %32 = bitcast %struct.stream_s* %31 to i8*
  call void %29(%struct.gs_memory_s* %30, i8* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %free_object15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object15, align 8, !tbaa !24
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %34(%struct.gs_memory_s* %35, i8* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #4
  store %struct.stream_s* null, %struct.stream_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.9
  %37 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %buffer_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load %struct.stream_s*, %struct.stream_s** %retval
  ret %struct.stream_s* %41
}

; Function Attrs: nounwind uwtable
define i32 @s_MD5C_get_digest(%struct.stream_s* %s, i8* %buf, i32 %buf_length) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_length.addr = alloca i32, align 4
  %ss = alloca %struct.stream_MD5E_state_s*, align 8
  %md5 = alloca %struct.gs_md5_state_s, align 4
  %b = alloca [16 x i8], align 16
  %p = alloca i8*, align 8
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %buf_length, i32* %buf_length.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_MD5E_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.stream_s, %struct.stream_s* %1, i32 0, i32 18
  %2 = load %struct.stream_state_s*, %struct.stream_state_s** %state, align 8, !tbaa !29
  %3 = bitcast %struct.stream_state_s* %2 to %struct.stream_MD5E_state_s*
  store %struct.stream_MD5E_state_s* %3, %struct.stream_MD5E_state_s** %ss, align 8, !tbaa !1
  %4 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  call void @llvm.lifetime.start(i64 88, i8* %4) #1
  %5 = bitcast [16 x i8]* %b to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 16, %8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %buf_length.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 16, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %l, align 4, !tbaa !5
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 14
  %process = getelementptr inbounds %struct.stream_procs, %struct.stream_procs* %procs, i32 0, i32 5
  %12 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !30
  %cmp1 = icmp ne i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* %12, @s_MD5C_process
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %13 = load %struct.stream_MD5E_state_s*, %struct.stream_MD5E_state_s** %ss, align 8, !tbaa !1
  %md52 = getelementptr inbounds %struct.stream_MD5E_state_s, %struct.stream_MD5E_state_s* %13, i32 0, i32 5
  %14 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  %15 = bitcast %struct.gs_md5_state_s* %md52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 88, i32 4, i1 false), !tbaa.struct !31
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %b, i32 0, i32 0
  call void @gs_md5_finish(%struct.gs_md5_state_s* %md5, i8* %arraydecay) #4
  %16 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %b, i32 0, i32 0
  %17 = load i32, i32* %l, align 4, !tbaa !5
  %conv = sext i32 %17 to i64
  %call = call i8* @memcpy(i8* %16, i8* %arraydecay3, i64 %conv) #5
  %arraydecay4 = getelementptr inbounds [16 x i8], [16 x i8]* %b, i32 0, i32 0
  %18 = load i32, i32* %l, align 4, !tbaa !5
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay4, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %if.end
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %b, i32 0, i32 0
  %add.ptr6 = getelementptr inbounds i8, i8* %arraydecay5, i64 16
  %cmp7 = icmp ult i8* %19, %add.ptr6
  br i1 %cmp7, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %k, align 4, !tbaa !5
  %21 = load i32, i32* %l, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %20, %21
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.9
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %idx.ext12 = sext i32 %23 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %22, i64 %idx.ext12
  %arraydecay14 = getelementptr inbounds [16 x i8], [16 x i8]* %b, i32 0, i32 0
  %add.ptr15 = getelementptr inbounds i8, i8* %arraydecay14, i64 16
  %cmp16 = icmp ult i8* %add.ptr13, %add.ptr15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.9
  %24 = phi i1 [ false, %for.cond.9 ], [ %cmp16, %land.rhs ]
  br i1 %24, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %land.end
  %25 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %25 to i64
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !32
  %conv19 = zext i8 %27 to i32
  %28 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom20 = sext i32 %28 to i64
  %29 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %29, i64 %idxprom20
  %30 = load i8, i8* %arrayidx21, align 1, !tbaa !32
  %conv22 = zext i8 %30 to i32
  %xor = xor i32 %conv22, %conv19
  %conv23 = trunc i32 %xor to i8
  store i8 %conv23, i8* %arrayidx21, align 1, !tbaa !32
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %31 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond.9

for.end:                                          ; preds = %land.end
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %32 = load i32, i32* %l, align 4, !tbaa !5
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext25 = sext i32 %32 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %33, i64 %idx.ext25
  store i8* %add.ptr26, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  %34 = load i32, i32* %l, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.27, %if.then
  %35 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast [16 x i8]* %b to i8*
  call void @llvm.lifetime.end(i64 16, i8* %38) #1
  %39 = bitcast %struct.gs_md5_state_s* %md5 to i8*
  call void @llvm.lifetime.end(i64 88, i8* %39) #1
  %40 = bitcast %struct.stream_MD5E_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gs_md5_finish(%struct.gs_md5_state_s*, i8*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_md5_init(%struct.gs_md5_state_s*) #2

declare void @gs_md5_append(%struct.gs_md5_state_s*, i8*, i32) #2

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
!7 = !{!8, !2, i64 0}
!8 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!8, !2, i64 8}
!10 = !{!11, !2, i64 16}
!11 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!11, !2, i64 8}
!13 = !{!14, !2, i64 0}
!14 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!15 = !{!16, !2, i64 0}
!16 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28}
!17 = !{!18, !2, i64 240}
!18 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !19, i64 152, !3, i64 154, !3, i64 155, !20, i64 160, !21, i64 176, !22, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !19, i64 264, !19, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !23, i64 312, !6, i64 328, !21, i64 336, !21, i64 344}
!19 = !{!"short", !3, i64 0}
!20 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!21 = !{!"long", !3, i64 0}
!22 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!23 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!24 = !{!25, !2, i64 24}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!25, !2, i64 64}
!28 = !{!18, !6, i64 288}
!29 = !{!18, !2, i64 256}
!30 = !{!18, !2, i64 224}
!31 = !{i64 0, i64 8, !32, i64 8, i64 16, !32, i64 24, i64 64, !32}
!32 = !{!3, !3, i64 0}
