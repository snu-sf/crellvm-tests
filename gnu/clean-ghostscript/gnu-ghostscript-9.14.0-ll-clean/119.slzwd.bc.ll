; ModuleID = './slzwd.bc'
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
%struct.lzw_decode_s = type { i8, i8, i16 }

@st_LZW_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_LZWD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_LZW_state, i32 (%struct.stream_state_s*)* @s_LZWD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_LZWD_process, i32 3, i32 1, void (%struct.stream_state_s*)* @s_LZW_release, void (%struct.stream_state_s*)* @s_LZW_set_defaults, i32 (%struct.stream_state_s*)* @s_LZWD_reset }, align 8
@st_lzw_decode = internal constant %struct.gs_memory_struct_type_s { i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"LZWDecode(init)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"lzw_decode\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @s_LZWD_init(%struct.stream_state_s* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_LZW_state_s*, align 8
  %dc = alloca %struct.lzw_decode_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_LZW_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_LZW_state_s*
  store %struct.stream_LZW_state_s* %2, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.lzw_decode_s** %dc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %4, i32 0, i32 1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %6 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !8
  %7 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %7, i32 0, i32 1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !5
  %call = call i8* %6(%struct.gs_memory_s* %8, i32 4097, %struct.gs_memory_struct_type_s* @st_lzw_decode, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #3
  %9 = bitcast i8* %call to %struct.lzw_decode_s*
  store %struct.lzw_decode_s* %9, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %10 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %cmp = icmp eq %struct.lzw_decode_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %12 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %12, i32 0, i32 12
  %decode = bitcast %union._lzt* %table to %struct.lzw_decode_s**
  store %struct.lzw_decode_s* %11, %struct.lzw_decode_s** %decode, align 8, !tbaa !1
  %13 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %min_left = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %13, i32 0, i32 3
  store i32 1, i32* %min_left, align 4, !tbaa !11
  %14 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call2 = call i32 @s_LZWD_reset(%struct.stream_state_s* %14) #3
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.lzw_decode_s** %dc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.stream_LZW_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @s_LZWD_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_LZW_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %rlimit = alloca i8*, align 8
  %wlimit = alloca i8*, align 8
  %status = alloca i32, align 4
  %code = alloca i32, align 4
  %prev_code = alloca i32, align 4
  %prev_len = alloca i32, align 4
  %bits = alloca i8, align 1
  %bits_left = alloca i32, align 4
  %bytes_left = alloca i32, align 4
  %code_size = alloca i32, align 4
  %code_mask = alloca i32, align 4
  %switch_code = alloca i32, align 4
  %next_code = alloca i32, align 4
  %table = alloca %struct.lzw_decode_s*, align 8
  %dc_next = alloca %struct.lzw_decode_s*, align 8
  %dc = alloca %struct.lzw_decode_s*, align 8
  %code_escape = alloca i32, align 4
  %eod = alloca i32, align 4
  %low_order = alloca i32, align 4
  %len = alloca i32, align 4
  %c = alloca i32, align 4
  %b = alloca i8, align 1
  %q1 = alloca i8*, align 8
  %rlen = alloca i32, align 4
  %wlen = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %q1275 = alloca i8*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !13
  %0 = bitcast %struct.stream_LZW_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_LZW_state_s*
  store %struct.stream_LZW_state_s* %2, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !14
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !16
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %limit, align 8, !tbaa !18
  store i8* %11, i8** %rlimit, align 8, !tbaa !1
  %12 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit2 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %limit2, align 8, !tbaa !19
  store i8* %14, i8** %wlimit, align 8, !tbaa !1
  %15 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %status, align 4, !tbaa !13
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %copy_code = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %17, i32 0, i32 17
  %18 = load i32, i32* %copy_code, align 4, !tbaa !20
  store i32 %18, i32* %code, align 4, !tbaa !13
  %19 = bitcast i32* %prev_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %prev_code3 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %20, i32 0, i32 15
  %21 = load i32, i32* %prev_code3, align 4, !tbaa !21
  store i32 %21, i32* %prev_code, align 4, !tbaa !13
  %22 = bitcast i32* %prev_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %prev_len4 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %23, i32 0, i32 16
  %24 = load i32, i32* %prev_len4, align 4, !tbaa !22
  store i32 %24, i32* %prev_len, align 4, !tbaa !13
  call void @llvm.lifetime.start(i64 1, i8* %bits) #2
  %25 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %bits5 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %25, i32 0, i32 9
  %26 = load i32, i32* %bits5, align 4, !tbaa !23
  %conv = trunc i32 %26 to i8
  store i8 %conv, i8* %bits, align 1, !tbaa !24
  %27 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %bits_left6 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %28, i32 0, i32 10
  %29 = load i32, i32* %bits_left6, align 4, !tbaa !25
  store i32 %29, i32* %bits_left, align 4, !tbaa !13
  %30 = bitcast i32* %bytes_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %bytes_left7 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %31, i32 0, i32 11
  %32 = load i32, i32* %bytes_left7, align 4, !tbaa !26
  store i32 %32, i32* %bytes_left, align 4, !tbaa !13
  %33 = bitcast i32* %code_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %code_size8 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %34, i32 0, i32 14
  %35 = load i32, i32* %code_size8, align 4, !tbaa !27
  store i32 %35, i32* %code_size, align 4, !tbaa !13
  %36 = bitcast i32* %code_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = bitcast i32* %switch_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = bitcast i32* %next_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %next_code9 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %39, i32 0, i32 13
  %40 = load i32, i32* %next_code9, align 4, !tbaa !28
  store i32 %40, i32* %next_code, align 4, !tbaa !13
  %41 = bitcast %struct.lzw_decode_s** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #2
  %42 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %table10 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %42, i32 0, i32 12
  %decode = bitcast %union._lzt* %table10 to %struct.lzw_decode_s**
  %43 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %decode, align 8, !tbaa !1
  store %struct.lzw_decode_s* %43, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %44 = bitcast %struct.lzw_decode_s** %dc_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #2
  %45 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %46 = load i32, i32* %next_code, align 4, !tbaa !13
  %idx.ext = sext i32 %46 to i64
  %add.ptr = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %45, i64 %idx.ext
  store %struct.lzw_decode_s* %add.ptr, %struct.lzw_decode_s** %dc_next, align 8, !tbaa !1
  %47 = bitcast %struct.lzw_decode_s** %dc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  %48 = bitcast i32* %code_escape to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %InitialCodeLength = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %49, i32 0, i32 5
  %50 = load i32, i32* %InitialCodeLength, align 4, !tbaa !29
  %shl = shl i32 1, %50
  store i32 %shl, i32* %code_escape, align 4, !tbaa !13
  %51 = bitcast i32* %eod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = load i32, i32* %code_escape, align 4, !tbaa !13
  %add = add nsw i32 %52, 1
  store i32 %add, i32* %eod, align 4, !tbaa !13
  %53 = bitcast i32* %low_order to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #2
  %54 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %FirstBitLowOrder = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %54, i32 0, i32 6
  %55 = load i32, i32* %FirstBitLowOrder, align 4, !tbaa !30
  store i32 %55, i32* %low_order, align 4, !tbaa !13
  %56 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  %57 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %58 = bitcast i8** %q1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %59 = load i32, i32* %code_size, align 4, !tbaa !13
  %shl11 = shl i32 1, %59
  %sub = sub nsw i32 %shl11, 1
  store i32 %sub, i32* %code_mask, align 4, !tbaa !13
  %60 = load i32, i32* %code_mask, align 4, !tbaa !13
  %add12 = add nsw i32 %60, 1
  %61 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %EarlyChange = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %61, i32 0, i32 8
  %62 = load i32, i32* %EarlyChange, align 4, !tbaa !31
  %sub13 = sub nsw i32 %add12, %62
  store i32 %sub13, i32* %switch_code, align 4, !tbaa !13
  %63 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %BlockData = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %63, i32 0, i32 7
  %64 = load i32, i32* %BlockData, align 4, !tbaa !32
  %tobool = icmp ne i32 %64, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %65 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %66 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add14 = add nsw i64 %sub.ptr.sub, 2
  %conv15 = trunc i64 %add14 to i32
  store i32 %conv15, i32* %bytes_left, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %67 = load i32, i32* %code, align 4, !tbaa !13
  %cmp = icmp sge i32 %67, 0
  br i1 %cmp, label %if.then.17, label %if.end.63

if.then.17:                                       ; preds = %if.end
  %68 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #2
  %69 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %copy_left = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %69, i32 0, i32 19
  %70 = load i32, i32* %copy_left, align 4, !tbaa !33
  store i32 %70, i32* %rlen, align 4, !tbaa !13
  %71 = bitcast i32* %wlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #2
  %72 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %73 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast18 = ptrtoint i8* %72 to i64
  %sub.ptr.rhs.cast19 = ptrtoint i8* %73 to i64
  %sub.ptr.sub20 = sub i64 %sub.ptr.lhs.cast18, %sub.ptr.rhs.cast19
  %conv21 = trunc i64 %sub.ptr.sub20 to i32
  store i32 %conv21, i32* %wlen, align 4, !tbaa !13
  %74 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #2
  %75 = load i32, i32* %rlen, align 4, !tbaa !13
  %76 = load i32, i32* %wlen, align 4, !tbaa !13
  %cmp22 = icmp slt i32 %75, %76
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %77 = load i32, i32* %rlen, align 4, !tbaa !13
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  %78 = load i32, i32* %wlen, align 4, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %77, %cond.true ], [ %78, %cond.false ]
  store i32 %cond, i32* %len, align 4, !tbaa !13
  store i32 %cond, i32* %n, align 4, !tbaa !13
  %79 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %79, i32* %c, align 4, !tbaa !13
  %80 = load i32, i32* %len, align 4, !tbaa !13
  %81 = load i32, i32* %rlen, align 4, !tbaa !13
  %sub24 = sub i32 %81, %80
  store i32 %sub24, i32* %rlen, align 4, !tbaa !13
  %82 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %copy_left25 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %82, i32 0, i32 19
  store i32 %sub24, i32* %copy_left25, align 4, !tbaa !33
  br label %do.body.26

do.body.26:                                       ; preds = %cond.end
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.body.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.28
  %83 = load i32, i32* %rlen, align 4, !tbaa !13
  %tobool29 = icmp ne i32 %83, 0
  br i1 %tobool29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %84 = load i32, i32* %c, align 4, !tbaa !13
  %idxprom = sext i32 %84 to i64
  %85 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %85, i64 %idxprom
  %prefix = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %arrayidx, i32 0, i32 2
  %86 = load i16, i16* %prefix, align 2, !tbaa !34
  %conv30 = zext i16 %86 to i32
  store i32 %conv30, i32* %c, align 4, !tbaa !13
  %87 = load i32, i32* %rlen, align 4, !tbaa !13
  %dec = add nsw i32 %87, -1
  store i32 %dec, i32* %rlen, align 4, !tbaa !13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %88 = load i32, i32* %len, align 4, !tbaa !13
  %89 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext31 = zext i32 %88 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %89, i64 %idx.ext31
  store i8* %add.ptr32, i8** %q, align 8, !tbaa !1
  store i8* %add.ptr32, i8** %q1, align 8, !tbaa !1
  %90 = load i32, i32* %len, align 4, !tbaa !13
  store i32 %90, i32* %n, align 4, !tbaa !13
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.37, %while.end
  %91 = load i32, i32* %n, align 4, !tbaa !13
  %dec34 = add nsw i32 %91, -1
  store i32 %dec34, i32* %n, align 4, !tbaa !13
  %cmp35 = icmp sge i32 %dec34, 0
  br i1 %cmp35, label %while.body.37, label %while.end.42

while.body.37:                                    ; preds = %while.cond.33
  %92 = load i32, i32* %c, align 4, !tbaa !13
  %idxprom38 = sext i32 %92 to i64
  %93 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %93, i64 %idxprom38
  store %struct.lzw_decode_s* %arrayidx39, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %datum = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %arrayidx39, i32 0, i32 0
  %94 = load i8, i8* %datum, align 1, !tbaa !37
  %95 = load i8*, i8** %q1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %95, i32 -1
  store i8* %incdec.ptr, i8** %q1, align 8, !tbaa !1
  store i8 %94, i8* %95, align 1, !tbaa !24
  %96 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %prefix40 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %96, i32 0, i32 2
  %97 = load i16, i16* %prefix40, align 2, !tbaa !34
  %conv41 = zext i16 %97 to i32
  store i32 %conv41, i32* %c, align 4, !tbaa !13
  br label %while.cond.33

while.end.42:                                     ; preds = %while.cond.33
  %98 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %copy_left43 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %98, i32 0, i32 19
  %99 = load i32, i32* %copy_left43, align 4, !tbaa !33
  %tobool44 = icmp ne i32 %99, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %while.end.42
  %100 = load i8*, i8** %q, align 8, !tbaa !1
  %101 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr46 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %101, i32 0, i32 1
  store i8* %100, i8** %ptr46, align 8, !tbaa !16
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %while.end.42
  %102 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %copy_code48 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %102, i32 0, i32 17
  store i32 -1, i32* %copy_code48, align 4, !tbaa !20
  %103 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %copy_len = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %103, i32 0, i32 18
  %104 = load i32, i32* %copy_len, align 4, !tbaa !38
  store i32 %104, i32* %len, align 4, !tbaa !13
  %105 = load i32, i32* %c, align 4, !tbaa !13
  %106 = load i32, i32* %eod, align 4, !tbaa !13
  %cmp49 = icmp eq i32 %105, %106
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.47
  %107 = load i8*, i8** %q1, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8, i8* %107, i64 1
  %108 = load i8, i8* %arrayidx52, align 1, !tbaa !24
  store i8 %108, i8* %b, align 1, !tbaa !24
  br label %if.end.60

if.else:                                          ; preds = %if.end.47
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %109 = load i32, i32* %c, align 4, !tbaa !13
  %110 = load i32, i32* %eod, align 4, !tbaa !13
  %cmp53 = icmp ne i32 %109, %110
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %111 = load i32, i32* %c, align 4, !tbaa !13
  %conv55 = trunc i32 %111 to i8
  store i8 %conv55, i8* %b, align 1, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %112 = load i32, i32* %c, align 4, !tbaa !13
  %idxprom56 = sext i32 %112 to i64
  %113 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %113, i64 %idxprom56
  %prefix58 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %arrayidx57, i32 0, i32 2
  %114 = load i16, i16* %prefix58, align 2, !tbaa !34
  %conv59 = zext i16 %114 to i32
  store i32 %conv59, i32* %c, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.60

if.end.60:                                        ; preds = %for.end, %if.then.51
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.45
  %115 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast i32* %wlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.436 [
    i32 13, label %add.306
  ]

if.end.63:                                        ; preds = %if.end
  br label %top

top:                                              ; preds = %if.end.422, %do.end.229, %if.end.82, %if.end.63
  %118 = load i32, i32* %code_size, align 4, !tbaa !13
  %119 = load i32, i32* %bits_left, align 4, !tbaa !13
  %cmp64 = icmp sgt i32 %118, %119
  br i1 %cmp64, label %if.then.66, label %if.else.166

if.then.66:                                       ; preds = %top
  %120 = load i32, i32* %bytes_left, align 4, !tbaa !13
  %cmp67 = icmp eq i32 %120, 0
  br i1 %cmp67, label %if.then.69, label %if.end.83

if.then.69:                                       ; preds = %if.then.66
  %121 = load i8*, i8** %p, align 8, !tbaa !1
  %122 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp70 = icmp eq i8* %121, %122
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.69
  br label %out

if.end.73:                                        ; preds = %if.then.69
  %123 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr74, i8** %p, align 8, !tbaa !1
  %124 = load i8, i8* %incdec.ptr74, align 1, !tbaa !24
  %conv75 = zext i8 %124 to i32
  store i32 %conv75, i32* %bytes_left, align 4, !tbaa !13
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.73
  br label %do.cond.77

do.cond.77:                                       ; preds = %do.body.76
  br label %do.end.78

do.end.78:                                        ; preds = %do.cond.77
  %125 = load i32, i32* %bytes_left, align 4, !tbaa !13
  %cmp79 = icmp eq i32 %125, 0
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %do.end.78
  store i32 -1, i32* %status, align 4, !tbaa !13
  br label %out

if.end.82:                                        ; preds = %do.end.78
  br label %top

if.end.83:                                        ; preds = %if.then.66
  %126 = load i32, i32* %low_order, align 4, !tbaa !13
  %tobool84 = icmp ne i32 %126, 0
  br i1 %tobool84, label %if.then.85, label %if.else.88

if.then.85:                                       ; preds = %if.end.83
  %127 = load i8, i8* %bits, align 1, !tbaa !24
  %conv86 = zext i8 %127 to i32
  %128 = load i32, i32* %bits_left, align 4, !tbaa !13
  %sub87 = sub nsw i32 8, %128
  %shr = ashr i32 %conv86, %sub87
  store i32 %shr, i32* %code, align 4, !tbaa !13
  br label %if.end.92

if.else.88:                                       ; preds = %if.end.83
  %129 = load i8, i8* %bits, align 1, !tbaa !24
  %conv89 = zext i8 %129 to i32
  %130 = load i32, i32* %code_size, align 4, !tbaa !13
  %131 = load i32, i32* %bits_left, align 4, !tbaa !13
  %sub90 = sub nsw i32 %130, %131
  %shl91 = shl i32 %conv89, %sub90
  store i32 %shl91, i32* %code, align 4, !tbaa !13
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.88, %if.then.85
  %132 = load i32, i32* %bits_left, align 4, !tbaa !13
  %add93 = add nsw i32 %132, 8
  %133 = load i32, i32* %code_size, align 4, !tbaa !13
  %cmp94 = icmp slt i32 %add93, %133
  br i1 %cmp94, label %if.then.96, label %if.else.144

if.then.96:                                       ; preds = %if.end.92
  %134 = load i32, i32* %bytes_left, align 4, !tbaa !13
  %cmp97 = icmp eq i32 %134, 1
  br i1 %cmp97, label %if.then.99, label %if.else.118

if.then.99:                                       ; preds = %if.then.96
  %135 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %136 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast100 = ptrtoint i8* %135 to i64
  %sub.ptr.rhs.cast101 = ptrtoint i8* %136 to i64
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101
  %cmp103 = icmp slt i64 %sub.ptr.sub102, 3
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.99
  br label %out

if.end.106:                                       ; preds = %if.then.99
  %137 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %137, i64 2
  %138 = load i8, i8* %arrayidx107, align 1, !tbaa !24
  %conv108 = zext i8 %138 to i32
  store i32 %conv108, i32* %bytes_left, align 4, !tbaa !13
  br label %do.body.109

do.body.109:                                      ; preds = %if.end.106
  br label %do.cond.110

do.cond.110:                                      ; preds = %do.body.109
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  %139 = load i32, i32* %bytes_left, align 4, !tbaa !13
  %cmp112 = icmp eq i32 %139, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %do.end.111
  store i32 -1, i32* %status, align 4, !tbaa !13
  br label %out

if.end.115:                                       ; preds = %do.end.111
  %140 = load i32, i32* %bytes_left, align 4, !tbaa !13
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* %bytes_left, align 4, !tbaa !13
  %141 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %141, i64 1
  %142 = load i8, i8* %arrayidx116, align 1, !tbaa !24
  store i8 %142, i8* %bits, align 1, !tbaa !24
  %143 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr117 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr117, i8** %p, align 8, !tbaa !1
  br label %if.end.127

if.else.118:                                      ; preds = %if.then.96
  %144 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %145 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast119 = ptrtoint i8* %144 to i64
  %sub.ptr.rhs.cast120 = ptrtoint i8* %145 to i64
  %sub.ptr.sub121 = sub i64 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %cmp122 = icmp slt i64 %sub.ptr.sub121, 2
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.else.118
  br label %out

if.end.125:                                       ; preds = %if.else.118
  %146 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i8, i8* %146, i64 1
  %147 = load i8, i8* %arrayidx126, align 1, !tbaa !24
  store i8 %147, i8* %bits, align 1, !tbaa !24
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.125, %if.end.115
  %148 = load i32, i32* %low_order, align 4, !tbaa !13
  %tobool128 = icmp ne i32 %148, 0
  br i1 %tobool128, label %if.then.129, label %if.else.133

if.then.129:                                      ; preds = %if.end.127
  %149 = load i8, i8* %bits, align 1, !tbaa !24
  %conv130 = zext i8 %149 to i32
  %150 = load i32, i32* %bits_left, align 4, !tbaa !13
  %shl131 = shl i32 %conv130, %150
  %151 = load i32, i32* %code, align 4, !tbaa !13
  %add132 = add i32 %151, %shl131
  store i32 %add132, i32* %code, align 4, !tbaa !13
  br label %if.end.139

if.else.133:                                      ; preds = %if.end.127
  %152 = load i8, i8* %bits, align 1, !tbaa !24
  %conv134 = zext i8 %152 to i32
  %153 = load i32, i32* %code_size, align 4, !tbaa !13
  %sub135 = sub nsw i32 %153, 8
  %154 = load i32, i32* %bits_left, align 4, !tbaa !13
  %sub136 = sub nsw i32 %sub135, %154
  %shl137 = shl i32 %conv134, %sub136
  %155 = load i32, i32* %code, align 4, !tbaa !13
  %add138 = add i32 %155, %shl137
  store i32 %add138, i32* %code, align 4, !tbaa !13
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.133, %if.then.129
  %156 = load i32, i32* %bits_left, align 4, !tbaa !13
  %add140 = add nsw i32 %156, 8
  store i32 %add140, i32* %bits_left, align 4, !tbaa !13
  %157 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i8, i8* %157, i64 2
  %158 = load i8, i8* %arrayidx141, align 1, !tbaa !24
  store i8 %158, i8* %bits, align 1, !tbaa !24
  %159 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr142 = getelementptr inbounds i8, i8* %159, i64 2
  store i8* %add.ptr142, i8** %p, align 8, !tbaa !1
  %160 = load i32, i32* %bytes_left, align 4, !tbaa !13
  %sub143 = sub nsw i32 %160, 2
  store i32 %sub143, i32* %bytes_left, align 4, !tbaa !13
  br label %if.end.151

if.else.144:                                      ; preds = %if.end.92
  %161 = load i8*, i8** %p, align 8, !tbaa !1
  %162 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp145 = icmp eq i8* %161, %162
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.else.144
  br label %out

if.end.148:                                       ; preds = %if.else.144
  %163 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr149 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %incdec.ptr149, i8** %p, align 8, !tbaa !1
  %164 = load i8, i8* %incdec.ptr149, align 1, !tbaa !24
  store i8 %164, i8* %bits, align 1, !tbaa !24
  %165 = load i32, i32* %bytes_left, align 4, !tbaa !13
  %dec150 = add nsw i32 %165, -1
  store i32 %dec150, i32* %bytes_left, align 4, !tbaa !13
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.148, %if.end.139
  %166 = load i32, i32* %low_order, align 4, !tbaa !13
  %tobool152 = icmp ne i32 %166, 0
  br i1 %tobool152, label %if.then.153, label %if.else.159

if.then.153:                                      ; preds = %if.end.151
  %167 = load i8, i8* %bits, align 1, !tbaa !24
  %conv154 = zext i8 %167 to i32
  %168 = load i32, i32* %bits_left, align 4, !tbaa !13
  %shl155 = shl i32 %conv154, %168
  %169 = load i32, i32* %code, align 4, !tbaa !13
  %add156 = add i32 %169, %shl155
  store i32 %add156, i32* %code, align 4, !tbaa !13
  %170 = load i32, i32* %code_size, align 4, !tbaa !13
  %sub157 = sub nsw i32 8, %170
  %171 = load i32, i32* %bits_left, align 4, !tbaa !13
  %add158 = add nsw i32 %171, %sub157
  store i32 %add158, i32* %bits_left, align 4, !tbaa !13
  br label %if.end.165

if.else.159:                                      ; preds = %if.end.151
  %172 = load i32, i32* %code_size, align 4, !tbaa !13
  %sub160 = sub nsw i32 8, %172
  %173 = load i32, i32* %bits_left, align 4, !tbaa !13
  %add161 = add nsw i32 %173, %sub160
  store i32 %add161, i32* %bits_left, align 4, !tbaa !13
  %174 = load i8, i8* %bits, align 1, !tbaa !24
  %conv162 = zext i8 %174 to i32
  %175 = load i32, i32* %bits_left, align 4, !tbaa !13
  %shr163 = ashr i32 %conv162, %175
  %176 = load i32, i32* %code, align 4, !tbaa !13
  %add164 = add nsw i32 %176, %shr163
  store i32 %add164, i32* %code, align 4, !tbaa !13
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.159, %if.then.153
  br label %if.end.178

if.else.166:                                      ; preds = %top
  %177 = load i32, i32* %low_order, align 4, !tbaa !13
  %tobool167 = icmp ne i32 %177, 0
  br i1 %tobool167, label %if.then.168, label %if.else.173

if.then.168:                                      ; preds = %if.else.166
  %178 = load i8, i8* %bits, align 1, !tbaa !24
  %conv169 = zext i8 %178 to i32
  %179 = load i32, i32* %bits_left, align 4, !tbaa !13
  %sub170 = sub nsw i32 8, %179
  %shr171 = ashr i32 %conv169, %sub170
  store i32 %shr171, i32* %code, align 4, !tbaa !13
  %180 = load i32, i32* %code_size, align 4, !tbaa !13
  %181 = load i32, i32* %bits_left, align 4, !tbaa !13
  %sub172 = sub nsw i32 %181, %180
  store i32 %sub172, i32* %bits_left, align 4, !tbaa !13
  br label %if.end.177

if.else.173:                                      ; preds = %if.else.166
  %182 = load i32, i32* %code_size, align 4, !tbaa !13
  %183 = load i32, i32* %bits_left, align 4, !tbaa !13
  %sub174 = sub nsw i32 %183, %182
  store i32 %sub174, i32* %bits_left, align 4, !tbaa !13
  %184 = load i8, i8* %bits, align 1, !tbaa !24
  %conv175 = zext i8 %184 to i32
  %185 = load i32, i32* %bits_left, align 4, !tbaa !13
  %shr176 = ashr i32 %conv175, %185
  store i32 %shr176, i32* %code, align 4, !tbaa !13
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.173, %if.then.168
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.end.165
  %186 = load i32, i32* %code_mask, align 4, !tbaa !13
  %187 = load i32, i32* %code, align 4, !tbaa !13
  %and = and i32 %187, %186
  store i32 %and, i32* %code, align 4, !tbaa !13
  br label %do.body.179

do.body.179:                                      ; preds = %if.end.178
  br label %do.cond.180

do.cond.180:                                      ; preds = %do.body.179
  br label %do.end.181

do.end.181:                                       ; preds = %do.cond.180
  %188 = load i32, i32* %code, align 4, !tbaa !13
  %189 = load i32, i32* %next_code, align 4, !tbaa !13
  %cmp182 = icmp sge i32 %188, %189
  br i1 %cmp182, label %if.then.184, label %if.end.215

if.then.184:                                      ; preds = %do.end.181
  %190 = load i32, i32* %code, align 4, !tbaa !13
  %191 = load i32, i32* %next_code, align 4, !tbaa !13
  %cmp185 = icmp sgt i32 %190, %191
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.then.184
  store i32 -2, i32* %status, align 4, !tbaa !13
  br label %out

if.end.188:                                       ; preds = %if.then.184
  %192 = load i32, i32* %prev_code, align 4, !tbaa !13
  store i32 %192, i32* %c, align 4, !tbaa !13
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.195, %if.end.188
  %193 = load i32, i32* %c, align 4, !tbaa !13
  %194 = load i32, i32* %eod, align 4, !tbaa !13
  %cmp190 = icmp ne i32 %193, %194
  br i1 %cmp190, label %for.body.192, label %for.end.200

for.body.192:                                     ; preds = %for.cond.189
  %195 = load i32, i32* %c, align 4, !tbaa !13
  %conv193 = trunc i32 %195 to i8
  %196 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc_next, align 8, !tbaa !1
  %datum194 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %196, i32 0, i32 0
  store i8 %conv193, i8* %datum194, align 1, !tbaa !37
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.body.192
  %197 = load i32, i32* %c, align 4, !tbaa !13
  %idxprom196 = sext i32 %197 to i64
  %198 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %198, i64 %idxprom196
  %prefix198 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %arrayidx197, i32 0, i32 2
  %199 = load i16, i16* %prefix198, align 2, !tbaa !34
  %conv199 = zext i16 %199 to i32
  store i32 %conv199, i32* %c, align 4, !tbaa !13
  br label %for.cond.189

for.end.200:                                      ; preds = %for.cond.189
  %200 = load i32, i32* %prev_len, align 4, !tbaa !13
  %add201 = add i32 %200, 1
  store i32 %add201, i32* %len, align 4, !tbaa !13
  %201 = load i32, i32* %len, align 4, !tbaa !13
  %cmp202 = icmp ult i32 %201, 255
  br i1 %cmp202, label %cond.true.204, label %cond.false.205

cond.true.204:                                    ; preds = %for.end.200
  %202 = load i32, i32* %len, align 4, !tbaa !13
  br label %cond.end.206

cond.false.205:                                   ; preds = %for.end.200
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.true.204
  %cond207 = phi i32 [ %202, %cond.true.204 ], [ 255, %cond.false.205 ]
  %conv208 = trunc i32 %cond207 to i8
  %203 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc_next, align 8, !tbaa !1
  %len209 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %203, i32 0, i32 1
  store i8 %conv208, i8* %len209, align 1, !tbaa !39
  %204 = load i32, i32* %prev_code, align 4, !tbaa !13
  %conv210 = trunc i32 %204 to i16
  %205 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc_next, align 8, !tbaa !1
  %prefix211 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %205, i32 0, i32 2
  store i16 %conv210, i16* %prefix211, align 2, !tbaa !34
  br label %do.body.212

do.body.212:                                      ; preds = %cond.end.206
  br label %do.cond.213

do.cond.213:                                      ; preds = %do.body.212
  br label %do.end.214

do.end.214:                                       ; preds = %do.cond.213
  br label %if.end.215

if.end.215:                                       ; preds = %do.end.214, %do.end.181
  br label %reset

reset:                                            ; preds = %if.then.384, %if.end.215
  %206 = load i32, i32* %code, align 4, !tbaa !13
  %idxprom216 = sext i32 %206 to i64
  %207 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %207, i64 %idxprom216
  %len218 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %arrayidx217, i32 0, i32 1
  %208 = load i8, i8* %len218, align 1, !tbaa !39
  %conv219 = zext i8 %208 to i32
  store i32 %conv219, i32* %len, align 4, !tbaa !13
  %209 = load i32, i32* %len, align 4, !tbaa !13
  %cmp220 = icmp eq i32 %209, 255
  br i1 %cmp220, label %if.then.222, label %if.end.261

if.then.222:                                      ; preds = %reset
  %210 = load i32, i32* %code, align 4, !tbaa !13
  %211 = load i32, i32* %code_escape, align 4, !tbaa !13
  %add223 = add nsw i32 %211, 0
  %cmp224 = icmp eq i32 %210, %add223
  br i1 %cmp224, label %if.then.226, label %if.else.241

if.then.226:                                      ; preds = %if.then.222
  br label %do.body.227

do.body.227:                                      ; preds = %if.then.226
  br label %do.cond.228

do.cond.228:                                      ; preds = %do.body.227
  br label %do.end.229

do.end.229:                                       ; preds = %do.cond.228
  %212 = load i32, i32* %code_escape, align 4, !tbaa !13
  %add230 = add nsw i32 %212, 2
  store i32 %add230, i32* %next_code, align 4, !tbaa !13
  %213 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %214 = load i32, i32* %code_escape, align 4, !tbaa !13
  %add231 = add nsw i32 %214, 2
  %idx.ext232 = sext i32 %add231 to i64
  %add.ptr233 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %213, i64 %idx.ext232
  store %struct.lzw_decode_s* %add.ptr233, %struct.lzw_decode_s** %dc_next, align 8, !tbaa !1
  %215 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %InitialCodeLength234 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %215, i32 0, i32 5
  %216 = load i32, i32* %InitialCodeLength234, align 4, !tbaa !29
  %add235 = add nsw i32 %216, 1
  store i32 %add235, i32* %code_size, align 4, !tbaa !13
  %217 = load i32, i32* %code_size, align 4, !tbaa !13
  %shl236 = shl i32 1, %217
  %sub237 = sub nsw i32 %shl236, 1
  store i32 %sub237, i32* %code_mask, align 4, !tbaa !13
  %218 = load i32, i32* %code_mask, align 4, !tbaa !13
  %add238 = add nsw i32 %218, 1
  %219 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %EarlyChange239 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %219, i32 0, i32 8
  %220 = load i32, i32* %EarlyChange239, align 4, !tbaa !31
  %sub240 = sub nsw i32 %add238, %220
  store i32 %sub240, i32* %switch_code, align 4, !tbaa !13
  store i32 -1, i32* %prev_code, align 4, !tbaa !13
  br label %top

if.else.241:                                      ; preds = %if.then.222
  %221 = load i32, i32* %code, align 4, !tbaa !13
  %222 = load i32, i32* %eod, align 4, !tbaa !13
  %cmp242 = icmp eq i32 %221, %222
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.else.241
  store i32 -1, i32* %status, align 4, !tbaa !13
  br label %out

if.end.245:                                       ; preds = %if.else.241
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245
  %223 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %223, i32* %c, align 4, !tbaa !13
  store i32 0, i32* %len, align 4, !tbaa !13
  br label %for.cond.247

for.cond.247:                                     ; preds = %for.inc.255, %if.end.246
  %224 = load i32, i32* %c, align 4, !tbaa !13
  %225 = load i32, i32* %eod, align 4, !tbaa !13
  %cmp248 = icmp ne i32 %224, %225
  br i1 %cmp248, label %for.body.250, label %for.end.257

for.body.250:                                     ; preds = %for.cond.247
  %226 = load i32, i32* %c, align 4, !tbaa !13
  %idxprom251 = sext i32 %226 to i64
  %227 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %227, i64 %idxprom251
  %prefix253 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %arrayidx252, i32 0, i32 2
  %228 = load i16, i16* %prefix253, align 2, !tbaa !34
  %conv254 = zext i16 %228 to i32
  store i32 %conv254, i32* %c, align 4, !tbaa !13
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.body.250
  %229 = load i32, i32* %len, align 4, !tbaa !13
  %inc256 = add i32 %229, 1
  store i32 %inc256, i32* %len, align 4, !tbaa !13
  br label %for.cond.247

for.end.257:                                      ; preds = %for.cond.247
  br label %do.body.258

do.body.258:                                      ; preds = %for.end.257
  br label %do.cond.259

do.cond.259:                                      ; preds = %do.body.258
  br label %do.end.260

do.end.260:                                       ; preds = %do.cond.259
  br label %if.end.261

if.end.261:                                       ; preds = %do.end.260, %reset
  %230 = load i8*, i8** %wlimit, align 8, !tbaa !1
  %231 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast262 = ptrtoint i8* %230 to i64
  %sub.ptr.rhs.cast263 = ptrtoint i8* %231 to i64
  %sub.ptr.sub264 = sub i64 %sub.ptr.lhs.cast262, %sub.ptr.rhs.cast263
  %232 = load i32, i32* %len, align 4, !tbaa !13
  %conv265 = zext i32 %232 to i64
  %cmp266 = icmp slt i64 %sub.ptr.sub264, %conv265
  br i1 %cmp266, label %if.then.268, label %if.end.272

if.then.268:                                      ; preds = %if.end.261
  %233 = load i32, i32* %code, align 4, !tbaa !13
  %234 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %copy_code269 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %234, i32 0, i32 17
  store i32 %233, i32* %copy_code269, align 4, !tbaa !20
  %235 = load i32, i32* %len, align 4, !tbaa !13
  %236 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %copy_len270 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %236, i32 0, i32 18
  store i32 %235, i32* %copy_len270, align 4, !tbaa !38
  %237 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %copy_left271 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %237, i32 0, i32 19
  store i32 %235, i32* %copy_left271, align 4, !tbaa !33
  store i32 1, i32* %status, align 4, !tbaa !13
  br label %out

if.end.272:                                       ; preds = %if.end.261
  %238 = load i32, i32* %code, align 4, !tbaa !13
  %idxprom273 = sext i32 %238 to i64
  %239 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %arrayidx274 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %239, i64 %idxprom273
  store %struct.lzw_decode_s* %arrayidx274, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %240 = load i32, i32* %len, align 4, !tbaa !13
  switch i32 %240, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.295
    i32 1, label %sw.bb.301
  ]

sw.default:                                       ; preds = %if.end.272
  %241 = bitcast i8** %q1275 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %241) #2
  %242 = load i32, i32* %len, align 4, !tbaa !13
  %243 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext276 = zext i32 %242 to i64
  %add.ptr277 = getelementptr inbounds i8, i8* %243, i64 %idx.ext276
  store i8* %add.ptr277, i8** %q, align 8, !tbaa !1
  store i8* %add.ptr277, i8** %q1275, align 8, !tbaa !1
  %244 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %244, i32* %c, align 4, !tbaa !13
  br label %do.body.278

do.body.278:                                      ; preds = %do.cond.283, %sw.default
  %245 = load i32, i32* %c, align 4, !tbaa !13
  %idxprom279 = sext i32 %245 to i64
  %246 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %arrayidx280 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %246, i64 %idxprom279
  store %struct.lzw_decode_s* %arrayidx280, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %datum281 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %arrayidx280, i32 0, i32 0
  %247 = load i8, i8* %datum281, align 1, !tbaa !37
  %248 = load i8*, i8** %q1275, align 8, !tbaa !1
  %incdec.ptr282 = getelementptr inbounds i8, i8* %248, i32 -1
  store i8* %incdec.ptr282, i8** %q1275, align 8, !tbaa !1
  store i8 %247, i8* %248, align 1, !tbaa !24
  br label %do.cond.283

do.cond.283:                                      ; preds = %do.body.278
  %249 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %prefix284 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %249, i32 0, i32 2
  %250 = load i16, i16* %prefix284, align 2, !tbaa !34
  %conv285 = zext i16 %250 to i32
  store i32 %conv285, i32* %c, align 4, !tbaa !13
  %251 = load i32, i32* %eod, align 4, !tbaa !13
  %cmp286 = icmp ne i32 %conv285, %251
  br i1 %cmp286, label %do.body.278, label %do.end.288

do.end.288:                                       ; preds = %do.cond.283
  %252 = load i8*, i8** %q1275, align 8, !tbaa !1
  %arrayidx289 = getelementptr inbounds i8, i8* %252, i64 1
  %253 = load i8, i8* %arrayidx289, align 1, !tbaa !24
  store i8 %253, i8* %b, align 1, !tbaa !24
  %254 = bitcast i8** %q1275 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #2
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.272
  %255 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %datum290 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %255, i32 0, i32 0
  %256 = load i8, i8* %datum290, align 1, !tbaa !37
  %257 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx291 = getelementptr inbounds i8, i8* %257, i64 3
  store i8 %256, i8* %arrayidx291, align 1, !tbaa !24
  %258 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %prefix292 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %258, i32 0, i32 2
  %259 = load i16, i16* %prefix292, align 2, !tbaa !34
  %idxprom293 = zext i16 %259 to i64
  %260 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %260, i64 %idxprom293
  store %struct.lzw_decode_s* %arrayidx294, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  br label %sw.bb.295

sw.bb.295:                                        ; preds = %if.end.272, %sw.bb
  %261 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %datum296 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %261, i32 0, i32 0
  %262 = load i8, i8* %datum296, align 1, !tbaa !37
  %263 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx297 = getelementptr inbounds i8, i8* %263, i64 2
  store i8 %262, i8* %arrayidx297, align 1, !tbaa !24
  %264 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %prefix298 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %264, i32 0, i32 2
  %265 = load i16, i16* %prefix298, align 2, !tbaa !34
  %idxprom299 = zext i16 %265 to i64
  %266 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %table, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %266, i64 %idxprom299
  store %struct.lzw_decode_s* %arrayidx300, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  br label %sw.bb.301

sw.bb.301:                                        ; preds = %if.end.272, %sw.bb.295
  %267 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %datum302 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %267, i32 0, i32 0
  %268 = load i8, i8* %datum302, align 1, !tbaa !37
  store i8 %268, i8* %b, align 1, !tbaa !24
  %269 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds i8, i8* %269, i64 1
  store i8 %268, i8* %arrayidx303, align 1, !tbaa !24
  %270 = load i32, i32* %len, align 4, !tbaa !13
  %271 = load i8*, i8** %q, align 8, !tbaa !1
  %idx.ext304 = zext i32 %270 to i64
  %add.ptr305 = getelementptr inbounds i8, i8* %271, i64 %idx.ext304
  store i8* %add.ptr305, i8** %q, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.301, %do.end.288
  br label %add.306

add.306:                                          ; preds = %sw.epilog, %cleanup
  %272 = load i32, i32* %prev_code, align 4, !tbaa !13
  %cmp307 = icmp sge i32 %272, 0
  br i1 %cmp307, label %if.then.309, label %if.end.422

if.then.309:                                      ; preds = %add.306
  %273 = load i32, i32* %next_code, align 4, !tbaa !13
  %cmp310 = icmp eq i32 %273, 4096
  br i1 %cmp310, label %if.then.312, label %if.end.387

if.then.312:                                      ; preds = %if.then.309
  %274 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %BlockData313 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %274, i32 0, i32 7
  %275 = load i32, i32* %BlockData313, align 4, !tbaa !32
  %tobool314 = icmp ne i32 %275, 0
  br i1 %tobool314, label %if.end.386, label %if.then.315

if.then.315:                                      ; preds = %if.then.312
  %276 = load i32, i32* %bits_left, align 4, !tbaa !13
  %cmp316 = icmp slt i32 %276, 8
  br i1 %cmp316, label %land.lhs.true, label %if.end.323

land.lhs.true:                                    ; preds = %if.then.315
  %277 = load i8*, i8** %p, align 8, !tbaa !1
  %278 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %cmp318 = icmp uge i8* %277, %278
  br i1 %cmp318, label %land.lhs.true.320, label %if.end.323

land.lhs.true.320:                                ; preds = %land.lhs.true
  %279 = load i32, i32* %last.addr, align 4, !tbaa !13
  %tobool321 = icmp ne i32 %279, 0
  br i1 %tobool321, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %land.lhs.true.320
  br label %out

if.end.323:                                       ; preds = %land.lhs.true.320, %land.lhs.true, %if.then.315
  %280 = load i32, i32* %bits_left, align 4, !tbaa !13
  %conv324 = sext i32 %280 to i64
  %281 = load i8*, i8** %rlimit, align 8, !tbaa !1
  %282 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast325 = ptrtoint i8* %281 to i64
  %sub.ptr.rhs.cast326 = ptrtoint i8* %282 to i64
  %sub.ptr.sub327 = sub i64 %sub.ptr.lhs.cast325, %sub.ptr.rhs.cast326
  %shl328 = shl i64 %sub.ptr.sub327, 3
  %add329 = add nsw i64 %conv324, %shl328
  %283 = load i32, i32* %code_size, align 4, !tbaa !13
  %conv330 = sext i32 %283 to i64
  %cmp331 = icmp slt i64 %add329, %conv330
  br i1 %cmp331, label %if.then.333, label %if.end.337

if.then.333:                                      ; preds = %if.end.323
  %284 = load i32, i32* %last.addr, align 4, !tbaa !13
  %tobool334 = icmp ne i32 %284, 0
  br i1 %tobool334, label %if.then.335, label %if.end.336

if.then.335:                                      ; preds = %if.then.333
  store i32 -2, i32* %status, align 4, !tbaa !13
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.335, %if.then.333
  br label %out

if.end.337:                                       ; preds = %if.end.323
  %285 = load i32, i32* %low_order, align 4, !tbaa !13
  %tobool338 = icmp ne i32 %285, 0
  br i1 %tobool338, label %if.then.339, label %if.else.357

if.then.339:                                      ; preds = %if.end.337
  %286 = load i8, i8* %bits, align 1, !tbaa !24
  %conv340 = zext i8 %286 to i32
  %287 = load i32, i32* %bits_left, align 4, !tbaa !13
  %sub341 = sub nsw i32 8, %287
  %shr342 = ashr i32 %conv340, %sub341
  store i32 %shr342, i32* %code, align 4, !tbaa !13
  %288 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr343 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %incdec.ptr343, i8** %p, align 8, !tbaa !1
  %289 = load i8, i8* %incdec.ptr343, align 1, !tbaa !24
  store i8 %289, i8* %bits, align 1, !tbaa !24
  %conv344 = zext i8 %289 to i32
  %290 = load i32, i32* %bits_left, align 4, !tbaa !13
  %shl345 = shl i32 %conv344, %290
  %291 = load i32, i32* %code, align 4, !tbaa !13
  %add346 = add nsw i32 %291, %shl345
  store i32 %add346, i32* %code, align 4, !tbaa !13
  %292 = load i32, i32* %bits_left, align 4, !tbaa !13
  %add347 = add nsw i32 %292, 8
  %293 = load i32, i32* %code_size, align 4, !tbaa !13
  %cmp348 = icmp slt i32 %add347, %293
  br i1 %cmp348, label %if.then.350, label %if.end.356

if.then.350:                                      ; preds = %if.then.339
  %294 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr351 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %incdec.ptr351, i8** %p, align 8, !tbaa !1
  %295 = load i8, i8* %incdec.ptr351, align 1, !tbaa !24
  store i8 %295, i8* %bits, align 1, !tbaa !24
  %conv352 = zext i8 %295 to i32
  %296 = load i32, i32* %bits_left, align 4, !tbaa !13
  %add353 = add nsw i32 %296, 8
  %shl354 = shl i32 %conv352, %add353
  %297 = load i32, i32* %code, align 4, !tbaa !13
  %add355 = add nsw i32 %297, %shl354
  store i32 %add355, i32* %code, align 4, !tbaa !13
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.350, %if.then.339
  br label %if.end.378

if.else.357:                                      ; preds = %if.end.337
  %298 = load i8, i8* %bits, align 1, !tbaa !24
  %conv358 = zext i8 %298 to i32
  %299 = load i32, i32* %bits_left, align 4, !tbaa !13
  %shl359 = shl i32 1, %299
  %sub360 = sub nsw i32 %shl359, 1
  %and361 = and i32 %conv358, %sub360
  store i32 %and361, i32* %code, align 4, !tbaa !13
  %300 = load i32, i32* %code, align 4, !tbaa !13
  %shl362 = shl i32 %300, 8
  %301 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr363 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %incdec.ptr363, i8** %p, align 8, !tbaa !1
  %302 = load i8, i8* %incdec.ptr363, align 1, !tbaa !24
  store i8 %302, i8* %bits, align 1, !tbaa !24
  %conv364 = zext i8 %302 to i32
  %add365 = add nsw i32 %shl362, %conv364
  store i32 %add365, i32* %code, align 4, !tbaa !13
  %303 = load i32, i32* %bits_left, align 4, !tbaa !13
  %add366 = add nsw i32 %303, 8
  %304 = load i32, i32* %code_size, align 4, !tbaa !13
  %cmp367 = icmp slt i32 %add366, %304
  br i1 %cmp367, label %if.then.369, label %if.end.374

if.then.369:                                      ; preds = %if.else.357
  %305 = load i32, i32* %code, align 4, !tbaa !13
  %shl370 = shl i32 %305, 8
  %306 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr371 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %incdec.ptr371, i8** %p, align 8, !tbaa !1
  %307 = load i8, i8* %incdec.ptr371, align 1, !tbaa !24
  store i8 %307, i8* %bits, align 1, !tbaa !24
  %conv372 = zext i8 %307 to i32
  %add373 = add nsw i32 %shl370, %conv372
  store i32 %add373, i32* %code, align 4, !tbaa !13
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.369, %if.else.357
  %308 = load i32, i32* %bits_left, align 4, !tbaa !13
  %309 = load i32, i32* %code_size, align 4, !tbaa !13
  %sub375 = sub nsw i32 %308, %309
  %and376 = and i32 %sub375, 7
  %310 = load i32, i32* %code, align 4, !tbaa !13
  %shr377 = ashr i32 %310, %and376
  store i32 %shr377, i32* %code, align 4, !tbaa !13
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.374, %if.end.356
  %311 = load i32, i32* %bits_left, align 4, !tbaa !13
  %312 = load i32, i32* %code_size, align 4, !tbaa !13
  %sub379 = sub nsw i32 %311, %312
  %and380 = and i32 %sub379, 7
  store i32 %and380, i32* %bits_left, align 4, !tbaa !13
  %313 = load i32, i32* %code, align 4, !tbaa !13
  %314 = load i32, i32* %code_escape, align 4, !tbaa !13
  %add381 = add nsw i32 %314, 0
  %cmp382 = icmp eq i32 %313, %add381
  br i1 %cmp382, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %if.end.378
  br label %reset

if.end.385:                                       ; preds = %if.end.378
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.then.312
  store i32 -2, i32* %status, align 4, !tbaa !13
  br label %out

if.end.387:                                       ; preds = %if.then.309
  %315 = load i8, i8* %b, align 1, !tbaa !24
  %316 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc_next, align 8, !tbaa !1
  %datum388 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %316, i32 0, i32 0
  store i8 %315, i8* %datum388, align 1, !tbaa !37
  %317 = load i32, i32* %prev_len, align 4, !tbaa !13
  %cmp389 = icmp ult i32 %317, 254
  br i1 %cmp389, label %cond.true.391, label %cond.false.392

cond.true.391:                                    ; preds = %if.end.387
  %318 = load i32, i32* %prev_len, align 4, !tbaa !13
  br label %cond.end.393

cond.false.392:                                   ; preds = %if.end.387
  br label %cond.end.393

cond.end.393:                                     ; preds = %cond.false.392, %cond.true.391
  %cond394 = phi i32 [ %318, %cond.true.391 ], [ 254, %cond.false.392 ]
  %add395 = add i32 %cond394, 1
  %conv396 = trunc i32 %add395 to i8
  %319 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc_next, align 8, !tbaa !1
  %len397 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %319, i32 0, i32 1
  store i8 %conv396, i8* %len397, align 1, !tbaa !39
  %320 = load i32, i32* %prev_code, align 4, !tbaa !13
  %conv398 = trunc i32 %320 to i16
  %321 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc_next, align 8, !tbaa !1
  %prefix399 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %321, i32 0, i32 2
  store i16 %conv398, i16* %prefix399, align 2, !tbaa !34
  %322 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc_next, align 8, !tbaa !1
  %incdec.ptr400 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %322, i32 1
  store %struct.lzw_decode_s* %incdec.ptr400, %struct.lzw_decode_s** %dc_next, align 8, !tbaa !1
  br label %do.body.401

do.body.401:                                      ; preds = %cond.end.393
  br label %do.cond.402

do.cond.402:                                      ; preds = %do.body.401
  br label %do.end.403

do.end.403:                                       ; preds = %do.cond.402
  %323 = load i32, i32* %next_code, align 4, !tbaa !13
  %inc404 = add nsw i32 %323, 1
  store i32 %inc404, i32* %next_code, align 4, !tbaa !13
  %324 = load i32, i32* %switch_code, align 4, !tbaa !13
  %cmp405 = icmp eq i32 %inc404, %324
  br i1 %cmp405, label %if.then.407, label %if.end.421

if.then.407:                                      ; preds = %do.end.403
  %325 = load i32, i32* %next_code, align 4, !tbaa !13
  %cmp408 = icmp slt i32 %325, 4095
  br i1 %cmp408, label %if.then.410, label %if.end.420

if.then.410:                                      ; preds = %if.then.407
  %326 = load i32, i32* %code_size, align 4, !tbaa !13
  %inc411 = add nsw i32 %326, 1
  store i32 %inc411, i32* %code_size, align 4, !tbaa !13
  %327 = load i32, i32* %code_size, align 4, !tbaa !13
  %shl412 = shl i32 1, %327
  %sub413 = sub nsw i32 %shl412, 1
  store i32 %sub413, i32* %code_mask, align 4, !tbaa !13
  %328 = load i32, i32* %code_mask, align 4, !tbaa !13
  %add414 = add nsw i32 %328, 1
  %329 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %EarlyChange415 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %329, i32 0, i32 8
  %330 = load i32, i32* %EarlyChange415, align 4, !tbaa !31
  %sub416 = sub nsw i32 %add414, %330
  store i32 %sub416, i32* %switch_code, align 4, !tbaa !13
  br label %do.body.417

do.body.417:                                      ; preds = %if.then.410
  br label %do.cond.418

do.cond.418:                                      ; preds = %do.body.417
  br label %do.end.419

do.end.419:                                       ; preds = %do.cond.418
  br label %if.end.420

if.end.420:                                       ; preds = %do.end.419, %if.then.407
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %do.end.403
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %add.306
  %331 = load i32, i32* %code, align 4, !tbaa !13
  store i32 %331, i32* %prev_code, align 4, !tbaa !13
  %332 = load i32, i32* %len, align 4, !tbaa !13
  store i32 %332, i32* %prev_len, align 4, !tbaa !13
  br label %top

out:                                              ; preds = %if.end.386, %if.end.336, %if.then.322, %if.then.268, %if.then.244, %if.then.187, %if.then.147, %if.then.124, %if.then.114, %if.then.105, %if.then.81, %if.then.72
  %333 = load i8*, i8** %p, align 8, !tbaa !1
  %334 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr423 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %334, i32 0, i32 0
  store i8* %333, i8** %ptr423, align 8, !tbaa !14
  %335 = load i8*, i8** %q, align 8, !tbaa !1
  %336 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr424 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %336, i32 0, i32 1
  store i8* %335, i8** %ptr424, align 8, !tbaa !16
  %337 = load i32, i32* %code_size, align 4, !tbaa !13
  %338 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %code_size425 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %338, i32 0, i32 14
  store i32 %337, i32* %code_size425, align 4, !tbaa !27
  %339 = load i32, i32* %prev_code, align 4, !tbaa !13
  %340 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %prev_code426 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %340, i32 0, i32 15
  store i32 %339, i32* %prev_code426, align 4, !tbaa !21
  %341 = load i32, i32* %prev_len, align 4, !tbaa !13
  %342 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %prev_len427 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %342, i32 0, i32 16
  store i32 %341, i32* %prev_len427, align 4, !tbaa !22
  %343 = load i8, i8* %bits, align 1, !tbaa !24
  %conv428 = zext i8 %343 to i32
  %344 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %bits429 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %344, i32 0, i32 9
  store i32 %conv428, i32* %bits429, align 4, !tbaa !23
  %345 = load i32, i32* %bits_left, align 4, !tbaa !13
  %346 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %bits_left430 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %346, i32 0, i32 10
  store i32 %345, i32* %bits_left430, align 4, !tbaa !25
  %347 = load i32, i32* %bytes_left, align 4, !tbaa !13
  %348 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %bytes_left431 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %348, i32 0, i32 11
  store i32 %347, i32* %bytes_left431, align 4, !tbaa !26
  %349 = load i32, i32* %next_code, align 4, !tbaa !13
  %350 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %next_code432 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %350, i32 0, i32 13
  store i32 %349, i32* %next_code432, align 4, !tbaa !28
  br label %do.body.433

do.body.433:                                      ; preds = %out
  br label %do.cond.434

do.cond.434:                                      ; preds = %do.body.433
  br label %do.end.435

do.end.435:                                       ; preds = %do.cond.434
  %351 = load i32, i32* %status, align 4, !tbaa !13
  store i32 %351, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.436

cleanup.436:                                      ; preds = %do.end.435, %cleanup
  %352 = bitcast i8** %q1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %352) #2
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  %353 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #2
  %354 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #2
  %355 = bitcast i32* %low_order to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #2
  %356 = bitcast i32* %eod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356) #2
  %357 = bitcast i32* %code_escape to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #2
  %358 = bitcast %struct.lzw_decode_s** %dc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #2
  %359 = bitcast %struct.lzw_decode_s** %dc_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #2
  %360 = bitcast %struct.lzw_decode_s** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #2
  %361 = bitcast i32* %next_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #2
  %362 = bitcast i32* %switch_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %362) #2
  %363 = bitcast i32* %code_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %363) #2
  %364 = bitcast i32* %code_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %364) #2
  %365 = bitcast i32* %bytes_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #2
  %366 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %366) #2
  call void @llvm.lifetime.end(i64 1, i8* %bits) #2
  %367 = bitcast i32* %prev_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %367) #2
  %368 = bitcast i32* %prev_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %368) #2
  %369 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %369) #2
  %370 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %370) #2
  %371 = bitcast i8** %wlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %371) #2
  %372 = bitcast i8** %rlimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %372) #2
  %373 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #2
  %374 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #2
  %375 = bitcast %struct.stream_LZW_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %375) #2
  %376 = load i32, i32* %retval
  ret i32 %376
}

declare void @s_LZW_release(%struct.stream_state_s*) #1

declare void @s_LZW_set_defaults(%struct.stream_state_s*) #1

; Function Attrs: nounwind uwtable
define internal i32 @s_LZWD_reset(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_LZW_state_s*, align 8
  %dc = alloca %struct.lzw_decode_s*, align 8
  %i = alloca i32, align 4
  %code_escape = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_LZW_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_LZW_state_s*
  store %struct.stream_LZW_state_s* %2, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast %struct.lzw_decode_s** %dc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %4, i32 0, i32 12
  %decode = bitcast %union._lzt* %table to %struct.lzw_decode_s**
  %5 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %decode, align 8, !tbaa !1
  store %struct.lzw_decode_s* %5, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %code_escape to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %InitialCodeLength = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %8, i32 0, i32 5
  %9 = load i32, i32* %InitialCodeLength, align 4, !tbaa !29
  %shl = shl i32 1, %9
  store i32 %shl, i32* %code_escape, align 4, !tbaa !13
  %10 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %bits_left = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %10, i32 0, i32 10
  store i32 0, i32* %bits_left, align 4, !tbaa !25
  %11 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %bytes_left = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %11, i32 0, i32 11
  store i32 0, i32* %bytes_left, align 4, !tbaa !26
  %12 = load i32, i32* %code_escape, align 4, !tbaa !13
  %add = add i32 %12, 2
  %13 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %next_code = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %13, i32 0, i32 13
  store i32 %add, i32* %next_code, align 4, !tbaa !28
  %14 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %InitialCodeLength1 = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %14, i32 0, i32 5
  %15 = load i32, i32* %InitialCodeLength1, align 4, !tbaa !29
  %add2 = add nsw i32 %15, 1
  %16 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %code_size = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %16, i32 0, i32 14
  store i32 %add2, i32* %code_size, align 4, !tbaa !27
  %17 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %prev_code = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %17, i32 0, i32 15
  store i32 -1, i32* %prev_code, align 4, !tbaa !21
  %18 = load %struct.stream_LZW_state_s*, %struct.stream_LZW_state_s** %ss, align 8, !tbaa !1
  %copy_code = getelementptr inbounds %struct.stream_LZW_state_s, %struct.stream_LZW_state_s* %18, i32 0, i32 17
  store i32 -1, i32* %copy_code, align 4, !tbaa !20
  %19 = load i32, i32* %code_escape, align 4, !tbaa !13
  %add3 = add i32 %19, 0
  %idxprom = zext i32 %add3 to i64
  %20 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %20, i64 %idxprom
  %len = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %arrayidx, i32 0, i32 1
  store i8 -1, i8* %len, align 1, !tbaa !39
  %21 = load i32, i32* %code_escape, align 4, !tbaa !13
  %add4 = add i32 %21, 1
  %idxprom5 = zext i32 %add4 to i64
  %22 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %22, i64 %idxprom5
  %len7 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %arrayidx6, i32 0, i32 1
  store i8 -1, i8* %len7, align 1, !tbaa !39
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %23 = load i32, i32* %i, align 4, !tbaa !13
  %24 = load i32, i32* %code_escape, align 4, !tbaa !13
  %cmp = icmp ult i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4, !tbaa !13
  %conv = trunc i32 %25 to i8
  %26 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %datum = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %26, i32 0, i32 0
  store i8 %conv, i8* %datum, align 1, !tbaa !37
  %27 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %len8 = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %27, i32 0, i32 1
  store i8 1, i8* %len8, align 1, !tbaa !39
  %28 = load i32, i32* %code_escape, align 4, !tbaa !13
  %add9 = add i32 %28, 1
  %conv10 = trunc i32 %add9 to i16
  %29 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %prefix = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %29, i32 0, i32 2
  store i16 %conv10, i16* %prefix, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  %31 = load %struct.lzw_decode_s*, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.lzw_decode_s, %struct.lzw_decode_s* %31, i32 1
  store %struct.lzw_decode_s* %incdec.ptr, %struct.lzw_decode_s** %dc, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = bitcast i32* %code_escape to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.lzw_decode_s** %dc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast %struct.stream_LZW_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

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
!5 = !{!6, !2, i64 8}
!6 = !{!"stream_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !2, i64 104}
!9 = !{!"gs_memory_s", !2, i64 0, !10, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!10 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!11 = !{!12, !7, i64 24}
!12 = !{!"stream_LZW_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !3, i64 136, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !2, i64 0}
!15 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!16 = !{!17, !2, i64 8}
!17 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!15, !2, i64 8}
!19 = !{!17, !2, i64 16}
!20 = !{!12, !7, i64 160}
!21 = !{!12, !7, i64 152}
!22 = !{!12, !7, i64 156}
!23 = !{!12, !7, i64 124}
!24 = !{!3, !3, i64 0}
!25 = !{!12, !7, i64 128}
!26 = !{!12, !7, i64 132}
!27 = !{!12, !7, i64 148}
!28 = !{!12, !7, i64 144}
!29 = !{!12, !7, i64 108}
!30 = !{!12, !7, i64 112}
!31 = !{!12, !7, i64 120}
!32 = !{!12, !7, i64 116}
!33 = !{!12, !7, i64 168}
!34 = !{!35, !36, i64 2}
!35 = !{!"lzw_decode_s", !3, i64 0, !3, i64 1, !36, i64 2}
!36 = !{!"short", !3, i64 0}
!37 = !{!35, !3, i64 0}
!38 = !{!12, !7, i64 164}
!39 = !{!35, !3, i64 1}
