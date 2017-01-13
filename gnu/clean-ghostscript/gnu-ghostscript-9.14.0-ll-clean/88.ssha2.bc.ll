; ModuleID = './ssha2.bc'
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
%struct.stream_SHA256E_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct._SHA256_CTX }
%struct._SHA256_CTX = type { [8 x i32], i64, [64 x i8] }

@st_SHA256E_state = internal constant %struct.gs_memory_struct_type_s { i32 216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_SHA256E_template = constant %struct.stream_template_s { %struct.gs_memory_struct_type_s* @st_SHA256E_state, i32 (%struct.stream_state_s*)* @s_SHA256E_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_SHA256E_process, i32 1, i32 32, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [22 x i8] c"s_SHA256E_make_stream\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SHA256Encode state\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_SHA256E_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_SHA256E_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_SHA256E_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_SHA256E_state_s*
  store %struct.stream_SHA256E_state_s* %2, %struct.stream_SHA256E_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_SHA256E_state_s*, %struct.stream_SHA256E_state_s** %ss, align 8, !tbaa !1
  %sha256 = getelementptr inbounds %struct.stream_SHA256E_state_s, %struct.stream_SHA256E_state_s* %3, i32 0, i32 5
  call void @pSHA256_Init(%struct._SHA256_CTX* %sha256) #3
  %4 = bitcast %struct.stream_SHA256E_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_SHA256E_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_SHA256E_state_s*, align 8
  %status = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.stream_SHA256E_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_SHA256E_state_s*
  store %struct.stream_SHA256E_state_s* %2, %struct.stream_SHA256E_state_s** %ss, align 8, !tbaa !1
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
  %8 = load %struct.stream_SHA256E_state_s*, %struct.stream_SHA256E_state_s** %ss, align 8, !tbaa !1
  %sha256 = getelementptr inbounds %struct.stream_SHA256E_state_s, %struct.stream_SHA256E_state_s* %8, i32 0, i32 5
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
  call void @pSHA256_Update(%struct._SHA256_CTX* %sha256, i8* %add.ptr, i64 %sub.ptr.sub) #3
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
  br i1 %tobool, label %if.then.6, label %if.end.20

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
  %cmp12 = icmp sge i64 %sub.ptr.sub11, 32
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.6
  %23 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr14 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %ptr14, align 8, !tbaa !12
  %add.ptr15 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load %struct.stream_SHA256E_state_s*, %struct.stream_SHA256E_state_s** %ss, align 8, !tbaa !1
  %sha25616 = getelementptr inbounds %struct.stream_SHA256E_state_s, %struct.stream_SHA256E_state_s* %25, i32 0, i32 5
  call void @pSHA256_Final(i8* %add.ptr15, %struct._SHA256_CTX* %sha25616) #3
  %26 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr17 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %26, i32 0, i32 1
  %27 = load i8*, i8** %ptr17, align 8, !tbaa !12
  %add.ptr18 = getelementptr inbounds i8, i8* %27, i64 32
  store i8* %add.ptr18, i8** %ptr17, align 8, !tbaa !12
  store i32 -1, i32* %status, align 4, !tbaa !5
  br label %if.end.19

if.else:                                          ; preds = %if.then.6
  store i32 1, i32* %status, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %28 = load i32, i32* %status, align 4, !tbaa !5
  %29 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.stream_SHA256E_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define %struct.stream_s* @s_SHA256E_make_stream(%struct.gs_memory_s* %mem, i8* %digest, i32 %digest_size) #0 {
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
  %call = call %struct.stream_s* @s_alloc(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #3
  store %struct.stream_s* %call, %struct.stream_s** %s, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_SHA256E_template, i32 0, i32 0), align 8, !tbaa !13
  %call1 = call %struct.stream_state_s* @s_alloc_state(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #3
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
  store %struct.stream_template_s* @s_SHA256E_template, %struct.stream_template_s** %templat, align 8, !tbaa !15
  %8 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %9 = load %struct.stream_state_s*, %struct.stream_state_s** %ss, align 8, !tbaa !1
  %10 = load i8*, i8** %digest.addr, align 8, !tbaa !1
  %11 = load i32, i32* %digest_size.addr, align 4, !tbaa !5
  %call3 = call i32 @s_init_filter(%struct.stream_s* %8, %struct.stream_state_s* %9, i8* %10, i32 %11, %struct.stream_s* null) #3
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
  call void %16(%struct.gs_memory_s* %17, i8* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %21 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !24
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %24 = bitcast %struct.stream_s* %23 to i8*
  call void %21(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #3
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

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @pSHA256_Init(%struct._SHA256_CTX*) #2

declare void @pSHA256_Update(%struct._SHA256_CTX*, i8*, i64) #2

declare void @pSHA256_Final(i8*, %struct._SHA256_CTX*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

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
