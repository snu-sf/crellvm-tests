; ModuleID = './sfilter1.bc'
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
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, {}*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, {}* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.stream_PFBD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i64 }
%struct.stream_SFD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i64, %struct.gs_const_string_s, i64, i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }

@st_PFBD_state = internal constant %struct.gs_memory_struct_type_s { i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_PFBD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_PFBD_state, i32 (%struct.stream_state_s*)* @s_PFBD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_PFBD_process, i32 6, i32 2, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@st_SFD_state = internal constant %struct.gs_memory_struct_type_s { i32 160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @sfd_reloc_ptrs to i8*) }, align 8
@s_SFD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_SFD_state, i32 (%struct.stream_state_s*)* @s_SFD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_SFD_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_SFD_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"PFBDecode state\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SubFileDecode state\00", align 1
@sfd_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @sfd_enum_ptrs, i32 0, i32 0) }, align 8
@sfd_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 2, i16 120 }], align 2

; Function Attrs: nounwind uwtable
define internal i32 @s_PFBD_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_PFBD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PFBD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PFBD_state_s*
  store %struct.stream_PFBD_state_s* %2, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_type = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %3, i32 0, i32 6
  store i32 -1, i32* %record_type, align 4, !tbaa !5
  %4 = bitcast %struct.stream_PFBD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_PFBD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_PFBD_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %c = alloca i32, align 4
  %status = alloca i32, align 4
  %count = alloca i32, align 4
  %count89 = alloca i32, align 4
  %hex_digits = alloca i8*, align 8
  %count124 = alloca i32, align 4
  %count150 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !9
  %0 = bitcast %struct.stream_PFBD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PFBD_state_s*
  store %struct.stream_PFBD_state_s* %2, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !10
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !12
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %status, align 4, !tbaa !9
  br label %top

top:                                              ; preds = %if.then.184, %if.end.60, %entry
  %13 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %13, i32 0, i32 1
  %14 = load i8*, i8** %limit, align 8, !tbaa !14
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !9
  %16 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %16, i32 0, i32 2
  %17 = load i8*, i8** %limit2, align 8, !tbaa !15
  %18 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast3 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %18 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  store i32 %conv6, i32* %wcount, align 4, !tbaa !9
  %19 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_type = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %19, i32 0, i32 6
  %20 = load i32, i32* %record_type, align 4, !tbaa !5
  switch i32 %20, label %sw.epilog.180 [
    i32 -1, label %sw.bb
    i32 1, label %sw.bb.62
    i32 2, label %sw.bb.86
    i32 4, label %sw.bb.149
  ]

sw.bb:                                            ; preds = %top
  %21 = load i32, i32* %rcount, align 4, !tbaa !9
  %cmp = icmp slt i32 %21, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %out

if.end:                                           ; preds = %sw.bb
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv8 = zext i8 %23 to i32
  %cmp9 = icmp ne i32 %conv8, 128
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  br label %err

if.end.12:                                        ; preds = %if.end
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %arrayidx13, align 1, !tbaa !16
  %conv14 = zext i8 %25 to i32
  store i32 %conv14, i32* %c, align 4, !tbaa !9
  %26 = load i32, i32* %c, align 4, !tbaa !9
  switch i32 %26, label %sw.default [
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.16
  ]

sw.bb.15:                                         ; preds = %if.end.12, %if.end.12
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.12
  store i32 -1, i32* %status, align 4, !tbaa !9
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %out

sw.default:                                       ; preds = %if.end.12
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %add.ptr17, i8** %p, align 8, !tbaa !1
  br label %err

sw.epilog:                                        ; preds = %sw.bb.15
  %29 = load i32, i32* %rcount, align 4, !tbaa !9
  %cmp18 = icmp slt i32 %29, 6
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %sw.epilog
  br label %out

if.end.21:                                        ; preds = %sw.epilog
  %30 = load i32, i32* %c, align 4, !tbaa !9
  %31 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_type22 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %31, i32 0, i32 6
  store i32 %30, i32* %record_type22, align 4, !tbaa !5
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %32, i64 3
  %33 = load i8, i8* %arrayidx23, align 1, !tbaa !16
  %conv24 = zext i8 %33 to i32
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %34, i64 4
  %35 = load i8, i8* %arrayidx25, align 1, !tbaa !16
  %conv26 = zext i8 %35 to i32
  %shl = shl i32 %conv26, 8
  %add = add i32 %conv24, %shl
  %conv27 = zext i32 %add to i64
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i8, i8* %36, i64 5
  %37 = load i8, i8* %arrayidx28, align 1, !tbaa !16
  %conv29 = zext i8 %37 to i64
  %shl30 = shl i64 %conv29, 16
  %add31 = add i64 %conv27, %shl30
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %38, i64 6
  %39 = load i8, i8* %arrayidx32, align 1, !tbaa !16
  %conv33 = zext i8 %39 to i64
  %shl34 = shl i64 %conv33, 24
  %add35 = add i64 %add31, %shl34
  %40 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %40, i32 0, i32 7
  store i64 %add35, i64* %record_left, align 8, !tbaa !17
  %41 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left36 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %41, i32 0, i32 7
  %42 = load i64, i64* %record_left36, align 8, !tbaa !17
  %cmp37 = icmp eq i64 %42, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end.21
  %43 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_type39 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %43, i32 0, i32 6
  %44 = load i32, i32* %record_type39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %44, 1
  br i1 %cmp40, label %if.then.42, label %if.end.60

if.then.42:                                       ; preds = %land.lhs.true
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds i8, i8* %45, i64 7
  %46 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit44 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %46, i32 0, i32 1
  %47 = load i8*, i8** %limit44, align 8, !tbaa !14
  %cmp45 = icmp ult i8* %add.ptr43, %47
  br i1 %cmp45, label %if.then.47, label %if.else.56

if.then.47:                                       ; preds = %if.then.42
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %48, i64 6
  %49 = load i8, i8* %arrayidx48, align 1, !tbaa !16
  %conv49 = zext i8 %49 to i32
  %cmp50 = icmp eq i32 %conv49, 128
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.then.47
  br label %if.end.55

if.else:                                          ; preds = %if.then.47
  %50 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_type53 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %50, i32 0, i32 6
  store i32 4, i32* %record_type53, align 4, !tbaa !5
  %51 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left54 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %51, i32 0, i32 7
  store i64 -1, i64* %record_left54, align 8, !tbaa !17
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.52
  br label %if.end.59

if.else.56:                                       ; preds = %if.then.42
  %52 = load i32, i32* %last.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.else.56
  br label %out

if.end.58:                                        ; preds = %if.else.56
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true, %if.end.21
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr61 = getelementptr inbounds i8, i8* %53, i64 6
  store i8* %add.ptr61, i8** %p, align 8, !tbaa !1
  br label %top

sw.bb.62:                                         ; preds = %top
  %54 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load i32, i32* %wcount, align 4, !tbaa !9
  %56 = load i32, i32* %rcount, align 4, !tbaa !9
  %cmp63 = icmp slt i32 %55, %56
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.62
  store i32 1, i32* %status, align 4, !tbaa !9
  %57 = load i32, i32* %wcount, align 4, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.62
  %58 = load i32, i32* %rcount, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %57, %cond.true ], [ %58, %cond.false ]
  store i32 %cond, i32* %count, align 4, !tbaa !9
  %59 = load i32, i32* %count, align 4, !tbaa !9
  %conv65 = sext i32 %59 to i64
  %60 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left66 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %60, i32 0, i32 7
  %61 = load i64, i64* %record_left66, align 8, !tbaa !17
  %cmp67 = icmp ugt i64 %conv65, %61
  br i1 %cmp67, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %cond.end
  %62 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left70 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %62, i32 0, i32 7
  %63 = load i64, i64* %record_left70, align 8, !tbaa !17
  %conv71 = trunc i64 %63 to i32
  store i32 %conv71, i32* %count, align 4, !tbaa !9
  store i32 0, i32* %status, align 4, !tbaa !9
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %cond.end
  %64 = load i32, i32* %count, align 4, !tbaa !9
  %conv73 = sext i32 %64 to i64
  %65 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left74 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %65, i32 0, i32 7
  %66 = load i64, i64* %record_left74, align 8, !tbaa !17
  %sub = sub i64 %66, %conv73
  store i64 %sub, i64* %record_left74, align 8, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.72
  %67 = load i32, i32* %count, align 4, !tbaa !9
  %cmp75 = icmp ne i32 %67, 0
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %69 = load i8, i8* %incdec.ptr, align 1, !tbaa !16
  %conv77 = zext i8 %69 to i32
  store i32 %conv77, i32* %c, align 4, !tbaa !9
  %70 = load i32, i32* %c, align 4, !tbaa !9
  %cmp78 = icmp eq i32 %70, 13
  br i1 %cmp78, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %for.body
  br label %cond.end.82

cond.false.81:                                    ; preds = %for.body
  %71 = load i32, i32* %c, align 4, !tbaa !9
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.80
  %cond83 = phi i32 [ 10, %cond.true.80 ], [ %71, %cond.false.81 ]
  %conv84 = trunc i32 %cond83 to i8
  %72 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr85 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr85, i8** %q, align 8, !tbaa !1
  store i8 %conv84, i8* %incdec.ptr85, align 1, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %cond.end.82
  %73 = load i32, i32* %count, align 4, !tbaa !9
  %dec = add nsw i32 %73, -1
  store i32 %dec, i32* %count, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  br label %sw.epilog.180

sw.bb.86:                                         ; preds = %top
  %75 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %binary_to_hex = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %75, i32 0, i32 5
  %76 = load i32, i32* %binary_to_hex, align 4, !tbaa !18
  %tobool87 = icmp ne i32 %76, 0
  br i1 %tobool87, label %if.then.88, label %if.else.123

if.then.88:                                       ; preds = %sw.bb.86
  %77 = bitcast i32* %count89 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #2
  %78 = bitcast i8** %hex_digits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8** %hex_digits, align 8, !tbaa !1
  %79 = load i32, i32* %wcount, align 4, !tbaa !9
  %shr = ashr i32 %79, 1
  store i32 %shr, i32* %wcount, align 4, !tbaa !9
  %80 = load i32, i32* %wcount, align 4, !tbaa !9
  %81 = load i32, i32* %rcount, align 4, !tbaa !9
  %cmp90 = icmp slt i32 %80, %81
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %if.then.88
  store i32 1, i32* %status, align 4, !tbaa !9
  %82 = load i32, i32* %wcount, align 4, !tbaa !9
  br label %cond.end.94

cond.false.93:                                    ; preds = %if.then.88
  %83 = load i32, i32* %rcount, align 4, !tbaa !9
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.92
  %cond95 = phi i32 [ %82, %cond.true.92 ], [ %83, %cond.false.93 ]
  store i32 %cond95, i32* %count89, align 4, !tbaa !9
  %84 = load i32, i32* %count89, align 4, !tbaa !9
  %conv96 = sext i32 %84 to i64
  %85 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left97 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %85, i32 0, i32 7
  %86 = load i64, i64* %record_left97, align 8, !tbaa !17
  %cmp98 = icmp ugt i64 %conv96, %86
  br i1 %cmp98, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %cond.end.94
  %87 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left101 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %87, i32 0, i32 7
  %88 = load i64, i64* %record_left101, align 8, !tbaa !17
  %conv102 = trunc i64 %88 to i32
  store i32 %conv102, i32* %count89, align 4, !tbaa !9
  store i32 0, i32* %status, align 4, !tbaa !9
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %cond.end.94
  %89 = load i32, i32* %count89, align 4, !tbaa !9
  %conv104 = sext i32 %89 to i64
  %90 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left105 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %90, i32 0, i32 7
  %91 = load i64, i64* %record_left105, align 8, !tbaa !17
  %sub106 = sub i64 %91, %conv104
  store i64 %sub106, i64* %record_left105, align 8, !tbaa !17
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.120, %if.end.103
  %92 = load i32, i32* %count89, align 4, !tbaa !9
  %cmp108 = icmp ne i32 %92, 0
  br i1 %cmp108, label %for.body.110, label %for.end.122

for.body.110:                                     ; preds = %for.cond.107
  %93 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr111 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr111, i8** %p, align 8, !tbaa !1
  %94 = load i8, i8* %incdec.ptr111, align 1, !tbaa !16
  %conv112 = zext i8 %94 to i32
  store i32 %conv112, i32* %c, align 4, !tbaa !9
  %95 = load i32, i32* %c, align 4, !tbaa !9
  %shr113 = ashr i32 %95, 4
  %idxprom = sext i32 %shr113 to i64
  %96 = load i8*, i8** %hex_digits, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %96, i64 %idxprom
  %97 = load i8, i8* %arrayidx114, align 1, !tbaa !16
  %98 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %98, i64 1
  store i8 %97, i8* %arrayidx115, align 1, !tbaa !16
  %99 = load i32, i32* %c, align 4, !tbaa !9
  %and = and i32 %99, 15
  %idxprom116 = sext i32 %and to i64
  %100 = load i8*, i8** %hex_digits, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i8, i8* %100, i64 %idxprom116
  %101 = load i8, i8* %arrayidx117, align 1, !tbaa !16
  %102 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i8, i8* %102, i64 2
  store i8 %101, i8* %arrayidx118, align 1, !tbaa !16
  %103 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr119 = getelementptr inbounds i8, i8* %103, i64 2
  store i8* %add.ptr119, i8** %q, align 8, !tbaa !1
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.110
  %104 = load i32, i32* %count89, align 4, !tbaa !9
  %dec121 = add nsw i32 %104, -1
  store i32 %dec121, i32* %count89, align 4, !tbaa !9
  br label %for.cond.107

for.end.122:                                      ; preds = %for.cond.107
  %105 = bitcast i8** %hex_digits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast i32* %count89 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  br label %if.end.148

if.else.123:                                      ; preds = %sw.bb.86
  %107 = bitcast i32* %count124 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #2
  %108 = load i32, i32* %wcount, align 4, !tbaa !9
  %109 = load i32, i32* %rcount, align 4, !tbaa !9
  %cmp125 = icmp slt i32 %108, %109
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %if.else.123
  store i32 1, i32* %status, align 4, !tbaa !9
  %110 = load i32, i32* %wcount, align 4, !tbaa !9
  br label %cond.end.129

cond.false.128:                                   ; preds = %if.else.123
  %111 = load i32, i32* %rcount, align 4, !tbaa !9
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.true.127
  %cond130 = phi i32 [ %110, %cond.true.127 ], [ %111, %cond.false.128 ]
  store i32 %cond130, i32* %count124, align 4, !tbaa !9
  %112 = load i32, i32* %count124, align 4, !tbaa !9
  %conv131 = sext i32 %112 to i64
  %113 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left132 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %113, i32 0, i32 7
  %114 = load i64, i64* %record_left132, align 8, !tbaa !17
  %cmp133 = icmp ugt i64 %conv131, %114
  br i1 %cmp133, label %if.then.135, label %if.end.138

if.then.135:                                      ; preds = %cond.end.129
  %115 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left136 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %115, i32 0, i32 7
  %116 = load i64, i64* %record_left136, align 8, !tbaa !17
  %conv137 = trunc i64 %116 to i32
  store i32 %conv137, i32* %count124, align 4, !tbaa !9
  store i32 0, i32* %status, align 4, !tbaa !9
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.135, %cond.end.129
  %117 = load i32, i32* %count124, align 4, !tbaa !9
  %conv139 = sext i32 %117 to i64
  %118 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left140 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %118, i32 0, i32 7
  %119 = load i64, i64* %record_left140, align 8, !tbaa !17
  %sub141 = sub i64 %119, %conv139
  store i64 %sub141, i64* %record_left140, align 8, !tbaa !17
  %120 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr142 = getelementptr inbounds i8, i8* %120, i64 1
  %121 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr143 = getelementptr inbounds i8, i8* %121, i64 1
  %122 = load i32, i32* %count124, align 4, !tbaa !9
  %conv144 = sext i32 %122 to i64
  %call = call i8* @memcpy(i8* %add.ptr142, i8* %add.ptr143, i64 %conv144) #5
  %123 = load i32, i32* %count124, align 4, !tbaa !9
  %124 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext = sext i32 %123 to i64
  %add.ptr145 = getelementptr inbounds i8, i8* %124, i64 %idx.ext
  store i8* %add.ptr145, i8** %p, align 8, !tbaa !1
  %125 = load i32, i32* %count124, align 4, !tbaa !9
  %126 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext146 = sext i32 %125 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %126, i64 %idx.ext146
  store i8* %add.ptr147, i8** %q, align 8, !tbaa !1
  %127 = bitcast i32* %count124 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.138, %for.end.122
  br label %sw.epilog.180

sw.bb.149:                                        ; preds = %top
  %128 = bitcast i32* %count150 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #2
  %129 = load i32, i32* %wcount, align 4, !tbaa !9
  %130 = load i32, i32* %rcount, align 4, !tbaa !9
  %cmp151 = icmp slt i32 %129, %130
  br i1 %cmp151, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %sw.bb.149
  store i32 1, i32* %status, align 4, !tbaa !9
  %131 = load i32, i32* %wcount, align 4, !tbaa !9
  br label %cond.end.155

cond.false.154:                                   ; preds = %sw.bb.149
  %132 = load i32, i32* %rcount, align 4, !tbaa !9
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.154, %cond.true.153
  %cond156 = phi i32 [ %131, %cond.true.153 ], [ %132, %cond.false.154 ]
  store i32 %cond156, i32* %count150, align 4, !tbaa !9
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.177, %cond.end.155
  %133 = load i32, i32* %count150, align 4, !tbaa !9
  %cmp158 = icmp ne i32 %133, 0
  br i1 %cmp158, label %for.body.160, label %for.end.179

for.body.160:                                     ; preds = %for.cond.157
  %134 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr161 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr161, i8** %p, align 8, !tbaa !1
  %135 = load i8, i8* %incdec.ptr161, align 1, !tbaa !16
  %conv162 = zext i8 %135 to i32
  store i32 %conv162, i32* %c, align 4, !tbaa !9
  %136 = load i32, i32* %c, align 4, !tbaa !9
  %cmp163 = icmp eq i32 %136, 128
  br i1 %cmp163, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %for.body.160
  %137 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr166 = getelementptr inbounds i8, i8* %137, i32 -1
  store i8* %incdec.ptr166, i8** %p, align 8, !tbaa !1
  %138 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left167 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %138, i32 0, i32 7
  store i64 0, i64* %record_left167, align 8, !tbaa !17
  br label %for.end.179

if.end.168:                                       ; preds = %for.body.160
  %139 = load i32, i32* %c, align 4, !tbaa !9
  %cmp169 = icmp eq i32 %139, 13
  br i1 %cmp169, label %cond.true.171, label %cond.false.172

cond.true.171:                                    ; preds = %if.end.168
  br label %cond.end.173

cond.false.172:                                   ; preds = %if.end.168
  %140 = load i32, i32* %c, align 4, !tbaa !9
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.172, %cond.true.171
  %cond174 = phi i32 [ 10, %cond.true.171 ], [ %140, %cond.false.172 ]
  %conv175 = trunc i32 %cond174 to i8
  %141 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr176 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr176, i8** %q, align 8, !tbaa !1
  store i8 %conv175, i8* %incdec.ptr176, align 1, !tbaa !16
  br label %for.inc.177

for.inc.177:                                      ; preds = %cond.end.173
  %142 = load i32, i32* %count150, align 4, !tbaa !9
  %dec178 = add nsw i32 %142, -1
  store i32 %dec178, i32* %count150, align 4, !tbaa !9
  br label %for.cond.157

for.end.179:                                      ; preds = %if.then.165, %for.cond.157
  %143 = bitcast i32* %count150 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  br label %sw.epilog.180

sw.epilog.180:                                    ; preds = %top, %for.end.179, %if.end.148, %for.end
  %144 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_left181 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %144, i32 0, i32 7
  %145 = load i64, i64* %record_left181, align 8, !tbaa !17
  %cmp182 = icmp eq i64 %145, 0
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %sw.epilog.180
  %146 = load %struct.stream_PFBD_state_s*, %struct.stream_PFBD_state_s** %ss, align 8, !tbaa !1
  %record_type185 = getelementptr inbounds %struct.stream_PFBD_state_s, %struct.stream_PFBD_state_s* %146, i32 0, i32 6
  store i32 -1, i32* %record_type185, align 4, !tbaa !5
  br label %top

if.end.186:                                       ; preds = %sw.epilog.180
  br label %out

out:                                              ; preds = %if.end.186, %if.then.57, %if.then.20, %sw.bb.16, %if.then
  %147 = load i8*, i8** %p, align 8, !tbaa !1
  %148 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr187 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %148, i32 0, i32 0
  store i8* %147, i8** %ptr187, align 8, !tbaa !10
  %149 = load i8*, i8** %q, align 8, !tbaa !1
  %150 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr188 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %150, i32 0, i32 1
  store i8* %149, i8** %ptr188, align 8, !tbaa !12
  %151 = load i32, i32* %status, align 4, !tbaa !9
  store i32 %151, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

err:                                              ; preds = %sw.default, %if.then.11
  %152 = load i8*, i8** %p, align 8, !tbaa !1
  %153 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr189 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %153, i32 0, i32 0
  store i8* %152, i8** %ptr189, align 8, !tbaa !10
  %154 = load i8*, i8** %q, align 8, !tbaa !1
  %155 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr190 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %155, i32 0, i32 1
  store i8* %154, i8** %ptr190, align 8, !tbaa !12
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %err, %out
  %156 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast %struct.stream_PFBD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = load i32, i32* %retval
  ret i32 %163
}

; Function Attrs: nounwind uwtable
define internal i32 @s_SFD_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_SFD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_SFD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_SFD_state_s*
  store %struct.stream_SFD_state_s* %2, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %match = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %3, i32 0, i32 8
  store i32 0, i32* %match, align 4, !tbaa !19
  %4 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_count = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %4, i32 0, i32 9
  store i32 0, i32* %copy_count, align 4, !tbaa !22
  %5 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %eod = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %5, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %eod, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !23
  %cmp = icmp ne i32 %6, 0
  %conv = zext i1 %cmp to i32
  %7 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %min_left = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %7, i32 0, i32 3
  store i32 %conv, i32* %min_left, align 4, !tbaa !24
  %8 = bitcast %struct.stream_SFD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_SFD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_SFD_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %status = alloca i32, align 4
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pattern = alloca i8*, align 8
  %match = alloca i32, align 4
  %count65 = alloca i32, align 4
  %c = alloca i32, align 4
  %end = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !9
  %0 = bitcast %struct.stream_SFD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_SFD_state_s*
  store %struct.stream_SFD_state_s* %2, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !10
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !12
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %limit, align 8, !tbaa !14
  store i8* %11, i8** %rlimit, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !15
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %status, align 4, !tbaa !9
  %16 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %eod = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %16, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %eod, i32 0, i32 1
  %17 = load i32, i32* %size, align 4, !tbaa !23
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %if.else.61

if.then:                                          ; preds = %entry
  %18 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !9
  %21 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %23 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast3 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %23 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  store i32 %conv6, i32* %wcount, align 4, !tbaa !9
  %24 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load i32, i32* %rcount, align 4, !tbaa !9
  %conv7 = sext i32 %25 to i64
  %26 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %skip_count = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %26, i32 0, i32 7
  %27 = load i64, i64* %skip_count, align 8, !tbaa !25
  %cmp8 = icmp sle i64 %conv7, %27
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %28 = load i32, i32* %rcount, align 4, !tbaa !9
  %conv11 = sext i32 %28 to i64
  %29 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %skip_count12 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %29, i32 0, i32 7
  %30 = load i64, i64* %skip_count12, align 8, !tbaa !25
  %sub = sub nsw i64 %30, %conv11
  store i64 %sub, i64* %skip_count12, align 8, !tbaa !25
  %31 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %32 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr13 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %32, i32 0, i32 0
  store i8* %31, i8** %ptr13, align 8, !tbaa !10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  %33 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %skip_count14 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %33, i32 0, i32 7
  %34 = load i64, i64* %skip_count14, align 8, !tbaa !25
  %cmp15 = icmp sgt i64 %34, 0
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else
  %35 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %skip_count18 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %35, i32 0, i32 7
  %36 = load i64, i64* %skip_count18, align 8, !tbaa !25
  %37 = load i32, i32* %rcount, align 4, !tbaa !9
  %conv19 = sext i32 %37 to i64
  %sub20 = sub nsw i64 %conv19, %36
  %conv21 = trunc i64 %sub20 to i32
  store i32 %conv21, i32* %rcount, align 4, !tbaa !9
  %38 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %skip_count22 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %38, i32 0, i32 7
  %39 = load i64, i64* %skip_count22, align 8, !tbaa !25
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %39
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %41 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr23 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %41, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr23, align 8, !tbaa !10
  %42 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %skip_count24 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %42, i32 0, i32 7
  store i64 0, i64* %skip_count24, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end
  %43 = load i32, i32* %rcount, align 4, !tbaa !9
  %44 = load i32, i32* %wcount, align 4, !tbaa !9
  %cmp26 = icmp slt i32 %43, %44
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %45 = load i32, i32* %rcount, align 4, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  %46 = load i32, i32* %wcount, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %45, %cond.true ], [ %46, %cond.false ]
  store i32 %cond, i32* %count, align 4, !tbaa !9
  %47 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count28 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %47, i32 0, i32 5
  %48 = load i64, i64* %count28, align 8, !tbaa !26
  %cmp29 = icmp eq i64 %48, 0
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %cond.end
  %49 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %50 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %call = call i32 @stream_move(%struct.stream_cursor_read_s* %49, %struct.stream_cursor_write_s* %50) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.32:                                       ; preds = %cond.end
  %51 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count33 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %51, i32 0, i32 5
  %52 = load i64, i64* %count33, align 8, !tbaa !26
  %53 = load i32, i32* %count, align 4, !tbaa !9
  %conv34 = sext i32 %53 to i64
  %cmp35 = icmp sgt i64 %52, %conv34
  br i1 %cmp35, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %if.else.32
  %54 = load i32, i32* %count, align 4, !tbaa !9
  %conv38 = sext i32 %54 to i64
  %55 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count39 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %55, i32 0, i32 5
  %56 = load i64, i64* %count39, align 8, !tbaa !26
  %sub40 = sub nsw i64 %56, %conv38
  store i64 %sub40, i64* %count39, align 8, !tbaa !26
  %57 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %58 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %call41 = call i32 @stream_move(%struct.stream_cursor_read_s* %57, %struct.stream_cursor_write_s* %58) #6
  store i32 %call41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.42:                                       ; preds = %if.else.32
  %59 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count43 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %59, i32 0, i32 5
  %60 = load i64, i64* %count43, align 8, !tbaa !26
  %conv44 = trunc i64 %60 to i32
  store i32 %conv44, i32* %count, align 4, !tbaa !9
  %61 = load i32, i32* %count, align 4, !tbaa !9
  %cmp45 = icmp sgt i32 %61, 0
  br i1 %cmp45, label %if.then.47, label %if.end.57

if.then.47:                                       ; preds = %if.else.42
  %62 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i32, i32* %count, align 4, !tbaa !9
  %conv50 = sext i32 %64 to i64
  %call51 = call i8* @memcpy(i8* %add.ptr48, i8* %add.ptr49, i64 %conv50) #5
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %66 = load i32, i32* %count, align 4, !tbaa !9
  %idx.ext = sext i32 %66 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  %67 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr53 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %67, i32 0, i32 0
  store i8* %add.ptr52, i8** %ptr53, align 8, !tbaa !10
  %68 = load i8*, i8** %q, align 8, !tbaa !1
  %69 = load i32, i32* %count, align 4, !tbaa !9
  %idx.ext54 = sext i32 %69 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %68, i64 %idx.ext54
  %70 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr56 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %70, i32 0, i32 1
  store i8* %add.ptr55, i8** %ptr56, align 8, !tbaa !12
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.47, %if.else.42
  %71 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count58 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %71, i32 0, i32 5
  store i64 -1, i64* %count58, align 8, !tbaa !26
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.37, %if.then.31, %if.then.10
  %72 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  br label %cleanup.189

if.else.61:                                       ; preds = %entry
  %75 = bitcast i8** %pattern to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #2
  %76 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %eod62 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %76, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %eod62, i32 0, i32 0
  %77 = load i8*, i8** %data, align 8, !tbaa !27
  store i8* %77, i8** %pattern, align 8, !tbaa !1
  %78 = bitcast i32* %match to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #2
  %79 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %match63 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %79, i32 0, i32 8
  %80 = load i32, i32* %match63, align 4, !tbaa !19
  store i32 %80, i32* %match, align 4, !tbaa !9
  br label %cp

cp:                                               ; preds = %cleanup.176, %if.else.61
  %81 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_count = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %81, i32 0, i32 9
  %82 = load i32, i32* %copy_count, align 4, !tbaa !22
  %tobool = icmp ne i32 %82, 0
  br i1 %tobool, label %if.then.64, label %if.end.107

if.then.64:                                       ; preds = %cp
  %83 = bitcast i32* %count65 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #2
  %84 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %85 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast66 = ptrtoint i8* %84 to i64
  %sub.ptr.rhs.cast67 = ptrtoint i8* %85 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %86 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_count69 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %86, i32 0, i32 9
  %87 = load i32, i32* %copy_count69, align 4, !tbaa !22
  %conv70 = zext i32 %87 to i64
  %cmp71 = icmp slt i64 %sub.ptr.sub68, %conv70
  br i1 %cmp71, label %cond.true.73, label %cond.false.77

cond.true.73:                                     ; preds = %if.then.64
  %88 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %89 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast74 = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast75 = ptrtoint i8* %89 to i64
  %sub.ptr.sub76 = sub i64 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75
  br label %cond.end.80

cond.false.77:                                    ; preds = %if.then.64
  %90 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_count78 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %90, i32 0, i32 9
  %91 = load i32, i32* %copy_count78, align 4, !tbaa !22
  %conv79 = zext i32 %91 to i64
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.77, %cond.true.73
  %cond81 = phi i64 [ %sub.ptr.sub76, %cond.true.73 ], [ %conv79, %cond.false.77 ]
  %conv82 = trunc i64 %cond81 to i32
  store i32 %conv82, i32* %count65, align 4, !tbaa !9
  %92 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr83 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %eod84 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %93, i32 0, i32 6
  %data85 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %eod84, i32 0, i32 0
  %94 = load i8*, i8** %data85, align 8, !tbaa !27
  %95 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_ptr = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %95, i32 0, i32 10
  %96 = load i32, i32* %copy_ptr, align 4, !tbaa !28
  %idx.ext86 = zext i32 %96 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %94, i64 %idx.ext86
  %97 = load i32, i32* %count65, align 4, !tbaa !9
  %conv88 = sext i32 %97 to i64
  %call89 = call i8* @memcpy(i8* %add.ptr83, i8* %add.ptr87, i64 %conv88) #5
  %98 = load i32, i32* %count65, align 4, !tbaa !9
  %99 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_count90 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %99, i32 0, i32 9
  %100 = load i32, i32* %copy_count90, align 4, !tbaa !22
  %sub91 = sub i32 %100, %98
  store i32 %sub91, i32* %copy_count90, align 4, !tbaa !22
  %101 = load i32, i32* %count65, align 4, !tbaa !9
  %102 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_ptr92 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %102, i32 0, i32 10
  %103 = load i32, i32* %copy_ptr92, align 4, !tbaa !28
  %add = add i32 %103, %101
  store i32 %add, i32* %copy_ptr92, align 4, !tbaa !28
  %104 = load i32, i32* %count65, align 4, !tbaa !9
  %105 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext93 = sext i32 %104 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %105, i64 %idx.ext93
  store i8* %add.ptr94, i8** %q, align 8, !tbaa !1
  %106 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_count95 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %106, i32 0, i32 9
  %107 = load i32, i32* %copy_count95, align 4, !tbaa !22
  %cmp96 = icmp ne i32 %107, 0
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %cond.end.80
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.106

if.else.99:                                       ; preds = %cond.end.80
  %108 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count100 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %108, i32 0, i32 5
  %109 = load i64, i64* %count100, align 8, !tbaa !26
  %cmp101 = icmp slt i64 %109, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.else.99
  store i32 -1, i32* %status, align 4, !tbaa !9
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end.104:                                       ; preds = %if.else.99
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.106

cleanup.106:                                      ; preds = %if.then.103, %if.then.98, %if.end.105
  %110 = bitcast i32* %count65 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %xit
  ]

cleanup.cont:                                     ; preds = %cleanup.106
  br label %if.end.107

if.end.107:                                       ; preds = %cleanup.cont, %cp
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.178, %cleanup.176, %if.end.107
  %111 = load i8*, i8** %p, align 8, !tbaa !1
  %112 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp108 = icmp ult i8* %111, %112
  br i1 %cmp108, label %while.body, label %while.end.179

while.body:                                       ; preds = %while.cond
  %113 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #2
  %114 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %115 = load i8, i8* %incdec.ptr, align 1, !tbaa !16
  %conv110 = zext i8 %115 to i32
  store i32 %conv110, i32* %c, align 4, !tbaa !9
  %116 = load i32, i32* %c, align 4, !tbaa !9
  %117 = load i32, i32* %match, align 4, !tbaa !9
  %idxprom = zext i32 %117 to i64
  %118 = load i8*, i8** %pattern, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %118, i64 %idxprom
  %119 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv111 = zext i8 %119 to i32
  %cmp112 = icmp eq i32 %116, %conv111
  br i1 %cmp112, label %if.then.114, label %if.end.145

if.then.114:                                      ; preds = %while.body
  %120 = load i32, i32* %match, align 4, !tbaa !9
  %inc = add i32 %120, 1
  store i32 %inc, i32* %match, align 4, !tbaa !9
  %121 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %eod115 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %121, i32 0, i32 6
  %size116 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %eod115, i32 0, i32 1
  %122 = load i32, i32* %size116, align 4, !tbaa !23
  %cmp117 = icmp eq i32 %inc, %122
  br i1 %cmp117, label %if.then.119, label %if.end.144

if.then.119:                                      ; preds = %if.then.114
  %123 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %skip_count120 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %123, i32 0, i32 7
  %124 = load i64, i64* %skip_count120, align 8, !tbaa !25
  %cmp121 = icmp sgt i64 %124, 0
  br i1 %cmp121, label %if.then.123, label %if.end.126

if.then.123:                                      ; preds = %if.then.119
  %125 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr124 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %125, i32 0, i32 1
  %126 = load i8*, i8** %ptr124, align 8, !tbaa !12
  store i8* %126, i8** %q, align 8, !tbaa !1
  %127 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %skip_count125 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %127, i32 0, i32 7
  %128 = load i64, i64* %skip_count125, align 8, !tbaa !25
  %dec = add nsw i64 %128, -1
  store i64 %dec, i64* %skip_count125, align 8, !tbaa !25
  store i32 0, i32* %match, align 4, !tbaa !9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.176

if.end.126:                                       ; preds = %if.then.119
  %129 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count127 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %129, i32 0, i32 5
  %130 = load i64, i64* %count127, align 8, !tbaa !26
  %cmp128 = icmp sle i64 %130, 0
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %if.end.126
  store i32 -1, i32* %status, align 4, !tbaa !9
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.176

if.else.131:                                      ; preds = %if.end.126
  %131 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count132 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %131, i32 0, i32 5
  %132 = load i64, i64* %count132, align 8, !tbaa !26
  %cmp133 = icmp eq i64 %132, 1
  br i1 %cmp133, label %if.then.135, label %if.else.137

if.then.135:                                      ; preds = %if.else.131
  %133 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count136 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %133, i32 0, i32 5
  store i64 -1, i64* %count136, align 8, !tbaa !26
  br label %if.end.140

if.else.137:                                      ; preds = %if.else.131
  %134 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count138 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %134, i32 0, i32 5
  %135 = load i64, i64* %count138, align 8, !tbaa !26
  %dec139 = add nsw i64 %135, -1
  store i64 %dec139, i64* %count138, align 8, !tbaa !26
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %if.then.135
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140
  %136 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_ptr142 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %136, i32 0, i32 10
  store i32 0, i32* %copy_ptr142, align 4, !tbaa !28
  %137 = load i32, i32* %match, align 4, !tbaa !9
  %138 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_count143 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %138, i32 0, i32 9
  store i32 %137, i32* %copy_count143, align 4, !tbaa !22
  store i32 0, i32* %match, align 4, !tbaa !9
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.176

if.end.144:                                       ; preds = %if.then.114
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.176

if.end.145:                                       ; preds = %while.body
  %139 = load i32, i32* %match, align 4, !tbaa !9
  %cmp146 = icmp ugt i32 %139, 0
  br i1 %cmp146, label %if.then.148, label %if.end.168

if.then.148:                                      ; preds = %if.end.145
  %140 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #2
  %141 = load i32, i32* %match, align 4, !tbaa !9
  store i32 %141, i32* %end, align 4, !tbaa !9
  br label %while.cond.149

while.cond.149:                                   ; preds = %if.end.162, %if.then.148
  %142 = load i32, i32* %match, align 4, !tbaa !9
  %cmp150 = icmp ugt i32 %142, 0
  br i1 %cmp150, label %while.body.152, label %while.end

while.body.152:                                   ; preds = %while.cond.149
  %143 = load i32, i32* %match, align 4, !tbaa !9
  %dec153 = add i32 %143, -1
  store i32 %dec153, i32* %match, align 4, !tbaa !9
  %144 = load i8*, i8** %pattern, align 8, !tbaa !1
  %145 = load i8*, i8** %pattern, align 8, !tbaa !1
  %146 = load i32, i32* %end, align 4, !tbaa !9
  %idx.ext154 = sext i32 %146 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %145, i64 %idx.ext154
  %147 = load i32, i32* %match, align 4, !tbaa !9
  %idx.ext156 = zext i32 %147 to i64
  %idx.neg = sub i64 0, %idx.ext156
  %add.ptr157 = getelementptr inbounds i8, i8* %add.ptr155, i64 %idx.neg
  %148 = load i32, i32* %match, align 4, !tbaa !9
  %conv158 = zext i32 %148 to i64
  %call159 = call i32 @memcmp(i8* %144, i8* %add.ptr157, i64 %conv158) #7
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.end.162, label %if.then.161

if.then.161:                                      ; preds = %while.body.152
  br label %while.end

if.end.162:                                       ; preds = %while.body.152
  br label %while.cond.149

while.end:                                        ; preds = %if.then.161, %while.cond.149
  %149 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr163 = getelementptr inbounds i8, i8* %149, i32 -1
  store i8* %incdec.ptr163, i8** %p, align 8, !tbaa !1
  %150 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_ptr164 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %150, i32 0, i32 10
  store i32 0, i32* %copy_ptr164, align 4, !tbaa !28
  %151 = load i32, i32* %end, align 4, !tbaa !9
  %152 = load i32, i32* %match, align 4, !tbaa !9
  %sub165 = sub i32 %151, %152
  %153 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %copy_count166 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %153, i32 0, i32 9
  store i32 %sub165, i32* %copy_count166, align 4, !tbaa !22
  store i32 2, i32* %cleanup.dest.slot
  %154 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  br label %cleanup.176

if.end.168:                                       ; preds = %if.end.145
  %155 = load i8*, i8** %q, align 8, !tbaa !1
  %156 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp169 = icmp eq i8* %155, %156
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %if.end.168
  %157 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr172 = getelementptr inbounds i8, i8* %157, i32 -1
  store i8* %incdec.ptr172, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.176

if.end.173:                                       ; preds = %if.end.168
  %158 = load i32, i32* %c, align 4, !tbaa !9
  %conv174 = trunc i32 %158 to i8
  %159 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr175 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr175, i8** %q, align 8, !tbaa !1
  store i8 %conv174, i8* %incdec.ptr175, align 1, !tbaa !16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.176

cleanup.176:                                      ; preds = %if.then.130, %if.end.173, %if.then.171, %while.end, %if.end.144, %if.end.141, %if.then.123
  %160 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %cleanup.dest.177 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.177, label %unreachable [
    i32 0, label %cleanup.cont.178
    i32 4, label %while.cond
    i32 2, label %cp
    i32 5, label %while.end.179
    i32 3, label %xit
  ]

cleanup.cont.178:                                 ; preds = %cleanup.176
  br label %while.cond

while.end.179:                                    ; preds = %cleanup.176, %while.cond
  br label %xit

xit:                                              ; preds = %while.end.179, %cleanup.176, %cleanup.106
  %161 = load i8*, i8** %p, align 8, !tbaa !1
  %162 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr180 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %162, i32 0, i32 0
  store i8* %161, i8** %ptr180, align 8, !tbaa !10
  %163 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %skip_count181 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %163, i32 0, i32 7
  %164 = load i64, i64* %skip_count181, align 8, !tbaa !25
  %cmp182 = icmp sle i64 %164, 0
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %xit
  %165 = load i8*, i8** %q, align 8, !tbaa !1
  %166 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr185 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %166, i32 0, i32 1
  store i8* %165, i8** %ptr185, align 8, !tbaa !12
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %xit
  %167 = load i32, i32* %match, align 4, !tbaa !9
  %168 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %match187 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %168, i32 0, i32 8
  store i32 %167, i32* %match187, align 4, !tbaa !19
  %169 = bitcast i32* %match to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i8** %pattern to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #2
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.186
  %171 = load i32, i32* %status, align 4, !tbaa !9
  store i32 %171, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.189

cleanup.189:                                      ; preds = %if.end.188, %cleanup
  %172 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %174 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  %175 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #2
  %176 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #2
  %177 = bitcast %struct.stream_SFD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = load i32, i32* %retval
  ret i32 %178

unreachable:                                      ; preds = %cleanup.106, %cleanup.176
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @s_SFD_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_SFD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_SFD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_SFD_state_s*
  store %struct.stream_SFD_state_s* %2, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %3, i32 0, i32 5
  store i64 0, i64* %count, align 8, !tbaa !26
  %4 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %eod = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %4, i32 0, i32 6
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %eod, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !27
  %5 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %eod1 = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %5, i32 0, i32 6
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %eod1, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !23
  %6 = load %struct.stream_SFD_state_s*, %struct.stream_SFD_state_s** %ss, align 8, !tbaa !1
  %skip_count = getelementptr inbounds %struct.stream_SFD_state_s, %struct.stream_SFD_state_s* %6, i32 0, i32 7
  store i64 0, i64* %skip_count, align 8, !tbaa !25
  %7 = bitcast %struct.stream_SFD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare i32 @stream_move(%struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 112}
!6 = !{!"stream_PFBD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !8, i64 120}
!7 = !{!"int", !3, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!13, !2, i64 8}
!13 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!11, !2, i64 8}
!15 = !{!13, !2, i64 16}
!16 = !{!3, !3, i64 0}
!17 = !{!6, !8, i64 120}
!18 = !{!6, !7, i64 108}
!19 = !{!20, !7, i64 144}
!20 = !{!"stream_SFD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !8, i64 112, !21, i64 120, !8, i64 136, !7, i64 144, !7, i64 148, !7, i64 152}
!21 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!22 = !{!20, !7, i64 148}
!23 = !{!20, !7, i64 128}
!24 = !{!20, !7, i64 24}
!25 = !{!20, !8, i64 136}
!26 = !{!20, !8, i64 112}
!27 = !{!20, !2, i64 120}
!28 = !{!20, !7, i64 152}
