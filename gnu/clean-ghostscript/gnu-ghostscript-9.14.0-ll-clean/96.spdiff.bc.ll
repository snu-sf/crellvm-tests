; ModuleID = './spdiff.bc'
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
%struct.stream_PDiff_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i8, i32, i32, [60 x i32] }

@st_PDiff_state = internal constant %struct.gs_memory_struct_type_s { i32 376, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@s_PDiffE_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_PDiff_state, i32 (%struct.stream_state_s*)* @s_PDiffE_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_PDiff_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_PDiff_set_defaults, i32 (%struct.stream_state_s*)* @s_PDiff_reinit }, align 8
@s_PDiffD_template = constant { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* } { %struct.gs_memory_struct_type_s* @st_PDiff_state, i32 (%struct.stream_state_s*)* @s_PDiffD_init, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)* @s_PDiff_process, i32 1, i32 1, void (%struct.stream_state_s*)* null, void (%struct.stream_state_s*)* @s_PDiff_set_defaults, i32 (%struct.stream_state_s*)* @s_PDiff_reinit }, align 8
@.str = private unnamed_addr constant [35 x i8] c"PixelDifferenceEncode/Decode state\00", align 1
@s_PDiffE_init.cb_values = internal constant [17 x i8] c"\00\00\05\00\0A\00\00\00\0F\00\00\00\00\00\00\00\14", align 16

; Function Attrs: nounwind uwtable
define internal i32 @s_PDiffE_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_PDiff_state_s*, align 8
  %bits_per_row = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PDiff_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PDiff_state_s*
  store %struct.stream_PDiff_state_s* %2, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i32* %bits_per_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %4, i32 0, i32 5
  %5 = load i32, i32* %Colors, align 4, !tbaa !5
  %6 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %6, i32 0, i32 6
  %7 = load i32, i32* %BitsPerComponent, align 4, !tbaa !8
  %mul = mul nsw i32 %5, %7
  %8 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %8, i32 0, i32 7
  %9 = load i32, i32* %Columns, align 4, !tbaa !9
  %mul1 = mul nsw i32 %mul, %9
  store i32 %mul1, i32* %bits_per_row, align 4, !tbaa !10
  %10 = load i32, i32* %bits_per_row, align 4, !tbaa !10
  %add = add nsw i32 %10, 7
  %shr = ashr i32 %add, 3
  %11 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %row_count = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %11, i32 0, i32 8
  store i32 %shr, i32* %row_count, align 4, !tbaa !11
  %12 = load i32, i32* %bits_per_row, align 4, !tbaa !10
  %sub = sub nsw i32 0, %12
  %and = and i32 %sub, 7
  %shl = shl i32 1, %and
  %sub2 = sub nsw i32 %shl, 1
  %conv = trunc i32 %sub2 to i8
  %13 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %end_mask = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %13, i32 0, i32 9
  store i8 %conv, i8* %end_mask, align 1, !tbaa !12
  %14 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %BitsPerComponent3 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %14, i32 0, i32 6
  %15 = load i32, i32* %BitsPerComponent3, align 4, !tbaa !8
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @s_PDiffE_init.cb_values, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv4 = zext i8 %16 to i32
  %17 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %Colors5 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %17, i32 0, i32 5
  %18 = load i32, i32* %Colors5, align 4, !tbaa !5
  %cmp = icmp sgt i32 %18, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %19 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %Colors7 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %19, i32 0, i32 5
  %20 = load i32, i32* %Colors7, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %20, %cond.false ]
  %add8 = add nsw i32 %conv4, %cond
  %add9 = add nsw i32 %add8, 0
  %21 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %case_index = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %21, i32 0, i32 10
  store i32 %add9, i32* %case_index, align 4, !tbaa !14
  %22 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call = call i32 @s_PDiff_reinit(%struct.stream_state_s* %22) #4
  %23 = bitcast i32* %bits_per_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast %struct.stream_PDiff_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @s_PDiff_process(%struct.stream_state_s* %st, %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_write_s* %pw, i32 %last) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %pr.addr = alloca %struct.stream_cursor_read_s*, align 8
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %last.addr = alloca i32, align 4
  %ss = alloca %struct.stream_PDiff_state_s*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %count = alloca i32, align 4
  %status = alloca i32, align 4
  %s0 = alloca i32, align 4
  %t = alloca i8, align 1
  %ti = alloca i32, align 4
  %end_mask = alloca i8, align 1
  %colors = alloca i32, align 4
  %nb = alloca i32, align 4
  %final = alloca i32, align 4
  %ndone = alloca i32, align 4
  %ci = alloca i32, align 4
  %rcount = alloca i32, align 4
  %wcount = alloca i32, align 4
  %cshift = alloca i32, align 4
  %shift = alloca i32, align 4
  %cshift41 = alloca i32, align 4
  %cshift180 = alloca i32, align 4
  %shift205 = alloca i32, align 4
  %cshift207 = alloca i32, align 4
  %shift396 = alloca i32, align 4
  %cshift399 = alloca i32, align 4
  %shift596 = alloca i32, align 4
  %cshift599 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s1974 = alloca i32, align 4
  %s11139 = alloca i32, align 4
  %s11170 = alloca i32, align 4
  %s11341 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s11383 = alloca i32, align 4
  %s21386 = alloca i32, align 4
  %s11420 = alloca i32, align 4
  %s21423 = alloca i32, align 4
  %s3 = alloca i32, align 4
  %s11474 = alloca i32, align 4
  %s21477 = alloca i32, align 4
  %s31480 = alloca i32, align 4
  %k = alloca i32, align 4
  %s11675 = alloca i32, align 4
  %s21678 = alloca i32, align 4
  %s11736 = alloca i32, align 4
  %s21739 = alloca i32, align 4
  %s11800 = alloca i32, align 4
  %s21803 = alloca i32, align 4
  %s31806 = alloca i32, align 4
  %s11879 = alloca i32, align 4
  %s21882 = alloca i32, align 4
  %s31885 = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  store %struct.stream_cursor_read_s* %pr, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  store i32 %last, i32* %last.addr, align 4, !tbaa !10
  %0 = bitcast %struct.stream_PDiff_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PDiff_state_s*
  store %struct.stream_PDiff_state_s* %2, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8, !tbaa !15
  store i8* %5, i8** %p, align 8, !tbaa !1
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %7, i32 0, i32 1
  %8 = load i8*, i8** %ptr1, align 8, !tbaa !17
  store i8* %8, i8** %q, align 8, !tbaa !1
  %9 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %status, align 4, !tbaa !10
  %11 = bitcast i32* %s0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %12, i32 0, i32 12
  %arrayidx = getelementptr inbounds [60 x i32], [60 x i32]* %prev, i32 0, i64 0
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !10
  store i32 %13, i32* %s0, align 4, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %t) #2
  store i8 0, i8* %t, align 1, !tbaa !13
  %14 = bitcast i32* %ti to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  call void @llvm.lifetime.start(i64 1, i8* %end_mask) #2
  %15 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %end_mask2 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %15, i32 0, i32 9
  %16 = load i8, i8* %end_mask2, align 1, !tbaa !12
  store i8 %16, i8* %end_mask, align 1, !tbaa !13
  %17 = bitcast i32* %colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %18, i32 0, i32 5
  %19 = load i32, i32* %Colors, align 4, !tbaa !5
  store i32 %19, i32* %colors, align 4, !tbaa !10
  %20 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32, i32* %colors, align 4, !tbaa !10
  %22 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %22, i32 0, i32 6
  %23 = load i32, i32* %BitsPerComponent, align 4, !tbaa !8
  %mul = mul nsw i32 %21, %23
  %shr = ashr i32 %mul, 3
  store i32 %shr, i32* %nb, align 4, !tbaa !10
  %24 = bitcast i32* %final to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast i32* %ndone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  br label %row

row:                                              ; preds = %if.then.1988, %entry
  %27 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %row_left = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %27, i32 0, i32 11
  %28 = load i32, i32* %row_left, align 4, !tbaa !19
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %row
  %29 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %row_count = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %29, i32 0, i32 8
  %30 = load i32, i32* %row_count, align 4, !tbaa !11
  %31 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %row_left3 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %31, i32 0, i32 11
  store i32 %30, i32* %row_left3, align 4, !tbaa !19
  store i32 0, i32* %s0, align 4, !tbaa !10
  %32 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev4 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %32, i32 0, i32 12
  %arrayidx5 = getelementptr inbounds [60 x i32], [60 x i32]* %prev4, i32 0, i64 1
  %33 = bitcast i32* %arrayidx5 to i8*
  %call = call i8* @memset(i8* %33, i32 0, i64 236) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %row
  %34 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #2
  %35 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %35, i32 0, i32 1
  %36 = load i8*, i8** %limit, align 8, !tbaa !20
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %rcount, align 4, !tbaa !10
  %38 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit6 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %39, i32 0, i32 2
  %40 = load i8*, i8** %limit6, align 8, !tbaa !21
  %41 = load i8*, i8** %q, align 8, !tbaa !1
  %sub.ptr.lhs.cast7 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i8* %41 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %conv10 = trunc i64 %sub.ptr.sub9 to i32
  store i32 %conv10, i32* %wcount, align 4, !tbaa !10
  %42 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %row_left11 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %42, i32 0, i32 11
  %43 = load i32, i32* %row_left11, align 4, !tbaa !19
  %44 = load i32, i32* %rcount, align 4, !tbaa !10
  %cmp12 = icmp ult i32 %43, %44
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %45 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %row_left15 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %45, i32 0, i32 11
  %46 = load i32, i32* %row_left15, align 4, !tbaa !19
  store i32 %46, i32* %rcount, align 4, !tbaa !10
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  %47 = load i32, i32* %wcount, align 4, !tbaa !10
  %48 = load i32, i32* %rcount, align 4, !tbaa !10
  %cmp17 = icmp slt i32 %47, %48
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  store i32 1, i32* %status, align 4, !tbaa !10
  %49 = load i32, i32* %wcount, align 4, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %50 = load i32, i32* %rcount, align 4, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %49, %cond.true ], [ %50, %cond.false ]
  store i32 %cond, i32* %count, align 4, !tbaa !10
  %51 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %rcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = load i32, i32* %last.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %53, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false.21

land.lhs.true:                                    ; preds = %cond.end
  %54 = load i32, i32* %status, align 4, !tbaa !10
  %tobool19 = icmp ne i32 %54, 0
  br i1 %tobool19, label %cond.false.21, label %cond.true.20

cond.true.20:                                     ; preds = %land.lhs.true
  br label %cond.end.22

cond.false.21:                                    ; preds = %land.lhs.true, %cond.end
  %55 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi i32 [ 1, %cond.true.20 ], [ %55, %cond.false.21 ]
  store i32 %cond23, i32* %final, align 4, !tbaa !10
  %56 = load i32, i32* %count, align 4, !tbaa !10
  %57 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %row_left24 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %57, i32 0, i32 11
  %58 = load i32, i32* %row_left24, align 4, !tbaa !19
  %sub = sub i32 %58, %56
  store i32 %sub, i32* %row_left24, align 4, !tbaa !19
  %59 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %case_index = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %59, i32 0, i32 10
  %60 = load i32, i32* %case_index, align 4, !tbaa !14
  switch i32 %60, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb.122
    i32 3, label %sw.bb.140
    i32 4, label %sw.bb.158
    i32 25, label %sw.bb.176
    i32 26, label %sw.bb.294
    i32 27, label %sw.bb.324
    i32 28, label %sw.bb.349
    i32 29, label %sw.bb.372
    i32 5, label %sw.bb.392
    i32 6, label %sw.bb.500
    i32 7, label %sw.bb.524
    i32 8, label %sw.bb.548
    i32 9, label %sw.bb.572
    i32 30, label %sw.bb.592
    i32 31, label %sw.bb.699
    i32 32, label %sw.bb.737
    i32 33, label %sw.bb.770
    i32 34, label %sw.bb.803
    i32 10, label %sw.bb.822
    i32 12, label %sw.bb.822
    i32 11, label %sw.bb.926
    i32 13, label %sw.bb.948
    i32 14, label %sw.bb.973
    i32 35, label %sw.bb.1010
    i32 37, label %sw.bb.1010
    i32 36, label %sw.bb.1114
    i32 38, label %sw.bb.1138
    i32 39, label %sw.bb.1169
    i32 15, label %sw.bb.1206
    i32 17, label %sw.bb.1206
    i32 40, label %sw.bb.1261
    i32 42, label %sw.bb.1261
    i32 16, label %sw.bb.1308
    i32 41, label %sw.bb.1325
    i32 18, label %sw.bb.1340
    i32 43, label %sw.bb.1382
    i32 19, label %sw.bb.1419
    i32 44, label %sw.bb.1473
    i32 20, label %sw.bb.1520
    i32 22, label %sw.bb.1520
    i32 45, label %sw.bb.1584
    i32 47, label %sw.bb.1584
    i32 21, label %sw.bb.1627
    i32 46, label %sw.bb.1650
    i32 23, label %sw.bb.1674
    i32 48, label %sw.bb.1735
    i32 24, label %sw.bb.1799
    i32 49, label %sw.bb.1878
  ]

sw.bb:                                            ; preds = %cond.end.22, %cond.end.22
  %61 = load i32, i32* %colors, align 4, !tbaa !10
  %cmp25 = icmp slt i32 %61, 8
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %sw.bb
  %62 = bitcast i32* %cshift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  %63 = load i32, i32* %colors, align 4, !tbaa !10
  %sub28 = sub nsw i32 8, %63
  store i32 %sub28, i32* %cshift, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.27
  %64 = load i32, i32* %count, align 4, !tbaa !10
  %cmp29 = icmp sge i32 %64, 1
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %66 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr31 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %add.ptr31, i8** %q, align 8, !tbaa !1
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  %68 = load i8, i8* %67, align 1, !tbaa !13
  store i8 %68, i8* %t, align 1, !tbaa !13
  %69 = load i8, i8* %t, align 1, !tbaa !13
  %conv32 = zext i8 %69 to i32
  %70 = load i32, i32* %s0, align 4, !tbaa !10
  %71 = load i32, i32* %cshift, align 4, !tbaa !10
  %shl = shl i32 %70, %71
  %72 = load i8, i8* %t, align 1, !tbaa !13
  %conv33 = zext i8 %72 to i32
  %73 = load i32, i32* %colors, align 4, !tbaa !10
  %shr34 = ashr i32 %conv33, %73
  %or = or i32 %shl, %shr34
  %xor = xor i32 %conv32, %or
  %conv35 = trunc i32 %xor to i8
  %74 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv35, i8* %74, align 1, !tbaa !13
  %75 = load i8, i8* %t, align 1, !tbaa !13
  %conv36 = zext i8 %75 to i32
  store i32 %conv36, i32* %s0, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i32, i32* %count, align 4, !tbaa !10
  %sub37 = sub nsw i32 %76, 1
  store i32 %sub37, i32* %count, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = bitcast i32* %cshift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %78 = load i32, i32* %colors, align 4, !tbaa !10
  %and = and i32 %78, 7
  %tobool38 = icmp ne i32 %and, 0
  br i1 %tobool38, label %if.then.39, label %if.else.80

if.then.39:                                       ; preds = %if.else
  %79 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #2
  %80 = load i32, i32* %colors, align 4, !tbaa !10
  %and40 = and i32 %80, 7
  store i32 %and40, i32* %shift, align 4, !tbaa !10
  %81 = bitcast i32* %cshift41 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #2
  %82 = load i32, i32* %shift, align 4, !tbaa !10
  %sub42 = sub nsw i32 8, %82
  store i32 %sub42, i32* %cshift41, align 4, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %if.then.39
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.77, %do.body
  %83 = load i32, i32* %count, align 4, !tbaa !10
  %84 = load i32, i32* %final, align 4, !tbaa !10
  %cmp44 = icmp sge i32 %83, %84
  br i1 %cmp44, label %for.body.46, label %for.end.79

for.body.46:                                      ; preds = %for.cond.43
  %85 = load i32, i32* %count, align 4, !tbaa !10
  %86 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp47 = icmp slt i32 %85, %86
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %for.body.46
  %87 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.51

cond.false.50:                                    ; preds = %for.body.46
  %88 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.49
  %cond52 = phi i32 [ %87, %cond.true.49 ], [ %88, %cond.false.50 ]
  store i32 %cond52, i32* %ndone, align 4, !tbaa !10
  store i32 1, i32* %ci, align 4, !tbaa !10
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.75, %cond.end.51
  %89 = load i32, i32* %ci, align 4, !tbaa !10
  %90 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp54 = icmp sle i32 %89, %90
  br i1 %cmp54, label %for.body.56, label %for.end.76

for.body.56:                                      ; preds = %for.cond.53
  %91 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %92 = load i32, i32* %s0, align 4, !tbaa !10
  %93 = load i32, i32* %cshift41, align 4, !tbaa !10
  %shl57 = shl i32 %92, %93
  %94 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom = sext i32 %94 to i64
  %95 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev58 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %95, i32 0, i32 12
  %arrayidx59 = getelementptr inbounds [60 x i32], [60 x i32]* %prev58, i32 0, i64 %idxprom
  %96 = load i32, i32* %arrayidx59, align 4, !tbaa !10
  %97 = load i32, i32* %shift, align 4, !tbaa !10
  %shr60 = lshr i32 %96, %97
  %or61 = or i32 %shl57, %shr60
  %conv62 = trunc i32 %or61 to i8
  store i8 %conv62, i8* %t, align 1, !tbaa !13
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  %99 = load i8, i8* %98, align 1, !tbaa !13
  %conv63 = zext i8 %99 to i32
  %100 = load i8, i8* %t, align 1, !tbaa !13
  %conv64 = zext i8 %100 to i32
  %xor65 = xor i32 %conv63, %conv64
  %conv66 = trunc i32 %xor65 to i8
  %101 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr67, i8** %q, align 8, !tbaa !1
  store i8 %conv66, i8* %incdec.ptr67, align 1, !tbaa !13
  %102 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom68 = sext i32 %102 to i64
  %103 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev69 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %103, i32 0, i32 12
  %arrayidx70 = getelementptr inbounds [60 x i32], [60 x i32]* %prev69, i32 0, i64 %idxprom68
  %104 = load i32, i32* %arrayidx70, align 4, !tbaa !10
  store i32 %104, i32* %s0, align 4, !tbaa !10
  %105 = load i8*, i8** %p, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !13
  %conv71 = zext i8 %106 to i32
  %107 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom72 = sext i32 %107 to i64
  %108 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev73 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %108, i32 0, i32 12
  %arrayidx74 = getelementptr inbounds [60 x i32], [60 x i32]* %prev73, i32 0, i64 %idxprom72
  store i32 %conv71, i32* %arrayidx74, align 4, !tbaa !10
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.56
  %109 = load i32, i32* %ci, align 4, !tbaa !10
  %inc = add nsw i32 %109, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !10
  br label %for.cond.53

for.end.76:                                       ; preds = %for.cond.53
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.76
  %110 = load i32, i32* %ndone, align 4, !tbaa !10
  %111 = load i32, i32* %count, align 4, !tbaa !10
  %sub78 = sub nsw i32 %111, %110
  store i32 %sub78, i32* %count, align 4, !tbaa !10
  br label %for.cond.43

for.end.79:                                       ; preds = %for.cond.43
  br label %do.cond

do.cond:                                          ; preds = %for.end.79
  br label %do.end

do.end:                                           ; preds = %do.cond
  %112 = bitcast i32* %cshift41 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #2
  %113 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  br label %if.end.120

if.else.80:                                       ; preds = %if.else
  br label %do.body.81

do.body.81:                                       ; preds = %if.else.80
  %114 = load i32, i32* %s0, align 4, !tbaa !10
  %115 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev82 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %115, i32 0, i32 12
  %arrayidx83 = getelementptr inbounds [60 x i32], [60 x i32]* %prev82, i32 0, i64 0
  store i32 %114, i32* %arrayidx83, align 4, !tbaa !10
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.113, %do.body.81
  %116 = load i32, i32* %count, align 4, !tbaa !10
  %117 = load i32, i32* %final, align 4, !tbaa !10
  %cmp85 = icmp sge i32 %116, %117
  br i1 %cmp85, label %for.body.87, label %for.end.115

for.body.87:                                      ; preds = %for.cond.84
  %118 = load i32, i32* %count, align 4, !tbaa !10
  %119 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp88 = icmp slt i32 %118, %119
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %for.body.87
  %120 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.92

cond.false.91:                                    ; preds = %for.body.87
  %121 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.90
  %cond93 = phi i32 [ %120, %cond.true.90 ], [ %121, %cond.false.91 ]
  store i32 %cond93, i32* %ndone, align 4, !tbaa !10
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.110, %cond.end.92
  %122 = load i32, i32* %ci, align 4, !tbaa !10
  %123 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp95 = icmp slt i32 %122, %123
  br i1 %cmp95, label %for.body.97, label %for.end.112

for.body.97:                                      ; preds = %for.cond.94
  %124 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr98, i8** %p, align 8, !tbaa !1
  %125 = load i8, i8* %incdec.ptr98, align 1, !tbaa !13
  store i8 %125, i8* %t, align 1, !tbaa !13
  %126 = load i8, i8* %t, align 1, !tbaa !13
  %conv99 = zext i8 %126 to i32
  %127 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom100 = sext i32 %127 to i64
  %128 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev101 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %128, i32 0, i32 12
  %arrayidx102 = getelementptr inbounds [60 x i32], [60 x i32]* %prev101, i32 0, i64 %idxprom100
  %129 = load i32, i32* %arrayidx102, align 4, !tbaa !10
  %xor103 = xor i32 %conv99, %129
  %conv104 = trunc i32 %xor103 to i8
  %130 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr105 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr105, i8** %q, align 8, !tbaa !1
  store i8 %conv104, i8* %incdec.ptr105, align 1, !tbaa !13
  %131 = load i8, i8* %t, align 1, !tbaa !13
  %conv106 = zext i8 %131 to i32
  %132 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom107 = sext i32 %132 to i64
  %133 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev108 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %133, i32 0, i32 12
  %arrayidx109 = getelementptr inbounds [60 x i32], [60 x i32]* %prev108, i32 0, i64 %idxprom107
  store i32 %conv106, i32* %arrayidx109, align 4, !tbaa !10
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.97
  %134 = load i32, i32* %ci, align 4, !tbaa !10
  %inc111 = add nsw i32 %134, 1
  store i32 %inc111, i32* %ci, align 4, !tbaa !10
  br label %for.cond.94

for.end.112:                                      ; preds = %for.cond.94
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.end.112
  %135 = load i32, i32* %ndone, align 4, !tbaa !10
  %136 = load i32, i32* %count, align 4, !tbaa !10
  %sub114 = sub nsw i32 %136, %135
  store i32 %sub114, i32* %count, align 4, !tbaa !10
  br label %for.cond.84

for.end.115:                                      ; preds = %for.cond.84
  %137 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev116 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %137, i32 0, i32 12
  %arrayidx117 = getelementptr inbounds [60 x i32], [60 x i32]* %prev116, i32 0, i64 0
  %138 = load i32, i32* %arrayidx117, align 4, !tbaa !10
  store i32 %138, i32* %s0, align 4, !tbaa !10
  br label %do.cond.118

do.cond.118:                                      ; preds = %for.end.115
  br label %do.end.119

do.end.119:                                       ; preds = %do.cond.118
  br label %if.end.120

if.end.120:                                       ; preds = %do.end.119, %do.end
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120
  br label %sw.epilog

sw.bb.122:                                        ; preds = %cond.end.22
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.137, %sw.bb.122
  %139 = load i32, i32* %count, align 4, !tbaa !10
  %cmp124 = icmp sge i32 %139, 1
  br i1 %cmp124, label %for.body.126, label %for.end.139

for.body.126:                                     ; preds = %for.cond.123
  %140 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr127 = getelementptr inbounds i8, i8* %140, i64 1
  store i8* %add.ptr127, i8** %p, align 8, !tbaa !1
  %141 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr128 = getelementptr inbounds i8, i8* %141, i64 1
  store i8* %add.ptr128, i8** %q, align 8, !tbaa !1
  %142 = load i8*, i8** %p, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !13
  store i8 %143, i8* %t, align 1, !tbaa !13
  %144 = load i8, i8* %t, align 1, !tbaa !13
  %conv129 = zext i8 %144 to i32
  %145 = load i32, i32* %s0, align 4, !tbaa !10
  %shl130 = shl i32 %145, 7
  %146 = load i8, i8* %t, align 1, !tbaa !13
  %conv131 = zext i8 %146 to i32
  %shr132 = ashr i32 %conv131, 1
  %or133 = or i32 %shl130, %shr132
  %xor134 = xor i32 %conv129, %or133
  %conv135 = trunc i32 %xor134 to i8
  %147 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv135, i8* %147, align 1, !tbaa !13
  %148 = load i8, i8* %t, align 1, !tbaa !13
  %conv136 = zext i8 %148 to i32
  store i32 %conv136, i32* %s0, align 4, !tbaa !10
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.126
  %149 = load i32, i32* %count, align 4, !tbaa !10
  %sub138 = sub nsw i32 %149, 1
  store i32 %sub138, i32* %count, align 4, !tbaa !10
  br label %for.cond.123

for.end.139:                                      ; preds = %for.cond.123
  br label %sw.epilog

sw.bb.140:                                        ; preds = %cond.end.22
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.155, %sw.bb.140
  %150 = load i32, i32* %count, align 4, !tbaa !10
  %cmp142 = icmp sge i32 %150, 1
  br i1 %cmp142, label %for.body.144, label %for.end.157

for.body.144:                                     ; preds = %for.cond.141
  %151 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr145 = getelementptr inbounds i8, i8* %151, i64 1
  store i8* %add.ptr145, i8** %p, align 8, !tbaa !1
  %152 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr146 = getelementptr inbounds i8, i8* %152, i64 1
  store i8* %add.ptr146, i8** %q, align 8, !tbaa !1
  %153 = load i8*, i8** %p, align 8, !tbaa !1
  %154 = load i8, i8* %153, align 1, !tbaa !13
  store i8 %154, i8* %t, align 1, !tbaa !13
  %155 = load i8, i8* %t, align 1, !tbaa !13
  %conv147 = zext i8 %155 to i32
  %156 = load i32, i32* %s0, align 4, !tbaa !10
  %shl148 = shl i32 %156, 5
  %157 = load i8, i8* %t, align 1, !tbaa !13
  %conv149 = zext i8 %157 to i32
  %shr150 = ashr i32 %conv149, 3
  %or151 = or i32 %shl148, %shr150
  %xor152 = xor i32 %conv147, %or151
  %conv153 = trunc i32 %xor152 to i8
  %158 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv153, i8* %158, align 1, !tbaa !13
  %159 = load i8, i8* %t, align 1, !tbaa !13
  %conv154 = zext i8 %159 to i32
  store i32 %conv154, i32* %s0, align 4, !tbaa !10
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.body.144
  %160 = load i32, i32* %count, align 4, !tbaa !10
  %sub156 = sub nsw i32 %160, 1
  store i32 %sub156, i32* %count, align 4, !tbaa !10
  br label %for.cond.141

for.end.157:                                      ; preds = %for.cond.141
  br label %sw.epilog

sw.bb.158:                                        ; preds = %cond.end.22
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.173, %sw.bb.158
  %161 = load i32, i32* %count, align 4, !tbaa !10
  %cmp160 = icmp sge i32 %161, 1
  br i1 %cmp160, label %for.body.162, label %for.end.175

for.body.162:                                     ; preds = %for.cond.159
  %162 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr163 = getelementptr inbounds i8, i8* %162, i64 1
  store i8* %add.ptr163, i8** %p, align 8, !tbaa !1
  %163 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr164 = getelementptr inbounds i8, i8* %163, i64 1
  store i8* %add.ptr164, i8** %q, align 8, !tbaa !1
  %164 = load i8*, i8** %p, align 8, !tbaa !1
  %165 = load i8, i8* %164, align 1, !tbaa !13
  store i8 %165, i8* %t, align 1, !tbaa !13
  %166 = load i8, i8* %t, align 1, !tbaa !13
  %conv165 = zext i8 %166 to i32
  %167 = load i32, i32* %s0, align 4, !tbaa !10
  %shl166 = shl i32 %167, 4
  %168 = load i8, i8* %t, align 1, !tbaa !13
  %conv167 = zext i8 %168 to i32
  %shr168 = ashr i32 %conv167, 4
  %or169 = or i32 %shl166, %shr168
  %xor170 = xor i32 %conv165, %or169
  %conv171 = trunc i32 %xor170 to i8
  %169 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv171, i8* %169, align 1, !tbaa !13
  %170 = load i8, i8* %t, align 1, !tbaa !13
  %conv172 = zext i8 %170 to i32
  store i32 %conv172, i32* %s0, align 4, !tbaa !10
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.body.162
  %171 = load i32, i32* %count, align 4, !tbaa !10
  %sub174 = sub nsw i32 %171, 1
  store i32 %sub174, i32* %count, align 4, !tbaa !10
  br label %for.cond.159

for.end.175:                                      ; preds = %for.cond.159
  br label %sw.epilog

sw.bb.176:                                        ; preds = %cond.end.22
  %172 = load i32, i32* %colors, align 4, !tbaa !10
  %cmp177 = icmp slt i32 %172, 8
  br i1 %cmp177, label %if.then.179, label %if.else.201

if.then.179:                                      ; preds = %sw.bb.176
  %173 = bitcast i32* %cshift180 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #2
  %174 = load i32, i32* %colors, align 4, !tbaa !10
  %sub181 = sub nsw i32 8, %174
  store i32 %sub181, i32* %cshift180, align 4, !tbaa !10
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.198, %if.then.179
  %175 = load i32, i32* %count, align 4, !tbaa !10
  %cmp183 = icmp sge i32 %175, 1
  br i1 %cmp183, label %for.body.185, label %for.end.200

for.body.185:                                     ; preds = %for.cond.182
  %176 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr186 = getelementptr inbounds i8, i8* %176, i64 1
  store i8* %add.ptr186, i8** %p, align 8, !tbaa !1
  %177 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr187 = getelementptr inbounds i8, i8* %177, i64 1
  store i8* %add.ptr187, i8** %q, align 8, !tbaa !1
  %178 = load i8*, i8** %p, align 8, !tbaa !1
  %179 = load i8, i8* %178, align 1, !tbaa !13
  %conv188 = zext i8 %179 to i32
  %180 = load i32, i32* %s0, align 4, !tbaa !10
  %181 = load i32, i32* %cshift180, align 4, !tbaa !10
  %shl189 = shl i32 %180, %181
  %xor190 = xor i32 %conv188, %shl189
  %conv191 = trunc i32 %xor190 to i8
  store i8 %conv191, i8* %t, align 1, !tbaa !13
  %182 = load i8, i8* %t, align 1, !tbaa !13
  %conv192 = zext i8 %182 to i32
  %183 = load i8, i8* %t, align 1, !tbaa !13
  %conv193 = zext i8 %183 to i32
  %184 = load i32, i32* %colors, align 4, !tbaa !10
  %shr194 = ashr i32 %conv193, %184
  %xor195 = xor i32 %conv192, %shr194
  %conv196 = trunc i32 %xor195 to i8
  %185 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv196, i8* %185, align 1, !tbaa !13
  %conv197 = zext i8 %conv196 to i32
  store i32 %conv197, i32* %s0, align 4, !tbaa !10
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.185
  %186 = load i32, i32* %count, align 4, !tbaa !10
  %sub199 = sub nsw i32 %186, 1
  store i32 %sub199, i32* %count, align 4, !tbaa !10
  br label %for.cond.182

for.end.200:                                      ; preds = %for.cond.182
  %187 = bitcast i32* %cshift180 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  br label %sw.epilog

if.else.201:                                      ; preds = %sw.bb.176
  %188 = load i32, i32* %colors, align 4, !tbaa !10
  %and202 = and i32 %188, 7
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %if.then.204, label %if.else.252

if.then.204:                                      ; preds = %if.else.201
  %189 = bitcast i32* %shift205 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #2
  %190 = load i32, i32* %colors, align 4, !tbaa !10
  %and206 = and i32 %190, 7
  store i32 %and206, i32* %shift205, align 4, !tbaa !10
  %191 = bitcast i32* %cshift207 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #2
  %192 = load i32, i32* %shift205, align 4, !tbaa !10
  %sub208 = sub nsw i32 8, %192
  store i32 %sub208, i32* %cshift207, align 4, !tbaa !10
  br label %do.body.209

do.body.209:                                      ; preds = %if.then.204
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.247, %do.body.209
  %193 = load i32, i32* %count, align 4, !tbaa !10
  %194 = load i32, i32* %final, align 4, !tbaa !10
  %cmp211 = icmp sge i32 %193, %194
  br i1 %cmp211, label %for.body.213, label %for.end.249

for.body.213:                                     ; preds = %for.cond.210
  %195 = load i32, i32* %count, align 4, !tbaa !10
  %196 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp214 = icmp slt i32 %195, %196
  br i1 %cmp214, label %cond.true.216, label %cond.false.217

cond.true.216:                                    ; preds = %for.body.213
  %197 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.218

cond.false.217:                                   ; preds = %for.body.213
  %198 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.217, %cond.true.216
  %cond219 = phi i32 [ %197, %cond.true.216 ], [ %198, %cond.false.217 ]
  store i32 %cond219, i32* %ndone, align 4, !tbaa !10
  store i32 1, i32* %ci, align 4, !tbaa !10
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.244, %cond.end.218
  %199 = load i32, i32* %ci, align 4, !tbaa !10
  %200 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp221 = icmp sle i32 %199, %200
  br i1 %cmp221, label %for.body.223, label %for.end.246

for.body.223:                                     ; preds = %for.cond.220
  %201 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr224 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr224, i8** %p, align 8, !tbaa !1
  %202 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr225 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %incdec.ptr225, i8** %q, align 8, !tbaa !1
  %203 = load i32, i32* %s0, align 4, !tbaa !10
  %204 = load i32, i32* %cshift207, align 4, !tbaa !10
  %shl226 = shl i32 %203, %204
  %205 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom227 = sext i32 %205 to i64
  %206 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev228 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %206, i32 0, i32 12
  %arrayidx229 = getelementptr inbounds [60 x i32], [60 x i32]* %prev228, i32 0, i64 %idxprom227
  %207 = load i32, i32* %arrayidx229, align 4, !tbaa !10
  %208 = load i32, i32* %shift205, align 4, !tbaa !10
  %shr230 = lshr i32 %207, %208
  %or231 = or i32 %shl226, %shr230
  %conv232 = trunc i32 %or231 to i8
  store i8 %conv232, i8* %t, align 1, !tbaa !13
  %209 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom233 = sext i32 %209 to i64
  %210 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev234 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %210, i32 0, i32 12
  %arrayidx235 = getelementptr inbounds [60 x i32], [60 x i32]* %prev234, i32 0, i64 %idxprom233
  %211 = load i32, i32* %arrayidx235, align 4, !tbaa !10
  store i32 %211, i32* %s0, align 4, !tbaa !10
  %212 = load i8*, i8** %p, align 8, !tbaa !1
  %213 = load i8, i8* %212, align 1, !tbaa !13
  %conv236 = zext i8 %213 to i32
  %214 = load i8, i8* %t, align 1, !tbaa !13
  %conv237 = zext i8 %214 to i32
  %xor238 = xor i32 %conv236, %conv237
  %conv239 = trunc i32 %xor238 to i8
  %215 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv239, i8* %215, align 1, !tbaa !13
  %conv240 = zext i8 %conv239 to i32
  %216 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom241 = sext i32 %216 to i64
  %217 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev242 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %217, i32 0, i32 12
  %arrayidx243 = getelementptr inbounds [60 x i32], [60 x i32]* %prev242, i32 0, i64 %idxprom241
  store i32 %conv240, i32* %arrayidx243, align 4, !tbaa !10
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.body.223
  %218 = load i32, i32* %ci, align 4, !tbaa !10
  %inc245 = add nsw i32 %218, 1
  store i32 %inc245, i32* %ci, align 4, !tbaa !10
  br label %for.cond.220

for.end.246:                                      ; preds = %for.cond.220
  br label %for.inc.247

for.inc.247:                                      ; preds = %for.end.246
  %219 = load i32, i32* %ndone, align 4, !tbaa !10
  %220 = load i32, i32* %count, align 4, !tbaa !10
  %sub248 = sub nsw i32 %220, %219
  store i32 %sub248, i32* %count, align 4, !tbaa !10
  br label %for.cond.210

for.end.249:                                      ; preds = %for.cond.210
  br label %do.cond.250

do.cond.250:                                      ; preds = %for.end.249
  br label %do.end.251

do.end.251:                                       ; preds = %do.cond.250
  %221 = bitcast i32* %cshift207 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #2
  %222 = bitcast i32* %shift205 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #2
  br label %if.end.292

if.else.252:                                      ; preds = %if.else.201
  br label %do.body.253

do.body.253:                                      ; preds = %if.else.252
  %223 = load i32, i32* %s0, align 4, !tbaa !10
  %224 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev254 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %224, i32 0, i32 12
  %arrayidx255 = getelementptr inbounds [60 x i32], [60 x i32]* %prev254, i32 0, i64 0
  store i32 %223, i32* %arrayidx255, align 4, !tbaa !10
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.285, %do.body.253
  %225 = load i32, i32* %count, align 4, !tbaa !10
  %226 = load i32, i32* %final, align 4, !tbaa !10
  %cmp257 = icmp sge i32 %225, %226
  br i1 %cmp257, label %for.body.259, label %for.end.287

for.body.259:                                     ; preds = %for.cond.256
  %227 = load i32, i32* %count, align 4, !tbaa !10
  %228 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp260 = icmp slt i32 %227, %228
  br i1 %cmp260, label %cond.true.262, label %cond.false.263

cond.true.262:                                    ; preds = %for.body.259
  %229 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.264

cond.false.263:                                   ; preds = %for.body.259
  %230 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.264

cond.end.264:                                     ; preds = %cond.false.263, %cond.true.262
  %cond265 = phi i32 [ %229, %cond.true.262 ], [ %230, %cond.false.263 ]
  store i32 %cond265, i32* %ndone, align 4, !tbaa !10
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.266

for.cond.266:                                     ; preds = %for.inc.282, %cond.end.264
  %231 = load i32, i32* %ci, align 4, !tbaa !10
  %232 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp267 = icmp slt i32 %231, %232
  br i1 %cmp267, label %for.body.269, label %for.end.284

for.body.269:                                     ; preds = %for.cond.266
  %233 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr270 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr270, i8** %p, align 8, !tbaa !1
  %234 = load i8, i8* %incdec.ptr270, align 1, !tbaa !13
  store i8 %234, i8* %t, align 1, !tbaa !13
  %235 = load i8, i8* %t, align 1, !tbaa !13
  %conv271 = zext i8 %235 to i32
  %236 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom272 = sext i32 %236 to i64
  %237 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev273 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %237, i32 0, i32 12
  %arrayidx274 = getelementptr inbounds [60 x i32], [60 x i32]* %prev273, i32 0, i64 %idxprom272
  %238 = load i32, i32* %arrayidx274, align 4, !tbaa !10
  %xor275 = xor i32 %conv271, %238
  %conv276 = trunc i32 %xor275 to i8
  %239 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr277 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr277, i8** %q, align 8, !tbaa !1
  store i8 %conv276, i8* %incdec.ptr277, align 1, !tbaa !13
  %conv278 = zext i8 %conv276 to i32
  %240 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom279 = sext i32 %240 to i64
  %241 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev280 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %241, i32 0, i32 12
  %arrayidx281 = getelementptr inbounds [60 x i32], [60 x i32]* %prev280, i32 0, i64 %idxprom279
  store i32 %conv278, i32* %arrayidx281, align 4, !tbaa !10
  br label %for.inc.282

for.inc.282:                                      ; preds = %for.body.269
  %242 = load i32, i32* %ci, align 4, !tbaa !10
  %inc283 = add nsw i32 %242, 1
  store i32 %inc283, i32* %ci, align 4, !tbaa !10
  br label %for.cond.266

for.end.284:                                      ; preds = %for.cond.266
  br label %for.inc.285

for.inc.285:                                      ; preds = %for.end.284
  %243 = load i32, i32* %ndone, align 4, !tbaa !10
  %244 = load i32, i32* %count, align 4, !tbaa !10
  %sub286 = sub nsw i32 %244, %243
  store i32 %sub286, i32* %count, align 4, !tbaa !10
  br label %for.cond.256

for.end.287:                                      ; preds = %for.cond.256
  %245 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev288 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %245, i32 0, i32 12
  %arrayidx289 = getelementptr inbounds [60 x i32], [60 x i32]* %prev288, i32 0, i64 0
  %246 = load i32, i32* %arrayidx289, align 4, !tbaa !10
  store i32 %246, i32* %s0, align 4, !tbaa !10
  br label %do.cond.290

do.cond.290:                                      ; preds = %for.end.287
  br label %do.end.291

do.end.291:                                       ; preds = %do.cond.290
  br label %if.end.292

if.end.292:                                       ; preds = %do.end.291, %do.end.251
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292
  br label %sw.epilog

sw.bb.294:                                        ; preds = %cond.end.22
  br label %for.cond.295

for.cond.295:                                     ; preds = %for.inc.321, %sw.bb.294
  %247 = load i32, i32* %count, align 4, !tbaa !10
  %cmp296 = icmp sge i32 %247, 1
  br i1 %cmp296, label %for.body.298, label %for.end.323

for.body.298:                                     ; preds = %for.cond.295
  %248 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr299 = getelementptr inbounds i8, i8* %248, i64 1
  store i8* %add.ptr299, i8** %p, align 8, !tbaa !1
  %249 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr300 = getelementptr inbounds i8, i8* %249, i64 1
  store i8* %add.ptr300, i8** %q, align 8, !tbaa !1
  %250 = load i8*, i8** %p, align 8, !tbaa !1
  %251 = load i8, i8* %250, align 1, !tbaa !13
  %conv301 = zext i8 %251 to i32
  %252 = load i32, i32* %s0, align 4, !tbaa !10
  %shl302 = shl i32 %252, 7
  %xor303 = xor i32 %conv301, %shl302
  %conv304 = trunc i32 %xor303 to i8
  store i8 %conv304, i8* %t, align 1, !tbaa !13
  %253 = load i8, i8* %t, align 1, !tbaa !13
  %conv305 = zext i8 %253 to i32
  %shr306 = ashr i32 %conv305, 1
  %254 = load i8, i8* %t, align 1, !tbaa !13
  %conv307 = zext i8 %254 to i32
  %xor308 = xor i32 %conv307, %shr306
  %conv309 = trunc i32 %xor308 to i8
  store i8 %conv309, i8* %t, align 1, !tbaa !13
  %255 = load i8, i8* %t, align 1, !tbaa !13
  %conv310 = zext i8 %255 to i32
  %shr311 = ashr i32 %conv310, 2
  %256 = load i8, i8* %t, align 1, !tbaa !13
  %conv312 = zext i8 %256 to i32
  %xor313 = xor i32 %conv312, %shr311
  %conv314 = trunc i32 %xor313 to i8
  store i8 %conv314, i8* %t, align 1, !tbaa !13
  %257 = load i8, i8* %t, align 1, !tbaa !13
  %conv315 = zext i8 %257 to i32
  %258 = load i8, i8* %t, align 1, !tbaa !13
  %conv316 = zext i8 %258 to i32
  %shr317 = ashr i32 %conv316, 4
  %xor318 = xor i32 %conv315, %shr317
  %conv319 = trunc i32 %xor318 to i8
  %259 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv319, i8* %259, align 1, !tbaa !13
  %conv320 = zext i8 %conv319 to i32
  store i32 %conv320, i32* %s0, align 4, !tbaa !10
  br label %for.inc.321

for.inc.321:                                      ; preds = %for.body.298
  %260 = load i32, i32* %count, align 4, !tbaa !10
  %sub322 = sub nsw i32 %260, 1
  store i32 %sub322, i32* %count, align 4, !tbaa !10
  br label %for.cond.295

for.end.323:                                      ; preds = %for.cond.295
  br label %sw.epilog

sw.bb.324:                                        ; preds = %cond.end.22
  br label %for.cond.325

for.cond.325:                                     ; preds = %for.inc.346, %sw.bb.324
  %261 = load i32, i32* %count, align 4, !tbaa !10
  %cmp326 = icmp sge i32 %261, 1
  br i1 %cmp326, label %for.body.328, label %for.end.348

for.body.328:                                     ; preds = %for.cond.325
  %262 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr329 = getelementptr inbounds i8, i8* %262, i64 1
  store i8* %add.ptr329, i8** %p, align 8, !tbaa !1
  %263 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr330 = getelementptr inbounds i8, i8* %263, i64 1
  store i8* %add.ptr330, i8** %q, align 8, !tbaa !1
  %264 = load i8*, i8** %p, align 8, !tbaa !1
  %265 = load i8, i8* %264, align 1, !tbaa !13
  %conv331 = zext i8 %265 to i32
  %266 = load i32, i32* %s0, align 4, !tbaa !10
  %shl332 = shl i32 %266, 6
  %xor333 = xor i32 %conv331, %shl332
  %conv334 = trunc i32 %xor333 to i8
  store i8 %conv334, i8* %t, align 1, !tbaa !13
  %267 = load i8, i8* %t, align 1, !tbaa !13
  %conv335 = zext i8 %267 to i32
  %shr336 = ashr i32 %conv335, 2
  %268 = load i8, i8* %t, align 1, !tbaa !13
  %conv337 = zext i8 %268 to i32
  %xor338 = xor i32 %conv337, %shr336
  %conv339 = trunc i32 %xor338 to i8
  store i8 %conv339, i8* %t, align 1, !tbaa !13
  %269 = load i8, i8* %t, align 1, !tbaa !13
  %conv340 = zext i8 %269 to i32
  %270 = load i8, i8* %t, align 1, !tbaa !13
  %conv341 = zext i8 %270 to i32
  %shr342 = ashr i32 %conv341, 4
  %xor343 = xor i32 %conv340, %shr342
  %conv344 = trunc i32 %xor343 to i8
  %271 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv344, i8* %271, align 1, !tbaa !13
  %conv345 = zext i8 %conv344 to i32
  store i32 %conv345, i32* %s0, align 4, !tbaa !10
  br label %for.inc.346

for.inc.346:                                      ; preds = %for.body.328
  %272 = load i32, i32* %count, align 4, !tbaa !10
  %sub347 = sub nsw i32 %272, 1
  store i32 %sub347, i32* %count, align 4, !tbaa !10
  br label %for.cond.325

for.end.348:                                      ; preds = %for.cond.325
  br label %sw.epilog

sw.bb.349:                                        ; preds = %cond.end.22
  br label %for.cond.350

for.cond.350:                                     ; preds = %for.inc.369, %sw.bb.349
  %273 = load i32, i32* %count, align 4, !tbaa !10
  %cmp351 = icmp sge i32 %273, 1
  br i1 %cmp351, label %for.body.353, label %for.end.371

for.body.353:                                     ; preds = %for.cond.350
  %274 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr354 = getelementptr inbounds i8, i8* %274, i64 1
  store i8* %add.ptr354, i8** %p, align 8, !tbaa !1
  %275 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr355 = getelementptr inbounds i8, i8* %275, i64 1
  store i8* %add.ptr355, i8** %q, align 8, !tbaa !1
  %276 = load i8*, i8** %p, align 8, !tbaa !1
  %277 = load i8, i8* %276, align 1, !tbaa !13
  %conv356 = zext i8 %277 to i32
  %278 = load i32, i32* %s0, align 4, !tbaa !10
  %shl357 = shl i32 %278, 5
  %xor358 = xor i32 %conv356, %shl357
  %conv359 = trunc i32 %xor358 to i8
  store i8 %conv359, i8* %t, align 1, !tbaa !13
  %279 = load i8, i8* %t, align 1, !tbaa !13
  %conv360 = zext i8 %279 to i32
  %280 = load i8, i8* %t, align 1, !tbaa !13
  %conv361 = zext i8 %280 to i32
  %shr362 = ashr i32 %conv361, 3
  %xor363 = xor i32 %conv360, %shr362
  %281 = load i8, i8* %t, align 1, !tbaa !13
  %conv364 = zext i8 %281 to i32
  %shr365 = ashr i32 %conv364, 6
  %xor366 = xor i32 %xor363, %shr365
  %conv367 = trunc i32 %xor366 to i8
  %282 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv367, i8* %282, align 1, !tbaa !13
  %conv368 = zext i8 %conv367 to i32
  store i32 %conv368, i32* %s0, align 4, !tbaa !10
  br label %for.inc.369

for.inc.369:                                      ; preds = %for.body.353
  %283 = load i32, i32* %count, align 4, !tbaa !10
  %sub370 = sub nsw i32 %283, 1
  store i32 %sub370, i32* %count, align 4, !tbaa !10
  br label %for.cond.350

for.end.371:                                      ; preds = %for.cond.350
  br label %sw.epilog

sw.bb.372:                                        ; preds = %cond.end.22
  br label %for.cond.373

for.cond.373:                                     ; preds = %for.inc.389, %sw.bb.372
  %284 = load i32, i32* %count, align 4, !tbaa !10
  %cmp374 = icmp sge i32 %284, 1
  br i1 %cmp374, label %for.body.376, label %for.end.391

for.body.376:                                     ; preds = %for.cond.373
  %285 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr377 = getelementptr inbounds i8, i8* %285, i64 1
  store i8* %add.ptr377, i8** %p, align 8, !tbaa !1
  %286 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr378 = getelementptr inbounds i8, i8* %286, i64 1
  store i8* %add.ptr378, i8** %q, align 8, !tbaa !1
  %287 = load i8*, i8** %p, align 8, !tbaa !1
  %288 = load i8, i8* %287, align 1, !tbaa !13
  %conv379 = zext i8 %288 to i32
  %289 = load i32, i32* %s0, align 4, !tbaa !10
  %shl380 = shl i32 %289, 4
  %xor381 = xor i32 %conv379, %shl380
  %conv382 = trunc i32 %xor381 to i8
  store i8 %conv382, i8* %t, align 1, !tbaa !13
  %290 = load i8, i8* %t, align 1, !tbaa !13
  %conv383 = zext i8 %290 to i32
  %291 = load i8, i8* %t, align 1, !tbaa !13
  %conv384 = zext i8 %291 to i32
  %shr385 = ashr i32 %conv384, 4
  %xor386 = xor i32 %conv383, %shr385
  %conv387 = trunc i32 %xor386 to i8
  %292 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv387, i8* %292, align 1, !tbaa !13
  %conv388 = zext i8 %conv387 to i32
  store i32 %conv388, i32* %s0, align 4, !tbaa !10
  br label %for.inc.389

for.inc.389:                                      ; preds = %for.body.376
  %293 = load i32, i32* %count, align 4, !tbaa !10
  %sub390 = sub nsw i32 %293, 1
  store i32 %sub390, i32* %count, align 4, !tbaa !10
  br label %for.cond.373

for.end.391:                                      ; preds = %for.cond.373
  br label %sw.epilog

sw.bb.392:                                        ; preds = %cond.end.22
  %294 = load i32, i32* %colors, align 4, !tbaa !10
  %and393 = and i32 %294, 7
  %tobool394 = icmp ne i32 %and393, 0
  br i1 %tobool394, label %if.then.395, label %if.else.450

if.then.395:                                      ; preds = %sw.bb.392
  %295 = bitcast i32* %shift396 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %295) #2
  %296 = load i32, i32* %colors, align 4, !tbaa !10
  %and397 = and i32 %296, 3
  %shl398 = shl i32 %and397, 1
  store i32 %shl398, i32* %shift396, align 4, !tbaa !10
  %297 = bitcast i32* %cshift399 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %297) #2
  %298 = load i32, i32* %shift396, align 4, !tbaa !10
  %sub400 = sub nsw i32 8, %298
  store i32 %sub400, i32* %cshift399, align 4, !tbaa !10
  br label %do.body.401

do.body.401:                                      ; preds = %if.then.395
  br label %for.cond.402

for.cond.402:                                     ; preds = %for.inc.445, %do.body.401
  %299 = load i32, i32* %count, align 4, !tbaa !10
  %300 = load i32, i32* %final, align 4, !tbaa !10
  %cmp403 = icmp sge i32 %299, %300
  br i1 %cmp403, label %for.body.405, label %for.end.447

for.body.405:                                     ; preds = %for.cond.402
  %301 = load i32, i32* %count, align 4, !tbaa !10
  %302 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp406 = icmp slt i32 %301, %302
  br i1 %cmp406, label %cond.true.408, label %cond.false.409

cond.true.408:                                    ; preds = %for.body.405
  %303 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.410

cond.false.409:                                   ; preds = %for.body.405
  %304 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.410

cond.end.410:                                     ; preds = %cond.false.409, %cond.true.408
  %cond411 = phi i32 [ %303, %cond.true.408 ], [ %304, %cond.false.409 ]
  store i32 %cond411, i32* %ndone, align 4, !tbaa !10
  store i32 1, i32* %ci, align 4, !tbaa !10
  br label %for.cond.412

for.cond.412:                                     ; preds = %for.inc.442, %cond.end.410
  %305 = load i32, i32* %ci, align 4, !tbaa !10
  %306 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp413 = icmp sle i32 %305, %306
  br i1 %cmp413, label %for.body.415, label %for.end.444

for.body.415:                                     ; preds = %for.cond.412
  %307 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr416 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %incdec.ptr416, i8** %p, align 8, !tbaa !1
  %308 = load i32, i32* %s0, align 4, !tbaa !10
  %309 = load i32, i32* %cshift399, align 4, !tbaa !10
  %shl417 = shl i32 %308, %309
  %310 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom418 = sext i32 %310 to i64
  %311 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev419 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %311, i32 0, i32 12
  %arrayidx420 = getelementptr inbounds [60 x i32], [60 x i32]* %prev419, i32 0, i64 %idxprom418
  %312 = load i32, i32* %arrayidx420, align 4, !tbaa !10
  %313 = load i32, i32* %shift396, align 4, !tbaa !10
  %shr421 = lshr i32 %312, %313
  %or422 = or i32 %shl417, %shr421
  %conv423 = trunc i32 %or422 to i8
  store i8 %conv423, i8* %t, align 1, !tbaa !13
  %314 = load i8*, i8** %p, align 8, !tbaa !1
  %315 = load i8, i8* %314, align 1, !tbaa !13
  %conv424 = zext i8 %315 to i32
  %neg = xor i32 %conv424, -1
  %316 = load i8, i8* %t, align 1, !tbaa !13
  %conv425 = zext i8 %316 to i32
  %and426 = and i32 %neg, %conv425
  %and427 = and i32 %and426, 85
  %shl428 = shl i32 %and427, 1
  %317 = load i8*, i8** %p, align 8, !tbaa !1
  %318 = load i8, i8* %317, align 1, !tbaa !13
  %conv429 = zext i8 %318 to i32
  %xor430 = xor i32 %shl428, %conv429
  %319 = load i8, i8* %t, align 1, !tbaa !13
  %conv431 = zext i8 %319 to i32
  %xor432 = xor i32 %xor430, %conv431
  %conv433 = trunc i32 %xor432 to i8
  %320 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr434 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %incdec.ptr434, i8** %q, align 8, !tbaa !1
  store i8 %conv433, i8* %incdec.ptr434, align 1, !tbaa !13
  %321 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom435 = sext i32 %321 to i64
  %322 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev436 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %322, i32 0, i32 12
  %arrayidx437 = getelementptr inbounds [60 x i32], [60 x i32]* %prev436, i32 0, i64 %idxprom435
  %323 = load i32, i32* %arrayidx437, align 4, !tbaa !10
  store i32 %323, i32* %s0, align 4, !tbaa !10
  %324 = load i8*, i8** %p, align 8, !tbaa !1
  %325 = load i8, i8* %324, align 1, !tbaa !13
  %conv438 = zext i8 %325 to i32
  %326 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom439 = sext i32 %326 to i64
  %327 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev440 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %327, i32 0, i32 12
  %arrayidx441 = getelementptr inbounds [60 x i32], [60 x i32]* %prev440, i32 0, i64 %idxprom439
  store i32 %conv438, i32* %arrayidx441, align 4, !tbaa !10
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body.415
  %328 = load i32, i32* %ci, align 4, !tbaa !10
  %inc443 = add nsw i32 %328, 1
  store i32 %inc443, i32* %ci, align 4, !tbaa !10
  br label %for.cond.412

for.end.444:                                      ; preds = %for.cond.412
  br label %for.inc.445

for.inc.445:                                      ; preds = %for.end.444
  %329 = load i32, i32* %ndone, align 4, !tbaa !10
  %330 = load i32, i32* %count, align 4, !tbaa !10
  %sub446 = sub nsw i32 %330, %329
  store i32 %sub446, i32* %count, align 4, !tbaa !10
  br label %for.cond.402

for.end.447:                                      ; preds = %for.cond.402
  br label %do.cond.448

do.cond.448:                                      ; preds = %for.end.447
  br label %do.end.449

do.end.449:                                       ; preds = %do.cond.448
  %331 = bitcast i32* %cshift399 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #2
  %332 = bitcast i32* %shift396 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #2
  br label %if.end.499

if.else.450:                                      ; preds = %sw.bb.392
  br label %do.body.451

do.body.451:                                      ; preds = %if.else.450
  %333 = load i32, i32* %s0, align 4, !tbaa !10
  %334 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev452 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %334, i32 0, i32 12
  %arrayidx453 = getelementptr inbounds [60 x i32], [60 x i32]* %prev452, i32 0, i64 0
  store i32 %333, i32* %arrayidx453, align 4, !tbaa !10
  br label %for.cond.454

for.cond.454:                                     ; preds = %for.inc.492, %do.body.451
  %335 = load i32, i32* %count, align 4, !tbaa !10
  %336 = load i32, i32* %final, align 4, !tbaa !10
  %cmp455 = icmp sge i32 %335, %336
  br i1 %cmp455, label %for.body.457, label %for.end.494

for.body.457:                                     ; preds = %for.cond.454
  %337 = load i32, i32* %count, align 4, !tbaa !10
  %338 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp458 = icmp slt i32 %337, %338
  br i1 %cmp458, label %cond.true.460, label %cond.false.461

cond.true.460:                                    ; preds = %for.body.457
  %339 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.462

cond.false.461:                                   ; preds = %for.body.457
  %340 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.462

cond.end.462:                                     ; preds = %cond.false.461, %cond.true.460
  %cond463 = phi i32 [ %339, %cond.true.460 ], [ %340, %cond.false.461 ]
  store i32 %cond463, i32* %ndone, align 4, !tbaa !10
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.464

for.cond.464:                                     ; preds = %for.inc.489, %cond.end.462
  %341 = load i32, i32* %ci, align 4, !tbaa !10
  %342 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp465 = icmp slt i32 %341, %342
  br i1 %cmp465, label %for.body.467, label %for.end.491

for.body.467:                                     ; preds = %for.cond.464
  %343 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr468 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %incdec.ptr468, i8** %p, align 8, !tbaa !1
  %344 = load i8, i8* %incdec.ptr468, align 1, !tbaa !13
  store i8 %344, i8* %t, align 1, !tbaa !13
  %345 = load i8, i8* %t, align 1, !tbaa !13
  %conv469 = zext i8 %345 to i32
  %neg470 = xor i32 %conv469, -1
  %346 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom471 = sext i32 %346 to i64
  %347 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev472 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %347, i32 0, i32 12
  %arrayidx473 = getelementptr inbounds [60 x i32], [60 x i32]* %prev472, i32 0, i64 %idxprom471
  %348 = load i32, i32* %arrayidx473, align 4, !tbaa !10
  %and474 = and i32 %neg470, %348
  %and475 = and i32 %and474, 85
  %shl476 = shl i32 %and475, 1
  %349 = load i8, i8* %t, align 1, !tbaa !13
  %conv477 = zext i8 %349 to i32
  %xor478 = xor i32 %shl476, %conv477
  %350 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom479 = sext i32 %350 to i64
  %351 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev480 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %351, i32 0, i32 12
  %arrayidx481 = getelementptr inbounds [60 x i32], [60 x i32]* %prev480, i32 0, i64 %idxprom479
  %352 = load i32, i32* %arrayidx481, align 4, !tbaa !10
  %xor482 = xor i32 %xor478, %352
  %conv483 = trunc i32 %xor482 to i8
  %353 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr484 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %incdec.ptr484, i8** %q, align 8, !tbaa !1
  store i8 %conv483, i8* %incdec.ptr484, align 1, !tbaa !13
  %354 = load i8, i8* %t, align 1, !tbaa !13
  %conv485 = zext i8 %354 to i32
  %355 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom486 = sext i32 %355 to i64
  %356 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev487 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %356, i32 0, i32 12
  %arrayidx488 = getelementptr inbounds [60 x i32], [60 x i32]* %prev487, i32 0, i64 %idxprom486
  store i32 %conv485, i32* %arrayidx488, align 4, !tbaa !10
  br label %for.inc.489

for.inc.489:                                      ; preds = %for.body.467
  %357 = load i32, i32* %ci, align 4, !tbaa !10
  %inc490 = add nsw i32 %357, 1
  store i32 %inc490, i32* %ci, align 4, !tbaa !10
  br label %for.cond.464

for.end.491:                                      ; preds = %for.cond.464
  br label %for.inc.492

for.inc.492:                                      ; preds = %for.end.491
  %358 = load i32, i32* %ndone, align 4, !tbaa !10
  %359 = load i32, i32* %count, align 4, !tbaa !10
  %sub493 = sub nsw i32 %359, %358
  store i32 %sub493, i32* %count, align 4, !tbaa !10
  br label %for.cond.454

for.end.494:                                      ; preds = %for.cond.454
  %360 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev495 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %360, i32 0, i32 12
  %arrayidx496 = getelementptr inbounds [60 x i32], [60 x i32]* %prev495, i32 0, i64 0
  %361 = load i32, i32* %arrayidx496, align 4, !tbaa !10
  store i32 %361, i32* %s0, align 4, !tbaa !10
  br label %do.cond.497

do.cond.497:                                      ; preds = %for.end.494
  br label %do.end.498

do.end.498:                                       ; preds = %do.cond.497
  br label %if.end.499

if.end.499:                                       ; preds = %do.end.498, %do.end.449
  br label %sw.epilog

sw.bb.500:                                        ; preds = %cond.end.22
  br label %for.cond.501

for.cond.501:                                     ; preds = %for.inc.521, %sw.bb.500
  %362 = load i32, i32* %count, align 4, !tbaa !10
  %cmp502 = icmp sge i32 %362, 1
  br i1 %cmp502, label %for.body.504, label %for.end.523

for.body.504:                                     ; preds = %for.cond.501
  %363 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr505 = getelementptr inbounds i8, i8* %363, i64 1
  store i8* %add.ptr505, i8** %p, align 8, !tbaa !1
  %364 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr506 = getelementptr inbounds i8, i8* %364, i64 1
  store i8* %add.ptr506, i8** %q, align 8, !tbaa !1
  %365 = load i8*, i8** %p, align 8, !tbaa !1
  %366 = load i8, i8* %365, align 1, !tbaa !13
  store i8 %366, i8* %t, align 1, !tbaa !13
  %367 = load i32, i32* %s0, align 4, !tbaa !10
  %shl507 = shl i32 %367, 6
  %368 = load i8, i8* %t, align 1, !tbaa !13
  %conv508 = zext i8 %368 to i32
  %shr509 = ashr i32 %conv508, 2
  %or510 = or i32 %shl507, %shr509
  store i32 %or510, i32* %s0, align 4, !tbaa !10
  %369 = load i8, i8* %t, align 1, !tbaa !13
  %conv511 = zext i8 %369 to i32
  %neg512 = xor i32 %conv511, -1
  %370 = load i32, i32* %s0, align 4, !tbaa !10
  %and513 = and i32 %neg512, %370
  %and514 = and i32 %and513, 85
  %shl515 = shl i32 %and514, 1
  %371 = load i8, i8* %t, align 1, !tbaa !13
  %conv516 = zext i8 %371 to i32
  %xor517 = xor i32 %shl515, %conv516
  %372 = load i32, i32* %s0, align 4, !tbaa !10
  %xor518 = xor i32 %xor517, %372
  %conv519 = trunc i32 %xor518 to i8
  %373 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv519, i8* %373, align 1, !tbaa !13
  %374 = load i8, i8* %t, align 1, !tbaa !13
  %conv520 = zext i8 %374 to i32
  store i32 %conv520, i32* %s0, align 4, !tbaa !10
  br label %for.inc.521

for.inc.521:                                      ; preds = %for.body.504
  %375 = load i32, i32* %count, align 4, !tbaa !10
  %sub522 = sub nsw i32 %375, 1
  store i32 %sub522, i32* %count, align 4, !tbaa !10
  br label %for.cond.501

for.end.523:                                      ; preds = %for.cond.501
  br label %sw.epilog

sw.bb.524:                                        ; preds = %cond.end.22
  br label %for.cond.525

for.cond.525:                                     ; preds = %for.inc.545, %sw.bb.524
  %376 = load i32, i32* %count, align 4, !tbaa !10
  %cmp526 = icmp sge i32 %376, 1
  br i1 %cmp526, label %for.body.528, label %for.end.547

for.body.528:                                     ; preds = %for.cond.525
  %377 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr529 = getelementptr inbounds i8, i8* %377, i64 1
  store i8* %add.ptr529, i8** %p, align 8, !tbaa !1
  %378 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr530 = getelementptr inbounds i8, i8* %378, i64 1
  store i8* %add.ptr530, i8** %q, align 8, !tbaa !1
  %379 = load i8*, i8** %p, align 8, !tbaa !1
  %380 = load i8, i8* %379, align 1, !tbaa !13
  store i8 %380, i8* %t, align 1, !tbaa !13
  %381 = load i32, i32* %s0, align 4, !tbaa !10
  %shl531 = shl i32 %381, 4
  %382 = load i8, i8* %t, align 1, !tbaa !13
  %conv532 = zext i8 %382 to i32
  %shr533 = ashr i32 %conv532, 4
  %or534 = or i32 %shl531, %shr533
  store i32 %or534, i32* %s0, align 4, !tbaa !10
  %383 = load i8, i8* %t, align 1, !tbaa !13
  %conv535 = zext i8 %383 to i32
  %neg536 = xor i32 %conv535, -1
  %384 = load i32, i32* %s0, align 4, !tbaa !10
  %and537 = and i32 %neg536, %384
  %and538 = and i32 %and537, 85
  %shl539 = shl i32 %and538, 1
  %385 = load i8, i8* %t, align 1, !tbaa !13
  %conv540 = zext i8 %385 to i32
  %xor541 = xor i32 %shl539, %conv540
  %386 = load i32, i32* %s0, align 4, !tbaa !10
  %xor542 = xor i32 %xor541, %386
  %conv543 = trunc i32 %xor542 to i8
  %387 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv543, i8* %387, align 1, !tbaa !13
  %388 = load i8, i8* %t, align 1, !tbaa !13
  %conv544 = zext i8 %388 to i32
  store i32 %conv544, i32* %s0, align 4, !tbaa !10
  br label %for.inc.545

for.inc.545:                                      ; preds = %for.body.528
  %389 = load i32, i32* %count, align 4, !tbaa !10
  %sub546 = sub nsw i32 %389, 1
  store i32 %sub546, i32* %count, align 4, !tbaa !10
  br label %for.cond.525

for.end.547:                                      ; preds = %for.cond.525
  br label %sw.epilog

sw.bb.548:                                        ; preds = %cond.end.22
  br label %for.cond.549

for.cond.549:                                     ; preds = %for.inc.569, %sw.bb.548
  %390 = load i32, i32* %count, align 4, !tbaa !10
  %cmp550 = icmp sge i32 %390, 1
  br i1 %cmp550, label %for.body.552, label %for.end.571

for.body.552:                                     ; preds = %for.cond.549
  %391 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr553 = getelementptr inbounds i8, i8* %391, i64 1
  store i8* %add.ptr553, i8** %p, align 8, !tbaa !1
  %392 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr554 = getelementptr inbounds i8, i8* %392, i64 1
  store i8* %add.ptr554, i8** %q, align 8, !tbaa !1
  %393 = load i8*, i8** %p, align 8, !tbaa !1
  %394 = load i8, i8* %393, align 1, !tbaa !13
  store i8 %394, i8* %t, align 1, !tbaa !13
  %395 = load i32, i32* %s0, align 4, !tbaa !10
  %shl555 = shl i32 %395, 2
  %396 = load i8, i8* %t, align 1, !tbaa !13
  %conv556 = zext i8 %396 to i32
  %shr557 = ashr i32 %conv556, 6
  %or558 = or i32 %shl555, %shr557
  store i32 %or558, i32* %s0, align 4, !tbaa !10
  %397 = load i8, i8* %t, align 1, !tbaa !13
  %conv559 = zext i8 %397 to i32
  %neg560 = xor i32 %conv559, -1
  %398 = load i32, i32* %s0, align 4, !tbaa !10
  %and561 = and i32 %neg560, %398
  %and562 = and i32 %and561, 85
  %shl563 = shl i32 %and562, 1
  %399 = load i8, i8* %t, align 1, !tbaa !13
  %conv564 = zext i8 %399 to i32
  %xor565 = xor i32 %shl563, %conv564
  %400 = load i32, i32* %s0, align 4, !tbaa !10
  %xor566 = xor i32 %xor565, %400
  %conv567 = trunc i32 %xor566 to i8
  %401 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv567, i8* %401, align 1, !tbaa !13
  %402 = load i8, i8* %t, align 1, !tbaa !13
  %conv568 = zext i8 %402 to i32
  store i32 %conv568, i32* %s0, align 4, !tbaa !10
  br label %for.inc.569

for.inc.569:                                      ; preds = %for.body.552
  %403 = load i32, i32* %count, align 4, !tbaa !10
  %sub570 = sub nsw i32 %403, 1
  store i32 %sub570, i32* %count, align 4, !tbaa !10
  br label %for.cond.549

for.end.571:                                      ; preds = %for.cond.549
  br label %sw.epilog

sw.bb.572:                                        ; preds = %cond.end.22
  br label %for.cond.573

for.cond.573:                                     ; preds = %for.inc.589, %sw.bb.572
  %404 = load i32, i32* %count, align 4, !tbaa !10
  %cmp574 = icmp sge i32 %404, 1
  br i1 %cmp574, label %for.body.576, label %for.end.591

for.body.576:                                     ; preds = %for.cond.573
  %405 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr577 = getelementptr inbounds i8, i8* %405, i64 1
  store i8* %add.ptr577, i8** %p, align 8, !tbaa !1
  %406 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr578 = getelementptr inbounds i8, i8* %406, i64 1
  store i8* %add.ptr578, i8** %q, align 8, !tbaa !1
  %407 = load i8*, i8** %p, align 8, !tbaa !1
  %408 = load i8, i8* %407, align 1, !tbaa !13
  store i8 %408, i8* %t, align 1, !tbaa !13
  %409 = load i8, i8* %t, align 1, !tbaa !13
  %conv579 = zext i8 %409 to i32
  %neg580 = xor i32 %conv579, -1
  %410 = load i32, i32* %s0, align 4, !tbaa !10
  %and581 = and i32 %neg580, %410
  %and582 = and i32 %and581, 85
  %shl583 = shl i32 %and582, 1
  %411 = load i8, i8* %t, align 1, !tbaa !13
  %conv584 = zext i8 %411 to i32
  %xor585 = xor i32 %shl583, %conv584
  %412 = load i32, i32* %s0, align 4, !tbaa !10
  %xor586 = xor i32 %xor585, %412
  %conv587 = trunc i32 %xor586 to i8
  %413 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv587, i8* %413, align 1, !tbaa !13
  %414 = load i8, i8* %t, align 1, !tbaa !13
  %conv588 = zext i8 %414 to i32
  store i32 %conv588, i32* %s0, align 4, !tbaa !10
  br label %for.inc.589

for.inc.589:                                      ; preds = %for.body.576
  %415 = load i32, i32* %count, align 4, !tbaa !10
  %sub590 = sub nsw i32 %415, 1
  store i32 %sub590, i32* %count, align 4, !tbaa !10
  br label %for.cond.573

for.end.591:                                      ; preds = %for.cond.573
  br label %sw.epilog

sw.bb.592:                                        ; preds = %cond.end.22
  %416 = load i32, i32* %colors, align 4, !tbaa !10
  %and593 = and i32 %416, 7
  %tobool594 = icmp ne i32 %and593, 0
  br i1 %tobool594, label %if.then.595, label %if.else.650

if.then.595:                                      ; preds = %sw.bb.592
  %417 = bitcast i32* %shift596 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %417) #2
  %418 = load i32, i32* %colors, align 4, !tbaa !10
  %and597 = and i32 %418, 3
  %shl598 = shl i32 %and597, 1
  store i32 %shl598, i32* %shift596, align 4, !tbaa !10
  %419 = bitcast i32* %cshift599 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %419) #2
  %420 = load i32, i32* %shift596, align 4, !tbaa !10
  %sub600 = sub nsw i32 8, %420
  store i32 %sub600, i32* %cshift599, align 4, !tbaa !10
  br label %do.body.601

do.body.601:                                      ; preds = %if.then.595
  br label %for.cond.602

for.cond.602:                                     ; preds = %for.inc.645, %do.body.601
  %421 = load i32, i32* %count, align 4, !tbaa !10
  %422 = load i32, i32* %final, align 4, !tbaa !10
  %cmp603 = icmp sge i32 %421, %422
  br i1 %cmp603, label %for.body.605, label %for.end.647

for.body.605:                                     ; preds = %for.cond.602
  %423 = load i32, i32* %count, align 4, !tbaa !10
  %424 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp606 = icmp slt i32 %423, %424
  br i1 %cmp606, label %cond.true.608, label %cond.false.609

cond.true.608:                                    ; preds = %for.body.605
  %425 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.610

cond.false.609:                                   ; preds = %for.body.605
  %426 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.610

cond.end.610:                                     ; preds = %cond.false.609, %cond.true.608
  %cond611 = phi i32 [ %425, %cond.true.608 ], [ %426, %cond.false.609 ]
  store i32 %cond611, i32* %ndone, align 4, !tbaa !10
  store i32 1, i32* %ci, align 4, !tbaa !10
  br label %for.cond.612

for.cond.612:                                     ; preds = %for.inc.642, %cond.end.610
  %427 = load i32, i32* %ci, align 4, !tbaa !10
  %428 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp613 = icmp sle i32 %427, %428
  br i1 %cmp613, label %for.body.615, label %for.end.644

for.body.615:                                     ; preds = %for.cond.612
  %429 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr616 = getelementptr inbounds i8, i8* %429, i32 1
  store i8* %incdec.ptr616, i8** %p, align 8, !tbaa !1
  %430 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr617 = getelementptr inbounds i8, i8* %430, i32 1
  store i8* %incdec.ptr617, i8** %q, align 8, !tbaa !1
  %431 = load i32, i32* %s0, align 4, !tbaa !10
  %432 = load i32, i32* %cshift599, align 4, !tbaa !10
  %shl618 = shl i32 %431, %432
  %433 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom619 = sext i32 %433 to i64
  %434 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev620 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %434, i32 0, i32 12
  %arrayidx621 = getelementptr inbounds [60 x i32], [60 x i32]* %prev620, i32 0, i64 %idxprom619
  %435 = load i32, i32* %arrayidx621, align 4, !tbaa !10
  %436 = load i32, i32* %shift596, align 4, !tbaa !10
  %shr622 = lshr i32 %435, %436
  %or623 = or i32 %shl618, %shr622
  %conv624 = trunc i32 %or623 to i8
  store i8 %conv624, i8* %t, align 1, !tbaa !13
  %437 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom625 = sext i32 %437 to i64
  %438 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev626 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %438, i32 0, i32 12
  %arrayidx627 = getelementptr inbounds [60 x i32], [60 x i32]* %prev626, i32 0, i64 %idxprom625
  %439 = load i32, i32* %arrayidx627, align 4, !tbaa !10
  store i32 %439, i32* %s0, align 4, !tbaa !10
  %440 = load i8*, i8** %p, align 8, !tbaa !1
  %441 = load i8, i8* %440, align 1, !tbaa !13
  %conv628 = zext i8 %441 to i32
  %442 = load i8, i8* %t, align 1, !tbaa !13
  %conv629 = zext i8 %442 to i32
  %and630 = and i32 %conv628, %conv629
  %and631 = and i32 %and630, 85
  %shl632 = shl i32 %and631, 1
  %443 = load i8*, i8** %p, align 8, !tbaa !1
  %444 = load i8, i8* %443, align 1, !tbaa !13
  %conv633 = zext i8 %444 to i32
  %xor634 = xor i32 %shl632, %conv633
  %445 = load i8, i8* %t, align 1, !tbaa !13
  %conv635 = zext i8 %445 to i32
  %xor636 = xor i32 %xor634, %conv635
  %conv637 = trunc i32 %xor636 to i8
  %446 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv637, i8* %446, align 1, !tbaa !13
  %conv638 = zext i8 %conv637 to i32
  %447 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom639 = sext i32 %447 to i64
  %448 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev640 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %448, i32 0, i32 12
  %arrayidx641 = getelementptr inbounds [60 x i32], [60 x i32]* %prev640, i32 0, i64 %idxprom639
  store i32 %conv638, i32* %arrayidx641, align 4, !tbaa !10
  br label %for.inc.642

for.inc.642:                                      ; preds = %for.body.615
  %449 = load i32, i32* %ci, align 4, !tbaa !10
  %inc643 = add nsw i32 %449, 1
  store i32 %inc643, i32* %ci, align 4, !tbaa !10
  br label %for.cond.612

for.end.644:                                      ; preds = %for.cond.612
  br label %for.inc.645

for.inc.645:                                      ; preds = %for.end.644
  %450 = load i32, i32* %ndone, align 4, !tbaa !10
  %451 = load i32, i32* %count, align 4, !tbaa !10
  %sub646 = sub nsw i32 %451, %450
  store i32 %sub646, i32* %count, align 4, !tbaa !10
  br label %for.cond.602

for.end.647:                                      ; preds = %for.cond.602
  br label %do.cond.648

do.cond.648:                                      ; preds = %for.end.647
  br label %do.end.649

do.end.649:                                       ; preds = %do.cond.648
  %452 = bitcast i32* %cshift599 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %452) #2
  %453 = bitcast i32* %shift596 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %453) #2
  br label %if.end.698

if.else.650:                                      ; preds = %sw.bb.592
  br label %do.body.651

do.body.651:                                      ; preds = %if.else.650
  %454 = load i32, i32* %s0, align 4, !tbaa !10
  %455 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev652 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %455, i32 0, i32 12
  %arrayidx653 = getelementptr inbounds [60 x i32], [60 x i32]* %prev652, i32 0, i64 0
  store i32 %454, i32* %arrayidx653, align 4, !tbaa !10
  br label %for.cond.654

for.cond.654:                                     ; preds = %for.inc.691, %do.body.651
  %456 = load i32, i32* %count, align 4, !tbaa !10
  %457 = load i32, i32* %final, align 4, !tbaa !10
  %cmp655 = icmp sge i32 %456, %457
  br i1 %cmp655, label %for.body.657, label %for.end.693

for.body.657:                                     ; preds = %for.cond.654
  %458 = load i32, i32* %count, align 4, !tbaa !10
  %459 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp658 = icmp slt i32 %458, %459
  br i1 %cmp658, label %cond.true.660, label %cond.false.661

cond.true.660:                                    ; preds = %for.body.657
  %460 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.662

cond.false.661:                                   ; preds = %for.body.657
  %461 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.662

cond.end.662:                                     ; preds = %cond.false.661, %cond.true.660
  %cond663 = phi i32 [ %460, %cond.true.660 ], [ %461, %cond.false.661 ]
  store i32 %cond663, i32* %ndone, align 4, !tbaa !10
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.664

for.cond.664:                                     ; preds = %for.inc.688, %cond.end.662
  %462 = load i32, i32* %ci, align 4, !tbaa !10
  %463 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp665 = icmp slt i32 %462, %463
  br i1 %cmp665, label %for.body.667, label %for.end.690

for.body.667:                                     ; preds = %for.cond.664
  %464 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr668 = getelementptr inbounds i8, i8* %464, i32 1
  store i8* %incdec.ptr668, i8** %p, align 8, !tbaa !1
  %465 = load i8, i8* %incdec.ptr668, align 1, !tbaa !13
  store i8 %465, i8* %t, align 1, !tbaa !13
  %466 = load i8, i8* %t, align 1, !tbaa !13
  %conv669 = zext i8 %466 to i32
  %467 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom670 = sext i32 %467 to i64
  %468 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev671 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %468, i32 0, i32 12
  %arrayidx672 = getelementptr inbounds [60 x i32], [60 x i32]* %prev671, i32 0, i64 %idxprom670
  %469 = load i32, i32* %arrayidx672, align 4, !tbaa !10
  %and673 = and i32 %conv669, %469
  %and674 = and i32 %and673, 85
  %shl675 = shl i32 %and674, 1
  %470 = load i8, i8* %t, align 1, !tbaa !13
  %conv676 = zext i8 %470 to i32
  %xor677 = xor i32 %shl675, %conv676
  %471 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom678 = sext i32 %471 to i64
  %472 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev679 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %472, i32 0, i32 12
  %arrayidx680 = getelementptr inbounds [60 x i32], [60 x i32]* %prev679, i32 0, i64 %idxprom678
  %473 = load i32, i32* %arrayidx680, align 4, !tbaa !10
  %xor681 = xor i32 %xor677, %473
  %conv682 = trunc i32 %xor681 to i8
  %474 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr683 = getelementptr inbounds i8, i8* %474, i32 1
  store i8* %incdec.ptr683, i8** %q, align 8, !tbaa !1
  store i8 %conv682, i8* %incdec.ptr683, align 1, !tbaa !13
  %conv684 = zext i8 %conv682 to i32
  %475 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom685 = sext i32 %475 to i64
  %476 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev686 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %476, i32 0, i32 12
  %arrayidx687 = getelementptr inbounds [60 x i32], [60 x i32]* %prev686, i32 0, i64 %idxprom685
  store i32 %conv684, i32* %arrayidx687, align 4, !tbaa !10
  br label %for.inc.688

for.inc.688:                                      ; preds = %for.body.667
  %477 = load i32, i32* %ci, align 4, !tbaa !10
  %inc689 = add nsw i32 %477, 1
  store i32 %inc689, i32* %ci, align 4, !tbaa !10
  br label %for.cond.664

for.end.690:                                      ; preds = %for.cond.664
  br label %for.inc.691

for.inc.691:                                      ; preds = %for.end.690
  %478 = load i32, i32* %ndone, align 4, !tbaa !10
  %479 = load i32, i32* %count, align 4, !tbaa !10
  %sub692 = sub nsw i32 %479, %478
  store i32 %sub692, i32* %count, align 4, !tbaa !10
  br label %for.cond.654

for.end.693:                                      ; preds = %for.cond.654
  %480 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev694 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %480, i32 0, i32 12
  %arrayidx695 = getelementptr inbounds [60 x i32], [60 x i32]* %prev694, i32 0, i64 0
  %481 = load i32, i32* %arrayidx695, align 4, !tbaa !10
  store i32 %481, i32* %s0, align 4, !tbaa !10
  br label %do.cond.696

do.cond.696:                                      ; preds = %for.end.693
  br label %do.end.697

do.end.697:                                       ; preds = %do.cond.696
  br label %if.end.698

if.end.698:                                       ; preds = %do.end.697, %do.end.649
  br label %sw.epilog

sw.bb.699:                                        ; preds = %cond.end.22
  br label %for.cond.700

for.cond.700:                                     ; preds = %for.inc.734, %sw.bb.699
  %482 = load i32, i32* %count, align 4, !tbaa !10
  %cmp701 = icmp sge i32 %482, 1
  br i1 %cmp701, label %for.body.703, label %for.end.736

for.body.703:                                     ; preds = %for.cond.700
  %483 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr704 = getelementptr inbounds i8, i8* %483, i64 1
  store i8* %add.ptr704, i8** %p, align 8, !tbaa !1
  %484 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr705 = getelementptr inbounds i8, i8* %484, i64 1
  store i8* %add.ptr705, i8** %q, align 8, !tbaa !1
  %485 = load i8*, i8** %p, align 8, !tbaa !1
  %486 = load i8, i8* %485, align 1, !tbaa !13
  %conv706 = zext i8 %486 to i32
  %487 = load i32, i32* %s0, align 4, !tbaa !10
  %shl707 = shl i32 %487, 6
  %add = add i32 %conv706, %shl707
  %conv708 = trunc i32 %add to i8
  store i8 %conv708, i8* %t, align 1, !tbaa !13
  %488 = load i8, i8* %t, align 1, !tbaa !13
  %conv709 = zext i8 %488 to i32
  %shr710 = ashr i32 %conv709, 2
  %489 = load i8, i8* %t, align 1, !tbaa !13
  %conv711 = zext i8 %489 to i32
  %and712 = and i32 %shr710, %conv711
  %and713 = and i32 %and712, 85
  %shl714 = shl i32 %and713, 1
  %490 = load i8, i8* %t, align 1, !tbaa !13
  %conv715 = zext i8 %490 to i32
  %shr716 = ashr i32 %conv715, 2
  %xor717 = xor i32 %shl714, %shr716
  %491 = load i8, i8* %t, align 1, !tbaa !13
  %conv718 = zext i8 %491 to i32
  %xor719 = xor i32 %xor717, %conv718
  %conv720 = trunc i32 %xor719 to i8
  store i8 %conv720, i8* %t, align 1, !tbaa !13
  %492 = load i8, i8* %t, align 1, !tbaa !13
  %conv721 = zext i8 %492 to i32
  %shr722 = ashr i32 %conv721, 4
  %493 = load i8, i8* %t, align 1, !tbaa !13
  %conv723 = zext i8 %493 to i32
  %and724 = and i32 %shr722, %conv723
  %and725 = and i32 %and724, 85
  %shl726 = shl i32 %and725, 1
  %494 = load i8, i8* %t, align 1, !tbaa !13
  %conv727 = zext i8 %494 to i32
  %shr728 = ashr i32 %conv727, 4
  %xor729 = xor i32 %shl726, %shr728
  %495 = load i8, i8* %t, align 1, !tbaa !13
  %conv730 = zext i8 %495 to i32
  %xor731 = xor i32 %xor729, %conv730
  %conv732 = trunc i32 %xor731 to i8
  %496 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv732, i8* %496, align 1, !tbaa !13
  %conv733 = zext i8 %conv732 to i32
  store i32 %conv733, i32* %s0, align 4, !tbaa !10
  br label %for.inc.734

for.inc.734:                                      ; preds = %for.body.703
  %497 = load i32, i32* %count, align 4, !tbaa !10
  %sub735 = sub nsw i32 %497, 1
  store i32 %sub735, i32* %count, align 4, !tbaa !10
  br label %for.cond.700

for.end.736:                                      ; preds = %for.cond.700
  br label %sw.epilog

sw.bb.737:                                        ; preds = %cond.end.22
  br label %for.cond.738

for.cond.738:                                     ; preds = %for.inc.767, %sw.bb.737
  %498 = load i32, i32* %count, align 4, !tbaa !10
  %cmp739 = icmp sge i32 %498, 1
  br i1 %cmp739, label %for.body.741, label %for.end.769

for.body.741:                                     ; preds = %for.cond.738
  %499 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr742 = getelementptr inbounds i8, i8* %499, i64 1
  store i8* %add.ptr742, i8** %p, align 8, !tbaa !1
  %500 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr743 = getelementptr inbounds i8, i8* %500, i64 1
  store i8* %add.ptr743, i8** %q, align 8, !tbaa !1
  %501 = load i8*, i8** %p, align 8, !tbaa !1
  %502 = load i8, i8* %501, align 1, !tbaa !13
  store i8 %502, i8* %t, align 1, !tbaa !13
  %503 = load i8, i8* %t, align 1, !tbaa !13
  %conv744 = zext i8 %503 to i32
  %504 = load i32, i32* %s0, align 4, !tbaa !10
  %shl745 = shl i32 %504, 4
  %and746 = and i32 %conv744, %shl745
  %and747 = and i32 %and746, 85
  %shl748 = shl i32 %and747, 1
  %505 = load i8, i8* %t, align 1, !tbaa !13
  %conv749 = zext i8 %505 to i32
  %xor750 = xor i32 %shl748, %conv749
  %506 = load i32, i32* %s0, align 4, !tbaa !10
  %shl751 = shl i32 %506, 4
  %xor752 = xor i32 %xor750, %shl751
  %conv753 = trunc i32 %xor752 to i8
  store i8 %conv753, i8* %t, align 1, !tbaa !13
  %507 = load i8, i8* %t, align 1, !tbaa !13
  %conv754 = zext i8 %507 to i32
  %shr755 = ashr i32 %conv754, 4
  %508 = load i8, i8* %t, align 1, !tbaa !13
  %conv756 = zext i8 %508 to i32
  %and757 = and i32 %shr755, %conv756
  %and758 = and i32 %and757, 85
  %shl759 = shl i32 %and758, 1
  %509 = load i8, i8* %t, align 1, !tbaa !13
  %conv760 = zext i8 %509 to i32
  %shr761 = ashr i32 %conv760, 4
  %xor762 = xor i32 %shl759, %shr761
  %510 = load i8, i8* %t, align 1, !tbaa !13
  %conv763 = zext i8 %510 to i32
  %xor764 = xor i32 %xor762, %conv763
  %conv765 = trunc i32 %xor764 to i8
  %511 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv765, i8* %511, align 1, !tbaa !13
  %conv766 = zext i8 %conv765 to i32
  store i32 %conv766, i32* %s0, align 4, !tbaa !10
  br label %for.inc.767

for.inc.767:                                      ; preds = %for.body.741
  %512 = load i32, i32* %count, align 4, !tbaa !10
  %sub768 = sub nsw i32 %512, 1
  store i32 %sub768, i32* %count, align 4, !tbaa !10
  br label %for.cond.738

for.end.769:                                      ; preds = %for.cond.738
  br label %sw.epilog

sw.bb.770:                                        ; preds = %cond.end.22
  br label %for.cond.771

for.cond.771:                                     ; preds = %for.inc.800, %sw.bb.770
  %513 = load i32, i32* %count, align 4, !tbaa !10
  %cmp772 = icmp sge i32 %513, 1
  br i1 %cmp772, label %for.body.774, label %for.end.802

for.body.774:                                     ; preds = %for.cond.771
  %514 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr775 = getelementptr inbounds i8, i8* %514, i64 1
  store i8* %add.ptr775, i8** %p, align 8, !tbaa !1
  %515 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr776 = getelementptr inbounds i8, i8* %515, i64 1
  store i8* %add.ptr776, i8** %q, align 8, !tbaa !1
  %516 = load i8*, i8** %p, align 8, !tbaa !1
  %517 = load i8, i8* %516, align 1, !tbaa !13
  store i8 %517, i8* %t, align 1, !tbaa !13
  %518 = load i8, i8* %t, align 1, !tbaa !13
  %conv777 = zext i8 %518 to i32
  %519 = load i32, i32* %s0, align 4, !tbaa !10
  %shl778 = shl i32 %519, 2
  %and779 = and i32 %conv777, %shl778
  %and780 = and i32 %and779, 85
  %shl781 = shl i32 %and780, 1
  %520 = load i8, i8* %t, align 1, !tbaa !13
  %conv782 = zext i8 %520 to i32
  %xor783 = xor i32 %shl781, %conv782
  %521 = load i32, i32* %s0, align 4, !tbaa !10
  %shl784 = shl i32 %521, 2
  %xor785 = xor i32 %xor783, %shl784
  %conv786 = trunc i32 %xor785 to i8
  store i8 %conv786, i8* %t, align 1, !tbaa !13
  %522 = load i8, i8* %t, align 1, !tbaa !13
  %conv787 = zext i8 %522 to i32
  %shr788 = ashr i32 %conv787, 6
  %523 = load i8, i8* %t, align 1, !tbaa !13
  %conv789 = zext i8 %523 to i32
  %and790 = and i32 %shr788, %conv789
  %and791 = and i32 %and790, 85
  %shl792 = shl i32 %and791, 1
  %524 = load i8, i8* %t, align 1, !tbaa !13
  %conv793 = zext i8 %524 to i32
  %shr794 = ashr i32 %conv793, 6
  %xor795 = xor i32 %shl792, %shr794
  %525 = load i8, i8* %t, align 1, !tbaa !13
  %conv796 = zext i8 %525 to i32
  %xor797 = xor i32 %xor795, %conv796
  %conv798 = trunc i32 %xor797 to i8
  %526 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv798, i8* %526, align 1, !tbaa !13
  %conv799 = zext i8 %conv798 to i32
  store i32 %conv799, i32* %s0, align 4, !tbaa !10
  br label %for.inc.800

for.inc.800:                                      ; preds = %for.body.774
  %527 = load i32, i32* %count, align 4, !tbaa !10
  %sub801 = sub nsw i32 %527, 1
  store i32 %sub801, i32* %count, align 4, !tbaa !10
  br label %for.cond.771

for.end.802:                                      ; preds = %for.cond.771
  br label %sw.epilog

sw.bb.803:                                        ; preds = %cond.end.22
  br label %for.cond.804

for.cond.804:                                     ; preds = %for.inc.819, %sw.bb.803
  %528 = load i32, i32* %count, align 4, !tbaa !10
  %cmp805 = icmp sge i32 %528, 1
  br i1 %cmp805, label %for.body.807, label %for.end.821

for.body.807:                                     ; preds = %for.cond.804
  %529 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr808 = getelementptr inbounds i8, i8* %529, i64 1
  store i8* %add.ptr808, i8** %p, align 8, !tbaa !1
  %530 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr809 = getelementptr inbounds i8, i8* %530, i64 1
  store i8* %add.ptr809, i8** %q, align 8, !tbaa !1
  %531 = load i8*, i8** %p, align 8, !tbaa !1
  %532 = load i8, i8* %531, align 1, !tbaa !13
  store i8 %532, i8* %t, align 1, !tbaa !13
  %533 = load i8, i8* %t, align 1, !tbaa !13
  %conv810 = zext i8 %533 to i32
  %534 = load i32, i32* %s0, align 4, !tbaa !10
  %and811 = and i32 %conv810, %534
  %and812 = and i32 %and811, 85
  %shl813 = shl i32 %and812, 1
  %535 = load i8, i8* %t, align 1, !tbaa !13
  %conv814 = zext i8 %535 to i32
  %xor815 = xor i32 %shl813, %conv814
  %536 = load i32, i32* %s0, align 4, !tbaa !10
  %xor816 = xor i32 %xor815, %536
  %conv817 = trunc i32 %xor816 to i8
  %537 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv817, i8* %537, align 1, !tbaa !13
  %conv818 = zext i8 %conv817 to i32
  store i32 %conv818, i32* %s0, align 4, !tbaa !10
  br label %for.inc.819

for.inc.819:                                      ; preds = %for.body.807
  %538 = load i32, i32* %count, align 4, !tbaa !10
  %sub820 = sub nsw i32 %538, 1
  store i32 %sub820, i32* %count, align 4, !tbaa !10
  br label %for.cond.804

for.end.821:                                      ; preds = %for.cond.804
  br label %sw.epilog

sw.bb.822:                                        ; preds = %cond.end.22, %cond.end.22
  br label %enc4

enc4:                                             ; preds = %for.end.1007, %sw.bb.822
  %539 = load i32, i32* %colors, align 4, !tbaa !10
  %and823 = and i32 %539, 1
  %tobool824 = icmp ne i32 %and823, 0
  br i1 %tobool824, label %if.then.825, label %if.else.876

if.then.825:                                      ; preds = %enc4
  br label %do.body.826

do.body.826:                                      ; preds = %if.then.825
  br label %for.cond.827

for.cond.827:                                     ; preds = %for.inc.871, %do.body.826
  %540 = load i32, i32* %count, align 4, !tbaa !10
  %541 = load i32, i32* %final, align 4, !tbaa !10
  %cmp828 = icmp sge i32 %540, %541
  br i1 %cmp828, label %for.body.830, label %for.end.873

for.body.830:                                     ; preds = %for.cond.827
  %542 = load i32, i32* %count, align 4, !tbaa !10
  %543 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp831 = icmp slt i32 %542, %543
  br i1 %cmp831, label %cond.true.833, label %cond.false.834

cond.true.833:                                    ; preds = %for.body.830
  %544 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.835

cond.false.834:                                   ; preds = %for.body.830
  %545 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.835

cond.end.835:                                     ; preds = %cond.false.834, %cond.true.833
  %cond836 = phi i32 [ %544, %cond.true.833 ], [ %545, %cond.false.834 ]
  store i32 %cond836, i32* %ndone, align 4, !tbaa !10
  store i32 1, i32* %ci, align 4, !tbaa !10
  br label %for.cond.837

for.cond.837:                                     ; preds = %for.inc.868, %cond.end.835
  %546 = load i32, i32* %ci, align 4, !tbaa !10
  %547 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp838 = icmp sle i32 %546, %547
  br i1 %cmp838, label %for.body.840, label %for.end.870

for.body.840:                                     ; preds = %for.cond.837
  %548 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr841 = getelementptr inbounds i8, i8* %548, i32 1
  store i8* %incdec.ptr841, i8** %p, align 8, !tbaa !1
  %549 = load i32, i32* %s0, align 4, !tbaa !10
  %shl842 = shl i32 %549, 4
  %550 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom843 = sext i32 %550 to i64
  %551 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev844 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %551, i32 0, i32 12
  %arrayidx845 = getelementptr inbounds [60 x i32], [60 x i32]* %prev844, i32 0, i64 %idxprom843
  %552 = load i32, i32* %arrayidx845, align 4, !tbaa !10
  %shr846 = lshr i32 %552, 4
  %or847 = or i32 %shl842, %shr846
  %conv848 = trunc i32 %or847 to i8
  store i8 %conv848, i8* %t, align 1, !tbaa !13
  %553 = load i8*, i8** %p, align 8, !tbaa !1
  %554 = load i8, i8* %553, align 1, !tbaa !13
  %conv849 = zext i8 %554 to i32
  %555 = load i8, i8* %t, align 1, !tbaa !13
  %conv850 = zext i8 %555 to i32
  %sub851 = sub nsw i32 %conv849, %conv850
  %and852 = and i32 %sub851, 15
  %556 = load i8*, i8** %p, align 8, !tbaa !1
  %557 = load i8, i8* %556, align 1, !tbaa !13
  %conv853 = zext i8 %557 to i32
  %and854 = and i32 %conv853, 240
  %add855 = add nsw i32 %and852, %and854
  %558 = load i8, i8* %t, align 1, !tbaa !13
  %conv856 = zext i8 %558 to i32
  %and857 = and i32 %conv856, 240
  %sub858 = sub nsw i32 %add855, %and857
  %conv859 = trunc i32 %sub858 to i8
  %559 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr860 = getelementptr inbounds i8, i8* %559, i32 1
  store i8* %incdec.ptr860, i8** %q, align 8, !tbaa !1
  store i8 %conv859, i8* %incdec.ptr860, align 1, !tbaa !13
  %560 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom861 = sext i32 %560 to i64
  %561 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev862 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %561, i32 0, i32 12
  %arrayidx863 = getelementptr inbounds [60 x i32], [60 x i32]* %prev862, i32 0, i64 %idxprom861
  %562 = load i32, i32* %arrayidx863, align 4, !tbaa !10
  store i32 %562, i32* %s0, align 4, !tbaa !10
  %563 = load i8*, i8** %p, align 8, !tbaa !1
  %564 = load i8, i8* %563, align 1, !tbaa !13
  %conv864 = zext i8 %564 to i32
  %565 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom865 = sext i32 %565 to i64
  %566 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev866 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %566, i32 0, i32 12
  %arrayidx867 = getelementptr inbounds [60 x i32], [60 x i32]* %prev866, i32 0, i64 %idxprom865
  store i32 %conv864, i32* %arrayidx867, align 4, !tbaa !10
  br label %for.inc.868

for.inc.868:                                      ; preds = %for.body.840
  %567 = load i32, i32* %ci, align 4, !tbaa !10
  %inc869 = add nsw i32 %567, 1
  store i32 %inc869, i32* %ci, align 4, !tbaa !10
  br label %for.cond.837

for.end.870:                                      ; preds = %for.cond.837
  br label %for.inc.871

for.inc.871:                                      ; preds = %for.end.870
  %568 = load i32, i32* %ndone, align 4, !tbaa !10
  %569 = load i32, i32* %count, align 4, !tbaa !10
  %sub872 = sub nsw i32 %569, %568
  store i32 %sub872, i32* %count, align 4, !tbaa !10
  br label %for.cond.827

for.end.873:                                      ; preds = %for.cond.827
  br label %do.cond.874

do.cond.874:                                      ; preds = %for.end.873
  br label %do.end.875

do.end.875:                                       ; preds = %do.cond.874
  br label %if.end.925

if.else.876:                                      ; preds = %enc4
  br label %do.body.877

do.body.877:                                      ; preds = %if.else.876
  %570 = load i32, i32* %s0, align 4, !tbaa !10
  %571 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev878 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %571, i32 0, i32 12
  %arrayidx879 = getelementptr inbounds [60 x i32], [60 x i32]* %prev878, i32 0, i64 0
  store i32 %570, i32* %arrayidx879, align 4, !tbaa !10
  br label %for.cond.880

for.cond.880:                                     ; preds = %for.inc.918, %do.body.877
  %572 = load i32, i32* %count, align 4, !tbaa !10
  %573 = load i32, i32* %final, align 4, !tbaa !10
  %cmp881 = icmp sge i32 %572, %573
  br i1 %cmp881, label %for.body.883, label %for.end.920

for.body.883:                                     ; preds = %for.cond.880
  %574 = load i32, i32* %count, align 4, !tbaa !10
  %575 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp884 = icmp slt i32 %574, %575
  br i1 %cmp884, label %cond.true.886, label %cond.false.887

cond.true.886:                                    ; preds = %for.body.883
  %576 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.888

cond.false.887:                                   ; preds = %for.body.883
  %577 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.888

cond.end.888:                                     ; preds = %cond.false.887, %cond.true.886
  %cond889 = phi i32 [ %576, %cond.true.886 ], [ %577, %cond.false.887 ]
  store i32 %cond889, i32* %ndone, align 4, !tbaa !10
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.890

for.cond.890:                                     ; preds = %for.inc.915, %cond.end.888
  %578 = load i32, i32* %ci, align 4, !tbaa !10
  %579 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp891 = icmp slt i32 %578, %579
  br i1 %cmp891, label %for.body.893, label %for.end.917

for.body.893:                                     ; preds = %for.cond.890
  %580 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr894 = getelementptr inbounds i8, i8* %580, i32 1
  store i8* %incdec.ptr894, i8** %p, align 8, !tbaa !1
  %581 = load i8, i8* %incdec.ptr894, align 1, !tbaa !13
  store i8 %581, i8* %t, align 1, !tbaa !13
  %582 = load i8, i8* %t, align 1, !tbaa !13
  %conv895 = zext i8 %582 to i32
  %583 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom896 = sext i32 %583 to i64
  %584 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev897 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %584, i32 0, i32 12
  %arrayidx898 = getelementptr inbounds [60 x i32], [60 x i32]* %prev897, i32 0, i64 %idxprom896
  %585 = load i32, i32* %arrayidx898, align 4, !tbaa !10
  %sub899 = sub i32 %conv895, %585
  %and900 = and i32 %sub899, 15
  %586 = load i8, i8* %t, align 1, !tbaa !13
  %conv901 = zext i8 %586 to i32
  %and902 = and i32 %conv901, 240
  %add903 = add i32 %and900, %and902
  %587 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom904 = sext i32 %587 to i64
  %588 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev905 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %588, i32 0, i32 12
  %arrayidx906 = getelementptr inbounds [60 x i32], [60 x i32]* %prev905, i32 0, i64 %idxprom904
  %589 = load i32, i32* %arrayidx906, align 4, !tbaa !10
  %and907 = and i32 %589, 240
  %sub908 = sub i32 %add903, %and907
  %conv909 = trunc i32 %sub908 to i8
  %590 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr910 = getelementptr inbounds i8, i8* %590, i32 1
  store i8* %incdec.ptr910, i8** %q, align 8, !tbaa !1
  store i8 %conv909, i8* %incdec.ptr910, align 1, !tbaa !13
  %591 = load i8, i8* %t, align 1, !tbaa !13
  %conv911 = zext i8 %591 to i32
  %592 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom912 = sext i32 %592 to i64
  %593 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev913 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %593, i32 0, i32 12
  %arrayidx914 = getelementptr inbounds [60 x i32], [60 x i32]* %prev913, i32 0, i64 %idxprom912
  store i32 %conv911, i32* %arrayidx914, align 4, !tbaa !10
  br label %for.inc.915

for.inc.915:                                      ; preds = %for.body.893
  %594 = load i32, i32* %ci, align 4, !tbaa !10
  %inc916 = add nsw i32 %594, 1
  store i32 %inc916, i32* %ci, align 4, !tbaa !10
  br label %for.cond.890

for.end.917:                                      ; preds = %for.cond.890
  br label %for.inc.918

for.inc.918:                                      ; preds = %for.end.917
  %595 = load i32, i32* %ndone, align 4, !tbaa !10
  %596 = load i32, i32* %count, align 4, !tbaa !10
  %sub919 = sub nsw i32 %596, %595
  store i32 %sub919, i32* %count, align 4, !tbaa !10
  br label %for.cond.880

for.end.920:                                      ; preds = %for.cond.880
  %597 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev921 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %597, i32 0, i32 12
  %arrayidx922 = getelementptr inbounds [60 x i32], [60 x i32]* %prev921, i32 0, i64 0
  %598 = load i32, i32* %arrayidx922, align 4, !tbaa !10
  store i32 %598, i32* %s0, align 4, !tbaa !10
  br label %do.cond.923

do.cond.923:                                      ; preds = %for.end.920
  br label %do.end.924

do.end.924:                                       ; preds = %do.cond.923
  br label %if.end.925

if.end.925:                                       ; preds = %do.end.924, %do.end.875
  br label %sw.epilog

sw.bb.926:                                        ; preds = %cond.end.22
  br label %for.cond.927

for.cond.927:                                     ; preds = %for.inc.945, %sw.bb.926
  %599 = load i32, i32* %count, align 4, !tbaa !10
  %cmp928 = icmp sge i32 %599, 1
  br i1 %cmp928, label %for.body.930, label %for.end.947

for.body.930:                                     ; preds = %for.cond.927
  %600 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr931 = getelementptr inbounds i8, i8* %600, i64 1
  store i8* %add.ptr931, i8** %p, align 8, !tbaa !1
  %601 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr932 = getelementptr inbounds i8, i8* %601, i64 1
  store i8* %add.ptr932, i8** %q, align 8, !tbaa !1
  %602 = load i8*, i8** %p, align 8, !tbaa !1
  %603 = load i8, i8* %602, align 1, !tbaa !13
  store i8 %603, i8* %t, align 1, !tbaa !13
  %604 = load i8, i8* %t, align 1, !tbaa !13
  %conv933 = zext i8 %604 to i32
  %605 = load i32, i32* %s0, align 4, !tbaa !10
  %shl934 = shl i32 %605, 4
  %sub935 = sub i32 %conv933, %shl934
  %and936 = and i32 %sub935, 240
  %606 = load i8, i8* %t, align 1, !tbaa !13
  %conv937 = zext i8 %606 to i32
  %607 = load i8, i8* %t, align 1, !tbaa !13
  %conv938 = zext i8 %607 to i32
  %shr939 = ashr i32 %conv938, 4
  %sub940 = sub nsw i32 %conv937, %shr939
  %and941 = and i32 %sub940, 15
  %or942 = or i32 %and936, %and941
  %conv943 = trunc i32 %or942 to i8
  %608 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv943, i8* %608, align 1, !tbaa !13
  %609 = load i8, i8* %t, align 1, !tbaa !13
  %conv944 = zext i8 %609 to i32
  store i32 %conv944, i32* %s0, align 4, !tbaa !10
  br label %for.inc.945

for.inc.945:                                      ; preds = %for.body.930
  %610 = load i32, i32* %count, align 4, !tbaa !10
  %sub946 = sub nsw i32 %610, 1
  store i32 %sub946, i32* %count, align 4, !tbaa !10
  br label %for.cond.927

for.end.947:                                      ; preds = %for.cond.927
  br label %sw.epilog

sw.bb.948:                                        ; preds = %cond.end.22
  %611 = bitcast i32* %s1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %611) #2
  %612 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev949 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %612, i32 0, i32 12
  %arrayidx950 = getelementptr inbounds [60 x i32], [60 x i32]* %prev949, i32 0, i64 1
  %613 = load i32, i32* %arrayidx950, align 4, !tbaa !10
  store i32 %613, i32* %s1, align 4, !tbaa !10
  br label %for.cond.951

for.cond.951:                                     ; preds = %for.inc.968, %sw.bb.948
  %614 = load i32, i32* %count, align 4, !tbaa !10
  %cmp952 = icmp sge i32 %614, 1
  br i1 %cmp952, label %for.body.954, label %for.end.970

for.body.954:                                     ; preds = %for.cond.951
  %615 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr955 = getelementptr inbounds i8, i8* %615, i64 1
  store i8* %add.ptr955, i8** %p, align 8, !tbaa !1
  %616 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr956 = getelementptr inbounds i8, i8* %616, i64 1
  store i8* %add.ptr956, i8** %q, align 8, !tbaa !1
  %617 = load i8*, i8** %p, align 8, !tbaa !1
  %618 = load i8, i8* %617, align 1, !tbaa !13
  store i8 %618, i8* %t, align 1, !tbaa !13
  %619 = load i8, i8* %t, align 1, !tbaa !13
  %conv957 = zext i8 %619 to i32
  %620 = load i32, i32* %s0, align 4, !tbaa !10
  %shl958 = shl i32 %620, 4
  %sub959 = sub i32 %conv957, %shl958
  %and960 = and i32 %sub959, 240
  %621 = load i8, i8* %t, align 1, !tbaa !13
  %conv961 = zext i8 %621 to i32
  %622 = load i32, i32* %s1, align 4, !tbaa !10
  %shr962 = lshr i32 %622, 4
  %sub963 = sub i32 %conv961, %shr962
  %and964 = and i32 %sub963, 15
  %or965 = or i32 %and960, %and964
  %conv966 = trunc i32 %or965 to i8
  %623 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv966, i8* %623, align 1, !tbaa !13
  %624 = load i32, i32* %s1, align 4, !tbaa !10
  store i32 %624, i32* %s0, align 4, !tbaa !10
  %625 = load i8, i8* %t, align 1, !tbaa !13
  %conv967 = zext i8 %625 to i32
  store i32 %conv967, i32* %s1, align 4, !tbaa !10
  br label %for.inc.968

for.inc.968:                                      ; preds = %for.body.954
  %626 = load i32, i32* %count, align 4, !tbaa !10
  %sub969 = sub nsw i32 %626, 1
  store i32 %sub969, i32* %count, align 4, !tbaa !10
  br label %for.cond.951

for.end.970:                                      ; preds = %for.cond.951
  %627 = load i32, i32* %s1, align 4, !tbaa !10
  %628 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev971 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %628, i32 0, i32 12
  %arrayidx972 = getelementptr inbounds [60 x i32], [60 x i32]* %prev971, i32 0, i64 1
  store i32 %627, i32* %arrayidx972, align 4, !tbaa !10
  %629 = bitcast i32* %s1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %629) #2
  br label %sw.epilog

sw.bb.973:                                        ; preds = %cond.end.22
  %630 = bitcast i32* %s1974 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %630) #2
  %631 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev975 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %631, i32 0, i32 12
  %arrayidx976 = getelementptr inbounds [60 x i32], [60 x i32]* %prev975, i32 0, i64 1
  %632 = load i32, i32* %arrayidx976, align 4, !tbaa !10
  store i32 %632, i32* %s1974, align 4, !tbaa !10
  br label %for.cond.977

for.cond.977:                                     ; preds = %for.inc.1005, %sw.bb.973
  %633 = load i32, i32* %count, align 4, !tbaa !10
  %cmp978 = icmp sge i32 %633, 2
  br i1 %cmp978, label %for.body.980, label %for.end.1007

for.body.980:                                     ; preds = %for.cond.977
  %634 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr981 = getelementptr inbounds i8, i8* %634, i64 2
  store i8* %add.ptr981, i8** %p, align 8, !tbaa !1
  %635 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr982 = getelementptr inbounds i8, i8* %635, i64 2
  store i8* %add.ptr982, i8** %q, align 8, !tbaa !1
  %636 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx983 = getelementptr inbounds i8, i8* %636, i64 -1
  %637 = load i8, i8* %arrayidx983, align 1, !tbaa !13
  store i8 %637, i8* %t, align 1, !tbaa !13
  %638 = load i8, i8* %t, align 1, !tbaa !13
  %conv984 = zext i8 %638 to i32
  %639 = load i32, i32* %s0, align 4, !tbaa !10
  %sub985 = sub i32 %conv984, %639
  %and986 = and i32 %sub985, 15
  %640 = load i8, i8* %t, align 1, !tbaa !13
  %conv987 = zext i8 %640 to i32
  %and988 = and i32 %conv987, 240
  %add989 = add i32 %and986, %and988
  %641 = load i32, i32* %s0, align 4, !tbaa !10
  %and990 = and i32 %641, 240
  %sub991 = sub i32 %add989, %and990
  %conv992 = trunc i32 %sub991 to i8
  %642 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx993 = getelementptr inbounds i8, i8* %642, i64 -1
  store i8 %conv992, i8* %arrayidx993, align 1, !tbaa !13
  %643 = load i8, i8* %t, align 1, !tbaa !13
  %conv994 = zext i8 %643 to i32
  store i32 %conv994, i32* %s0, align 4, !tbaa !10
  %644 = load i8*, i8** %p, align 8, !tbaa !1
  %645 = load i8, i8* %644, align 1, !tbaa !13
  store i8 %645, i8* %t, align 1, !tbaa !13
  %646 = load i8, i8* %t, align 1, !tbaa !13
  %conv995 = zext i8 %646 to i32
  %647 = load i32, i32* %s1974, align 4, !tbaa !10
  %sub996 = sub i32 %conv995, %647
  %and997 = and i32 %sub996, 15
  %648 = load i8, i8* %t, align 1, !tbaa !13
  %conv998 = zext i8 %648 to i32
  %and999 = and i32 %conv998, 240
  %add1000 = add i32 %and997, %and999
  %649 = load i32, i32* %s1974, align 4, !tbaa !10
  %and1001 = and i32 %649, 240
  %sub1002 = sub i32 %add1000, %and1001
  %conv1003 = trunc i32 %sub1002 to i8
  %650 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv1003, i8* %650, align 1, !tbaa !13
  %651 = load i8, i8* %t, align 1, !tbaa !13
  %conv1004 = zext i8 %651 to i32
  store i32 %conv1004, i32* %s1974, align 4, !tbaa !10
  br label %for.inc.1005

for.inc.1005:                                     ; preds = %for.body.980
  %652 = load i32, i32* %count, align 4, !tbaa !10
  %sub1006 = sub nsw i32 %652, 2
  store i32 %sub1006, i32* %count, align 4, !tbaa !10
  br label %for.cond.977

for.end.1007:                                     ; preds = %for.cond.977
  %653 = load i32, i32* %s1974, align 4, !tbaa !10
  %654 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1008 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %654, i32 0, i32 12
  %arrayidx1009 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1008, i32 0, i64 1
  store i32 %653, i32* %arrayidx1009, align 4, !tbaa !10
  %655 = bitcast i32* %s1974 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %655) #2
  br label %enc4

sw.bb.1010:                                       ; preds = %cond.end.22, %cond.end.22
  br label %dec4

dec4:                                             ; preds = %for.end.1203, %sw.bb.1010
  %656 = load i32, i32* %colors, align 4, !tbaa !10
  %and1011 = and i32 %656, 1
  %tobool1012 = icmp ne i32 %and1011, 0
  br i1 %tobool1012, label %if.then.1013, label %if.else.1064

if.then.1013:                                     ; preds = %dec4
  br label %do.body.1014

do.body.1014:                                     ; preds = %if.then.1013
  br label %for.cond.1015

for.cond.1015:                                    ; preds = %for.inc.1059, %do.body.1014
  %657 = load i32, i32* %count, align 4, !tbaa !10
  %658 = load i32, i32* %final, align 4, !tbaa !10
  %cmp1016 = icmp sge i32 %657, %658
  br i1 %cmp1016, label %for.body.1018, label %for.end.1061

for.body.1018:                                    ; preds = %for.cond.1015
  %659 = load i32, i32* %count, align 4, !tbaa !10
  %660 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp1019 = icmp slt i32 %659, %660
  br i1 %cmp1019, label %cond.true.1021, label %cond.false.1022

cond.true.1021:                                   ; preds = %for.body.1018
  %661 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.1023

cond.false.1022:                                  ; preds = %for.body.1018
  %662 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.1023

cond.end.1023:                                    ; preds = %cond.false.1022, %cond.true.1021
  %cond1024 = phi i32 [ %661, %cond.true.1021 ], [ %662, %cond.false.1022 ]
  store i32 %cond1024, i32* %ndone, align 4, !tbaa !10
  store i32 1, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1025

for.cond.1025:                                    ; preds = %for.inc.1056, %cond.end.1023
  %663 = load i32, i32* %ci, align 4, !tbaa !10
  %664 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp1026 = icmp sle i32 %663, %664
  br i1 %cmp1026, label %for.body.1028, label %for.end.1058

for.body.1028:                                    ; preds = %for.cond.1025
  %665 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1029 = getelementptr inbounds i8, i8* %665, i32 1
  store i8* %incdec.ptr1029, i8** %p, align 8, !tbaa !1
  %666 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1030 = getelementptr inbounds i8, i8* %666, i32 1
  store i8* %incdec.ptr1030, i8** %q, align 8, !tbaa !1
  %667 = load i32, i32* %s0, align 4, !tbaa !10
  %shl1031 = shl i32 %667, 4
  %668 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1032 = sext i32 %668 to i64
  %669 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1033 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %669, i32 0, i32 12
  %arrayidx1034 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1033, i32 0, i64 %idxprom1032
  %670 = load i32, i32* %arrayidx1034, align 4, !tbaa !10
  %shr1035 = lshr i32 %670, 4
  %or1036 = or i32 %shl1031, %shr1035
  %conv1037 = trunc i32 %or1036 to i8
  store i8 %conv1037, i8* %t, align 1, !tbaa !13
  %671 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1038 = sext i32 %671 to i64
  %672 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1039 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %672, i32 0, i32 12
  %arrayidx1040 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1039, i32 0, i64 %idxprom1038
  %673 = load i32, i32* %arrayidx1040, align 4, !tbaa !10
  store i32 %673, i32* %s0, align 4, !tbaa !10
  %674 = load i8*, i8** %p, align 8, !tbaa !1
  %675 = load i8, i8* %674, align 1, !tbaa !13
  %conv1041 = zext i8 %675 to i32
  %676 = load i8, i8* %t, align 1, !tbaa !13
  %conv1042 = zext i8 %676 to i32
  %add1043 = add nsw i32 %conv1041, %conv1042
  %and1044 = and i32 %add1043, 15
  %677 = load i8*, i8** %p, align 8, !tbaa !1
  %678 = load i8, i8* %677, align 1, !tbaa !13
  %conv1045 = zext i8 %678 to i32
  %and1046 = and i32 %conv1045, 240
  %add1047 = add nsw i32 %and1044, %and1046
  %679 = load i8, i8* %t, align 1, !tbaa !13
  %conv1048 = zext i8 %679 to i32
  %and1049 = and i32 %conv1048, 240
  %add1050 = add nsw i32 %add1047, %and1049
  %conv1051 = trunc i32 %add1050 to i8
  %680 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv1051, i8* %680, align 1, !tbaa !13
  %conv1052 = zext i8 %conv1051 to i32
  %681 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1053 = sext i32 %681 to i64
  %682 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1054 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %682, i32 0, i32 12
  %arrayidx1055 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1054, i32 0, i64 %idxprom1053
  store i32 %conv1052, i32* %arrayidx1055, align 4, !tbaa !10
  br label %for.inc.1056

for.inc.1056:                                     ; preds = %for.body.1028
  %683 = load i32, i32* %ci, align 4, !tbaa !10
  %inc1057 = add nsw i32 %683, 1
  store i32 %inc1057, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1025

for.end.1058:                                     ; preds = %for.cond.1025
  br label %for.inc.1059

for.inc.1059:                                     ; preds = %for.end.1058
  %684 = load i32, i32* %ndone, align 4, !tbaa !10
  %685 = load i32, i32* %count, align 4, !tbaa !10
  %sub1060 = sub nsw i32 %685, %684
  store i32 %sub1060, i32* %count, align 4, !tbaa !10
  br label %for.cond.1015

for.end.1061:                                     ; preds = %for.cond.1015
  br label %do.cond.1062

do.cond.1062:                                     ; preds = %for.end.1061
  br label %do.end.1063

do.end.1063:                                      ; preds = %do.cond.1062
  br label %if.end.1113

if.else.1064:                                     ; preds = %dec4
  br label %do.body.1065

do.body.1065:                                     ; preds = %if.else.1064
  %686 = load i32, i32* %s0, align 4, !tbaa !10
  %687 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1066 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %687, i32 0, i32 12
  %arrayidx1067 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1066, i32 0, i64 0
  store i32 %686, i32* %arrayidx1067, align 4, !tbaa !10
  br label %for.cond.1068

for.cond.1068:                                    ; preds = %for.inc.1106, %do.body.1065
  %688 = load i32, i32* %count, align 4, !tbaa !10
  %689 = load i32, i32* %final, align 4, !tbaa !10
  %cmp1069 = icmp sge i32 %688, %689
  br i1 %cmp1069, label %for.body.1071, label %for.end.1108

for.body.1071:                                    ; preds = %for.cond.1068
  %690 = load i32, i32* %count, align 4, !tbaa !10
  %691 = load i32, i32* %nb, align 4, !tbaa !10
  %cmp1072 = icmp slt i32 %690, %691
  br i1 %cmp1072, label %cond.true.1074, label %cond.false.1075

cond.true.1074:                                   ; preds = %for.body.1071
  %692 = load i32, i32* %count, align 4, !tbaa !10
  br label %cond.end.1076

cond.false.1075:                                  ; preds = %for.body.1071
  %693 = load i32, i32* %nb, align 4, !tbaa !10
  br label %cond.end.1076

cond.end.1076:                                    ; preds = %cond.false.1075, %cond.true.1074
  %cond1077 = phi i32 [ %692, %cond.true.1074 ], [ %693, %cond.false.1075 ]
  store i32 %cond1077, i32* %ndone, align 4, !tbaa !10
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1078

for.cond.1078:                                    ; preds = %for.inc.1103, %cond.end.1076
  %694 = load i32, i32* %ci, align 4, !tbaa !10
  %695 = load i32, i32* %ndone, align 4, !tbaa !10
  %cmp1079 = icmp slt i32 %694, %695
  br i1 %cmp1079, label %for.body.1081, label %for.end.1105

for.body.1081:                                    ; preds = %for.cond.1078
  %696 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1082 = getelementptr inbounds i8, i8* %696, i32 1
  store i8* %incdec.ptr1082, i8** %p, align 8, !tbaa !1
  %697 = load i8, i8* %incdec.ptr1082, align 1, !tbaa !13
  store i8 %697, i8* %t, align 1, !tbaa !13
  %698 = load i8, i8* %t, align 1, !tbaa !13
  %conv1083 = zext i8 %698 to i32
  %699 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1084 = sext i32 %699 to i64
  %700 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1085 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %700, i32 0, i32 12
  %arrayidx1086 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1085, i32 0, i64 %idxprom1084
  %701 = load i32, i32* %arrayidx1086, align 4, !tbaa !10
  %add1087 = add i32 %conv1083, %701
  %and1088 = and i32 %add1087, 15
  %702 = load i8, i8* %t, align 1, !tbaa !13
  %conv1089 = zext i8 %702 to i32
  %and1090 = and i32 %conv1089, 240
  %add1091 = add i32 %and1088, %and1090
  %703 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1092 = sext i32 %703 to i64
  %704 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1093 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %704, i32 0, i32 12
  %arrayidx1094 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1093, i32 0, i64 %idxprom1092
  %705 = load i32, i32* %arrayidx1094, align 4, !tbaa !10
  %and1095 = and i32 %705, 240
  %add1096 = add i32 %add1091, %and1095
  %conv1097 = trunc i32 %add1096 to i8
  %706 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1098 = getelementptr inbounds i8, i8* %706, i32 1
  store i8* %incdec.ptr1098, i8** %q, align 8, !tbaa !1
  store i8 %conv1097, i8* %incdec.ptr1098, align 1, !tbaa !13
  %conv1099 = zext i8 %conv1097 to i32
  %707 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1100 = sext i32 %707 to i64
  %708 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1101 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %708, i32 0, i32 12
  %arrayidx1102 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1101, i32 0, i64 %idxprom1100
  store i32 %conv1099, i32* %arrayidx1102, align 4, !tbaa !10
  br label %for.inc.1103

for.inc.1103:                                     ; preds = %for.body.1081
  %709 = load i32, i32* %ci, align 4, !tbaa !10
  %inc1104 = add nsw i32 %709, 1
  store i32 %inc1104, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1078

for.end.1105:                                     ; preds = %for.cond.1078
  br label %for.inc.1106

for.inc.1106:                                     ; preds = %for.end.1105
  %710 = load i32, i32* %ndone, align 4, !tbaa !10
  %711 = load i32, i32* %count, align 4, !tbaa !10
  %sub1107 = sub nsw i32 %711, %710
  store i32 %sub1107, i32* %count, align 4, !tbaa !10
  br label %for.cond.1068

for.end.1108:                                     ; preds = %for.cond.1068
  %712 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1109 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %712, i32 0, i32 12
  %arrayidx1110 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1109, i32 0, i64 0
  %713 = load i32, i32* %arrayidx1110, align 4, !tbaa !10
  store i32 %713, i32* %s0, align 4, !tbaa !10
  br label %do.cond.1111

do.cond.1111:                                     ; preds = %for.end.1108
  br label %do.end.1112

do.end.1112:                                      ; preds = %do.cond.1111
  br label %if.end.1113

if.end.1113:                                      ; preds = %do.end.1112, %do.end.1063
  br label %sw.epilog

sw.bb.1114:                                       ; preds = %cond.end.22
  br label %for.cond.1115

for.cond.1115:                                    ; preds = %for.inc.1135, %sw.bb.1114
  %714 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1116 = icmp sge i32 %714, 1
  br i1 %cmp1116, label %for.body.1118, label %for.end.1137

for.body.1118:                                    ; preds = %for.cond.1115
  %715 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1119 = getelementptr inbounds i8, i8* %715, i64 1
  store i8* %add.ptr1119, i8** %p, align 8, !tbaa !1
  %716 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1120 = getelementptr inbounds i8, i8* %716, i64 1
  store i8* %add.ptr1120, i8** %q, align 8, !tbaa !1
  %717 = load i8*, i8** %p, align 8, !tbaa !1
  %718 = load i8, i8* %717, align 1, !tbaa !13
  %conv1121 = zext i8 %718 to i32
  %719 = load i32, i32* %s0, align 4, !tbaa !10
  %shl1122 = shl i32 %719, 4
  %add1123 = add i32 %conv1121, %shl1122
  %conv1124 = trunc i32 %add1123 to i8
  store i8 %conv1124, i8* %t, align 1, !tbaa !13
  %720 = load i8, i8* %t, align 1, !tbaa !13
  %conv1125 = zext i8 %720 to i32
  %721 = load i8, i8* %t, align 1, !tbaa !13
  %conv1126 = zext i8 %721 to i32
  %shr1127 = ashr i32 %conv1126, 4
  %add1128 = add nsw i32 %conv1125, %shr1127
  %and1129 = and i32 %add1128, 15
  %722 = load i8, i8* %t, align 1, !tbaa !13
  %conv1130 = zext i8 %722 to i32
  %and1131 = and i32 %conv1130, 240
  %add1132 = add nsw i32 %and1129, %and1131
  %conv1133 = trunc i32 %add1132 to i8
  %723 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv1133, i8* %723, align 1, !tbaa !13
  %conv1134 = zext i8 %conv1133 to i32
  store i32 %conv1134, i32* %s0, align 4, !tbaa !10
  br label %for.inc.1135

for.inc.1135:                                     ; preds = %for.body.1118
  %724 = load i32, i32* %count, align 4, !tbaa !10
  %sub1136 = sub nsw i32 %724, 1
  store i32 %sub1136, i32* %count, align 4, !tbaa !10
  br label %for.cond.1115

for.end.1137:                                     ; preds = %for.cond.1115
  br label %sw.epilog

sw.bb.1138:                                       ; preds = %cond.end.22
  %725 = bitcast i32* %s11139 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %725) #2
  %726 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1140 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %726, i32 0, i32 12
  %arrayidx1141 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1140, i32 0, i64 1
  %727 = load i32, i32* %arrayidx1141, align 4, !tbaa !10
  store i32 %727, i32* %s11139, align 4, !tbaa !10
  br label %for.cond.1142

for.cond.1142:                                    ; preds = %for.inc.1164, %sw.bb.1138
  %728 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1143 = icmp sge i32 %728, 1
  br i1 %cmp1143, label %for.body.1145, label %for.end.1166

for.body.1145:                                    ; preds = %for.cond.1142
  %729 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1146 = getelementptr inbounds i8, i8* %729, i64 1
  store i8* %add.ptr1146, i8** %p, align 8, !tbaa !1
  %730 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1147 = getelementptr inbounds i8, i8* %730, i64 1
  store i8* %add.ptr1147, i8** %q, align 8, !tbaa !1
  %731 = load i32, i32* %s0, align 4, !tbaa !10
  %shl1148 = shl i32 %731, 4
  %732 = load i32, i32* %s11139, align 4, !tbaa !10
  %shr1149 = lshr i32 %732, 4
  %add1150 = add i32 %shl1148, %shr1149
  %conv1151 = trunc i32 %add1150 to i8
  store i8 %conv1151, i8* %t, align 1, !tbaa !13
  %733 = load i32, i32* %s11139, align 4, !tbaa !10
  store i32 %733, i32* %s0, align 4, !tbaa !10
  %734 = load i8*, i8** %p, align 8, !tbaa !1
  %735 = load i8, i8* %734, align 1, !tbaa !13
  %conv1152 = zext i8 %735 to i32
  %736 = load i8, i8* %t, align 1, !tbaa !13
  %conv1153 = zext i8 %736 to i32
  %add1154 = add nsw i32 %conv1152, %conv1153
  %and1155 = and i32 %add1154, 15
  %737 = load i8*, i8** %p, align 8, !tbaa !1
  %738 = load i8, i8* %737, align 1, !tbaa !13
  %conv1156 = zext i8 %738 to i32
  %and1157 = and i32 %conv1156, 240
  %add1158 = add nsw i32 %and1155, %and1157
  %739 = load i8, i8* %t, align 1, !tbaa !13
  %conv1159 = zext i8 %739 to i32
  %and1160 = and i32 %conv1159, 240
  %add1161 = add nsw i32 %add1158, %and1160
  %conv1162 = trunc i32 %add1161 to i8
  %740 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv1162, i8* %740, align 1, !tbaa !13
  %conv1163 = zext i8 %conv1162 to i32
  store i32 %conv1163, i32* %s11139, align 4, !tbaa !10
  br label %for.inc.1164

for.inc.1164:                                     ; preds = %for.body.1145
  %741 = load i32, i32* %count, align 4, !tbaa !10
  %sub1165 = sub nsw i32 %741, 1
  store i32 %sub1165, i32* %count, align 4, !tbaa !10
  br label %for.cond.1142

for.end.1166:                                     ; preds = %for.cond.1142
  %742 = load i32, i32* %s11139, align 4, !tbaa !10
  %743 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1167 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %743, i32 0, i32 12
  %arrayidx1168 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1167, i32 0, i64 1
  store i32 %742, i32* %arrayidx1168, align 4, !tbaa !10
  %744 = bitcast i32* %s11139 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %744) #2
  br label %sw.epilog

sw.bb.1169:                                       ; preds = %cond.end.22
  %745 = bitcast i32* %s11170 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %745) #2
  %746 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1171 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %746, i32 0, i32 12
  %arrayidx1172 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1171, i32 0, i64 1
  %747 = load i32, i32* %arrayidx1172, align 4, !tbaa !10
  store i32 %747, i32* %s11170, align 4, !tbaa !10
  br label %for.cond.1173

for.cond.1173:                                    ; preds = %for.inc.1201, %sw.bb.1169
  %748 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1174 = icmp sge i32 %748, 2
  br i1 %cmp1174, label %for.body.1176, label %for.end.1203

for.body.1176:                                    ; preds = %for.cond.1173
  %749 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1177 = getelementptr inbounds i8, i8* %749, i64 2
  store i8* %add.ptr1177, i8** %p, align 8, !tbaa !1
  %750 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1178 = getelementptr inbounds i8, i8* %750, i64 2
  store i8* %add.ptr1178, i8** %q, align 8, !tbaa !1
  %751 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1179 = getelementptr inbounds i8, i8* %751, i64 -1
  %752 = load i8, i8* %arrayidx1179, align 1, !tbaa !13
  store i8 %752, i8* %t, align 1, !tbaa !13
  %753 = load i32, i32* %s0, align 4, !tbaa !10
  %754 = load i8, i8* %t, align 1, !tbaa !13
  %conv1180 = zext i8 %754 to i32
  %add1181 = add i32 %753, %conv1180
  %and1182 = and i32 %add1181, 15
  %755 = load i32, i32* %s0, align 4, !tbaa !10
  %and1183 = and i32 %755, 240
  %add1184 = add i32 %and1182, %and1183
  %756 = load i8, i8* %t, align 1, !tbaa !13
  %conv1185 = zext i8 %756 to i32
  %and1186 = and i32 %conv1185, 240
  %add1187 = add i32 %add1184, %and1186
  %conv1188 = trunc i32 %add1187 to i8
  %757 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1189 = getelementptr inbounds i8, i8* %757, i64 -1
  store i8 %conv1188, i8* %arrayidx1189, align 1, !tbaa !13
  %conv1190 = zext i8 %conv1188 to i32
  store i32 %conv1190, i32* %s0, align 4, !tbaa !10
  %758 = load i8*, i8** %p, align 8, !tbaa !1
  %759 = load i8, i8* %758, align 1, !tbaa !13
  store i8 %759, i8* %t, align 1, !tbaa !13
  %760 = load i32, i32* %s11170, align 4, !tbaa !10
  %761 = load i8, i8* %t, align 1, !tbaa !13
  %conv1191 = zext i8 %761 to i32
  %add1192 = add i32 %760, %conv1191
  %and1193 = and i32 %add1192, 15
  %762 = load i32, i32* %s11170, align 4, !tbaa !10
  %and1194 = and i32 %762, 240
  %add1195 = add i32 %and1193, %and1194
  %763 = load i8, i8* %t, align 1, !tbaa !13
  %conv1196 = zext i8 %763 to i32
  %and1197 = and i32 %conv1196, 240
  %add1198 = add i32 %add1195, %and1197
  %conv1199 = trunc i32 %add1198 to i8
  %764 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv1199, i8* %764, align 1, !tbaa !13
  %conv1200 = zext i8 %conv1199 to i32
  store i32 %conv1200, i32* %s11170, align 4, !tbaa !10
  br label %for.inc.1201

for.inc.1201:                                     ; preds = %for.body.1176
  %765 = load i32, i32* %count, align 4, !tbaa !10
  %sub1202 = sub nsw i32 %765, 2
  store i32 %sub1202, i32* %count, align 4, !tbaa !10
  br label %for.cond.1173

for.end.1203:                                     ; preds = %for.cond.1173
  %766 = load i32, i32* %s11170, align 4, !tbaa !10
  %767 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1204 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %767, i32 0, i32 12
  %arrayidx1205 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1204, i32 0, i64 1
  store i32 %766, i32* %arrayidx1205, align 4, !tbaa !10
  %768 = bitcast i32* %s11170 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %768) #2
  br label %dec4

sw.bb.1206:                                       ; preds = %cond.end.22, %cond.end.22
  %769 = load i32, i32* %s0, align 4, !tbaa !10
  %770 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1207 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %770, i32 0, i32 12
  %arrayidx1208 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1207, i32 0, i64 0
  store i32 %769, i32* %arrayidx1208, align 4, !tbaa !10
  br label %for.cond.1209

for.cond.1209:                                    ; preds = %for.inc.1232, %sw.bb.1206
  %771 = load i32, i32* %count, align 4, !tbaa !10
  %772 = load i32, i32* %colors, align 4, !tbaa !10
  %cmp1210 = icmp sge i32 %771, %772
  br i1 %cmp1210, label %for.body.1212, label %for.end.1234

for.body.1212:                                    ; preds = %for.cond.1209
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1213

for.cond.1213:                                    ; preds = %for.inc.1229, %for.body.1212
  %773 = load i32, i32* %ci, align 4, !tbaa !10
  %774 = load i32, i32* %colors, align 4, !tbaa !10
  %cmp1214 = icmp slt i32 %773, %774
  br i1 %cmp1214, label %for.body.1216, label %for.end.1231

for.body.1216:                                    ; preds = %for.cond.1213
  %775 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1217 = getelementptr inbounds i8, i8* %775, i32 1
  store i8* %incdec.ptr1217, i8** %p, align 8, !tbaa !1
  %776 = load i8, i8* %incdec.ptr1217, align 1, !tbaa !13
  %conv1218 = zext i8 %776 to i32
  %777 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1219 = sext i32 %777 to i64
  %778 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1220 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %778, i32 0, i32 12
  %arrayidx1221 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1220, i32 0, i64 %idxprom1219
  %779 = load i32, i32* %arrayidx1221, align 4, !tbaa !10
  %sub1222 = sub i32 %conv1218, %779
  %conv1223 = trunc i32 %sub1222 to i8
  %780 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1224 = getelementptr inbounds i8, i8* %780, i32 1
  store i8* %incdec.ptr1224, i8** %q, align 8, !tbaa !1
  store i8 %conv1223, i8* %incdec.ptr1224, align 1, !tbaa !13
  %781 = load i8*, i8** %p, align 8, !tbaa !1
  %782 = load i8, i8* %781, align 1, !tbaa !13
  %conv1225 = zext i8 %782 to i32
  %783 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1226 = sext i32 %783 to i64
  %784 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1227 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %784, i32 0, i32 12
  %arrayidx1228 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1227, i32 0, i64 %idxprom1226
  store i32 %conv1225, i32* %arrayidx1228, align 4, !tbaa !10
  br label %for.inc.1229

for.inc.1229:                                     ; preds = %for.body.1216
  %785 = load i32, i32* %ci, align 4, !tbaa !10
  %inc1230 = add nsw i32 %785, 1
  store i32 %inc1230, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1213

for.end.1231:                                     ; preds = %for.cond.1213
  br label %for.inc.1232

for.inc.1232:                                     ; preds = %for.end.1231
  %786 = load i32, i32* %colors, align 4, !tbaa !10
  %787 = load i32, i32* %count, align 4, !tbaa !10
  %sub1233 = sub nsw i32 %787, %786
  store i32 %sub1233, i32* %count, align 4, !tbaa !10
  br label %for.cond.1209

for.end.1234:                                     ; preds = %for.cond.1209
  %788 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1235 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %788, i32 0, i32 12
  %arrayidx1236 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1235, i32 0, i64 0
  %789 = load i32, i32* %arrayidx1236, align 4, !tbaa !10
  store i32 %789, i32* %s0, align 4, !tbaa !10
  br label %enc8

enc8:                                             ; preds = %for.end.1464, %for.end.1375, %for.end.1234
  %790 = load i32, i32* %last.addr, align 4, !tbaa !10
  %tobool1237 = icmp ne i32 %790, 0
  br i1 %tobool1237, label %land.lhs.true.1238, label %if.end.1260

land.lhs.true.1238:                               ; preds = %enc8
  %791 = load i32, i32* %status, align 4, !tbaa !10
  %tobool1239 = icmp ne i32 %791, 0
  br i1 %tobool1239, label %if.end.1260, label %if.then.1240

if.then.1240:                                     ; preds = %land.lhs.true.1238
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1241

for.cond.1241:                                    ; preds = %for.inc.1257, %if.then.1240
  %792 = load i32, i32* %ci, align 4, !tbaa !10
  %793 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1242 = icmp slt i32 %792, %793
  br i1 %cmp1242, label %for.body.1244, label %for.end.1259

for.body.1244:                                    ; preds = %for.cond.1241
  %794 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1245 = getelementptr inbounds i8, i8* %794, i32 1
  store i8* %incdec.ptr1245, i8** %p, align 8, !tbaa !1
  %795 = load i8, i8* %incdec.ptr1245, align 1, !tbaa !13
  %conv1246 = zext i8 %795 to i32
  %796 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1247 = sext i32 %796 to i64
  %797 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1248 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %797, i32 0, i32 12
  %arrayidx1249 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1248, i32 0, i64 %idxprom1247
  %798 = load i32, i32* %arrayidx1249, align 4, !tbaa !10
  %sub1250 = sub i32 %conv1246, %798
  %conv1251 = trunc i32 %sub1250 to i8
  %799 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1252 = getelementptr inbounds i8, i8* %799, i32 1
  store i8* %incdec.ptr1252, i8** %q, align 8, !tbaa !1
  store i8 %conv1251, i8* %incdec.ptr1252, align 1, !tbaa !13
  %800 = load i8*, i8** %p, align 8, !tbaa !1
  %801 = load i8, i8* %800, align 1, !tbaa !13
  %conv1253 = zext i8 %801 to i32
  %802 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1254 = sext i32 %802 to i64
  %803 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1255 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %803, i32 0, i32 12
  %arrayidx1256 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1255, i32 0, i64 %idxprom1254
  store i32 %conv1253, i32* %arrayidx1256, align 4, !tbaa !10
  br label %for.inc.1257

for.inc.1257:                                     ; preds = %for.body.1244
  %804 = load i32, i32* %ci, align 4, !tbaa !10
  %inc1258 = add nsw i32 %804, 1
  store i32 %inc1258, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1241

for.end.1259:                                     ; preds = %for.cond.1241
  br label %if.end.1260

if.end.1260:                                      ; preds = %for.end.1259, %land.lhs.true.1238, %enc8
  br label %sw.epilog

sw.bb.1261:                                       ; preds = %cond.end.22, %cond.end.22
  %805 = load i32, i32* %s0, align 4, !tbaa !10
  %806 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1262 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %806, i32 0, i32 12
  %arrayidx1263 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1262, i32 0, i64 0
  store i32 %805, i32* %arrayidx1263, align 4, !tbaa !10
  br label %for.cond.1264

for.cond.1264:                                    ; preds = %for.inc.1283, %sw.bb.1261
  %807 = load i32, i32* %count, align 4, !tbaa !10
  %808 = load i32, i32* %colors, align 4, !tbaa !10
  %cmp1265 = icmp sge i32 %807, %808
  br i1 %cmp1265, label %for.body.1267, label %for.end.1285

for.body.1267:                                    ; preds = %for.cond.1264
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1268

for.cond.1268:                                    ; preds = %for.inc.1280, %for.body.1267
  %809 = load i32, i32* %ci, align 4, !tbaa !10
  %810 = load i32, i32* %colors, align 4, !tbaa !10
  %cmp1269 = icmp slt i32 %809, %810
  br i1 %cmp1269, label %for.body.1271, label %for.end.1282

for.body.1271:                                    ; preds = %for.cond.1268
  %811 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1272 = getelementptr inbounds i8, i8* %811, i32 1
  store i8* %incdec.ptr1272, i8** %p, align 8, !tbaa !1
  %812 = load i8, i8* %incdec.ptr1272, align 1, !tbaa !13
  %conv1273 = zext i8 %812 to i32
  %813 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1274 = sext i32 %813 to i64
  %814 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1275 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %814, i32 0, i32 12
  %arrayidx1276 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1275, i32 0, i64 %idxprom1274
  %815 = load i32, i32* %arrayidx1276, align 4, !tbaa !10
  %add1277 = add i32 %815, %conv1273
  store i32 %add1277, i32* %arrayidx1276, align 4, !tbaa !10
  %conv1278 = trunc i32 %add1277 to i8
  %816 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1279 = getelementptr inbounds i8, i8* %816, i32 1
  store i8* %incdec.ptr1279, i8** %q, align 8, !tbaa !1
  store i8 %conv1278, i8* %incdec.ptr1279, align 1, !tbaa !13
  br label %for.inc.1280

for.inc.1280:                                     ; preds = %for.body.1271
  %817 = load i32, i32* %ci, align 4, !tbaa !10
  %inc1281 = add nsw i32 %817, 1
  store i32 %inc1281, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1268

for.end.1282:                                     ; preds = %for.cond.1268
  br label %for.inc.1283

for.inc.1283:                                     ; preds = %for.end.1282
  %818 = load i32, i32* %colors, align 4, !tbaa !10
  %819 = load i32, i32* %count, align 4, !tbaa !10
  %sub1284 = sub nsw i32 %819, %818
  store i32 %sub1284, i32* %count, align 4, !tbaa !10
  br label %for.cond.1264

for.end.1285:                                     ; preds = %for.cond.1264
  %820 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1286 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %820, i32 0, i32 12
  %arrayidx1287 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1286, i32 0, i64 0
  %821 = load i32, i32* %arrayidx1287, align 4, !tbaa !10
  store i32 %821, i32* %s0, align 4, !tbaa !10
  br label %dec8

dec8:                                             ; preds = %for.end.1511, %for.end.1412, %for.end.1285
  %822 = load i32, i32* %last.addr, align 4, !tbaa !10
  %tobool1288 = icmp ne i32 %822, 0
  br i1 %tobool1288, label %land.lhs.true.1289, label %if.end.1307

land.lhs.true.1289:                               ; preds = %dec8
  %823 = load i32, i32* %status, align 4, !tbaa !10
  %tobool1290 = icmp ne i32 %823, 0
  br i1 %tobool1290, label %if.end.1307, label %if.then.1291

if.then.1291:                                     ; preds = %land.lhs.true.1289
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1292

for.cond.1292:                                    ; preds = %for.inc.1304, %if.then.1291
  %824 = load i32, i32* %ci, align 4, !tbaa !10
  %825 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1293 = icmp slt i32 %824, %825
  br i1 %cmp1293, label %for.body.1295, label %for.end.1306

for.body.1295:                                    ; preds = %for.cond.1292
  %826 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1296 = getelementptr inbounds i8, i8* %826, i32 1
  store i8* %incdec.ptr1296, i8** %p, align 8, !tbaa !1
  %827 = load i8, i8* %incdec.ptr1296, align 1, !tbaa !13
  %conv1297 = zext i8 %827 to i32
  %828 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1298 = sext i32 %828 to i64
  %829 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1299 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %829, i32 0, i32 12
  %arrayidx1300 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1299, i32 0, i64 %idxprom1298
  %830 = load i32, i32* %arrayidx1300, align 4, !tbaa !10
  %add1301 = add i32 %830, %conv1297
  store i32 %add1301, i32* %arrayidx1300, align 4, !tbaa !10
  %conv1302 = trunc i32 %add1301 to i8
  %831 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1303 = getelementptr inbounds i8, i8* %831, i32 1
  store i8* %incdec.ptr1303, i8** %q, align 8, !tbaa !1
  store i8 %conv1302, i8* %incdec.ptr1303, align 1, !tbaa !13
  br label %for.inc.1304

for.inc.1304:                                     ; preds = %for.body.1295
  %832 = load i32, i32* %ci, align 4, !tbaa !10
  %inc1305 = add nsw i32 %832, 1
  store i32 %inc1305, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1292

for.end.1306:                                     ; preds = %for.cond.1292
  br label %if.end.1307

if.end.1307:                                      ; preds = %for.end.1306, %land.lhs.true.1289, %dec8
  br label %sw.epilog

sw.bb.1308:                                       ; preds = %cond.end.22
  br label %for.cond.1309

for.cond.1309:                                    ; preds = %for.inc.1322, %sw.bb.1308
  %833 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1310 = icmp sge i32 %833, 1
  br i1 %cmp1310, label %for.body.1312, label %for.end.1324

for.body.1312:                                    ; preds = %for.cond.1309
  %834 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1313 = getelementptr inbounds i8, i8* %834, i64 1
  store i8* %add.ptr1313, i8** %p, align 8, !tbaa !1
  %835 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1314 = getelementptr inbounds i8, i8* %835, i64 1
  store i8* %add.ptr1314, i8** %q, align 8, !tbaa !1
  %836 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1315 = getelementptr inbounds i8, i8* %836, i64 0
  %837 = load i8, i8* %arrayidx1315, align 1, !tbaa !13
  %conv1316 = zext i8 %837 to i32
  %838 = load i32, i32* %s0, align 4, !tbaa !10
  %sub1317 = sub i32 %conv1316, %838
  %conv1318 = trunc i32 %sub1317 to i8
  %839 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1319 = getelementptr inbounds i8, i8* %839, i64 0
  store i8 %conv1318, i8* %arrayidx1319, align 1, !tbaa !13
  %840 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1320 = getelementptr inbounds i8, i8* %840, i64 0
  %841 = load i8, i8* %arrayidx1320, align 1, !tbaa !13
  %conv1321 = zext i8 %841 to i32
  store i32 %conv1321, i32* %s0, align 4, !tbaa !10
  br label %for.inc.1322

for.inc.1322:                                     ; preds = %for.body.1312
  %842 = load i32, i32* %count, align 4, !tbaa !10
  %sub1323 = sub nsw i32 %842, 1
  store i32 %sub1323, i32* %count, align 4, !tbaa !10
  br label %for.cond.1309

for.end.1324:                                     ; preds = %for.cond.1309
  br label %sw.epilog

sw.bb.1325:                                       ; preds = %cond.end.22
  br label %for.cond.1326

for.cond.1326:                                    ; preds = %for.inc.1337, %sw.bb.1325
  %843 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1327 = icmp sge i32 %843, 1
  br i1 %cmp1327, label %for.body.1329, label %for.end.1339

for.body.1329:                                    ; preds = %for.cond.1326
  %844 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1330 = getelementptr inbounds i8, i8* %844, i64 1
  store i8* %add.ptr1330, i8** %p, align 8, !tbaa !1
  %845 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1331 = getelementptr inbounds i8, i8* %845, i64 1
  store i8* %add.ptr1331, i8** %q, align 8, !tbaa !1
  %846 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1332 = getelementptr inbounds i8, i8* %846, i64 0
  %847 = load i8, i8* %arrayidx1332, align 1, !tbaa !13
  %conv1333 = zext i8 %847 to i32
  %848 = load i32, i32* %s0, align 4, !tbaa !10
  %add1334 = add i32 %848, %conv1333
  store i32 %add1334, i32* %s0, align 4, !tbaa !10
  %conv1335 = trunc i32 %add1334 to i8
  %849 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1336 = getelementptr inbounds i8, i8* %849, i64 0
  store i8 %conv1335, i8* %arrayidx1336, align 1, !tbaa !13
  br label %for.inc.1337

for.inc.1337:                                     ; preds = %for.body.1329
  %850 = load i32, i32* %count, align 4, !tbaa !10
  %sub1338 = sub nsw i32 %850, 1
  store i32 %sub1338, i32* %count, align 4, !tbaa !10
  br label %for.cond.1326

for.end.1339:                                     ; preds = %for.cond.1326
  br label %sw.epilog

sw.bb.1340:                                       ; preds = %cond.end.22
  %851 = bitcast i32* %s11341 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %851) #2
  %852 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1342 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %852, i32 0, i32 12
  %arrayidx1343 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1342, i32 0, i64 1
  %853 = load i32, i32* %arrayidx1343, align 4, !tbaa !10
  store i32 %853, i32* %s11341, align 4, !tbaa !10
  %854 = bitcast i32* %s2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %854) #2
  %855 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1344 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %855, i32 0, i32 12
  %arrayidx1345 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1344, i32 0, i64 2
  %856 = load i32, i32* %arrayidx1345, align 4, !tbaa !10
  store i32 %856, i32* %s2, align 4, !tbaa !10
  br label %for.cond.1346

for.cond.1346:                                    ; preds = %for.inc.1373, %sw.bb.1340
  %857 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1347 = icmp sge i32 %857, 3
  br i1 %cmp1347, label %for.body.1349, label %for.end.1375

for.body.1349:                                    ; preds = %for.cond.1346
  %858 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1350 = getelementptr inbounds i8, i8* %858, i64 3
  store i8* %add.ptr1350, i8** %p, align 8, !tbaa !1
  %859 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1351 = getelementptr inbounds i8, i8* %859, i64 3
  store i8* %add.ptr1351, i8** %q, align 8, !tbaa !1
  %860 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1352 = getelementptr inbounds i8, i8* %860, i64 -2
  %861 = load i8, i8* %arrayidx1352, align 1, !tbaa !13
  %conv1353 = zext i8 %861 to i32
  %862 = load i32, i32* %s0, align 4, !tbaa !10
  %sub1354 = sub i32 %conv1353, %862
  %conv1355 = trunc i32 %sub1354 to i8
  %863 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1356 = getelementptr inbounds i8, i8* %863, i64 -2
  store i8 %conv1355, i8* %arrayidx1356, align 1, !tbaa !13
  %864 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1357 = getelementptr inbounds i8, i8* %864, i64 -2
  %865 = load i8, i8* %arrayidx1357, align 1, !tbaa !13
  %conv1358 = zext i8 %865 to i32
  store i32 %conv1358, i32* %s0, align 4, !tbaa !10
  %866 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1359 = getelementptr inbounds i8, i8* %866, i64 -1
  %867 = load i8, i8* %arrayidx1359, align 1, !tbaa !13
  %conv1360 = zext i8 %867 to i32
  %868 = load i32, i32* %s11341, align 4, !tbaa !10
  %sub1361 = sub i32 %conv1360, %868
  %conv1362 = trunc i32 %sub1361 to i8
  %869 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1363 = getelementptr inbounds i8, i8* %869, i64 -1
  store i8 %conv1362, i8* %arrayidx1363, align 1, !tbaa !13
  %870 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1364 = getelementptr inbounds i8, i8* %870, i64 -1
  %871 = load i8, i8* %arrayidx1364, align 1, !tbaa !13
  %conv1365 = zext i8 %871 to i32
  store i32 %conv1365, i32* %s11341, align 4, !tbaa !10
  %872 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1366 = getelementptr inbounds i8, i8* %872, i64 0
  %873 = load i8, i8* %arrayidx1366, align 1, !tbaa !13
  %conv1367 = zext i8 %873 to i32
  %874 = load i32, i32* %s2, align 4, !tbaa !10
  %sub1368 = sub i32 %conv1367, %874
  %conv1369 = trunc i32 %sub1368 to i8
  %875 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1370 = getelementptr inbounds i8, i8* %875, i64 0
  store i8 %conv1369, i8* %arrayidx1370, align 1, !tbaa !13
  %876 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1371 = getelementptr inbounds i8, i8* %876, i64 0
  %877 = load i8, i8* %arrayidx1371, align 1, !tbaa !13
  %conv1372 = zext i8 %877 to i32
  store i32 %conv1372, i32* %s2, align 4, !tbaa !10
  br label %for.inc.1373

for.inc.1373:                                     ; preds = %for.body.1349
  %878 = load i32, i32* %count, align 4, !tbaa !10
  %sub1374 = sub nsw i32 %878, 3
  store i32 %sub1374, i32* %count, align 4, !tbaa !10
  br label %for.cond.1346

for.end.1375:                                     ; preds = %for.cond.1346
  %879 = load i32, i32* %s0, align 4, !tbaa !10
  %880 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1376 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %880, i32 0, i32 12
  %arrayidx1377 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1376, i32 0, i64 0
  store i32 %879, i32* %arrayidx1377, align 4, !tbaa !10
  %881 = load i32, i32* %s11341, align 4, !tbaa !10
  %882 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1378 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %882, i32 0, i32 12
  %arrayidx1379 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1378, i32 0, i64 1
  store i32 %881, i32* %arrayidx1379, align 4, !tbaa !10
  %883 = load i32, i32* %s2, align 4, !tbaa !10
  %884 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1380 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %884, i32 0, i32 12
  %arrayidx1381 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1380, i32 0, i64 2
  store i32 %883, i32* %arrayidx1381, align 4, !tbaa !10
  %885 = bitcast i32* %s2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %885) #2
  %886 = bitcast i32* %s11341 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %886) #2
  br label %enc8

sw.bb.1382:                                       ; preds = %cond.end.22
  %887 = bitcast i32* %s11383 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %887) #2
  %888 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1384 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %888, i32 0, i32 12
  %arrayidx1385 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1384, i32 0, i64 1
  %889 = load i32, i32* %arrayidx1385, align 4, !tbaa !10
  store i32 %889, i32* %s11383, align 4, !tbaa !10
  %890 = bitcast i32* %s21386 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %890) #2
  %891 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1387 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %891, i32 0, i32 12
  %arrayidx1388 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1387, i32 0, i64 2
  %892 = load i32, i32* %arrayidx1388, align 4, !tbaa !10
  store i32 %892, i32* %s21386, align 4, !tbaa !10
  br label %for.cond.1389

for.cond.1389:                                    ; preds = %for.inc.1410, %sw.bb.1382
  %893 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1390 = icmp sge i32 %893, 3
  br i1 %cmp1390, label %for.body.1392, label %for.end.1412

for.body.1392:                                    ; preds = %for.cond.1389
  %894 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1393 = getelementptr inbounds i8, i8* %894, i64 3
  store i8* %add.ptr1393, i8** %p, align 8, !tbaa !1
  %895 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1394 = getelementptr inbounds i8, i8* %895, i64 3
  store i8* %add.ptr1394, i8** %q, align 8, !tbaa !1
  %896 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1395 = getelementptr inbounds i8, i8* %896, i64 -2
  %897 = load i8, i8* %arrayidx1395, align 1, !tbaa !13
  %conv1396 = zext i8 %897 to i32
  %898 = load i32, i32* %s0, align 4, !tbaa !10
  %add1397 = add i32 %898, %conv1396
  store i32 %add1397, i32* %s0, align 4, !tbaa !10
  %conv1398 = trunc i32 %add1397 to i8
  %899 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1399 = getelementptr inbounds i8, i8* %899, i64 -2
  store i8 %conv1398, i8* %arrayidx1399, align 1, !tbaa !13
  %900 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1400 = getelementptr inbounds i8, i8* %900, i64 -1
  %901 = load i8, i8* %arrayidx1400, align 1, !tbaa !13
  %conv1401 = zext i8 %901 to i32
  %902 = load i32, i32* %s11383, align 4, !tbaa !10
  %add1402 = add i32 %902, %conv1401
  store i32 %add1402, i32* %s11383, align 4, !tbaa !10
  %conv1403 = trunc i32 %add1402 to i8
  %903 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1404 = getelementptr inbounds i8, i8* %903, i64 -1
  store i8 %conv1403, i8* %arrayidx1404, align 1, !tbaa !13
  %904 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1405 = getelementptr inbounds i8, i8* %904, i64 0
  %905 = load i8, i8* %arrayidx1405, align 1, !tbaa !13
  %conv1406 = zext i8 %905 to i32
  %906 = load i32, i32* %s21386, align 4, !tbaa !10
  %add1407 = add i32 %906, %conv1406
  store i32 %add1407, i32* %s21386, align 4, !tbaa !10
  %conv1408 = trunc i32 %add1407 to i8
  %907 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1409 = getelementptr inbounds i8, i8* %907, i64 0
  store i8 %conv1408, i8* %arrayidx1409, align 1, !tbaa !13
  br label %for.inc.1410

for.inc.1410:                                     ; preds = %for.body.1392
  %908 = load i32, i32* %count, align 4, !tbaa !10
  %sub1411 = sub nsw i32 %908, 3
  store i32 %sub1411, i32* %count, align 4, !tbaa !10
  br label %for.cond.1389

for.end.1412:                                     ; preds = %for.cond.1389
  %909 = load i32, i32* %s0, align 4, !tbaa !10
  %910 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1413 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %910, i32 0, i32 12
  %arrayidx1414 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1413, i32 0, i64 0
  store i32 %909, i32* %arrayidx1414, align 4, !tbaa !10
  %911 = load i32, i32* %s11383, align 4, !tbaa !10
  %912 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1415 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %912, i32 0, i32 12
  %arrayidx1416 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1415, i32 0, i64 1
  store i32 %911, i32* %arrayidx1416, align 4, !tbaa !10
  %913 = load i32, i32* %s21386, align 4, !tbaa !10
  %914 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1417 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %914, i32 0, i32 12
  %arrayidx1418 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1417, i32 0, i64 2
  store i32 %913, i32* %arrayidx1418, align 4, !tbaa !10
  %915 = bitcast i32* %s21386 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %915) #2
  %916 = bitcast i32* %s11383 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %916) #2
  br label %dec8

sw.bb.1419:                                       ; preds = %cond.end.22
  %917 = bitcast i32* %s11420 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %917) #2
  %918 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1421 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %918, i32 0, i32 12
  %arrayidx1422 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1421, i32 0, i64 1
  %919 = load i32, i32* %arrayidx1422, align 4, !tbaa !10
  store i32 %919, i32* %s11420, align 4, !tbaa !10
  %920 = bitcast i32* %s21423 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %920) #2
  %921 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1424 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %921, i32 0, i32 12
  %arrayidx1425 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1424, i32 0, i64 2
  %922 = load i32, i32* %arrayidx1425, align 4, !tbaa !10
  store i32 %922, i32* %s21423, align 4, !tbaa !10
  %923 = bitcast i32* %s3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %923) #2
  %924 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1426 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %924, i32 0, i32 12
  %arrayidx1427 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1426, i32 0, i64 3
  %925 = load i32, i32* %arrayidx1427, align 4, !tbaa !10
  store i32 %925, i32* %s3, align 4, !tbaa !10
  br label %for.cond.1428

for.cond.1428:                                    ; preds = %for.inc.1462, %sw.bb.1419
  %926 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1429 = icmp sge i32 %926, 4
  br i1 %cmp1429, label %for.body.1431, label %for.end.1464

for.body.1431:                                    ; preds = %for.cond.1428
  %927 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1432 = getelementptr inbounds i8, i8* %927, i64 4
  store i8* %add.ptr1432, i8** %p, align 8, !tbaa !1
  %928 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1433 = getelementptr inbounds i8, i8* %928, i64 4
  store i8* %add.ptr1433, i8** %q, align 8, !tbaa !1
  %929 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1434 = getelementptr inbounds i8, i8* %929, i64 -3
  %930 = load i8, i8* %arrayidx1434, align 1, !tbaa !13
  %conv1435 = zext i8 %930 to i32
  %931 = load i32, i32* %s0, align 4, !tbaa !10
  %sub1436 = sub i32 %conv1435, %931
  %conv1437 = trunc i32 %sub1436 to i8
  %932 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1438 = getelementptr inbounds i8, i8* %932, i64 -3
  store i8 %conv1437, i8* %arrayidx1438, align 1, !tbaa !13
  %933 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1439 = getelementptr inbounds i8, i8* %933, i64 -3
  %934 = load i8, i8* %arrayidx1439, align 1, !tbaa !13
  %conv1440 = zext i8 %934 to i32
  store i32 %conv1440, i32* %s0, align 4, !tbaa !10
  %935 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1441 = getelementptr inbounds i8, i8* %935, i64 -2
  %936 = load i8, i8* %arrayidx1441, align 1, !tbaa !13
  %conv1442 = zext i8 %936 to i32
  %937 = load i32, i32* %s11420, align 4, !tbaa !10
  %sub1443 = sub i32 %conv1442, %937
  %conv1444 = trunc i32 %sub1443 to i8
  %938 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1445 = getelementptr inbounds i8, i8* %938, i64 -2
  store i8 %conv1444, i8* %arrayidx1445, align 1, !tbaa !13
  %939 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1446 = getelementptr inbounds i8, i8* %939, i64 -2
  %940 = load i8, i8* %arrayidx1446, align 1, !tbaa !13
  %conv1447 = zext i8 %940 to i32
  store i32 %conv1447, i32* %s11420, align 4, !tbaa !10
  %941 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1448 = getelementptr inbounds i8, i8* %941, i64 -1
  %942 = load i8, i8* %arrayidx1448, align 1, !tbaa !13
  %conv1449 = zext i8 %942 to i32
  %943 = load i32, i32* %s21423, align 4, !tbaa !10
  %sub1450 = sub i32 %conv1449, %943
  %conv1451 = trunc i32 %sub1450 to i8
  %944 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1452 = getelementptr inbounds i8, i8* %944, i64 -1
  store i8 %conv1451, i8* %arrayidx1452, align 1, !tbaa !13
  %945 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1453 = getelementptr inbounds i8, i8* %945, i64 -1
  %946 = load i8, i8* %arrayidx1453, align 1, !tbaa !13
  %conv1454 = zext i8 %946 to i32
  store i32 %conv1454, i32* %s21423, align 4, !tbaa !10
  %947 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1455 = getelementptr inbounds i8, i8* %947, i64 0
  %948 = load i8, i8* %arrayidx1455, align 1, !tbaa !13
  %conv1456 = zext i8 %948 to i32
  %949 = load i32, i32* %s3, align 4, !tbaa !10
  %sub1457 = sub i32 %conv1456, %949
  %conv1458 = trunc i32 %sub1457 to i8
  %950 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1459 = getelementptr inbounds i8, i8* %950, i64 0
  store i8 %conv1458, i8* %arrayidx1459, align 1, !tbaa !13
  %951 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1460 = getelementptr inbounds i8, i8* %951, i64 0
  %952 = load i8, i8* %arrayidx1460, align 1, !tbaa !13
  %conv1461 = zext i8 %952 to i32
  store i32 %conv1461, i32* %s3, align 4, !tbaa !10
  br label %for.inc.1462

for.inc.1462:                                     ; preds = %for.body.1431
  %953 = load i32, i32* %count, align 4, !tbaa !10
  %sub1463 = sub nsw i32 %953, 4
  store i32 %sub1463, i32* %count, align 4, !tbaa !10
  br label %for.cond.1428

for.end.1464:                                     ; preds = %for.cond.1428
  %954 = load i32, i32* %s0, align 4, !tbaa !10
  %955 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1465 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %955, i32 0, i32 12
  %arrayidx1466 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1465, i32 0, i64 0
  store i32 %954, i32* %arrayidx1466, align 4, !tbaa !10
  %956 = load i32, i32* %s11420, align 4, !tbaa !10
  %957 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1467 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %957, i32 0, i32 12
  %arrayidx1468 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1467, i32 0, i64 1
  store i32 %956, i32* %arrayidx1468, align 4, !tbaa !10
  %958 = load i32, i32* %s21423, align 4, !tbaa !10
  %959 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1469 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %959, i32 0, i32 12
  %arrayidx1470 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1469, i32 0, i64 2
  store i32 %958, i32* %arrayidx1470, align 4, !tbaa !10
  %960 = load i32, i32* %s3, align 4, !tbaa !10
  %961 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1471 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %961, i32 0, i32 12
  %arrayidx1472 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1471, i32 0, i64 3
  store i32 %960, i32* %arrayidx1472, align 4, !tbaa !10
  %962 = bitcast i32* %s3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %962) #2
  %963 = bitcast i32* %s21423 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %963) #2
  %964 = bitcast i32* %s11420 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %964) #2
  br label %enc8

sw.bb.1473:                                       ; preds = %cond.end.22
  %965 = bitcast i32* %s11474 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %965) #2
  %966 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1475 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %966, i32 0, i32 12
  %arrayidx1476 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1475, i32 0, i64 1
  %967 = load i32, i32* %arrayidx1476, align 4, !tbaa !10
  store i32 %967, i32* %s11474, align 4, !tbaa !10
  %968 = bitcast i32* %s21477 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %968) #2
  %969 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1478 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %969, i32 0, i32 12
  %arrayidx1479 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1478, i32 0, i64 2
  %970 = load i32, i32* %arrayidx1479, align 4, !tbaa !10
  store i32 %970, i32* %s21477, align 4, !tbaa !10
  %971 = bitcast i32* %s31480 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %971) #2
  %972 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1481 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %972, i32 0, i32 12
  %arrayidx1482 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1481, i32 0, i64 3
  %973 = load i32, i32* %arrayidx1482, align 4, !tbaa !10
  store i32 %973, i32* %s31480, align 4, !tbaa !10
  br label %for.cond.1483

for.cond.1483:                                    ; preds = %for.inc.1509, %sw.bb.1473
  %974 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1484 = icmp sge i32 %974, 4
  br i1 %cmp1484, label %for.body.1486, label %for.end.1511

for.body.1486:                                    ; preds = %for.cond.1483
  %975 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1487 = getelementptr inbounds i8, i8* %975, i64 4
  store i8* %add.ptr1487, i8** %p, align 8, !tbaa !1
  %976 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1488 = getelementptr inbounds i8, i8* %976, i64 4
  store i8* %add.ptr1488, i8** %q, align 8, !tbaa !1
  %977 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1489 = getelementptr inbounds i8, i8* %977, i64 -3
  %978 = load i8, i8* %arrayidx1489, align 1, !tbaa !13
  %conv1490 = zext i8 %978 to i32
  %979 = load i32, i32* %s0, align 4, !tbaa !10
  %add1491 = add i32 %979, %conv1490
  store i32 %add1491, i32* %s0, align 4, !tbaa !10
  %conv1492 = trunc i32 %add1491 to i8
  %980 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1493 = getelementptr inbounds i8, i8* %980, i64 -3
  store i8 %conv1492, i8* %arrayidx1493, align 1, !tbaa !13
  %981 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1494 = getelementptr inbounds i8, i8* %981, i64 -2
  %982 = load i8, i8* %arrayidx1494, align 1, !tbaa !13
  %conv1495 = zext i8 %982 to i32
  %983 = load i32, i32* %s11474, align 4, !tbaa !10
  %add1496 = add i32 %983, %conv1495
  store i32 %add1496, i32* %s11474, align 4, !tbaa !10
  %conv1497 = trunc i32 %add1496 to i8
  %984 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1498 = getelementptr inbounds i8, i8* %984, i64 -2
  store i8 %conv1497, i8* %arrayidx1498, align 1, !tbaa !13
  %985 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1499 = getelementptr inbounds i8, i8* %985, i64 -1
  %986 = load i8, i8* %arrayidx1499, align 1, !tbaa !13
  %conv1500 = zext i8 %986 to i32
  %987 = load i32, i32* %s21477, align 4, !tbaa !10
  %add1501 = add i32 %987, %conv1500
  store i32 %add1501, i32* %s21477, align 4, !tbaa !10
  %conv1502 = trunc i32 %add1501 to i8
  %988 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1503 = getelementptr inbounds i8, i8* %988, i64 -1
  store i8 %conv1502, i8* %arrayidx1503, align 1, !tbaa !13
  %989 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1504 = getelementptr inbounds i8, i8* %989, i64 0
  %990 = load i8, i8* %arrayidx1504, align 1, !tbaa !13
  %conv1505 = zext i8 %990 to i32
  %991 = load i32, i32* %s31480, align 4, !tbaa !10
  %add1506 = add i32 %991, %conv1505
  store i32 %add1506, i32* %s31480, align 4, !tbaa !10
  %conv1507 = trunc i32 %add1506 to i8
  %992 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1508 = getelementptr inbounds i8, i8* %992, i64 0
  store i8 %conv1507, i8* %arrayidx1508, align 1, !tbaa !13
  br label %for.inc.1509

for.inc.1509:                                     ; preds = %for.body.1486
  %993 = load i32, i32* %count, align 4, !tbaa !10
  %sub1510 = sub nsw i32 %993, 4
  store i32 %sub1510, i32* %count, align 4, !tbaa !10
  br label %for.cond.1483

for.end.1511:                                     ; preds = %for.cond.1483
  %994 = load i32, i32* %s0, align 4, !tbaa !10
  %995 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1512 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %995, i32 0, i32 12
  %arrayidx1513 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1512, i32 0, i64 0
  store i32 %994, i32* %arrayidx1513, align 4, !tbaa !10
  %996 = load i32, i32* %s11474, align 4, !tbaa !10
  %997 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1514 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %997, i32 0, i32 12
  %arrayidx1515 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1514, i32 0, i64 1
  store i32 %996, i32* %arrayidx1515, align 4, !tbaa !10
  %998 = load i32, i32* %s21477, align 4, !tbaa !10
  %999 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1516 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %999, i32 0, i32 12
  %arrayidx1517 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1516, i32 0, i64 2
  store i32 %998, i32* %arrayidx1517, align 4, !tbaa !10
  %1000 = load i32, i32* %s31480, align 4, !tbaa !10
  %1001 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1518 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1001, i32 0, i32 12
  %arrayidx1519 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1518, i32 0, i64 3
  store i32 %1000, i32* %arrayidx1519, align 4, !tbaa !10
  %1002 = bitcast i32* %s31480 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1002) #2
  %1003 = bitcast i32* %s21477 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1003) #2
  %1004 = bitcast i32* %s11474 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1004) #2
  br label %dec8

sw.bb.1520:                                       ; preds = %cond.end.22, %cond.end.22
  %1005 = load i32, i32* %s0, align 4, !tbaa !10
  %1006 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1521 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1006, i32 0, i32 12
  %arrayidx1522 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1521, i32 0, i64 0
  store i32 %1005, i32* %arrayidx1522, align 4, !tbaa !10
  br label %for.cond.1523

for.cond.1523:                                    ; preds = %for.inc.1554, %sw.bb.1520
  %1007 = load i32, i32* %count, align 4, !tbaa !10
  %1008 = load i32, i32* %colors, align 4, !tbaa !10
  %mul1524 = mul nsw i32 %1008, 2
  %cmp1525 = icmp sge i32 %1007, %mul1524
  br i1 %cmp1525, label %for.body.1527, label %for.end.1557

for.body.1527:                                    ; preds = %for.cond.1523
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1528

for.cond.1528:                                    ; preds = %for.inc.1551, %for.body.1527
  %1009 = load i32, i32* %ci, align 4, !tbaa !10
  %1010 = load i32, i32* %colors, align 4, !tbaa !10
  %cmp1529 = icmp slt i32 %1009, %1010
  br i1 %cmp1529, label %for.body.1531, label %for.end.1553

for.body.1531:                                    ; preds = %for.cond.1528
  %1011 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1011) #2
  %1012 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1532 = getelementptr inbounds i8, i8* %1012, i32 1
  store i8* %incdec.ptr1532, i8** %p, align 8, !tbaa !1
  %1013 = load i8, i8* %incdec.ptr1532, align 1, !tbaa !13
  %conv1533 = zext i8 %1013 to i32
  %shl1534 = shl i32 %conv1533, 8
  store i32 %shl1534, i32* %ti, align 4, !tbaa !10
  %1014 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1535 = getelementptr inbounds i8, i8* %1014, i32 1
  store i8* %incdec.ptr1535, i8** %p, align 8, !tbaa !1
  %1015 = load i8, i8* %incdec.ptr1535, align 1, !tbaa !13
  %conv1536 = zext i8 %1015 to i32
  %1016 = load i32, i32* %ti, align 4, !tbaa !10
  %add1537 = add nsw i32 %1016, %conv1536
  store i32 %add1537, i32* %ti, align 4, !tbaa !10
  %1017 = load i32, i32* %ti, align 4, !tbaa !10
  %1018 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1538 = sext i32 %1018 to i64
  %1019 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1539 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1019, i32 0, i32 12
  %arrayidx1540 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1539, i32 0, i64 %idxprom1538
  %1020 = load i32, i32* %arrayidx1540, align 4, !tbaa !10
  %sub1541 = sub i32 %1017, %1020
  store i32 %sub1541, i32* %k, align 4, !tbaa !10
  %1021 = load i32, i32* %k, align 4, !tbaa !10
  %shr1542 = lshr i32 %1021, 8
  %conv1543 = trunc i32 %shr1542 to i8
  %1022 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1544 = getelementptr inbounds i8, i8* %1022, i32 1
  store i8* %incdec.ptr1544, i8** %q, align 8, !tbaa !1
  store i8 %conv1543, i8* %incdec.ptr1544, align 1, !tbaa !13
  %1023 = load i32, i32* %k, align 4, !tbaa !10
  %and1545 = and i32 %1023, 255
  %conv1546 = trunc i32 %and1545 to i8
  %1024 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1547 = getelementptr inbounds i8, i8* %1024, i32 1
  store i8* %incdec.ptr1547, i8** %q, align 8, !tbaa !1
  store i8 %conv1546, i8* %incdec.ptr1547, align 1, !tbaa !13
  %1025 = load i32, i32* %ti, align 4, !tbaa !10
  %1026 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1548 = sext i32 %1026 to i64
  %1027 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1549 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1027, i32 0, i32 12
  %arrayidx1550 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1549, i32 0, i64 %idxprom1548
  store i32 %1025, i32* %arrayidx1550, align 4, !tbaa !10
  %1028 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1028) #2
  br label %for.inc.1551

for.inc.1551:                                     ; preds = %for.body.1531
  %1029 = load i32, i32* %ci, align 4, !tbaa !10
  %inc1552 = add nsw i32 %1029, 1
  store i32 %inc1552, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1528

for.end.1553:                                     ; preds = %for.cond.1528
  br label %for.inc.1554

for.inc.1554:                                     ; preds = %for.end.1553
  %1030 = load i32, i32* %colors, align 4, !tbaa !10
  %mul1555 = mul nsw i32 %1030, 2
  %1031 = load i32, i32* %count, align 4, !tbaa !10
  %sub1556 = sub nsw i32 %1031, %mul1555
  store i32 %sub1556, i32* %count, align 4, !tbaa !10
  br label %for.cond.1523

for.end.1557:                                     ; preds = %for.cond.1523
  %1032 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1558 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1032, i32 0, i32 12
  %arrayidx1559 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1558, i32 0, i64 0
  %1033 = load i32, i32* %arrayidx1559, align 4, !tbaa !10
  store i32 %1033, i32* %s0, align 4, !tbaa !10
  br label %enc16

enc16:                                            ; preds = %for.end.1869, %for.end.1728, %for.end.1557
  %1034 = load i32, i32* %last.addr, align 4, !tbaa !10
  %tobool1560 = icmp ne i32 %1034, 0
  br i1 %tobool1560, label %land.lhs.true.1561, label %if.end.1583

land.lhs.true.1561:                               ; preds = %enc16
  %1035 = load i32, i32* %status, align 4, !tbaa !10
  %tobool1562 = icmp ne i32 %1035, 0
  br i1 %tobool1562, label %if.end.1583, label %if.then.1563

if.then.1563:                                     ; preds = %land.lhs.true.1561
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1564

for.cond.1564:                                    ; preds = %for.inc.1580, %if.then.1563
  %1036 = load i32, i32* %ci, align 4, !tbaa !10
  %1037 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1565 = icmp slt i32 %1036, %1037
  br i1 %cmp1565, label %for.body.1567, label %for.end.1582

for.body.1567:                                    ; preds = %for.cond.1564
  %1038 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1568 = getelementptr inbounds i8, i8* %1038, i32 1
  store i8* %incdec.ptr1568, i8** %p, align 8, !tbaa !1
  %1039 = load i8, i8* %incdec.ptr1568, align 1, !tbaa !13
  %conv1569 = zext i8 %1039 to i32
  %1040 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1570 = sext i32 %1040 to i64
  %1041 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1571 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1041, i32 0, i32 12
  %arrayidx1572 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1571, i32 0, i64 %idxprom1570
  %1042 = load i32, i32* %arrayidx1572, align 4, !tbaa !10
  %sub1573 = sub i32 %conv1569, %1042
  %conv1574 = trunc i32 %sub1573 to i8
  %1043 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1575 = getelementptr inbounds i8, i8* %1043, i32 1
  store i8* %incdec.ptr1575, i8** %q, align 8, !tbaa !1
  store i8 %conv1574, i8* %incdec.ptr1575, align 1, !tbaa !13
  %1044 = load i8*, i8** %p, align 8, !tbaa !1
  %1045 = load i8, i8* %1044, align 1, !tbaa !13
  %conv1576 = zext i8 %1045 to i32
  %1046 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1577 = sext i32 %1046 to i64
  %1047 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1578 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1047, i32 0, i32 12
  %arrayidx1579 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1578, i32 0, i64 %idxprom1577
  store i32 %conv1576, i32* %arrayidx1579, align 4, !tbaa !10
  br label %for.inc.1580

for.inc.1580:                                     ; preds = %for.body.1567
  %1048 = load i32, i32* %ci, align 4, !tbaa !10
  %inc1581 = add nsw i32 %1048, 1
  store i32 %inc1581, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1564

for.end.1582:                                     ; preds = %for.cond.1564
  br label %if.end.1583

if.end.1583:                                      ; preds = %for.end.1582, %land.lhs.true.1561, %enc16
  br label %sw.epilog

sw.bb.1584:                                       ; preds = %cond.end.22, %cond.end.22
  %1049 = load i32, i32* %s0, align 4, !tbaa !10
  %1050 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1585 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1050, i32 0, i32 12
  %arrayidx1586 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1585, i32 0, i64 0
  store i32 %1049, i32* %arrayidx1586, align 4, !tbaa !10
  br label %for.cond.1587

for.cond.1587:                                    ; preds = %for.inc.1621, %sw.bb.1584
  %1051 = load i32, i32* %count, align 4, !tbaa !10
  %1052 = load i32, i32* %colors, align 4, !tbaa !10
  %mul1588 = mul nsw i32 %1052, 2
  %cmp1589 = icmp sge i32 %1051, %mul1588
  br i1 %cmp1589, label %for.body.1591, label %for.end.1624

for.body.1591:                                    ; preds = %for.cond.1587
  store i32 0, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1592

for.cond.1592:                                    ; preds = %for.inc.1618, %for.body.1591
  %1053 = load i32, i32* %ci, align 4, !tbaa !10
  %1054 = load i32, i32* %colors, align 4, !tbaa !10
  %cmp1593 = icmp slt i32 %1053, %1054
  br i1 %cmp1593, label %for.body.1595, label %for.end.1620

for.body.1595:                                    ; preds = %for.cond.1592
  %1055 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1596 = getelementptr inbounds i8, i8* %1055, i32 1
  store i8* %incdec.ptr1596, i8** %p, align 8, !tbaa !1
  %1056 = load i8, i8* %incdec.ptr1596, align 1, !tbaa !13
  %conv1597 = zext i8 %1056 to i32
  %shl1598 = shl i32 %conv1597, 8
  store i32 %shl1598, i32* %ti, align 4, !tbaa !10
  %1057 = load i32, i32* %ti, align 4, !tbaa !10
  %1058 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr1599 = getelementptr inbounds i8, i8* %1058, i32 1
  store i8* %incdec.ptr1599, i8** %p, align 8, !tbaa !1
  %1059 = load i8, i8* %incdec.ptr1599, align 1, !tbaa !13
  %conv1600 = zext i8 %1059 to i32
  %add1601 = add nsw i32 %1057, %conv1600
  %1060 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1602 = sext i32 %1060 to i64
  %1061 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1603 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1061, i32 0, i32 12
  %arrayidx1604 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1603, i32 0, i64 %idxprom1602
  %1062 = load i32, i32* %arrayidx1604, align 4, !tbaa !10
  %add1605 = add i32 %1062, %add1601
  store i32 %add1605, i32* %arrayidx1604, align 4, !tbaa !10
  %1063 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1606 = sext i32 %1063 to i64
  %1064 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1607 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1064, i32 0, i32 12
  %arrayidx1608 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1607, i32 0, i64 %idxprom1606
  %1065 = load i32, i32* %arrayidx1608, align 4, !tbaa !10
  %shr1609 = lshr i32 %1065, 8
  %conv1610 = trunc i32 %shr1609 to i8
  %1066 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1611 = getelementptr inbounds i8, i8* %1066, i32 1
  store i8* %incdec.ptr1611, i8** %q, align 8, !tbaa !1
  store i8 %conv1610, i8* %incdec.ptr1611, align 1, !tbaa !13
  %1067 = load i32, i32* %ci, align 4, !tbaa !10
  %idxprom1612 = sext i32 %1067 to i64
  %1068 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1613 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1068, i32 0, i32 12
  %arrayidx1614 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1613, i32 0, i64 %idxprom1612
  %1069 = load i32, i32* %arrayidx1614, align 4, !tbaa !10
  %and1615 = and i32 %1069, 255
  %conv1616 = trunc i32 %and1615 to i8
  %1070 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr1617 = getelementptr inbounds i8, i8* %1070, i32 1
  store i8* %incdec.ptr1617, i8** %q, align 8, !tbaa !1
  store i8 %conv1616, i8* %incdec.ptr1617, align 1, !tbaa !13
  br label %for.inc.1618

for.inc.1618:                                     ; preds = %for.body.1595
  %1071 = load i32, i32* %ci, align 4, !tbaa !10
  %inc1619 = add nsw i32 %1071, 1
  store i32 %inc1619, i32* %ci, align 4, !tbaa !10
  br label %for.cond.1592

for.end.1620:                                     ; preds = %for.cond.1592
  br label %for.inc.1621

for.inc.1621:                                     ; preds = %for.end.1620
  %1072 = load i32, i32* %colors, align 4, !tbaa !10
  %mul1622 = mul nsw i32 %1072, 2
  %1073 = load i32, i32* %count, align 4, !tbaa !10
  %sub1623 = sub nsw i32 %1073, %mul1622
  store i32 %sub1623, i32* %count, align 4, !tbaa !10
  br label %for.cond.1587

for.end.1624:                                     ; preds = %for.cond.1587
  %1074 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1625 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1074, i32 0, i32 12
  %arrayidx1626 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1625, i32 0, i64 0
  %1075 = load i32, i32* %arrayidx1626, align 4, !tbaa !10
  store i32 %1075, i32* %s0, align 4, !tbaa !10
  br label %dec16

dec16:                                            ; preds = %for.end.1952, %for.end.1792, %for.end.1624
  br label %sw.epilog

sw.bb.1627:                                       ; preds = %cond.end.22
  br label %for.cond.1628

for.cond.1628:                                    ; preds = %for.inc.1647, %sw.bb.1627
  %1076 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1629 = icmp sge i32 %1076, 2
  br i1 %cmp1629, label %for.body.1631, label %for.end.1649

for.body.1631:                                    ; preds = %for.cond.1628
  %1077 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1632 = getelementptr inbounds i8, i8* %1077, i64 2
  store i8* %add.ptr1632, i8** %p, align 8, !tbaa !1
  %1078 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1633 = getelementptr inbounds i8, i8* %1078, i64 2
  store i8* %add.ptr1633, i8** %q, align 8, !tbaa !1
  %1079 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1634 = getelementptr inbounds i8, i8* %1079, i64 -1
  %1080 = load i8, i8* %arrayidx1634, align 1, !tbaa !13
  %conv1635 = zext i8 %1080 to i32
  %shl1636 = shl i32 %conv1635, 8
  %1081 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1637 = getelementptr inbounds i8, i8* %1081, i64 0
  %1082 = load i8, i8* %arrayidx1637, align 1, !tbaa !13
  %conv1638 = zext i8 %1082 to i32
  %add1639 = add nsw i32 %shl1636, %conv1638
  store i32 %add1639, i32* %ti, align 4, !tbaa !10
  %1083 = load i32, i32* %ti, align 4, !tbaa !10
  %1084 = load i32, i32* %s0, align 4, !tbaa !10
  %sub1640 = sub i32 %1083, %1084
  store i32 %sub1640, i32* %s0, align 4, !tbaa !10
  %1085 = load i32, i32* %s0, align 4, !tbaa !10
  %shr1641 = lshr i32 %1085, 8
  %conv1642 = trunc i32 %shr1641 to i8
  %1086 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1643 = getelementptr inbounds i8, i8* %1086, i64 -1
  store i8 %conv1642, i8* %arrayidx1643, align 1, !tbaa !13
  %1087 = load i32, i32* %s0, align 4, !tbaa !10
  %and1644 = and i32 %1087, 255
  %conv1645 = trunc i32 %and1644 to i8
  %1088 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1646 = getelementptr inbounds i8, i8* %1088, i64 0
  store i8 %conv1645, i8* %arrayidx1646, align 1, !tbaa !13
  %1089 = load i32, i32* %ti, align 4, !tbaa !10
  store i32 %1089, i32* %s0, align 4, !tbaa !10
  br label %for.inc.1647

for.inc.1647:                                     ; preds = %for.body.1631
  %1090 = load i32, i32* %count, align 4, !tbaa !10
  %sub1648 = sub nsw i32 %1090, 2
  store i32 %sub1648, i32* %count, align 4, !tbaa !10
  br label %for.cond.1628

for.end.1649:                                     ; preds = %for.cond.1628
  br label %sw.epilog

sw.bb.1650:                                       ; preds = %cond.end.22
  br label %for.cond.1651

for.cond.1651:                                    ; preds = %for.inc.1671, %sw.bb.1650
  %1091 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1652 = icmp sge i32 %1091, 2
  br i1 %cmp1652, label %for.body.1654, label %for.end.1673

for.body.1654:                                    ; preds = %for.cond.1651
  %1092 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1655 = getelementptr inbounds i8, i8* %1092, i64 2
  store i8* %add.ptr1655, i8** %p, align 8, !tbaa !1
  %1093 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1656 = getelementptr inbounds i8, i8* %1093, i64 2
  store i8* %add.ptr1656, i8** %q, align 8, !tbaa !1
  %1094 = load i32, i32* %s0, align 4, !tbaa !10
  %1095 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1657 = getelementptr inbounds i8, i8* %1095, i64 -1
  %1096 = load i8, i8* %arrayidx1657, align 1, !tbaa !13
  %conv1658 = zext i8 %1096 to i32
  %shl1659 = shl i32 %conv1658, 8
  %1097 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1660 = getelementptr inbounds i8, i8* %1097, i64 0
  %1098 = load i8, i8* %arrayidx1660, align 1, !tbaa !13
  %conv1661 = zext i8 %1098 to i32
  %add1662 = add nsw i32 %shl1659, %conv1661
  %add1663 = add i32 %1094, %add1662
  %and1664 = and i32 65535, %add1663
  store i32 %and1664, i32* %s0, align 4, !tbaa !10
  %1099 = load i32, i32* %s0, align 4, !tbaa !10
  %shr1665 = lshr i32 %1099, 8
  %conv1666 = trunc i32 %shr1665 to i8
  %1100 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1667 = getelementptr inbounds i8, i8* %1100, i64 -1
  store i8 %conv1666, i8* %arrayidx1667, align 1, !tbaa !13
  %1101 = load i32, i32* %s0, align 4, !tbaa !10
  %and1668 = and i32 %1101, 255
  %conv1669 = trunc i32 %and1668 to i8
  %1102 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1670 = getelementptr inbounds i8, i8* %1102, i64 0
  store i8 %conv1669, i8* %arrayidx1670, align 1, !tbaa !13
  br label %for.inc.1671

for.inc.1671:                                     ; preds = %for.body.1654
  %1103 = load i32, i32* %count, align 4, !tbaa !10
  %sub1672 = sub nsw i32 %1103, 2
  store i32 %sub1672, i32* %count, align 4, !tbaa !10
  br label %for.cond.1651

for.end.1673:                                     ; preds = %for.cond.1651
  br label %sw.epilog

sw.bb.1674:                                       ; preds = %cond.end.22
  %1104 = bitcast i32* %s11675 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1104) #2
  %1105 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1676 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1105, i32 0, i32 12
  %arrayidx1677 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1676, i32 0, i64 1
  %1106 = load i32, i32* %arrayidx1677, align 4, !tbaa !10
  store i32 %1106, i32* %s11675, align 4, !tbaa !10
  %1107 = bitcast i32* %s21678 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1107) #2
  %1108 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1679 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1108, i32 0, i32 12
  %arrayidx1680 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1679, i32 0, i64 2
  %1109 = load i32, i32* %arrayidx1680, align 4, !tbaa !10
  store i32 %1109, i32* %s21678, align 4, !tbaa !10
  br label %for.cond.1681

for.cond.1681:                                    ; preds = %for.inc.1726, %sw.bb.1674
  %1110 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1682 = icmp sge i32 %1110, 6
  br i1 %cmp1682, label %for.body.1684, label %for.end.1728

for.body.1684:                                    ; preds = %for.cond.1681
  %1111 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1685 = getelementptr inbounds i8, i8* %1111, i64 6
  store i8* %add.ptr1685, i8** %p, align 8, !tbaa !1
  %1112 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1686 = getelementptr inbounds i8, i8* %1112, i64 6
  store i8* %add.ptr1686, i8** %q, align 8, !tbaa !1
  %1113 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1687 = getelementptr inbounds i8, i8* %1113, i64 -5
  %1114 = load i8, i8* %arrayidx1687, align 1, !tbaa !13
  %conv1688 = zext i8 %1114 to i32
  %shl1689 = shl i32 %conv1688, 8
  %1115 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1690 = getelementptr inbounds i8, i8* %1115, i64 -4
  %1116 = load i8, i8* %arrayidx1690, align 1, !tbaa !13
  %conv1691 = zext i8 %1116 to i32
  %add1692 = add nsw i32 %shl1689, %conv1691
  store i32 %add1692, i32* %ti, align 4, !tbaa !10
  %1117 = load i32, i32* %ti, align 4, !tbaa !10
  %1118 = load i32, i32* %s0, align 4, !tbaa !10
  %sub1693 = sub i32 %1117, %1118
  store i32 %sub1693, i32* %s0, align 4, !tbaa !10
  %1119 = load i32, i32* %s0, align 4, !tbaa !10
  %shr1694 = lshr i32 %1119, 8
  %conv1695 = trunc i32 %shr1694 to i8
  %1120 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1696 = getelementptr inbounds i8, i8* %1120, i64 -5
  store i8 %conv1695, i8* %arrayidx1696, align 1, !tbaa !13
  %1121 = load i32, i32* %s0, align 4, !tbaa !10
  %and1697 = and i32 %1121, 255
  %conv1698 = trunc i32 %and1697 to i8
  %1122 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1699 = getelementptr inbounds i8, i8* %1122, i64 -4
  store i8 %conv1698, i8* %arrayidx1699, align 1, !tbaa !13
  %1123 = load i32, i32* %ti, align 4, !tbaa !10
  store i32 %1123, i32* %s0, align 4, !tbaa !10
  %1124 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1700 = getelementptr inbounds i8, i8* %1124, i64 -3
  %1125 = load i8, i8* %arrayidx1700, align 1, !tbaa !13
  %conv1701 = zext i8 %1125 to i32
  %shl1702 = shl i32 %conv1701, 8
  %1126 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1703 = getelementptr inbounds i8, i8* %1126, i64 -2
  %1127 = load i8, i8* %arrayidx1703, align 1, !tbaa !13
  %conv1704 = zext i8 %1127 to i32
  %add1705 = add nsw i32 %shl1702, %conv1704
  store i32 %add1705, i32* %ti, align 4, !tbaa !10
  %1128 = load i32, i32* %ti, align 4, !tbaa !10
  %1129 = load i32, i32* %s11675, align 4, !tbaa !10
  %sub1706 = sub i32 %1128, %1129
  store i32 %sub1706, i32* %s11675, align 4, !tbaa !10
  %1130 = load i32, i32* %s11675, align 4, !tbaa !10
  %shr1707 = lshr i32 %1130, 8
  %conv1708 = trunc i32 %shr1707 to i8
  %1131 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1709 = getelementptr inbounds i8, i8* %1131, i64 -3
  store i8 %conv1708, i8* %arrayidx1709, align 1, !tbaa !13
  %1132 = load i32, i32* %s11675, align 4, !tbaa !10
  %and1710 = and i32 %1132, 255
  %conv1711 = trunc i32 %and1710 to i8
  %1133 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1712 = getelementptr inbounds i8, i8* %1133, i64 -2
  store i8 %conv1711, i8* %arrayidx1712, align 1, !tbaa !13
  %1134 = load i32, i32* %ti, align 4, !tbaa !10
  store i32 %1134, i32* %s11675, align 4, !tbaa !10
  %1135 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1713 = getelementptr inbounds i8, i8* %1135, i64 -1
  %1136 = load i8, i8* %arrayidx1713, align 1, !tbaa !13
  %conv1714 = zext i8 %1136 to i32
  %shl1715 = shl i32 %conv1714, 8
  %1137 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1716 = getelementptr inbounds i8, i8* %1137, i64 0
  %1138 = load i8, i8* %arrayidx1716, align 1, !tbaa !13
  %conv1717 = zext i8 %1138 to i32
  %add1718 = add nsw i32 %shl1715, %conv1717
  store i32 %add1718, i32* %ti, align 4, !tbaa !10
  %1139 = load i32, i32* %ti, align 4, !tbaa !10
  %1140 = load i32, i32* %s21678, align 4, !tbaa !10
  %sub1719 = sub i32 %1139, %1140
  store i32 %sub1719, i32* %s21678, align 4, !tbaa !10
  %1141 = load i32, i32* %s21678, align 4, !tbaa !10
  %shr1720 = lshr i32 %1141, 8
  %conv1721 = trunc i32 %shr1720 to i8
  %1142 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1722 = getelementptr inbounds i8, i8* %1142, i64 -1
  store i8 %conv1721, i8* %arrayidx1722, align 1, !tbaa !13
  %1143 = load i32, i32* %s21678, align 4, !tbaa !10
  %and1723 = and i32 %1143, 255
  %conv1724 = trunc i32 %and1723 to i8
  %1144 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1725 = getelementptr inbounds i8, i8* %1144, i64 0
  store i8 %conv1724, i8* %arrayidx1725, align 1, !tbaa !13
  %1145 = load i32, i32* %ti, align 4, !tbaa !10
  store i32 %1145, i32* %s21678, align 4, !tbaa !10
  br label %for.inc.1726

for.inc.1726:                                     ; preds = %for.body.1684
  %1146 = load i32, i32* %count, align 4, !tbaa !10
  %sub1727 = sub nsw i32 %1146, 6
  store i32 %sub1727, i32* %count, align 4, !tbaa !10
  br label %for.cond.1681

for.end.1728:                                     ; preds = %for.cond.1681
  %1147 = load i32, i32* %s0, align 4, !tbaa !10
  %1148 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1729 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1148, i32 0, i32 12
  %arrayidx1730 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1729, i32 0, i64 0
  store i32 %1147, i32* %arrayidx1730, align 4, !tbaa !10
  %1149 = load i32, i32* %s11675, align 4, !tbaa !10
  %1150 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1731 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1150, i32 0, i32 12
  %arrayidx1732 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1731, i32 0, i64 1
  store i32 %1149, i32* %arrayidx1732, align 4, !tbaa !10
  %1151 = load i32, i32* %s21678, align 4, !tbaa !10
  %1152 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1733 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1152, i32 0, i32 12
  %arrayidx1734 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1733, i32 0, i64 2
  store i32 %1151, i32* %arrayidx1734, align 4, !tbaa !10
  %1153 = bitcast i32* %s21678 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1153) #2
  %1154 = bitcast i32* %s11675 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1154) #2
  br label %enc16

sw.bb.1735:                                       ; preds = %cond.end.22
  %1155 = bitcast i32* %s11736 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1155) #2
  %1156 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1737 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1156, i32 0, i32 12
  %arrayidx1738 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1737, i32 0, i64 1
  %1157 = load i32, i32* %arrayidx1738, align 4, !tbaa !10
  store i32 %1157, i32* %s11736, align 4, !tbaa !10
  %1158 = bitcast i32* %s21739 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1158) #2
  %1159 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1740 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1159, i32 0, i32 12
  %arrayidx1741 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1740, i32 0, i64 2
  %1160 = load i32, i32* %arrayidx1741, align 4, !tbaa !10
  store i32 %1160, i32* %s21739, align 4, !tbaa !10
  br label %for.cond.1742

for.cond.1742:                                    ; preds = %for.inc.1790, %sw.bb.1735
  %1161 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1743 = icmp sge i32 %1161, 6
  br i1 %cmp1743, label %for.body.1745, label %for.end.1792

for.body.1745:                                    ; preds = %for.cond.1742
  %1162 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1746 = getelementptr inbounds i8, i8* %1162, i64 6
  store i8* %add.ptr1746, i8** %p, align 8, !tbaa !1
  %1163 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1747 = getelementptr inbounds i8, i8* %1163, i64 6
  store i8* %add.ptr1747, i8** %q, align 8, !tbaa !1
  %1164 = load i32, i32* %s0, align 4, !tbaa !10
  %1165 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1748 = getelementptr inbounds i8, i8* %1165, i64 -5
  %1166 = load i8, i8* %arrayidx1748, align 1, !tbaa !13
  %conv1749 = zext i8 %1166 to i32
  %shl1750 = shl i32 %conv1749, 8
  %1167 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1751 = getelementptr inbounds i8, i8* %1167, i64 -4
  %1168 = load i8, i8* %arrayidx1751, align 1, !tbaa !13
  %conv1752 = zext i8 %1168 to i32
  %add1753 = add nsw i32 %shl1750, %conv1752
  %add1754 = add i32 %1164, %add1753
  %and1755 = and i32 65535, %add1754
  store i32 %and1755, i32* %s0, align 4, !tbaa !10
  %1169 = load i32, i32* %s0, align 4, !tbaa !10
  %shr1756 = lshr i32 %1169, 8
  %conv1757 = trunc i32 %shr1756 to i8
  %1170 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1758 = getelementptr inbounds i8, i8* %1170, i64 -5
  store i8 %conv1757, i8* %arrayidx1758, align 1, !tbaa !13
  %1171 = load i32, i32* %s0, align 4, !tbaa !10
  %and1759 = and i32 %1171, 255
  %conv1760 = trunc i32 %and1759 to i8
  %1172 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1761 = getelementptr inbounds i8, i8* %1172, i64 -4
  store i8 %conv1760, i8* %arrayidx1761, align 1, !tbaa !13
  %1173 = load i32, i32* %s11736, align 4, !tbaa !10
  %1174 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1762 = getelementptr inbounds i8, i8* %1174, i64 -3
  %1175 = load i8, i8* %arrayidx1762, align 1, !tbaa !13
  %conv1763 = zext i8 %1175 to i32
  %shl1764 = shl i32 %conv1763, 8
  %1176 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1765 = getelementptr inbounds i8, i8* %1176, i64 -2
  %1177 = load i8, i8* %arrayidx1765, align 1, !tbaa !13
  %conv1766 = zext i8 %1177 to i32
  %add1767 = add nsw i32 %shl1764, %conv1766
  %add1768 = add i32 %1173, %add1767
  %and1769 = and i32 65535, %add1768
  store i32 %and1769, i32* %s11736, align 4, !tbaa !10
  %1178 = load i32, i32* %s11736, align 4, !tbaa !10
  %shr1770 = lshr i32 %1178, 8
  %conv1771 = trunc i32 %shr1770 to i8
  %1179 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1772 = getelementptr inbounds i8, i8* %1179, i64 -3
  store i8 %conv1771, i8* %arrayidx1772, align 1, !tbaa !13
  %1180 = load i32, i32* %s11736, align 4, !tbaa !10
  %and1773 = and i32 %1180, 255
  %conv1774 = trunc i32 %and1773 to i8
  %1181 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1775 = getelementptr inbounds i8, i8* %1181, i64 -2
  store i8 %conv1774, i8* %arrayidx1775, align 1, !tbaa !13
  %1182 = load i32, i32* %s21739, align 4, !tbaa !10
  %1183 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1776 = getelementptr inbounds i8, i8* %1183, i64 -1
  %1184 = load i8, i8* %arrayidx1776, align 1, !tbaa !13
  %conv1777 = zext i8 %1184 to i32
  %shl1778 = shl i32 %conv1777, 8
  %1185 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1779 = getelementptr inbounds i8, i8* %1185, i64 0
  %1186 = load i8, i8* %arrayidx1779, align 1, !tbaa !13
  %conv1780 = zext i8 %1186 to i32
  %add1781 = add nsw i32 %shl1778, %conv1780
  %add1782 = add i32 %1182, %add1781
  %and1783 = and i32 65535, %add1782
  store i32 %and1783, i32* %s21739, align 4, !tbaa !10
  %1187 = load i32, i32* %s21739, align 4, !tbaa !10
  %shr1784 = lshr i32 %1187, 8
  %conv1785 = trunc i32 %shr1784 to i8
  %1188 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1786 = getelementptr inbounds i8, i8* %1188, i64 -1
  store i8 %conv1785, i8* %arrayidx1786, align 1, !tbaa !13
  %1189 = load i32, i32* %s21739, align 4, !tbaa !10
  %and1787 = and i32 %1189, 255
  %conv1788 = trunc i32 %and1787 to i8
  %1190 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1789 = getelementptr inbounds i8, i8* %1190, i64 0
  store i8 %conv1788, i8* %arrayidx1789, align 1, !tbaa !13
  br label %for.inc.1790

for.inc.1790:                                     ; preds = %for.body.1745
  %1191 = load i32, i32* %count, align 4, !tbaa !10
  %sub1791 = sub nsw i32 %1191, 6
  store i32 %sub1791, i32* %count, align 4, !tbaa !10
  br label %for.cond.1742

for.end.1792:                                     ; preds = %for.cond.1742
  %1192 = load i32, i32* %s0, align 4, !tbaa !10
  %1193 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1793 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1193, i32 0, i32 12
  %arrayidx1794 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1793, i32 0, i64 0
  store i32 %1192, i32* %arrayidx1794, align 4, !tbaa !10
  %1194 = load i32, i32* %s11736, align 4, !tbaa !10
  %1195 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1795 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1195, i32 0, i32 12
  %arrayidx1796 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1795, i32 0, i64 1
  store i32 %1194, i32* %arrayidx1796, align 4, !tbaa !10
  %1196 = load i32, i32* %s21739, align 4, !tbaa !10
  %1197 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1797 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1197, i32 0, i32 12
  %arrayidx1798 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1797, i32 0, i64 2
  store i32 %1196, i32* %arrayidx1798, align 4, !tbaa !10
  %1198 = bitcast i32* %s21739 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1198) #2
  %1199 = bitcast i32* %s11736 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1199) #2
  br label %dec16

sw.bb.1799:                                       ; preds = %cond.end.22
  %1200 = bitcast i32* %s11800 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1200) #2
  %1201 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1801 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1201, i32 0, i32 12
  %arrayidx1802 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1801, i32 0, i64 1
  %1202 = load i32, i32* %arrayidx1802, align 4, !tbaa !10
  store i32 %1202, i32* %s11800, align 4, !tbaa !10
  %1203 = bitcast i32* %s21803 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1203) #2
  %1204 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1804 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1204, i32 0, i32 12
  %arrayidx1805 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1804, i32 0, i64 2
  %1205 = load i32, i32* %arrayidx1805, align 4, !tbaa !10
  store i32 %1205, i32* %s21803, align 4, !tbaa !10
  %1206 = bitcast i32* %s31806 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1206) #2
  %1207 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1807 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1207, i32 0, i32 12
  %arrayidx1808 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1807, i32 0, i64 3
  %1208 = load i32, i32* %arrayidx1808, align 4, !tbaa !10
  store i32 %1208, i32* %s31806, align 4, !tbaa !10
  br label %for.cond.1809

for.cond.1809:                                    ; preds = %for.inc.1867, %sw.bb.1799
  %1209 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1810 = icmp sge i32 %1209, 8
  br i1 %cmp1810, label %for.body.1812, label %for.end.1869

for.body.1812:                                    ; preds = %for.cond.1809
  %1210 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1813 = getelementptr inbounds i8, i8* %1210, i64 8
  store i8* %add.ptr1813, i8** %p, align 8, !tbaa !1
  %1211 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1814 = getelementptr inbounds i8, i8* %1211, i64 8
  store i8* %add.ptr1814, i8** %q, align 8, !tbaa !1
  %1212 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1815 = getelementptr inbounds i8, i8* %1212, i64 -7
  %1213 = load i8, i8* %arrayidx1815, align 1, !tbaa !13
  %conv1816 = zext i8 %1213 to i32
  %shl1817 = shl i32 %conv1816, 8
  %1214 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1818 = getelementptr inbounds i8, i8* %1214, i64 -6
  %1215 = load i8, i8* %arrayidx1818, align 1, !tbaa !13
  %conv1819 = zext i8 %1215 to i32
  %add1820 = add nsw i32 %shl1817, %conv1819
  store i32 %add1820, i32* %ti, align 4, !tbaa !10
  %1216 = load i32, i32* %ti, align 4, !tbaa !10
  %1217 = load i32, i32* %s0, align 4, !tbaa !10
  %sub1821 = sub i32 %1216, %1217
  store i32 %sub1821, i32* %s0, align 4, !tbaa !10
  %1218 = load i32, i32* %s0, align 4, !tbaa !10
  %shr1822 = lshr i32 %1218, 8
  %conv1823 = trunc i32 %shr1822 to i8
  %1219 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1824 = getelementptr inbounds i8, i8* %1219, i64 -7
  store i8 %conv1823, i8* %arrayidx1824, align 1, !tbaa !13
  %1220 = load i32, i32* %s0, align 4, !tbaa !10
  %and1825 = and i32 %1220, 255
  %conv1826 = trunc i32 %and1825 to i8
  %1221 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1827 = getelementptr inbounds i8, i8* %1221, i64 -6
  store i8 %conv1826, i8* %arrayidx1827, align 1, !tbaa !13
  %1222 = load i32, i32* %ti, align 4, !tbaa !10
  store i32 %1222, i32* %s0, align 4, !tbaa !10
  %1223 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1828 = getelementptr inbounds i8, i8* %1223, i64 -5
  %1224 = load i8, i8* %arrayidx1828, align 1, !tbaa !13
  %conv1829 = zext i8 %1224 to i32
  %shl1830 = shl i32 %conv1829, 8
  %1225 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1831 = getelementptr inbounds i8, i8* %1225, i64 -4
  %1226 = load i8, i8* %arrayidx1831, align 1, !tbaa !13
  %conv1832 = zext i8 %1226 to i32
  %add1833 = add nsw i32 %shl1830, %conv1832
  store i32 %add1833, i32* %ti, align 4, !tbaa !10
  %1227 = load i32, i32* %ti, align 4, !tbaa !10
  %1228 = load i32, i32* %s11800, align 4, !tbaa !10
  %sub1834 = sub i32 %1227, %1228
  store i32 %sub1834, i32* %s11800, align 4, !tbaa !10
  %1229 = load i32, i32* %s11800, align 4, !tbaa !10
  %shr1835 = lshr i32 %1229, 8
  %conv1836 = trunc i32 %shr1835 to i8
  %1230 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1837 = getelementptr inbounds i8, i8* %1230, i64 -5
  store i8 %conv1836, i8* %arrayidx1837, align 1, !tbaa !13
  %1231 = load i32, i32* %s11800, align 4, !tbaa !10
  %and1838 = and i32 %1231, 255
  %conv1839 = trunc i32 %and1838 to i8
  %1232 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1840 = getelementptr inbounds i8, i8* %1232, i64 -4
  store i8 %conv1839, i8* %arrayidx1840, align 1, !tbaa !13
  %1233 = load i32, i32* %ti, align 4, !tbaa !10
  store i32 %1233, i32* %s11800, align 4, !tbaa !10
  %1234 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1841 = getelementptr inbounds i8, i8* %1234, i64 -3
  %1235 = load i8, i8* %arrayidx1841, align 1, !tbaa !13
  %conv1842 = zext i8 %1235 to i32
  %shl1843 = shl i32 %conv1842, 8
  %1236 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1844 = getelementptr inbounds i8, i8* %1236, i64 -2
  %1237 = load i8, i8* %arrayidx1844, align 1, !tbaa !13
  %conv1845 = zext i8 %1237 to i32
  %add1846 = add nsw i32 %shl1843, %conv1845
  store i32 %add1846, i32* %ti, align 4, !tbaa !10
  %1238 = load i32, i32* %ti, align 4, !tbaa !10
  %1239 = load i32, i32* %s21803, align 4, !tbaa !10
  %sub1847 = sub i32 %1238, %1239
  store i32 %sub1847, i32* %s21803, align 4, !tbaa !10
  %1240 = load i32, i32* %s21803, align 4, !tbaa !10
  %shr1848 = lshr i32 %1240, 8
  %conv1849 = trunc i32 %shr1848 to i8
  %1241 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1850 = getelementptr inbounds i8, i8* %1241, i64 -3
  store i8 %conv1849, i8* %arrayidx1850, align 1, !tbaa !13
  %1242 = load i32, i32* %s21803, align 4, !tbaa !10
  %and1851 = and i32 %1242, 255
  %conv1852 = trunc i32 %and1851 to i8
  %1243 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1853 = getelementptr inbounds i8, i8* %1243, i64 -2
  store i8 %conv1852, i8* %arrayidx1853, align 1, !tbaa !13
  %1244 = load i32, i32* %ti, align 4, !tbaa !10
  store i32 %1244, i32* %s21803, align 4, !tbaa !10
  %1245 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1854 = getelementptr inbounds i8, i8* %1245, i64 -1
  %1246 = load i8, i8* %arrayidx1854, align 1, !tbaa !13
  %conv1855 = zext i8 %1246 to i32
  %shl1856 = shl i32 %conv1855, 8
  %1247 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1857 = getelementptr inbounds i8, i8* %1247, i64 0
  %1248 = load i8, i8* %arrayidx1857, align 1, !tbaa !13
  %conv1858 = zext i8 %1248 to i32
  %add1859 = add nsw i32 %shl1856, %conv1858
  store i32 %add1859, i32* %ti, align 4, !tbaa !10
  %1249 = load i32, i32* %ti, align 4, !tbaa !10
  %1250 = load i32, i32* %s31806, align 4, !tbaa !10
  %sub1860 = sub i32 %1249, %1250
  store i32 %sub1860, i32* %s31806, align 4, !tbaa !10
  %1251 = load i32, i32* %s31806, align 4, !tbaa !10
  %shr1861 = lshr i32 %1251, 8
  %conv1862 = trunc i32 %shr1861 to i8
  %1252 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1863 = getelementptr inbounds i8, i8* %1252, i64 -1
  store i8 %conv1862, i8* %arrayidx1863, align 1, !tbaa !13
  %1253 = load i32, i32* %s31806, align 4, !tbaa !10
  %and1864 = and i32 %1253, 255
  %conv1865 = trunc i32 %and1864 to i8
  %1254 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1866 = getelementptr inbounds i8, i8* %1254, i64 0
  store i8 %conv1865, i8* %arrayidx1866, align 1, !tbaa !13
  %1255 = load i32, i32* %ti, align 4, !tbaa !10
  store i32 %1255, i32* %s31806, align 4, !tbaa !10
  br label %for.inc.1867

for.inc.1867:                                     ; preds = %for.body.1812
  %1256 = load i32, i32* %count, align 4, !tbaa !10
  %sub1868 = sub nsw i32 %1256, 8
  store i32 %sub1868, i32* %count, align 4, !tbaa !10
  br label %for.cond.1809

for.end.1869:                                     ; preds = %for.cond.1809
  %1257 = load i32, i32* %s0, align 4, !tbaa !10
  %1258 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1870 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1258, i32 0, i32 12
  %arrayidx1871 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1870, i32 0, i64 0
  store i32 %1257, i32* %arrayidx1871, align 4, !tbaa !10
  %1259 = load i32, i32* %s11800, align 4, !tbaa !10
  %1260 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1872 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1260, i32 0, i32 12
  %arrayidx1873 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1872, i32 0, i64 1
  store i32 %1259, i32* %arrayidx1873, align 4, !tbaa !10
  %1261 = load i32, i32* %s21803, align 4, !tbaa !10
  %1262 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1874 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1262, i32 0, i32 12
  %arrayidx1875 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1874, i32 0, i64 2
  store i32 %1261, i32* %arrayidx1875, align 4, !tbaa !10
  %1263 = load i32, i32* %s31806, align 4, !tbaa !10
  %1264 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1876 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1264, i32 0, i32 12
  %arrayidx1877 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1876, i32 0, i64 3
  store i32 %1263, i32* %arrayidx1877, align 4, !tbaa !10
  %1265 = bitcast i32* %s31806 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1265) #2
  %1266 = bitcast i32* %s21803 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1266) #2
  %1267 = bitcast i32* %s11800 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1267) #2
  br label %enc16

sw.bb.1878:                                       ; preds = %cond.end.22
  %1268 = bitcast i32* %s11879 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1268) #2
  %1269 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1880 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1269, i32 0, i32 12
  %arrayidx1881 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1880, i32 0, i64 1
  %1270 = load i32, i32* %arrayidx1881, align 4, !tbaa !10
  store i32 %1270, i32* %s11879, align 4, !tbaa !10
  %1271 = bitcast i32* %s21882 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1271) #2
  %1272 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1883 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1272, i32 0, i32 12
  %arrayidx1884 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1883, i32 0, i64 2
  %1273 = load i32, i32* %arrayidx1884, align 4, !tbaa !10
  store i32 %1273, i32* %s21882, align 4, !tbaa !10
  %1274 = bitcast i32* %s31885 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1274) #2
  %1275 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1886 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1275, i32 0, i32 12
  %arrayidx1887 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1886, i32 0, i64 3
  %1276 = load i32, i32* %arrayidx1887, align 4, !tbaa !10
  store i32 %1276, i32* %s31885, align 4, !tbaa !10
  br label %for.cond.1888

for.cond.1888:                                    ; preds = %for.inc.1950, %sw.bb.1878
  %1277 = load i32, i32* %count, align 4, !tbaa !10
  %cmp1889 = icmp sge i32 %1277, 8
  br i1 %cmp1889, label %for.body.1891, label %for.end.1952

for.body.1891:                                    ; preds = %for.cond.1888
  %1278 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr1892 = getelementptr inbounds i8, i8* %1278, i64 8
  store i8* %add.ptr1892, i8** %p, align 8, !tbaa !1
  %1279 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr1893 = getelementptr inbounds i8, i8* %1279, i64 8
  store i8* %add.ptr1893, i8** %q, align 8, !tbaa !1
  %1280 = load i32, i32* %s0, align 4, !tbaa !10
  %1281 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1894 = getelementptr inbounds i8, i8* %1281, i64 -7
  %1282 = load i8, i8* %arrayidx1894, align 1, !tbaa !13
  %conv1895 = zext i8 %1282 to i32
  %shl1896 = shl i32 %conv1895, 8
  %1283 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1897 = getelementptr inbounds i8, i8* %1283, i64 -6
  %1284 = load i8, i8* %arrayidx1897, align 1, !tbaa !13
  %conv1898 = zext i8 %1284 to i32
  %add1899 = add nsw i32 %shl1896, %conv1898
  %add1900 = add i32 %1280, %add1899
  %and1901 = and i32 65535, %add1900
  store i32 %and1901, i32* %s0, align 4, !tbaa !10
  %1285 = load i32, i32* %s0, align 4, !tbaa !10
  %shr1902 = lshr i32 %1285, 8
  %conv1903 = trunc i32 %shr1902 to i8
  %1286 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1904 = getelementptr inbounds i8, i8* %1286, i64 -7
  store i8 %conv1903, i8* %arrayidx1904, align 1, !tbaa !13
  %1287 = load i32, i32* %s0, align 4, !tbaa !10
  %and1905 = and i32 %1287, 255
  %conv1906 = trunc i32 %and1905 to i8
  %1288 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1907 = getelementptr inbounds i8, i8* %1288, i64 -6
  store i8 %conv1906, i8* %arrayidx1907, align 1, !tbaa !13
  %1289 = load i32, i32* %s11879, align 4, !tbaa !10
  %1290 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1908 = getelementptr inbounds i8, i8* %1290, i64 -5
  %1291 = load i8, i8* %arrayidx1908, align 1, !tbaa !13
  %conv1909 = zext i8 %1291 to i32
  %shl1910 = shl i32 %conv1909, 8
  %1292 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1911 = getelementptr inbounds i8, i8* %1292, i64 -4
  %1293 = load i8, i8* %arrayidx1911, align 1, !tbaa !13
  %conv1912 = zext i8 %1293 to i32
  %add1913 = add nsw i32 %shl1910, %conv1912
  %add1914 = add i32 %1289, %add1913
  %and1915 = and i32 65535, %add1914
  store i32 %and1915, i32* %s11879, align 4, !tbaa !10
  %1294 = load i32, i32* %s11879, align 4, !tbaa !10
  %shr1916 = lshr i32 %1294, 8
  %conv1917 = trunc i32 %shr1916 to i8
  %1295 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1918 = getelementptr inbounds i8, i8* %1295, i64 -5
  store i8 %conv1917, i8* %arrayidx1918, align 1, !tbaa !13
  %1296 = load i32, i32* %s11879, align 4, !tbaa !10
  %and1919 = and i32 %1296, 255
  %conv1920 = trunc i32 %and1919 to i8
  %1297 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1921 = getelementptr inbounds i8, i8* %1297, i64 -4
  store i8 %conv1920, i8* %arrayidx1921, align 1, !tbaa !13
  %1298 = load i32, i32* %s21882, align 4, !tbaa !10
  %1299 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1922 = getelementptr inbounds i8, i8* %1299, i64 -3
  %1300 = load i8, i8* %arrayidx1922, align 1, !tbaa !13
  %conv1923 = zext i8 %1300 to i32
  %shl1924 = shl i32 %conv1923, 8
  %1301 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1925 = getelementptr inbounds i8, i8* %1301, i64 -2
  %1302 = load i8, i8* %arrayidx1925, align 1, !tbaa !13
  %conv1926 = zext i8 %1302 to i32
  %add1927 = add nsw i32 %shl1924, %conv1926
  %add1928 = add i32 %1298, %add1927
  %and1929 = and i32 65535, %add1928
  store i32 %and1929, i32* %s21882, align 4, !tbaa !10
  %1303 = load i32, i32* %s21882, align 4, !tbaa !10
  %shr1930 = lshr i32 %1303, 8
  %conv1931 = trunc i32 %shr1930 to i8
  %1304 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1932 = getelementptr inbounds i8, i8* %1304, i64 -3
  store i8 %conv1931, i8* %arrayidx1932, align 1, !tbaa !13
  %1305 = load i32, i32* %s21882, align 4, !tbaa !10
  %and1933 = and i32 %1305, 255
  %conv1934 = trunc i32 %and1933 to i8
  %1306 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1935 = getelementptr inbounds i8, i8* %1306, i64 -2
  store i8 %conv1934, i8* %arrayidx1935, align 1, !tbaa !13
  %1307 = load i32, i32* %s31885, align 4, !tbaa !10
  %1308 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1936 = getelementptr inbounds i8, i8* %1308, i64 -1
  %1309 = load i8, i8* %arrayidx1936, align 1, !tbaa !13
  %conv1937 = zext i8 %1309 to i32
  %shl1938 = shl i32 %conv1937, 8
  %1310 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx1939 = getelementptr inbounds i8, i8* %1310, i64 0
  %1311 = load i8, i8* %arrayidx1939, align 1, !tbaa !13
  %conv1940 = zext i8 %1311 to i32
  %add1941 = add nsw i32 %shl1938, %conv1940
  %add1942 = add i32 %1307, %add1941
  %and1943 = and i32 65535, %add1942
  store i32 %and1943, i32* %s31885, align 4, !tbaa !10
  %1312 = load i32, i32* %s31885, align 4, !tbaa !10
  %shr1944 = lshr i32 %1312, 8
  %conv1945 = trunc i32 %shr1944 to i8
  %1313 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1946 = getelementptr inbounds i8, i8* %1313, i64 -1
  store i8 %conv1945, i8* %arrayidx1946, align 1, !tbaa !13
  %1314 = load i32, i32* %s31885, align 4, !tbaa !10
  %and1947 = and i32 %1314, 255
  %conv1948 = trunc i32 %and1947 to i8
  %1315 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx1949 = getelementptr inbounds i8, i8* %1315, i64 0
  store i8 %conv1948, i8* %arrayidx1949, align 1, !tbaa !13
  br label %for.inc.1950

for.inc.1950:                                     ; preds = %for.body.1891
  %1316 = load i32, i32* %count, align 4, !tbaa !10
  %sub1951 = sub nsw i32 %1316, 8
  store i32 %sub1951, i32* %count, align 4, !tbaa !10
  br label %for.cond.1888

for.end.1952:                                     ; preds = %for.cond.1888
  %1317 = load i32, i32* %s0, align 4, !tbaa !10
  %1318 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1953 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1318, i32 0, i32 12
  %arrayidx1954 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1953, i32 0, i64 0
  store i32 %1317, i32* %arrayidx1954, align 4, !tbaa !10
  %1319 = load i32, i32* %s11879, align 4, !tbaa !10
  %1320 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1955 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1320, i32 0, i32 12
  %arrayidx1956 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1955, i32 0, i64 1
  store i32 %1319, i32* %arrayidx1956, align 4, !tbaa !10
  %1321 = load i32, i32* %s21882, align 4, !tbaa !10
  %1322 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1957 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1322, i32 0, i32 12
  %arrayidx1958 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1957, i32 0, i64 2
  store i32 %1321, i32* %arrayidx1958, align 4, !tbaa !10
  %1323 = load i32, i32* %s31885, align 4, !tbaa !10
  %1324 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1959 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1324, i32 0, i32 12
  %arrayidx1960 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1959, i32 0, i64 3
  store i32 %1323, i32* %arrayidx1960, align 4, !tbaa !10
  %1325 = bitcast i32* %s31885 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1325) #2
  %1326 = bitcast i32* %s21882 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1326) #2
  %1327 = bitcast i32* %s11879 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1327) #2
  br label %dec16

sw.epilog:                                        ; preds = %cond.end.22, %for.end.1673, %for.end.1649, %dec16, %if.end.1583, %for.end.1339, %for.end.1324, %if.end.1307, %if.end.1260, %for.end.1166, %for.end.1137, %if.end.1113, %for.end.970, %for.end.947, %if.end.925, %for.end.821, %for.end.802, %for.end.769, %for.end.736, %if.end.698, %for.end.591, %for.end.571, %for.end.547, %for.end.523, %if.end.499, %for.end.391, %for.end.371, %for.end.348, %for.end.323, %if.end.293, %for.end.200, %for.end.175, %for.end.157, %for.end.139, %if.end.121, %for.end
  %1328 = load i32, i32* %count, align 4, !tbaa !10
  %1329 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %row_left1961 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1329, i32 0, i32 11
  %1330 = load i32, i32* %row_left1961, align 4, !tbaa !19
  %add1962 = add i32 %1330, %1328
  store i32 %add1962, i32* %row_left1961, align 4, !tbaa !19
  %1331 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %row_left1963 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1331, i32 0, i32 11
  %1332 = load i32, i32* %row_left1963, align 4, !tbaa !19
  %cmp1964 = icmp eq i32 %1332, 0
  br i1 %cmp1964, label %if.then.1966, label %if.end.1990

if.then.1966:                                     ; preds = %sw.epilog
  %1333 = load i8, i8* %end_mask, align 1, !tbaa !13
  %conv1967 = zext i8 %1333 to i32
  %cmp1968 = icmp ne i32 %conv1967, 0
  br i1 %cmp1968, label %if.then.1970, label %if.end.1980

if.then.1970:                                     ; preds = %if.then.1966
  %1334 = load i8*, i8** %q, align 8, !tbaa !1
  %1335 = load i8, i8* %1334, align 1, !tbaa !13
  %conv1971 = zext i8 %1335 to i32
  %1336 = load i8, i8* %end_mask, align 1, !tbaa !13
  %conv1972 = zext i8 %1336 to i32
  %neg1973 = xor i32 %conv1972, -1
  %and1974 = and i32 %conv1971, %neg1973
  %1337 = load i8*, i8** %p, align 8, !tbaa !1
  %1338 = load i8, i8* %1337, align 1, !tbaa !13
  %conv1975 = zext i8 %1338 to i32
  %1339 = load i8, i8* %end_mask, align 1, !tbaa !13
  %conv1976 = zext i8 %1339 to i32
  %and1977 = and i32 %conv1975, %conv1976
  %or1978 = or i32 %and1974, %and1977
  %conv1979 = trunc i32 %or1978 to i8
  %1340 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv1979, i8* %1340, align 1, !tbaa !13
  br label %if.end.1980

if.end.1980:                                      ; preds = %if.then.1970, %if.then.1966
  %1341 = load i8*, i8** %p, align 8, !tbaa !1
  %1342 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %limit1981 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1342, i32 0, i32 1
  %1343 = load i8*, i8** %limit1981, align 8, !tbaa !20
  %cmp1982 = icmp ult i8* %1341, %1343
  br i1 %cmp1982, label %land.lhs.true.1984, label %if.end.1989

land.lhs.true.1984:                               ; preds = %if.end.1980
  %1344 = load i8*, i8** %q, align 8, !tbaa !1
  %1345 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %limit1985 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %1345, i32 0, i32 2
  %1346 = load i8*, i8** %limit1985, align 8, !tbaa !21
  %cmp1986 = icmp ult i8* %1344, %1346
  br i1 %cmp1986, label %if.then.1988, label %if.end.1989

if.then.1988:                                     ; preds = %land.lhs.true.1984
  br label %row

if.end.1989:                                      ; preds = %land.lhs.true.1984, %if.end.1980
  br label %if.end.1990

if.end.1990:                                      ; preds = %if.end.1989, %sw.epilog
  %1347 = load i32, i32* %s0, align 4, !tbaa !10
  %1348 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %prev1991 = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %1348, i32 0, i32 12
  %arrayidx1992 = getelementptr inbounds [60 x i32], [60 x i32]* %prev1991, i32 0, i64 0
  store i32 %1347, i32* %arrayidx1992, align 4, !tbaa !10
  %1349 = load i8*, i8** %p, align 8, !tbaa !1
  %1350 = load %struct.stream_cursor_read_s*, %struct.stream_cursor_read_s** %pr.addr, align 8, !tbaa !1
  %ptr1993 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %1350, i32 0, i32 0
  store i8* %1349, i8** %ptr1993, align 8, !tbaa !15
  %1351 = load i8*, i8** %q, align 8, !tbaa !1
  %1352 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !1
  %ptr1994 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %1352, i32 0, i32 1
  store i8* %1351, i8** %ptr1994, align 8, !tbaa !17
  %1353 = load i32, i32* %status, align 4, !tbaa !10
  %1354 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1354) #2
  %1355 = bitcast i32* %ndone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1355) #2
  %1356 = bitcast i32* %final to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1356) #2
  %1357 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1357) #2
  %1358 = bitcast i32* %colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1358) #2
  call void @llvm.lifetime.end(i64 1, i8* %end_mask) #2
  %1359 = bitcast i32* %ti to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1359) #2
  call void @llvm.lifetime.end(i64 1, i8* %t) #2
  %1360 = bitcast i32* %s0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1360) #2
  %1361 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1361) #2
  %1362 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1362) #2
  %1363 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1363) #2
  %1364 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1364) #2
  %1365 = bitcast %struct.stream_PDiff_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1365) #2
  ret i32 %1353
}

; Function Attrs: nounwind uwtable
define internal void @s_PDiff_set_defaults(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_PDiff_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PDiff_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PDiff_state_s*
  store %struct.stream_PDiff_state_s* %2, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %Colors = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %3, i32 0, i32 5
  store i32 1, i32* %Colors, align 4, !tbaa !5
  %4 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %BitsPerComponent = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %4, i32 0, i32 6
  store i32 8, i32* %BitsPerComponent, align 4, !tbaa !8
  %5 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %Columns = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %5, i32 0, i32 7
  store i32 1, i32* %Columns, align 4, !tbaa !9
  %6 = bitcast %struct.stream_PDiff_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_PDiff_reinit(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_PDiff_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PDiff_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PDiff_state_s*
  store %struct.stream_PDiff_state_s* %2, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %row_left = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %3, i32 0, i32 11
  store i32 0, i32* %row_left, align 4, !tbaa !19
  %4 = bitcast %struct.stream_PDiff_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_PDiffD_init(%struct.stream_state_s* %st) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %ss = alloca %struct.stream_PDiff_state_s*, align 8
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_PDiff_state_s** %ss to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %2 = bitcast %struct.stream_state_s* %1 to %struct.stream_PDiff_state_s*
  store %struct.stream_PDiff_state_s* %2, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %3 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !1
  %call = call i32 @s_PDiffE_init(%struct.stream_state_s* %3) #4
  %4 = load %struct.stream_PDiff_state_s*, %struct.stream_PDiff_state_s** %ss, align 8, !tbaa !1
  %case_index = getelementptr inbounds %struct.stream_PDiff_state_s, %struct.stream_PDiff_state_s* %4, i32 0, i32 10
  %5 = load i32, i32* %case_index, align 4, !tbaa !14
  %add = add nsw i32 %5, 25
  store i32 %add, i32* %case_index, align 4, !tbaa !14
  %6 = bitcast %struct.stream_PDiff_state_s** %ss to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret i32 0
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

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
!5 = !{!6, !7, i64 108}
!6 = !{!"stream_PDiff_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !3, i64 28, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !3, i64 124, !7, i64 128, !7, i64 132, !3, i64 136}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 112}
!9 = !{!6, !7, i64 116}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 120}
!12 = !{!6, !3, i64 124}
!13 = !{!3, !3, i64 0}
!14 = !{!6, !7, i64 128}
!15 = !{!16, !2, i64 0}
!16 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!18, !2, i64 8}
!18 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!6, !7, i64 132}
!20 = !{!16, !2, i64 8}
!21 = !{!18, !2, i64 16}
