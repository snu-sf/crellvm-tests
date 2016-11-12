; ModuleID = './slzwe.bc'
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
%struct.stream_LZW_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, %union._lzt, i32, i32, i32, i32, i32, i32, i32, i32 }
%union._lzt = type { %struct.lzw_decode_s* }
%struct.lzw_decode_s = type opaque
%struct.lzw_encode_table_s = type { [4095 x %struct.lzw_encode_s], [5118 x i16] }
%struct.lzw_encode_s = type { i8, i16 }

@st_LZW_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_LZWE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_LZW_state, i32 (%struct.stream_state_s*)* @s_LZWE_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_LZWE_process, i32 1, i32 4, void (%struct.stream_state_s*)* @s_LZW_release, void (%struct.stream_state_s*)* @s_LZW_set_defaults, i32 (%struct.stream_state_s*)* null }, align 8
@st_lzwe_table = internal constant %struct.gs_memory_struct_type_s { i32 26616, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [15 x i8] c"LZWEncode init\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"lzw_encode_table\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_LZWE_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %1 = bitcast %struct.stream_state_s* %0 to %struct.stream_LZW_state_s*
  %bits_left = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %1, i32 0, i32 10
  store i32 8, i32* %bits_left, align 4, !tbaa !5
  %2 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %3 = bitcast %struct.stream_state_s* %2 to %struct.stream_LZW_state_s*
  %bits = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %3, i32 0, i32 9
  store i32 0, i32* %bits, align 4, !tbaa !8
  %4 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %6 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !11
  %7 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !9
  %call = call i8* %6(%struct.gs_memory_s* %8, %struct.gs_memory_struct_type_s* @st_lzwe_table, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)) #3
  %9 = bitcast i8* %call to %struct.lzw_encode_table_s*
  %10 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %11 = bitcast %struct.stream_state_s* %10 to %struct.stream_LZW_state_s*
  %table = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %11, i32 0, i32 12
  %encode = bitcast %union._lzt* %table to %struct.lzw_encode_table_s**
  store %struct.lzw_encode_table_s* %9, %struct.lzw_encode_table_s** %encode, align 8, !tbaa !1
  %12 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %13 = bitcast %struct.stream_state_s* %12 to %struct.stream_LZW_state_s*
  %table2 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %13, i32 0, i32 12
  %encode3 = bitcast %union._lzt* %table2 to %struct.lzw_encode_table_s**
  %14 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %encode3, align 8, !tbaa !1
  %cmp = icmp eq %struct.lzw_encode_table_s* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %16 = bitcast %struct.stream_state_s* %15 to %struct.stream_LZW_state_s*
  %first = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %16, i32 0, i32 20
  store i32 1, i32* %first, align 4, !tbaa !14
  %17 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %18 = bitcast %struct.stream_state_s* %17 to %struct.stream_LZW_state_s*
  call void @lzw_reset_encode(%struct.stream_LZW_state_s* %18) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @s_LZWE_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %q = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %code = alloca i32, align 4
  %table = alloca %struct.lzw_encode_table_s*, align 8
  %table_end = alloca i16*, align 8
  %status = alloca i32, align 4
  %limit_code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c = alloca i8, align 1
  %tp = alloca i16*, align 8
  %ep = alloca %struct.lzw_encode_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !15
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !16
  store i8* %2, i8** %p, align 8, !tbaa !1
  %3 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 1
  %5 = load i8*, i8** %limit, align 8, !tbaa !18
  store i8* %5, i8** %rlimit, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !19
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %limit2, align 8, !tbaa !21
  store i8* %11, i8** %wlimit, align 8, !tbaa !1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %14 = bitcast %struct.stream_state_s* %13 to %struct.stream_LZW_state_s*
  %prev_code = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %14, i32 0, i32 15
  %15 = load i32, i32* %prev_code, align 4, !tbaa !22
  store i32 %15, i32* %code, align 4, !tbaa !15
  %16 = bitcast %struct.lzw_encode_table_s** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %18 = bitcast %struct.stream_state_s* %17 to %struct.stream_LZW_state_s*
  %table3 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %18, i32 0, i32 12
  %encode = bitcast %union._lzt* %table3 to %struct.lzw_encode_table_s**
  %19 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %encode, align 8, !tbaa !1
  store %struct.lzw_encode_table_s* %19, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %20 = bitcast i16** %table_end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  %21 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %hashed = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %21, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5118 x i16], [5118 x i16]* %hashed, i32 0, i64 5118
  store i16* %arrayidx, i16** %table_end, align 8, !tbaa !1
  %22 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  store i32 0, i32* %status, align 4, !tbaa !15
  %23 = bitcast i32* %limit_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %25 = bitcast %struct.stream_state_s* %24 to %struct.stream_LZW_state_s*
  %code_size = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %25, i32 0, i32 14
  %26 = load i32, i32* %code_size, align 4, !tbaa !23
  %shl = shl i32 1, %26
  %27 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %28 = bitcast %struct.stream_state_s* %27 to %struct.stream_LZW_state_s*
  %EarlyChange = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %28, i32 0, i32 8
  %29 = load i32, i32* %EarlyChange, align 4, !tbaa !24
  %sub = sub nsw i32 %shl, %29
  store i32 %sub, i32* %limit_code, align 4, !tbaa !15
  %30 = load i32, i32* %limit_code, align 4, !tbaa !15
  %cmp = icmp sgt i32 %30, 4095
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4095, i32* %limit_code, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %32 = bitcast %struct.stream_state_s* %31 to %struct.stream_LZW_state_s*
  %first = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %32, i32 0, i32 20
  %33 = load i32, i32* %first, align 4, !tbaa !14
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %34 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %35 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp5 = icmp slt i64 %sub.ptr.sub, 2
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.131

if.end.7:                                         ; preds = %if.then.4
  %36 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %37 = bitcast %struct.stream_state_s* %36 to %struct.stream_LZW_state_s*
  %38 = load i8*, i8** %q, align 8, !tbaa !1
  %call = call i8* @lzw_put_code(%struct.stream_LZW_state_s* %37, i8* %38, i32 256) #3
  store i8* %call, i8** %q, align 8, !tbaa !1
  %39 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %40 = bitcast %struct.stream_state_s* %39 to %struct.stream_LZW_state_s*
  %first8 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %40, i32 0, i32 20
  store i32 0, i32* %first8, align 4, !tbaa !14
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.7, %if.end
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.88, %if.end.9
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %42 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp10 = icmp ult i8* %41, %42
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8, i8* %arrayidx11, align 1, !tbaa !25
  store i8 %44, i8* %c, align 1, !tbaa !25
  %45 = bitcast i16** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %46 = load i32, i32* %code, align 4, !tbaa !15
  %mul = mul nsw i32 %46, 59
  %47 = load i8, i8* %c, align 1, !tbaa !25
  %conv = zext i8 %47 to i32
  %mul12 = mul nsw i32 %conv, 19
  %add = add nsw i32 %mul, %mul12
  %rem = urem i32 %add, 5118
  %idxprom = zext i32 %rem to i64
  %48 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %hashed13 = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %48, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [5118 x i16], [5118 x i16]* %hashed13, i32 0, i64 %idxprom
  store i16* %arrayidx14, i16** %tp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %while.body
  %49 = bitcast %struct.lzw_encode_s** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #2
  %50 = load i16*, i16** %tp, align 8, !tbaa !1
  %51 = load i16, i16* %50, align 2, !tbaa !26
  %idxprom15 = zext i16 %51 to i64
  %52 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %encode16 = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %52, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [4095 x %struct.lzw_encode_s], [4095 x %struct.lzw_encode_s]* %encode16, i32 0, i64 %idxprom15
  store %struct.lzw_encode_s* %arrayidx17, %struct.lzw_encode_s** %ep, align 8, !tbaa !1
  %53 = load %struct.lzw_encode_s*, %struct.lzw_encode_s** %ep, align 8, !tbaa !1
  %prefix = getelementptr inbounds %struct.lzw_encode_s, %struct.lzw_encode_s* %53, i32 0, i32 1
  %54 = load i16, i16* %prefix, align 2, !tbaa !28
  %conv18 = zext i16 %54 to i32
  %55 = load i32, i32* %code, align 4, !tbaa !15
  %cmp19 = icmp eq i32 %conv18, %55
  br i1 %cmp19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.cond
  %56 = load %struct.lzw_encode_s*, %struct.lzw_encode_s** %ep, align 8, !tbaa !1
  %datum = getelementptr inbounds %struct.lzw_encode_s, %struct.lzw_encode_s* %56, i32 0, i32 0
  %57 = load i8, i8* %datum, align 1, !tbaa !30
  %conv21 = zext i8 %57 to i32
  %58 = load i8, i8* %c, align 1, !tbaa !25
  %conv22 = zext i8 %58 to i32
  %cmp23 = icmp eq i32 %conv21, %conv22
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true
  %59 = load i16*, i16** %tp, align 8, !tbaa !1
  %60 = load i16, i16* %59, align 2, !tbaa !26
  %conv26 = zext i16 %60 to i32
  store i32 %conv26, i32* %code, align 4, !tbaa !15
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %for.cond
  %62 = load i16*, i16** %tp, align 8, !tbaa !1
  %63 = load i16, i16* %62, align 2, !tbaa !26
  %conv27 = zext i16 %63 to i32
  %cmp28 = icmp ne i32 %conv27, 257
  br i1 %cmp28, label %if.then.30, label %if.else.38

if.then.30:                                       ; preds = %if.else
  %64 = load i16*, i16** %tp, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %incdec.ptr31, i16** %tp, align 8, !tbaa !1
  %65 = load i16*, i16** %table_end, align 8, !tbaa !1
  %cmp32 = icmp eq i16* %incdec.ptr31, %65
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.then.30
  %66 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %hashed35 = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %66, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [5118 x i16], [5118 x i16]* %hashed35, i32 0, i64 0
  store i16* %arrayidx36, i16** %tp, align 8, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.then.30
  br label %if.end.83

if.else.38:                                       ; preds = %if.else
  %67 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %68 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast39 = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %68 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %cmp42 = icmp sle i64 %sub.ptr.sub41, 4
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else.38
  store i32 1, i32* %status, align 4, !tbaa !15
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.else.38
  %69 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %70 = bitcast %struct.stream_state_s* %69 to %struct.stream_LZW_state_s*
  %71 = load i8*, i8** %q, align 8, !tbaa !1
  %72 = load i32, i32* %code, align 4, !tbaa !15
  %call46 = call i8* @lzw_put_code(%struct.stream_LZW_state_s* %70, i8* %71, i32 %72) #3
  store i8* %call46, i8** %q, align 8, !tbaa !1
  %73 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %74 = bitcast %struct.stream_state_s* %73 to %struct.stream_LZW_state_s*
  %next_code = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %74, i32 0, i32 13
  %75 = load i32, i32* %next_code, align 4, !tbaa !31
  %76 = load i32, i32* %limit_code, align 4, !tbaa !15
  %cmp47 = icmp eq i32 %75, %76
  br i1 %cmp47, label %if.then.49, label %if.end.73

if.then.49:                                       ; preds = %if.end.45
  %77 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %78 = bitcast %struct.stream_state_s* %77 to %struct.stream_LZW_state_s*
  %next_code50 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %78, i32 0, i32 13
  %79 = load i32, i32* %next_code50, align 4, !tbaa !31
  %cmp51 = icmp eq i32 %79, 4095
  br i1 %cmp51, label %if.then.53, label %if.end.63

if.then.53:                                       ; preds = %if.then.49
  %80 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %81 = bitcast %struct.stream_state_s* %80 to %struct.stream_LZW_state_s*
  %82 = load i8*, i8** %q, align 8, !tbaa !1
  %call54 = call i8* @lzw_put_code(%struct.stream_LZW_state_s* %81, i8* %82, i32 256) #3
  store i8* %call54, i8** %q, align 8, !tbaa !1
  %83 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %84 = bitcast %struct.stream_state_s* %83 to %struct.stream_LZW_state_s*
  call void @lzw_reset_encode(%struct.stream_LZW_state_s* %84) #3
  %85 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %86 = bitcast %struct.stream_state_s* %85 to %struct.stream_LZW_state_s*
  %code_size55 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %86, i32 0, i32 14
  %87 = load i32, i32* %code_size55, align 4, !tbaa !23
  %shl56 = shl i32 1, %87
  %88 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %89 = bitcast %struct.stream_state_s* %88 to %struct.stream_LZW_state_s*
  %EarlyChange57 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %89, i32 0, i32 8
  %90 = load i32, i32* %EarlyChange57, align 4, !tbaa !24
  %sub58 = sub nsw i32 %shl56, %90
  store i32 %sub58, i32* %limit_code, align 4, !tbaa !15
  %91 = load i32, i32* %limit_code, align 4, !tbaa !15
  %cmp59 = icmp sgt i32 %91, 4095
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.53
  store i32 4095, i32* %limit_code, align 4, !tbaa !15
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.then.53
  br label %cx

if.end.63:                                        ; preds = %if.then.49
  %92 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %93 = bitcast %struct.stream_state_s* %92 to %struct.stream_LZW_state_s*
  %code_size64 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %93, i32 0, i32 14
  %94 = load i32, i32* %code_size64, align 4, !tbaa !23
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %code_size64, align 4, !tbaa !23
  %95 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %96 = bitcast %struct.stream_state_s* %95 to %struct.stream_LZW_state_s*
  %code_size65 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %96, i32 0, i32 14
  %97 = load i32, i32* %code_size65, align 4, !tbaa !23
  %shl66 = shl i32 1, %97
  %98 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %99 = bitcast %struct.stream_state_s* %98 to %struct.stream_LZW_state_s*
  %EarlyChange67 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %99, i32 0, i32 8
  %100 = load i32, i32* %EarlyChange67, align 4, !tbaa !24
  %sub68 = sub nsw i32 %shl66, %100
  store i32 %sub68, i32* %limit_code, align 4, !tbaa !15
  %101 = load i32, i32* %limit_code, align 4, !tbaa !15
  %cmp69 = icmp sgt i32 %101, 4095
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.63
  store i32 4095, i32* %limit_code, align 4, !tbaa !15
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.63
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.45
  br label %do.body

do.body:                                          ; preds = %if.end.73
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %102 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %103 = bitcast %struct.stream_state_s* %102 to %struct.stream_LZW_state_s*
  %next_code74 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %103, i32 0, i32 13
  %104 = load i32, i32* %next_code74, align 4, !tbaa !31
  %inc75 = add i32 %104, 1
  store i32 %inc75, i32* %next_code74, align 4, !tbaa !31
  %conv76 = trunc i32 %104 to i16
  %105 = load i16*, i16** %tp, align 8, !tbaa !1
  store i16 %conv76, i16* %105, align 2, !tbaa !26
  %106 = load i16*, i16** %tp, align 8, !tbaa !1
  %107 = load i16, i16* %106, align 2, !tbaa !26
  %idxprom77 = zext i16 %107 to i64
  %108 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %encode78 = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %108, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [4095 x %struct.lzw_encode_s], [4095 x %struct.lzw_encode_s]* %encode78, i32 0, i64 %idxprom77
  store %struct.lzw_encode_s* %arrayidx79, %struct.lzw_encode_s** %ep, align 8, !tbaa !1
  %109 = load i8, i8* %c, align 1, !tbaa !25
  %110 = load %struct.lzw_encode_s*, %struct.lzw_encode_s** %ep, align 8, !tbaa !1
  %datum80 = getelementptr inbounds %struct.lzw_encode_s, %struct.lzw_encode_s* %110, i32 0, i32 0
  store i8 %109, i8* %datum80, align 1, !tbaa !30
  %111 = load i32, i32* %code, align 4, !tbaa !15
  %conv81 = trunc i32 %111 to i16
  %112 = load %struct.lzw_encode_s*, %struct.lzw_encode_s** %ep, align 8, !tbaa !1
  %prefix82 = getelementptr inbounds %struct.lzw_encode_s, %struct.lzw_encode_s* %112, i32 0, i32 1
  store i16 %conv81, i16* %prefix82, align 2, !tbaa !28
  br label %cx

cx:                                               ; preds = %do.end, %if.end.62
  store i32 257, i32* %code, align 4, !tbaa !15
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.end.37
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.44, %if.end.84, %cx, %if.then.25
  %113 = bitcast %struct.lzw_encode_s** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.85 [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.85

cleanup.85:                                       ; preds = %for.end, %cleanup
  %114 = bitcast i16** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  %cleanup.dest.87 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.87, label %cleanup.131 [
    i32 0, label %cleanup.cont.88
    i32 6, label %out
  ]

cleanup.cont.88:                                  ; preds = %cleanup.85
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %115 = load i32, i32* %last.addr, align 4, !tbaa !15
  %tobool89 = icmp ne i32 %115, 0
  br i1 %tobool89, label %land.lhs.true.90, label %if.end.127

land.lhs.true.90:                                 ; preds = %while.end
  %116 = load i32, i32* %status, align 4, !tbaa !15
  %cmp91 = icmp eq i32 %116, 0
  br i1 %cmp91, label %if.then.93, label %if.end.127

if.then.93:                                       ; preds = %land.lhs.true.90
  %117 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %118 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast94 = ptrtoint i8* %117 to i64
  %sub.ptr.rhs.cast95 = ptrtoint i8* %118 to i64
  %sub.ptr.sub96 = sub i64 %sub.ptr.lhs.cast94, %sub.ptr.rhs.cast95
  %cmp97 = icmp slt i64 %sub.ptr.sub96, 4
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.then.93
  store i32 1, i32* %status, align 4, !tbaa !15
  br label %if.end.126

if.else.100:                                      ; preds = %if.then.93
  %119 = load i32, i32* %code, align 4, !tbaa !15
  %cmp101 = icmp ne i32 %119, 257
  br i1 %cmp101, label %if.then.103, label %if.end.116

if.then.103:                                      ; preds = %if.else.100
  %120 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %121 = bitcast %struct.stream_state_s* %120 to %struct.stream_LZW_state_s*
  %122 = load i8*, i8** %q, align 8, !tbaa !1
  %123 = load i32, i32* %code, align 4, !tbaa !15
  %call104 = call i8* @lzw_put_code(%struct.stream_LZW_state_s* %121, i8* %122, i32 %123) #3
  store i8* %call104, i8** %q, align 8, !tbaa !1
  %124 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %125 = bitcast %struct.stream_state_s* %124 to %struct.stream_LZW_state_s*
  %next_code105 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %125, i32 0, i32 13
  %126 = load i32, i32* %next_code105, align 4, !tbaa !31
  %127 = load i32, i32* %limit_code, align 4, !tbaa !15
  %cmp106 = icmp eq i32 %126, %127
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.115

land.lhs.true.108:                                ; preds = %if.then.103
  %128 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %129 = bitcast %struct.stream_state_s* %128 to %struct.stream_LZW_state_s*
  %next_code109 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %129, i32 0, i32 13
  %130 = load i32, i32* %next_code109, align 4, !tbaa !31
  %cmp110 = icmp ne i32 %130, 4095
  br i1 %cmp110, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %land.lhs.true.108
  %131 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %132 = bitcast %struct.stream_state_s* %131 to %struct.stream_LZW_state_s*
  %code_size113 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %132, i32 0, i32 14
  %133 = load i32, i32* %code_size113, align 4, !tbaa !23
  %inc114 = add nsw i32 %133, 1
  store i32 %inc114, i32* %code_size113, align 4, !tbaa !23
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.112, %land.lhs.true.108, %if.then.103
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.else.100
  %134 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %135 = bitcast %struct.stream_state_s* %134 to %struct.stream_LZW_state_s*
  %136 = load i8*, i8** %q, align 8, !tbaa !1
  %call117 = call i8* @lzw_put_code(%struct.stream_LZW_state_s* %135, i8* %136, i32 257) #3
  store i8* %call117, i8** %q, align 8, !tbaa !1
  %137 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %138 = bitcast %struct.stream_state_s* %137 to %struct.stream_LZW_state_s*
  %bits_left = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %138, i32 0, i32 10
  %139 = load i32, i32* %bits_left, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %139, 8
  br i1 %cmp118, label %if.then.120, label %if.end.125

if.then.120:                                      ; preds = %if.end.116
  %140 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %141 = bitcast %struct.stream_state_s* %140 to %struct.stream_LZW_state_s*
  %bits = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %141, i32 0, i32 9
  %142 = load i32, i32* %bits, align 4, !tbaa !8
  %143 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %144 = bitcast %struct.stream_state_s* %143 to %struct.stream_LZW_state_s*
  %bits_left121 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %144, i32 0, i32 10
  %145 = load i32, i32* %bits_left121, align 4, !tbaa !5
  %shl122 = shl i32 %142, %145
  %conv123 = trunc i32 %shl122 to i8
  %146 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr124, i8** %q, align 8, !tbaa !1
  store i8 %conv123, i8* %incdec.ptr124, align 1, !tbaa !25
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.120, %if.end.116
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.99
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %land.lhs.true.90, %while.end
  br label %out

out:                                              ; preds = %if.end.127, %cleanup.85
  %147 = load i32, i32* %code, align 4, !tbaa !15
  %148 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %149 = bitcast %struct.stream_state_s* %148 to %struct.stream_LZW_state_s*
  %prev_code128 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %149, i32 0, i32 15
  store i32 %147, i32* %prev_code128, align 4, !tbaa !22
  %150 = load i8*, i8** %p, align 8, !tbaa !1
  %151 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr129 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %151, i32 0, i32 0
  store i8* %150, i8** %ptr129, align 8, !tbaa !16
  %152 = load i8*, i8** %q, align 8, !tbaa !1
  %153 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr130 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %153, i32 0, i32 1
  store i8* %152, i8** %ptr130, align 8, !tbaa !19
  %154 = load i32, i32* %status, align 4, !tbaa !15
  store i32 %154, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.131

cleanup.131:                                      ; preds = %out, %cleanup.85, %if.then.6
  %155 = bitcast i32* %limit_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i16** %table_end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #2
  %158 = bitcast %struct.lzw_encode_table_s** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = load i32, i32* %retval
  ret i32 %164
}

declare void @s_LZW_release(%struct.stream_state_s*) #1

declare void @s_LZW_set_defaults(%struct.stream_state_s*) #1

; Function Attrs: nounwind uwtable
define internal void @lzw_reset_encode(%struct.stream_LZW_state_s* %ss) #0 {
entry:
  %ss.addr = alloca %struct.stream_LZW_state_s*, align 8
  %c = alloca i32, align 4
  %table = alloca %struct.lzw_encode_table_s*, align 8
  %ec = alloca %struct.lzw_encode_s*, align 8
  %tc = alloca i16*, align 8
  store %struct.stream_LZW_state_s* %ss, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.lzw_encode_table_s** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %table1 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %2, i32 0, i32 12
  %encode = bitcast %union._lzt* %table1 to %struct.lzw_encode_table_s**
  %3 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %encode, align 8, !tbaa !1
  store %struct.lzw_encode_table_s* %3, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %4 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %next_code = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %4, i32 0, i32 13
  store i32 258, i32* %next_code, align 4, !tbaa !31
  %5 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %code_size = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %5, i32 0, i32 14
  store i32 9, i32* %code_size, align 4, !tbaa !23
  %6 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %prev_code = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %6, i32 0, i32 15
  store i32 257, i32* %prev_code, align 4, !tbaa !22
  store i32 0, i32* %c, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %c, align 4, !tbaa !15
  %cmp = icmp slt i32 %7, 5118
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %c, align 4, !tbaa !15
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %hashed = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5118 x i16], [5118 x i16]* %hashed, i32 0, i64 %idxprom
  store i16 257, i16* %arrayidx, align 2, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %c, align 4, !tbaa !15
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %c, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %c, align 4, !tbaa !15
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.21, %for.end
  %11 = load i32, i32* %c, align 4, !tbaa !15
  %cmp3 = icmp slt i32 %11, 256
  br i1 %cmp3, label %for.body.4, label %for.end.23

for.body.4:                                       ; preds = %for.cond.2
  %12 = bitcast %struct.lzw_encode_s** %ec to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load i32, i32* %c, align 4, !tbaa !15
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %encode6 = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %14, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4095 x %struct.lzw_encode_s], [4095 x %struct.lzw_encode_s]* %encode6, i32 0, i64 %idxprom5
  store %struct.lzw_encode_s* %arrayidx7, %struct.lzw_encode_s** %ec, align 8, !tbaa !1
  %15 = bitcast i16** %tc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i32, i32* %c, align 4, !tbaa !15
  %mul = mul nsw i32 %16, 19
  %add = add nsw i32 15163, %mul
  %rem = urem i32 %add, 5118
  %idxprom8 = zext i32 %rem to i64
  %17 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %hashed9 = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %17, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [5118 x i16], [5118 x i16]* %hashed9, i32 0, i64 %idxprom8
  store i16* %arrayidx10, i16** %tc, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body.4
  %18 = load i16*, i16** %tc, align 8, !tbaa !1
  %19 = load i16, i16* %18, align 2, !tbaa !26
  %conv = zext i16 %19 to i32
  %cmp11 = icmp ne i32 %conv, 257
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i16*, i16** %tc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %incdec.ptr, i16** %tc, align 8, !tbaa !1
  %21 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %hashed13 = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %21, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [5118 x i16], [5118 x i16]* %hashed13, i32 0, i64 5118
  %cmp15 = icmp eq i16* %incdec.ptr, %arrayidx14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %22 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %hashed17 = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %22, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [5118 x i16], [5118 x i16]* %hashed17, i32 0, i64 0
  store i16* %arrayidx18, i16** %tc, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %c, align 4, !tbaa !15
  %conv19 = trunc i32 %23 to i16
  %24 = load i16*, i16** %tc, align 8, !tbaa !1
  store i16 %conv19, i16* %24, align 2, !tbaa !26
  %25 = load i32, i32* %c, align 4, !tbaa !15
  %conv20 = trunc i32 %25 to i8
  %26 = load %struct.lzw_encode_s*, %struct.lzw_encode_s** %ec, align 8, !tbaa !1
  %datum = getelementptr inbounds %struct.lzw_encode_s, %struct.lzw_encode_s* %26, i32 0, i32 0
  store i8 %conv20, i8* %datum, align 1, !tbaa !30
  %27 = load %struct.lzw_encode_s*, %struct.lzw_encode_s** %ec, align 8, !tbaa !1
  %prefix = getelementptr inbounds %struct.lzw_encode_s, %struct.lzw_encode_s* %27, i32 0, i32 1
  store i16 257, i16* %prefix, align 2, !tbaa !28
  %28 = bitcast i16** %tc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.lzw_encode_s** %ec to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  br label %for.inc.21

for.inc.21:                                       ; preds = %while.end
  %30 = load i32, i32* %c, align 4, !tbaa !15
  %inc22 = add nsw i32 %30, 1
  store i32 %inc22, i32* %c, align 4, !tbaa !15
  br label %for.cond.2

for.end.23:                                       ; preds = %for.cond.2
  %31 = load %struct.lzw_encode_table_s*, %struct.lzw_encode_table_s** %table, align 8, !tbaa !1
  %encode24 = getelementptr inbounds %struct.lzw_encode_table_s, %struct.lzw_encode_table_s* %31, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [4095 x %struct.lzw_encode_s], [4095 x %struct.lzw_encode_s]* %encode24, i32 0, i64 257
  %prefix26 = getelementptr inbounds %struct.lzw_encode_s, %struct.lzw_encode_s* %arrayidx25, i32 0, i32 1
  store i16 256, i16* %prefix26, align 2, !tbaa !28
  %32 = bitcast %struct.lzw_encode_table_s** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  ret void
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i8* @lzw_put_code(%struct.stream_LZW_state_s* %ss, i8* %q, i32 %code) #0 {
entry:
  %ss.addr = alloca %struct.stream_LZW_state_s*, align 8
  %q.addr = alloca i8*, align 8
  %code.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %cb = alloca i8, align 1
  store %struct.stream_LZW_state_s* %ss, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  store i8* %q, i8** %q.addr, align 8, !tbaa !1
  store i32 %code, i32* %code.addr, align 4, !tbaa !15
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %code_size = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %1, i32 0, i32 14
  %2 = load i32, i32* %code_size, align 4, !tbaa !23
  store i32 %2, i32* %size, align 4, !tbaa !15
  call void @llvm.lifetime.start(i64 1, i8* %cb) #2
  %3 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %3, i32 0, i32 9
  %4 = load i32, i32* %bits, align 4, !tbaa !8
  %5 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %5, i32 0, i32 10
  %6 = load i32, i32* %bits_left, align 4, !tbaa !5
  %shl = shl i32 %4, %6
  %7 = load i32, i32* %code.addr, align 4, !tbaa !15
  %8 = load i32, i32* %size, align 4, !tbaa !15
  %9 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left1 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %9, i32 0, i32 10
  %10 = load i32, i32* %bits_left1, align 4, !tbaa !5
  %sub = sub i32 %8, %10
  %shr = lshr i32 %7, %sub
  %add = add i32 %shl, %shr
  %conv = trunc i32 %add to i8
  store i8 %conv, i8* %cb, align 1, !tbaa !25
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i8, i8* %cb, align 1, !tbaa !25
  %12 = load i8*, i8** %q.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %q.addr, align 8, !tbaa !1
  store i8 %11, i8* %incdec.ptr, align 1, !tbaa !25
  %13 = load i32, i32* %size, align 4, !tbaa !15
  %sub2 = sub i32 8, %13
  %14 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left3 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %14, i32 0, i32 10
  %15 = load i32, i32* %bits_left3, align 4, !tbaa !5
  %add4 = add i32 %15, %sub2
  store i32 %add4, i32* %bits_left3, align 4, !tbaa !5
  %cmp = icmp sle i32 %add4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %16 = load i32, i32* %code.addr, align 4, !tbaa !15
  %17 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left6 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %17, i32 0, i32 10
  %18 = load i32, i32* %bits_left6, align 4, !tbaa !5
  %sub7 = sub nsw i32 0, %18
  %shr8 = lshr i32 %16, %sub7
  %conv9 = trunc i32 %shr8 to i8
  %19 = load i8*, i8** %q.addr, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr10, i8** %q.addr, align 8, !tbaa !1
  store i8 %conv9, i8* %incdec.ptr10, align 1, !tbaa !25
  %20 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %bits_left11 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %20, i32 0, i32 10
  %21 = load i32, i32* %bits_left11, align 4, !tbaa !5
  %add12 = add nsw i32 %21, 8
  store i32 %add12, i32* %bits_left11, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %22 = load i32, i32* %code.addr, align 4, !tbaa !15
  %23 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss.addr, align 8, !tbaa !1
  %bits13 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %23, i32 0, i32 9
  store i32 %22, i32* %bits13, align 4, !tbaa !8
  %24 = load i8*, i8** %q.addr, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %cb) #2
  %25 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  ret i8* %24
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 128}
!6 = !{!"stream_LZW_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !3, i64 136, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 124}
!9 = !{!10, !2, i64 8}
!10 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28}
!11 = !{!12, !2, i64 72}
!12 = !{!"gs_memory_s", !2, i64 0, !13, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!13 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!14 = !{!6, !7, i64 172}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !2, i64 0}
!17 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!17, !2, i64 8}
!19 = !{!20, !2, i64 8}
!20 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!20, !2, i64 16}
!22 = !{!6, !7, i64 152}
!23 = !{!6, !7, i64 148}
!24 = !{!6, !7, i64 120}
!25 = !{!3, !3, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"short", !3, i64 0}
!28 = !{!29, !27, i64 2}
!29 = !{!"lzw_encode_s", !3, i64 0, !27, i64 2}
!30 = !{!29, !3, i64 0}
!31 = !{!6, !7, i64 144}
