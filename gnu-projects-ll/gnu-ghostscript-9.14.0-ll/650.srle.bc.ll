; ModuleID = './srle.bc'
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
%struct.stream_RLE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i64, i32 }

@st_RLE_state = internal constant %struct.gs_memory_struct_type_s { i32 136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_RLE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_RLE_state, i32 (%struct.stream_state_s*)* @s_RLE_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_RLE_process, i32 129, i32 2, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_RLE_set_defaults, i32 (%struct.stream_state_s*)* @s_RLE_init }, align 8
@.str = private unnamed_addr constant [22 x i8] c"RunLengthEncode state\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_RLE_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_RLE_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_RLE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_RLE_state_s*
  store %struct.stream_RLE_state_s* %2, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_size = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %3, i32 0, i32 6
  %4 = load i64, i64* %record_size, align 8, !tbaa !5
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_size1 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %5, i32 0, i32 6
  store i64 4294967295, i64* %record_size1, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_size2 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %6, i32 0, i32 6
  %7 = load i64, i64* %record_size2, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4294967295, %cond.true ], [ %7, %cond.false ]
  %8 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_left = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %8, i32 0, i32 7
  store i64 %cond, i64* %record_left, align 8, !tbaa !9
  %9 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %copy_left = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %9, i32 0, i32 8
  store i32 0, i32* %copy_left, align 4, !tbaa !10
  %10 = bitcast %struct.stream_RLE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_RLE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_RLE_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %status = alloca i32, align 4
  %rleft = alloca i64, align 8
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %beg = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %count47 = alloca i32, align 4
  %end = alloca i32, align 4
  %next = alloca i8, align 1
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !11
  %0 = bitcast %struct.stream_RLE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_RLE_state_s*
  store %struct.stream_RLE_state_s* %2, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !12
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !14
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %limit, align 8, !tbaa !16
  store i8* %11, i8** %rlimit, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !17
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %status, align 4, !tbaa !11
  %16 = bitcast i64* %rleft to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_left = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %17, i32 0, i32 7
  %18 = load i64, i64* %record_left, align 8, !tbaa !9
  store i64 %18, i64* %rleft, align 8, !tbaa !18
  br label %copy

copy:                                             ; preds = %cleanup.224, %entry
  %19 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %copy_left = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %19, i32 0, i32 8
  %20 = load i32, i32* %copy_left, align 4, !tbaa !10
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end.44

if.then:                                          ; preds = %copy
  %21 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !11
  %24 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %26 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast3 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %26 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  store i32 %conv6, i32* %wcount, align 4, !tbaa !11
  %27 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %copy_left7 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %28, i32 0, i32 8
  %29 = load i32, i32* %copy_left7, align 4, !tbaa !10
  store i32 %29, i32* %count, align 4, !tbaa !11
  %30 = load i32, i32* %rcount, align 4, !tbaa !11
  %31 = load i32, i32* %count, align 4, !tbaa !11
  %cmp = icmp ult i32 %30, %31
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %32 = load i32, i32* %rcount, align 4, !tbaa !11
  store i32 %32, i32* %count, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %33 = load i32, i32* %wcount, align 4, !tbaa !11
  %34 = load i32, i32* %count, align 4, !tbaa !11
  %cmp10 = icmp ult i32 %33, %34
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %35 = load i32, i32* %wcount, align 4, !tbaa !11
  store i32 %35, i32* %count, align 4, !tbaa !11
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  %36 = load i64, i64* %rleft, align 8, !tbaa !18
  %37 = load i32, i32* %count, align 4, !tbaa !11
  %conv14 = zext i32 %37 to i64
  %cmp15 = icmp ult i64 %36, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.13
  %38 = load i64, i64* %rleft, align 8, !tbaa !18
  %conv18 = trunc i64 %38 to i32
  store i32 %conv18, i32* %count, align 4, !tbaa !11
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.13
  %39 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i32, i32* %count, align 4, !tbaa !11
  %conv21 = zext i32 %41 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %add.ptr20, i64 %conv21) #4
  %42 = load i32, i32* %count, align 4, !tbaa !11
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext = zext i32 %42 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  store i8* %add.ptr22, i8** %p, align 8, !tbaa !1
  %44 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr23 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %44, i32 0, i32 0
  store i8* %add.ptr22, i8** %ptr23, align 8, !tbaa !12
  %45 = load i32, i32* %count, align 4, !tbaa !11
  %46 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext24 = zext i32 %45 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %46, i64 %idx.ext24
  store i8* %add.ptr25, i8** %q, align 8, !tbaa !1
  %47 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr26 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %47, i32 0, i32 1
  store i8* %add.ptr25, i8** %ptr26, align 8, !tbaa !14
  %48 = load i32, i32* %count, align 4, !tbaa !11
  %conv27 = zext i32 %48 to i64
  %49 = load i64, i64* %rleft, align 8, !tbaa !18
  %sub = sub i64 %49, %conv27
  store i64 %sub, i64* %rleft, align 8, !tbaa !18
  %50 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_left28 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %50, i32 0, i32 7
  store i64 %sub, i64* %record_left28, align 8, !tbaa !9
  %cmp29 = icmp eq i64 %sub, 0
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.19
  %51 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_size = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %51, i32 0, i32 6
  %52 = load i64, i64* %record_size, align 8, !tbaa !5
  store i64 %52, i64* %rleft, align 8, !tbaa !18
  %53 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_left32 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %53, i32 0, i32 7
  store i64 %52, i64* %record_left32, align 8, !tbaa !9
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.19
  %54 = load i32, i32* %count, align 4, !tbaa !11
  %55 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %copy_left34 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %55, i32 0, i32 8
  %56 = load i32, i32* %copy_left34, align 4, !tbaa !10
  %sub35 = sub i32 %56, %54
  store i32 %sub35, i32* %copy_left34, align 4, !tbaa !10
  %cmp36 = icmp ne i32 %sub35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.33
  %57 = load i32, i32* %rcount, align 4, !tbaa !11
  %cmp39 = icmp eq i32 %57, 0
  %cond = select i1 %cmp39, i32 0, i32 1
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %if.then.38
  %58 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.249 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.44

if.end.44:                                        ; preds = %cleanup.cont, %copy
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.230, %if.end.44
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %62 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp45 = icmp ult i8* %61, %62
  br i1 %cmp45, label %while.body, label %while.end.231

while.body:                                       ; preds = %while.cond
  %63 = bitcast i8** %beg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %64, i8** %beg, align 8, !tbaa !1
  %65 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #2
  %66 = bitcast i32* %count47 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast48 = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast49 = ptrtoint i8* %68 to i64
  %sub.ptr.sub50 = sub i64 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49
  %conv51 = trunc i64 %sub.ptr.sub50 to i32
  store i32 %conv51, i32* %count47, align 4, !tbaa !11
  %69 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = load i32, i32* %last.addr, align 4, !tbaa !11
  store i32 %70, i32* %end, align 4, !tbaa !11
  call void @llvm.lifetime.start(i64 1, i8* %next) #2
  %71 = load i32, i32* %count47, align 4, !tbaa !11
  %conv52 = zext i32 %71 to i64
  %72 = load i64, i64* %rleft, align 8, !tbaa !18
  %cmp53 = icmp ugt i64 %conv52, %72
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %while.body
  %73 = load i64, i64* %rleft, align 8, !tbaa !18
  %conv56 = trunc i64 %73 to i32
  store i32 %conv56, i32* %count47, align 4, !tbaa !11
  store i32 1, i32* %end, align 4, !tbaa !11
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %while.body
  %74 = load i32, i32* %count47, align 4, !tbaa !11
  %cmp58 = icmp ugt i32 %74, 128
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.57
  store i32 128, i32* %count47, align 4, !tbaa !11
  store i32 1, i32* %end, align 4, !tbaa !11
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.57
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %76 = load i32, i32* %count47, align 4, !tbaa !11
  %idx.ext62 = zext i32 %76 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %75, i64 %idx.ext62
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr63, i64 -1
  store i8* %add.ptr64, i8** %p1, align 8, !tbaa !1
  %77 = load i32, i32* %count47, align 4, !tbaa !11
  %cmp65 = icmp ult i32 %77, 3
  br i1 %cmp65, label %if.then.67, label %if.else.113

if.then.67:                                       ; preds = %if.end.61
  %78 = load i32, i32* %end, align 4, !tbaa !11
  %tobool68 = icmp ne i32 %78, 0
  br i1 %tobool68, label %lor.lhs.false, label %if.then.71

lor.lhs.false:                                    ; preds = %if.then.67
  %79 = load i32, i32* %count47, align 4, !tbaa !11
  %cmp69 = icmp eq i32 %79, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %lor.lhs.false, %if.then.67
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.224

if.end.72:                                        ; preds = %lor.lhs.false
  %80 = load i32, i32* %count47, align 4, !tbaa !11
  %cmp73 = icmp eq i32 %80, 1
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %if.end.72
  %81 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %82 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast76 = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast77 = ptrtoint i8* %82 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %cmp79 = icmp slt i64 %sub.ptr.sub78, 2
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.75
  store i32 1, i32* %status, align 4, !tbaa !11
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.224

if.end.82:                                        ; preds = %if.then.75
  %83 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %incdec.ptr, align 1, !tbaa !19
  br label %if.end.109

if.else:                                          ; preds = %if.end.72
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv83 = zext i8 %85 to i32
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %86, i64 2
  %87 = load i8, i8* %arrayidx84, align 1, !tbaa !19
  %conv85 = zext i8 %87 to i32
  %cmp86 = icmp eq i32 %conv83, %conv85
  br i1 %cmp86, label %if.then.88, label %if.else.97

if.then.88:                                       ; preds = %if.else
  %88 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %89 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast89 = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast90 = ptrtoint i8* %89 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %cmp92 = icmp slt i64 %sub.ptr.sub91, 2
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.88
  store i32 1, i32* %status, align 4, !tbaa !11
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.224

if.end.95:                                        ; preds = %if.then.88
  %90 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr96 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr96, i8** %q, align 8, !tbaa !1
  store i8 -1, i8* %incdec.ptr96, align 1, !tbaa !19
  br label %if.end.108

if.else.97:                                       ; preds = %if.else
  %91 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %92 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast98 = ptrtoint i8* %91 to i64
  %sub.ptr.rhs.cast99 = ptrtoint i8* %92 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99
  %cmp101 = icmp slt i64 %sub.ptr.sub100, 3
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.else.97
  store i32 1, i32* %status, align 4, !tbaa !11
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.224

if.end.104:                                       ; preds = %if.else.97
  %93 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr105 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr105, i8** %q, align 8, !tbaa !1
  store i8 1, i8* %incdec.ptr105, align 1, !tbaa !19
  %94 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %94, i64 1
  %95 = load i8, i8* %arrayidx106, align 1, !tbaa !19
  %96 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr107 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr107, i8** %q, align 8, !tbaa !1
  store i8 %95, i8* %incdec.ptr107, align 1, !tbaa !19
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.104, %if.end.95
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.82
  %97 = load i8*, i8** %p1, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8, i8* %97, i64 1
  %98 = load i8, i8* %arrayidx110, align 1, !tbaa !19
  %99 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr111 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr111, i8** %q, align 8, !tbaa !1
  store i8 %98, i8* %incdec.ptr111, align 1, !tbaa !19
  %100 = load i8*, i8** %p1, align 8, !tbaa !1
  %add.ptr112 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %add.ptr112, i8** %p, align 8, !tbaa !1
  br label %if.end.214

if.else.113:                                      ; preds = %if.end.61
  %101 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx114, align 1, !tbaa !19
  store i8 %102, i8* %next, align 1, !tbaa !19
  %conv115 = zext i8 %102 to i32
  %103 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %103, i64 2
  %104 = load i8, i8* %arrayidx116, align 1, !tbaa !19
  %conv117 = zext i8 %104 to i32
  %cmp118 = icmp eq i32 %conv115, %conv117
  br i1 %cmp118, label %land.lhs.true, label %if.else.155

land.lhs.true:                                    ; preds = %if.else.113
  %105 = load i8, i8* %next, align 1, !tbaa !19
  %conv120 = zext i8 %105 to i32
  %106 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8, i8* %106, i64 3
  %107 = load i8, i8* %arrayidx121, align 1, !tbaa !19
  %conv122 = zext i8 %107 to i32
  %cmp123 = icmp eq i32 %conv120, %conv122
  br i1 %cmp123, label %if.then.125, label %if.else.155

if.then.125:                                      ; preds = %land.lhs.true
  %108 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %109 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast126 = ptrtoint i8* %108 to i64
  %sub.ptr.rhs.cast127 = ptrtoint i8* %109 to i64
  %sub.ptr.sub128 = sub i64 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  %cmp129 = icmp slt i64 %sub.ptr.sub128, 2
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.then.125
  store i32 1, i32* %status, align 4, !tbaa !11
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.224

if.end.132:                                       ; preds = %if.then.125
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.132
  %110 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr133, i8** %p, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %111 = load i8*, i8** %p, align 8, !tbaa !1
  %112 = load i8*, i8** %p1, align 8, !tbaa !1
  %cmp134 = icmp ult i8* %111, %112
  br i1 %cmp134, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %113 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i8, i8* %113, i64 2
  %114 = load i8, i8* %arrayidx136, align 1, !tbaa !19
  %conv137 = zext i8 %114 to i32
  %115 = load i8, i8* %next, align 1, !tbaa !19
  %conv138 = zext i8 %115 to i32
  %cmp139 = icmp eq i32 %conv137, %conv138
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %116 = phi i1 [ false, %do.cond ], [ %cmp139, %land.rhs ]
  br i1 %116, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %118 = load i8*, i8** %p1, align 8, !tbaa !1
  %cmp141 = icmp eq i8* %117, %118
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.146

land.lhs.true.143:                                ; preds = %do.end
  %119 = load i32, i32* %end, align 4, !tbaa !11
  %tobool144 = icmp ne i32 %119, 0
  br i1 %tobool144, label %if.end.146, label %if.then.145

if.then.145:                                      ; preds = %land.lhs.true.143
  %120 = load i8*, i8** %beg, align 8, !tbaa !1
  store i8* %120, i8** %p, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.224

if.end.146:                                       ; preds = %land.lhs.true.143, %do.end
  %121 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr147 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr147, i8** %p, align 8, !tbaa !1
  %122 = load i8*, i8** %p, align 8, !tbaa !1
  %123 = load i8*, i8** %beg, align 8, !tbaa !1
  %sub.ptr.lhs.cast148 = ptrtoint i8* %122 to i64
  %sub.ptr.rhs.cast149 = ptrtoint i8* %123 to i64
  %sub.ptr.sub150 = sub i64 %sub.ptr.lhs.cast148, %sub.ptr.rhs.cast149
  %sub151 = sub nsw i64 257, %sub.ptr.sub150
  %conv152 = trunc i64 %sub151 to i8
  %124 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr153 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr153, i8** %q, align 8, !tbaa !1
  store i8 %conv152, i8* %incdec.ptr153, align 1, !tbaa !19
  %125 = load i8, i8* %next, align 1, !tbaa !19
  %126 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr154 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr154, i8** %q, align 8, !tbaa !1
  store i8 %125, i8* %incdec.ptr154, align 1, !tbaa !19
  br label %if.end.213

if.else.155:                                      ; preds = %land.lhs.true, %if.else.113
  %127 = load i8*, i8** %p1, align 8, !tbaa !1
  %incdec.ptr156 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %incdec.ptr156, i8** %p1, align 8, !tbaa !1
  br label %while.cond.157

while.cond.157:                                   ; preds = %while.body.174, %if.else.155
  %128 = load i8*, i8** %p, align 8, !tbaa !1
  %129 = load i8*, i8** %p1, align 8, !tbaa !1
  %cmp158 = icmp ult i8* %128, %129
  br i1 %cmp158, label %land.rhs.160, label %land.end.173

land.rhs.160:                                     ; preds = %while.cond.157
  %130 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i8, i8* %130, i64 2
  %131 = load i8, i8* %arrayidx161, align 1, !tbaa !19
  %conv162 = zext i8 %131 to i32
  %132 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %132, i64 1
  %133 = load i8, i8* %arrayidx163, align 1, !tbaa !19
  %conv164 = zext i8 %133 to i32
  %cmp165 = icmp ne i32 %conv162, %conv164
  br i1 %cmp165, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.160
  %134 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %134, i64 3
  %135 = load i8, i8* %arrayidx167, align 1, !tbaa !19
  %conv168 = zext i8 %135 to i32
  %136 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds i8, i8* %136, i64 1
  %137 = load i8, i8* %arrayidx169, align 1, !tbaa !19
  %conv170 = zext i8 %137 to i32
  %cmp171 = icmp ne i32 %conv168, %conv170
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.160
  %138 = phi i1 [ true, %land.rhs.160 ], [ %cmp171, %lor.rhs ]
  br label %land.end.173

land.end.173:                                     ; preds = %lor.end, %while.cond.157
  %139 = phi i1 [ false, %while.cond.157 ], [ %138, %lor.end ]
  br i1 %139, label %while.body.174, label %while.end

while.body.174:                                   ; preds = %land.end.173
  %140 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr175 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr175, i8** %p, align 8, !tbaa !1
  br label %while.cond.157

while.end:                                        ; preds = %land.end.173
  %141 = load i8*, i8** %p, align 8, !tbaa !1
  %142 = load i8*, i8** %p1, align 8, !tbaa !1
  %cmp176 = icmp eq i8* %141, %142
  br i1 %cmp176, label %if.then.178, label %if.end.183

if.then.178:                                      ; preds = %while.end
  %143 = load i32, i32* %end, align 4, !tbaa !11
  %tobool179 = icmp ne i32 %143, 0
  br i1 %tobool179, label %if.end.181, label %if.then.180

if.then.180:                                      ; preds = %if.then.178
  %144 = load i8*, i8** %beg, align 8, !tbaa !1
  store i8* %144, i8** %p, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.224

if.end.181:                                       ; preds = %if.then.178
  %145 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr182 = getelementptr inbounds i8, i8* %145, i64 2
  store i8* %add.ptr182, i8** %p, align 8, !tbaa !1
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.181, %while.end
  %146 = load i8*, i8** %p, align 8, !tbaa !1
  %147 = load i8*, i8** %beg, align 8, !tbaa !1
  %sub.ptr.lhs.cast184 = ptrtoint i8* %146 to i64
  %sub.ptr.rhs.cast185 = ptrtoint i8* %147 to i64
  %sub.ptr.sub186 = sub i64 %sub.ptr.lhs.cast184, %sub.ptr.rhs.cast185
  %conv187 = trunc i64 %sub.ptr.sub186 to i32
  store i32 %conv187, i32* %count47, align 4, !tbaa !11
  %148 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %149 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast188 = ptrtoint i8* %148 to i64
  %sub.ptr.rhs.cast189 = ptrtoint i8* %149 to i64
  %sub.ptr.sub190 = sub i64 %sub.ptr.lhs.cast188, %sub.ptr.rhs.cast189
  %150 = load i32, i32* %count47, align 4, !tbaa !11
  %add = add i32 %150, 1
  %conv191 = zext i32 %add to i64
  %cmp192 = icmp slt i64 %sub.ptr.sub190, %conv191
  br i1 %cmp192, label %if.then.194, label %if.end.203

if.then.194:                                      ; preds = %if.end.183
  %151 = load i8*, i8** %beg, align 8, !tbaa !1
  store i8* %151, i8** %p, align 8, !tbaa !1
  %152 = load i8*, i8** %q, align 8, !tbaa !1
  %153 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp195 = icmp uge i8* %152, %153
  br i1 %cmp195, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %if.then.194
  store i32 1, i32* %status, align 4, !tbaa !11
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.224

if.end.198:                                       ; preds = %if.then.194
  %154 = load i32, i32* %count47, align 4, !tbaa !11
  %sub199 = sub i32 %154, 1
  %conv200 = trunc i32 %sub199 to i8
  %155 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr201 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr201, i8** %q, align 8, !tbaa !1
  store i8 %conv200, i8* %incdec.ptr201, align 1, !tbaa !19
  %156 = load i32, i32* %count47, align 4, !tbaa !11
  %157 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %copy_left202 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %157, i32 0, i32 8
  store i32 %156, i32* %copy_left202, align 4, !tbaa !10
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.224

if.end.203:                                       ; preds = %if.end.183
  %158 = load i32, i32* %count47, align 4, !tbaa !11
  %sub204 = sub i32 %158, 1
  %conv205 = trunc i32 %sub204 to i8
  %159 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr206 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr206, i8** %q, align 8, !tbaa !1
  store i8 %conv205, i8* %incdec.ptr206, align 1, !tbaa !19
  %160 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr207 = getelementptr inbounds i8, i8* %160, i64 1
  %161 = load i8*, i8** %beg, align 8, !tbaa !1
  %add.ptr208 = getelementptr inbounds i8, i8* %161, i64 1
  %162 = load i32, i32* %count47, align 4, !tbaa !11
  %conv209 = zext i32 %162 to i64
  %call210 = call i8* @memcpy(i8* %add.ptr207, i8* %add.ptr208, i64 %conv209) #4
  %163 = load i32, i32* %count47, align 4, !tbaa !11
  %164 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext211 = zext i32 %163 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %164, i64 %idx.ext211
  store i8* %add.ptr212, i8** %q, align 8, !tbaa !1
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.203, %if.end.146
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.109
  %165 = load i8*, i8** %p, align 8, !tbaa !1
  %166 = load i8*, i8** %beg, align 8, !tbaa !1
  %sub.ptr.lhs.cast215 = ptrtoint i8* %165 to i64
  %sub.ptr.rhs.cast216 = ptrtoint i8* %166 to i64
  %sub.ptr.sub217 = sub i64 %sub.ptr.lhs.cast215, %sub.ptr.rhs.cast216
  %167 = load i64, i64* %rleft, align 8, !tbaa !18
  %sub218 = sub i64 %167, %sub.ptr.sub217
  store i64 %sub218, i64* %rleft, align 8, !tbaa !18
  %168 = load i64, i64* %rleft, align 8, !tbaa !18
  %cmp219 = icmp eq i64 %168, 0
  br i1 %cmp219, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %if.end.214
  %169 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_size222 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %169, i32 0, i32 6
  %170 = load i64, i64* %record_size222, align 8, !tbaa !5
  store i64 %170, i64* %rleft, align 8, !tbaa !18
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.221, %if.end.214
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.224

cleanup.224:                                      ; preds = %if.end.223, %if.end.198, %if.then.197, %if.then.180, %if.then.145, %if.then.131, %if.then.103, %if.then.94, %if.then.81, %if.then.71
  call void @llvm.lifetime.end(i64 1, i8* %next) #2
  %171 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast i32* %count47 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %174 = bitcast i8** %beg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  %cleanup.dest.229 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.229, label %unreachable [
    i32 0, label %cleanup.cont.230
    i32 4, label %while.end.231
    i32 2, label %copy
  ]

cleanup.cont.230:                                 ; preds = %cleanup.224
  br label %while.cond

while.end.231:                                    ; preds = %cleanup.224, %while.cond
  %175 = load i32, i32* %last.addr, align 4, !tbaa !11
  %tobool232 = icmp ne i32 %175, 0
  br i1 %tobool232, label %land.lhs.true.233, label %if.end.245

land.lhs.true.233:                                ; preds = %while.end.231
  %176 = load i32, i32* %status, align 4, !tbaa !11
  %cmp234 = icmp eq i32 %176, 0
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.245

land.lhs.true.236:                                ; preds = %land.lhs.true.233
  %177 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %177, i32 0, i32 5
  %178 = load i32, i32* %EndOfData, align 4, !tbaa !20
  %tobool237 = icmp ne i32 %178, 0
  br i1 %tobool237, label %if.then.238, label %if.end.245

if.then.238:                                      ; preds = %land.lhs.true.236
  %179 = load i8*, i8** %q, align 8, !tbaa !1
  %180 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp239 = icmp ult i8* %179, %180
  br i1 %cmp239, label %if.then.241, label %if.else.243

if.then.241:                                      ; preds = %if.then.238
  %181 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr242 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr242, i8** %q, align 8, !tbaa !1
  store i8 -128, i8* %incdec.ptr242, align 1, !tbaa !19
  br label %if.end.244

if.else.243:                                      ; preds = %if.then.238
  store i32 1, i32* %status, align 4, !tbaa !11
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.243, %if.then.241
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %land.lhs.true.236, %land.lhs.true.233, %while.end.231
  %182 = load i8*, i8** %p, align 8, !tbaa !1
  %183 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr246 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %183, i32 0, i32 0
  store i8* %182, i8** %ptr246, align 8, !tbaa !12
  %184 = load i8*, i8** %q, align 8, !tbaa !1
  %185 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr247 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %185, i32 0, i32 1
  store i8* %184, i8** %ptr247, align 8, !tbaa !14
  %186 = load i64, i64* %rleft, align 8, !tbaa !18
  %187 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_left248 = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %187, i32 0, i32 7
  store i64 %186, i64* %record_left248, align 8, !tbaa !9
  %188 = load i32, i32* %status, align 4, !tbaa !11
  store i32 %188, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

cleanup.249:                                      ; preds = %if.end.245, %cleanup
  %189 = bitcast i64* %rleft to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #2
  %190 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #2
  %192 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #2
  %193 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #2
  %194 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #2
  %195 = bitcast %struct.stream_RLE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  %196 = load i32, i32* %retval
  ret i32 %196

unreachable:                                      ; preds = %cleanup.224
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @s_RLE_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_RLE_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_RLE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_RLE_state_s*
  store %struct.stream_RLE_state_s* %2, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %3, i32 0, i32 5
  store i32 1, i32* %EndOfData, align 4, !tbaa !20
  %4 = load %struct.stream_RLE_state_s*, %struct.stream_RLE_state_s** %ss, align 8, !tbaa !1
  %record_size = getelementptr inbounds %struct.stream_RLE_state_s, %struct.stream_RLE_state_s* %4, i32 0, i32 6
  store i64 0, i64* %record_size, align 8, !tbaa !5
  %5 = bitcast %struct.stream_RLE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 112}
!6 = !{!"stream_RLE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !8, i64 112, !8, i64 120, !7, i64 128}
!7 = !{!"int", !3, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!6, !8, i64 120}
!10 = !{!6, !7, i64 128}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !2, i64 0}
!13 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!15, !2, i64 8}
!15 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!16 = !{!13, !2, i64 8}
!17 = !{!15, !2, i64 16}
!18 = !{!8, !8, i64 0}
!19 = !{!3, !3, i64 0}
!20 = !{!6, !7, i64 108}
