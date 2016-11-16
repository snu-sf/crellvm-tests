; ModuleID = './sfilter2.bc'
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
%struct.stream_A85E_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32 }
%struct.stream_BT_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], [256 x i8] }

@st_A85E_state = internal constant %struct.gs_memory_struct_type_s { i32 120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_A85E_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_A85E_state, i32 (%struct.stream_state_s*)* @s_A85E_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_A85E_process, i32 4, i32 6, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@st_BT_state = internal constant %struct.gs_memory_struct_type_s { i32 368, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_BTE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_BT_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_BT_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@s_BTD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_BT_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_BT_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"ASCII85Encode state\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ByteTranslateEncode/Decode state\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_A85E_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_A85E_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_A85E_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_A85E_state_s*
  store %struct.stream_A85E_state_s* %2, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_A85E_state_s*, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.stream_A85E_state_s, %struct.stream_A85E_state_s* %3, i32 0, i32 5
  store i32 0, i32* %count, align 4, !tbaa !5
  %4 = load %struct.stream_A85E_state_s*, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %last_char = getelementptr inbounds %struct.stream_A85E_state_s, %struct.stream_A85E_state_s* %4, i32 0, i32 6
  store i32 10, i32* %last_char, align 4, !tbaa !8
  %5 = bitcast %struct.stream_A85E_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_A85E_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_A85E_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %qn = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %status = alloca i32, align 4
  %prev = alloca i32, align 4
  %count3 = alloca i32, align 4
  %word = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %v4 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %v2 = alloca i32, align 4
  %v1 = alloca i32, align 4
  %extra = alloca i32, align 4
  %buf = alloca [5 x i8], align 1
  %nchars = alloca i32, align 4
  %word288 = alloca i64, align 8
  %divisor = alloca i64, align 8
  %i = alloca i32, align 4
  %space = alloca i32, align 4
  %v = alloca i64, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !9
  %0 = bitcast %struct.stream_A85E_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_A85E_state_s*
  store %struct.stream_A85E_state_s* %2, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
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
  %9 = bitcast i8** %qn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i8*, i8** %q, align 8, !tbaa !1
  %11 = load %struct.stream_A85E_state_s*, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.stream_A85E_state_s, %struct.stream_A85E_state_s* %11, i32 0, i32 5
  %12 = load i32, i32* %count, align 4, !tbaa !5
  %sub = sub nsw i32 79, %12
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %qn, align 8, !tbaa !1
  %13 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %14, i32 0, i32 1
  %15 = load i8*, i8** %limit, align 8, !tbaa !14
  store i8* %15, i8** %rlimit, align 8, !tbaa !1
  %16 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %17, i32 0, i32 2
  %18 = load i8*, i8** %limit2, align 8, !tbaa !15
  store i8* %18, i8** %wlimit, align 8, !tbaa !1
  %19 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  store i32 0, i32* %status, align 4, !tbaa !9
  %20 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.stream_A85E_state_s*, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %last_char = getelementptr inbounds %struct.stream_A85E_state_s, %struct.stream_A85E_state_s* %21, i32 0, i32 6
  %22 = load i32, i32* %last_char, align 4, !tbaa !8
  store i32 %22, i32* %prev, align 4, !tbaa !9
  %23 = bitcast i32* %count3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %24 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %count3, align 4, !tbaa !9
  %cmp = icmp sge i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = bitcast i64* %word to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv5 = zext i8 %28 to i32
  %shl = shl i32 %conv5, 8
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx6, align 1, !tbaa !16
  %conv7 = zext i8 %30 to i32
  %add = add i32 %shl, %conv7
  %conv8 = zext i32 %add to i64
  %shl9 = shl i64 %conv8, 16
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %31, i64 3
  %32 = load i8, i8* %arrayidx10, align 1, !tbaa !16
  %conv11 = zext i8 %32 to i32
  %shl12 = shl i32 %conv11, 8
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8, i8* %33, i64 4
  %34 = load i8, i8* %arrayidx13, align 1, !tbaa !16
  %conv14 = zext i8 %34 to i32
  %add15 = add i32 %shl12, %conv14
  %conv16 = zext i32 %add15 to i64
  %add17 = add i64 %shl9, %conv16
  store i64 %add17, i64* %word, align 8, !tbaa !17
  %35 = load i64, i64* %word, align 8, !tbaa !17
  %cmp18 = icmp eq i64 %35, 0
  br i1 %cmp18, label %if.then, label %if.else.39

if.then:                                          ; preds = %for.body
  %36 = load i8*, i8** %q, align 8, !tbaa !1
  %37 = load i8*, i8** %qn, align 8, !tbaa !1
  %cmp20 = icmp uge i8* %36, %37
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then
  %38 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %39 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast23 = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %39 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %cmp26 = icmp slt i64 %sub.ptr.sub25, 2
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then.22
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.264

if.end:                                           ; preds = %if.then.22
  store i32 10, i32* %prev, align 4, !tbaa !9
  %40 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 10, i8* %incdec.ptr, align 1, !tbaa !16
  %41 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds i8, i8* %41, i64 79
  store i8* %add.ptr29, i8** %qn, align 8, !tbaa !1
  br label %do.body.30

do.body.30:                                       ; preds = %if.end
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  br label %if.end.37

if.else:                                          ; preds = %if.then
  %42 = load i8*, i8** %q, align 8, !tbaa !1
  %43 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp33 = icmp uge i8* %42, %43
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.264

if.end.36:                                        ; preds = %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %do.end.32
  store i32 122, i32* %prev, align 4, !tbaa !9
  %44 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr38, i8** %q, align 8, !tbaa !1
  store i8 122, i8* %incdec.ptr38, align 1, !tbaa !16
  br label %if.end.263

if.else.39:                                       ; preds = %for.body
  %45 = bitcast i64* %v4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %46 = load i64, i64* %word, align 8, !tbaa !17
  %div = udiv i64 %46, 85
  store i64 %div, i64* %v4, align 8, !tbaa !17
  %47 = bitcast i64* %v3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  %48 = load i64, i64* %v4, align 8, !tbaa !17
  %div40 = udiv i64 %48, 85
  store i64 %div40, i64* %v3, align 8, !tbaa !17
  %49 = bitcast i32* %v2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = load i64, i64* %v3, align 8, !tbaa !17
  %div41 = udiv i64 %50, 85
  %conv42 = trunc i64 %div41 to i32
  store i32 %conv42, i32* %v2, align 4, !tbaa !9
  %51 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = load i32, i32* %v2, align 4, !tbaa !9
  %div43 = udiv i32 %52, 85
  store i32 %div43, i32* %v1, align 4, !tbaa !9
  br label %put

put:                                              ; preds = %do.end.252, %do.end.120, %do.end.56, %if.else.39
  %53 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i8, i8* %53, i64 5
  %54 = load i8*, i8** %qn, align 8, !tbaa !1
  %cmp45 = icmp ugt i8* %add.ptr44, %54
  br i1 %cmp45, label %if.then.47, label %if.end.57

if.then.47:                                       ; preds = %put
  %55 = load i8*, i8** %q, align 8, !tbaa !1
  %56 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp48 = icmp uge i8* %55, %56
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.47
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.257

if.end.51:                                        ; preds = %if.then.47
  store i32 10, i32* %prev, align 4, !tbaa !9
  %57 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr52, i8** %q, align 8, !tbaa !1
  store i8 10, i8* %incdec.ptr52, align 1, !tbaa !16
  %58 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr53 = getelementptr inbounds i8, i8* %58, i64 79
  store i8* %add.ptr53, i8** %qn, align 8, !tbaa !1
  br label %do.body.54

do.body.54:                                       ; preds = %if.end.51
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  br label %put

if.end.57:                                        ; preds = %put
  %59 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %60 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast58 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast59 = ptrtoint i8* %60 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %cmp61 = icmp slt i64 %sub.ptr.sub60, 5
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.57
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.257

if.end.64:                                        ; preds = %if.end.57
  %61 = load i32, i32* %v1, align 4, !tbaa !9
  %conv65 = trunc i32 %61 to i8
  %conv66 = zext i8 %conv65 to i32
  %add67 = add nsw i32 %conv66, 33
  %conv68 = trunc i32 %add67 to i8
  %62 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %conv68, i8* %arrayidx69, align 1, !tbaa !16
  %63 = load i32, i32* %v2, align 4, !tbaa !9
  %64 = load i32, i32* %v1, align 4, !tbaa !9
  %mul = mul i32 %64, 85
  %sub70 = sub i32 %63, %mul
  %conv71 = trunc i32 %sub70 to i8
  %conv72 = zext i8 %conv71 to i32
  %add73 = add nsw i32 %conv72, 33
  %conv74 = trunc i32 %add73 to i8
  %65 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %65, i64 2
  store i8 %conv74, i8* %arrayidx75, align 1, !tbaa !16
  %66 = load i64, i64* %v3, align 8, !tbaa !17
  %conv76 = trunc i64 %66 to i32
  %67 = load i32, i32* %v2, align 4, !tbaa !9
  %mul77 = mul i32 %67, 85
  %sub78 = sub i32 %conv76, %mul77
  %conv79 = trunc i32 %sub78 to i8
  %conv80 = zext i8 %conv79 to i32
  %add81 = add nsw i32 %conv80, 33
  %conv82 = trunc i32 %add81 to i8
  %68 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %68, i64 3
  store i8 %conv82, i8* %arrayidx83, align 1, !tbaa !16
  %69 = load i64, i64* %v4, align 8, !tbaa !17
  %conv84 = trunc i64 %69 to i32
  %70 = load i64, i64* %v3, align 8, !tbaa !17
  %conv85 = trunc i64 %70 to i32
  %mul86 = mul i32 %conv85, 85
  %sub87 = sub i32 %conv84, %mul86
  %conv88 = trunc i32 %sub87 to i8
  %conv89 = zext i8 %conv88 to i32
  %add90 = add nsw i32 %conv89, 33
  %conv91 = trunc i32 %add90 to i8
  %71 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %71, i64 4
  store i8 %conv91, i8* %arrayidx92, align 1, !tbaa !16
  %72 = load i64, i64* %word, align 8, !tbaa !17
  %conv93 = trunc i64 %72 to i32
  %73 = load i64, i64* %v4, align 8, !tbaa !17
  %conv94 = trunc i64 %73 to i32
  %mul95 = mul i32 %conv94, 85
  %sub96 = sub i32 %conv93, %mul95
  %conv97 = trunc i32 %sub96 to i8
  %conv98 = zext i8 %conv97 to i32
  %add99 = add nsw i32 %conv98, 33
  %conv100 = trunc i32 %add99 to i8
  %74 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i8, i8* %74, i64 5
  store i8 %conv100, i8* %arrayidx101, align 1, !tbaa !16
  %75 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx102, align 1, !tbaa !16
  %conv103 = zext i8 %76 to i32
  %cmp104 = icmp eq i32 %conv103, 37
  br i1 %cmp104, label %if.then.106, label %if.else.233

if.then.106:                                      ; preds = %if.end.64
  %77 = load i32, i32* %prev, align 4, !tbaa !9
  %cmp107 = icmp eq i32 %77, 37
  br i1 %cmp107, label %if.then.109, label %if.else.122

if.then.109:                                      ; preds = %if.then.106
  %78 = load i8*, i8** %qn, align 8, !tbaa !1
  %79 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast110 = ptrtoint i8* %78 to i64
  %sub.ptr.rhs.cast111 = ptrtoint i8* %79 to i64
  %sub.ptr.sub112 = sub i64 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  %cmp113 = icmp eq i64 %sub.ptr.sub112, 78
  br i1 %cmp113, label %if.then.115, label %if.end.121

if.then.115:                                      ; preds = %if.then.109
  store i32 10, i32* %prev, align 4, !tbaa !9
  %80 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr116 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr116, i8** %q, align 8, !tbaa !1
  store i8 10, i8* %incdec.ptr116, align 1, !tbaa !16
  %81 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr117 = getelementptr inbounds i8, i8* %81, i64 79
  store i8* %add.ptr117, i8** %qn, align 8, !tbaa !1
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.115
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.body.118
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  br label %put

if.end.121:                                       ; preds = %if.then.109
  br label %if.end.232

if.else.122:                                      ; preds = %if.then.106
  %82 = load i32, i32* %prev, align 4, !tbaa !9
  %cmp123 = icmp eq i32 %82, 10
  br i1 %cmp123, label %land.lhs.true, label %if.end.231

land.lhs.true:                                    ; preds = %if.else.122
  %83 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %83, i64 2
  %84 = load i8, i8* %arrayidx125, align 1, !tbaa !16
  %conv126 = zext i8 %84 to i32
  %cmp127 = icmp eq i32 %conv126, 37
  br i1 %cmp127, label %if.then.133, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %85 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i8, i8* %85, i64 2
  %86 = load i8, i8* %arrayidx129, align 1, !tbaa !16
  %conv130 = zext i8 %86 to i32
  %cmp131 = icmp eq i32 %conv130, 33
  br i1 %cmp131, label %if.then.133, label %if.end.231

if.then.133:                                      ; preds = %lor.lhs.false, %land.lhs.true
  %87 = bitcast i32* %extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #2
  %88 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i8, i8* %88, i64 2
  %89 = load i8, i8* %arrayidx134, align 1, !tbaa !16
  %conv135 = zext i8 %89 to i32
  %cmp136 = icmp eq i32 %conv135, 33
  br i1 %cmp136, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.133
  br label %cond.end.181

cond.false:                                       ; preds = %if.then.133
  %90 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i8, i8* %90, i64 3
  %91 = load i8, i8* %arrayidx138, align 1, !tbaa !16
  %conv139 = zext i8 %91 to i32
  %cmp140 = icmp eq i32 %conv139, 33
  br i1 %cmp140, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %cond.false
  br label %cond.end.179

cond.false.143:                                   ; preds = %cond.false
  %92 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i8, i8* %92, i64 3
  %93 = load i8, i8* %arrayidx144, align 1, !tbaa !16
  %conv145 = zext i8 %93 to i32
  %cmp146 = icmp ne i32 %conv145, 37
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %cond.false.143
  br label %cond.end.177

cond.false.149:                                   ; preds = %cond.false.143
  %94 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %94, i64 4
  %95 = load i8, i8* %arrayidx150, align 1, !tbaa !16
  %conv151 = zext i8 %95 to i32
  %cmp152 = icmp eq i32 %conv151, 33
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.false.149
  br label %cond.end.175

cond.false.155:                                   ; preds = %cond.false.149
  %96 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds i8, i8* %96, i64 4
  %97 = load i8, i8* %arrayidx156, align 1, !tbaa !16
  %conv157 = zext i8 %97 to i32
  %cmp158 = icmp ne i32 %conv157, 37
  br i1 %cmp158, label %cond.true.160, label %cond.false.161

cond.true.160:                                    ; preds = %cond.false.155
  br label %cond.end.173

cond.false.161:                                   ; preds = %cond.false.155
  %98 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i8, i8* %98, i64 5
  %99 = load i8, i8* %arrayidx162, align 1, !tbaa !16
  %conv163 = zext i8 %99 to i32
  %cmp164 = icmp eq i32 %conv163, 33
  br i1 %cmp164, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %cond.false.161
  br label %cond.end

cond.false.167:                                   ; preds = %cond.false.161
  %100 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i8, i8* %100, i64 5
  %101 = load i8, i8* %arrayidx168, align 1, !tbaa !16
  %conv169 = zext i8 %101 to i32
  %cmp170 = icmp ne i32 %conv169, 37
  %cond = select i1 %cmp170, i32 3, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.167, %cond.true.166
  %cond172 = phi i32 [ 4, %cond.true.166 ], [ %cond, %cond.false.167 ]
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.end, %cond.true.160
  %cond174 = phi i32 [ 2, %cond.true.160 ], [ %cond172, %cond.end ]
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.end.173, %cond.true.154
  %cond176 = phi i32 [ 3, %cond.true.154 ], [ %cond174, %cond.end.173 ]
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.end.175, %cond.true.148
  %cond178 = phi i32 [ 1, %cond.true.148 ], [ %cond176, %cond.end.175 ]
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.end.177, %cond.true.142
  %cond180 = phi i32 [ 2, %cond.true.142 ], [ %cond178, %cond.end.177 ]
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.end.179, %cond.true
  %cond182 = phi i32 [ 1, %cond.true ], [ %cond180, %cond.end.179 ]
  store i32 %cond182, i32* %extra, align 4, !tbaa !9
  %102 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %103 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast183 = ptrtoint i8* %102 to i64
  %sub.ptr.rhs.cast184 = ptrtoint i8* %103 to i64
  %sub.ptr.sub185 = sub i64 %sub.ptr.lhs.cast183, %sub.ptr.rhs.cast184
  %104 = load i32, i32* %extra, align 4, !tbaa !9
  %add186 = add nsw i32 5, %104
  %conv187 = sext i32 %add186 to i64
  %cmp188 = icmp slt i64 %sub.ptr.sub185, %conv187
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %cond.end.181
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.191:                                       ; preds = %cond.end.181
  br label %do.body.192

do.body.192:                                      ; preds = %if.end.191
  br label %do.cond.193

do.cond.193:                                      ; preds = %do.body.192
  br label %do.end.194

do.end.194:                                       ; preds = %do.cond.193
  %105 = load i32, i32* %extra, align 4, !tbaa !9
  switch i32 %105, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.198
    i32 2, label %sw.bb.204
    i32 1, label %sw.bb.212
  ]

sw.bb:                                            ; preds = %do.end.194
  %106 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i8, i8* %106, i64 5
  %107 = load i8, i8* %arrayidx195, align 1, !tbaa !16
  %108 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i8, i8* %108, i64 9
  store i8 %107, i8* %arrayidx196, align 1, !tbaa !16
  %109 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i8, i8* %109, i64 8
  store i8 10, i8* %arrayidx197, align 1, !tbaa !16
  br label %e3

sw.bb.198:                                        ; preds = %do.end.194
  %110 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %110, i64 5
  %111 = load i8, i8* %arrayidx199, align 1, !tbaa !16
  %112 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i8, i8* %112, i64 8
  store i8 %111, i8* %arrayidx200, align 1, !tbaa !16
  br label %e3

e3:                                               ; preds = %sw.bb.198, %sw.bb
  %113 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i8, i8* %113, i64 4
  %114 = load i8, i8* %arrayidx201, align 1, !tbaa !16
  %115 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i8, i8* %115, i64 7
  store i8 %114, i8* %arrayidx202, align 1, !tbaa !16
  %116 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i8, i8* %116, i64 6
  store i8 10, i8* %arrayidx203, align 1, !tbaa !16
  br label %e2

sw.bb.204:                                        ; preds = %do.end.194
  %117 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %117, i64 5
  %118 = load i8, i8* %arrayidx205, align 1, !tbaa !16
  %119 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds i8, i8* %119, i64 7
  store i8 %118, i8* %arrayidx206, align 1, !tbaa !16
  %120 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i8, i8* %120, i64 4
  %121 = load i8, i8* %arrayidx207, align 1, !tbaa !16
  %122 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i8, i8* %122, i64 6
  store i8 %121, i8* %arrayidx208, align 1, !tbaa !16
  br label %e2

e2:                                               ; preds = %sw.bb.204, %e3
  %123 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds i8, i8* %123, i64 3
  %124 = load i8, i8* %arrayidx209, align 1, !tbaa !16
  %125 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i8, i8* %125, i64 5
  store i8 %124, i8* %arrayidx210, align 1, !tbaa !16
  %126 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds i8, i8* %126, i64 4
  store i8 10, i8* %arrayidx211, align 1, !tbaa !16
  br label %e1

sw.bb.212:                                        ; preds = %do.end.194
  %127 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i8, i8* %127, i64 5
  %128 = load i8, i8* %arrayidx213, align 1, !tbaa !16
  %129 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i8, i8* %129, i64 6
  store i8 %128, i8* %arrayidx214, align 1, !tbaa !16
  %130 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i8, i8* %130, i64 4
  %131 = load i8, i8* %arrayidx215, align 1, !tbaa !16
  %132 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds i8, i8* %132, i64 5
  store i8 %131, i8* %arrayidx216, align 1, !tbaa !16
  %133 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i8, i8* %133, i64 3
  %134 = load i8, i8* %arrayidx217, align 1, !tbaa !16
  %135 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds i8, i8* %135, i64 4
  store i8 %134, i8* %arrayidx218, align 1, !tbaa !16
  br label %e1

e1:                                               ; preds = %sw.bb.212, %e2
  %136 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i8, i8* %136, i64 2
  %137 = load i8, i8* %arrayidx219, align 1, !tbaa !16
  %138 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i8, i8* %138, i64 3
  store i8 %137, i8* %arrayidx220, align 1, !tbaa !16
  %139 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i8, i8* %139, i64 2
  store i8 10, i8* %arrayidx221, align 1, !tbaa !16
  br label %sw.epilog

sw.epilog:                                        ; preds = %e1, %do.end.194
  br label %do.body.222

do.body.222:                                      ; preds = %sw.epilog
  br label %do.cond.223

do.cond.223:                                      ; preds = %do.body.222
  br label %do.end.224

do.end.224:                                       ; preds = %do.cond.223
  %140 = load i8*, i8** %q, align 8, !tbaa !1
  %141 = load i32, i32* %extra, align 4, !tbaa !9
  %mul225 = mul nsw i32 2, %141
  %idx.ext226 = sext i32 %mul225 to i64
  %add.ptr227 = getelementptr inbounds i8, i8* %140, i64 %idx.ext226
  %add.ptr228 = getelementptr inbounds i8, i8* %add.ptr227, i64 79
  store i8* %add.ptr228, i8** %qn, align 8, !tbaa !1
  %142 = load i32, i32* %extra, align 4, !tbaa !9
  %143 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext229 = sext i32 %142 to i64
  %add.ptr230 = getelementptr inbounds i8, i8* %143, i64 %idx.ext229
  store i8* %add.ptr230, i8** %q, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.224, %if.then.190
  %144 = bitcast i32* %extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.257 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.231

if.end.231:                                       ; preds = %cleanup.cont, %lor.lhs.false, %if.else.122
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.end.121
  br label %if.end.254

if.else.233:                                      ; preds = %if.end.64
  %145 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i8, i8* %145, i64 1
  %146 = load i8, i8* %arrayidx234, align 1, !tbaa !16
  %conv235 = zext i8 %146 to i32
  %cmp236 = icmp eq i32 %conv235, 33
  br i1 %cmp236, label %land.lhs.true.238, label %if.end.253

land.lhs.true.238:                                ; preds = %if.else.233
  %147 = load i32, i32* %prev, align 4, !tbaa !9
  %cmp239 = icmp eq i32 %147, 37
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.253

land.lhs.true.241:                                ; preds = %land.lhs.true.238
  %148 = load i8*, i8** %qn, align 8, !tbaa !1
  %149 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast242 = ptrtoint i8* %148 to i64
  %sub.ptr.rhs.cast243 = ptrtoint i8* %149 to i64
  %sub.ptr.sub244 = sub i64 %sub.ptr.lhs.cast242, %sub.ptr.rhs.cast243
  %cmp245 = icmp eq i64 %sub.ptr.sub244, 78
  br i1 %cmp245, label %if.then.247, label %if.end.253

if.then.247:                                      ; preds = %land.lhs.true.241
  store i32 10, i32* %prev, align 4, !tbaa !9
  %150 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr248 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr248, i8** %q, align 8, !tbaa !1
  store i8 10, i8* %incdec.ptr248, align 1, !tbaa !16
  %151 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr249 = getelementptr inbounds i8, i8* %151, i64 79
  store i8* %add.ptr249, i8** %qn, align 8, !tbaa !1
  br label %do.body.250

do.body.250:                                      ; preds = %if.then.247
  br label %do.cond.251

do.cond.251:                                      ; preds = %do.body.250
  br label %do.end.252

do.end.252:                                       ; preds = %do.cond.251
  br label %put

if.end.253:                                       ; preds = %land.lhs.true.241, %land.lhs.true.238, %if.else.233
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %if.end.232
  %152 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr255 = getelementptr inbounds i8, i8* %152, i64 5
  store i8* %add.ptr255, i8** %q, align 8, !tbaa !1
  %153 = load i8, i8* %add.ptr255, align 1, !tbaa !16
  %conv256 = zext i8 %153 to i32
  store i32 %conv256, i32* %prev, align 4, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.257

cleanup.257:                                      ; preds = %if.end.254, %cleanup, %if.then.63, %if.then.50
  %154 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %v2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i64* %v3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #2
  %157 = bitcast i64* %v4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #2
  %cleanup.dest.261 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.261, label %cleanup.264 [
    i32 0, label %cleanup.cont.262
  ]

cleanup.cont.262:                                 ; preds = %cleanup.257
  br label %if.end.263

if.end.263:                                       ; preds = %cleanup.cont.262, %if.end.37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.264

cleanup.264:                                      ; preds = %if.end.263, %cleanup.257, %if.then.35, %if.then.28
  %158 = bitcast i64* %word to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %cleanup.dest.265 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.265, label %unreachable [
    i32 0, label %cleanup.cont.266
    i32 4, label %for.end
  ]

cleanup.cont.266:                                 ; preds = %cleanup.264
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.266
  %159 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr267 = getelementptr inbounds i8, i8* %159, i64 4
  store i8* %add.ptr267, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %cleanup.264, %for.cond
  br label %end

end:                                              ; preds = %cleanup.386, %for.end
  %160 = load i8*, i8** %qn, align 8, !tbaa !1
  %161 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast268 = ptrtoint i8* %160 to i64
  %sub.ptr.rhs.cast269 = ptrtoint i8* %161 to i64
  %sub.ptr.sub270 = sub i64 %sub.ptr.lhs.cast268, %sub.ptr.rhs.cast269
  %sub271 = sub nsw i64 79, %sub.ptr.sub270
  %conv272 = trunc i64 %sub271 to i32
  %162 = load %struct.stream_A85E_state_s*, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %count273 = getelementptr inbounds %struct.stream_A85E_state_s, %struct.stream_A85E_state_s* %162, i32 0, i32 5
  store i32 %conv272, i32* %count273, align 4, !tbaa !5
  %163 = load i32, i32* %last.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %163, 0
  br i1 %tobool, label %land.lhs.true.274, label %if.end.394

land.lhs.true.274:                                ; preds = %end
  %164 = load i32, i32* %status, align 4, !tbaa !9
  %cmp275 = icmp eq i32 %164, 0
  br i1 %cmp275, label %land.lhs.true.277, label %if.end.394

land.lhs.true.277:                                ; preds = %land.lhs.true.274
  %165 = load i32, i32* %count3, align 4, !tbaa !9
  %cmp278 = icmp slt i32 %165, 4
  br i1 %cmp278, label %if.then.280, label %if.end.394

if.then.280:                                      ; preds = %land.lhs.true.277
  %166 = bitcast [5 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 5, i8* %166) #2
  %167 = bitcast i32* %nchars to i8*
  call void @llvm.lifetime.start(i64 4, i8* %167) #2
  %168 = load i32, i32* %count3, align 4, !tbaa !9
  %cmp281 = icmp eq i32 %168, 0
  br i1 %cmp281, label %cond.true.283, label %cond.false.284

cond.true.283:                                    ; preds = %if.then.280
  br label %cond.end.286

cond.false.284:                                   ; preds = %if.then.280
  %169 = load i32, i32* %count3, align 4, !tbaa !9
  %add285 = add nsw i32 %169, 3
  br label %cond.end.286

cond.end.286:                                     ; preds = %cond.false.284, %cond.true.283
  %cond287 = phi i32 [ 2, %cond.true.283 ], [ %add285, %cond.false.284 ]
  store i32 %cond287, i32* %nchars, align 4, !tbaa !9
  %170 = bitcast i64* %word288 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #2
  store i64 0, i64* %word288, align 8, !tbaa !17
  %171 = bitcast i64* %divisor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #2
  store i64 52200625, i64* %divisor, align 8, !tbaa !17
  %172 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #2
  %173 = bitcast i32* %space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #2
  %174 = load i32, i32* %count3, align 4, !tbaa !9
  switch i32 %174, label %sw.epilog.320 [
    i32 3, label %sw.bb.289
    i32 2, label %sw.bb.295
    i32 1, label %sw.bb.300
  ]

sw.bb.289:                                        ; preds = %cond.end.286
  %175 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds i8, i8* %175, i64 3
  %176 = load i8, i8* %arrayidx290, align 1, !tbaa !16
  %conv291 = zext i8 %176 to i32
  %shl292 = shl i32 %conv291, 8
  %conv293 = zext i32 %shl292 to i64
  %177 = load i64, i64* %word288, align 8, !tbaa !17
  %add294 = add i64 %177, %conv293
  store i64 %add294, i64* %word288, align 8, !tbaa !17
  br label %sw.bb.295

sw.bb.295:                                        ; preds = %cond.end.286, %sw.bb.289
  %178 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx296 = getelementptr inbounds i8, i8* %178, i64 2
  %179 = load i8, i8* %arrayidx296, align 1, !tbaa !16
  %conv297 = zext i8 %179 to i64
  %shl298 = shl i64 %conv297, 16
  %180 = load i64, i64* %word288, align 8, !tbaa !17
  %add299 = add i64 %180, %shl298
  store i64 %add299, i64* %word288, align 8, !tbaa !17
  br label %sw.bb.300

sw.bb.300:                                        ; preds = %cond.end.286, %sw.bb.295
  %181 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds i8, i8* %181, i64 1
  %182 = load i8, i8* %arrayidx301, align 1, !tbaa !16
  %conv302 = zext i8 %182 to i64
  %shl303 = shl i64 %conv302, 24
  %183 = load i64, i64* %word288, align 8, !tbaa !17
  %add304 = add i64 %183, %shl303
  store i64 %add304, i64* %word288, align 8, !tbaa !17
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.318, %sw.bb.300
  %184 = load i32, i32* %i, align 4, !tbaa !9
  %185 = load i32, i32* %count3, align 4, !tbaa !9
  %cmp306 = icmp sle i32 %184, %185
  br i1 %cmp306, label %for.body.308, label %for.end.319

for.body.308:                                     ; preds = %for.cond.305
  %186 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %186) #2
  %187 = load i64, i64* %word288, align 8, !tbaa !17
  %188 = load i64, i64* %divisor, align 8, !tbaa !17
  %div309 = udiv i64 %187, %188
  store i64 %div309, i64* %v, align 8, !tbaa !17
  %189 = load i64, i64* %v, align 8, !tbaa !17
  %conv310 = trunc i64 %189 to i8
  %conv311 = zext i8 %conv310 to i32
  %add312 = add nsw i32 %conv311, 33
  %conv313 = trunc i32 %add312 to i8
  %190 = load i32, i32* %i, align 4, !tbaa !9
  %idxprom = sext i32 %190 to i64
  %arrayidx314 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 %idxprom
  store i8 %conv313, i8* %arrayidx314, align 1, !tbaa !16
  %191 = load i64, i64* %v, align 8, !tbaa !17
  %192 = load i64, i64* %divisor, align 8, !tbaa !17
  %mul315 = mul i64 %191, %192
  %193 = load i64, i64* %word288, align 8, !tbaa !17
  %sub316 = sub i64 %193, %mul315
  store i64 %sub316, i64* %word288, align 8, !tbaa !17
  %194 = load i64, i64* %divisor, align 8, !tbaa !17
  %div317 = udiv i64 %194, 85
  store i64 %div317, i64* %divisor, align 8, !tbaa !17
  %195 = bitcast i64* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #2
  br label %for.inc.318

for.inc.318:                                      ; preds = %for.body.308
  %196 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %196, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond.305

for.end.319:                                      ; preds = %for.cond.305
  br label %sw.epilog.320

sw.epilog.320:                                    ; preds = %for.end.319, %cond.end.286
  %197 = load i32, i32* %count3, align 4, !tbaa !9
  %tobool321 = icmp ne i32 %197, 0
  br i1 %tobool321, label %land.lhs.true.322, label %land.end.347

land.lhs.true.322:                                ; preds = %sw.epilog.320
  %arrayidx323 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  %198 = load i8, i8* %arrayidx323, align 1, !tbaa !16
  %conv324 = sext i8 %198 to i32
  %cmp325 = icmp eq i32 %conv324, 37
  br i1 %cmp325, label %land.rhs, label %land.end.347

land.rhs:                                         ; preds = %land.lhs.true.322
  %199 = load i32, i32* %prev, align 4, !tbaa !9
  %cmp327 = icmp eq i32 %199, 10
  br i1 %cmp327, label %land.lhs.true.329, label %lor.rhs

land.lhs.true.329:                                ; preds = %land.rhs
  %arrayidx330 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 1
  %200 = load i8, i8* %arrayidx330, align 1, !tbaa !16
  %conv331 = sext i8 %200 to i32
  %cmp332 = icmp eq i32 %conv331, 37
  br i1 %cmp332, label %lor.end, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %land.lhs.true.329
  %arrayidx335 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 1
  %201 = load i8, i8* %arrayidx335, align 1, !tbaa !16
  %conv336 = sext i8 %201 to i32
  %cmp337 = icmp eq i32 %conv336, 33
  br i1 %cmp337, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.334, %land.rhs
  %202 = load i32, i32* %prev, align 4, !tbaa !9
  %cmp339 = icmp eq i32 %202, 37
  br i1 %cmp339, label %land.rhs.341, label %land.end

land.rhs.341:                                     ; preds = %lor.rhs
  %203 = load i8*, i8** %qn, align 8, !tbaa !1
  %204 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast342 = ptrtoint i8* %203 to i64
  %sub.ptr.rhs.cast343 = ptrtoint i8* %204 to i64
  %sub.ptr.sub344 = sub i64 %sub.ptr.lhs.cast342, %sub.ptr.rhs.cast343
  %cmp345 = icmp eq i64 %sub.ptr.sub344, 78
  br label %land.end

land.end:                                         ; preds = %land.rhs.341, %lor.rhs
  %205 = phi i1 [ false, %lor.rhs ], [ %cmp345, %land.rhs.341 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false.334, %land.lhs.true.329
  %206 = phi i1 [ true, %lor.lhs.false.334 ], [ true, %land.lhs.true.329 ], [ %205, %land.end ]
  br label %land.end.347

land.end.347:                                     ; preds = %lor.end, %land.lhs.true.322, %sw.epilog.320
  %207 = phi i1 [ false, %land.lhs.true.322 ], [ false, %sw.epilog.320 ], [ %206, %lor.end ]
  %land.ext = zext i1 %207 to i32
  store i32 %land.ext, i32* %space, align 4, !tbaa !9
  %208 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %209 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast348 = ptrtoint i8* %208 to i64
  %sub.ptr.rhs.cast349 = ptrtoint i8* %209 to i64
  %sub.ptr.sub350 = sub i64 %sub.ptr.lhs.cast348, %sub.ptr.rhs.cast349
  %210 = load i32, i32* %nchars, align 4, !tbaa !9
  %211 = load i32, i32* %space, align 4, !tbaa !9
  %add351 = add nsw i32 %210, %211
  %conv352 = sext i32 %add351 to i64
  %cmp353 = icmp slt i64 %sub.ptr.sub350, %conv352
  br i1 %cmp353, label %if.then.355, label %if.else.356

if.then.355:                                      ; preds = %land.end.347
  store i32 1, i32* %status, align 4, !tbaa !9
  br label %if.end.385

if.else.356:                                      ; preds = %land.end.347
  %212 = load i8*, i8** %q, align 8, !tbaa !1
  %213 = load i32, i32* %nchars, align 4, !tbaa !9
  %idx.ext357 = sext i32 %213 to i64
  %add.ptr358 = getelementptr inbounds i8, i8* %212, i64 %idx.ext357
  %214 = load i32, i32* %space, align 4, !tbaa !9
  %idx.ext359 = sext i32 %214 to i64
  %add.ptr360 = getelementptr inbounds i8, i8* %add.ptr358, i64 %idx.ext359
  %215 = load i8*, i8** %qn, align 8, !tbaa !1
  %cmp361 = icmp ugt i8* %add.ptr360, %215
  br i1 %cmp361, label %if.then.363, label %if.else.366

if.then.363:                                      ; preds = %if.else.356
  store i32 10, i32* %prev, align 4, !tbaa !9
  %216 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr364 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr364, i8** %q, align 8, !tbaa !1
  store i8 10, i8* %incdec.ptr364, align 1, !tbaa !16
  %217 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr365 = getelementptr inbounds i8, i8* %217, i64 79
  store i8* %add.ptr365, i8** %qn, align 8, !tbaa !1
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.386

if.else.366:                                      ; preds = %if.else.356
  %218 = load i32, i32* %count3, align 4, !tbaa !9
  %tobool367 = icmp ne i32 %218, 0
  br i1 %tobool367, label %if.then.368, label %if.end.381

if.then.368:                                      ; preds = %if.else.366
  %219 = load i32, i32* %space, align 4, !tbaa !9
  %tobool369 = icmp ne i32 %219, 0
  br i1 %tobool369, label %if.then.370, label %if.end.372

if.then.370:                                      ; preds = %if.then.368
  %220 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr371 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr371, i8** %q, align 8, !tbaa !1
  store i8 32, i8* %incdec.ptr371, align 1, !tbaa !16
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.370, %if.then.368
  %221 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr373 = getelementptr inbounds i8, i8* %221, i64 1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i32 0
  %222 = load i32, i32* %count3, align 4, !tbaa !9
  %add374 = add nsw i32 %222, 1
  %conv375 = sext i32 %add374 to i64
  %call = call i8* @memcpy(i8* %add.ptr373, i8* %arraydecay, i64 %conv375) #4
  %223 = load i32, i32* %count3, align 4, !tbaa !9
  %add376 = add nsw i32 %223, 1
  %224 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext377 = sext i32 %add376 to i64
  %add.ptr378 = getelementptr inbounds i8, i8* %224, i64 %idx.ext377
  store i8* %add.ptr378, i8** %q, align 8, !tbaa !1
  %225 = load i32, i32* %count3, align 4, !tbaa !9
  %226 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext379 = sext i32 %225 to i64
  %add.ptr380 = getelementptr inbounds i8, i8* %226, i64 %idx.ext379
  store i8* %add.ptr380, i8** %p, align 8, !tbaa !1
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.372, %if.else.366
  %227 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr382 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr382, i8** %q, align 8, !tbaa !1
  store i8 126, i8* %incdec.ptr382, align 1, !tbaa !16
  %228 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr383 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %incdec.ptr383, i8** %q, align 8, !tbaa !1
  store i8 62, i8* %incdec.ptr383, align 1, !tbaa !16
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.381
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.then.355
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.386

cleanup.386:                                      ; preds = %if.end.385, %if.then.363
  %229 = bitcast i32* %space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  %230 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #2
  %231 = bitcast i64* %divisor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #2
  %232 = bitcast i64* %word288 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #2
  %233 = bitcast i32* %nchars to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #2
  %234 = bitcast [5 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 5, i8* %234) #2
  %cleanup.dest.392 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.392, label %unreachable [
    i32 0, label %cleanup.cont.393
    i32 24, label %end
  ]

cleanup.cont.393:                                 ; preds = %cleanup.386
  br label %if.end.394

if.end.394:                                       ; preds = %cleanup.cont.393, %land.lhs.true.277, %land.lhs.true.274, %end
  br label %do.body.395

do.body.395:                                      ; preds = %if.end.394
  br label %do.cond.396

do.cond.396:                                      ; preds = %do.body.395
  br label %do.end.397

do.end.397:                                       ; preds = %do.cond.396
  %235 = load i8*, i8** %p, align 8, !tbaa !1
  %236 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr398 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %236, i32 0, i32 0
  store i8* %235, i8** %ptr398, align 8, !tbaa !10
  %237 = load i8*, i8** %q, align 8, !tbaa !1
  %238 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr399 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %238, i32 0, i32 1
  %239 = load i8*, i8** %ptr399, align 8, !tbaa !12
  %cmp400 = icmp ugt i8* %237, %239
  br i1 %cmp400, label %if.then.402, label %if.end.405

if.then.402:                                      ; preds = %do.end.397
  %240 = load i8*, i8** %q, align 8, !tbaa !1
  %241 = load i8, i8* %240, align 1, !tbaa !16
  %conv403 = zext i8 %241 to i32
  %242 = load %struct.stream_A85E_state_s*, %struct.stream_A85E_state_s** %ss, align 8, !tbaa !1
  %last_char404 = getelementptr inbounds %struct.stream_A85E_state_s, %struct.stream_A85E_state_s* %242, i32 0, i32 6
  store i32 %conv403, i32* %last_char404, align 4, !tbaa !8
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.402, %do.end.397
  %243 = load i8*, i8** %q, align 8, !tbaa !1
  %244 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr406 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %244, i32 0, i32 1
  store i8* %243, i8** %ptr406, align 8, !tbaa !12
  %245 = load i32, i32* %status, align 4, !tbaa !9
  store i32 1, i32* %cleanup.dest.slot
  %246 = bitcast i32* %count3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #2
  %247 = bitcast i32* %prev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #2
  %248 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #2
  %249 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #2
  %250 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #2
  %251 = bitcast i8** %qn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #2
  %252 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #2
  %253 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #2
  %254 = bitcast %struct.stream_A85E_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #2
  ret i32 %245

unreachable:                                      ; preds = %cleanup.386, %cleanup.264
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @s_BT_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_BT_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %count = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !9
  %0 = bitcast %struct.stream_BT_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_BT_state_s*
  store %struct.stream_BT_state_s* %2, %struct.stream_BT_state_s** %ss, align 8, !tbaa !1
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
  %10 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %limit, align 8, !tbaa !14
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !9
  %13 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %14, i32 0, i32 2
  %15 = load i8*, i8** %limit2, align 8, !tbaa !15
  %16 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast3 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %16 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  store i32 %conv6, i32* %wcount, align 4, !tbaa !9
  %17 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i32, i32* %rcount, align 4, !tbaa !9
  %20 = load i32, i32* %wcount, align 4, !tbaa !9
  %cmp = icmp ule i32 %19, %20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %rcount, align 4, !tbaa !9
  store i32 %21, i32* %count, align 4, !tbaa !9
  store i32 0, i32* %status, align 4, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load i32, i32* %wcount, align 4, !tbaa !9
  store i32 %22, i32* %count, align 4, !tbaa !9
  store i32 1, i32* %status, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %23 = load i32, i32* %count, align 4, !tbaa !9
  %dec = add i32 %23, -1
  store i32 %dec, i32* %count, align 4, !tbaa !9
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %25 = load i8, i8* %incdec.ptr, align 1, !tbaa !16
  %idxprom = zext i8 %25 to i64
  %26 = load %struct.stream_BT_state_s*, %struct.stream_BT_state_s** %ss, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.stream_BT_state_s, %struct.stream_BT_state_s* %26, i32 0, i32 5
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %table, i32 0, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %28 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr8, i8** %q, align 8, !tbaa !1
  store i8 %27, i8* %incdec.ptr8, align 1, !tbaa !16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %30 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %30, i32 0, i32 0
  store i8* %29, i8** %ptr9, align 8, !tbaa !10
  %31 = load i8*, i8** %q, align 8, !tbaa !1
  %32 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr10 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %32, i32 0, i32 1
  store i8* %31, i8** %ptr10, align 8, !tbaa !12
  %33 = load i32, i32* %status, align 4, !tbaa !9
  %34 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast %struct.stream_BT_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  ret i32 %33
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
!5 = !{!6, !7, i64 108}
!6 = !{!"stream_A85E_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 112}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !2, i64 0}
!11 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!13, !2, i64 8}
!13 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!11, !2, i64 8}
!15 = !{!13, !2, i64 16}
!16 = !{!3, !3, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !3, i64 0}
