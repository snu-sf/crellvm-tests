; ModuleID = './sstring.bc'
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
%struct.stream_AXE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32 }
%struct.stream_AXD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32 }
%struct.stream_PSSD_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32 }

@st_AXE_state = internal constant %struct.gs_memory_struct_type_s { i32 120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_AXE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_AXE_state, i32 (%struct.stream_state_s*)* @s_AXE_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_AXE_process, i32 1, i32 3, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@st_AXD_state = internal constant %struct.gs_memory_struct_type_s { i32 112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_AXD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_AXD_state, i32 (%struct.stream_state_s*)* @s_AXD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_AXD_process, i32 2, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_PSSE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_stream_state, i32 (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_PSSE_process, i32 1, i32 4, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@st_PSSD_state = internal constant %struct.gs_memory_struct_type_s { i32 120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_PSSD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_PSSD_state, i32 (%struct.stream_state_s*)* @s_PSSD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_PSSD_process, i32 4, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* null, i32 (%struct.stream_state_s*)* null }, align 8
@scan_char_array = external constant [260 x i8], align 16
@.str = private unnamed_addr constant [21 x i8] c"ASCIIHexEncode state\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ASCIIHexDecode state\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A\0D\09\08\0C\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nrtbf\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"PSStringDecode state\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_AXE_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_AXE_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_AXE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_AXE_state_s*
  store %struct.stream_AXE_state_s* %2, %struct.stream_AXE_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_AXE_state_s*, %struct.stream_AXE_state_s** %ss, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_AXE_state_s, %struct.stream_AXE_state_s* %3, i32 0, i32 5
  store i32 1, i32* %EndOfData, align 4, !tbaa !5
  %4 = load %struct.stream_AXE_state_s*, %struct.stream_AXE_state_s** %ss, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.stream_AXE_state_s, %struct.stream_AXE_state_s* %4, i32 0, i32 6
  store i32 0, i32* %count, align 4, !tbaa !8
  %5 = bitcast %struct.stream_AXE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_AXE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_AXE_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %count = alloca i32, align 4
  %pos = alloca i32, align 4
  %hex_digits = alloca i8*, align 8
  %status = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !9
  %0 = bitcast %struct.stream_AXE_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_AXE_state_s*
  store %struct.stream_AXE_state_s* %2, %struct.stream_AXE_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !10
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !12
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
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
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
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
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.stream_AXE_state_s*, %struct.stream_AXE_state_s** %ss, align 8, !tbaa !1
  %count7 = getelementptr inbounds %struct.stream_AXE_state_s, %struct.stream_AXE_state_s* %19, i32 0, i32 6
  %20 = load i32, i32* %count7, align 4, !tbaa !8
  store i32 %20, i32* %pos, align 4, !tbaa !9
  %21 = bitcast i8** %hex_digits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8** %hex_digits, align 8, !tbaa !1
  %22 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %status, align 4, !tbaa !9
  %23 = load i32, i32* %last.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %24 = load %struct.stream_AXE_state_s*, %struct.stream_AXE_state_s** %ss, align 8, !tbaa !1
  %EndOfData = getelementptr inbounds %struct.stream_AXE_state_s, %struct.stream_AXE_state_s* %24, i32 0, i32 5
  %25 = load i32, i32* %EndOfData, align 4, !tbaa !5
  %tobool8 = icmp ne i32 %25, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %26 = load i32, i32* %wcount, align 4, !tbaa !9
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %wcount, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %27 = load i32, i32* %wcount, align 4, !tbaa !9
  %28 = load i32, i32* %pos, align 4, !tbaa !9
  %mul = mul nsw i32 %28, 2
  %add = add nsw i32 %27, %mul
  %div = sdiv i32 %add, 65
  %29 = load i32, i32* %wcount, align 4, !tbaa !9
  %sub = sub nsw i32 %29, %div
  store i32 %sub, i32* %wcount, align 4, !tbaa !9
  %30 = load i32, i32* %wcount, align 4, !tbaa !9
  %shr = ashr i32 %30, 1
  store i32 %shr, i32* %wcount, align 4, !tbaa !9
  %31 = load i32, i32* %wcount, align 4, !tbaa !9
  %32 = load i32, i32* %rcount, align 4, !tbaa !9
  %cmp = icmp slt i32 %31, %32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  store i32 1, i32* %status, align 4, !tbaa !9
  %33 = load i32, i32* %wcount, align 4, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %34 = load i32, i32* %rcount, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  store i32 %cond, i32* %count, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %cond.end
  %35 = load i32, i32* %count, align 4, !tbaa !9
  %dec10 = add nsw i32 %35, -1
  store i32 %dec10, i32* %count, align 4, !tbaa !9
  %cmp11 = icmp sge i32 %dec10, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %37 = load i8, i8* %incdec.ptr, align 1, !tbaa !16
  %conv13 = zext i8 %37 to i32
  %shr14 = ashr i32 %conv13, 4
  %idxprom = sext i32 %shr14 to i64
  %38 = load i8*, i8** %hex_digits, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %idxprom
  %39 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %40 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr15, i8** %q, align 8, !tbaa !1
  store i8 %39, i8* %incdec.ptr15, align 1, !tbaa !16
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !16
  %conv16 = zext i8 %42 to i32
  %and = and i32 %conv16, 15
  %idxprom17 = sext i32 %and to i64
  %43 = load i8*, i8** %hex_digits, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8, i8* %43, i64 %idxprom17
  %44 = load i8, i8* %arrayidx18, align 1, !tbaa !16
  %45 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr19, i8** %q, align 8, !tbaa !1
  store i8 %44, i8* %incdec.ptr19, align 1, !tbaa !16
  %46 = load i32, i32* %pos, align 4, !tbaa !9
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %pos, align 4, !tbaa !9
  %and20 = and i32 %inc, 31
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end.28, label %land.lhs.true.22

land.lhs.true.22:                                 ; preds = %while.body
  %47 = load i32, i32* %count, align 4, !tbaa !9
  %cmp23 = icmp ne i32 %47, 0
  br i1 %cmp23, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.22
  %48 = load i32, i32* %last.addr, align 4, !tbaa !9
  %tobool25 = icmp ne i32 %48, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false, %land.lhs.true.22
  %49 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr27, i8** %q, align 8, !tbaa !1
  store i8 10, i8* %incdec.ptr27, align 1, !tbaa !16
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %lor.lhs.false, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %50 = load i32, i32* %last.addr, align 4, !tbaa !9
  %tobool29 = icmp ne i32 %50, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.38

land.lhs.true.30:                                 ; preds = %while.end
  %51 = load i32, i32* %status, align 4, !tbaa !9
  %cmp31 = icmp eq i32 %51, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.38

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %52 = load %struct.stream_AXE_state_s*, %struct.stream_AXE_state_s** %ss, align 8, !tbaa !1
  %EndOfData34 = getelementptr inbounds %struct.stream_AXE_state_s, %struct.stream_AXE_state_s* %52, i32 0, i32 5
  %53 = load i32, i32* %EndOfData34, align 4, !tbaa !5
  %tobool35 = icmp ne i32 %53, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %land.lhs.true.33
  %54 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr37, i8** %q, align 8, !tbaa !1
  store i8 62, i8* %incdec.ptr37, align 1, !tbaa !16
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %land.lhs.true.33, %land.lhs.true.30, %while.end
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %56 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %56, i32 0, i32 0
  store i8* %55, i8** %ptr39, align 8, !tbaa !10
  %57 = load i8*, i8** %q, align 8, !tbaa !1
  %58 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr40 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %58, i32 0, i32 1
  store i8* %57, i8** %ptr40, align 8, !tbaa !12
  %59 = load i32, i32* %pos, align 4, !tbaa !9
  %and41 = and i32 %59, 31
  %60 = load %struct.stream_AXE_state_s*, %struct.stream_AXE_state_s** %ss, align 8, !tbaa !1
  %count42 = getelementptr inbounds %struct.stream_AXE_state_s, %struct.stream_AXE_state_s* %60, i32 0, i32 6
  store i32 %and41, i32* %count42, align 4, !tbaa !8
  %61 = load i32, i32* %status, align 4, !tbaa !9
  %62 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i8** %hex_digits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.stream_AXE_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @s_AXD_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_AXD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_AXD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_AXD_state_s*
  store %struct.stream_AXD_state_s* %2, %struct.stream_AXD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_AXD_state_s*, %struct.stream_AXD_state_s** %ss, align 8, !tbaa !1
  %min_left = getelementptr inbounds %struct.stream_AXD_state_s, %struct.stream_AXD_state_s* %3, i32 0, i32 3
  store i32 1, i32* %min_left, align 4, !tbaa !17
  %4 = load %struct.stream_AXD_state_s*, %struct.stream_AXD_state_s** %ss, align 8, !tbaa !1
  %odd = getelementptr inbounds %struct.stream_AXD_state_s, %struct.stream_AXD_state_s* %4, i32 0, i32 5
  store i32 -1, i32* %odd, align 4, !tbaa !19
  %5 = bitcast %struct.stream_AXD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_AXD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_AXD_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !9
  %0 = bitcast %struct.stream_AXD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_AXD_state_s*
  store %struct.stream_AXD_state_s* %2, %struct.stream_AXD_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %5 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %6 = load %struct.stream_AXD_state_s*, %struct.stream_AXD_state_s** %ss, align 8, !tbaa !1
  %odd = getelementptr inbounds %struct.stream_AXD_state_s, %struct.stream_AXD_state_s* %6, i32 0, i32 5
  %call = call i32 @s_hex_process(%struct.stream_cursor_read_s* %4, %struct.stream_cursor_write_s* %5, i32* %odd, i32 1) #4
  store i32 %call, i32* %code, align 4, !tbaa !9
  %7 = load i32, i32* %code, align 4, !tbaa !9
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
    i32 -2, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct.stream_AXD_state_s*, %struct.stream_AXD_state_s** %ss, align 8, !tbaa !1
  %odd1 = getelementptr inbounds %struct.stream_AXD_state_s, %struct.stream_AXD_state_s* %8, i32 0, i32 5
  %9 = load i32, i32* %odd1, align 4, !tbaa !19
  %cmp = icmp sge i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %sw.bb
  %10 = load i32, i32* %last.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %11, i32 0, i32 1
  %12 = load i8*, i8** %ptr, align 8, !tbaa !12
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit, align 8, !tbaa !15
  %cmp2 = icmp eq i8* %12, %14
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct.stream_AXD_state_s*, %struct.stream_AXD_state_s** %ss, align 8, !tbaa !1
  %odd4 = getelementptr inbounds %struct.stream_AXD_state_s, %struct.stream_AXD_state_s* %15, i32 0, i32 5
  %16 = load i32, i32* %odd4, align 4, !tbaa !19
  %shl = shl i32 %16, 4
  %conv = trunc i32 %shl to i8
  %17 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr5 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %17, i32 0, i32 1
  %18 = load i8*, i8** %ptr5, align 8, !tbaa !12
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %ptr5, align 8, !tbaa !12
  store i8 %conv, i8* %incdec.ptr, align 1, !tbaa !16
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %land.lhs.true, %sw.bb
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %entry, %if.end.6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.7
  %19 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %19, i32 0, i32 0
  %20 = load i8*, i8** %ptr8, align 8, !tbaa !10
  %21 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit9 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %21, i32 0, i32 1
  %22 = load i8*, i8** %limit9, align 8, !tbaa !14
  %cmp10 = icmp ult i8* %20, %22
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %23, i32 0, i32 0
  %24 = load i8*, i8** %ptr12, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %idxprom = zext i8 %25 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* getelementptr inbounds ([260 x i8], [260 x i8]* @scan_char_array, i32 0, i64 4), i64 %idxprom
  %26 = load i8, i8* %arrayidx13, align 1, !tbaa !16
  %conv14 = zext i8 %26 to i32
  %cmp15 = icmp ne i32 %conv14, 102
  br i1 %cmp15, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %for.body
  %27 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %27, i32 0, i32 0
  %28 = load i8*, i8** %ptr18, align 8, !tbaa !10
  %arrayidx19 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx19, align 1, !tbaa !16
  %conv20 = zext i8 %29 to i32
  %cmp21 = icmp eq i32 %conv20, 62
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.then.17
  %30 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr24 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %30, i32 0, i32 0
  %31 = load i8*, i8** %ptr24, align 8, !tbaa !10
  %incdec.ptr25 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr25, i8** %ptr24, align 8, !tbaa !10
  br label %eod

if.end.26:                                        ; preds = %if.then.17
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %32 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr28 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %32, i32 0, i32 0
  %33 = load i8*, i8** %ptr28, align 8, !tbaa !10
  %incdec.ptr29 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr29, i8** %ptr28, align 8, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %34 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.30:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.30
  %35 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr31 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %35, i32 0, i32 0
  %36 = load i8*, i8** %ptr31, align 8, !tbaa !10
  %37 = load i8, i8* %36, align 1, !tbaa !16
  %conv32 = zext i8 %37 to i32
  %cmp33 = icmp ne i32 %conv32, 62
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %sw.epilog
  %38 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr36 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %38, i32 0, i32 0
  %39 = load i8*, i8** %ptr36, align 8, !tbaa !10
  %incdec.ptr37 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %incdec.ptr37, i8** %ptr36, align 8, !tbaa !10
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %sw.epilog
  br label %eod

eod:                                              ; preds = %if.end.38, %if.then.23
  %40 = load %struct.stream_AXD_state_s*, %struct.stream_AXD_state_s** %ss, align 8, !tbaa !1
  %odd39 = getelementptr inbounds %struct.stream_AXD_state_s, %struct.stream_AXD_state_s* %40, i32 0, i32 5
  %41 = load i32, i32* %odd39, align 4, !tbaa !19
  %cmp40 = icmp sge i32 %41, 0
  br i1 %cmp40, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %eod
  %42 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr43 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %42, i32 0, i32 1
  %43 = load i8*, i8** %ptr43, align 8, !tbaa !12
  %44 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit44 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %44, i32 0, i32 2
  %45 = load i8*, i8** %limit44, align 8, !tbaa !15
  %cmp45 = icmp eq i8* %43, %45
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.42
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.then.42
  %46 = load %struct.stream_AXD_state_s*, %struct.stream_AXD_state_s** %ss, align 8, !tbaa !1
  %odd49 = getelementptr inbounds %struct.stream_AXD_state_s, %struct.stream_AXD_state_s* %46, i32 0, i32 5
  %47 = load i32, i32* %odd49, align 4, !tbaa !19
  %shl50 = shl i32 %47, 4
  %conv51 = trunc i32 %shl50 to i8
  %48 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr52 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %48, i32 0, i32 1
  %49 = load i8*, i8** %ptr52, align 8, !tbaa !12
  %incdec.ptr53 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr53, i8** %ptr52, align 8, !tbaa !12
  store i8 %conv51, i8* %incdec.ptr53, align 1, !tbaa !16
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.48, %eod
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.47, %if.then.35, %sw.default, %for.end, %if.end.26, %if.then.3
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.stream_AXD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @s_PSSE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %status = alloca i32, align 4
  %c = alloca i32, align 4
  %pesc = alloca i8*, align 8
  %esc = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !9
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !10
  store i8* %2, i8** %p, align 8, !tbaa !1
  %3 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %limit, align 8, !tbaa !14
  store i8* %5, i8** %rlimit, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !12
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %limit2, align 8, !tbaa !15
  store i8* %11, i8** %wlimit, align 8, !tbaa !1
  %12 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %status, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup.73, %entry
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %14 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp = icmp ult i8* %13, %14
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %17 = load i8, i8* %incdec.ptr, align 1, !tbaa !16
  %conv = zext i8 %17 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !9
  %18 = load i32, i32* %c, align 4, !tbaa !9
  %cmp3 = icmp slt i32 %18, 32
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %19 = load i32, i32* %c, align 4, !tbaa !9
  %cmp5 = icmp sge i32 %19, 127
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %20 = bitcast i8** %pesc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i8** %esc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %esc, align 8, !tbaa !1
  %22 = load i32, i32* %c, align 4, !tbaa !9
  %cmp7 = icmp slt i32 %22, 32
  br i1 %cmp7, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.then
  %23 = load i32, i32* %c, align 4, !tbaa !9
  %cmp9 = icmp ne i32 %23, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.24

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %24 = load i8*, i8** %esc, align 8, !tbaa !1
  %25 = load i32, i32* %c, align 4, !tbaa !9
  %call = call i8* @strchr(i8* %24, i32 %25) #5
  store i8* %call, i8** %pesc, align 8, !tbaa !1
  %cmp12 = icmp ne i8* %call, null
  br i1 %cmp12, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %land.lhs.true.11
  %26 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %27 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp15 = icmp slt i64 %sub.ptr.sub, 2
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.14
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %incdec.ptr18, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.14
  %29 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr19, i8** %q, align 8, !tbaa !1
  store i8 92, i8* %incdec.ptr19, align 1, !tbaa !16
  %30 = load i8*, i8** %pesc, align 8, !tbaa !1
  %31 = load i8*, i8** %esc, align 8, !tbaa !1
  %sub.ptr.lhs.cast20 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %31 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* @.str.4, i32 0, i64 %sub.ptr.sub22
  %32 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %33 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr23, i8** %q, align 8, !tbaa !1
  store i8 %32, i8* %incdec.ptr23, align 1, !tbaa !16
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.then
  %34 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %35 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast25 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast26 = ptrtoint i8* %35 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %cmp28 = icmp slt i64 %sub.ptr.sub27, 4
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.24
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %incdec.ptr31, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.24
  %37 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 92, i8* %arrayidx33, align 1, !tbaa !16
  %38 = load i32, i32* %c, align 4, !tbaa !9
  %shr = ashr i32 %38, 6
  %add = add nsw i32 %shr, 48
  %conv34 = trunc i32 %add to i8
  %39 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %conv34, i8* %arrayidx35, align 1, !tbaa !16
  %40 = load i32, i32* %c, align 4, !tbaa !9
  %shr36 = ashr i32 %40, 3
  %and = and i32 %shr36, 7
  %add37 = add nsw i32 %and, 48
  %conv38 = trunc i32 %add37 to i8
  %41 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %41, i64 3
  store i8 %conv38, i8* %arrayidx39, align 1, !tbaa !16
  %42 = load i32, i32* %c, align 4, !tbaa !9
  %and40 = and i32 %42, 7
  %add41 = add nsw i32 %and40, 48
  %conv42 = trunc i32 %add41 to i8
  %43 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %43, i64 4
  store i8 %conv42, i8* %arrayidx43, align 1, !tbaa !16
  %44 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %add.ptr, i8** %q, align 8, !tbaa !1
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.30, %if.end, %if.then.17
  %45 = bitcast i8** %esc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i8** %pesc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  br label %cleanup.73

if.else:                                          ; preds = %lor.lhs.false
  %47 = load i32, i32* %c, align 4, !tbaa !9
  %cmp45 = icmp eq i32 %47, 40
  br i1 %cmp45, label %if.then.53, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.else
  %48 = load i32, i32* %c, align 4, !tbaa !9
  %cmp48 = icmp eq i32 %48, 41
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.47
  %49 = load i32, i32* %c, align 4, !tbaa !9
  %cmp51 = icmp eq i32 %49, 92
  br i1 %cmp51, label %if.then.53, label %if.else.63

if.then.53:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.47, %if.else
  %50 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %51 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast54 = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast55 = ptrtoint i8* %51 to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %cmp57 = icmp slt i64 %sub.ptr.sub56, 2
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.then.53
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %incdec.ptr60, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.61:                                        ; preds = %if.then.53
  %53 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr62 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr62, i8** %q, align 8, !tbaa !1
  store i8 92, i8* %incdec.ptr62, align 1, !tbaa !16
  br label %if.end.69

if.else.63:                                       ; preds = %lor.lhs.false.50
  %54 = load i8*, i8** %q, align 8, !tbaa !1
  %55 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp64 = icmp eq i8* %54, %55
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.else.63
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %incdec.ptr67, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.73

if.end.68:                                        ; preds = %if.else.63
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.61
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69
  %57 = load i32, i32* %c, align 4, !tbaa !9
  %conv71 = trunc i32 %57 to i8
  %58 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr72, i8** %q, align 8, !tbaa !1
  store i8 %conv71, i8* %incdec.ptr72, align 1, !tbaa !16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.73

cleanup.73:                                       ; preds = %if.end.70, %if.then.66, %if.then.59, %cleanup
  %59 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup.73
  br label %while.cond

while.end:                                        ; preds = %cleanup.73, %while.cond
  %60 = load i32, i32* %last.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %land.lhs.true.74, label %if.end.84

land.lhs.true.74:                                 ; preds = %while.end
  %61 = load i32, i32* %status, align 4, !tbaa !9
  %cmp75 = icmp eq i32 %61, 0
  br i1 %cmp75, label %if.then.77, label %if.end.84

if.then.77:                                       ; preds = %land.lhs.true.74
  %62 = load i8*, i8** %q, align 8, !tbaa !1
  %63 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp78 = icmp eq i8* %62, %63
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.then.77
  store i32 1, i32* %status, align 4, !tbaa !9
  br label %if.end.83

if.else.81:                                       ; preds = %if.then.77
  %64 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr82 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr82, i8** %q, align 8, !tbaa !1
  store i8 41, i8* %incdec.ptr82, align 1, !tbaa !16
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.80
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true.74, %while.end
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %66 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr85 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %66, i32 0, i32 0
  store i8* %65, i8** %ptr85, align 8, !tbaa !10
  %67 = load i8*, i8** %q, align 8, !tbaa !1
  %68 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr86 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %68, i32 0, i32 1
  store i8* %67, i8** %ptr86, align 8, !tbaa !12
  %69 = load i32, i32* %status, align 4, !tbaa !9
  store i32 1, i32* %cleanup.dest.slot
  %70 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  ret i32 %69

unreachable:                                      ; preds = %cleanup.73
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @s_PSSD_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_PSSD_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PSSD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PSSD_state_s*
  store %struct.stream_PSSD_state_s* %2, %struct.stream_PSSD_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_PSSD_state_s*, %struct.stream_PSSD_state_s** %ss, align 8, !tbaa !1
  %from_string = getelementptr inbounds %struct.stream_PSSD_state_s, %struct.stream_PSSD_state_s* %3, i32 0, i32 5
  store i32 0, i32* %from_string, align 4, !tbaa !20
  %4 = load %struct.stream_PSSD_state_s*, %struct.stream_PSSD_state_s** %ss, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_PSSD_state_s, %struct.stream_PSSD_state_s* %4, i32 0, i32 6
  store i32 0, i32* %depth, align 4, !tbaa !22
  %5 = bitcast %struct.stream_PSSD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_PSSD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_PSSD_state_s*, align 8
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %status = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !9
  %0 = bitcast %struct.stream_PSSD_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PSSD_state_s*
  store %struct.stream_PSSD_state_s* %2, %struct.stream_PSSD_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !10
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %limit, align 8, !tbaa !14
  store i8* %8, i8** %rlimit, align 8, !tbaa !1
  %9 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %ptr1, align 8, !tbaa !12
  store i8* %11, i8** %q, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !15
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %status, align 4, !tbaa !9
  %16 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  br label %while.cond

while.cond:                                       ; preds = %if.end.128, %if.end.119, %cleanup, %sw.bb.33, %if.end.32, %if.end.18, %entry
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp = icmp ult i8* %17, %18
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %20 = load i8, i8* %incdec.ptr, align 1, !tbaa !16
  %conv = zext i8 %20 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !9
  %21 = load i32, i32* %c, align 4, !tbaa !9
  %cmp3 = icmp eq i32 %21, 92
  br i1 %cmp3, label %land.lhs.true, label %if.else.83

land.lhs.true:                                    ; preds = %while.body
  %22 = load %struct.stream_PSSD_state_s*, %struct.stream_PSSD_state_s** %ss, align 8, !tbaa !1
  %from_string = getelementptr inbounds %struct.stream_PSSD_state_s, %struct.stream_PSSD_state_s* %22, i32 0, i32 5
  %23 = load i32, i32* %from_string, align 4, !tbaa !20
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.else.83, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %25 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %24, %25
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 -1
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %out

if.end:                                           ; preds = %if.then
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8, !tbaa !1
  %28 = load i8, i8* %incdec.ptr8, align 1, !tbaa !16
  %conv9 = zext i8 %28 to i32
  store i32 %conv9, i32* %c, align 4, !tbaa !9
  switch i32 %conv9, label %sw.default [
    i32 110, label %sw.bb
    i32 114, label %sw.bb.10
    i32 116, label %sw.bb.11
    i32 98, label %sw.bb.12
    i32 102, label %sw.bb.13
    i32 13, label %sw.bb.21
    i32 10, label %sw.bb.33
    i32 48, label %sw.bb.34
    i32 49, label %sw.bb.34
    i32 50, label %sw.bb.34
    i32 51, label %sw.bb.34
    i32 52, label %sw.bb.34
    i32 53, label %sw.bb.34
    i32 54, label %sw.bb.34
    i32 55, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end
  store i32 10, i32* %c, align 4, !tbaa !9
  br label %put

sw.bb.10:                                         ; preds = %if.end
  store i32 13, i32* %c, align 4, !tbaa !9
  br label %put

sw.bb.11:                                         ; preds = %if.end
  store i32 9, i32* %c, align 4, !tbaa !9
  br label %put

sw.bb.12:                                         ; preds = %if.end
  store i32 8, i32* %c, align 4, !tbaa !9
  br label %put

sw.bb.13:                                         ; preds = %if.end
  store i32 12, i32* %c, align 4, !tbaa !9
  br label %put

sw.default:                                       ; preds = %if.end
  br label %put

put:                                              ; preds = %sw.default, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb
  %29 = load i8*, i8** %q, align 8, !tbaa !1
  %30 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp14 = icmp eq i8* %29, %30
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %put
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds i8, i8* %31, i64 -2
  store i8* %add.ptr17, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  br label %out

if.end.18:                                        ; preds = %put
  %32 = load i32, i32* %c, align 4, !tbaa !9
  %conv19 = trunc i32 %32 to i8
  %33 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr20, i8** %q, align 8, !tbaa !1
  store i8 %conv19, i8* %incdec.ptr20, align 1, !tbaa !16
  br label %while.cond

sw.bb.21:                                         ; preds = %if.end
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp22 = icmp eq i8* %34, %35
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %sw.bb.21
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds i8, i8* %36, i64 -2
  store i8* %add.ptr25, i8** %p, align 8, !tbaa !1
  br label %out

if.end.26:                                        ; preds = %sw.bb.21
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv27 = zext i8 %38 to i32
  %cmp28 = icmp eq i32 %conv27, 10
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.26
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr31, i8** %p, align 8, !tbaa !1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.26
  br label %while.cond

sw.bb.33:                                         ; preds = %if.end
  br label %while.cond

sw.bb.34:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %40 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %42 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp35 = icmp eq i8* %41, %42
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %sw.bb.34
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds i8, i8* %43, i64 -2
  store i8* %add.ptr38, i8** %p, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %sw.bb.34
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx40, align 1, !tbaa !16
  %conv41 = zext i8 %45 to i32
  store i32 %conv41, i32* %d, align 4, !tbaa !9
  %46 = load i32, i32* %c, align 4, !tbaa !9
  %sub = sub nsw i32 %46, 48
  store i32 %sub, i32* %c, align 4, !tbaa !9
  %47 = load i32, i32* %d, align 4, !tbaa !9
  %cmp42 = icmp sge i32 %47, 48
  br i1 %cmp42, label %land.lhs.true.44, label %if.else.74

land.lhs.true.44:                                 ; preds = %if.end.39
  %48 = load i32, i32* %d, align 4, !tbaa !9
  %cmp45 = icmp sle i32 %48, 55
  br i1 %cmp45, label %if.then.47, label %if.else.74

if.then.47:                                       ; preds = %land.lhs.true.44
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp49 = icmp eq i8* %add.ptr48, %50
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.then.47
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr52 = getelementptr inbounds i8, i8* %51, i64 -2
  store i8* %add.ptr52, i8** %p, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.47
  %52 = load i8*, i8** %q, align 8, !tbaa !1
  %53 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp54 = icmp eq i8* %52, %53
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.53
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr57 = getelementptr inbounds i8, i8* %54, i64 -2
  store i8* %add.ptr57, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.53
  %55 = load i32, i32* %c, align 4, !tbaa !9
  %shl = shl i32 %55, 3
  %56 = load i32, i32* %d, align 4, !tbaa !9
  %add = add nsw i32 %shl, %56
  %sub59 = sub nsw i32 %add, 48
  store i32 %sub59, i32* %c, align 4, !tbaa !9
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx60, align 1, !tbaa !16
  %conv61 = zext i8 %58 to i32
  store i32 %conv61, i32* %d, align 4, !tbaa !9
  %59 = load i32, i32* %d, align 4, !tbaa !9
  %cmp62 = icmp sge i32 %59, 48
  br i1 %cmp62, label %land.lhs.true.64, label %if.else

land.lhs.true.64:                                 ; preds = %if.end.58
  %60 = load i32, i32* %d, align 4, !tbaa !9
  %cmp65 = icmp sle i32 %60, 55
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %land.lhs.true.64
  %61 = load i32, i32* %c, align 4, !tbaa !9
  %shl68 = shl i32 %61, 3
  %62 = load i32, i32* %d, align 4, !tbaa !9
  %add69 = add nsw i32 %shl68, %62
  %sub70 = sub nsw i32 %add69, 48
  store i32 %sub70, i32* %c, align 4, !tbaa !9
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %add.ptr71, i8** %p, align 8, !tbaa !1
  br label %if.end.73

if.else:                                          ; preds = %land.lhs.true.64, %if.end.58
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr72, i8** %p, align 8, !tbaa !1
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.then.67
  br label %if.end.80

if.else.74:                                       ; preds = %land.lhs.true.44, %if.end.39
  %65 = load i8*, i8** %q, align 8, !tbaa !1
  %66 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp75 = icmp eq i8* %65, %66
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.else.74
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr78 = getelementptr inbounds i8, i8* %67, i64 -2
  store i8* %add.ptr78, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %if.else.74
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.73
  %68 = load i32, i32* %c, align 4, !tbaa !9
  %conv81 = trunc i32 %68 to i8
  %69 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr82 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr82, i8** %q, align 8, !tbaa !1
  store i8 %conv81, i8* %incdec.ptr82, align 1, !tbaa !16
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.77, %if.then.56, %if.then.51, %if.then.37, %if.end.80
  %70 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.142 [
    i32 2, label %while.cond
    i32 4, label %out
  ]

if.else.83:                                       ; preds = %land.lhs.true, %while.body
  %71 = load i32, i32* %c, align 4, !tbaa !9
  switch i32 %71, label %sw.default.122 [
    i32 40, label %sw.bb.84
    i32 41, label %sw.bb.90
    i32 13, label %sw.bb.102
    i32 10, label %sw.bb.121
  ]

sw.bb.84:                                         ; preds = %if.else.83
  %72 = load i8*, i8** %q, align 8, !tbaa !1
  %73 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp85 = icmp eq i8* %72, %73
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %sw.bb.84
  %74 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr88 = getelementptr inbounds i8, i8* %74, i64 -1
  store i8* %add.ptr88, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  br label %out

if.end.89:                                        ; preds = %sw.bb.84
  %75 = load %struct.stream_PSSD_state_s*, %struct.stream_PSSD_state_s** %ss, align 8, !tbaa !1
  %depth = getelementptr inbounds %struct.stream_PSSD_state_s, %struct.stream_PSSD_state_s* %75, i32 0, i32 6
  %76 = load i32, i32* %depth, align 4, !tbaa !22
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %depth, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.90:                                         ; preds = %if.else.83
  %77 = load %struct.stream_PSSD_state_s*, %struct.stream_PSSD_state_s** %ss, align 8, !tbaa !1
  %depth91 = getelementptr inbounds %struct.stream_PSSD_state_s, %struct.stream_PSSD_state_s* %77, i32 0, i32 6
  %78 = load i32, i32* %depth91, align 4, !tbaa !22
  %cmp92 = icmp eq i32 %78, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %sw.bb.90
  store i32 -1, i32* %status, align 4, !tbaa !9
  br label %out

if.end.95:                                        ; preds = %sw.bb.90
  %79 = load i8*, i8** %q, align 8, !tbaa !1
  %80 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp96 = icmp eq i8* %79, %80
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.end.95
  %81 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr99 = getelementptr inbounds i8, i8* %81, i64 -1
  store i8* %add.ptr99, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  br label %out

if.end.100:                                       ; preds = %if.end.95
  %82 = load %struct.stream_PSSD_state_s*, %struct.stream_PSSD_state_s** %ss, align 8, !tbaa !1
  %depth101 = getelementptr inbounds %struct.stream_PSSD_state_s, %struct.stream_PSSD_state_s* %82, i32 0, i32 6
  %83 = load i32, i32* %depth101, align 4, !tbaa !22
  %dec = add nsw i32 %83, -1
  store i32 %dec, i32* %depth101, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.else.83
  %84 = load i8*, i8** %p, align 8, !tbaa !1
  %85 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp103 = icmp eq i8* %84, %85
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %sw.bb.102
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds i8, i8* %86, i64 -1
  store i8* %add.ptr106, i8** %p, align 8, !tbaa !1
  br label %out

if.end.107:                                       ; preds = %sw.bb.102
  %87 = load i8*, i8** %q, align 8, !tbaa !1
  %88 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp108 = icmp eq i8* %87, %88
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.107
  %89 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr111 = getelementptr inbounds i8, i8* %89, i64 -1
  store i8* %add.ptr111, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  br label %out

if.end.112:                                       ; preds = %if.end.107
  %90 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8, i8* %90, i64 1
  %91 = load i8, i8* %arrayidx113, align 1, !tbaa !16
  %conv114 = zext i8 %91 to i32
  %cmp115 = icmp eq i32 %conv114, 10
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.112
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr118, i8** %p, align 8, !tbaa !1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.112
  %93 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr120 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr120, i8** %q, align 8, !tbaa !1
  store i8 10, i8* %incdec.ptr120, align 1, !tbaa !16
  br label %while.cond

sw.bb.121:                                        ; preds = %if.else.83
  store i32 10, i32* %c, align 4, !tbaa !9
  br label %sw.default.122

sw.default.122:                                   ; preds = %if.else.83, %sw.bb.121
  %94 = load i8*, i8** %q, align 8, !tbaa !1
  %95 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp123 = icmp eq i8* %94, %95
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %sw.default.122
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr126 = getelementptr inbounds i8, i8* %96, i64 -1
  store i8* %add.ptr126, i8** %p, align 8, !tbaa !1
  store i32 1, i32* %status, align 4, !tbaa !9
  br label %out

if.end.127:                                       ; preds = %sw.default.122
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.127, %if.end.100, %if.end.89
  br label %if.end.128

if.end.128:                                       ; preds = %sw.epilog
  %97 = load i32, i32* %c, align 4, !tbaa !9
  %conv129 = trunc i32 %97 to i8
  %98 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr130 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr130, i8** %q, align 8, !tbaa !1
  store i8 %conv129, i8* %incdec.ptr130, align 1, !tbaa !16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %out

out:                                              ; preds = %while.end, %cleanup, %if.then.125, %if.then.110, %if.then.105, %if.then.98, %if.then.94, %if.then.87, %if.then.24, %if.then.16, %if.then.7
  %99 = load i8*, i8** %p, align 8, !tbaa !1
  %100 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr131 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %100, i32 0, i32 0
  store i8* %99, i8** %ptr131, align 8, !tbaa !10
  %101 = load i8*, i8** %q, align 8, !tbaa !1
  %102 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr132 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %102, i32 0, i32 1
  store i8* %101, i8** %ptr132, align 8, !tbaa !12
  %103 = load i32, i32* %last.addr, align 4, !tbaa !9
  %tobool133 = icmp ne i32 %103, 0
  br i1 %tobool133, label %land.lhs.true.134, label %if.end.141

land.lhs.true.134:                                ; preds = %out
  %104 = load i32, i32* %status, align 4, !tbaa !9
  %cmp135 = icmp eq i32 %104, 0
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.141

land.lhs.true.137:                                ; preds = %land.lhs.true.134
  %105 = load i8*, i8** %p, align 8, !tbaa !1
  %106 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp138 = icmp ne i8* %105, %106
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %land.lhs.true.137
  store i32 -2, i32* %status, align 4, !tbaa !9
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %land.lhs.true.137, %land.lhs.true.134, %out
  %107 = load i32, i32* %status, align 4, !tbaa !9
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.142

cleanup.142:                                      ; preds = %if.end.141, %cleanup
  %108 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast %struct.stream_PSSD_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define i32 @s_hex_process(%struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32* %odd_digit, i32 %syntax) #0 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %odd_digit.addr = alloca i32*, align 8
  %syntax.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %q0 = alloca i8*, align 8
  %val1 = alloca i8, align 1
  %val2 = alloca i8, align 1
  %rcount = alloca i32, align 4
  %flimit = alloca i8*, align 8
  %decoder = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32* %odd_digit, i32** %odd_digit.addr, align 8, !tbaa !1
  store i32 %syntax, i32* %syntax.addr, align 4, !tbaa !16
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !10
  store i8* %2, i8** %p, align 8, !tbaa !1
  %3 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %limit, align 8, !tbaa !14
  store i8* %5, i8** %rlimit, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !12
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %limit2, align 8, !tbaa !15
  store i8* %11, i8** %wlimit, align 8, !tbaa !1
  %12 = bitcast i8** %q0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %q, align 8, !tbaa !1
  store i8* %13, i8** %q0, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %val1) #1
  %14 = load i32*, i32** %odd_digit.addr, align 8, !tbaa !1
  %15 = load i32, i32* %14, align 4, !tbaa !9
  %conv = trunc i32 %15 to i8
  store i8 %conv, i8* %val1, align 1, !tbaa !16
  call void @llvm.lifetime.start(i64 1, i8* %val2) #1
  %16 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i8** %flimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i8** %decoder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i8* getelementptr inbounds ([260 x i8], [260 x i8]* @scan_char_array, i32 0, i64 4), i8** %decoder, align 8, !tbaa !1
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %code, align 4, !tbaa !9
  %20 = load i8*, i8** %q, align 8, !tbaa !1
  %21 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp = icmp uge i8* %20, %21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = load i8, i8* %val1, align 1, !tbaa !16
  %conv4 = zext i8 %22 to i32
  %cmp5 = icmp sle i32 %conv4, 15
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %d2

if.end.8:                                         ; preds = %if.end
  br label %d1

d1:                                               ; preds = %if.then.116, %if.end.8
  %23 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shr = ashr i64 %sub.ptr.sub, 1
  %conv9 = trunc i64 %shr to i32
  store i32 %conv9, i32* %rcount, align 4, !tbaa !9
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %d1
  br label %x1

if.end.13:                                        ; preds = %d1
  %25 = load i32, i32* %rcount, align 4, !tbaa !9
  %conv14 = zext i32 %25 to i64
  %26 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %27 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast15 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %27 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %cmp18 = icmp slt i64 %conv14, %sub.ptr.sub17
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  %28 = load i8*, i8** %q, align 8, !tbaa !1
  %29 = load i32, i32* %rcount, align 4, !tbaa !9
  %idx.ext = zext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %30 = load i8*, i8** %wlimit, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %30, %cond.false ]
  store i8* %cond, i8** %flimit, align 8, !tbaa !1
  br label %f1

f1:                                               ; preds = %if.then.37, %cond.end
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %idxprom = zext i8 %32 to i64
  %33 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %33, i64 %idxprom
  %34 = load i8, i8* %arrayidx20, align 1, !tbaa !16
  store i8 %34, i8* %val1, align 1, !tbaa !16
  %conv21 = zext i8 %34 to i32
  %cmp22 = icmp sle i32 %conv21, 15
  br i1 %cmp22, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %f1
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %35, i64 2
  %36 = load i8, i8* %arrayidx24, align 1, !tbaa !16
  %idxprom25 = zext i8 %36 to i64
  %37 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %37, i64 %idxprom25
  %38 = load i8, i8* %arrayidx26, align 1, !tbaa !16
  store i8 %38, i8* %val2, align 1, !tbaa !16
  %conv27 = zext i8 %38 to i32
  %cmp28 = icmp sle i32 %conv27, 15
  br i1 %cmp28, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %land.lhs.true
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds i8, i8* %39, i64 2
  store i8* %add.ptr31, i8** %p, align 8, !tbaa !1
  %40 = load i8, i8* %val1, align 1, !tbaa !16
  %conv32 = zext i8 %40 to i32
  %shl = shl i32 %conv32, 4
  %41 = load i8, i8* %val2, align 1, !tbaa !16
  %conv33 = zext i8 %41 to i32
  %add = add nsw i32 %shl, %conv33
  %conv34 = trunc i32 %add to i8
  %42 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 %conv34, i8* %incdec.ptr, align 1, !tbaa !16
  %43 = load i8*, i8** %q, align 8, !tbaa !1
  %44 = load i8*, i8** %flimit, align 8, !tbaa !1
  %cmp35 = icmp ult i8* %43, %44
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.30
  br label %f1

if.end.38:                                        ; preds = %if.then.30
  %45 = load i8*, i8** %q, align 8, !tbaa !1
  %46 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp39 = icmp uge i8* %45, %46
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  br label %px

if.end.42:                                        ; preds = %if.end.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true, %f1
  br label %x1

x1:                                               ; preds = %if.then.71, %if.then.65, %sw.bb, %if.end.43, %if.then.12
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %48 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp44 = icmp uge i8* %47, %48
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %x1
  br label %end1

if.end.47:                                        ; preds = %x1
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr48, i8** %p, align 8, !tbaa !1
  %50 = load i8, i8* %incdec.ptr48, align 1, !tbaa !16
  %idxprom49 = zext i8 %50 to i64
  %51 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %51, i64 %idxprom49
  %52 = load i8, i8* %arrayidx50, align 1, !tbaa !16
  store i8 %52, i8* %val1, align 1, !tbaa !16
  %conv51 = zext i8 %52 to i32
  %cmp52 = icmp sgt i32 %conv51, 15
  br i1 %cmp52, label %if.then.54, label %if.end.74

if.then.54:                                       ; preds = %if.end.47
  %53 = load i8, i8* %val1, align 1, !tbaa !16
  %conv55 = zext i8 %53 to i32
  %cmp56 = icmp eq i32 %conv55, 102
  br i1 %cmp56, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.then.54
  %54 = load i32, i32* %syntax.addr, align 4, !tbaa !16
  switch i32 %54, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.59
    i32 3, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %if.then.58, %if.then.58
  br label %x1

sw.bb.59:                                         ; preds = %if.then.58
  %55 = load i8*, i8** %q, align 8, !tbaa !1
  %56 = load i8*, i8** %q0, align 8, !tbaa !1
  %cmp60 = icmp eq i8* %55, %56
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.66

land.lhs.true.62:                                 ; preds = %sw.bb.59
  %57 = load i32*, i32** %odd_digit.addr, align 8, !tbaa !1
  %58 = load i32, i32* %57, align 4, !tbaa !9
  %cmp63 = icmp slt i32 %58, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true.62
  br label %x1

if.end.66:                                        ; preds = %land.lhs.true.62, %sw.bb.59
  br label %sw.bb.67

sw.bb.67:                                         ; preds = %if.then.58, %if.end.66
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr68 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %incdec.ptr68, i8** %p, align 8, !tbaa !1
  store i32 2, i32* %code, align 4, !tbaa !9
  br label %end1

sw.epilog:                                        ; preds = %if.then.58
  br label %if.end.73

if.else:                                          ; preds = %if.then.54
  %60 = load i32, i32* %syntax.addr, align 4, !tbaa !16
  %cmp69 = icmp eq i32 %60, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.else
  br label %x1

if.end.72:                                        ; preds = %if.else
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %sw.epilog
  store i32 -2, i32* %code, align 4, !tbaa !9
  br label %end1

if.end.74:                                        ; preds = %if.end.47
  br label %d2

d2:                                               ; preds = %if.then.104, %if.then.95, %sw.bb.91, %if.end.74, %if.then.7
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %62 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp75 = icmp uge i8* %61, %62
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %d2
  %63 = load i8, i8* %val1, align 1, !tbaa !16
  %conv78 = zext i8 %63 to i32
  %64 = load i32*, i32** %odd_digit.addr, align 8, !tbaa !1
  store i32 %conv78, i32* %64, align 4, !tbaa !9
  br label %ended

if.end.79:                                        ; preds = %d2
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr80 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr80, i8** %p, align 8, !tbaa !1
  %66 = load i8, i8* %incdec.ptr80, align 1, !tbaa !16
  %idxprom81 = zext i8 %66 to i64
  %67 = load i8*, i8** %decoder, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %67, i64 %idxprom81
  %68 = load i8, i8* %arrayidx82, align 1, !tbaa !16
  store i8 %68, i8* %val2, align 1, !tbaa !16
  %conv83 = zext i8 %68 to i32
  %cmp84 = icmp sgt i32 %conv83, 15
  br i1 %cmp84, label %if.then.86, label %if.end.107

if.then.86:                                       ; preds = %if.end.79
  %69 = load i8, i8* %val2, align 1, !tbaa !16
  %conv87 = zext i8 %69 to i32
  %cmp88 = icmp eq i32 %conv87, 102
  br i1 %cmp88, label %if.then.90, label %if.end.101

if.then.90:                                       ; preds = %if.then.86
  %70 = load i32, i32* %syntax.addr, align 4, !tbaa !16
  switch i32 %70, label %sw.epilog.100 [
    i32 0, label %sw.bb.91
    i32 1, label %sw.bb.91
    i32 2, label %sw.bb.92
    i32 3, label %sw.bb.97
  ]

sw.bb.91:                                         ; preds = %if.then.90, %if.then.90
  br label %d2

sw.bb.92:                                         ; preds = %if.then.90
  %71 = load i8*, i8** %q, align 8, !tbaa !1
  %72 = load i8*, i8** %q0, align 8, !tbaa !1
  %cmp93 = icmp eq i8* %71, %72
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %sw.bb.92
  br label %d2

if.end.96:                                        ; preds = %sw.bb.92
  br label %sw.bb.97

sw.bb.97:                                         ; preds = %if.then.90, %if.end.96
  %73 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %incdec.ptr98, i8** %p, align 8, !tbaa !1
  %74 = load i8, i8* %val1, align 1, !tbaa !16
  %conv99 = zext i8 %74 to i32
  %75 = load i32*, i32** %odd_digit.addr, align 8, !tbaa !1
  store i32 %conv99, i32* %75, align 4, !tbaa !9
  store i32 2, i32* %code, align 4, !tbaa !9
  br label %ended

sw.epilog.100:                                    ; preds = %if.then.90
  br label %if.end.101

if.end.101:                                       ; preds = %sw.epilog.100, %if.then.86
  %76 = load i32, i32* %syntax.addr, align 4, !tbaa !16
  %cmp102 = icmp eq i32 %76, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  br label %d2

if.end.105:                                       ; preds = %if.end.101
  %77 = load i8, i8* %val1, align 1, !tbaa !16
  %conv106 = zext i8 %77 to i32
  %78 = load i32*, i32** %odd_digit.addr, align 8, !tbaa !1
  store i32 %conv106, i32* %78, align 4, !tbaa !9
  store i32 -2, i32* %code, align 4, !tbaa !9
  br label %ended

if.end.107:                                       ; preds = %if.end.79
  %79 = load i8, i8* %val1, align 1, !tbaa !16
  %conv108 = zext i8 %79 to i32
  %shl109 = shl i32 %conv108, 4
  %80 = load i8, i8* %val2, align 1, !tbaa !16
  %conv110 = zext i8 %80 to i32
  %add111 = add nsw i32 %shl109, %conv110
  %conv112 = trunc i32 %add111 to i8
  %81 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr113 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr113, i8** %q, align 8, !tbaa !1
  store i8 %conv112, i8* %incdec.ptr113, align 1, !tbaa !16
  %82 = load i8*, i8** %q, align 8, !tbaa !1
  %83 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %cmp114 = icmp ult i8* %82, %83
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end.107
  br label %d1

if.end.117:                                       ; preds = %if.end.107
  br label %px

px:                                               ; preds = %if.end.117, %if.then.41
  store i32 1, i32* %code, align 4, !tbaa !9
  br label %end1

end1:                                             ; preds = %px, %if.end.73, %sw.bb.67, %if.then.46
  %84 = load i32*, i32** %odd_digit.addr, align 8, !tbaa !1
  store i32 -1, i32* %84, align 4, !tbaa !9
  br label %ended

ended:                                            ; preds = %end1, %if.end.105, %sw.bb.97, %if.then.77
  %85 = load i8*, i8** %p, align 8, !tbaa !1
  %86 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr118 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %86, i32 0, i32 0
  store i8* %85, i8** %ptr118, align 8, !tbaa !10
  %87 = load i8*, i8** %q, align 8, !tbaa !1
  %88 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr119 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %88, i32 0, i32 1
  store i8* %87, i8** %ptr119, align 8, !tbaa !12
  %89 = load i32, i32* %code, align 4, !tbaa !9
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %ended, %if.then
  %90 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i8** %decoder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i8** %flimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  call void @llvm.lifetime.end(i64 1, i8* %val2) #1
  call void @llvm.lifetime.end(i64 1, i8* %val1) #1
  %94 = bitcast i8** %q0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = load i32, i32* %retval
  ret i32 %99
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

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
!5 = !{!6, !7, i64 108}
!6 = !{!"stream_AXE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112}
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
!17 = !{!18, !7, i64 24}
!18 = !{!"stream_AXD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108}
!19 = !{!18, !7, i64 108}
!20 = !{!21, !7, i64 108}
!21 = !{!"stream_PSSD_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112}
!22 = !{!21, !7, i64 112}
